; ModuleID = 'calls.c'
source_filename = "calls.c"
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
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.args_size = type { i64, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.arg_data = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.locate_and_pad_arg_data, ptr, ptr, ptr, ptr, i32 }
%struct.locate_and_pad_arg_data = type { %struct.args_size, %struct.args_size, %struct.args_size, %struct.args_size, i32, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.arg = type { ptr, i32, ptr, i32, %struct.locate_and_pad_arg_data, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"calls.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@optab_table = external global [159 x %struct.optab_d], align 16
@expand_call.currently_expanding_call = internal unnamed_addr global i32 0, align 4
@target_flags = external local_unnamed_addr global i32, align 4
@highest_outgoing_arg_in_use = internal unnamed_addr global i32 0, align 4
@stack_usage_map = internal unnamed_addr global ptr null, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"function call has aggregate value\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@ix86_preferred_stack_boundary = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@stack_arg_under_construction = internal unnamed_addr global i32 0, align 4
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@flag_optimize_sibling_calls = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@flag_exceptions = external local_unnamed_addr global i32, align 4
@stored_args_map = internal unnamed_addr global ptr null, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"alloca\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"__builtin_alloca\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"uiltin_\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"setjmp\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"setjmp_syscall\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"sigsetjmp\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"savectx\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"siglongjmp\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"qsetjmp\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"getcontext\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"longjmp\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.15 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@flag_stack_check = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@flag_enable_icf_debug = external local_unnamed_addr global i32, align 4
@debug_hooks = external local_unnamed_addr global ptr, align 8
@flag_defer_pop = external local_unnamed_addr global i32, align 4
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@generating_concat_p = external local_unnamed_addr global i32, align 4
@virtuals_instantiated = external local_unnamed_addr global i32, align 4
@switch.table.emit_library_call_value_1 = private unnamed_addr constant [5 x i32] [i32 65, i32 66, i32 72, i32 8, i32 128], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !114 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !115
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !114 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !115
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !114 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !125

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #23
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !119
  %11 = load i8, ptr %3, align 1, !tbaa !126
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !114 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !125

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #23
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !119
  %11 = load i8, ptr %3, align 1, !tbaa !126
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !114 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !115
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !124
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !125

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #23
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !119
  %11 = load i8, ptr %3, align 1, !tbaa !126
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !114 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !115
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !114 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !125

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !127
  store i8 %12, ptr %4, align 1, !tbaa !126
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !114 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !125

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !127
  store i8 %12, ptr %4, align 1, !tbaa !126
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !114 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !115
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !125

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #23
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !127
  store i8 %12, ptr %4, align 1, !tbaa !126
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !114 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #23
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !114 {
  %2 = load i32, ptr %0, align 8, !tbaa !129
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !114 {
  %2 = load i32, ptr %0, align 8, !tbaa !129
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !114 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #23
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !130
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !114 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #23
  %6 = load ptr, ptr %5, align 8, !tbaa !115
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !130
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !114 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !114 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !114 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !114 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #23
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
  br i1 %23, label %7, label %24, !llvm.loop !131

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !114 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @prepare_call_address(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #9 !prof !134 {
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 45
  br i1 %9, label %15, label %10, !prof !135

10:                                               ; preds = %6
  %11 = icmp eq i32 %4, 0
  %12 = tail call ptr @memory_address_addr_space(i32 noundef 14, ptr noundef nonnull %1, i8 noundef zeroext 0) #23
  br i1 %11, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @force_not_mem(ptr noundef %12) #23
  br label %15

15:                                               ; preds = %10, %6, %13
  %16 = phi ptr [ %14, %13 ], [ %1, %6 ], [ %12, %10 ]
  %17 = icmp eq ptr %2, null
  br i1 %17, label %30, label %18, !prof !135

18:                                               ; preds = %15
  %19 = icmp eq ptr %0, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #23
  br label %21

21:                                               ; preds = %18, %20
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !136
  %23 = tail call ptr %22(ptr noundef %0, i8 noundef zeroext 0) #23
  %24 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %2, i8 noundef zeroext 0) #23
  %25 = tail call ptr @emit_move_insn(ptr noundef %23, ptr noundef %24) #23
  %26 = load i32, ptr %23, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call void @use_reg(ptr noundef %3, ptr noundef nonnull %23) #23
  br label %30

30:                                               ; preds = %21, %29, %15
  ret ptr %16
}

declare ptr @force_not_mem(ptr noundef) local_unnamed_addr #3

declare ptr @memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @use_reg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @setjmp_call_p(ptr noundef readonly %0) local_unnamed_addr #10 !prof !148 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %129, label %3, !prof !149

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !126
  %6 = icmp eq ptr %5, null
  br i1 %6, label %129, label %7, !prof !149

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %5, i64 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = icmp ult i32 %9, 18
  br i1 %10, label %11, label %129, !prof !150

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !126
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15, !prof !151

15:                                               ; preds = %11
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 40
  br i1 %18, label %19, label %129

19:                                               ; preds = %15, %11
  %20 = load i64, ptr %0, align 8
  %21 = and i64 %20, 134217728
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %129, label %23, !prof !152

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_identifier, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !126
  switch i32 %9, label %41 [
    i32 6, label %26
    i32 16, label %34
  ], !prof !153

26:                                               ; preds = %23
  %27 = load i8, ptr %25, align 1, !tbaa !126
  %28 = icmp eq i8 %27, 97
  br i1 %28, label %29, label %32, !prof !154

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(7) @.str.3)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %29, %26
  %33 = icmp eq i32 %9, 16
  br i1 %33, label %34, label %41, !prof !155

34:                                               ; preds = %32, %23
  %35 = load i8, ptr %25, align 1, !tbaa !126
  %36 = icmp eq i8 %35, 95
  br i1 %36, label %37, label %41, !prof !156

37:                                               ; preds = %34
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(17) @.str.4)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41, !prof !157

40:                                               ; preds = %37, %29
  br label %41

41:                                               ; preds = %40, %37, %34, %32, %23
  %42 = phi i32 [ 0, %37 ], [ 32, %40 ], [ 0, %34 ], [ 0, %32 ], [ 0, %23 ]
  %43 = load i8, ptr %25, align 1, !tbaa !126
  %44 = icmp eq i8 %43, 95
  br i1 %44, label %45, label %65, !prof !158

45:                                               ; preds = %41
  %46 = getelementptr inbounds i8, ptr %25, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !126
  %48 = icmp eq i8 %47, 95
  br i1 %48, label %49, label %62, !prof !159

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %25, i64 2
  %51 = load i8, ptr %50, align 1, !tbaa !126
  switch i8 %51, label %62 [
    i8 98, label %52
    i8 120, label %60
  ], !prof !160

52:                                               ; preds = %49
  %53 = getelementptr inbounds i8, ptr %25, i64 3
  %54 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(8) @.str.5, i64 noundef 7)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58, !prof !161

56:                                               ; preds = %52
  %57 = getelementptr inbounds i8, ptr %25, i64 10
  br label %65

58:                                               ; preds = %52
  %59 = icmp eq i8 %51, 120
  br i1 %59, label %60, label %62, !prof !162

60:                                               ; preds = %49, %58
  %61 = getelementptr inbounds i8, ptr %25, i64 3
  br label %65

62:                                               ; preds = %49, %58, %45
  %63 = getelementptr inbounds i8, ptr %25, i64 2
  %64 = select i1 %48, ptr %63, ptr %46, !prof !163
  br label %65

65:                                               ; preds = %62, %60, %56, %41
  %66 = phi ptr [ %61, %60 ], [ %57, %56 ], [ %25, %41 ], [ %64, %62 ]
  %67 = load i8, ptr %66, align 1, !tbaa !126
  switch i8 %67, label %129 [
    i8 115, label %68
    i8 113, label %95
    i8 118, label %103
    i8 103, label %111
    i8 108, label %120
  ], !prof !164

68:                                               ; preds = %65
  %69 = getelementptr inbounds i8, ptr %66, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !126
  switch i8 %70, label %87 [
    i8 101, label %71
    i8 105, label %78
    i8 97, label %83
  ], !prof !165

71:                                               ; preds = %68
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(7) @.str.6)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(15) @.str.7)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  switch i8 %70, label %87 [
    i8 105, label %78
    i8 97, label %83
  ], !prof !166

78:                                               ; preds = %77, %68
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(10) @.str.8)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = icmp eq i8 %70, 97
  br i1 %82, label %83, label %87, !prof !167

83:                                               ; preds = %81, %77, %68
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(8) @.str.9)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %78, %74, %71
  br label %87

87:                                               ; preds = %86, %83, %81, %77, %68
  %88 = phi i32 [ %42, %83 ], [ 128, %86 ], [ %42, %81 ], [ %42, %77 ], [ %42, %68 ]
  %89 = icmp eq i8 %70, 105
  br i1 %89, label %90, label %129, !prof !167

90:                                               ; preds = %87
  %91 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(11) @.str.10)
  %92 = icmp eq i32 %91, 0
  %93 = or i32 %88, 8
  %94 = select i1 %92, i32 %93, i32 %88
  br label %129

95:                                               ; preds = %65
  %96 = getelementptr inbounds i8, ptr %66, i64 1
  %97 = load i8, ptr %96, align 1, !tbaa !126
  %98 = icmp eq i8 %97, 115
  br i1 %98, label %99, label %102, !prof !168

99:                                               ; preds = %95
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(8) @.str.11)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %129, label %102

102:                                              ; preds = %99, %95
  switch i8 %67, label %129 [
    i8 118, label %103
    i8 103, label %111
    i8 108, label %120
  ], !prof !169

103:                                              ; preds = %102, %65
  %104 = getelementptr inbounds i8, ptr %66, i64 1
  %105 = load i8, ptr %104, align 1, !tbaa !126
  %106 = icmp eq i8 %105, 102
  br i1 %106, label %107, label %110, !prof !170

107:                                              ; preds = %103
  %108 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(6) @.str.12)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %129, label %110, !prof !171

110:                                              ; preds = %107, %103
  switch i8 %67, label %129 [
    i8 103, label %111
    i8 108, label %120
  ], !prof !172

111:                                              ; preds = %110, %102, %65
  %112 = getelementptr inbounds i8, ptr %66, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !126
  %114 = icmp eq i8 %113, 101
  br i1 %114, label %115, label %118, !prof !173

115:                                              ; preds = %111
  %116 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(11) @.str.13)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %129, label %118, !prof !174

118:                                              ; preds = %115, %111
  %119 = icmp eq i8 %67, 108
  br i1 %119, label %120, label %129, !prof !175

120:                                              ; preds = %118, %110, %102, %65
  %121 = getelementptr inbounds i8, ptr %66, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !126
  %123 = icmp eq i8 %122, 111
  br i1 %123, label %124, label %129, !prof !176

124:                                              ; preds = %120
  %125 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(8) @.str.14)
  %126 = icmp eq i32 %125, 0
  %127 = or disjoint i32 %42, 8
  %128 = select i1 %126, i32 %127, i32 %42
  br label %129

129:                                              ; preds = %99, %107, %115, %1, %3, %7, %15, %19, %65, %87, %90, %102, %110, %118, %120, %124
  %130 = phi i32 [ 0, %19 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ], [ %88, %87 ], [ %42, %120 ], [ %42, %118 ], [ %94, %90 ], [ %128, %124 ], [ 0, %15 ], [ %42, %110 ], [ %42, %102 ], [ %42, %65 ], [ 128, %115 ], [ 128, %107 ], [ 128, %99 ]
  %131 = and i32 %130, 128
  ret i32 %131
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @special_function_p(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !177 !PGOFuncName !178 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %138, label %4, !prof !149

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = icmp eq ptr %6, null
  br i1 %7, label %138, label %8, !prof !149

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_identifier, ptr %6, i64 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !126
  %11 = icmp ult i32 %10, 18
  br i1 %11, label %12, label %138, !prof !150

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !126
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !151

16:                                               ; preds = %12
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 40
  br i1 %19, label %20, label %138

20:                                               ; preds = %16, %12
  %21 = load i64, ptr %0, align 8
  %22 = and i64 %21, 134217728
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %138, label %24, !prof !152

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %6, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !126
  switch i32 %10, label %43 [
    i32 6, label %27
    i32 16, label %35
  ], !prof !153

27:                                               ; preds = %24
  %28 = load i8, ptr %26, align 1, !tbaa !126
  %29 = icmp eq i8 %28, 97
  br i1 %29, label %30, label %33, !prof !154

30:                                               ; preds = %27
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(7) @.str.3)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30, %27
  %34 = icmp eq i32 %10, 16
  br i1 %34, label %35, label %43, !prof !155

35:                                               ; preds = %24, %33
  %36 = load i8, ptr %26, align 1, !tbaa !126
  %37 = icmp eq i8 %36, 95
  br i1 %37, label %38, label %43, !prof !156

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(17) @.str.4)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43, !prof !157

41:                                               ; preds = %38, %30
  %42 = or i32 %1, 32
  br label %43

43:                                               ; preds = %24, %41, %38, %35, %33
  %44 = phi i32 [ %1, %38 ], [ %42, %41 ], [ %1, %35 ], [ %1, %33 ], [ %1, %24 ]
  %45 = load i8, ptr %26, align 1, !tbaa !126
  %46 = icmp eq i8 %45, 95
  br i1 %46, label %47, label %71, !prof !158

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %26, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !126
  %50 = icmp eq i8 %49, 95
  br i1 %50, label %51, label %68, !prof !159

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %26, i64 2
  %53 = load i8, ptr %52, align 1, !tbaa !126
  %54 = icmp eq i8 %53, 98
  br i1 %54, label %55, label %61, !prof !179

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %26, i64 3
  %57 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(8) @.str.5, i64 noundef 7)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61, !prof !161

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %26, i64 10
  br label %71

61:                                               ; preds = %55, %51
  br i1 %50, label %62, label %68, !prof !180

62:                                               ; preds = %61
  %63 = getelementptr inbounds i8, ptr %26, i64 2
  %64 = load i8, ptr %63, align 1, !tbaa !126
  %65 = icmp eq i8 %64, 120
  br i1 %65, label %66, label %68, !prof !162

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %26, i64 3
  br label %71

68:                                               ; preds = %47, %62, %61
  %69 = getelementptr inbounds i8, ptr %26, i64 2
  %70 = select i1 %50, ptr %69, ptr %48, !prof !163
  br label %71

71:                                               ; preds = %68, %59, %66, %43
  %72 = phi ptr [ %67, %66 ], [ %60, %59 ], [ %26, %43 ], [ %70, %68 ]
  %73 = load i8, ptr %72, align 1, !tbaa !126
  switch i8 %73, label %138 [
    i8 115, label %74
    i8 113, label %102
    i8 118, label %110
    i8 103, label %118
    i8 108, label %129
  ], !prof !164

74:                                               ; preds = %71
  %75 = getelementptr inbounds i8, ptr %72, i64 1
  %76 = load i8, ptr %75, align 1, !tbaa !126
  switch i8 %76, label %94 [
    i8 101, label %77
    i8 105, label %84
    i8 97, label %89
  ], !prof !165

77:                                               ; preds = %74
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(7) @.str.6)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %77
  %81 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(15) @.str.7)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  switch i8 %76, label %94 [
    i8 105, label %84
    i8 97, label %89
  ], !prof !166

84:                                               ; preds = %74, %83
  %85 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(10) @.str.8)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = icmp eq i8 %76, 97
  br i1 %88, label %89, label %94, !prof !167

89:                                               ; preds = %74, %83, %87
  %90 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(8) @.str.9)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89, %80, %84, %77
  %93 = or i32 %44, 128
  br label %94

94:                                               ; preds = %74, %83, %92, %89, %87
  %95 = phi i32 [ %44, %89 ], [ %93, %92 ], [ %44, %87 ], [ %44, %83 ], [ %44, %74 ]
  %96 = icmp eq i8 %76, 105
  br i1 %96, label %97, label %138, !prof !167

97:                                               ; preds = %94
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(11) @.str.10)
  %99 = icmp eq i32 %98, 0
  %100 = or i32 %95, 8
  %101 = select i1 %99, i32 %100, i32 %95
  br label %138

102:                                              ; preds = %71
  %103 = getelementptr inbounds i8, ptr %72, i64 1
  %104 = load i8, ptr %103, align 1, !tbaa !126
  %105 = icmp eq i8 %104, 115
  br i1 %105, label %106, label %109, !prof !168

106:                                              ; preds = %102
  %107 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(8) @.str.11)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %125, label %109

109:                                              ; preds = %106, %102
  switch i8 %73, label %138 [
    i8 118, label %110
    i8 103, label %118
    i8 108, label %129
  ], !prof !169

110:                                              ; preds = %71, %109
  %111 = getelementptr inbounds i8, ptr %72, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !126
  %113 = icmp eq i8 %112, 102
  br i1 %113, label %114, label %117, !prof !170

114:                                              ; preds = %110
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(6) @.str.12)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117, !prof !171

117:                                              ; preds = %114, %110
  switch i8 %73, label %138 [
    i8 103, label %118
    i8 108, label %129
  ], !prof !172

118:                                              ; preds = %71, %109, %117
  %119 = getelementptr inbounds i8, ptr %72, i64 1
  %120 = load i8, ptr %119, align 1, !tbaa !126
  %121 = icmp eq i8 %120, 101
  br i1 %121, label %122, label %127, !prof !173

122:                                              ; preds = %118
  %123 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(11) @.str.13)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127, !prof !174

125:                                              ; preds = %122, %114, %106
  %126 = or i32 %44, 128
  br label %138

127:                                              ; preds = %122, %118
  %128 = icmp eq i8 %73, 108
  br i1 %128, label %129, label %138, !prof !175

129:                                              ; preds = %71, %109, %117, %127
  %130 = getelementptr inbounds i8, ptr %72, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !126
  %132 = icmp eq i8 %131, 111
  br i1 %132, label %133, label %138, !prof !176

133:                                              ; preds = %129
  %134 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %72, ptr noundef nonnull dereferenceable(8) @.str.14)
  %135 = icmp eq i32 %134, 0
  %136 = or i32 %44, 8
  %137 = select i1 %135, i32 %136, i32 %44
  br label %138

138:                                              ; preds = %71, %109, %117, %16, %133, %97, %94, %127, %129, %125, %20, %8, %4, %2
  %139 = phi i32 [ %1, %20 ], [ %1, %8 ], [ %1, %4 ], [ %1, %2 ], [ %95, %94 ], [ %44, %129 ], [ %44, %127 ], [ %126, %125 ], [ %101, %97 ], [ %137, %133 ], [ %1, %16 ], [ %44, %117 ], [ %44, %109 ], [ %44, %71 ]
  ret i32 %139
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @gimple_alloca_call_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !181 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %161, !prof !182

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  %7 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !130
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !183
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14, !prof !184

13:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #23
  br label %14

14:                                               ; preds = %13, %5
  %15 = getelementptr inbounds i8, ptr %0, i64 %11
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !115
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 121
  br i1 %20, label %21, label %24, !prof !182

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !126
  br label %24

24:                                               ; preds = %14, %21
  %25 = phi ptr [ %23, %21 ], [ null, %14 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %160, label %27, !prof !184

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %25, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !126
  %30 = icmp eq ptr %29, null
  br i1 %30, label %156, label %31, !prof !149

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_identifier, ptr %29, i64 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !126
  %34 = icmp ult i32 %33, 18
  br i1 %34, label %35, label %156, !prof !150

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %25, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !126
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39, !prof !151

39:                                               ; preds = %35
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 40
  br i1 %42, label %43, label %156

43:                                               ; preds = %39, %35
  %44 = load i64, ptr %25, align 8
  %45 = and i64 %44, 134217728
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %156, label %47, !prof !152

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.tree_identifier, ptr %29, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !126
  switch i32 %33, label %65 [
    i32 6, label %50
    i32 16, label %58
  ], !prof !153

50:                                               ; preds = %47
  %51 = load i8, ptr %49, align 1, !tbaa !126
  %52 = icmp eq i8 %51, 97
  br i1 %52, label %53, label %56, !prof !154

53:                                               ; preds = %50
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(7) @.str.3)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %53, %50
  %57 = icmp eq i32 %33, 16
  br i1 %57, label %58, label %65, !prof !155

58:                                               ; preds = %56, %47
  %59 = load i8, ptr %49, align 1, !tbaa !126
  %60 = icmp eq i8 %59, 95
  br i1 %60, label %61, label %65, !prof !156

61:                                               ; preds = %58
  %62 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(17) @.str.4)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65, !prof !157

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %61, %58, %56, %47
  %66 = phi i32 [ 0, %61 ], [ 32, %64 ], [ 0, %58 ], [ 0, %56 ], [ 0, %47 ]
  %67 = load i8, ptr %49, align 1, !tbaa !126
  %68 = icmp eq i8 %67, 95
  br i1 %68, label %69, label %89, !prof !158

69:                                               ; preds = %65
  %70 = getelementptr inbounds i8, ptr %49, i64 1
  %71 = load i8, ptr %70, align 1, !tbaa !126
  %72 = icmp eq i8 %71, 95
  br i1 %72, label %73, label %86, !prof !159

73:                                               ; preds = %69
  %74 = getelementptr inbounds i8, ptr %49, i64 2
  %75 = load i8, ptr %74, align 1, !tbaa !126
  switch i8 %75, label %86 [
    i8 98, label %76
    i8 120, label %84
  ], !prof !160

76:                                               ; preds = %73
  %77 = getelementptr inbounds i8, ptr %49, i64 3
  %78 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %77, ptr noundef nonnull dereferenceable(8) @.str.5, i64 noundef 7)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82, !prof !161

80:                                               ; preds = %76
  %81 = getelementptr inbounds i8, ptr %49, i64 10
  br label %89

82:                                               ; preds = %76
  %83 = icmp eq i8 %75, 120
  br i1 %83, label %84, label %86, !prof !162

84:                                               ; preds = %73, %82
  %85 = getelementptr inbounds i8, ptr %49, i64 3
  br label %89

86:                                               ; preds = %73, %82, %69
  %87 = getelementptr inbounds i8, ptr %49, i64 2
  %88 = select i1 %72, ptr %87, ptr %70, !prof !163
  br label %89

89:                                               ; preds = %86, %84, %80, %65
  %90 = phi ptr [ %85, %84 ], [ %81, %80 ], [ %49, %65 ], [ %88, %86 ]
  %91 = load i8, ptr %90, align 1, !tbaa !126
  switch i8 %91, label %156 [
    i8 115, label %92
    i8 113, label %120
    i8 118, label %128
    i8 103, label %136
    i8 108, label %147
  ], !prof !164

92:                                               ; preds = %89
  %93 = getelementptr inbounds i8, ptr %90, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !126
  switch i8 %94, label %112 [
    i8 101, label %95
    i8 105, label %102
    i8 97, label %107
  ], !prof !165

95:                                               ; preds = %92
  %96 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(7) @.str.6)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %95
  %99 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(15) @.str.7)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %98
  switch i8 %94, label %112 [
    i8 105, label %102
    i8 97, label %107
  ], !prof !166

102:                                              ; preds = %101, %92
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(10) @.str.8)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = icmp eq i8 %94, 97
  br i1 %106, label %107, label %112, !prof !167

107:                                              ; preds = %105, %101, %92
  %108 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(8) @.str.9)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107, %102, %98, %95
  %111 = or disjoint i32 %66, 128
  br label %112

112:                                              ; preds = %110, %107, %105, %101, %92
  %113 = phi i32 [ %66, %107 ], [ %111, %110 ], [ %66, %105 ], [ %66, %101 ], [ %66, %92 ]
  %114 = icmp eq i8 %94, 105
  br i1 %114, label %115, label %156, !prof !167

115:                                              ; preds = %112
  %116 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(11) @.str.10)
  %117 = icmp eq i32 %116, 0
  %118 = or i32 %113, 8
  %119 = select i1 %117, i32 %118, i32 %113
  br label %156

120:                                              ; preds = %89
  %121 = getelementptr inbounds i8, ptr %90, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !126
  %123 = icmp eq i8 %122, 115
  br i1 %123, label %124, label %127, !prof !168

124:                                              ; preds = %120
  %125 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(8) @.str.11)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %143, label %127

127:                                              ; preds = %124, %120
  switch i8 %91, label %156 [
    i8 118, label %128
    i8 103, label %136
    i8 108, label %147
  ], !prof !169

128:                                              ; preds = %127, %89
  %129 = getelementptr inbounds i8, ptr %90, i64 1
  %130 = load i8, ptr %129, align 1, !tbaa !126
  %131 = icmp eq i8 %130, 102
  br i1 %131, label %132, label %135, !prof !170

132:                                              ; preds = %128
  %133 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(6) @.str.12)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %143, label %135, !prof !171

135:                                              ; preds = %132, %128
  switch i8 %91, label %156 [
    i8 103, label %136
    i8 108, label %147
  ], !prof !172

136:                                              ; preds = %135, %127, %89
  %137 = getelementptr inbounds i8, ptr %90, i64 1
  %138 = load i8, ptr %137, align 1, !tbaa !126
  %139 = icmp eq i8 %138, 101
  br i1 %139, label %140, label %145, !prof !173

140:                                              ; preds = %136
  %141 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(11) @.str.13)
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145, !prof !174

143:                                              ; preds = %140, %132, %124
  %144 = or disjoint i32 %66, 128
  br label %156

145:                                              ; preds = %140, %136
  %146 = icmp eq i8 %91, 108
  br i1 %146, label %147, label %156, !prof !175

147:                                              ; preds = %145, %135, %127, %89
  %148 = getelementptr inbounds i8, ptr %90, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !126
  %150 = icmp eq i8 %149, 111
  br i1 %150, label %151, label %156, !prof !176

151:                                              ; preds = %147
  %152 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(8) @.str.14)
  %153 = icmp eq i32 %152, 0
  %154 = or disjoint i32 %66, 8
  %155 = select i1 %153, i32 %154, i32 %66
  br label %156

156:                                              ; preds = %27, %31, %39, %43, %89, %112, %115, %127, %135, %143, %145, %147, %151
  %157 = phi i32 [ 0, %43 ], [ 0, %31 ], [ 0, %27 ], [ %113, %112 ], [ %66, %147 ], [ %66, %145 ], [ %144, %143 ], [ %119, %115 ], [ %155, %151 ], [ 0, %39 ], [ %66, %135 ], [ %66, %127 ], [ %66, %89 ]
  %158 = and i32 %157, 32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161, !prof !182

160:                                              ; preds = %156, %24
  br label %161

161:                                              ; preds = %156, %1, %160
  %162 = phi i8 [ 0, %160 ], [ 0, %1 ], [ 1, %156 ]
  ret i8 %162
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @alloca_call_p(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !185 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 59
  br i1 %4, label %5, label %21, !prof !186

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 121
  br i1 %10, label %11, label %21, !prof !187

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !126
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 29
  br i1 %16, label %17, label %21, !prof !188

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @special_function_p(ptr noundef nonnull %13, i32 noundef 0)
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !188

21:                                               ; preds = %17, %11, %5, %1
  br label %22

22:                                               ; preds = %17, %21
  %23 = phi i8 [ 0, %21 ], [ 1, %17 ]
  ret i8 %23
}

; Function Attrs: inlinehint mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @flags_from_decl_or_type(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !189 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !130
  switch i32 %5, label %163 [
    i32 3, label %6
    i32 2, label %159
  ], !prof !190

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 15
  %10 = and i32 %9, 16
  %11 = lshr i32 %8, 11
  %12 = and i32 %11, 128
  %13 = and i64 %2, 1572864
  %14 = icmp eq i64 %13, 1048576
  %15 = zext i1 %14 to i32
  %16 = lshr i32 %8, 26
  %17 = and i32 %16, 6
  %18 = lshr i32 %8, 8
  %19 = and i32 %18, 512
  %20 = trunc i64 %2 to i32
  %21 = lshr i32 %20, 19
  %22 = and i32 %21, 64
  %23 = or disjoint i32 %22, %15
  %24 = or disjoint i32 %23, %12
  %25 = or disjoint i32 %24, %10
  %26 = or disjoint i32 %25, %17
  %27 = or disjoint i32 %26, %19
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !126
  %30 = icmp eq ptr %29, null
  br i1 %30, label %163, label %31, !prof !149

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.tree_identifier, ptr %29, i64 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !126
  %34 = icmp ult i32 %33, 18
  br i1 %34, label %35, label %163, !prof !150

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !126
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39, !prof !151

39:                                               ; preds = %35
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 65535
  %42 = icmp ne i64 %41, 40
  %43 = and i64 %2, 134217728
  %44 = icmp eq i64 %43, 0
  %45 = or i1 %44, %42
  br i1 %45, label %163, label %49, !prof !191

46:                                               ; preds = %35
  %47 = and i64 %2, 134217728
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %163, label %49, !prof !152

49:                                               ; preds = %39, %46
  %50 = getelementptr inbounds %struct.tree_identifier, ptr %29, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !126
  switch i32 %33, label %68 [
    i32 6, label %52
    i32 16, label %60
  ], !prof !153

52:                                               ; preds = %49
  %53 = load i8, ptr %51, align 1, !tbaa !126
  %54 = icmp eq i8 %53, 97
  br i1 %54, label %55, label %58, !prof !154

55:                                               ; preds = %52
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(7) @.str.3)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %55, %52
  %59 = icmp eq i32 %33, 16
  br i1 %59, label %60, label %68, !prof !155

60:                                               ; preds = %58, %49
  %61 = load i8, ptr %51, align 1, !tbaa !126
  %62 = icmp eq i8 %61, 95
  br i1 %62, label %63, label %68, !prof !156

63:                                               ; preds = %60
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(17) @.str.4)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68, !prof !157

66:                                               ; preds = %63, %55
  %67 = or i32 %27, 32
  br label %68

68:                                               ; preds = %66, %63, %60, %58, %49
  %69 = phi i32 [ %27, %63 ], [ %67, %66 ], [ %27, %60 ], [ %27, %58 ], [ %27, %49 ]
  %70 = load i8, ptr %51, align 1, !tbaa !126
  %71 = icmp eq i8 %70, 95
  br i1 %71, label %72, label %92, !prof !158

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %51, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !126
  %75 = icmp eq i8 %74, 95
  br i1 %75, label %76, label %89, !prof !159

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %51, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !126
  switch i8 %78, label %89 [
    i8 98, label %79
    i8 120, label %87
  ], !prof !160

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, ptr %51, i64 3
  %81 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %80, ptr noundef nonnull dereferenceable(8) @.str.5, i64 noundef 7)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85, !prof !161

83:                                               ; preds = %79
  %84 = getelementptr inbounds i8, ptr %51, i64 10
  br label %92

85:                                               ; preds = %79
  %86 = icmp eq i8 %78, 120
  br i1 %86, label %87, label %89, !prof !162

87:                                               ; preds = %76, %85
  %88 = getelementptr inbounds i8, ptr %51, i64 3
  br label %92

89:                                               ; preds = %76, %85, %72
  %90 = getelementptr inbounds i8, ptr %51, i64 2
  %91 = select i1 %75, ptr %90, ptr %73, !prof !163
  br label %92

92:                                               ; preds = %89, %87, %83, %68
  %93 = phi ptr [ %88, %87 ], [ %84, %83 ], [ %51, %68 ], [ %91, %89 ]
  %94 = load i8, ptr %93, align 1, !tbaa !126
  switch i8 %94, label %163 [
    i8 115, label %95
    i8 113, label %123
    i8 118, label %131
    i8 103, label %139
    i8 108, label %150
  ], !prof !164

95:                                               ; preds = %92
  %96 = getelementptr inbounds i8, ptr %93, i64 1
  %97 = load i8, ptr %96, align 1, !tbaa !126
  switch i8 %97, label %115 [
    i8 101, label %98
    i8 105, label %105
    i8 97, label %110
  ], !prof !165

98:                                               ; preds = %95
  %99 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(7) @.str.6)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %113, label %101

101:                                              ; preds = %98
  %102 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(15) @.str.7)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  switch i8 %97, label %115 [
    i8 105, label %105
    i8 97, label %110
  ], !prof !166

105:                                              ; preds = %104, %95
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(10) @.str.8)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %105
  %109 = icmp eq i8 %97, 97
  br i1 %109, label %110, label %115, !prof !167

110:                                              ; preds = %108, %104, %95
  %111 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(8) @.str.9)
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110, %105, %101, %98
  %114 = or i32 %69, 128
  br label %115

115:                                              ; preds = %113, %110, %108, %104, %95
  %116 = phi i32 [ %69, %110 ], [ %114, %113 ], [ %69, %108 ], [ %69, %104 ], [ %69, %95 ]
  %117 = icmp eq i8 %97, 105
  br i1 %117, label %118, label %163, !prof !167

118:                                              ; preds = %115
  %119 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(11) @.str.10)
  %120 = icmp eq i32 %119, 0
  %121 = or i32 %116, 8
  %122 = select i1 %120, i32 %121, i32 %116
  br label %163

123:                                              ; preds = %92
  %124 = getelementptr inbounds i8, ptr %93, i64 1
  %125 = load i8, ptr %124, align 1, !tbaa !126
  %126 = icmp eq i8 %125, 115
  br i1 %126, label %127, label %130, !prof !168

127:                                              ; preds = %123
  %128 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(8) @.str.11)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %146, label %130

130:                                              ; preds = %127, %123
  switch i8 %94, label %163 [
    i8 118, label %131
    i8 103, label %139
    i8 108, label %150
  ], !prof !169

131:                                              ; preds = %130, %92
  %132 = getelementptr inbounds i8, ptr %93, i64 1
  %133 = load i8, ptr %132, align 1, !tbaa !126
  %134 = icmp eq i8 %133, 102
  br i1 %134, label %135, label %138, !prof !170

135:                                              ; preds = %131
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(6) @.str.12)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %146, label %138, !prof !171

138:                                              ; preds = %135, %131
  switch i8 %94, label %163 [
    i8 103, label %139
    i8 108, label %150
  ], !prof !172

139:                                              ; preds = %138, %130, %92
  %140 = getelementptr inbounds i8, ptr %93, i64 1
  %141 = load i8, ptr %140, align 1, !tbaa !126
  %142 = icmp eq i8 %141, 101
  br i1 %142, label %143, label %148, !prof !173

143:                                              ; preds = %139
  %144 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(11) @.str.13)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %148, !prof !174

146:                                              ; preds = %143, %135, %127
  %147 = or i32 %69, 128
  br label %163

148:                                              ; preds = %143, %139
  %149 = icmp eq i8 %94, 108
  br i1 %149, label %150, label %163, !prof !175

150:                                              ; preds = %148, %138, %130, %92
  %151 = getelementptr inbounds i8, ptr %93, i64 1
  %152 = load i8, ptr %151, align 1, !tbaa !126
  %153 = icmp eq i8 %152, 111
  br i1 %153, label %154, label %163, !prof !176

154:                                              ; preds = %150
  %155 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %93, ptr noundef nonnull dereferenceable(8) @.str.14)
  %156 = icmp eq i32 %155, 0
  %157 = or i32 %69, 8
  %158 = select i1 %156, i32 %157, i32 %69
  br label %163

159:                                              ; preds = %1
  %160 = and i64 %2, 1572864
  %161 = icmp eq i64 %160, 1048576
  %162 = zext i1 %161 to i32
  br label %163

163:                                              ; preds = %154, %150, %148, %146, %138, %130, %118, %115, %92, %46, %39, %31, %6, %159, %1
  %164 = phi i32 [ 0, %1 ], [ %162, %159 ], [ %27, %46 ], [ %27, %31 ], [ %27, %6 ], [ %116, %115 ], [ %69, %150 ], [ %69, %148 ], [ %147, %146 ], [ %122, %118 ], [ %158, %154 ], [ %27, %39 ], [ %69, %138 ], [ %69, %130 ], [ %69, %92 ]
  %165 = trunc i64 %2 to i32
  %166 = lshr i32 %165, 16
  %167 = and i32 %166, 8
  %168 = or i32 %164, %167
  ret i32 %168
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @call_expr_flags(ptr noundef %0) local_unnamed_addr #11 !prof !192 {
  %2 = tail call ptr @get_callee_fndecl(ptr noundef %0) #23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %172, label %4, !prof !193

4:                                                ; preds = %1
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !130
  switch i32 %8, label %166 [
    i32 3, label %9
    i32 2, label %162
  ], !prof !190

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 15
  %13 = and i32 %12, 16
  %14 = lshr i32 %11, 11
  %15 = and i32 %14, 128
  %16 = and i64 %5, 1572864
  %17 = icmp eq i64 %16, 1048576
  %18 = zext i1 %17 to i32
  %19 = lshr i32 %11, 26
  %20 = and i32 %19, 6
  %21 = lshr i32 %11, 8
  %22 = and i32 %21, 512
  %23 = trunc i64 %5 to i32
  %24 = lshr i32 %23, 19
  %25 = and i32 %24, 64
  %26 = or disjoint i32 %25, %18
  %27 = or disjoint i32 %26, %15
  %28 = or disjoint i32 %27, %13
  %29 = or disjoint i32 %28, %20
  %30 = or disjoint i32 %29, %22
  %31 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !126
  %33 = icmp eq ptr %32, null
  br i1 %33, label %166, label %34, !prof !149

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.tree_identifier, ptr %32, i64 0, i32 1, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !126
  %37 = icmp ult i32 %36, 18
  br i1 %37, label %38, label %166, !prof !150

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !126
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42, !prof !151

42:                                               ; preds = %38
  %43 = load i64, ptr %40, align 8
  %44 = and i64 %43, 65535
  %45 = icmp ne i64 %44, 40
  %46 = and i64 %5, 134217728
  %47 = icmp eq i64 %46, 0
  %48 = or i1 %47, %45
  br i1 %48, label %166, label %52, !prof !191

49:                                               ; preds = %38
  %50 = and i64 %5, 134217728
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %166, label %52, !prof !152

52:                                               ; preds = %49, %42
  %53 = getelementptr inbounds %struct.tree_identifier, ptr %32, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !126
  switch i32 %36, label %71 [
    i32 6, label %55
    i32 16, label %63
  ], !prof !153

55:                                               ; preds = %52
  %56 = load i8, ptr %54, align 1, !tbaa !126
  %57 = icmp eq i8 %56, 97
  br i1 %57, label %58, label %61, !prof !154

58:                                               ; preds = %55
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.3)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58, %55
  %62 = icmp eq i32 %36, 16
  br i1 %62, label %63, label %71, !prof !155

63:                                               ; preds = %61, %52
  %64 = load i8, ptr %54, align 1, !tbaa !126
  %65 = icmp eq i8 %64, 95
  br i1 %65, label %66, label %71, !prof !156

66:                                               ; preds = %63
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(17) @.str.4)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71, !prof !157

69:                                               ; preds = %66, %58
  %70 = or i32 %30, 32
  br label %71

71:                                               ; preds = %69, %66, %63, %61, %52
  %72 = phi i32 [ %30, %66 ], [ %70, %69 ], [ %30, %63 ], [ %30, %61 ], [ %30, %52 ]
  %73 = load i8, ptr %54, align 1, !tbaa !126
  %74 = icmp eq i8 %73, 95
  br i1 %74, label %75, label %95, !prof !158

75:                                               ; preds = %71
  %76 = getelementptr inbounds i8, ptr %54, i64 1
  %77 = load i8, ptr %76, align 1, !tbaa !126
  %78 = icmp eq i8 %77, 95
  br i1 %78, label %79, label %92, !prof !159

79:                                               ; preds = %75
  %80 = getelementptr inbounds i8, ptr %54, i64 2
  %81 = load i8, ptr %80, align 1, !tbaa !126
  switch i8 %81, label %92 [
    i8 98, label %82
    i8 120, label %90
  ], !prof !160

82:                                               ; preds = %79
  %83 = getelementptr inbounds i8, ptr %54, i64 3
  %84 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %83, ptr noundef nonnull dereferenceable(8) @.str.5, i64 noundef 7)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88, !prof !161

86:                                               ; preds = %82
  %87 = getelementptr inbounds i8, ptr %54, i64 10
  br label %95

88:                                               ; preds = %82
  %89 = icmp eq i8 %81, 120
  br i1 %89, label %90, label %92, !prof !162

90:                                               ; preds = %88, %79
  %91 = getelementptr inbounds i8, ptr %54, i64 3
  br label %95

92:                                               ; preds = %88, %79, %75
  %93 = getelementptr inbounds i8, ptr %54, i64 2
  %94 = select i1 %78, ptr %93, ptr %76, !prof !163
  br label %95

95:                                               ; preds = %92, %90, %86, %71
  %96 = phi ptr [ %91, %90 ], [ %87, %86 ], [ %54, %71 ], [ %94, %92 ]
  %97 = load i8, ptr %96, align 1, !tbaa !126
  switch i8 %97, label %166 [
    i8 115, label %98
    i8 113, label %126
    i8 118, label %134
    i8 103, label %142
    i8 108, label %153
  ], !prof !164

98:                                               ; preds = %95
  %99 = getelementptr inbounds i8, ptr %96, i64 1
  %100 = load i8, ptr %99, align 1, !tbaa !126
  switch i8 %100, label %118 [
    i8 101, label %101
    i8 105, label %108
    i8 97, label %113
  ], !prof !165

101:                                              ; preds = %98
  %102 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(7) @.str.6)
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %101
  %105 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(15) @.str.7)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %104
  switch i8 %100, label %118 [
    i8 105, label %108
    i8 97, label %113
  ], !prof !166

108:                                              ; preds = %107, %98
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(10) @.str.8)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %108
  %112 = icmp eq i8 %100, 97
  br i1 %112, label %113, label %118, !prof !167

113:                                              ; preds = %111, %107, %98
  %114 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(8) @.str.9)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113, %108, %104, %101
  %117 = or i32 %72, 128
  br label %118

118:                                              ; preds = %116, %113, %111, %107, %98
  %119 = phi i32 [ %72, %113 ], [ %117, %116 ], [ %72, %111 ], [ %72, %107 ], [ %72, %98 ]
  %120 = icmp eq i8 %100, 105
  br i1 %120, label %121, label %166, !prof !167

121:                                              ; preds = %118
  %122 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(11) @.str.10)
  %123 = icmp eq i32 %122, 0
  %124 = or i32 %119, 8
  %125 = select i1 %123, i32 %124, i32 %119
  br label %166

126:                                              ; preds = %95
  %127 = getelementptr inbounds i8, ptr %96, i64 1
  %128 = load i8, ptr %127, align 1, !tbaa !126
  %129 = icmp eq i8 %128, 115
  br i1 %129, label %130, label %133, !prof !168

130:                                              ; preds = %126
  %131 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(8) @.str.11)
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %130, %126
  switch i8 %97, label %166 [
    i8 118, label %134
    i8 103, label %142
    i8 108, label %153
  ], !prof !169

134:                                              ; preds = %133, %95
  %135 = getelementptr inbounds i8, ptr %96, i64 1
  %136 = load i8, ptr %135, align 1, !tbaa !126
  %137 = icmp eq i8 %136, 102
  br i1 %137, label %138, label %141, !prof !170

138:                                              ; preds = %134
  %139 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(6) @.str.12)
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %149, label %141, !prof !171

141:                                              ; preds = %138, %134
  switch i8 %97, label %166 [
    i8 103, label %142
    i8 108, label %153
  ], !prof !172

142:                                              ; preds = %141, %133, %95
  %143 = getelementptr inbounds i8, ptr %96, i64 1
  %144 = load i8, ptr %143, align 1, !tbaa !126
  %145 = icmp eq i8 %144, 101
  br i1 %145, label %146, label %151, !prof !173

146:                                              ; preds = %142
  %147 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(11) @.str.13)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151, !prof !174

149:                                              ; preds = %146, %138, %130
  %150 = or i32 %72, 128
  br label %166

151:                                              ; preds = %146, %142
  %152 = icmp eq i8 %97, 108
  br i1 %152, label %153, label %166, !prof !175

153:                                              ; preds = %151, %141, %133, %95
  %154 = getelementptr inbounds i8, ptr %96, i64 1
  %155 = load i8, ptr %154, align 1, !tbaa !126
  %156 = icmp eq i8 %155, 111
  br i1 %156, label %157, label %166, !prof !176

157:                                              ; preds = %153
  %158 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(8) @.str.14)
  %159 = icmp eq i32 %158, 0
  %160 = or i32 %72, 8
  %161 = select i1 %159, i32 %160, i32 %72
  br label %166

162:                                              ; preds = %4
  %163 = and i64 %5, 1572864
  %164 = icmp eq i64 %163, 1048576
  %165 = zext i1 %164 to i32
  br label %166

166:                                              ; preds = %4, %9, %34, %42, %49, %95, %118, %121, %133, %141, %149, %151, %153, %157, %162
  %167 = phi i32 [ 0, %4 ], [ %165, %162 ], [ %30, %49 ], [ %30, %34 ], [ %30, %9 ], [ %119, %118 ], [ %72, %153 ], [ %72, %151 ], [ %150, %149 ], [ %125, %121 ], [ %161, %157 ], [ %30, %42 ], [ %72, %141 ], [ %72, %133 ], [ %72, %95 ]
  %168 = trunc i64 %5 to i32
  %169 = lshr i32 %168, 16
  %170 = and i32 %169, 8
  %171 = or i32 %167, %170
  br label %186

172:                                              ; preds = %1
  %173 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !126
  %175 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !126
  %177 = icmp eq ptr %176, null
  br i1 %177, label %186, label %178, !prof !194

178:                                              ; preds = %172
  %179 = load i64, ptr %176, align 8
  %180 = and i64 %179, 65535
  %181 = icmp eq i64 %180, 10
  br i1 %181, label %182, label %186, !prof !195

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.tree_common, ptr %176, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !126
  %185 = tail call i32 @flags_from_decl_or_type(ptr noundef %184)
  br label %186

186:                                              ; preds = %172, %178, %182, %166
  %187 = phi i32 [ %171, %166 ], [ %185, %182 ], [ 0, %178 ], [ 0, %172 ]
  ret i32 %187
}

declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @shift_return_value(i32 noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #13 !prof !114 {
  %4 = load i32, ptr %2, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !126
  %10 = icmp ult i32 %9, 53
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1863, ptr noundef nonnull @.str.1) #23
  br label %12

12:                                               ; preds = %7, %11
  %13 = load i32, ptr %2, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !126
  %19 = zext i32 %0 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !126
  %22 = icmp eq i8 %18, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %12
  %24 = zext i8 %21 to i32
  %25 = zext i8 %18 to i32
  %26 = sub nsw i32 %25, %24
  %27 = shl nsw i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = icmp eq i8 %1, 0
  %30 = select i1 %29, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 46), ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44)
  %31 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %28) #23
  %32 = tail call zeroext i8 @force_expand_binop(i32 noundef %15, ptr noundef nonnull %30, ptr noundef nonnull %2, ptr noundef %31, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 2) #23
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1873, ptr noundef nonnull @.str.1) #23
  br label %35

35:                                               ; preds = %23, %34, %12
  %36 = phi i8 [ 0, %12 ], [ 1, %34 ], [ 1, %23 ]
  ret i8 %36
}

declare zeroext i8 @force_expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @expand_call(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !134 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.args_size, align 8
  %7 = alloca %struct.ix86_args, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = load i64, ptr %0, align 8
  %16 = lshr i64 %15, 18
  %17 = trunc i64 %16 to i8
  %18 = and i8 %17, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #23
  %19 = load i32, ptr @target_flags, align 4, !tbaa !130
  %20 = and i32 %19, 8196
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25, !prof !196

22:                                               ; preds = %3
  %23 = tail call i32 @ix86_cfun_abi() #23
  %24 = icmp eq i32 %23, 1
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i1 [ true, %3 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  %28 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  %29 = load ptr, ptr @stack_usage_map, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  store ptr null, ptr %10, align 8, !tbaa !115
  %30 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #23
  %31 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %32 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !126
  %34 = load i64, ptr %0, align 8
  %35 = trunc i64 %34 to i32
  %36 = lshr i32 %35, 19
  %37 = and i32 %36, 64
  %38 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %0) #23
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40, !prof !196

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !126
  br label %48

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !126
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !126
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi ptr [ %47, %43 ], [ %38, %40 ]
  %50 = phi ptr [ %47, %43 ], [ %42, %40 ]
  %51 = tail call i32 @flags_from_decl_or_type(ptr noundef %49)
  %52 = or i32 %51, %37
  %53 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !126
  %55 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !206
  %56 = tail call ptr %55(ptr noundef %50, i32 noundef 0) #23, !prof !207
  %57 = load i64, ptr %54, align 8
  %58 = trunc i64 %57 to i32
  %59 = and i32 %58, 65535
  %60 = add nsw i32 %59, -15
  %61 = icmp ult i32 %60, 4
  br i1 %61, label %62, label %64, !prof !196

62:                                               ; preds = %48
  %63 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 34, ptr noundef nonnull @.str.2) #23
  br label %64

64:                                               ; preds = %48, %62
  %65 = and i32 %51, 3
  %66 = icmp ne i32 %65, 0
  %67 = and i32 %51, 4
  %68 = icmp eq i32 %67, 0
  %69 = and i1 %66, %68
  br i1 %69, label %70, label %154, !prof !196

70:                                               ; preds = %64
  %71 = icmp ne i32 %2, 0
  %72 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %73 = icmp eq ptr %72, %1
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %89, label %75

75:                                               ; preds = %70
  %76 = load i64, ptr %54, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 14
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = tail call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %86

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = lshr i32 %83, 16
  %85 = and i32 %84, 255
  br label %86

86:                                               ; preds = %81, %79
  %87 = phi i32 [ %80, %79 ], [ %85, %81 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %154

89:                                               ; preds = %86, %70
  %90 = load ptr, ptr %31, align 8, !tbaa !126
  %91 = getelementptr inbounds %struct.tree_int_cst, ptr %90, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !126
  %93 = trunc i64 %92 to i32
  %94 = add nsw i32 %93, -3
  %95 = icmp sgt i32 %93, 3
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 3
  %98 = load ptr, ptr %97, align 8, !tbaa !126
  br label %99

99:                                               ; preds = %89, %96
  %100 = phi i32 [ 1, %96 ], [ 0, %89 ]
  %101 = phi ptr [ %98, %96 ], [ null, %89 ]
  %102 = icmp eq ptr %101, null
  br i1 %102, label %124, label %103

103:                                              ; preds = %99
  %104 = load i64, ptr %101, align 8
  %105 = and i64 %104, 524288
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %111, label %151

107:                                              ; preds = %120
  %108 = load i64, ptr %122, align 8
  %109 = and i64 %108, 524288
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %151, !llvm.loop !208

111:                                              ; preds = %103, %107
  %112 = phi i32 [ %121, %107 ], [ %100, %103 ]
  %113 = icmp slt i32 %112, %94
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = add nsw i32 %112, 3
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !126
  %119 = add nsw i32 %112, 1
  br label %120

120:                                              ; preds = %111, %114
  %121 = phi i32 [ %119, %114 ], [ %112, %111 ]
  %122 = phi ptr [ %118, %114 ], [ null, %111 ]
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %107, !llvm.loop !208

124:                                              ; preds = %120, %99
  %125 = phi i1 [ %102, %99 ], [ %123, %120 ]
  br i1 %95, label %126, label %129

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 3
  %128 = load ptr, ptr %127, align 8, !tbaa !126
  br label %129

129:                                              ; preds = %124, %126
  %130 = phi i32 [ 1, %126 ], [ 0, %124 ]
  %131 = phi ptr [ %128, %126 ], [ null, %124 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %149, label %133

133:                                              ; preds = %129, %145
  %134 = phi ptr [ %147, %145 ], [ %131, %129 ]
  %135 = phi i32 [ %146, %145 ], [ %130, %129 ]
  %136 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !115
  %137 = tail call ptr @expand_expr_real(ptr noundef nonnull %134, ptr noundef %136, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  %138 = icmp slt i32 %135, %94
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = add nsw i32 %135, 3
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !126
  %144 = add nsw i32 %135, 1
  br label %145

145:                                              ; preds = %133, %139
  %146 = phi i32 [ %144, %139 ], [ %135, %133 ]
  %147 = phi ptr [ %143, %139 ], [ null, %133 ]
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %133, !llvm.loop !209

149:                                              ; preds = %145, %129
  %150 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !115
  br label %151

151:                                              ; preds = %107, %103, %149
  %152 = phi i1 [ %125, %149 ], [ %102, %103 ], [ %123, %107 ]
  %153 = phi ptr [ %150, %149 ], [ undef, %103 ], [ undef, %107 ]
  br i1 %152, label %2604, label %154

154:                                              ; preds = %151, %86, %64
  %155 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %49) #23
  br i1 %39, label %159, label %156, !prof !196

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !126
  br label %159

159:                                              ; preds = %154, %156
  %160 = phi ptr [ %158, %156 ], [ %50, %154 ]
  %161 = tail call i32 @ix86_function_type_abi(ptr noundef %160) #23
  %162 = icmp ne i32 %161, 1
  %163 = icmp sgt i32 %155, 0
  %164 = select i1 %162, i1 %163, i1 false, !prof !135
  br i1 %164, label %165, label %173, !prof !196

165:                                              ; preds = %159
  %166 = load i32, ptr @target_flags, align 4, !tbaa !130
  %167 = and i32 %166, 8196
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = tail call i32 @ix86_cfun_abi() #23
  %171 = icmp eq i32 %170, 1
  %172 = select i1 %171, i32 %27, i32 1
  br label %173

173:                                              ; preds = %169, %165, %159
  %174 = phi i32 [ %27, %165 ], [ %27, %159 ], [ %172, %169 ]
  %175 = tail call i32 @aggregate_value_p(ptr noundef nonnull %0, ptr noundef %49) #23
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %196, label %177, !prof !135

177:                                              ; preds = %173
  %178 = and i32 %52, -8
  %179 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %54) #23
  %180 = icmp eq ptr %1, null
  br i1 %180, label %189, label %181

181:                                              ; preds = %177
  %182 = load i32, ptr %1, align 8
  %183 = and i32 %182, 65535
  %184 = icmp eq i32 %183, 43
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = load i64, ptr %0, align 8
  %187 = and i64 %186, 268435456
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %185, %181, %177
  %190 = tail call ptr @assign_temp(ptr noundef nonnull %54, i32 noundef 0, i32 noundef 1, i32 noundef 1) #23
  tail call void @mark_temp_addr_taken(ptr noundef %190) #23
  br label %191

191:                                              ; preds = %185, %189
  %192 = phi ptr [ %190, %189 ], [ %1, %185 ]
  %193 = phi ptr [ null, %189 ], [ %1, %185 ]
  %194 = getelementptr inbounds %struct.rtx_def, ptr %192, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !126
  br label %196

196:                                              ; preds = %191, %173
  %197 = phi i32 [ %52, %173 ], [ %178, %191 ]
  %198 = phi ptr [ null, %173 ], [ %195, %191 ]
  %199 = phi ptr [ %1, %173 ], [ %193, %191 ]
  %200 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !130
  %201 = zext i32 %200 to i64
  br i1 %39, label %212, label %202, !prof !196

202:                                              ; preds = %196
  %203 = tail call ptr @cgraph_rtl_info(ptr noundef %38) #23
  %204 = icmp eq ptr %203, null
  br i1 %204, label %212, label %205, !prof !210

205:                                              ; preds = %202
  %206 = load i32, ptr %203, align 4, !tbaa !211
  %207 = icmp ne i32 %206, 0
  %208 = icmp ult i32 %206, %200
  %209 = select i1 %207, i1 %208, i1 false, !prof !213
  %210 = zext i32 %206 to i64
  %211 = select i1 %209, i64 %210, i64 %201, !prof !214
  br label %212

212:                                              ; preds = %205, %202, %196
  %213 = phi i64 [ %201, %196 ], [ %201, %202 ], [ %211, %205 ]
  %214 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !126
  %216 = load i64, ptr %215, align 8
  %217 = trunc i64 %216 to i16
  switch i16 %217, label %218 [
    i16 10, label %219
    i16 12, label %219
  ], !prof !215

218:                                              ; preds = %212
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2140, ptr noundef nonnull @.str.1) #23
  br label %219

219:                                              ; preds = %212, %212, %218
  %220 = getelementptr inbounds %struct.tree_common, ptr %215, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !126
  %222 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !216
  %223 = icmp eq ptr %222, null
  br i1 %223, label %318, label %224, !prof !135

224:                                              ; preds = %219
  %225 = load ptr, ptr %31, align 8, !tbaa !126
  %226 = getelementptr inbounds %struct.tree_int_cst, ptr %225, i64 0, i32 1
  %227 = load i64, ptr %226, align 8, !tbaa !126
  %228 = trunc i64 %227 to i32
  %229 = add nsw i32 %228, -3
  %230 = icmp sgt i32 %228, 3
  br i1 %230, label %231, label %234

231:                                              ; preds = %224
  %232 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 3
  %233 = load ptr, ptr %232, align 8, !tbaa !126
  br label %234

234:                                              ; preds = %224, %231
  %235 = phi i32 [ 1, %231 ], [ 0, %224 ]
  %236 = phi ptr [ %233, %231 ], [ null, %224 ]
  %237 = icmp eq ptr %236, null
  br i1 %237, label %268, label %238

238:                                              ; preds = %234, %264
  %239 = phi i32 [ %256, %264 ], [ 0, %234 ]
  %240 = phi ptr [ %266, %264 ], [ %236, %234 ]
  %241 = phi i32 [ %265, %264 ], [ %235, %234 ]
  %242 = getelementptr inbounds %struct.tree_common, ptr %240, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !126
  %244 = icmp eq ptr %243, null
  br i1 %244, label %255, label %245

245:                                              ; preds = %238
  %246 = load i64, ptr %243, align 8
  %247 = and i64 %246, 65535
  %248 = icmp eq i64 %247, 13
  br i1 %248, label %249, label %255

249:                                              ; preds = %245
  %250 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !216
  %251 = tail call zeroext i8 %250(ptr noundef nonnull %243) #23
  %252 = icmp ne i8 %251, 0
  %253 = zext i1 %252 to i32
  %254 = add nsw i32 %239, %253
  br label %255

255:                                              ; preds = %249, %245, %238
  %256 = phi i32 [ %239, %245 ], [ %239, %238 ], [ %254, %249 ]
  %257 = icmp slt i32 %241, %229
  br i1 %257, label %258, label %264

258:                                              ; preds = %255
  %259 = add nsw i32 %241, 3
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %260
  %262 = load ptr, ptr %261, align 8, !tbaa !126
  %263 = add nsw i32 %241, 1
  br label %264

264:                                              ; preds = %255, %258
  %265 = phi i32 [ %263, %258 ], [ %241, %255 ]
  %266 = phi ptr [ %262, %258 ], [ null, %255 ]
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %238, !llvm.loop !217

268:                                              ; preds = %264, %234
  %269 = phi i32 [ 0, %234 ], [ %256, %264 ]
  %270 = getelementptr inbounds %struct.tree_type, ptr %221, i64 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !126
  %272 = icmp eq ptr %271, null
  br i1 %272, label %321, label %273

273:                                              ; preds = %268, %287
  %274 = phi ptr [ %289, %287 ], [ %271, %268 ]
  %275 = getelementptr inbounds %struct.tree_list, ptr %274, i64 0, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !126
  %277 = load i64, ptr %276, align 8
  %278 = and i64 %277, 65535
  %279 = icmp eq i64 %278, 13
  br i1 %279, label %280, label %284

280:                                              ; preds = %273
  %281 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !216
  %282 = tail call zeroext i8 %281(ptr noundef nonnull %276) #23
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %280, %273
  br label %285

285:                                              ; preds = %284, %280
  %286 = phi i32 [ 0, %284 ], [ 5, %280 ]
  switch i32 %286, label %321 [
    i32 0, label %287
    i32 5, label %291
  ]

287:                                              ; preds = %285
  %288 = getelementptr inbounds %struct.tree_common, ptr %274, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !126
  %290 = icmp eq ptr %289, null
  br i1 %290, label %321, label %273, !llvm.loop !218

291:                                              ; preds = %285
  %292 = tail call ptr @copy_list(ptr noundef nonnull %271) #23
  %293 = icmp eq ptr %292, null
  br i1 %293, label %321, label %294

294:                                              ; preds = %291, %313
  %295 = phi ptr [ %316, %313 ], [ %292, %291 ]
  %296 = getelementptr inbounds %struct.tree_list, ptr %295, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !126
  %298 = load i64, ptr %297, align 8
  %299 = and i64 %298, 65535
  %300 = icmp eq i64 %299, 13
  br i1 %300, label %301, label %313

301:                                              ; preds = %294
  %302 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !216
  %303 = tail call zeroext i8 %302(ptr noundef nonnull %297) #23
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %313, label %305

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.tree_common, ptr %297, i64 0, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !126
  store ptr %307, ptr %296, align 8, !tbaa !126
  %308 = getelementptr inbounds %struct.tree_common, ptr %295, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !126
  %310 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %307) #23
  store ptr %310, ptr %308, align 8, !tbaa !126
  %311 = getelementptr inbounds %struct.tree_common, ptr %310, i64 0, i32 1
  store ptr %309, ptr %311, align 8, !tbaa !126
  %312 = load ptr, ptr %308, align 8, !tbaa !126
  br label %313

313:                                              ; preds = %305, %301, %294
  %314 = phi ptr [ %312, %305 ], [ %295, %301 ], [ %295, %294 ]
  %315 = getelementptr inbounds %struct.tree_common, ptr %314, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !126
  %317 = icmp eq ptr %316, null
  br i1 %317, label %321, label %294, !llvm.loop !219

318:                                              ; preds = %219
  %319 = getelementptr inbounds %struct.tree_type, ptr %221, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !126
  br label %321

321:                                              ; preds = %287, %285, %313, %268, %291, %318
  %322 = phi i32 [ 0, %318 ], [ %269, %291 ], [ %269, %268 ], [ %269, %313 ], [ %269, %285 ], [ %269, %287 ]
  %323 = phi ptr [ %320, %318 ], [ %292, %291 ], [ %271, %268 ], [ %292, %313 ], [ %271, %285 ], [ %271, %287 ]
  %324 = and i32 %197, 32
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %331, label %326, !prof !135

326:                                              ; preds = %321
  %327 = load ptr, ptr @cfun, align 8, !tbaa !115
  %328 = getelementptr inbounds %struct.function, ptr %327, i64 0, i32 20
  %329 = load i32, ptr %328, align 8
  %330 = or i32 %329, 524288
  store i32 %330, ptr %328, align 8
  br label %331

331:                                              ; preds = %326, %321
  %332 = icmp ne ptr %198, null
  %333 = icmp eq ptr %56, null
  %334 = select i1 %332, i1 %333, i1 false, !prof !196
  br i1 %334, label %335, label %364, !prof !196

335:                                              ; preds = %331
  %336 = load i32, ptr %198, align 8
  %337 = and i32 %336, 65535
  %338 = icmp eq i32 %337, 37
  br i1 %338, label %339, label %355

339:                                              ; preds = %335
  %340 = load i32, ptr @target_flags, align 4, !tbaa !130
  %341 = and i32 %340, 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %349

343:                                              ; preds = %339
  %344 = tail call i32 @ix86_cfun_abi() #23
  %345 = icmp eq i32 %344, 1
  %346 = load i32, ptr @stack_arg_under_construction, align 4
  %347 = icmp ne i32 %346, 0
  %348 = select i1 %345, i1 %347, i1 false
  br i1 %348, label %352, label %358

349:                                              ; preds = %339
  %350 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !130
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %358, label %352

352:                                              ; preds = %343, %349
  %353 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !115
  %354 = icmp eq ptr %198, %353
  br i1 %354, label %355, label %358

355:                                              ; preds = %352, %335
  %356 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %198, i8 noundef zeroext 0) #23
  %357 = tail call ptr @copy_addr_to_reg(ptr noundef %356) #23
  br label %358

358:                                              ; preds = %349, %343, %352, %355
  %359 = phi ptr [ %357, %355 ], [ %198, %352 ], [ %198, %343 ], [ %198, %349 ]
  %360 = getelementptr inbounds %struct.tree_common, ptr %221, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !126
  %362 = tail call ptr @build_pointer_type(ptr noundef %361) #23
  %363 = tail call ptr @make_tree(ptr noundef %362, ptr noundef %359) #23
  br label %364

364:                                              ; preds = %358, %331
  %365 = phi ptr [ %363, %358 ], [ null, %331 ]
  %366 = phi i32 [ 1, %358 ], [ 0, %331 ]
  %367 = load ptr, ptr %31, align 8, !tbaa !126
  %368 = getelementptr inbounds %struct.tree_int_cst, ptr %367, i64 0, i32 1
  %369 = load i64, ptr %368, align 8, !tbaa !126
  %370 = trunc i64 %369 to i32
  %371 = add i32 %322, -3
  %372 = add i32 %371, %366
  %373 = add i32 %372, %370
  %374 = icmp eq ptr %323, null
  br i1 %374, label %378, label %375, !prof !196

375:                                              ; preds = %364
  %376 = tail call i32 @list_length(ptr noundef nonnull %323) #23
  %377 = add nsw i32 %376, %366
  br label %378

378:                                              ; preds = %364, %375
  %379 = phi i32 [ %377, %375 ], [ %373, %364 ]
  call void @init_cumulative_args(ptr noundef nonnull %7, ptr noundef %221, ptr noundef null, ptr noundef %38) #23
  br i1 %374, label %391, label %380, !prof !196

380:                                              ; preds = %378
  %381 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 8), align 8, !tbaa !220
  %382 = call zeroext i8 %381(ptr noundef nonnull %7) #23, !prof !221
  %383 = icmp eq i8 %382, 0
  %384 = select i1 %383, i32 %373, i32 %379, !prof !196
  br i1 %383, label %385, label %391, !prof !196

385:                                              ; preds = %380
  %386 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 9), align 8, !tbaa !222
  %387 = call zeroext i8 %386(ptr noundef nonnull %7) #23
  %388 = icmp eq i8 %387, 0
  %389 = add nsw i32 %379, -1
  %390 = select i1 %388, i32 %389, i32 %373
  br label %391

391:                                              ; preds = %385, %380, %378
  %392 = phi i32 [ %384, %380 ], [ %373, %378 ], [ %390, %385 ]
  %393 = sext i32 %373 to i64
  %394 = mul nsw i64 %393, 184
  %395 = alloca i8, i64 %394, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %395, i8 0, i64 %394, i1 false), !prof !223
  %396 = load i64, ptr %0, align 8
  %397 = and i64 %396, 65535
  %398 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !130
  %400 = add i32 %399, -4
  %401 = icmp ult i32 %400, 7
  br i1 %401, label %402, label %405, !prof !135

402:                                              ; preds = %391
  %403 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %404 = load i32, ptr %403, align 8, !tbaa !126
  br label %405

405:                                              ; preds = %402, %391
  %406 = phi i32 [ %404, %402 ], [ 0, %391 ]
  %407 = getelementptr inbounds %struct.args_size, ptr %6, i64 0, i32 1
  %408 = add i32 %373, -1
  %409 = icmp eq ptr %365, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  br i1 %409, label %414, label %410, !prof !135

410:                                              ; preds = %405
  %411 = sext i32 %408 to i64
  %412 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %411
  store ptr %365, ptr %412, align 8, !tbaa !224
  %413 = add nsw i32 %373, -2
  br label %414

414:                                              ; preds = %410, %405
  %415 = phi i32 [ %413, %410 ], [ %408, %405 ]
  %416 = load ptr, ptr %31, align 8, !tbaa !126
  %417 = getelementptr inbounds %struct.tree_int_cst, ptr %416, i64 0, i32 1
  %418 = load i64, ptr %417, align 8, !tbaa !126
  %419 = trunc i64 %418 to i32
  %420 = add nsw i32 %419, -3
  %421 = icmp sgt i32 %419, 3
  br i1 %421, label %422, label %425, !prof !135

422:                                              ; preds = %414
  %423 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 3
  %424 = load ptr, ptr %423, align 8, !tbaa !126
  br label %425

425:                                              ; preds = %422, %414
  %426 = phi i32 [ 1, %422 ], [ 0, %414 ]
  %427 = phi ptr [ %424, %422 ], [ null, %414 ]
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %434, !prof !228

429:                                              ; preds = %472, %425
  %430 = icmp sgt i32 %373, 0
  br i1 %430, label %431, label %774, !prof !229

431:                                              ; preds = %429
  %432 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %433 = sext i32 %408 to i64
  br label %476

434:                                              ; preds = %425, %472
  %435 = phi i32 [ %464, %472 ], [ %415, %425 ]
  %436 = phi ptr [ %474, %472 ], [ %427, %425 ]
  %437 = phi i32 [ %473, %472 ], [ %426, %425 ]
  %438 = getelementptr inbounds %struct.tree_common, ptr %436, i64 0, i32 2
  %439 = load ptr, ptr %438, align 8, !tbaa !126
  %440 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !216
  %441 = icmp ne ptr %440, null
  %442 = icmp ne ptr %439, null
  %443 = select i1 %441, i1 %442, i1 false, !prof !230
  br i1 %443, label %444, label %459, !prof !230

444:                                              ; preds = %434
  %445 = load i64, ptr %439, align 8
  %446 = and i64 %445, 65535
  %447 = icmp eq i64 %446, 13
  br i1 %447, label %448, label %459

448:                                              ; preds = %444
  %449 = call zeroext i8 %440(ptr noundef nonnull %439) #23
  %450 = icmp eq i8 %449, 0
  br i1 %450, label %459, label %451

451:                                              ; preds = %448
  %452 = getelementptr inbounds %struct.tree_common, ptr %439, i64 0, i32 2
  %453 = load ptr, ptr %452, align 8, !tbaa !126
  %454 = call ptr @build1_stat(i32 noundef 43, ptr noundef %453, ptr noundef nonnull %436) #23
  %455 = sext i32 %435 to i64
  %456 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %455
  store ptr %454, ptr %456, align 8, !tbaa !224
  %457 = add nsw i32 %435, -1
  %458 = call ptr @build1_stat(i32 noundef 44, ptr noundef %453, ptr noundef nonnull %436) #23
  br label %459

459:                                              ; preds = %434, %444, %448, %451
  %460 = phi i32 [ %457, %451 ], [ %435, %448 ], [ %435, %444 ], [ %435, %434 ]
  %461 = phi ptr [ %458, %451 ], [ %436, %448 ], [ %436, %444 ], [ %436, %434 ]
  %462 = sext i32 %460 to i64
  %463 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %462
  store ptr %461, ptr %463, align 8, !tbaa !224
  %464 = add nsw i32 %460, -1
  %465 = icmp slt i32 %437, %420
  br i1 %465, label %466, label %472, !prof !231

466:                                              ; preds = %459
  %467 = add nsw i32 %437, 3
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %468
  %470 = load ptr, ptr %469, align 8, !tbaa !126
  %471 = add nsw i32 %437, 1
  br label %472

472:                                              ; preds = %466, %459
  %473 = phi i32 [ %471, %466 ], [ %437, %459 ]
  %474 = phi ptr [ %470, %466 ], [ null, %459 ]
  %475 = icmp eq ptr %474, null
  br i1 %475, label %429, label %434, !prof !232, !llvm.loop !233

476:                                              ; preds = %431, %769
  %477 = phi i64 [ %433, %431 ], [ %771, %769 ]
  %478 = phi i32 [ 0, %431 ], [ %772, %769 ]
  %479 = phi ptr [ undef, %431 ], [ %653, %769 ]
  %480 = phi i8 [ %18, %431 ], [ %651, %769 ]
  %481 = phi i32 [ 0, %431 ], [ %650, %769 ]
  %482 = phi i32 [ %197, %431 ], [ %649, %769 ]
  %483 = phi i32 [ %174, %431 ], [ %715, %769 ]
  %484 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %477
  %485 = load ptr, ptr %484, align 8, !tbaa !224
  %486 = getelementptr inbounds %struct.tree_common, ptr %485, i64 0, i32 2
  %487 = load ptr, ptr %486, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  %488 = load ptr, ptr @global_trees, align 16, !tbaa !115
  %489 = icmp eq ptr %487, %488
  br i1 %489, label %494, label %490, !prof !230

490:                                              ; preds = %476
  %491 = getelementptr inbounds %struct.tree_type, ptr %487, i64 0, i32 2
  %492 = load ptr, ptr %491, align 8, !tbaa !126
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %497, !prof !230

494:                                              ; preds = %490, %476
  %495 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !115
  store ptr %495, ptr %484, align 8, !tbaa !224
  %496 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !115
  br label %497

497:                                              ; preds = %494, %490
  %498 = phi ptr [ %496, %494 ], [ %487, %490 ]
  %499 = load i64, ptr %498, align 8
  %500 = and i64 %499, 65534
  %501 = icmp eq i64 %500, 16
  br i1 %501, label %502, label %511, !prof !230

502:                                              ; preds = %497
  %503 = getelementptr inbounds %struct.tree_type, ptr %498, i64 0, i32 6
  %504 = load i32, ptr %503, align 4
  %505 = and i32 %504, 4096
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %511, label %507

507:                                              ; preds = %502
  %508 = call ptr @first_field(ptr noundef nonnull %498) #23
  %509 = getelementptr inbounds %struct.tree_common, ptr %508, i64 0, i32 2
  %510 = load ptr, ptr %509, align 8, !tbaa !126
  br label %511

511:                                              ; preds = %507, %502, %497
  %512 = phi ptr [ %510, %507 ], [ %498, %502 ], [ %498, %497 ]
  %513 = load i64, ptr %512, align 8
  %514 = and i64 %513, 65535
  %515 = icmp eq i64 %514, 14
  br i1 %515, label %516, label %518, !prof !230

516:                                              ; preds = %511
  %517 = call i32 @vector_type_mode(ptr noundef nonnull %512) #23
  br label %523

518:                                              ; preds = %511
  %519 = getelementptr inbounds %struct.tree_type, ptr %512, i64 0, i32 6
  %520 = load i32, ptr %519, align 4
  %521 = lshr i32 %520, 16
  %522 = and i32 %521, 255
  br label %523

523:                                              ; preds = %518, %516
  %524 = phi i32 [ %517, %516 ], [ %522, %518 ]
  %525 = icmp slt i32 %478, %392
  %526 = zext i1 %525 to i32
  %527 = zext i1 %525 to i8
  %528 = call zeroext i8 @pass_by_reference(ptr noundef nonnull %7, i32 noundef %524, ptr noundef nonnull %512, i8 noundef zeroext %527) #23
  %529 = icmp eq i8 %528, 0
  br i1 %529, label %648, label %530, !prof !234

530:                                              ; preds = %523
  %531 = and i64 %396, 536870912
  %532 = icmp eq i64 %531, 0
  %533 = load i64, ptr %512, align 8
  %534 = and i64 %533, 65535
  %535 = icmp eq i64 %534, 14
  br i1 %535, label %536, label %538

536:                                              ; preds = %530
  %537 = call i32 @vector_type_mode(ptr noundef nonnull %512) #23
  br label %543

538:                                              ; preds = %530
  %539 = getelementptr inbounds %struct.tree_type, ptr %512, i64 0, i32 6
  %540 = load i32, ptr %539, align 4
  %541 = lshr i32 %540, 16
  %542 = and i32 %541, 255
  br label %543

543:                                              ; preds = %538, %536
  %544 = phi i32 [ %537, %536 ], [ %542, %538 ]
  %545 = call zeroext i8 @reference_callee_copied(ptr noundef nonnull %7, i32 noundef %544, ptr noundef nonnull %512, i8 noundef zeroext %527) #23
  br i1 %532, label %546, label %575

546:                                              ; preds = %543
  %547 = icmp ne i8 %545, 0
  br i1 %547, label %548, label %597

548:                                              ; preds = %546
  %549 = load i64, ptr %512, align 8
  %550 = and i64 %549, 262144
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %552, label %597

552:                                              ; preds = %548
  %553 = load ptr, ptr %484, align 8, !tbaa !224
  %554 = call ptr @get_base_address(ptr noundef %553) #23
  %555 = icmp eq ptr %554, null
  br i1 %555, label %597, label %556

556:                                              ; preds = %552
  %557 = load i64, ptr %554, align 8
  %558 = and i64 %557, 65535
  %559 = icmp eq i64 %558, 141
  br i1 %559, label %597, label %560

560:                                              ; preds = %556
  %561 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %558
  %562 = load i32, ptr %561, align 4, !tbaa !130
  %563 = icmp eq i32 %562, 3
  br i1 %563, label %564, label %575

564:                                              ; preds = %560
  %565 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %554, i64 0, i32 1
  %566 = load ptr, ptr %565, align 8, !tbaa !126
  %567 = icmp eq ptr %566, null
  br i1 %567, label %568, label %570

568:                                              ; preds = %564
  call void @make_decl_rtl(ptr noundef nonnull %554) #23
  %569 = load ptr, ptr %565, align 8, !tbaa !126
  br label %570

570:                                              ; preds = %568, %564
  %571 = phi ptr [ %569, %568 ], [ %566, %564 ]
  %572 = load i32, ptr %571, align 8
  %573 = and i32 %572, 65535
  %574 = icmp eq i32 %573, 43
  br i1 %574, label %575, label %597

575:                                              ; preds = %570, %560, %543
  %576 = phi ptr [ %479, %543 ], [ %554, %570 ], [ %554, %560 ]
  br i1 %532, label %577, label %587

577:                                              ; preds = %575
  %578 = load i64, ptr %576, align 8
  %579 = and i64 %578, 65535
  %580 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %579
  %581 = load i32, ptr %580, align 4, !tbaa !130
  %582 = icmp eq i32 %581, 3
  %583 = and i64 %578, 67108864
  %584 = icmp eq i64 %583, 0
  %585 = and i1 %582, %584
  %586 = select i1 %585, i8 0, i8 %480
  br label %587

587:                                              ; preds = %577, %575
  %588 = phi i8 [ %480, %575 ], [ %586, %577 ]
  %589 = load ptr, ptr %484, align 8, !tbaa !224
  %590 = call ptr @build_fold_addr_expr_loc(i32 noundef %406, ptr noundef %589) #23
  store ptr %590, ptr %484, align 8, !tbaa !224
  %591 = getelementptr inbounds %struct.tree_common, ptr %590, i64 0, i32 2
  %592 = load ptr, ptr %591, align 8, !tbaa !126
  %593 = and i32 %482, 1
  %594 = icmp eq i32 %593, 0
  %595 = and i32 %482, -6
  %596 = select i1 %594, i32 %482, i32 %595
  br label %648

597:                                              ; preds = %570, %556, %552, %548, %546
  %598 = phi ptr [ %479, %548 ], [ %554, %570 ], [ %554, %556 ], [ null, %552 ], [ %479, %546 ]
  %599 = getelementptr inbounds %struct.tree_type, ptr %512, i64 0, i32 2
  %600 = load ptr, ptr %599, align 8, !tbaa !126
  %601 = icmp eq ptr %600, null
  br i1 %601, label %614, label %602

602:                                              ; preds = %597
  %603 = getelementptr inbounds %struct.tree_type, ptr %512, i64 0, i32 3
  %604 = load ptr, ptr %603, align 8, !tbaa !126
  %605 = load i64, ptr %604, align 8
  %606 = and i64 %605, 65535
  %607 = icmp eq i64 %606, 23
  br i1 %607, label %608, label %614

608:                                              ; preds = %602
  %609 = load i32, ptr @flag_stack_check, align 4, !tbaa !130
  %610 = icmp eq i32 %609, 1
  br i1 %610, label %611, label %627

611:                                              ; preds = %608
  %612 = call i32 @compare_tree_int(ptr noundef nonnull %604, i64 noundef 40) #23
  %613 = icmp sgt i32 %612, 0
  br i1 %613, label %614, label %627

614:                                              ; preds = %611, %602, %597
  %615 = load ptr, ptr %484, align 8, !tbaa !224
  %616 = call ptr @expr_size(ptr noundef %615) #23
  %617 = load ptr, ptr %10, align 8, !tbaa !115
  %618 = icmp eq ptr %617, null
  br i1 %618, label %619, label %621

619:                                              ; preds = %614
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %10, ptr noundef null) #23
  %620 = load i32, ptr @x_rtl, align 8, !tbaa !235
  store i32 0, ptr @x_rtl, align 8, !tbaa !235
  br label %621

621:                                              ; preds = %619, %614
  %622 = phi i32 [ %620, %619 ], [ %481, %614 ]
  %623 = getelementptr inbounds %struct.tree_type, ptr %512, i64 0, i32 7
  %624 = load i32, ptr %623, align 8, !tbaa !126
  %625 = call ptr @allocate_dynamic_stack_space(ptr noundef %616, ptr noundef null, i32 noundef %624) #23
  %626 = call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %625) #23
  call void @set_mem_attributes(ptr noundef %626, ptr noundef nonnull %512, i32 noundef 1) #23
  br label %629

627:                                              ; preds = %611, %608
  %628 = call ptr @assign_temp(ptr noundef nonnull %512, i32 noundef 0, i32 noundef 1, i32 noundef 0) #23
  br label %629

629:                                              ; preds = %627, %621
  %630 = phi i32 [ %622, %621 ], [ %481, %627 ]
  %631 = phi ptr [ %626, %621 ], [ %628, %627 ]
  %632 = load ptr, ptr %484, align 8, !tbaa !224
  %633 = call ptr @store_expr(ptr noundef %632, ptr noundef %631, i32 noundef 0, i8 noundef zeroext 0) #23
  %634 = and i32 %482, 1
  %635 = icmp eq i32 %634, 0
  %636 = and i32 %482, -4
  %637 = or disjoint i32 %636, 2
  %638 = select i1 %635, i32 %482, i32 %637
  %639 = and i32 %638, 2
  %640 = icmp eq i32 %639, 0
  %641 = select i1 %547, i1 true, i1 %640
  %642 = and i32 %638, -7
  %643 = select i1 %641, i32 %638, i32 %642
  %644 = call ptr @make_tree(ptr noundef nonnull %512, ptr noundef %631) #23
  %645 = call ptr @build_fold_addr_expr_loc(i32 noundef %406, ptr noundef %644) #23
  store ptr %645, ptr %484, align 8, !tbaa !224
  %646 = getelementptr inbounds %struct.tree_common, ptr %645, i64 0, i32 2
  %647 = load ptr, ptr %646, align 8, !tbaa !126
  br label %648

648:                                              ; preds = %587, %629, %523
  %649 = phi i32 [ %482, %523 ], [ %643, %629 ], [ %596, %587 ]
  %650 = phi i32 [ %481, %523 ], [ %630, %629 ], [ %481, %587 ]
  %651 = phi i8 [ %480, %523 ], [ 0, %629 ], [ %588, %587 ]
  %652 = phi ptr [ %512, %523 ], [ %647, %629 ], [ %592, %587 ]
  %653 = phi ptr [ %479, %523 ], [ %598, %629 ], [ %576, %587 ]
  %654 = load i64, ptr %652, align 8
  %655 = trunc i64 %654 to i32
  %656 = lshr i32 %655, 21
  %657 = and i32 %656, 1
  store i32 %657, ptr %5, align 4, !tbaa !130
  %658 = and i64 %654, 65535
  %659 = icmp eq i64 %658, 14
  br i1 %659, label %660, label %662, !prof !230

660:                                              ; preds = %648
  %661 = call i32 @vector_type_mode(ptr noundef nonnull %652) #23
  br label %667

662:                                              ; preds = %648
  %663 = getelementptr inbounds %struct.tree_type, ptr %652, i64 0, i32 6
  %664 = load i32, ptr %663, align 4
  %665 = lshr i32 %664, 16
  %666 = and i32 %665, 255
  br label %667

667:                                              ; preds = %662, %660
  %668 = phi i32 [ %661, %660 ], [ %666, %662 ]
  br i1 %39, label %671, label %669, !prof !230

669:                                              ; preds = %667
  %670 = load ptr, ptr %432, align 8, !tbaa !126
  br label %671

671:                                              ; preds = %669, %667
  %672 = phi ptr [ %670, %669 ], [ %50, %667 ]
  %673 = call i32 @promote_function_mode(ptr noundef nonnull %652, i32 noundef %668, ptr noundef nonnull %5, ptr noundef %672, i32 noundef 0) #23
  %674 = load i32, ptr %5, align 4, !tbaa !130
  %675 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %477, i32 7
  store i32 %674, ptr %675, align 8, !tbaa !236
  %676 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %477, i32 1
  store i32 %673, ptr %676, align 8, !tbaa !237
  %677 = call ptr @function_arg(ptr noundef nonnull %7, i32 noundef %673, ptr noundef nonnull %652, i32 noundef %526) #23
  %678 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %477, i32 4
  store ptr %677, ptr %678, align 8, !tbaa !238
  %679 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %477, i32 5
  store ptr %677, ptr %679, align 8, !tbaa !239
  %680 = icmp eq ptr %677, null
  br i1 %680, label %685, label %681, !prof !234

681:                                              ; preds = %671
  %682 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !240
  %683 = call i32 %682(ptr noundef nonnull %7, i32 noundef %673, ptr noundef nonnull %652, i8 noundef zeroext %527) #23
  %684 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %477, i32 8
  store i32 %683, ptr %684, align 4, !tbaa !241
  br label %685

685:                                              ; preds = %681, %671
  %686 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 11), align 8, !tbaa !242
  %687 = call zeroext i8 %686(i32 noundef %673, ptr noundef nonnull %652) #23, !prof !243
  %688 = zext i8 %687 to i32
  %689 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %477, i32 9
  store i32 %688, ptr %689, align 8, !tbaa !244
  %690 = load ptr, ptr %678, align 8, !tbaa !238
  %691 = icmp eq ptr %690, null
  br i1 %691, label %705, label %692, !prof !234

692:                                              ; preds = %685
  %693 = load i32, ptr %690, align 8
  %694 = and i32 %693, 65535
  %695 = icmp eq i32 %694, 15
  br i1 %695, label %696, label %705

696:                                              ; preds = %692
  %697 = getelementptr inbounds %struct.rtx_def, ptr %690, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !126
  %699 = getelementptr inbounds %struct.rtvec_def, ptr %698, i64 0, i32 1
  %700 = load ptr, ptr %699, align 8, !tbaa !115
  %701 = getelementptr inbounds %struct.rtx_def, ptr %700, i64 0, i32 1
  %702 = load ptr, ptr %701, align 8, !tbaa !126
  %703 = icmp eq ptr %702, null
  br i1 %703, label %704, label %705

704:                                              ; preds = %696
  store i32 1, ptr %689, align 8, !tbaa !244
  br label %705

705:                                              ; preds = %704, %696, %692, %685
  %706 = load i64, ptr %652, align 8
  %707 = and i64 %706, 262144
  %708 = icmp eq i64 %707, 0
  br i1 %708, label %709, label %713, !prof !234

709:                                              ; preds = %705
  %710 = load i32, ptr %689, align 8, !tbaa !244
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %714, label %712, !prof !234

712:                                              ; preds = %709
  br i1 %691, label %714, label %713

713:                                              ; preds = %712, %705
  br label %714

714:                                              ; preds = %713, %712, %709
  %715 = phi i32 [ %483, %709 ], [ %483, %712 ], [ 1, %713 ]
  br i1 %691, label %724, label %716, !prof !234

716:                                              ; preds = %714
  %717 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %477, i32 8
  %718 = load i32, ptr %717, align 4, !tbaa !241
  %719 = icmp ne i32 %718, 0
  %720 = or i1 %163, %719
  br i1 %720, label %724, label %721

721:                                              ; preds = %716
  %722 = load i32, ptr %689, align 8, !tbaa !244
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %735, label %724

724:                                              ; preds = %721, %716, %714
  %725 = icmp ne ptr %690, null
  %726 = zext i1 %725 to i32
  %727 = load i32, ptr %689, align 8, !tbaa !244
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %729, label %732, !prof !234

729:                                              ; preds = %724
  %730 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %477, i32 8
  %731 = load i32, ptr %730, align 4, !tbaa !241
  br label %732

732:                                              ; preds = %729, %724
  %733 = phi i32 [ %731, %729 ], [ 0, %724 ]
  %734 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %477, i32 10
  call void @locate_and_pad_parm(i32 noundef %673, ptr noundef nonnull %652, i32 noundef %726, i32 noundef %733, ptr noundef %38, ptr noundef nonnull %6, ptr noundef nonnull %734) #23
  br label %735

735:                                              ; preds = %732, %721
  %736 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %477, i32 10
  %737 = load i64, ptr %736, align 8, !tbaa !245
  %738 = load i64, ptr %6, align 8, !tbaa !246
  %739 = add nsw i64 %738, %737
  store i64 %739, ptr %6, align 8, !tbaa !246
  %740 = getelementptr inbounds %struct.args_size, ptr %736, i64 0, i32 1
  %741 = load ptr, ptr %740, align 8, !tbaa !247
  %742 = icmp eq ptr %741, null
  br i1 %742, label %758, label %743, !prof !234

743:                                              ; preds = %735
  %744 = call i32 @host_integerp(ptr noundef nonnull %741, i32 noundef 0) #23
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %750, label %746

746:                                              ; preds = %743
  %747 = call i64 @tree_low_cst(ptr noundef nonnull %741, i32 noundef 0) #23
  %748 = load i64, ptr %6, align 8, !tbaa !246
  %749 = add nsw i64 %748, %747
  store i64 %749, ptr %6, align 8, !tbaa !246
  br label %758

750:                                              ; preds = %743
  %751 = load ptr, ptr %407, align 8, !tbaa !248
  %752 = icmp eq ptr %751, null
  %753 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !115
  %754 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %753, ptr noundef nonnull %741) #23
  br i1 %752, label %755, label %756

755:                                              ; preds = %750
  store ptr %754, ptr %407, align 8, !tbaa !248
  br label %758

756:                                              ; preds = %750
  %757 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %751, ptr noundef %754) #23
  store ptr %757, ptr %407, align 8, !tbaa !248
  br label %758

758:                                              ; preds = %756, %755, %746, %735
  %759 = load i64, ptr %652, align 8
  %760 = and i64 %759, 65535
  %761 = icmp eq i64 %760, 14
  br i1 %761, label %762, label %764, !prof !230

762:                                              ; preds = %758
  %763 = call i32 @vector_type_mode(ptr noundef nonnull %652) #23
  br label %769

764:                                              ; preds = %758
  %765 = getelementptr inbounds %struct.tree_type, ptr %652, i64 0, i32 6
  %766 = load i32, ptr %765, align 4
  %767 = lshr i32 %766, 16
  %768 = and i32 %767, 255
  br label %769

769:                                              ; preds = %764, %762
  %770 = phi i32 [ %763, %762 ], [ %768, %764 ]
  call void @function_arg_advance(ptr noundef nonnull %7, i32 noundef %770, ptr noundef nonnull %652, i32 noundef %526) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  %771 = add nsw i64 %477, -1
  %772 = add nuw nsw i32 %478, 1
  %773 = icmp eq i32 %772, %373
  br i1 %773, label %774, label %476, !prof !232, !llvm.loop !249

774:                                              ; preds = %769, %429
  %775 = phi i32 [ %174, %429 ], [ %715, %769 ]
  %776 = phi i32 [ %197, %429 ], [ %649, %769 ]
  %777 = phi i32 [ 0, %429 ], [ %650, %769 ]
  %778 = phi i8 [ %18, %429 ], [ %651, %769 ]
  %779 = load ptr, ptr %407, align 8, !tbaa !248
  %780 = icmp eq ptr %779, null
  %781 = select i1 %780, i32 %775, i32 1, !prof !135
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %858, !prof !196

783:                                              ; preds = %774
  %784 = icmp sgt i32 %373, 0
  br i1 %784, label %785, label %848

785:                                              ; preds = %783
  %786 = zext nneg i32 %373 to i64
  br label %787

787:                                              ; preds = %785, %842
  %788 = phi i64 [ 0, %785 ], [ %844, %842 ]
  %789 = phi i32 [ 0, %785 ], [ %843, %842 ]
  %790 = phi i32 [ 0, %785 ], [ %809, %842 ]
  %791 = phi i32 [ 0, %785 ], [ %808, %842 ]
  %792 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %788
  %793 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %788, i32 8
  %794 = load i32, ptr %793, align 4, !tbaa !241
  %795 = icmp sgt i32 %794, 0
  br i1 %795, label %796, label %800

796:                                              ; preds = %787
  %797 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %788, i32 9
  %798 = load i32, ptr %797, align 8, !tbaa !244
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %807, label %800

800:                                              ; preds = %796, %787
  %801 = icmp eq i32 %790, 0
  br i1 %801, label %807, label %802

802:                                              ; preds = %800
  %803 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %788, i32 4
  %804 = load ptr, ptr %803, align 8, !tbaa !238
  %805 = icmp eq ptr %804, null
  %806 = select i1 %805, i32 1, i32 %791
  br label %807

807:                                              ; preds = %796, %802, %800
  %808 = phi i32 [ %791, %800 ], [ %806, %802 ], [ %791, %796 ]
  %809 = phi i32 [ 0, %800 ], [ 1, %802 ], [ 1, %796 ]
  %810 = load ptr, ptr %792, align 8, !tbaa !224
  %811 = getelementptr inbounds %struct.tree_common, ptr %810, i64 0, i32 2
  %812 = load ptr, ptr %811, align 8, !tbaa !126
  %813 = load i64, ptr %812, align 8
  %814 = and i64 %813, 65535
  %815 = icmp eq i64 %814, 14
  br i1 %815, label %816, label %818

816:                                              ; preds = %807
  %817 = call i32 @vector_type_mode(ptr noundef nonnull %812) #23
  br label %823

818:                                              ; preds = %807
  %819 = getelementptr inbounds %struct.tree_type, ptr %812, i64 0, i32 6
  %820 = load i32, ptr %819, align 4
  %821 = lshr i32 %820, 16
  %822 = and i32 %821, 255
  br label %823

823:                                              ; preds = %818, %816
  %824 = phi i32 [ %817, %816 ], [ %822, %818 ]
  %825 = icmp eq i32 %824, 1
  br i1 %825, label %826, label %842

826:                                              ; preds = %823
  %827 = load ptr, ptr %792, align 8, !tbaa !224
  %828 = load i64, ptr %827, align 8
  %829 = trunc i64 %828 to i16
  switch i16 %829, label %830 [
    i16 59, label %836
    i16 55, label %836
    i16 56, label %836
  ]

830:                                              ; preds = %826
  %831 = getelementptr inbounds %struct.tree_common, ptr %827, i64 0, i32 2
  %832 = load ptr, ptr %831, align 8, !tbaa !126
  %833 = load i64, ptr %832, align 8
  %834 = and i64 %833, 262144
  %835 = icmp eq i64 %834, 0
  br i1 %835, label %842, label %836

836:                                              ; preds = %826, %826, %830, %826
  %837 = getelementptr inbounds %struct.tree_common, ptr %827, i64 0, i32 2
  %838 = load ptr, ptr %837, align 8, !tbaa !126
  %839 = call i64 @int_size_in_bytes(ptr noundef %838) #23
  %840 = trunc i64 %839 to i32
  %841 = add i32 %789, %840
  br label %842

842:                                              ; preds = %836, %830, %823
  %843 = phi i32 [ %841, %836 ], [ %789, %830 ], [ %789, %823 ]
  %844 = add nuw nsw i64 %788, 1
  %845 = icmp ult i64 %844, %786
  %846 = icmp eq i32 %808, 0
  %847 = select i1 %845, i1 %846, i1 false
  br i1 %847, label %787, label %848, !llvm.loop !250

848:                                              ; preds = %842, %783
  %849 = phi i32 [ 0, %783 ], [ %808, %842 ]
  %850 = phi i32 [ 0, %783 ], [ %843, %842 ]
  %851 = shl nsw i32 %850, 1
  %852 = sext i32 %851 to i64
  %853 = load i64, ptr %6, align 8, !tbaa !246
  %854 = icmp sle i64 %853, %852
  %855 = icmp sgt i64 %853, 0
  %856 = and i1 %854, %855
  %857 = select i1 %856, i32 1, i32 %849
  br label %858

858:                                              ; preds = %774, %848
  %859 = phi i32 [ %781, %774 ], [ %857, %848 ]
  br i1 %332, label %860, label %883, !prof !196

860:                                              ; preds = %858
  %861 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !115
  %862 = call i32 @reg_mentioned_p(ptr noundef %861, ptr noundef nonnull %198) #23
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %868

864:                                              ; preds = %860
  %865 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !115
  %866 = call i32 @reg_mentioned_p(ptr noundef %865, ptr noundef nonnull %198) #23
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %883, label %868

868:                                              ; preds = %864, %860
  %869 = load ptr, ptr %407, align 8, !tbaa !248
  %870 = icmp eq ptr %869, null
  br i1 %870, label %871, label %881

871:                                              ; preds = %868
  %872 = load i32, ptr @target_flags, align 4, !tbaa !130
  %873 = and i32 %872, 4
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %875, label %883

875:                                              ; preds = %871
  %876 = call i32 @ix86_cfun_abi() #23
  %877 = icmp ne i32 %876, 1
  %878 = load i64, ptr %6, align 8
  %879 = icmp ne i64 %878, 0
  %880 = select i1 %877, i1 %879, i1 false
  br i1 %880, label %881, label %883

881:                                              ; preds = %875, %868
  %882 = call ptr @copy_to_reg(ptr noundef nonnull %198) #23
  br label %883

883:                                              ; preds = %875, %881, %871, %864, %858
  %884 = phi ptr [ %882, %881 ], [ %198, %871 ], [ %198, %864 ], [ null, %858 ], [ %198, %875 ]
  %885 = load i32, ptr @expand_call.currently_expanding_call, align 4, !tbaa !130
  %886 = add nsw i32 %885, 1
  store i32 %886, ptr @expand_call.currently_expanding_call, align 4, !tbaa !130
  %887 = icmp ne i32 %885, 0
  %888 = load i32, ptr @flag_optimize_sibling_calls, align 4
  %889 = icmp eq i32 %888, 0
  %890 = select i1 %887, i1 true, i1 %889, !prof !196
  %891 = load ptr, ptr %407, align 8
  %892 = icmp ne ptr %891, null
  %893 = select i1 %890, i1 true, i1 %892, !prof !196
  br i1 %893, label %897, label %894, !prof !196

894:                                              ; preds = %883
  %895 = call zeroext i8 @dbg_cnt(i32 noundef 37) #23
  %896 = icmp eq i8 %895, 0
  br i1 %896, label %897, label %898, !prof !196

897:                                              ; preds = %894, %883
  br label %898

898:                                              ; preds = %897, %894
  %899 = phi i8 [ 0, %897 ], [ %778, %894 ]
  %900 = icmp eq i8 %899, 0
  %901 = icmp ne ptr %884, null
  %902 = select i1 %900, i1 true, i1 %901, !prof !251
  br i1 %902, label %954, label %903, !prof !251

903:                                              ; preds = %898
  %904 = call i32 @ix86_function_type_abi(ptr noundef %221) #23
  %905 = icmp eq i32 %904, 1
  %906 = load ptr, ptr @current_function_decl, align 8, !tbaa !115
  %907 = getelementptr inbounds %struct.tree_common, ptr %906, i64 0, i32 2
  %908 = load ptr, ptr %907, align 8, !tbaa !126
  %909 = call i32 @ix86_function_type_abi(ptr noundef %908) #23
  %910 = icmp ne i32 %909, 1
  %911 = xor i1 %905, %910
  br i1 %911, label %912, label %954, !prof !252

912:                                              ; preds = %903
  %913 = call i32 @ix86_reg_parm_stack_space(ptr noundef %38) #23
  %914 = icmp eq i32 %155, %913
  br i1 %914, label %915, label %954, !prof !252

915:                                              ; preds = %912
  %916 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 46), align 8, !tbaa !253
  %917 = call zeroext i8 %916(ptr noundef %38, ptr noundef nonnull %0) #23, !prof !254
  %918 = icmp ne i8 %917, 0
  %919 = and i32 %776, 136
  %920 = icmp eq i32 %919, 0
  %921 = select i1 %918, i1 %920, i1 false, !prof !252
  br i1 %921, label %922, label %954, !prof !252

922:                                              ; preds = %915
  %923 = load ptr, ptr %214, align 8, !tbaa !126
  %924 = getelementptr inbounds %struct.tree_common, ptr %923, i64 0, i32 2
  %925 = load ptr, ptr %924, align 8, !tbaa !126
  %926 = load i64, ptr %925, align 8
  %927 = and i64 %926, 524288
  %928 = icmp eq i64 %927, 0
  br i1 %928, label %929, label %954, !prof !252

929:                                              ; preds = %922
  br i1 %39, label %934, label %930, !prof !255

930:                                              ; preds = %929
  %931 = call ptr @decl_function_context(ptr noundef %38) #23
  %932 = load ptr, ptr @current_function_decl, align 8, !tbaa !115
  %933 = icmp eq ptr %931, %932
  br i1 %933, label %954, label %934, !prof !255

934:                                              ; preds = %930, %929
  %935 = load i64, ptr %6, align 8, !tbaa !246
  %936 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !256
  %937 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !257
  %938 = sub nsw i32 %936, %937
  %939 = sext i32 %938 to i64
  %940 = icmp sgt i64 %935, %939
  br i1 %940, label %954, label %941, !prof !258

941:                                              ; preds = %934
  %942 = trunc i64 %935 to i32
  %943 = call i32 @ix86_return_pops_args(ptr noundef %38, ptr noundef %221, i32 noundef %942) #23
  %944 = load ptr, ptr @current_function_decl, align 8, !tbaa !115
  %945 = getelementptr inbounds %struct.tree_common, ptr %944, i64 0, i32 2
  %946 = load ptr, ptr %945, align 8, !tbaa !126
  %947 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !256
  %948 = call i32 @ix86_return_pops_args(ptr noundef %944, ptr noundef %946, i32 noundef %947) #23
  %949 = icmp eq i32 %943, %948
  br i1 %949, label %950, label %954, !prof !259

950:                                              ; preds = %941
  %951 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 9), align 8, !tbaa !260
  %952 = call zeroext i8 %951(ptr noundef %38) #23, !prof !268
  %953 = icmp eq i8 %952, 0
  br i1 %953, label %954, label %955, !prof !269

954:                                              ; preds = %930, %950, %941, %934, %922, %915, %912, %903, %898
  br label %955

955:                                              ; preds = %954, %950
  %956 = phi i8 [ 0, %954 ], [ %899, %950 ]
  %957 = icmp eq i8 %956, 0
  br i1 %957, label %1018, label %958, !prof !270

958:                                              ; preds = %955
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #23
  %959 = load ptr, ptr @current_function_decl, align 8, !tbaa !115
  %960 = getelementptr inbounds %struct.tree_decl_non_common, ptr %959, i64 0, i32 3
  %961 = load ptr, ptr %960, align 8, !tbaa !126
  %962 = getelementptr inbounds %struct.tree_common, ptr %961, i64 0, i32 2
  %963 = load ptr, ptr %962, align 8, !tbaa !126
  %964 = load i64, ptr %963, align 8
  %965 = trunc i64 %964 to i32
  %966 = lshr i32 %965, 21
  %967 = and i32 %966, 1
  store i32 %967, ptr %12, align 4, !tbaa !130
  %968 = getelementptr inbounds %struct.tree_decl_common, ptr %961, i64 0, i32 2
  %969 = load i64, ptr %968, align 8
  %970 = trunc i64 %969 to i32
  %971 = and i32 %970, 255
  %972 = getelementptr inbounds %struct.tree_common, ptr %221, i64 0, i32 2
  %973 = load ptr, ptr %972, align 8, !tbaa !126
  %974 = load i64, ptr %973, align 8
  %975 = trunc i64 %974 to i32
  %976 = lshr i32 %975, 21
  %977 = and i32 %976, 1
  store i32 %977, ptr %13, align 4, !tbaa !130
  %978 = and i64 %974, 65535
  %979 = icmp eq i64 %978, 14
  br i1 %979, label %980, label %982, !prof !269

980:                                              ; preds = %958
  %981 = call i32 @vector_type_mode(ptr noundef nonnull %973) #23
  br label %987

982:                                              ; preds = %958
  %983 = getelementptr inbounds %struct.tree_type, ptr %973, i64 0, i32 6
  %984 = load i32, ptr %983, align 4
  %985 = lshr i32 %984, 16
  %986 = and i32 %985, 255
  br label %987

987:                                              ; preds = %982, %980
  %988 = phi i32 [ %981, %980 ], [ %986, %982 ]
  %989 = load ptr, ptr %962, align 8, !tbaa !126
  %990 = load ptr, ptr @current_function_decl, align 8, !tbaa !115
  %991 = getelementptr inbounds %struct.tree_common, ptr %990, i64 0, i32 2
  %992 = load ptr, ptr %991, align 8, !tbaa !126
  %993 = call i32 @promote_function_mode(ptr noundef %989, i32 noundef %971, ptr noundef nonnull %12, ptr noundef %992, i32 noundef 1) #23
  %994 = load ptr, ptr %972, align 8, !tbaa !126
  %995 = call i32 @promote_function_mode(ptr noundef %994, i32 noundef %988, ptr noundef nonnull %13, ptr noundef %221, i32 noundef 1) #23
  %996 = icmp eq i32 %971, 0
  br i1 %996, label %1016, label %997, !prof !269

997:                                              ; preds = %987
  %998 = icmp eq i32 %993, %995
  br i1 %998, label %999, label %1015, !prof !259

999:                                              ; preds = %997
  %1000 = icmp eq i32 %971, %993
  %1001 = icmp eq i32 %988, %995
  %1002 = select i1 %1000, i1 %1001, i1 false, !prof !259
  br i1 %1002, label %1016, label %1003, !prof !259

1003:                                             ; preds = %999
  %1004 = load i32, ptr %12, align 4, !tbaa !130
  %1005 = load i32, ptr %13, align 4, !tbaa !130
  %1006 = icmp eq i32 %1004, %1005
  br i1 %1006, label %1007, label %1015

1007:                                             ; preds = %1003
  %1008 = and i64 %969, 255
  %1009 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1008
  %1010 = load i8, ptr %1009, align 1, !tbaa !126
  %1011 = zext i32 %988 to i64
  %1012 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %1011
  %1013 = load i8, ptr %1012, align 1, !tbaa !126
  %1014 = icmp ult i8 %1010, %1013
  br i1 %1014, label %1015, label %1016

1015:                                             ; preds = %1007, %1003, %997
  br label %1016

1016:                                             ; preds = %999, %1015, %1007, %987
  %1017 = phi i32 [ 0, %987 ], [ 0, %999 ], [ 1, %1015 ], [ 0, %1007 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  br label %1018

1018:                                             ; preds = %1016, %955
  %1019 = phi i32 [ 1, %955 ], [ %1017, %1016 ]
  %1020 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !271
  %1021 = zext i32 %1020 to i64
  %1022 = icmp ugt i64 %213, %1021
  br i1 %1022, label %1023, label %1025, !prof !272

1023:                                             ; preds = %1018
  %1024 = trunc i64 %213 to i32
  store i32 %1024, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !271
  br label %1025

1025:                                             ; preds = %1018, %1023
  %1026 = phi i64 [ %213, %1023 ], [ %1021, %1018 ]
  %1027 = lshr i64 %1026, 3
  %1028 = trunc i64 %1026 to i32
  %1029 = sext i32 %155 to i64
  %1030 = icmp sgt i32 %373, 0
  %1031 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %38, i64 0, i32 1
  %1032 = icmp sgt i32 %373, 0
  %1033 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %1034 = icmp sgt i32 %373, 0
  %1035 = icmp sgt i32 %373, 0
  %1036 = icmp ne i32 %2, 0
  %1037 = icmp sgt i32 %373, 0
  br label %1041

1038:                                             ; preds = %2588
  %1039 = add nuw nsw i32 %1045, 1
  %1040 = icmp eq i32 %1045, 0
  br i1 %1040, label %1041, label %2593, !prof !135, !llvm.loop !273

1041:                                             ; preds = %1025, %1038
  %1042 = phi ptr [ %199, %1025 ], [ %2488, %1038 ]
  %1043 = phi ptr [ null, %1025 ], [ %2590, %1038 ]
  %1044 = phi ptr [ null, %1025 ], [ %2592, %1038 ]
  %1045 = phi i32 [ %1019, %1025 ], [ %1039, %1038 ]
  %1046 = phi ptr [ %884, %1025 ], [ %1951, %1038 ]
  %1047 = phi ptr [ null, %1025 ], [ %1832, %1038 ]
  %1048 = phi ptr [ null, %1025 ], [ %1438, %1038 ]
  %1049 = phi i32 [ 0, %1025 ], [ %1437, %1038 ]
  %1050 = phi i32 [ 0, %1025 ], [ %1436, %1038 ]
  %1051 = phi i32 [ %777, %1025 ], [ %1435, %1038 ]
  %1052 = phi i32 [ %776, %1025 ], [ %1061, %1038 ]
  %1053 = icmp eq i32 %1045, 0
  %1054 = load i32, ptr @x_rtl, align 8
  %1055 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8
  %1056 = select i1 %1053, i32 %1054, i32 0, !prof !274
  %1057 = select i1 %1053, i32 %1055, i32 0, !prof !274
  %1058 = icmp ne i32 %1045, 0
  %1059 = and i32 %1052, -257
  %1060 = select i1 %1058, i32 0, i32 256, !prof !270
  %1061 = or disjoint i32 %1060, %1059
  store ptr null, ptr %11, align 8, !tbaa !115
  call void @start_sequence() #23
  %1062 = load i32, ptr @x_rtl, align 8, !tbaa !235
  %1063 = icmp sgt i32 %1062, 31
  br i1 %1063, label %1079, label %1064, !prof !196

1064:                                             ; preds = %1041
  %1065 = icmp slt i32 %1062, 1
  %1066 = and i32 %1052, 32
  %1067 = icmp eq i32 %1066, 0
  %1068 = select i1 %1065, i1 true, i1 %1067, !prof !135
  br i1 %1068, label %1069, label %1079, !prof !135

1069:                                             ; preds = %1064
  %1070 = icmp sgt i32 %1062, 0
  %1071 = load i32, ptr @flag_exceptions, align 4
  %1072 = icmp ne i32 %1071, 0
  %1073 = select i1 %1070, i1 %1072, i1 false, !prof !196
  br i1 %1073, label %1074, label %1078, !prof !196

1074:                                             ; preds = %1069
  %1075 = and i32 %1052, 64
  %1076 = icmp eq i32 %1075, 0
  %1077 = or i1 %1076, %1053
  br i1 %1077, label %1079, label %1080

1078:                                             ; preds = %1069
  br i1 %1053, label %1079, label %1080, !prof !274

1079:                                             ; preds = %1078, %1064, %1074, %1041
  call void @do_pending_stack_adjust() #23
  br label %1080

1080:                                             ; preds = %1074, %1079, %1078
  br i1 %1058, label %1081, label %1174, !prof !270

1081:                                             ; preds = %1080
  %1082 = icmp slt i32 %373, 1
  %1083 = load i32, ptr @target_flags, align 4, !tbaa !130
  %1084 = and i32 %1083, 4
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1086, label %1090, !prof !275

1086:                                             ; preds = %1081
  %1087 = call i32 @ix86_cfun_abi() #23
  %1088 = icmp ne i32 %1087, 1
  %1089 = select i1 %1088, i1 true, i1 %1082
  br i1 %1089, label %1170, label %1091, !prof !276

1090:                                             ; preds = %1081
  br i1 %1082, label %1170, label %1091, !prof !277

1091:                                             ; preds = %1090, %1086
  %1092 = call i32 @llvm.smax.i32(i32 %373, i32 1)
  %1093 = zext nneg i32 %1092 to i64
  br label %1094

1094:                                             ; preds = %1091, %1167
  %1095 = phi i64 [ 0, %1091 ], [ %1168, %1167 ]
  %1096 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1095
  %1097 = load ptr, ptr %1096, align 8, !tbaa !224
  %1098 = load i64, ptr %1097, align 8
  %1099 = and i64 %1098, 65535
  %1100 = icmp eq i64 %1099, 59
  br i1 %1100, label %1101, label %1167, !prof !278

1101:                                             ; preds = %1094
  %1102 = getelementptr inbounds %struct.tree_common, ptr %1097, i64 0, i32 2
  %1103 = load ptr, ptr %1102, align 8, !tbaa !126
  %1104 = load i64, ptr %1103, align 8
  %1105 = and i64 %1104, 262144
  %1106 = icmp eq i64 %1105, 0
  br i1 %1106, label %1108, label %1107

1107:                                             ; preds = %1101
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1308, ptr noundef nonnull @.str.1) #23
  br label %1108

1108:                                             ; preds = %1107, %1101
  %1109 = load ptr, ptr %1096, align 8, !tbaa !224
  %1110 = call ptr @expand_expr_real(ptr noundef %1109, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  %1111 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1095, i32 2
  store ptr %1110, ptr %1111, align 8, !tbaa !279
  %1112 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1095, i32 3
  store ptr %1110, ptr %1112, align 8, !tbaa !280
  %1113 = load i64, ptr %1103, align 8
  %1114 = and i64 %1113, 65535
  %1115 = icmp eq i64 %1114, 14
  br i1 %1115, label %1116, label %1118

1116:                                             ; preds = %1108
  %1117 = call i32 @vector_type_mode(ptr noundef nonnull %1103) #23
  br label %1123

1118:                                             ; preds = %1108
  %1119 = getelementptr inbounds %struct.tree_type, ptr %1103, i64 0, i32 6
  %1120 = load i32, ptr %1119, align 4
  %1121 = lshr i32 %1120, 16
  %1122 = and i32 %1121, 255
  br label %1123

1123:                                             ; preds = %1118, %1116
  %1124 = phi i32 [ %1117, %1116 ], [ %1122, %1118 ]
  %1125 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1095, i32 1
  %1126 = load i32, ptr %1125, align 8, !tbaa !237
  %1127 = icmp eq i32 %1124, %1126
  br i1 %1127, label %1167, label %1128

1128:                                             ; preds = %1123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %1129 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1095, i32 7
  %1130 = load i32, ptr %1129, align 8, !tbaa !236
  store i32 %1130, ptr %4, align 4, !tbaa !130
  %1131 = load ptr, ptr %1111, align 8, !tbaa !279
  %1132 = call ptr @convert_modes(i32 noundef %1126, i32 noundef %1124, ptr noundef %1131, i32 noundef %1130) #23
  store ptr %1132, ptr %1111, align 8, !tbaa !279
  %1133 = load i32, ptr %1132, align 8
  %1134 = and i32 %1133, 65535
  %1135 = icmp eq i32 %1134, 37
  br i1 %1135, label %1136, label %1166

1136:                                             ; preds = %1128
  %1137 = load i32, ptr %1125, align 8, !tbaa !237
  %1138 = zext i32 %1137 to i64
  %1139 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1138
  %1140 = load i8, ptr %1139, align 1, !tbaa !126
  %1141 = icmp eq i8 %1140, 2
  br i1 %1141, label %1142, label %1166

1142:                                             ; preds = %1136
  %1143 = call i32 @promote_mode(ptr noundef nonnull %1103, i32 noundef %1124, ptr noundef nonnull %4) #23
  %1144 = load i32, ptr %1125, align 8, !tbaa !237
  %1145 = icmp eq i32 %1143, %1144
  br i1 %1145, label %1166, label %1146

1146:                                             ; preds = %1142
  %1147 = load ptr, ptr %1111, align 8, !tbaa !279
  %1148 = call ptr @gen_lowpart_SUBREG(i32 noundef %1124, ptr noundef %1147) #23
  store ptr %1148, ptr %1112, align 8, !tbaa !280
  %1149 = load i32, ptr %1148, align 8
  %1150 = or i32 %1149, 268435456
  store i32 %1150, ptr %1148, align 8
  %1151 = load ptr, ptr %1112, align 8, !tbaa !280
  %1152 = load i32, ptr %1129, align 8, !tbaa !236
  %1153 = icmp slt i32 %1152, 0
  %1154 = load i32, ptr %1151, align 8
  br i1 %1153, label %1155, label %1157

1155:                                             ; preds = %1146
  %1156 = or i32 %1154, 134217728
  br label %1164

1157:                                             ; preds = %1146
  %1158 = and i32 %1154, -134217729
  store i32 %1158, ptr %1151, align 8
  %1159 = load i32, ptr %1129, align 8, !tbaa !236
  %1160 = shl i32 %1159, 26
  %1161 = and i32 %1160, 67108864
  %1162 = and i32 %1154, -201326593
  %1163 = or disjoint i32 %1161, %1162
  br label %1164

1164:                                             ; preds = %1157, %1155
  %1165 = phi i32 [ %1163, %1157 ], [ %1156, %1155 ]
  store i32 %1165, ptr %1151, align 8
  br label %1166

1166:                                             ; preds = %1164, %1142, %1136, %1128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  br label %1167

1167:                                             ; preds = %1166, %1123, %1094
  %1168 = add nuw nsw i64 %1095, 1
  %1169 = icmp eq i64 %1168, %1093
  br i1 %1169, label %1170, label %1094, !prof !281, !llvm.loop !282

1170:                                             ; preds = %1167, %1086, %1090
  %1171 = and i32 %1052, 16
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1174, label %1173, !prof !283

1173:                                             ; preds = %1170
  call void @start_sequence() #23
  br label %1174

1174:                                             ; preds = %1080, %1173, %1170
  %1175 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8
  %1176 = icmp ne ptr %1175, null
  %1177 = select i1 %1053, i1 %1176, i1 false, !prof !274
  br i1 %1177, label %1178, label %1179, !prof !196

1178:                                             ; preds = %1174
  call void @stack_protect_epilogue() #23
  br label %1179

1179:                                             ; preds = %1178, %1174
  %1180 = load i64, ptr %6, align 8, !tbaa.struct !284
  %1181 = load ptr, ptr %407, align 8, !tbaa.struct !285
  %1182 = select i1 %1053, i32 0, i32 %1028, !prof !274
  %1183 = load i32, ptr @target_flags, align 4, !tbaa !130
  %1184 = and i32 %1183, 4
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1186, label %1191, !prof !196

1186:                                             ; preds = %1179
  %1187 = call i32 @ix86_cfun_abi() #23
  %1188 = icmp eq i32 %1187, 1
  %1189 = icmp sgt i32 %1182, 32
  %1190 = and i1 %1189, %1188
  br i1 %1190, label %1193, label %1194

1191:                                             ; preds = %1179
  %1192 = icmp sgt i32 %1182, 32
  br i1 %1192, label %1193, label %1194, !prof !270

1193:                                             ; preds = %1191, %1186
  br label %1194

1194:                                             ; preds = %1191, %1193, %1186
  %1195 = phi i32 [ 32, %1193 ], [ %1182, %1186 ], [ %1182, %1191 ]
  %1196 = icmp eq ptr %1181, null
  br i1 %1196, label %1228, label %1197, !prof !135

1197:                                             ; preds = %1194
  %1198 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !115
  %1199 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1198, ptr noundef nonnull %1181) #23
  %1200 = call ptr @size_int_kind(i64 noundef %1180, i32 noundef 1) #23
  %1201 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %1199, ptr noundef %1200) #23
  %1202 = sdiv i32 %1195, 8
  %1203 = icmp sgt i32 %1195, 15
  br i1 %1203, label %1204, label %1212

1204:                                             ; preds = %1197
  %1205 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %1206 = add nsw i32 %1202, -1
  %1207 = and i32 %1205, %1206
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1210, label %1209

1209:                                             ; preds = %1204
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1231, ptr noundef nonnull @.str.1) #23
  br label %1210

1210:                                             ; preds = %1209, %1204
  %1211 = call ptr @round_up_loc(i32 noundef 0, ptr noundef %1201, i32 noundef %1202) #23
  br label %1212

1212:                                             ; preds = %1210, %1197
  %1213 = phi ptr [ %1211, %1210 ], [ %1201, %1197 ]
  br i1 %163, label %1214, label %1251

1214:                                             ; preds = %1212
  %1215 = zext nneg i32 %155 to i64
  %1216 = call ptr @size_int_kind(i64 noundef %1215, i32 noundef 1) #23
  %1217 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 81, ptr noundef %1213, ptr noundef %1216) #23
  br i1 %39, label %1221, label %1218

1218:                                             ; preds = %1214
  %1219 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %1220 = load ptr, ptr %1219, align 8, !tbaa !126
  br label %1221

1221:                                             ; preds = %1218, %1214
  %1222 = phi ptr [ %1220, %1218 ], [ %50, %1214 ]
  %1223 = call i32 @ix86_function_type_abi(ptr noundef %1222) #23
  %1224 = icmp eq i32 %1223, 1
  br i1 %1224, label %1251, label %1225

1225:                                             ; preds = %1221
  %1226 = call ptr @size_int_kind(i64 noundef %1215, i32 noundef 1) #23
  %1227 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %1217, ptr noundef %1226) #23
  br label %1251

1228:                                             ; preds = %1194
  %1229 = sdiv i32 %1195, 8
  %1230 = call i32 @llvm.smax.i32(i32 %1229, i32 1)
  %1231 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %1232 = sext i32 %1231 to i64
  %1233 = zext nneg i32 %1230 to i64
  %1234 = add i64 %1180, %1233
  %1235 = add i64 %1234, %1232
  %1236 = freeze i64 %1235
  %1237 = add i64 %1236, -1
  %1238 = srem i64 %1237, %1233
  %1239 = add nsw i64 %1238, %1232
  %1240 = sub i64 %1237, %1239
  %1241 = call i64 @llvm.smax.i64(i64 %1240, i64 %1029)
  br i1 %39, label %1245, label %1242, !prof !196

1242:                                             ; preds = %1228
  %1243 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %1244 = load ptr, ptr %1243, align 8, !tbaa !126
  br label %1245

1245:                                             ; preds = %1242, %1228
  %1246 = phi ptr [ %1244, %1242 ], [ %50, %1228 ]
  %1247 = call i32 @ix86_function_type_abi(ptr noundef %1246) #23
  %1248 = icmp eq i32 %1247, 1
  %1249 = select i1 %1248, i64 0, i64 %1029, !prof !196
  %1250 = sub nsw i64 %1241, %1249
  br label %1251

1251:                                             ; preds = %1245, %1212, %1221, %1225
  %1252 = phi i64 [ 0, %1221 ], [ 0, %1225 ], [ 0, %1212 ], [ %1250, %1245 ]
  %1253 = phi ptr [ %1217, %1221 ], [ %1227, %1225 ], [ %1213, %1212 ], [ %1181, %1245 ]
  %1254 = trunc i64 %1180 to i32
  %1255 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %1256 = load i32, ptr @x_rtl, align 8, !tbaa !235
  %1257 = sub nsw i32 %1255, %1256
  br i1 %1053, label %1258, label %1266, !prof !274

1258:                                             ; preds = %1251
  %1259 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !287
  %1260 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !257
  %1261 = sext i32 %1260 to i64
  %1262 = call ptr @plus_constant(ptr noundef %1259, i64 noundef %1261) #23
  %1263 = load i64, ptr %6, align 8, !tbaa !246
  %1264 = trunc i64 %1263 to i32
  %1265 = call ptr @sbitmap_alloc(i32 noundef %1264) #23
  store ptr %1265, ptr @stored_args_map, align 8, !tbaa !115
  call void @sbitmap_zero(ptr noundef %1265) #23
  br label %1371

1266:                                             ; preds = %1251
  %1267 = icmp eq ptr %1253, null
  br i1 %1267, label %1285, label %1268, !prof !283

1268:                                             ; preds = %1266
  %1269 = load ptr, ptr %10, align 8, !tbaa !115
  %1270 = icmp eq ptr %1269, null
  br i1 %1270, label %1271, label %1275

1271:                                             ; preds = %1268
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %10, ptr noundef null) #23
  %1272 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %1273 = load i32, ptr @x_rtl, align 8, !tbaa !235
  store i32 0, ptr @x_rtl, align 8, !tbaa !235
  %1274 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !130
  store i32 0, ptr @stack_arg_under_construction, align 4, !tbaa !130
  br label %1275

1275:                                             ; preds = %1268, %1271
  %1276 = phi i32 [ %1273, %1271 ], [ %1051, %1268 ]
  %1277 = phi i32 [ %1272, %1271 ], [ %1050, %1268 ]
  %1278 = phi i32 [ %1274, %1271 ], [ %1049, %1268 ]
  %1279 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !115
  %1280 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1279, ptr noundef nonnull %1253) #23
  %1281 = call ptr @size_int_kind(i64 noundef %1252, i32 noundef 1) #23
  %1282 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %1280, ptr noundef %1281) #23
  %1283 = call ptr @expand_expr_real(ptr noundef %1282, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  %1284 = call ptr @push_block(ptr noundef %1283, i32 noundef 0, i32 noundef 0) #23
  br label %1371

1285:                                             ; preds = %1266
  %1286 = trunc i64 %1252 to i32
  %1287 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !288
  %1288 = icmp slt i32 %1287, %1286
  br i1 %1288, label %1289, label %1290, !prof !289

1289:                                             ; preds = %1285
  store i32 %1286, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !288
  br label %1290

1290:                                             ; preds = %1289, %1285
  %1291 = icmp eq i32 %859, 0
  br i1 %1291, label %1371, label %1292, !prof !275

1292:                                             ; preds = %1290
  %1293 = load i32, ptr @target_flags, align 4, !tbaa !130
  %1294 = and i32 %1293, 4
  %1295 = icmp eq i32 %1294, 0
  br i1 %1295, label %1296, label %1299, !prof !275

1296:                                             ; preds = %1292
  %1297 = call i32 @ix86_cfun_abi() #23
  %1298 = icmp eq i32 %1297, 1
  br i1 %1298, label %1299, label %1329

1299:                                             ; preds = %1296, %1292
  br i1 %39, label %1303, label %1300, !prof !275

1300:                                             ; preds = %1299
  %1301 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %1302 = load ptr, ptr %1301, align 8, !tbaa !126
  br label %1303

1303:                                             ; preds = %1299, %1300
  %1304 = phi ptr [ %1302, %1300 ], [ %50, %1299 ]
  %1305 = call i32 @ix86_function_type_abi(ptr noundef %1304) #23
  %1306 = icmp eq i32 %1305, 1
  %1307 = select i1 %1306, i32 0, i32 %155, !prof !275
  %1308 = add nsw i32 %1307, %1286
  %1309 = call i32 @llvm.smax.i32(i32 %28, i32 %1308)
  store i32 %1309, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  %1310 = icmp eq ptr %1048, null
  br i1 %1310, label %1312, label %1311, !prof !283

1311:                                             ; preds = %1303
  call void @free(ptr noundef %1048)
  br label %1312

1312:                                             ; preds = %1311, %1303
  %1313 = icmp eq i32 %28, 0
  %1314 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  %1315 = sext i32 %1314 to i64
  %1316 = call ptr @xmalloc(i64 noundef %1315) #23
  store ptr %1316, ptr @stack_usage_map, align 8, !tbaa !115
  br i1 %1313, label %1319, label %1317, !prof !283

1317:                                             ; preds = %1312
  %1318 = sext i32 %28 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1316, ptr align 1 %29, i64 %1318, i1 false)
  br label %1319

1319:                                             ; preds = %1317, %1312
  %1320 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  %1321 = icmp eq i32 %28, %1320
  br i1 %1321, label %1327, label %1322, !prof !275

1322:                                             ; preds = %1319
  %1323 = sext i32 %28 to i64
  %1324 = getelementptr inbounds i8, ptr %1316, i64 %1323
  %1325 = sub nsw i32 %1320, %28
  %1326 = sext i32 %1325 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %1324, i8 0, i64 %1326, i1 false), !prof !290
  br label %1327

1327:                                             ; preds = %1322, %1319
  %1328 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !115
  br label %1371

1329:                                             ; preds = %1296
  %1330 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1332, label %1358

1332:                                             ; preds = %1329
  %1333 = trunc i64 %1027 to i32
  %1334 = icmp ult i32 %1333, 2
  %1335 = and i64 %1027, 4294967295
  %1336 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %1337 = add nsw i32 %1336, %1254
  %1338 = urem i32 %1337, %1333
  %1339 = zext nneg i32 %1338 to i64
  %1340 = load i32, ptr @x_rtl, align 8, !tbaa !235
  %1341 = urem i32 %1340, %1333
  %1342 = zext nneg i32 %1341 to i64
  %1343 = icmp eq i32 %1338, %1341
  %1344 = select i1 %1334, i1 true, i1 %1343
  %1345 = sub nsw i64 %1335, %1339
  %1346 = add nsw i64 %1345, %1342
  %1347 = select i1 %1344, i64 0, i64 %1346
  %1348 = shl i64 %1180, 32
  %1349 = ashr exact i64 %1348, 32
  %1350 = add nsw i64 %1347, %1349
  %1351 = trunc i64 %1347 to i32
  %1352 = sub i32 %1351, %1340
  %1353 = add i32 %1352, %1254
  %1354 = icmp slt i32 %1353, 0
  br i1 %1354, label %1355, label %1357

1355:                                             ; preds = %1332
  %1356 = sub nsw i32 0, %1353
  store i32 %1356, ptr @x_rtl, align 8, !tbaa !235
  call void @do_pending_stack_adjust() #23
  br label %1358

1357:                                             ; preds = %1332
  store i32 0, ptr @x_rtl, align 8, !tbaa !235
  br label %1358

1358:                                             ; preds = %1355, %1357, %1329
  %1359 = phi i64 [ %1350, %1355 ], [ %1350, %1357 ], [ %1252, %1329 ]
  %1360 = phi i32 [ 0, %1355 ], [ %1353, %1357 ], [ %1286, %1329 ]
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1362, label %1364

1362:                                             ; preds = %1358
  %1363 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !115
  br label %1368

1364:                                             ; preds = %1358
  %1365 = sext i32 %1360 to i64
  %1366 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1365) #23
  %1367 = call ptr @push_block(ptr noundef %1366, i32 noundef 0, i32 noundef 0) #23
  br label %1368

1368:                                             ; preds = %1364, %1362
  %1369 = phi ptr [ %1363, %1362 ], [ %1367, %1364 ]
  %1370 = call ptr @copy_to_reg(ptr noundef %1369) #23
  br label %1371

1371:                                             ; preds = %1290, %1368, %1327, %1275, %1258
  %1372 = phi i64 [ %1252, %1258 ], [ %1252, %1290 ], [ %1252, %1327 ], [ %1359, %1368 ], [ %1252, %1275 ]
  %1373 = phi i32 [ %1051, %1258 ], [ %1051, %1290 ], [ %1051, %1327 ], [ %1051, %1368 ], [ %1276, %1275 ]
  %1374 = phi i32 [ %1050, %1258 ], [ %1050, %1290 ], [ %1050, %1327 ], [ %1050, %1368 ], [ %1277, %1275 ]
  %1375 = phi i32 [ %1049, %1258 ], [ %1049, %1290 ], [ %1049, %1327 ], [ %1049, %1368 ], [ %1278, %1275 ]
  %1376 = phi ptr [ %1048, %1258 ], [ %1048, %1290 ], [ %1316, %1327 ], [ %1048, %1368 ], [ %1048, %1275 ]
  %1377 = phi ptr [ %1262, %1258 ], [ null, %1290 ], [ %1328, %1327 ], [ %1370, %1368 ], [ %1284, %1275 ]
  %1378 = load i32, ptr @target_flags, align 4, !tbaa !130
  %1379 = and i32 %1378, 4
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1381, label %1384, !prof !196

1381:                                             ; preds = %1371
  %1382 = call i32 @ix86_cfun_abi() #23
  %1383 = icmp eq i32 %1382, 1
  br i1 %1383, label %1384, label %1434

1384:                                             ; preds = %1381, %1371
  %1385 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !130
  %1386 = icmp eq i32 %1385, 0
  br i1 %1386, label %1417, label %1387, !prof !135

1387:                                             ; preds = %1384
  br i1 %39, label %1391, label %1388

1388:                                             ; preds = %1387
  %1389 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %1390 = load ptr, ptr %1389, align 8, !tbaa !126
  br label %1391

1391:                                             ; preds = %1387, %1388
  %1392 = phi ptr [ %1390, %1388 ], [ %50, %1387 ]
  %1393 = call i32 @ix86_function_type_abi(ptr noundef %1392) #23
  %1394 = icmp eq i32 %1393, 1
  %1395 = select i1 %1394, i32 0, i32 %155
  %1396 = sext i32 %1395 to i64
  %1397 = add nsw i64 %1372, %1396
  %1398 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1397) #23
  %1399 = load ptr, ptr %10, align 8, !tbaa !115
  %1400 = icmp eq ptr %1399, null
  br i1 %1400, label %1401, label %1411

1401:                                             ; preds = %1391
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %10, ptr noundef null) #23
  %1402 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %1403 = load i32, ptr @x_rtl, align 8, !tbaa !235
  store i32 0, ptr @x_rtl, align 8, !tbaa !235
  %1404 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !130
  store i32 0, ptr @stack_arg_under_construction, align 4, !tbaa !130
  %1405 = icmp eq ptr %1376, null
  br i1 %1405, label %1407, label %1406

1406:                                             ; preds = %1401
  call void @free(ptr noundef %1376)
  br label %1407

1407:                                             ; preds = %1406, %1401
  %1408 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  %1409 = sext i32 %1408 to i64
  %1410 = call ptr @xcalloc(i64 noundef %1409, i64 noundef 1) #23
  store ptr %1410, ptr @stack_usage_map, align 8, !tbaa !115
  store i32 0, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  br label %1411

1411:                                             ; preds = %1407, %1391
  %1412 = phi i32 [ %1403, %1407 ], [ %1373, %1391 ]
  %1413 = phi i32 [ %1402, %1407 ], [ %1374, %1391 ]
  %1414 = phi i32 [ %1404, %1407 ], [ %1375, %1391 ]
  %1415 = phi ptr [ %1410, %1407 ], [ %1376, %1391 ]
  %1416 = call ptr @allocate_dynamic_stack_space(ptr noundef %1398, ptr noundef null, i32 noundef 8) #23
  br label %1417

1417:                                             ; preds = %1411, %1384
  %1418 = phi i32 [ %1373, %1384 ], [ %1412, %1411 ]
  %1419 = phi i32 [ %1374, %1384 ], [ %1413, %1411 ]
  %1420 = phi i32 [ %1375, %1384 ], [ %1414, %1411 ]
  %1421 = phi ptr [ %1376, %1384 ], [ %1415, %1411 ]
  br i1 %1030, label %1422, label %1434, !prof !229

1422:                                             ; preds = %1417
  %1423 = zext nneg i32 %373 to i64
  br label %1427

1424:                                             ; preds = %1427
  %1425 = add nuw nsw i64 %1428, 1
  %1426 = icmp eq i64 %1425, %1423
  br i1 %1426, label %1434, label %1427, !prof !232, !llvm.loop !291

1427:                                             ; preds = %1422, %1424
  %1428 = phi i64 [ 0, %1422 ], [ %1425, %1424 ]
  %1429 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1428, i32 9
  %1430 = load i32, ptr %1429, align 8, !tbaa !244
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1424, label %1432, !prof !234

1432:                                             ; preds = %1427
  %1433 = call ptr @copy_addr_to_reg(ptr noundef %1377) #23
  br label %1434

1434:                                             ; preds = %1424, %1417, %1432, %1381
  %1435 = phi i32 [ %1418, %1432 ], [ %1373, %1381 ], [ %1418, %1417 ], [ %1418, %1424 ]
  %1436 = phi i32 [ %1419, %1432 ], [ %1374, %1381 ], [ %1419, %1417 ], [ %1419, %1424 ]
  %1437 = phi i32 [ %1420, %1432 ], [ %1375, %1381 ], [ %1420, %1417 ], [ %1420, %1424 ]
  %1438 = phi ptr [ %1421, %1432 ], [ %1376, %1381 ], [ %1421, %1417 ], [ %1421, %1424 ]
  %1439 = phi ptr [ %1433, %1432 ], [ %1377, %1381 ], [ %1377, %1417 ], [ %1377, %1424 ]
  %1440 = icmp eq ptr %1439, null
  br i1 %1440, label %1600, label %1441, !prof !196

1441:                                             ; preds = %1434
  %1442 = load i32, ptr %1439, align 8
  %1443 = and i32 %1442, 65535
  %1444 = icmp eq i32 %1443, 49
  br i1 %1444, label %1445, label %1454, !prof !196

1445:                                             ; preds = %1441
  %1446 = getelementptr inbounds %struct.rtx_def, ptr %1439, i64 0, i32 1
  %1447 = load ptr, ptr %1446, align 8, !tbaa !126
  %1448 = getelementptr inbounds %struct.rtx_def, ptr %1439, i64 0, i32 1, i32 0, i32 0, i64 1
  %1449 = load ptr, ptr %1448, align 8, !tbaa !126
  %1450 = getelementptr inbounds %struct.rtx_def, ptr %1449, i64 0, i32 1
  %1451 = load i64, ptr %1450, align 8, !tbaa !126
  %1452 = shl i64 %1451, 32
  %1453 = ashr exact i64 %1452, 32
  br label %1454

1454:                                             ; preds = %1445, %1441
  %1455 = phi i64 [ %1453, %1445 ], [ 0, %1441 ]
  %1456 = phi ptr [ %1447, %1445 ], [ %1439, %1441 ]
  %1457 = icmp sgt i32 %373, 0
  br i1 %1457, label %1458, label %1631, !prof !229

1458:                                             ; preds = %1454
  %1459 = zext nneg i32 %373 to i64
  br label %1460

1460:                                             ; preds = %1458, %1597
  %1461 = phi i64 [ 0, %1458 ], [ %1598, %1597 ]
  %1462 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461
  %1463 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 10
  %1464 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 10, i32 1
  %1465 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 10, i32 1, i32 1
  %1466 = load ptr, ptr %1465, align 8, !tbaa !292
  %1467 = icmp eq ptr %1466, null
  br i1 %1467, label %1468, label %1471, !prof !234

1468:                                             ; preds = %1460
  %1469 = load i64, ptr %1464, align 8, !tbaa !293
  %1470 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1469) #23
  br label %1478

1471:                                             ; preds = %1460
  %1472 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !115
  %1473 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1472, ptr noundef nonnull %1466) #23
  %1474 = load i64, ptr %1464, align 8, !tbaa !293
  %1475 = call ptr @size_int_kind(i64 noundef %1474, i32 noundef 1) #23
  %1476 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %1473, ptr noundef %1475) #23
  %1477 = call ptr @expand_expr_real(ptr noundef %1476, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  br label %1478

1478:                                             ; preds = %1471, %1468
  %1479 = phi ptr [ %1470, %1468 ], [ %1477, %1471 ]
  %1480 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 10, i32 2
  %1481 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 10, i32 2, i32 1
  %1482 = load ptr, ptr %1481, align 8, !tbaa !294
  %1483 = icmp eq ptr %1482, null
  br i1 %1483, label %1484, label %1487, !prof !234

1484:                                             ; preds = %1478
  %1485 = load i64, ptr %1480, align 8, !tbaa !295
  %1486 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1485) #23
  br label %1494

1487:                                             ; preds = %1478
  %1488 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !115
  %1489 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1488, ptr noundef nonnull %1482) #23
  %1490 = load i64, ptr %1480, align 8, !tbaa !295
  %1491 = call ptr @size_int_kind(i64 noundef %1490, i32 noundef 1) #23
  %1492 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %1489, ptr noundef %1491) #23
  %1493 = call ptr @expand_expr_real(ptr noundef %1492, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  br label %1494

1494:                                             ; preds = %1487, %1484
  %1495 = phi ptr [ %1486, %1484 ], [ %1493, %1487 ]
  %1496 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 9
  %1497 = load i32, ptr %1496, align 8, !tbaa !244
  %1498 = icmp eq i32 %1497, 0
  br i1 %1498, label %1499, label %1507, !prof !234

1499:                                             ; preds = %1494
  %1500 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 4
  %1501 = load ptr, ptr %1500, align 8, !tbaa !238
  %1502 = icmp eq ptr %1501, null
  br i1 %1502, label %1507, label %1503, !prof !234

1503:                                             ; preds = %1499
  %1504 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 8
  %1505 = load i32, ptr %1504, align 4, !tbaa !241
  %1506 = icmp eq i32 %1505, 0
  br i1 %1506, label %1597, label %1507

1507:                                             ; preds = %1503, %1499, %1494
  %1508 = load i32, ptr %1479, align 8
  %1509 = and i32 %1508, 65535
  %1510 = icmp eq i32 %1509, 30
  br i1 %1510, label %1511, label %1515, !prof !234

1511:                                             ; preds = %1507
  %1512 = getelementptr inbounds %struct.rtx_def, ptr %1479, i64 0, i32 1
  %1513 = load i64, ptr %1512, align 8, !tbaa !126
  %1514 = call ptr @plus_constant(ptr noundef %1456, i64 noundef %1513) #23
  br label %1517

1515:                                             ; preds = %1507
  %1516 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %1456, ptr noundef nonnull %1479) #23
  br label %1517

1517:                                             ; preds = %1515, %1511
  %1518 = phi ptr [ %1514, %1511 ], [ %1516, %1515 ]
  %1519 = call ptr @plus_constant(ptr noundef %1518, i64 noundef %1455) #23
  %1520 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 8
  %1521 = load i32, ptr %1520, align 4, !tbaa !241
  %1522 = icmp eq i32 %1521, 0
  br i1 %1522, label %1532, label %1523, !prof !234

1523:                                             ; preds = %1517
  %1524 = load i64, ptr %1463, align 8, !tbaa !245
  %1525 = trunc i64 %1524 to i32
  %1526 = shl i32 %1525, 3
  %1527 = call i32 @mode_for_size(i32 noundef %1526, i32 noundef 2, i32 noundef 1) #23
  %1528 = call ptr @gen_rtx_MEM(i32 noundef %1527, ptr noundef %1519) #23
  %1529 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 11
  store ptr %1528, ptr %1529, align 8, !tbaa !296
  %1530 = and i64 %1524, 4294967295
  %1531 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1530) #23
  call void @set_mem_size(ptr noundef %1528, ptr noundef %1531) #23
  br label %1540

1532:                                             ; preds = %1517
  %1533 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 1
  %1534 = load i32, ptr %1533, align 8, !tbaa !237
  %1535 = call ptr @gen_rtx_MEM(i32 noundef %1534, ptr noundef %1519) #23
  %1536 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 11
  store ptr %1535, ptr %1536, align 8, !tbaa !296
  %1537 = load ptr, ptr %1462, align 8, !tbaa !224
  %1538 = getelementptr inbounds %struct.tree_common, ptr %1537, i64 0, i32 2
  %1539 = load ptr, ptr %1538, align 8, !tbaa !126
  call void @set_mem_attributes(ptr noundef %1535, ptr noundef %1539, i32 noundef 1) #23
  br label %1540

1540:                                             ; preds = %1532, %1523
  %1541 = phi i64 [ %1524, %1523 ], [ 0, %1532 ]
  %1542 = phi i32 [ %1527, %1523 ], [ 0, %1532 ]
  %1543 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 10, i32 5
  %1544 = load i32, ptr %1543, align 4, !tbaa !297
  %1545 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 10, i32 4
  %1546 = load i32, ptr %1545, align 8, !tbaa !298
  %1547 = icmp eq i32 %1546, 2
  br i1 %1547, label %1548, label %1560, !prof !230

1548:                                             ; preds = %1540
  %1549 = load i32, ptr %1479, align 8
  %1550 = and i32 %1549, 65535
  %1551 = icmp eq i32 %1550, 30
  br i1 %1551, label %1552, label %1560

1552:                                             ; preds = %1548
  %1553 = getelementptr inbounds %struct.rtx_def, ptr %1479, i64 0, i32 1
  %1554 = load i64, ptr %1553, align 8, !tbaa !126
  %1555 = trunc i64 %1554 to i32
  %1556 = shl i32 %1555, 3
  %1557 = or i32 %1556, %1544
  %1558 = sub i32 0, %1557
  %1559 = and i32 %1557, %1558
  br label %1560

1560:                                             ; preds = %1552, %1548, %1540
  %1561 = phi i32 [ %1559, %1552 ], [ 8, %1548 ], [ %1544, %1540 ]
  %1562 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 11
  %1563 = load ptr, ptr %1562, align 8, !tbaa !296
  call void @set_mem_align(ptr noundef %1563, i32 noundef %1561) #23
  %1564 = load i32, ptr %1495, align 8
  %1565 = and i32 %1564, 65535
  %1566 = icmp eq i32 %1565, 30
  br i1 %1566, label %1567, label %1571, !prof !234

1567:                                             ; preds = %1560
  %1568 = getelementptr inbounds %struct.rtx_def, ptr %1495, i64 0, i32 1
  %1569 = load i64, ptr %1568, align 8, !tbaa !126
  %1570 = call ptr @plus_constant(ptr noundef %1456, i64 noundef %1569) #23
  br label %1573

1571:                                             ; preds = %1560
  %1572 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %1456, ptr noundef nonnull %1495) #23
  br label %1573

1573:                                             ; preds = %1571, %1567
  %1574 = phi ptr [ %1570, %1567 ], [ %1572, %1571 ]
  %1575 = call ptr @plus_constant(ptr noundef %1574, i64 noundef %1455) #23
  %1576 = load i32, ptr %1520, align 4, !tbaa !241
  %1577 = icmp eq i32 %1576, 0
  br i1 %1577, label %1583, label %1578, !prof !234

1578:                                             ; preds = %1573
  %1579 = call ptr @gen_rtx_MEM(i32 noundef %1542, ptr noundef %1575) #23
  %1580 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 12
  store ptr %1579, ptr %1580, align 8, !tbaa !299
  %1581 = and i64 %1541, 4294967295
  %1582 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1581) #23
  call void @set_mem_size(ptr noundef %1579, ptr noundef %1582) #23
  br label %1591

1583:                                             ; preds = %1573
  %1584 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 1
  %1585 = load i32, ptr %1584, align 8, !tbaa !237
  %1586 = call ptr @gen_rtx_MEM(i32 noundef %1585, ptr noundef %1575) #23
  %1587 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 12
  store ptr %1586, ptr %1587, align 8, !tbaa !299
  %1588 = load ptr, ptr %1462, align 8, !tbaa !224
  %1589 = getelementptr inbounds %struct.tree_common, ptr %1588, i64 0, i32 2
  %1590 = load ptr, ptr %1589, align 8, !tbaa !126
  call void @set_mem_attributes(ptr noundef %1586, ptr noundef %1590, i32 noundef 1) #23
  br label %1591

1591:                                             ; preds = %1583, %1578
  %1592 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1461, i32 12
  %1593 = load ptr, ptr %1592, align 8, !tbaa !299
  %1594 = load i32, ptr %1543, align 4, !tbaa !297
  call void @set_mem_align(ptr noundef %1593, i32 noundef %1594) #23
  %1595 = load ptr, ptr %1562, align 8, !tbaa !296
  call void @set_mem_alias_set(ptr noundef %1595, i32 noundef 0) #23
  %1596 = load ptr, ptr %1592, align 8, !tbaa !299
  call void @set_mem_alias_set(ptr noundef %1596, i32 noundef 0) #23
  br label %1597

1597:                                             ; preds = %1591, %1503
  %1598 = add nuw nsw i64 %1461, 1
  %1599 = icmp eq i64 %1598, %1459
  br i1 %1599, label %1631, label %1460, !prof !232, !llvm.loop !300

1600:                                             ; preds = %1434
  %1601 = shl i64 %1180, 32
  %1602 = ashr exact i64 %1601, 32
  %1603 = icmp eq i64 %1372, %1602
  br i1 %1603, label %1631, label %1604

1604:                                             ; preds = %1600
  %1605 = load i32, ptr @x_rtl, align 8, !tbaa !235
  %1606 = icmp eq i32 %1605, 0
  %1607 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4
  %1608 = icmp ne i32 %1607, 0
  %1609 = select i1 %1606, i1 true, i1 %1608
  br i1 %1609, label %1628, label %1610

1610:                                             ; preds = %1604
  %1611 = trunc i64 %1027 to i32
  %1612 = icmp ult i32 %1611, 2
  %1613 = and i64 %1027, 4294967295
  %1614 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %1615 = add nsw i32 %1614, %1254
  %1616 = urem i32 %1615, %1611
  %1617 = zext nneg i32 %1616 to i64
  %1618 = urem i32 %1605, %1611
  %1619 = zext nneg i32 %1618 to i64
  %1620 = icmp eq i32 %1616, %1618
  %1621 = select i1 %1612, i1 true, i1 %1620
  %1622 = sub nsw i64 %1613, %1617
  %1623 = add nsw i64 %1622, %1619
  %1624 = select i1 %1621, i64 0, i64 %1623
  %1625 = add nsw i64 %1624, %1602
  %1626 = trunc i64 %1624 to i32
  %1627 = sub i32 %1605, %1626
  store i32 %1627, ptr @x_rtl, align 8, !tbaa !235
  call void @do_pending_stack_adjust() #23
  br label %1631

1628:                                             ; preds = %1604
  %1629 = sub nsw i64 %1372, %1602
  %1630 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1629) #23
  call void @anti_adjust_stack(ptr noundef %1630) #23
  br label %1631

1631:                                             ; preds = %1597, %1454, %1610, %1628, %1600
  %1632 = phi i64 [ %1372, %1600 ], [ %1372, %1628 ], [ %1625, %1610 ], [ %1372, %1454 ], [ %1372, %1597 ]
  %1633 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  %1634 = add nsw i32 %1633, 1
  store i32 %1634, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  br i1 %39, label %1654, label %1635, !prof !196

1635:                                             ; preds = %1631
  %1636 = load i64, ptr %38, align 8
  %1637 = and i64 %1636, 16777216
  %1638 = icmp ne i64 %1637, 0
  %1639 = load ptr, ptr @current_function_decl, align 8
  %1640 = icmp eq ptr %1639, %38
  %1641 = select i1 %1638, i1 true, i1 %1640, !prof !135
  br i1 %1641, label %1645, label %1642, !prof !135

1642:                                             ; preds = %1635
  call void @assemble_external(ptr noundef nonnull %38) #23
  %1643 = load i64, ptr %38, align 8
  %1644 = or i64 %1643, 16777216
  store i64 %1644, ptr %38, align 8
  br label %1645

1645:                                             ; preds = %1642, %1635
  %1646 = load ptr, ptr %1031, align 8, !tbaa !126
  %1647 = icmp eq ptr %1646, null
  br i1 %1647, label %1648, label %1650, !prof !301

1648:                                             ; preds = %1645
  call void @make_decl_rtl(ptr noundef nonnull %38) #23
  %1649 = load ptr, ptr %1031, align 8, !tbaa !126
  br label %1650

1650:                                             ; preds = %1648, %1645
  %1651 = phi ptr [ %1649, %1648 ], [ %1646, %1645 ]
  %1652 = getelementptr inbounds %struct.rtx_def, ptr %1651, i64 0, i32 1
  %1653 = load ptr, ptr %1652, align 8, !tbaa !126
  br label %1656

1654:                                             ; preds = %1631
  call void @push_temp_slots() #23
  %1655 = call ptr @expand_expr_real(ptr noundef %33, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  call void @pop_temp_slots() #23
  br label %1656

1656:                                             ; preds = %1650, %1654
  %1657 = phi ptr [ %1653, %1650 ], [ %1655, %1654 ]
  %1658 = load i64, ptr %54, align 8
  %1659 = and i64 %1658, 65535
  %1660 = icmp eq i64 %1659, 14
  br i1 %1660, label %1661, label %1663, !prof !196

1661:                                             ; preds = %1656
  %1662 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %1668

1663:                                             ; preds = %1656
  %1664 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %1665 = load i32, ptr %1664, align 4
  %1666 = lshr i32 %1665, 16
  %1667 = and i32 %1666, 255
  br label %1668

1668:                                             ; preds = %1663, %1661
  %1669 = phi i32 [ %1662, %1661 ], [ %1667, %1663 ]
  %1670 = icmp eq i32 %1669, 0
  %1671 = icmp ne ptr %1046, null
  %1672 = select i1 %1670, i1 true, i1 %1671, !prof !302
  br i1 %1672, label %1696, label %1673, !prof !302

1673:                                             ; preds = %1668
  %1674 = xor i32 %1045, 1
  %1675 = call ptr @hard_function_value(ptr noundef nonnull %54, ptr noundef %38, ptr noundef %50, i32 noundef %1674) #23
  %1676 = load i32, ptr %1675, align 8
  %1677 = and i32 %1676, 65535
  %1678 = icmp eq i32 %1677, 15
  br i1 %1678, label %1679, label %1696, !prof !303

1679:                                             ; preds = %1673
  %1680 = getelementptr inbounds %struct.rtx_def, ptr %1675, i64 0, i32 1
  %1681 = load ptr, ptr %1680, align 8, !tbaa !126
  %1682 = getelementptr inbounds %struct.rtvec_def, ptr %1681, i64 0, i32 1
  %1683 = load ptr, ptr %1682, align 8, !tbaa !115
  %1684 = getelementptr inbounds %struct.rtx_def, ptr %1683, i64 0, i32 1, i32 0, i32 0, i64 1
  %1685 = load ptr, ptr %1684, align 8, !tbaa !126
  %1686 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !115
  %1687 = icmp eq ptr %1685, %1686
  br i1 %1687, label %1688, label %1696

1688:                                             ; preds = %1679
  %1689 = getelementptr inbounds %struct.rtx_def, ptr %1683, i64 0, i32 1
  %1690 = load ptr, ptr %1689, align 8, !tbaa !126
  %1691 = load i32, ptr %1690, align 8
  %1692 = xor i32 %1691, %1676
  %1693 = and i32 %1692, 16711680
  %1694 = icmp eq i32 %1693, 0
  %1695 = select i1 %1694, ptr %1690, ptr %1675
  br label %1696

1696:                                             ; preds = %1688, %1679, %1673, %1668
  %1697 = phi ptr [ null, %1668 ], [ %1675, %1673 ], [ %1675, %1679 ], [ %1695, %1688 ]
  br i1 %1032, label %1698, label %1813, !prof !229

1698:                                             ; preds = %1696
  %1699 = zext nneg i32 %373 to i64
  br label %1700

1700:                                             ; preds = %1698, %1809
  %1701 = phi i64 [ 0, %1698 ], [ %1811, %1809 ]
  %1702 = phi i32 [ 0, %1698 ], [ %1810, %1809 ]
  %1703 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1701
  %1704 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1701, i32 4
  %1705 = load ptr, ptr %1704, align 8, !tbaa !238
  %1706 = icmp eq ptr %1705, null
  br i1 %1706, label %1809, label %1707, !prof !234

1707:                                             ; preds = %1700
  %1708 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1701, i32 9
  %1709 = load i32, ptr %1708, align 8, !tbaa !244
  %1710 = icmp eq i32 %1709, 0
  br i1 %1710, label %1711, label %1809

1711:                                             ; preds = %1707
  %1712 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1701, i32 2
  %1713 = load ptr, ptr %1712, align 8, !tbaa !279
  %1714 = icmp eq ptr %1713, null
  br i1 %1714, label %1715, label %1718

1715:                                             ; preds = %1711
  call void @push_temp_slots() #23
  %1716 = load ptr, ptr %1703, align 8, !tbaa !224
  %1717 = call ptr @expand_expr_real(ptr noundef %1716, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  store ptr %1717, ptr %1712, align 8, !tbaa !279
  call void @preserve_temp_slots(ptr noundef %1717) #23
  call void @pop_temp_slots() #23
  br label %1718

1718:                                             ; preds = %1715, %1711
  %1719 = load ptr, ptr %1712, align 8, !tbaa !279
  %1720 = load i32, ptr %1719, align 8
  %1721 = and i32 %1720, 65535
  %1722 = zext nneg i32 %1721 to i64
  %1723 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %1722
  %1724 = load i32, ptr %1723, align 4, !tbaa !130
  %1725 = icmp eq i32 %1724, 9
  br i1 %1725, label %1726, label %1734

1726:                                             ; preds = %1718
  %1727 = call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %1719) #23
  %1728 = icmp eq i8 %1727, 0
  br i1 %1728, label %1729, label %1734

1729:                                             ; preds = %1726
  %1730 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1701, i32 1
  %1731 = load i32, ptr %1730, align 8, !tbaa !237
  %1732 = load ptr, ptr %1712, align 8, !tbaa !279
  %1733 = call ptr @force_reg(i32 noundef %1731, ptr noundef %1732) #23
  store ptr %1733, ptr %1712, align 8, !tbaa !279
  br label %1734

1734:                                             ; preds = %1729, %1726, %1718
  %1735 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1701, i32 1
  %1736 = load i32, ptr %1735, align 8, !tbaa !237
  %1737 = load ptr, ptr %1703, align 8, !tbaa !224
  %1738 = getelementptr inbounds %struct.tree_common, ptr %1737, i64 0, i32 2
  %1739 = load ptr, ptr %1738, align 8, !tbaa !126
  %1740 = load i64, ptr %1739, align 8
  %1741 = and i64 %1740, 65535
  %1742 = icmp eq i64 %1741, 14
  br i1 %1742, label %1743, label %1745

1743:                                             ; preds = %1734
  %1744 = call i32 @vector_type_mode(ptr noundef nonnull %1739) #23
  br label %1750

1745:                                             ; preds = %1734
  %1746 = getelementptr inbounds %struct.tree_type, ptr %1739, i64 0, i32 6
  %1747 = load i32, ptr %1746, align 4
  %1748 = lshr i32 %1747, 16
  %1749 = and i32 %1748, 255
  br label %1750

1750:                                             ; preds = %1745, %1743
  %1751 = phi i32 [ %1744, %1743 ], [ %1749, %1745 ]
  %1752 = icmp eq i32 %1736, %1751
  br i1 %1752, label %1774, label %1753

1753:                                             ; preds = %1750
  %1754 = load i32, ptr %1735, align 8, !tbaa !237
  %1755 = load ptr, ptr %1703, align 8, !tbaa !224
  %1756 = getelementptr inbounds %struct.tree_common, ptr %1755, i64 0, i32 2
  %1757 = load ptr, ptr %1756, align 8, !tbaa !126
  %1758 = load i64, ptr %1757, align 8
  %1759 = and i64 %1758, 65535
  %1760 = icmp eq i64 %1759, 14
  br i1 %1760, label %1761, label %1763

1761:                                             ; preds = %1753
  %1762 = call i32 @vector_type_mode(ptr noundef nonnull %1757) #23
  br label %1768

1763:                                             ; preds = %1753
  %1764 = getelementptr inbounds %struct.tree_type, ptr %1757, i64 0, i32 6
  %1765 = load i32, ptr %1764, align 4
  %1766 = lshr i32 %1765, 16
  %1767 = and i32 %1766, 255
  br label %1768

1768:                                             ; preds = %1763, %1761
  %1769 = phi i32 [ %1762, %1761 ], [ %1767, %1763 ]
  %1770 = load ptr, ptr %1712, align 8, !tbaa !279
  %1771 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1701, i32 7
  %1772 = load i32, ptr %1771, align 8, !tbaa !236
  %1773 = call ptr @convert_modes(i32 noundef %1754, i32 noundef %1769, ptr noundef %1770, i32 noundef %1772) #23
  store ptr %1773, ptr %1712, align 8, !tbaa !279
  br label %1774

1774:                                             ; preds = %1768, %1750
  %1775 = load ptr, ptr %1704, align 8, !tbaa !238
  %1776 = load i32, ptr %1775, align 8
  %1777 = and i32 %1776, 65535
  %1778 = icmp eq i32 %1777, 15
  br i1 %1778, label %1779, label %1788

1779:                                             ; preds = %1774
  %1780 = load ptr, ptr %1703, align 8, !tbaa !224
  %1781 = getelementptr inbounds %struct.tree_common, ptr %1780, i64 0, i32 2
  %1782 = load ptr, ptr %1781, align 8, !tbaa !126
  %1783 = load ptr, ptr %1712, align 8, !tbaa !279
  %1784 = call i64 @int_size_in_bytes(ptr noundef %1782) #23
  %1785 = trunc i64 %1784 to i32
  %1786 = call ptr @emit_group_load_into_temps(ptr noundef nonnull %1775, ptr noundef %1783, ptr noundef %1782, i32 noundef %1785) #23
  %1787 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1701, i32 6
  store ptr %1786, ptr %1787, align 8, !tbaa !304
  br label %1809

1788:                                             ; preds = %1774
  %1789 = load ptr, ptr %1712, align 8, !tbaa !279
  %1790 = load i32, ptr %1789, align 8
  %1791 = trunc i32 %1790 to i16
  switch i16 %1791, label %1798 [
    i16 37, label %1809
    i16 39, label %1792
  ]

1792:                                             ; preds = %1788
  %1793 = getelementptr inbounds %struct.rtx_def, ptr %1789, i64 0, i32 1
  %1794 = load ptr, ptr %1793, align 8, !tbaa !126
  %1795 = load i32, ptr %1794, align 8
  %1796 = and i32 %1795, 65535
  %1797 = icmp eq i32 %1796, 37
  br i1 %1797, label %1809, label %1798

1798:                                             ; preds = %1792, %1788
  %1799 = load i32, ptr %1735, align 8, !tbaa !237
  %1800 = icmp eq i32 %1799, 1
  br i1 %1800, label %1809, label %1801

1801:                                             ; preds = %1798
  %1802 = call zeroext i8 @optimize_insn_for_speed_p() #23
  %1803 = call i32 @rtx_cost(ptr noundef nonnull %1789, i32 noundef 23, i8 noundef zeroext %1802) #23
  %1804 = icmp sgt i32 %1803, 4
  br i1 %1804, label %1805, label %1809

1805:                                             ; preds = %1801
  %1806 = load i32, ptr %1735, align 8, !tbaa !237
  %1807 = load ptr, ptr %1712, align 8, !tbaa !279
  %1808 = call ptr @copy_to_mode_reg(i32 noundef %1806, ptr noundef %1807) #23
  store ptr %1808, ptr %1712, align 8, !tbaa !279
  br label %1809

1809:                                             ; preds = %1798, %1805, %1801, %1792, %1788, %1779, %1707, %1700
  %1810 = phi i32 [ %1702, %1700 ], [ 1, %1779 ], [ 1, %1805 ], [ 1, %1801 ], [ 1, %1792 ], [ 1, %1788 ], [ %1702, %1707 ], [ 1, %1798 ]
  %1811 = add nuw nsw i64 %1701, 1
  %1812 = icmp eq i64 %1811, %1699
  br i1 %1812, label %1813, label %1700, !prof !232, !llvm.loop !305

1813:                                             ; preds = %1809, %1696
  %1814 = phi i32 [ 0, %1696 ], [ %1810, %1809 ]
  %1815 = load ptr, ptr %1033, align 8, !tbaa !126
  %1816 = icmp eq ptr %1815, null
  br i1 %1816, label %1819, label %1817, !prof !135

1817:                                             ; preds = %1813
  %1818 = call ptr @expand_expr_real(ptr noundef nonnull %1815, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  br label %1819

1819:                                             ; preds = %1813, %1817
  %1820 = phi ptr [ %1818, %1817 ], [ null, %1813 ]
  %1821 = load i32, ptr @target_flags, align 4, !tbaa !130
  %1822 = and i32 %1821, 4
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %1824, label %1828, !prof !196

1824:                                             ; preds = %1819
  %1825 = call i32 @ix86_cfun_abi() #23
  %1826 = icmp eq i32 %1825, 1
  %1827 = and i1 %1058, %1826
  br i1 %1827, label %1829, label %1831

1828:                                             ; preds = %1819
  br i1 %1058, label %1829, label %1831, !prof !270

1829:                                             ; preds = %1824, %1828
  %1830 = call fastcc ptr @save_fixed_argument_area(i32 noundef %155, ptr noundef %1439, ptr noundef nonnull %8, ptr noundef nonnull %9)
  br label %1831

1831:                                             ; preds = %1828, %1829, %1824
  %1832 = phi ptr [ %1830, %1829 ], [ %1047, %1824 ], [ %1047, %1828 ]
  br i1 %1034, label %1833, label %1882, !prof !229

1833:                                             ; preds = %1831
  %1834 = zext nneg i32 %373 to i64
  %1835 = icmp ne ptr %1253, null
  %1836 = zext i1 %1835 to i32
  %1837 = and i32 %1052, 1
  %1838 = icmp eq i32 %1837, 0
  %1839 = and i32 %1052, 2
  %1840 = icmp eq i32 %1839, 0
  br label %1841

1841:                                             ; preds = %1833, %1879
  %1842 = phi i64 [ 0, %1833 ], [ %1880, %1879 ]
  %1843 = phi i32 [ 0, %1833 ], [ %1862, %1879 ]
  %1844 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1842
  %1845 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1842, i32 4
  %1846 = load ptr, ptr %1845, align 8, !tbaa !238
  %1847 = icmp eq ptr %1846, null
  br i1 %1847, label %1852, label %1848, !prof !234

1848:                                             ; preds = %1841
  %1849 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1842, i32 9
  %1850 = load i32, ptr %1849, align 8, !tbaa !244
  %1851 = icmp eq i32 %1850, 0
  br i1 %1851, label %1861, label %1852

1852:                                             ; preds = %1848, %1841
  %1853 = call ptr @get_last_insn() #23
  %1854 = call fastcc i32 @store_one_arg(ptr noundef nonnull %1844, ptr noundef %1439, i32 noundef %1061, i32 noundef %1836, i32 noundef %155)
  %1855 = icmp eq i32 %1854, 0
  br i1 %1855, label %1856, label %1860, !prof !234

1856:                                             ; preds = %1852
  br i1 %1053, label %1857, label %1861, !prof !306

1857:                                             ; preds = %1856
  %1858 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %1853, ptr noundef nonnull %1844, i32 noundef 1), !range !307
  %1859 = icmp eq i32 %1858, 0
  br i1 %1859, label %1861, label %1860, !prof !259

1860:                                             ; preds = %1857, %1852
  br label %1861

1861:                                             ; preds = %1857, %1856, %1860, %1848
  %1862 = phi i32 [ 1, %1860 ], [ %1843, %1856 ], [ %1843, %1848 ], [ %1843, %1857 ]
  br i1 %1838, label %1863, label %1871, !prof !234

1863:                                             ; preds = %1861
  br i1 %1840, label %1879, label %1864, !prof !234

1864:                                             ; preds = %1863
  %1865 = load i32, ptr @target_flags, align 4, !tbaa !130
  %1866 = and i32 %1865, 4
  %1867 = icmp eq i32 %1866, 0
  br i1 %1867, label %1868, label %1871

1868:                                             ; preds = %1864
  %1869 = call i32 @ix86_cfun_abi() #23
  %1870 = icmp eq i32 %1869, 1
  br i1 %1870, label %1871, label %1879

1871:                                             ; preds = %1868, %1864, %1861
  %1872 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1842, i32 11
  %1873 = load ptr, ptr %1872, align 8, !tbaa !296
  %1874 = icmp eq ptr %1873, null
  br i1 %1874, label %1879, label %1875

1875:                                             ; preds = %1871
  %1876 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %1873) #23
  %1877 = load ptr, ptr %11, align 8, !tbaa !115
  %1878 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %1876, ptr noundef %1877) #23
  store ptr %1878, ptr %11, align 8, !tbaa !115
  br label %1879

1879:                                             ; preds = %1868, %1863, %1871, %1875
  %1880 = add nuw nsw i64 %1842, 1
  %1881 = icmp eq i64 %1880, %1834
  br i1 %1881, label %1882, label %1841, !prof !232, !llvm.loop !308

1882:                                             ; preds = %1879, %1831
  %1883 = phi i32 [ 0, %1831 ], [ %1862, %1879 ]
  %1884 = icmp eq i32 %1814, 0
  br i1 %1884, label %1915, label %1885, !prof !135

1885:                                             ; preds = %1882
  %1886 = icmp sgt i32 %373, 0
  br i1 %1886, label %1887, label %1915

1887:                                             ; preds = %1885
  %1888 = zext nneg i32 %373 to i64
  %1889 = icmp ne ptr %1253, null
  %1890 = zext i1 %1889 to i32
  br label %1891

1891:                                             ; preds = %1887, %1911
  %1892 = phi i64 [ 0, %1887 ], [ %1913, %1911 ]
  %1893 = phi i32 [ %1883, %1887 ], [ %1912, %1911 ]
  %1894 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1892
  %1895 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1892, i32 8
  %1896 = load i32, ptr %1895, align 4, !tbaa !241
  %1897 = icmp eq i32 %1896, 0
  br i1 %1897, label %1911, label %1898

1898:                                             ; preds = %1891
  %1899 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1892, i32 9
  %1900 = load i32, ptr %1899, align 8, !tbaa !244
  %1901 = icmp eq i32 %1900, 0
  br i1 %1901, label %1902, label %1911

1902:                                             ; preds = %1898
  %1903 = call ptr @get_last_insn() #23
  %1904 = call fastcc i32 @store_one_arg(ptr noundef nonnull %1894, ptr noundef %1439, i32 noundef %1061, i32 noundef %1890, i32 noundef %155)
  %1905 = icmp eq i32 %1904, 0
  br i1 %1905, label %1906, label %1910

1906:                                             ; preds = %1902
  br i1 %1053, label %1907, label %1911

1907:                                             ; preds = %1906
  %1908 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %1903, ptr noundef nonnull %1894, i32 noundef 1), !range !307
  %1909 = icmp eq i32 %1908, 0
  br i1 %1909, label %1911, label %1910

1910:                                             ; preds = %1907, %1902
  br label %1911

1911:                                             ; preds = %1906, %1907, %1910, %1891, %1898
  %1912 = phi i32 [ %1893, %1891 ], [ %1893, %1907 ], [ 1, %1910 ], [ %1893, %1906 ], [ %1893, %1898 ]
  %1913 = add nuw nsw i64 %1892, 1
  %1914 = icmp eq i64 %1913, %1888
  br i1 %1914, label %1915, label %1891, !llvm.loop !309

1915:                                             ; preds = %1911, %1885, %1882
  %1916 = phi i32 [ %1883, %1882 ], [ %1883, %1885 ], [ %1912, %1911 ]
  br i1 %39, label %1920, label %1917, !prof !196

1917:                                             ; preds = %1915
  %1918 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %1919 = load ptr, ptr %1918, align 8, !tbaa !126
  br label %1920

1920:                                             ; preds = %1915, %1917
  %1921 = phi ptr [ %1919, %1917 ], [ %50, %1915 ]
  %1922 = call i32 @ix86_function_type_abi(ptr noundef %1921) #23
  %1923 = icmp eq i32 %1922, 1
  br i1 %1923, label %1924, label %1937, !prof !196

1924:                                             ; preds = %1920
  %1925 = load i32, ptr @target_flags, align 4, !tbaa !130
  %1926 = and i32 %1925, 4
  %1927 = icmp eq i32 %1926, 0
  br i1 %1927, label %1928, label %1937

1928:                                             ; preds = %1924
  %1929 = icmp eq i32 %859, 0
  %1930 = call i32 @ix86_cfun_abi() #23
  %1931 = icmp ne i32 %1930, 1
  %1932 = select i1 %1931, i1 %1929, i1 false
  %1933 = select i1 %1932, i1 %163, i1 false
  br i1 %1933, label %1934, label %1937

1934:                                             ; preds = %1928
  %1935 = zext nneg i32 %155 to i64
  %1936 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1935) #23
  call void @anti_adjust_stack(ptr noundef %1936) #23
  br label %1937

1937:                                             ; preds = %1934, %1928, %1924, %1920
  %1938 = select i1 %1058, i1 %1671, i1 false, !prof !270
  %1939 = xor i1 %1938, true
  %1940 = or i1 %334, %1939
  br i1 %1940, label %1950, label %1941, !prof !135

1941:                                             ; preds = %1937
  %1942 = call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %1046, i8 noundef zeroext 0) #23
  %1943 = call ptr @force_operand(ptr noundef %1942, ptr noundef null) #23
  %1944 = call ptr @force_reg(i32 noundef 16, ptr noundef %1943) #23
  %1945 = call ptr @emit_move_insn(ptr noundef %56, ptr noundef %1944) #23
  %1946 = load i32, ptr %56, align 8
  %1947 = and i32 %1946, 65535
  %1948 = icmp eq i32 %1947, 37
  br i1 %1948, label %1949, label %1950

1949:                                             ; preds = %1941
  call void @use_reg(ptr noundef nonnull %11, ptr noundef nonnull %56) #23
  br label %1950

1950:                                             ; preds = %1941, %1949, %1937
  %1951 = phi ptr [ %1046, %1937 ], [ %1942, %1949 ], [ %1942, %1941 ]
  %1952 = call ptr @get_last_insn() #23
  %1953 = call ptr @prepare_call_address(ptr noundef %38, ptr noundef %1657, ptr noundef %1820, ptr noundef nonnull %11, i32 noundef %1814, i32 poison)
  br i1 %1035, label %1954, label %2104, !prof !229

1954:                                             ; preds = %1950
  %1955 = zext nneg i32 %373 to i64
  br label %1956

1956:                                             ; preds = %1954, %2100
  %1957 = phi i64 [ 0, %1954 ], [ %2102, %2100 ]
  %1958 = phi i32 [ %1916, %1954 ], [ %2101, %2100 ]
  %1959 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957, i32 5
  %1960 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957, i32 4
  %1961 = select i1 %1058, ptr %1960, ptr %1959, !prof !310
  %1962 = load ptr, ptr %1961, align 8, !tbaa !115
  %1963 = icmp eq ptr %1962, null
  br i1 %1963, label %2100, label %1964, !prof !234

1964:                                             ; preds = %1956
  %1965 = xor i32 %1045, 1
  %1966 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957
  %1967 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957, i32 8
  %1968 = load i32, ptr %1967, align 4, !tbaa !241
  %1969 = call ptr @get_last_insn() #23
  %1970 = load i32, ptr %1962, align 8
  %1971 = and i32 %1970, 65535
  %1972 = icmp eq i32 %1971, 15
  br i1 %1972, label %2013, label %1973

1973:                                             ; preds = %1964
  %1974 = icmp eq i32 %1968, 0
  br i1 %1974, label %1981, label %1975

1975:                                             ; preds = %1973
  %1976 = and i32 %1968, 3
  %1977 = icmp eq i32 %1976, 0
  br i1 %1977, label %1979, label %1978

1978:                                             ; preds = %1975
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1608, ptr noundef nonnull @.str.1) #23
  br label %1979

1979:                                             ; preds = %1978, %1975
  %1980 = sdiv i32 %1968, 4
  br label %2013

1981:                                             ; preds = %1973
  %1982 = load ptr, ptr %1966, align 8, !tbaa !224
  %1983 = getelementptr inbounds %struct.tree_common, ptr %1982, i64 0, i32 2
  %1984 = load ptr, ptr %1983, align 8, !tbaa !126
  %1985 = load i64, ptr %1984, align 8
  %1986 = and i64 %1985, 65535
  %1987 = icmp eq i64 %1986, 14
  br i1 %1987, label %1988, label %1990

1988:                                             ; preds = %1981
  %1989 = call i32 @vector_type_mode(ptr noundef nonnull %1984) #23
  br label %1995

1990:                                             ; preds = %1981
  %1991 = getelementptr inbounds %struct.tree_type, ptr %1984, i64 0, i32 6
  %1992 = load i32, ptr %1991, align 4
  %1993 = lshr i32 %1992, 16
  %1994 = and i32 %1993, 255
  br label %1995

1995:                                             ; preds = %1990, %1988
  %1996 = phi i32 [ %1989, %1988 ], [ %1994, %1990 ]
  %1997 = icmp eq i32 %1996, 1
  br i1 %1997, label %1998, label %2006

1998:                                             ; preds = %1995
  %1999 = load ptr, ptr %1966, align 8, !tbaa !224
  %2000 = getelementptr inbounds %struct.tree_common, ptr %1999, i64 0, i32 2
  %2001 = load ptr, ptr %2000, align 8, !tbaa !126
  %2002 = call i64 @int_size_in_bytes(ptr noundef %2001) #23
  %2003 = trunc i64 %2002 to i32
  %2004 = add nsw i32 %2003, 3
  %2005 = sdiv i32 %2004, 4
  br label %2013

2006:                                             ; preds = %1995
  %2007 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957, i32 1
  %2008 = load i32, ptr %2007, align 8, !tbaa !237
  %2009 = zext i32 %2008 to i64
  %2010 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %2009
  %2011 = load i8, ptr %2010, align 1, !tbaa !126
  %2012 = zext i8 %2011 to i64
  br label %2013

2013:                                             ; preds = %2006, %1998, %1979, %1964
  %2014 = phi i32 [ -1, %1964 ], [ %1980, %1979 ], [ %2005, %1998 ], [ -1, %2006 ]
  %2015 = phi i64 [ 0, %1964 ], [ 0, %1979 ], [ %2002, %1998 ], [ %2012, %2006 ]
  %2016 = load i32, ptr %1962, align 8
  %2017 = and i32 %2016, 65535
  %2018 = icmp eq i32 %2017, 15
  br i1 %2018, label %2019, label %2022

2019:                                             ; preds = %2013
  %2020 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957, i32 6
  %2021 = load ptr, ptr %2020, align 8, !tbaa !304
  call void @emit_group_move(ptr noundef nonnull %1962, ptr noundef %2021) #23
  br label %2079

2022:                                             ; preds = %2013
  %2023 = icmp eq i32 %2014, -1
  br i1 %2023, label %2024, label %2028

2024:                                             ; preds = %2022
  %2025 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957, i32 2
  %2026 = load ptr, ptr %2025, align 8, !tbaa !279
  %2027 = call ptr @emit_move_insn(ptr noundef nonnull %1962, ptr noundef %2026) #23
  br label %2079

2028:                                             ; preds = %2022
  %2029 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957, i32 15
  %2030 = load i32, ptr %2029, align 8, !tbaa !311
  %2031 = icmp eq i32 %2030, 0
  br i1 %2031, label %2053, label %2032

2032:                                             ; preds = %2028
  %2033 = load i32, ptr %2029, align 8, !tbaa !311
  %2034 = icmp sgt i32 %2033, 0
  br i1 %2034, label %2035, label %2079

2035:                                             ; preds = %2032
  %2036 = getelementptr inbounds %struct.rtx_def, ptr %1962, i64 0, i32 1
  %2037 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957, i32 14
  br label %2038

2038:                                             ; preds = %2035, %2038
  %2039 = phi i64 [ 0, %2035 ], [ %2049, %2038 ]
  %2040 = load i32, ptr @word_mode, align 4, !tbaa !130
  %2041 = load i32, ptr %2036, align 8, !tbaa !126
  %2042 = trunc i64 %2039 to i32
  %2043 = add i32 %2041, %2042
  %2044 = call ptr @gen_rtx_REG(i32 noundef %2040, i32 noundef %2043) #23
  %2045 = load ptr, ptr %2037, align 8, !tbaa !312
  %2046 = getelementptr inbounds ptr, ptr %2045, i64 %2039
  %2047 = load ptr, ptr %2046, align 8, !tbaa !115
  %2048 = call ptr @emit_move_insn(ptr noundef %2044, ptr noundef %2047) #23
  %2049 = add nuw nsw i64 %2039, 1
  %2050 = load i32, ptr %2029, align 8, !tbaa !311
  %2051 = sext i32 %2050 to i64
  %2052 = icmp slt i64 %2049, %2051
  br i1 %2052, label %2038, label %2079, !llvm.loop !313

2053:                                             ; preds = %2028
  %2054 = icmp eq i32 %1968, 0
  br i1 %2054, label %2059, label %2055

2055:                                             ; preds = %2053
  %2056 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957, i32 9
  %2057 = load i32, ptr %2056, align 8, !tbaa !244
  %2058 = icmp eq i32 %2057, 0
  br i1 %2058, label %2079, label %2059

2059:                                             ; preds = %2055, %2053
  %2060 = icmp eq i32 %1965, 0
  %2061 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957, i32 2
  %2062 = load ptr, ptr %2061, align 8, !tbaa !279
  %2063 = call ptr @validize_mem(ptr noundef %2062) #23
  br i1 %2060, label %2073, label %2064

2064:                                             ; preds = %2059
  %2065 = load ptr, ptr %2061, align 8, !tbaa !279
  %2066 = getelementptr inbounds %struct.rtx_def, ptr %2065, i64 0, i32 1
  %2067 = load ptr, ptr %2066, align 8, !tbaa !126
  %2068 = shl i64 %2015, 32
  %2069 = ashr exact i64 %2068, 32
  %2070 = call fastcc zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef %2067, i64 noundef %2069), !range !314
  %2071 = icmp eq i8 %2070, 0
  %2072 = select i1 %2071, i32 %1958, i32 1
  br label %2073

2073:                                             ; preds = %2064, %2059
  %2074 = phi i32 [ %1958, %2059 ], [ %2072, %2064 ]
  %2075 = getelementptr inbounds %struct.rtx_def, ptr %1962, i64 0, i32 1
  %2076 = load i32, ptr %2075, align 8, !tbaa !126
  %2077 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %1957, i32 1
  %2078 = load i32, ptr %2077, align 8, !tbaa !237
  call void @move_block_to_reg(i32 noundef %2076, ptr noundef %2063, i32 noundef %2014, i32 noundef %2078) #23
  br label %2079

2079:                                             ; preds = %2038, %2032, %2073, %2055, %2024, %2019
  %2080 = phi i32 [ %1958, %2019 ], [ %1958, %2024 ], [ %2074, %2073 ], [ %1958, %2055 ], [ %1958, %2032 ], [ %1958, %2038 ]
  %2081 = icmp eq i32 %1965, 0
  br i1 %2081, label %2086, label %2082

2082:                                             ; preds = %2079
  %2083 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %1969, ptr noundef nonnull %1966, i32 noundef 0), !range !307
  %2084 = icmp eq i32 %2083, 0
  %2085 = select i1 %2084, i32 %2080, i32 1
  br label %2086

2086:                                             ; preds = %2082, %2079
  %2087 = phi i32 [ %2080, %2079 ], [ %2085, %2082 ]
  %2088 = load i32, ptr %1962, align 8
  %2089 = and i32 %2088, 65535
  %2090 = icmp eq i32 %2089, 15
  br i1 %2090, label %2091, label %2092

2091:                                             ; preds = %2086
  call void @use_group_regs(ptr noundef nonnull %11, ptr noundef nonnull %1962) #23
  br label %2100

2092:                                             ; preds = %2086
  %2093 = icmp eq i32 %2014, -1
  br i1 %2093, label %2094, label %2095

2094:                                             ; preds = %2092
  call void @use_reg(ptr noundef nonnull %11, ptr noundef nonnull %1962) #23
  br label %2100

2095:                                             ; preds = %2092
  %2096 = icmp sgt i32 %2014, 0
  br i1 %2096, label %2097, label %2100

2097:                                             ; preds = %2095
  %2098 = getelementptr inbounds %struct.rtx_def, ptr %1962, i64 0, i32 1
  %2099 = load i32, ptr %2098, align 8, !tbaa !126
  call void @use_regs(ptr noundef nonnull %11, i32 noundef %2099, i32 noundef %2014) #23
  br label %2100

2100:                                             ; preds = %2097, %2095, %2094, %2091, %1956
  %2101 = phi i32 [ %1958, %1956 ], [ %2087, %2091 ], [ %2087, %2094 ], [ %2087, %2097 ], [ %2087, %2095 ]
  %2102 = add nuw nsw i64 %1957, 1
  %2103 = icmp eq i64 %2102, %1955
  br i1 %2103, label %2104, label %1956, !prof !232, !llvm.loop !315

2104:                                             ; preds = %2100, %1950
  %2105 = phi i32 [ %1916, %1950 ], [ %2101, %2100 ]
  %2106 = call ptr @get_last_insn() #23
  %2107 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !115
  %2108 = call ptr @function_arg(ptr noundef nonnull %7, i32 noundef 0, ptr noundef %2107, i32 noundef 1) #23
  br i1 %1058, label %2109, label %2115, !prof !270

2109:                                             ; preds = %2104
  %2110 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %2111 = sext i32 %2110 to i64
  %2112 = urem i64 %2111, %1027
  %2113 = icmp eq i64 %2112, 0
  br i1 %2113, label %2115, label %2114, !prof !283

2114:                                             ; preds = %2109
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2840, ptr noundef nonnull @.str.1) #23
  br label %2115

2115:                                             ; preds = %2104, %2109, %2114
  %2116 = shl i64 %1180, 32
  %2117 = ashr exact i64 %2116, 32
  %2118 = load ptr, ptr %11, align 8, !tbaa !115
  call fastcc void @emit_call_1(ptr noundef %1953, ptr noundef nonnull %0, ptr noundef %38, ptr noundef %221, i64 noundef %2117, i64 noundef %1632, ptr noundef %2108, ptr noundef %1697, i32 noundef %30, ptr noundef %2118, i32 noundef %1061)
  br i1 %1053, label %2119, label %2123, !prof !274

2119:                                             ; preds = %2115
  %2120 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %1952, ptr noundef null, i32 noundef 0), !range !307
  %2121 = icmp eq i32 %2120, 0
  %2122 = select i1 %2121, i32 %2105, i32 1, !prof !259
  br label %2123

2123:                                             ; preds = %2119, %2115
  %2124 = phi i32 [ %2105, %2115 ], [ %2122, %2119 ]
  %2125 = icmp eq ptr %1951, null
  br i1 %2125, label %2126, label %2175, !prof !135

2126:                                             ; preds = %2123
  %2127 = load i64, ptr %54, align 8
  %2128 = and i64 %2127, 65535
  %2129 = icmp eq i64 %2128, 14
  br i1 %2129, label %2130, label %2132, !prof !196

2130:                                             ; preds = %2126
  %2131 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2137

2132:                                             ; preds = %2126
  %2133 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2134 = load i32, ptr %2133, align 4
  %2135 = lshr i32 %2134, 16
  %2136 = and i32 %2135, 255
  br label %2137

2137:                                             ; preds = %2132, %2130
  %2138 = phi i32 [ %2131, %2130 ], [ %2136, %2132 ]
  %2139 = icmp eq i32 %2138, 1
  br i1 %2139, label %2175, label %2140, !prof !196

2140:                                             ; preds = %2137
  %2141 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !316
  %2142 = call zeroext i8 %2141(ptr noundef nonnull %54) #23, !prof !317
  %2143 = icmp eq i8 %2142, 0
  br i1 %2143, label %2175, label %2144, !prof !135

2144:                                             ; preds = %2140
  %2145 = load i64, ptr %54, align 8
  %2146 = and i64 %2145, 65535
  %2147 = icmp eq i64 %2146, 14
  br i1 %2147, label %2148, label %2150

2148:                                             ; preds = %2144
  %2149 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2155

2150:                                             ; preds = %2144
  %2151 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2152 = load i32, ptr %2151, align 4
  %2153 = lshr i32 %2152, 16
  %2154 = and i32 %2153, 255
  br label %2155

2155:                                             ; preds = %2150, %2148
  %2156 = phi i32 [ %2149, %2148 ], [ %2154, %2150 ]
  %2157 = call zeroext i8 @shift_return_value(i32 noundef %2156, i8 noundef zeroext 0, ptr noundef %1697), !range !314
  %2158 = icmp eq i8 %2157, 0
  %2159 = select i1 %2158, i32 %2124, i32 1
  %2160 = load i64, ptr %54, align 8
  %2161 = and i64 %2160, 65535
  %2162 = icmp eq i64 %2161, 14
  br i1 %2162, label %2163, label %2165

2163:                                             ; preds = %2155
  %2164 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2170

2165:                                             ; preds = %2155
  %2166 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2167 = load i32, ptr %2166, align 4
  %2168 = lshr i32 %2167, 16
  %2169 = and i32 %2168, 255
  br label %2170

2170:                                             ; preds = %2165, %2163
  %2171 = phi i32 [ %2164, %2163 ], [ %2169, %2165 ]
  %2172 = getelementptr inbounds %struct.rtx_def, ptr %1697, i64 0, i32 1
  %2173 = load i32, ptr %2172, align 8, !tbaa !126
  %2174 = call ptr @gen_rtx_REG(i32 noundef %2171, i32 noundef %2173) #23
  br label %2175

2175:                                             ; preds = %2170, %2140, %2137, %2123
  %2176 = phi i32 [ %2124, %2137 ], [ %2124, %2140 ], [ %2159, %2170 ], [ %2124, %2123 ]
  %2177 = phi ptr [ %1697, %2137 ], [ %1697, %2140 ], [ %2174, %2170 ], [ %1697, %2123 ]
  %2178 = and i32 %1052, 16
  %2179 = icmp ne i32 %2178, 0
  %2180 = select i1 %1058, i1 %2179, i1 false, !prof !270
  br i1 %2180, label %2181, label %2199, !prof !196

2181:                                             ; preds = %2175
  %2182 = load i32, ptr %2177, align 8
  %2183 = lshr i32 %2182, 16
  %2184 = and i32 %2183, 255
  %2185 = call ptr @gen_reg_rtx(i32 noundef %2184) #23
  %2186 = load i64, ptr %54, align 8
  %2187 = and i64 %2186, 65535
  %2188 = icmp eq i64 %2187, 10
  br i1 %2188, label %2189, label %2194

2189:                                             ; preds = %2181
  %2190 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !130
  %2191 = and i32 %2190, 32
  %2192 = icmp eq i32 %2191, 0
  %2193 = select i1 %2192, i32 128, i32 256
  call void @mark_reg_pointer(ptr noundef %2185, i32 noundef %2193) #23
  br label %2194

2194:                                             ; preds = %2189, %2181
  %2195 = call ptr @emit_move_insn(ptr noundef %2185, ptr noundef nonnull %2177) #23
  %2196 = call ptr @get_last_insn() #23
  call void @add_reg_note(ptr noundef %2196, i32 noundef 15, ptr noundef %2185) #23
  %2197 = call ptr @get_insns() #23
  call void @end_sequence() #23
  %2198 = call ptr @emit_insn(ptr noundef %2197) #23
  br label %2199

2199:                                             ; preds = %2194, %2175
  %2200 = phi ptr [ %2185, %2194 ], [ %2177, %2175 ]
  %2201 = and i32 %1052, 8
  %2202 = icmp ne i32 %2201, 0
  %2203 = or i1 %2202, %1053
  br i1 %2203, label %2204, label %2225, !prof !318

2204:                                             ; preds = %2199
  %2205 = call ptr @get_last_insn() #23
  %2206 = load i32, ptr %2205, align 8
  %2207 = and i32 %2206, 65535
  %2208 = icmp eq i32 %2207, 10
  br i1 %2208, label %2219, label %2209, !prof !319

2209:                                             ; preds = %2204, %2215
  %2210 = phi ptr [ %2212, %2215 ], [ %2205, %2204 ]
  %2211 = getelementptr inbounds %struct.rtx_def, ptr %2210, i64 0, i32 1, i32 0, i32 0, i64 1
  %2212 = load ptr, ptr %2211, align 8, !tbaa !126
  %2213 = icmp eq ptr %2212, %2106
  br i1 %2213, label %2214, label %2215

2214:                                             ; preds = %2209
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2908, ptr noundef nonnull @.str.1) #23
  br label %2215

2215:                                             ; preds = %2209, %2214
  %2216 = load i32, ptr %2212, align 8
  %2217 = and i32 %2216, 65535
  %2218 = icmp eq i32 %2217, 10
  br i1 %2218, label %2219, label %2209, !prof !319, !llvm.loop !320

2219:                                             ; preds = %2215, %2204
  %2220 = phi ptr [ %2205, %2204 ], [ %2212, %2215 ]
  %2221 = call ptr @emit_barrier_after(ptr noundef nonnull %2220) #23
  %2222 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2224, label %2225, !prof !321

2224:                                             ; preds = %2219
  store i32 %1257, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  store i32 0, ptr @x_rtl, align 8, !tbaa !235
  br label %2225

2225:                                             ; preds = %2219, %2224, %2199
  %2226 = load i64, ptr %54, align 8
  %2227 = and i64 %2226, 65535
  %2228 = icmp eq i64 %2227, 14
  br i1 %2228, label %2229, label %2231, !prof !196

2229:                                             ; preds = %2225
  %2230 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2236

2231:                                             ; preds = %2225
  %2232 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2233 = load i32, ptr %2232, align 4
  %2234 = lshr i32 %2233, 16
  %2235 = and i32 %2234, 255
  br label %2236

2236:                                             ; preds = %2231, %2229
  %2237 = phi i32 [ %2230, %2229 ], [ %2235, %2231 ]
  %2238 = icmp eq i32 %2237, 0
  %2239 = or i1 %1036, %2238
  br i1 %2239, label %2240, label %2242, !prof !322

2240:                                             ; preds = %2236
  %2241 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !115
  br label %2399

2242:                                             ; preds = %2236
  br i1 %2125, label %2276, label %2243, !prof !323

2243:                                             ; preds = %2242
  %2244 = icmp eq ptr %1042, null
  br i1 %2244, label %2249, label %2245

2245:                                             ; preds = %2243
  %2246 = load i32, ptr %1042, align 8
  %2247 = and i32 %2246, 65535
  %2248 = icmp eq i32 %2247, 43
  br i1 %2248, label %2399, label %2249

2249:                                             ; preds = %2245, %2243
  %2250 = load i64, ptr %54, align 8
  %2251 = and i64 %2250, 65535
  %2252 = icmp eq i64 %2251, 14
  br i1 %2252, label %2253, label %2255

2253:                                             ; preds = %2249
  %2254 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2260

2255:                                             ; preds = %2249
  %2256 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2257 = load i32, ptr %2256, align 4
  %2258 = lshr i32 %2257, 16
  %2259 = and i32 %2258, 255
  br label %2260

2260:                                             ; preds = %2255, %2253
  %2261 = phi i32 [ %2254, %2253 ], [ %2259, %2255 ]
  %2262 = load i64, ptr %54, align 8
  %2263 = and i64 %2262, 65535
  %2264 = icmp eq i64 %2263, 14
  br i1 %2264, label %2265, label %2267

2265:                                             ; preds = %2260
  %2266 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2272

2267:                                             ; preds = %2260
  %2268 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2269 = load i32, ptr %2268, align 4
  %2270 = lshr i32 %2269, 16
  %2271 = and i32 %2270, 255
  br label %2272

2272:                                             ; preds = %2267, %2265
  %2273 = phi i32 [ %2266, %2265 ], [ %2271, %2267 ]
  %2274 = call ptr @memory_address_addr_space(i32 noundef %2273, ptr noundef nonnull %1951, i8 noundef zeroext 0) #23
  %2275 = call ptr @gen_rtx_MEM(i32 noundef %2261, ptr noundef %2274) #23
  call void @set_mem_attributes(ptr noundef %2275, ptr noundef nonnull %54, i32 noundef 1) #23
  br label %2399

2276:                                             ; preds = %2242
  %2277 = load i32, ptr %2200, align 8
  %2278 = and i32 %2277, 65535
  %2279 = icmp eq i32 %2278, 15
  %2280 = icmp eq ptr %1042, null
  br i1 %2279, label %2281, label %2306, !prof !324

2281:                                             ; preds = %2276
  br i1 %2280, label %2282, label %2299

2282:                                             ; preds = %2281
  %2283 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2284 = load i64, ptr %54, align 8
  %2285 = trunc i64 %2284 to i32
  %2286 = lshr i32 %2285, 18
  %2287 = and i32 %2286, 2
  %2288 = load i32, ptr %2283, align 4
  %2289 = lshr i32 %2288, 11
  %2290 = and i32 %2289, 4
  %2291 = lshr i64 %2284, 48
  %2292 = trunc i64 %2291 to i32
  %2293 = and i32 %2292, 65280
  %2294 = or disjoint i32 %2290, %2287
  %2295 = or disjoint i32 %2294, %2293
  %2296 = or disjoint i32 %2295, 1
  %2297 = call ptr @build_qualified_type(ptr noundef nonnull %54, i32 noundef %2296) #23
  %2298 = call ptr @assign_temp(ptr noundef %2297, i32 noundef 0, i32 noundef 1, i32 noundef 1) #23
  br label %2299

2299:                                             ; preds = %2282, %2281
  %2300 = phi ptr [ %2298, %2282 ], [ %1042, %2281 ]
  %2301 = call i32 @rtx_equal_p(ptr noundef %2300, ptr noundef nonnull %2200) #23
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2303, label %2399

2303:                                             ; preds = %2299
  %2304 = call i64 @int_size_in_bytes(ptr noundef nonnull %54) #23
  %2305 = trunc i64 %2304 to i32
  call void @emit_group_store(ptr noundef %2300, ptr noundef nonnull %2200, ptr noundef nonnull %54, i32 noundef %2305) #23
  br label %2399

2306:                                             ; preds = %2276
  br i1 %2280, label %2373, label %2307, !prof !324

2307:                                             ; preds = %2306
  %2308 = load i32, ptr %1042, align 8
  %2309 = lshr i32 %2308, 16
  %2310 = and i32 %2309, 255
  %2311 = load i64, ptr %54, align 8
  %2312 = and i64 %2311, 65535
  %2313 = icmp eq i64 %2312, 14
  br i1 %2313, label %2314, label %2316, !prof !324

2314:                                             ; preds = %2307
  %2315 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2321

2316:                                             ; preds = %2307
  %2317 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2318 = load i32, ptr %2317, align 4
  %2319 = lshr i32 %2318, 16
  %2320 = and i32 %2319, 255
  br label %2321

2321:                                             ; preds = %2316, %2314
  %2322 = phi i32 [ %2315, %2314 ], [ %2320, %2316 ]
  %2323 = icmp eq i32 %2310, %2322
  br i1 %2323, label %2324, label %2373, !prof !323

2324:                                             ; preds = %2321
  %2325 = load i32, ptr %1042, align 8
  %2326 = load i32, ptr %2200, align 8
  %2327 = xor i32 %2326, %2325
  %2328 = and i32 %2327, 16711680
  %2329 = icmp eq i32 %2328, 0
  br i1 %2329, label %2330, label %2373, !prof !323

2330:                                             ; preds = %2324
  %2331 = and i32 %2325, 65535
  %2332 = icmp eq i32 %2331, 37
  br i1 %2332, label %2333, label %2337, !prof !323

2333:                                             ; preds = %2330
  %2334 = getelementptr inbounds %struct.rtx_def, ptr %1042, i64 0, i32 1
  %2335 = load i32, ptr %2334, align 8, !tbaa !126
  %2336 = icmp ult i32 %2335, 53
  br i1 %2336, label %2337, label %2339, !prof !324

2337:                                             ; preds = %2333, %2330
  %2338 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %2200)
  br label %2339

2339:                                             ; preds = %2337, %2333
  %2340 = phi ptr [ %2338, %2337 ], [ %2200, %2333 ]
  %2341 = load i32, ptr @target_flags, align 4, !tbaa !130
  %2342 = and i32 %2341, 4
  %2343 = icmp eq i32 %2342, 0
  br i1 %2343, label %2344, label %2348, !prof !324

2344:                                             ; preds = %2339
  %2345 = call i32 @ix86_cfun_abi() #23
  %2346 = icmp eq i32 %2345, 1
  %2347 = and i1 %1058, %2346
  br i1 %2347, label %2349, label %2367

2348:                                             ; preds = %2339
  br i1 %1058, label %2349, label %2367, !prof !325

2349:                                             ; preds = %2344, %2348
  %2350 = load i32, ptr %1042, align 8
  %2351 = and i32 %2350, 65535
  %2352 = icmp eq i32 %2351, 43
  br i1 %2352, label %2353, label %2367, !prof !326

2353:                                             ; preds = %2349
  %2354 = icmp sgt i32 %373, 0
  br i1 %2354, label %2355, label %2367

2355:                                             ; preds = %2353
  %2356 = zext nneg i32 %373 to i64
  br label %2360

2357:                                             ; preds = %2360
  %2358 = add nuw nsw i64 %2361, 1
  %2359 = icmp eq i64 %2358, %2356
  br i1 %2359, label %2367, label %2360, !llvm.loop !327

2360:                                             ; preds = %2355, %2357
  %2361 = phi i64 [ 0, %2355 ], [ %2358, %2357 ]
  %2362 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %2361, i32 13
  %2363 = load ptr, ptr %2362, align 8, !tbaa !328
  %2364 = icmp eq ptr %2363, null
  br i1 %2364, label %2357, label %2365

2365:                                             ; preds = %2360
  %2366 = call ptr @copy_to_reg(ptr noundef %2340) #23
  br label %2399

2367:                                             ; preds = %2357, %2353, %2348, %2344, %2349
  %2368 = call ptr @emit_move_insn(ptr noundef nonnull %1042, ptr noundef %2340) #23
  %2369 = load i32, ptr %1042, align 8
  %2370 = and i32 %2369, 65535
  %2371 = icmp eq i32 %2370, 43
  %2372 = select i1 %2371, i32 1, i32 %2176, !prof !324
  br label %2399

2373:                                             ; preds = %2324, %2321, %2306
  %2374 = load i64, ptr %54, align 8
  %2375 = and i64 %2374, 65535
  %2376 = icmp eq i64 %2375, 14
  br i1 %2376, label %2377, label %2379

2377:                                             ; preds = %2373
  %2378 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2384

2379:                                             ; preds = %2373
  %2380 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2381 = load i32, ptr %2380, align 4
  %2382 = lshr i32 %2381, 16
  %2383 = and i32 %2382, 255
  br label %2384

2384:                                             ; preds = %2379, %2377
  %2385 = phi i32 [ %2378, %2377 ], [ %2383, %2379 ]
  %2386 = icmp eq i32 %2385, 1
  br i1 %2386, label %2387, label %2396

2387:                                             ; preds = %2384
  %2388 = load i32, ptr %2200, align 8
  %2389 = and i32 %2388, 16711680
  %2390 = icmp eq i32 %2389, 65536
  br i1 %2390, label %2393, label %2391

2391:                                             ; preds = %2387
  %2392 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %2200)
  br label %2393

2393:                                             ; preds = %2391, %2387
  %2394 = phi ptr [ %2392, %2391 ], [ %2200, %2387 ]
  %2395 = call ptr @copy_blkmode_from_reg(ptr noundef %1042, ptr noundef %2394, ptr noundef nonnull %54) #23
  br label %2399

2396:                                             ; preds = %2384
  %2397 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %2200)
  %2398 = call ptr @copy_to_reg(ptr noundef %2397) #23
  br label %2399

2399:                                             ; preds = %2367, %2299, %2303, %2365, %2272, %2245, %2393, %2396, %2240
  %2400 = phi i32 [ %2176, %2240 ], [ 1, %2393 ], [ %2176, %2396 ], [ %2176, %2365 ], [ %2176, %2272 ], [ %2176, %2245 ], [ 1, %2303 ], [ 1, %2299 ], [ %2372, %2367 ]
  %2401 = phi ptr [ %2241, %2240 ], [ %2395, %2393 ], [ %2398, %2396 ], [ %2366, %2365 ], [ %2275, %2272 ], [ %1042, %2245 ], [ %2300, %2303 ], [ %2300, %2299 ], [ %1042, %2367 ]
  %2402 = load i32, ptr %2401, align 8
  %2403 = and i32 %2402, 65535
  %2404 = icmp eq i32 %2403, 37
  br i1 %2404, label %2405, label %2487, !prof !329

2405:                                             ; preds = %2399
  %2406 = load i64, ptr %54, align 8
  %2407 = and i64 %2406, 65535
  %2408 = icmp eq i64 %2407, 14
  br i1 %2408, label %2409, label %2411, !prof !324

2409:                                             ; preds = %2405
  %2410 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2416

2411:                                             ; preds = %2405
  %2412 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2413 = load i32, ptr %2412, align 4
  %2414 = lshr i32 %2413, 16
  %2415 = and i32 %2414, 255
  br label %2416

2416:                                             ; preds = %2411, %2409
  %2417 = phi i32 [ %2410, %2409 ], [ %2415, %2411 ]
  %2418 = icmp eq i32 %2417, 1
  br i1 %2418, label %2487, label %2419, !prof !324

2419:                                             ; preds = %2416
  %2420 = load i32, ptr %2401, align 8
  %2421 = lshr i32 %2420, 16
  %2422 = and i32 %2421, 255
  %2423 = load i64, ptr %54, align 8
  %2424 = and i64 %2423, 65535
  %2425 = icmp eq i64 %2424, 14
  br i1 %2425, label %2426, label %2428, !prof !324

2426:                                             ; preds = %2419
  %2427 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2433

2428:                                             ; preds = %2419
  %2429 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2430 = load i32, ptr %2429, align 4
  %2431 = lshr i32 %2430, 16
  %2432 = and i32 %2431, 255
  br label %2433

2433:                                             ; preds = %2428, %2426
  %2434 = phi i32 [ %2427, %2426 ], [ %2432, %2428 ]
  %2435 = icmp eq i32 %2422, %2434
  br i1 %2435, label %2487, label %2436, !prof !323

2436:                                             ; preds = %2433
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #23
  %2437 = load i64, ptr %54, align 8
  %2438 = trunc i64 %2437 to i32
  %2439 = lshr i32 %2438, 21
  %2440 = and i32 %2439, 1
  store i32 %2440, ptr %14, align 4, !tbaa !130
  %2441 = and i64 %2437, 65535
  %2442 = icmp eq i64 %2441, 14
  br i1 %2442, label %2443, label %2445

2443:                                             ; preds = %2436
  %2444 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2450

2445:                                             ; preds = %2436
  %2446 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2447 = load i32, ptr %2446, align 4
  %2448 = lshr i32 %2447, 16
  %2449 = and i32 %2448, 255
  br label %2450

2450:                                             ; preds = %2445, %2443
  %2451 = phi i32 [ %2444, %2443 ], [ %2449, %2445 ]
  %2452 = call i32 @promote_function_mode(ptr noundef nonnull %54, i32 noundef %2451, ptr noundef nonnull %14, ptr noundef %221, i32 noundef 1) #23
  %2453 = load i32, ptr %2401, align 8
  %2454 = lshr i32 %2453, 16
  %2455 = and i32 %2454, 255
  %2456 = icmp eq i32 %2455, %2452
  br i1 %2456, label %2458, label %2457

2457:                                             ; preds = %2450
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3042, ptr noundef nonnull @.str.1) #23
  br label %2458

2458:                                             ; preds = %2450, %2457
  %2459 = load i64, ptr %54, align 8
  %2460 = and i64 %2459, 65535
  %2461 = icmp eq i64 %2460, 14
  br i1 %2461, label %2462, label %2464

2462:                                             ; preds = %2458
  %2463 = call i32 @vector_type_mode(ptr noundef nonnull %54) #23
  br label %2469

2464:                                             ; preds = %2458
  %2465 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %2466 = load i32, ptr %2465, align 4
  %2467 = lshr i32 %2466, 16
  %2468 = and i32 %2467, 255
  br label %2469

2469:                                             ; preds = %2464, %2462
  %2470 = phi i32 [ %2463, %2462 ], [ %2468, %2464 ]
  %2471 = call ptr @gen_rtx_SUBREG(i32 noundef %2470, ptr noundef nonnull %2401, i32 noundef 0) #23
  %2472 = load i32, ptr %2471, align 8
  %2473 = or i32 %2472, 268435456
  store i32 %2473, ptr %2471, align 8
  %2474 = load i32, ptr %14, align 4, !tbaa !130
  %2475 = icmp slt i32 %2474, 0
  br i1 %2475, label %2476, label %2478

2476:                                             ; preds = %2469
  %2477 = or i32 %2472, 402653184
  br label %2485

2478:                                             ; preds = %2469
  %2479 = and i32 %2473, -134217729
  store i32 %2479, ptr %2471, align 8
  %2480 = load i32, ptr %14, align 4, !tbaa !130
  %2481 = shl i32 %2480, 26
  %2482 = and i32 %2481, 67108864
  %2483 = and i32 %2473, -201326593
  %2484 = or disjoint i32 %2482, %2483
  br label %2485

2485:                                             ; preds = %2478, %2476
  %2486 = phi i32 [ %2484, %2478 ], [ %2477, %2476 ]
  store i32 %2486, ptr %2471, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #23
  br label %2487

2487:                                             ; preds = %2485, %2433, %2416, %2399
  %2488 = phi ptr [ %2471, %2485 ], [ %2401, %2433 ], [ %2401, %2416 ], [ %2401, %2399 ]
  %2489 = load ptr, ptr %10, align 8, !tbaa !115
  %2490 = icmp eq ptr %2489, null
  br i1 %2490, label %2493, label %2491, !prof !135

2491:                                             ; preds = %2487
  call void @emit_stack_restore(i32 noundef 0, ptr noundef nonnull %2489, ptr noundef null) #23
  store i32 %1436, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  store i32 %1435, ptr @x_rtl, align 8, !tbaa !235
  %2492 = sub nsw i32 %1436, %1435
  store i32 %1437, ptr @stack_arg_under_construction, align 4, !tbaa !130
  br label %2538

2493:                                             ; preds = %2487
  %2494 = load i32, ptr @target_flags, align 4, !tbaa !130
  %2495 = and i32 %2494, 4
  %2496 = icmp eq i32 %2495, 0
  br i1 %2496, label %2497, label %2501, !prof !196

2497:                                             ; preds = %2493
  %2498 = call i32 @ix86_cfun_abi() #23
  %2499 = icmp eq i32 %2498, 1
  %2500 = and i1 %1058, %2499
  br i1 %2500, label %2502, label %2541

2501:                                             ; preds = %2493
  br i1 %1058, label %2502, label %2541, !prof !270

2502:                                             ; preds = %2497, %2501
  %2503 = icmp eq ptr %1832, null
  br i1 %2503, label %2507, label %2504, !prof !283

2504:                                             ; preds = %2502
  %2505 = load i32, ptr %9, align 4, !tbaa !130
  %2506 = load i32, ptr %8, align 4, !tbaa !130
  call fastcc void @restore_fixed_argument_area(ptr noundef nonnull %1832, ptr noundef %1439, i32 noundef %2505, i32 noundef %2506)
  br label %2507

2507:                                             ; preds = %2504, %2502
  %2508 = icmp sgt i32 %373, 0
  br i1 %2508, label %2509, label %2538, !prof !330

2509:                                             ; preds = %2507
  %2510 = zext nneg i32 %373 to i64
  br label %2511

2511:                                             ; preds = %2509, %2535
  %2512 = phi i64 [ 0, %2509 ], [ %2536, %2535 ]
  %2513 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %2512, i32 13
  %2514 = load ptr, ptr %2513, align 8, !tbaa !328
  %2515 = icmp eq ptr %2514, null
  br i1 %2515, label %2535, label %2516, !prof !331

2516:                                             ; preds = %2511
  %2517 = load i32, ptr %2514, align 8
  %2518 = lshr i32 %2517, 16
  %2519 = and i32 %2518, 255
  %2520 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %2512, i32 12
  %2521 = load ptr, ptr %2520, align 8, !tbaa !299
  %2522 = getelementptr inbounds %struct.rtx_def, ptr %2521, i64 0, i32 1
  %2523 = load ptr, ptr %2522, align 8, !tbaa !126
  %2524 = call ptr @memory_address_addr_space(i32 noundef %2519, ptr noundef %2523, i8 noundef zeroext 0) #23
  %2525 = call ptr @gen_rtx_MEM(i32 noundef %2519, ptr noundef %2524) #23
  %2526 = icmp eq i32 %2519, 1
  %2527 = load ptr, ptr %2513, align 8, !tbaa !328
  br i1 %2526, label %2530, label %2528

2528:                                             ; preds = %2516
  %2529 = call ptr @emit_move_insn(ptr noundef %2525, ptr noundef %2527) #23
  br label %2535

2530:                                             ; preds = %2516
  %2531 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %2512, i32 10
  %2532 = load i64, ptr %2531, align 8, !tbaa !245
  %2533 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %2532) #23
  %2534 = call ptr @emit_block_move(ptr noundef %2525, ptr noundef %2527, ptr noundef %2533, i32 noundef 2) #23
  br label %2535

2535:                                             ; preds = %2528, %2530, %2511
  %2536 = add nuw nsw i64 %2512, 1
  %2537 = icmp eq i64 %2536, %2510
  br i1 %2537, label %2538, label %2511, !prof !281, !llvm.loop !332

2538:                                             ; preds = %2535, %2507, %2491
  %2539 = phi i32 [ 1, %2491 ], [ %2400, %2507 ], [ %2400, %2535 ]
  %2540 = phi i32 [ %2492, %2491 ], [ %1257, %2507 ], [ %1257, %2535 ]
  store i32 %28, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  store ptr %29, ptr @stack_usage_map, align 8, !tbaa !115
  br label %2541

2541:                                             ; preds = %2538, %2501, %2497
  %2542 = phi i32 [ %2400, %2497 ], [ %2400, %2501 ], [ %2539, %2538 ]
  %2543 = phi i32 [ %1257, %2497 ], [ %1257, %2501 ], [ %2540, %2538 ]
  %2544 = and i32 %1052, 32
  %2545 = icmp eq i32 %2544, 0
  br i1 %2545, label %2552, label %2546, !prof !135

2546:                                             ; preds = %2541
  %2547 = load ptr, ptr @cfun, align 8, !tbaa !115
  %2548 = getelementptr inbounds %struct.function, ptr %2547, i64 0, i32 8
  %2549 = load ptr, ptr %2548, align 8, !tbaa !333
  %2550 = icmp eq ptr %2549, null
  br i1 %2550, label %2552, label %2551

2551:                                             ; preds = %2546
  call void @update_nonlocal_goto_save_area() #23
  br label %2552

2552:                                             ; preds = %2551, %2546, %2541
  br i1 %1037, label %2553, label %2564, !prof !229

2553:                                             ; preds = %2552
  %2554 = zext nneg i32 %373 to i64
  br label %2555

2555:                                             ; preds = %2553, %2561
  %2556 = phi i64 [ 0, %2553 ], [ %2562, %2561 ]
  %2557 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %2556, i32 14
  %2558 = load ptr, ptr %2557, align 8, !tbaa !312
  %2559 = icmp eq ptr %2558, null
  br i1 %2559, label %2561, label %2560, !prof !234

2560:                                             ; preds = %2555
  call void @free(ptr noundef %2558)
  br label %2561

2561:                                             ; preds = %2555, %2560
  %2562 = add nuw nsw i64 %2556, 1
  %2563 = icmp eq i64 %2562, %2554
  br i1 %2563, label %2564, label %2555, !prof !232, !llvm.loop !335

2564:                                             ; preds = %2561, %2552
  %2565 = call ptr @get_insns() #23
  call void @end_sequence() #23
  br i1 %1053, label %2566, label %2580, !prof !274

2566:                                             ; preds = %2564
  %2567 = icmp sgt i32 %373, 0
  store i32 %1056, ptr @x_rtl, align 8, !tbaa !235
  store i32 %1057, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  br i1 %2567, label %2568, label %2577, !prof !336

2568:                                             ; preds = %2566
  %2569 = zext nneg i32 %373 to i64
  br label %2570

2570:                                             ; preds = %2568, %2570
  %2571 = phi i64 [ 0, %2568 ], [ %2575, %2570 ]
  %2572 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %2571, i32 2
  store ptr null, ptr %2572, align 8, !tbaa !279
  %2573 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %2571, i32 14
  store ptr null, ptr %2573, align 8, !tbaa !312
  %2574 = getelementptr inbounds %struct.arg_data, ptr %395, i64 %2571, i32 11
  store ptr null, ptr %2574, align 8, !tbaa !296
  %2575 = add nuw nsw i64 %2571, 1
  %2576 = icmp eq i64 %2575, %2569
  br i1 %2576, label %2577, label %2570, !prof !336, !llvm.loop !337

2577:                                             ; preds = %2570, %2566
  %2578 = load ptr, ptr @stored_args_map, align 8, !tbaa !115
  %2579 = load ptr, ptr %2578, align 8, !tbaa !338
  call void @free(ptr noundef %2579)
  call void @free(ptr noundef %2578)
  br label %2588

2580:                                             ; preds = %2564
  %2581 = icmp eq i32 %2201, 0
  br i1 %2581, label %2582, label %2588, !prof !340

2582:                                             ; preds = %2580
  %2583 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %2584 = load i32, ptr @x_rtl, align 8, !tbaa !235
  %2585 = sub nsw i32 %2583, %2584
  %2586 = icmp eq i32 %2543, %2585
  br i1 %2586, label %2588, label %2587, !prof !341

2587:                                             ; preds = %2582
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3147, ptr noundef nonnull @.str.1) #23
  br label %2588

2588:                                             ; preds = %2587, %2582, %2580, %2577
  %2589 = phi ptr [ %2565, %2577 ], [ %1044, %2580 ], [ %1044, %2582 ], [ %1044, %2587 ]
  %2590 = phi ptr [ %1043, %2577 ], [ %2565, %2580 ], [ %2565, %2582 ], [ %2565, %2587 ]
  %2591 = icmp eq i32 %2542, 0
  %2592 = select i1 %2591, ptr %2589, ptr null, !prof !135
  br i1 %2591, label %2593, label %1038, !prof !135

2593:                                             ; preds = %2588, %1038
  %2594 = icmp eq ptr %2592, null
  br i1 %2594, label %2597, label %2595, !prof !270

2595:                                             ; preds = %2593
  %2596 = call ptr @emit_insn(ptr noundef nonnull %2592) #23
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 39), align 1, !tbaa !342
  br label %2599

2597:                                             ; preds = %2593
  %2598 = call ptr @emit_insn(ptr noundef %2590) #23
  br label %2599

2599:                                             ; preds = %2597, %2595
  %2600 = load i32, ptr @expand_call.currently_expanding_call, align 4, !tbaa !130
  %2601 = add nsw i32 %2600, -1
  store i32 %2601, ptr @expand_call.currently_expanding_call, align 4, !tbaa !130
  %2602 = icmp eq ptr %1438, null
  br i1 %2602, label %2604, label %2603, !prof !274

2603:                                             ; preds = %2599
  call void @free(ptr noundef %1438)
  br label %2604

2604:                                             ; preds = %2599, %2603, %151
  %2605 = phi ptr [ %153, %151 ], [ %2488, %2603 ], [ %2488, %2599 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  ret ptr %2605
}

declare i32 @ix86_cfun_abi() local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare i32 @ix86_reg_parm_stack_space(ptr noundef) local_unnamed_addr #3

declare i32 @ix86_function_type_abi(ptr noundef) local_unnamed_addr #3

declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

declare ptr @assign_temp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @mark_temp_addr_taken(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_rtl_info(ptr noundef) local_unnamed_addr #3

declare ptr @copy_addr_to_reg(ptr noundef) local_unnamed_addr #3

declare ptr @make_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare i32 @list_length(ptr noundef) local_unnamed_addr #3

declare void @init_cumulative_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

declare i32 @ix86_return_pops_args(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @promote_function_mode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @start_sequence() local_unnamed_addr #3

declare void @do_pending_stack_adjust() local_unnamed_addr #3

declare void @stack_protect_epilogue() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare void @emit_stack_save(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @push_block(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #16

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @allocate_dynamic_stack_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @anti_adjust_stack(ptr noundef) local_unnamed_addr #3

declare ptr @hard_function_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @save_fixed_argument_area(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 !prof !343 !PGOFuncName !344 {
  %5 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 %0)
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %61, !prof !171

8:                                                ; preds = %4
  %9 = load ptr, ptr @stack_usage_map, align 8, !tbaa !115
  br label %10

10:                                               ; preds = %8, %57
  %11 = phi i64 [ 0, %8 ], [ %59, %57 ]
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !126
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @llvm.smin.i32(i32 %5, i32 %0)
  %17 = sext i32 %16 to i64
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ %17, %15 ], [ %20, %18 ]
  %20 = add nsw i64 %19, -1
  %21 = getelementptr inbounds i8, ptr %9, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !126
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %18, label %24, !llvm.loop !345

24:                                               ; preds = %18
  %25 = trunc i64 %11 to i32
  %26 = trunc i64 %20 to i32
  store i32 %25, ptr %2, align 4, !tbaa !130
  store i32 %26, ptr %3, align 4, !tbaa !130
  %27 = sub nsw i32 %26, %25
  %28 = add nsw i32 %27, 1
  %29 = shl nsw i32 %28, 3
  %30 = tail call i32 @mode_for_size(i32 noundef %29, i32 noundef 2, i32 noundef 1) #23
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !126
  %34 = zext i8 %33 to i32
  %35 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !130
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 32, i32 64
  %39 = tail call i32 @llvm.umin.i32(i32 %38, i32 %34)
  %40 = add nuw i32 %39, 2147483647
  %41 = and i32 %40, %25
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 %30, i32 1
  %44 = tail call ptr @plus_constant(ptr noundef %1, i64 noundef %11) #23
  %45 = tail call ptr @memory_address_addr_space(i32 noundef %43, ptr noundef %44, i8 noundef zeroext 0) #23
  %46 = tail call ptr @gen_rtx_MEM(i32 noundef %43, ptr noundef %45) #23
  tail call void @set_mem_align(ptr noundef %46, i32 noundef 32) #23
  %47 = icmp eq i32 %43, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %24
  %49 = sext i32 %28 to i64
  %50 = tail call ptr @assign_stack_temp(i32 noundef 1, i64 noundef %49, i32 noundef 0) #23
  %51 = tail call ptr @validize_mem(ptr noundef %50) #23
  %52 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %49) #23
  %53 = tail call ptr @emit_block_move(ptr noundef %51, ptr noundef %46, ptr noundef %52, i32 noundef 2) #23
  br label %61

54:                                               ; preds = %24
  %55 = tail call ptr @gen_reg_rtx(i32 noundef %43) #23
  %56 = tail call ptr @emit_move_insn(ptr noundef %55, ptr noundef %46) #23
  br label %61

57:                                               ; preds = %10
  %58 = zext nneg i32 %6 to i64
  %59 = add nuw nsw i64 %11, 1
  %60 = icmp eq i64 %59, %58
  br i1 %60, label %61, label %10, !prof !319, !llvm.loop !346

61:                                               ; preds = %57, %4, %48, %54
  %62 = phi ptr [ %50, %48 ], [ %55, %54 ], [ null, %4 ], [ null, %57 ]
  ret ptr %62
}

declare ptr @get_last_insn() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @store_one_arg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #9 !prof !347 !PGOFuncName !348 {
  %6 = load ptr, ptr %0, align 8, !tbaa !224
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %477, label %10, !prof !230

10:                                               ; preds = %5
  tail call void @push_temp_slots() #23
  %11 = load i32, ptr @target_flags, align 4, !tbaa !130
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20, !prof !230

14:                                               ; preds = %10
  %15 = tail call i32 @ix86_cfun_abi() #23
  %16 = icmp eq i32 %15, 1
  %17 = and i32 %2, 256
  %18 = icmp eq i32 %17, 0
  %19 = and i1 %18, %16
  br i1 %19, label %23, label %108

20:                                               ; preds = %10
  %21 = and i32 %2, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %108, !prof !310

23:                                               ; preds = %14, %20
  %24 = icmp eq ptr %1, null
  %25 = icmp ne i32 %3, 0
  %26 = or i1 %24, %25
  br i1 %26, label %108, label %27, !prof !278

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !296
  %30 = icmp eq ptr %29, null
  br i1 %30, label %108, label %31, !prof !278

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !299
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !126
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 49
  br i1 %38, label %39, label %45, !prof !349

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !126
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !126
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %31, %39
  %46 = phi i32 [ %44, %39 ], [ 0, %31 ]
  %47 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %48 = load i64, ptr %47, align 8, !tbaa !245
  %49 = trunc i64 %48 to i32
  %50 = add i32 %46, %49
  %51 = tail call i32 @llvm.smax.i32(i32 %46, i32 %4)
  %52 = icmp slt i32 %51, %50
  br i1 %52, label %53, label %108, !prof !350

53:                                               ; preds = %45
  %54 = load ptr, ptr @stack_usage_map, align 8, !tbaa !115
  %55 = tail call i32 @llvm.smax.i32(i32 %46, i32 %4)
  %56 = sext i32 %55 to i64
  %57 = add i32 %46, %49
  %58 = add i32 %57, %55
  %59 = sub i32 %58, %51
  br label %64

60:                                               ; preds = %64
  %61 = add nsw i64 %65, 1
  %62 = trunc i64 %61 to i32
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %108, label %64, !prof !351, !llvm.loop !352

64:                                               ; preds = %53, %60
  %65 = phi i64 [ %56, %53 ], [ %61, %60 ]
  %66 = getelementptr inbounds i8, ptr %54, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !126
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %60, label %69, !prof !353

69:                                               ; preds = %64
  %70 = shl i32 %49, 3
  %71 = tail call i32 @mode_for_size(i32 noundef %70, i32 noundef 2, i32 noundef 1) #23
  %72 = load ptr, ptr %32, align 8, !tbaa !299
  %73 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !126
  %75 = tail call ptr @memory_address_addr_space(i32 noundef %71, ptr noundef %74, i8 noundef zeroext 0) #23
  %76 = tail call ptr @gen_rtx_MEM(i32 noundef %71, ptr noundef %75) #23
  %77 = icmp eq i32 %71, 1
  br i1 %77, label %78, label %104

78:                                               ; preds = %69
  %79 = load ptr, ptr %0, align 8, !tbaa !224
  %80 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !126
  %82 = load i64, ptr %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = lshr i32 %83, 18
  %85 = and i32 %84, 2
  %86 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = lshr i32 %87, 11
  %89 = and i32 %88, 4
  %90 = lshr i64 %82, 48
  %91 = trunc i64 %90 to i32
  %92 = and i32 %91, 65280
  %93 = or disjoint i32 %89, %85
  %94 = or disjoint i32 %93, %92
  %95 = or disjoint i32 %94, 1
  %96 = tail call ptr @build_qualified_type(ptr noundef nonnull %81, i32 noundef %95) #23
  %97 = tail call ptr @assign_temp(ptr noundef %96, i32 noundef 0, i32 noundef 1, i32 noundef 1) #23
  %98 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 13
  store ptr %97, ptr %98, align 8, !tbaa !328
  tail call void @preserve_temp_slots(ptr noundef %97) #23
  %99 = load ptr, ptr %98, align 8, !tbaa !328
  %100 = tail call ptr @validize_mem(ptr noundef %99) #23
  %101 = load i64, ptr %47, align 8, !tbaa !245
  %102 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %101) #23
  %103 = tail call ptr @emit_block_move(ptr noundef %100, ptr noundef %76, ptr noundef %102, i32 noundef 2) #23
  br label %108

104:                                              ; preds = %69
  %105 = tail call ptr @gen_reg_rtx(i32 noundef %71) #23
  %106 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 13
  store ptr %105, ptr %106, align 8, !tbaa !328
  %107 = tail call ptr @emit_move_insn(ptr noundef %105, ptr noundef %76) #23
  br label %108

108:                                              ; preds = %60, %45, %23, %20, %78, %104, %27, %14
  %109 = phi i32 [ 0, %27 ], [ 0, %14 ], [ %50, %104 ], [ %50, %78 ], [ 0, %20 ], [ 0, %23 ], [ %50, %45 ], [ %50, %60 ]
  %110 = phi i32 [ 0, %27 ], [ 0, %14 ], [ %46, %104 ], [ %46, %78 ], [ 0, %20 ], [ 0, %23 ], [ %46, %45 ], [ %46, %60 ]
  %111 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 9
  %112 = load i32, ptr %111, align 8, !tbaa !244
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %123, !prof !234

114:                                              ; preds = %108
  %115 = and i32 %2, 256
  %116 = icmp eq i32 %115, 0
  %117 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 5
  %118 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 4
  %119 = select i1 %116, ptr %118, ptr %117, !prof !310
  %120 = load ptr, ptr %119, align 8, !tbaa !115
  %121 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 8
  %122 = load i32, ptr %121, align 4, !tbaa !241
  br label %123

123:                                              ; preds = %114, %108
  %124 = phi i32 [ 0, %108 ], [ %122, %114 ]
  %125 = phi ptr [ null, %108 ], [ %120, %114 ]
  %126 = icmp eq ptr %125, null
  %127 = icmp ne i32 %124, 0
  %128 = select i1 %126, i1 true, i1 %127, !prof !234
  br i1 %128, label %130, label %129, !prof !234

129:                                              ; preds = %123
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4085, ptr noundef nonnull @.str.1) #23
  br label %130

130:                                              ; preds = %123, %129
  %131 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 15
  %132 = load i32, ptr %131, align 8, !tbaa !311
  %133 = icmp eq i32 %132, 0
  %134 = select i1 %133, ptr %125, ptr null, !prof !234
  %135 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !279
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %211, !prof !234

138:                                              ; preds = %130
  %139 = load i32, ptr %111, align 8, !tbaa !244
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141, !prof !234

141:                                              ; preds = %138
  %142 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !130
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr @stack_arg_under_construction, align 4, !tbaa !130
  br label %144

144:                                              ; preds = %141, %138
  br i1 %127, label %166, label %145, !prof !230

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !126
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 65535
  %150 = icmp eq i64 %149, 14
  br i1 %150, label %151, label %153, !prof !230

151:                                              ; preds = %145
  %152 = tail call i32 @vector_type_mode(ptr noundef nonnull %147) #23
  br label %158

153:                                              ; preds = %145
  %154 = getelementptr inbounds %struct.tree_type, ptr %147, i64 0, i32 6
  %155 = load i32, ptr %154, align 4
  %156 = lshr i32 %155, 16
  %157 = and i32 %156, 255
  br label %158

158:                                              ; preds = %153, %151
  %159 = phi i32 [ %152, %151 ], [ %157, %153 ]
  %160 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !237
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %166, !prof !234

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %165 = load ptr, ptr %164, align 8, !tbaa !296
  br label %166

166:                                              ; preds = %144, %158, %163
  %167 = phi ptr [ %165, %163 ], [ null, %158 ], [ null, %144 ]
  %168 = tail call ptr @expand_expr_real(ptr noundef nonnull %6, ptr noundef %167, i32 noundef 0, i32 noundef 1, ptr noundef null) #23
  store ptr %168, ptr %135, align 8, !tbaa !279
  %169 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !237
  %171 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !126
  %173 = load i64, ptr %172, align 8
  %174 = and i64 %173, 65535
  %175 = icmp eq i64 %174, 14
  br i1 %175, label %176, label %178, !prof !230

176:                                              ; preds = %166
  %177 = tail call i32 @vector_type_mode(ptr noundef nonnull %172) #23
  br label %183

178:                                              ; preds = %166
  %179 = getelementptr inbounds %struct.tree_type, ptr %172, i64 0, i32 6
  %180 = load i32, ptr %179, align 4
  %181 = lshr i32 %180, 16
  %182 = and i32 %181, 255
  br label %183

183:                                              ; preds = %178, %176
  %184 = phi i32 [ %177, %176 ], [ %182, %178 ]
  %185 = icmp eq i32 %170, %184
  br i1 %185, label %205, label %186, !prof !234

186:                                              ; preds = %183
  %187 = load i32, ptr %169, align 8, !tbaa !237
  %188 = load ptr, ptr %171, align 8, !tbaa !126
  %189 = load i64, ptr %188, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 14
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = tail call i32 @vector_type_mode(ptr noundef nonnull %188) #23
  br label %199

194:                                              ; preds = %186
  %195 = getelementptr inbounds %struct.tree_type, ptr %188, i64 0, i32 6
  %196 = load i32, ptr %195, align 4
  %197 = lshr i32 %196, 16
  %198 = and i32 %197, 255
  br label %199

199:                                              ; preds = %194, %192
  %200 = phi i32 [ %193, %192 ], [ %198, %194 ]
  %201 = load ptr, ptr %135, align 8, !tbaa !279
  %202 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 7
  %203 = load i32, ptr %202, align 8, !tbaa !236
  %204 = tail call ptr @convert_modes(i32 noundef %187, i32 noundef %200, ptr noundef %201, i32 noundef %203) #23
  store ptr %204, ptr %135, align 8, !tbaa !279
  br label %205

205:                                              ; preds = %199, %183
  %206 = load i32, ptr %111, align 8, !tbaa !244
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208, !prof !234

208:                                              ; preds = %205
  %209 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !130
  %210 = add nsw i32 %209, -1
  store i32 %210, ptr @stack_arg_under_construction, align 4, !tbaa !130
  br label %211

211:                                              ; preds = %205, %208, %130
  %212 = and i32 %2, 256
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %226, label %214, !prof !310

214:                                              ; preds = %211
  %215 = load ptr, ptr %135, align 8, !tbaa !279
  %216 = load i32, ptr %215, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 43
  br i1 %218, label %219, label %226, !prof !354

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.rtx_def, ptr %215, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !126
  %222 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %223 = load i64, ptr %222, align 8, !tbaa !245
  %224 = tail call fastcc zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef %221, i64 noundef %223), !range !314
  %225 = zext nneg i8 %224 to i32
  br label %226

226:                                              ; preds = %219, %214, %211
  %227 = phi i32 [ 0, %214 ], [ 0, %211 ], [ %225, %219 ]
  %228 = and i32 %2, 32
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %231, label %230, !prof !234

230:                                              ; preds = %226
  tail call void @do_pending_stack_adjust() #23
  br label %231

231:                                              ; preds = %230, %226
  %232 = load ptr, ptr %135, align 8, !tbaa !279
  %233 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %234 = load ptr, ptr %233, align 8, !tbaa !296
  %235 = icmp eq ptr %232, %234
  br i1 %235, label %431, label %236, !prof !230

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %238 = load i32, ptr %237, align 8, !tbaa !237
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %278, label %240, !prof !230

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 5
  %242 = load i32, ptr %241, align 4, !tbaa !297
  %243 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !126
  %245 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %246 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !292
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %252, !prof !234

249:                                              ; preds = %240
  %250 = load i64, ptr %245, align 8, !tbaa !293
  %251 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %250) #23
  br label %259

252:                                              ; preds = %240
  %253 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !115
  %254 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %253, ptr noundef nonnull %247) #23
  %255 = load i64, ptr %245, align 8, !tbaa !293
  %256 = tail call ptr @size_int_kind(i64 noundef %255, i32 noundef 1) #23
  %257 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %254, ptr noundef %256) #23
  %258 = tail call ptr @expand_expr_real(ptr noundef %257, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  br label %259

259:                                              ; preds = %252, %249
  %260 = phi ptr [ %251, %249 ], [ %258, %252 ]
  %261 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3
  %262 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !355
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %268, !prof !234

265:                                              ; preds = %259
  %266 = load i64, ptr %261, align 8, !tbaa !356
  %267 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %266) #23
  br label %275

268:                                              ; preds = %259
  %269 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !115
  %270 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %269, ptr noundef nonnull %263) #23
  %271 = load i64, ptr %261, align 8, !tbaa !356
  %272 = tail call ptr @size_int_kind(i64 noundef %271, i32 noundef 1) #23
  %273 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %270, ptr noundef %272) #23
  %274 = tail call ptr @expand_expr_real(ptr noundef %273, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  br label %275

275:                                              ; preds = %268, %265
  %276 = phi ptr [ %267, %265 ], [ %274, %268 ]
  tail call void @emit_push_insn(ptr noundef %232, i32 noundef %238, ptr noundef %244, ptr noundef null, i32 noundef %242, i32 noundef %124, ptr noundef %134, i32 noundef 0, ptr noundef %1, ptr noundef %260, i32 noundef %4, ptr noundef %276) #23
  %277 = icmp eq i32 %124, 0
  br i1 %277, label %427, label %431, !prof !234

278:                                              ; preds = %236
  %279 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %280 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 0, i32 1
  %281 = load ptr, ptr %280, align 8, !tbaa !247
  %282 = icmp eq ptr %281, null
  br i1 %282, label %290, label %283

283:                                              ; preds = %278
  %284 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !115
  %285 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %284, ptr noundef nonnull %281) #23
  %286 = load i64, ptr %279, align 8, !tbaa !245
  %287 = tail call ptr @size_int_kind(i64 noundef %286, i32 noundef 1) #23
  %288 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %285, ptr noundef %287) #23
  %289 = tail call ptr @expand_expr_real(ptr noundef %288, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  br label %314

290:                                              ; preds = %278
  %291 = load i64, ptr %279, align 8, !tbaa !245
  %292 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !126
  %294 = tail call i64 @int_size_in_bytes(ptr noundef %293) #23
  %295 = sub nsw i64 %291, %294
  %296 = trunc i64 %295 to i32
  %297 = add i32 %124, %296
  %298 = load ptr, ptr %292, align 8, !tbaa !126
  %299 = tail call ptr @size_in_bytes(ptr noundef %298) #23
  %300 = load ptr, ptr @sizetype_tab, align 16, !tbaa !115
  %301 = load i64, ptr %300, align 8
  %302 = and i64 %301, 65535
  %303 = icmp eq i64 %302, 14
  br i1 %303, label %304, label %306

304:                                              ; preds = %290
  %305 = tail call i32 @vector_type_mode(ptr noundef nonnull %300) #23
  br label %311

306:                                              ; preds = %290
  %307 = getelementptr inbounds %struct.tree_type, ptr %300, i64 0, i32 6
  %308 = load i32, ptr %307, align 4
  %309 = lshr i32 %308, 16
  %310 = and i32 %309, 255
  br label %311

311:                                              ; preds = %306, %304
  %312 = phi i32 [ %305, %304 ], [ %310, %306 ]
  %313 = tail call ptr @expand_expr_real(ptr noundef %299, ptr noundef null, i32 noundef %312, i32 noundef 0, ptr noundef null) #23
  br label %314

314:                                              ; preds = %311, %283
  %315 = phi i32 [ 0, %283 ], [ %297, %311 ]
  %316 = phi ptr [ %289, %283 ], [ %313, %311 ]
  %317 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 5
  %318 = load i32, ptr %317, align 4, !tbaa !297
  br i1 %213, label %386, label %319

319:                                              ; preds = %314
  %320 = load ptr, ptr %135, align 8, !tbaa !279
  %321 = load i32, ptr %320, align 8
  %322 = and i32 %321, 65535
  %323 = icmp eq i32 %322, 43
  br i1 %323, label %324, label %386

324:                                              ; preds = %319
  %325 = getelementptr inbounds %struct.rtx_def, ptr %320, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !126
  %327 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !287
  %328 = icmp eq ptr %326, %327
  br i1 %328, label %351, label %329

329:                                              ; preds = %324
  %330 = load i32, ptr %326, align 8
  %331 = and i32 %330, 65535
  %332 = icmp eq i32 %331, 49
  br i1 %332, label %333, label %386

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !126
  %336 = icmp eq ptr %335, %327
  br i1 %336, label %337, label %386

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 0, i64 1
  %339 = load ptr, ptr %338, align 8, !tbaa !126
  %340 = load i32, ptr %339, align 8
  %341 = and i32 %340, 65535
  %342 = icmp eq i32 %341, 30
  br i1 %342, label %343, label %386

343:                                              ; preds = %337
  br i1 %328, label %351, label %344

344:                                              ; preds = %343
  %345 = getelementptr inbounds %struct.rtx_def, ptr %326, i64 0, i32 1, i32 0, i32 0, i64 1
  %346 = load ptr, ptr %345, align 8, !tbaa !126
  %347 = getelementptr inbounds %struct.rtx_def, ptr %346, i64 0, i32 1
  %348 = load i64, ptr %347, align 8, !tbaa !126
  %349 = shl i64 %348, 32
  %350 = ashr exact i64 %349, 32
  br label %351

351:                                              ; preds = %324, %344, %343
  %352 = phi i64 [ %350, %344 ], [ 0, %343 ], [ 0, %324 ]
  %353 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %354 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !292
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %364

357:                                              ; preds = %351
  %358 = load ptr, ptr %280, align 8, !tbaa !247
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %364

360:                                              ; preds = %357
  %361 = load i32, ptr %316, align 8
  %362 = and i32 %361, 65535
  %363 = icmp eq i32 %362, 30
  br i1 %363, label %365, label %364

364:                                              ; preds = %360, %357, %351
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4270, ptr noundef nonnull @.str.1) #23
  br label %365

365:                                              ; preds = %360, %364
  %366 = load i64, ptr %353, align 8, !tbaa !293
  %367 = icmp sgt i64 %366, %352
  br i1 %367, label %368, label %374

368:                                              ; preds = %365
  %369 = getelementptr inbounds %struct.rtx_def, ptr %316, i64 0, i32 1
  %370 = load i64, ptr %369, align 8, !tbaa !126
  %371 = add nsw i64 %370, %352
  %372 = icmp slt i64 %366, %371
  %373 = select i1 %372, i32 1, i32 %227
  br label %386

374:                                              ; preds = %365
  %375 = icmp slt i64 %366, %352
  %376 = load i64, ptr %279, align 8, !tbaa !245
  br i1 %375, label %377, label %381

377:                                              ; preds = %374
  %378 = add nsw i64 %376, %366
  %379 = icmp slt i64 %352, %378
  %380 = select i1 %379, i32 1, i32 %227
  br label %386

381:                                              ; preds = %374
  %382 = getelementptr inbounds %struct.rtx_def, ptr %316, i64 0, i32 1
  %383 = load i64, ptr %382, align 8, !tbaa !126
  %384 = icmp eq i64 %376, %383
  %385 = select i1 %384, i32 %227, i32 1
  br label %386

386:                                              ; preds = %381, %377, %368, %329, %333, %337, %319, %314
  %387 = phi i32 [ %227, %319 ], [ %227, %314 ], [ %227, %337 ], [ %227, %333 ], [ %227, %329 ], [ %373, %368 ], [ %380, %377 ], [ %385, %381 ]
  %388 = load ptr, ptr %135, align 8, !tbaa !279
  %389 = load i32, ptr %237, align 8, !tbaa !237
  %390 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8, !tbaa !126
  %392 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %393 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %394 = load ptr, ptr %393, align 8, !tbaa !292
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %399

396:                                              ; preds = %386
  %397 = load i64, ptr %392, align 8, !tbaa !293
  %398 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %397) #23
  br label %406

399:                                              ; preds = %386
  %400 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !115
  %401 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %400, ptr noundef nonnull %394) #23
  %402 = load i64, ptr %392, align 8, !tbaa !293
  %403 = tail call ptr @size_int_kind(i64 noundef %402, i32 noundef 1) #23
  %404 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %401, ptr noundef %403) #23
  %405 = tail call ptr @expand_expr_real(ptr noundef %404, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  br label %406

406:                                              ; preds = %399, %396
  %407 = phi ptr [ %398, %396 ], [ %405, %399 ]
  %408 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3
  %409 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3, i32 1
  %410 = load ptr, ptr %409, align 8, !tbaa !355
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %415

412:                                              ; preds = %406
  %413 = load i64, ptr %408, align 8, !tbaa !356
  %414 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %413) #23
  br label %422

415:                                              ; preds = %406
  %416 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !115
  %417 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %416, ptr noundef nonnull %410) #23
  %418 = load i64, ptr %408, align 8, !tbaa !356
  %419 = tail call ptr @size_int_kind(i64 noundef %418, i32 noundef 1) #23
  %420 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %417, ptr noundef %419) #23
  %421 = tail call ptr @expand_expr_real(ptr noundef %420, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  br label %422

422:                                              ; preds = %415, %412
  %423 = phi ptr [ %414, %412 ], [ %421, %415 ]
  tail call void @emit_push_insn(ptr noundef %388, i32 noundef %389, ptr noundef %391, ptr noundef %316, i32 noundef %318, i32 noundef %124, ptr noundef %134, i32 noundef %315, ptr noundef %1, ptr noundef %407, i32 noundef %4, ptr noundef %423) #23
  %424 = icmp eq i32 %124, 0
  br i1 %424, label %425, label %431

425:                                              ; preds = %422
  %426 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 12
  br label %427

427:                                              ; preds = %275, %425
  %428 = phi ptr [ %426, %425 ], [ %233, %275 ]
  %429 = phi i32 [ %387, %425 ], [ %227, %275 ]
  %430 = load ptr, ptr %428, align 8, !tbaa !115
  store ptr %430, ptr %135, align 8, !tbaa !279
  br label %431

431:                                              ; preds = %427, %422, %275, %231
  %432 = phi i32 [ %227, %231 ], [ %227, %275 ], [ %387, %422 ], [ %429, %427 ]
  %433 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 4
  %434 = load ptr, ptr %433, align 8, !tbaa !238
  %435 = icmp eq ptr %434, null
  br i1 %435, label %449, label %436, !prof !234

436:                                              ; preds = %431
  %437 = load i32, ptr %434, align 8
  %438 = and i32 %437, 65535
  %439 = icmp eq i32 %438, 15
  br i1 %439, label %440, label %449

440:                                              ; preds = %436
  %441 = load ptr, ptr %0, align 8, !tbaa !224
  %442 = getelementptr inbounds %struct.tree_common, ptr %441, i64 0, i32 2
  %443 = load ptr, ptr %442, align 8, !tbaa !126
  %444 = load ptr, ptr %135, align 8, !tbaa !279
  %445 = tail call i64 @int_size_in_bytes(ptr noundef %443) #23
  %446 = trunc i64 %445 to i32
  %447 = tail call ptr @emit_group_load_into_temps(ptr noundef nonnull %434, ptr noundef %444, ptr noundef %443, i32 noundef %446) #23
  %448 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 6
  store ptr %447, ptr %448, align 8, !tbaa !304
  br label %449

449:                                              ; preds = %440, %436, %431
  %450 = load i32, ptr @target_flags, align 4, !tbaa !130
  %451 = and i32 %450, 4
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %456, !prof !230

453:                                              ; preds = %449
  %454 = tail call i32 @ix86_cfun_abi() #23
  %455 = icmp eq i32 %454, 1
  br i1 %455, label %456, label %474

456:                                              ; preds = %453, %449
  %457 = icmp eq ptr %1, null
  %458 = or i32 %212, %3
  %459 = icmp ne i32 %458, 0
  %460 = or i1 %457, %459
  br i1 %460, label %474, label %461, !prof !306

461:                                              ; preds = %456
  %462 = load ptr, ptr %233, align 8, !tbaa !296
  %463 = icmp ne ptr %462, null
  %464 = icmp slt i32 %110, %109
  %465 = and i1 %463, %464
  br i1 %465, label %466, label %474, !prof !357

466:                                              ; preds = %461
  %467 = load ptr, ptr @stack_usage_map, align 8, !tbaa !115
  %468 = sext i32 %110 to i64
  %469 = getelementptr i8, ptr %467, i64 %468
  %470 = xor i32 %110, -1
  %471 = add i32 %109, %470
  %472 = zext i32 %471 to i64
  %473 = add nuw nsw i64 %472, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %469, i8 1, i64 %473, i1 false), !tbaa !126
  br label %474

474:                                              ; preds = %466, %461, %453, %456
  %475 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  %476 = add nsw i32 %475, 1
  store i32 %476, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  tail call void @preserve_temp_slots(ptr noundef null) #23
  tail call void @free_temp_slots() #23
  tail call void @pop_temp_slots() #23
  br label %477

477:                                              ; preds = %5, %474
  %478 = phi i32 [ %432, %474 ], [ 1, %5 ]
  ret i32 %478
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @check_sibcall_argument_overlap(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !358 !PGOFuncName !359 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7, !prof !360

5:                                                ; preds = %3
  %6 = tail call ptr @get_insns() #23
  br label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %12 = icmp ne ptr %11, null
  br i1 %12, label %13, label %29, !prof !336

13:                                               ; preds = %10, %25
  %14 = phi i1 [ %28, %25 ], [ %12, %10 ]
  %15 = phi ptr [ %27, %25 ], [ %11, %10 ]
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = add nsw i32 %17, -7
  %19 = icmp ult i32 %18, 4
  br i1 %19, label %20, label %25, !prof !361

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !126
  %23 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %22), !range !307
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29, !prof !361

25:                                               ; preds = %13, %20
  %26 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !126
  %28 = icmp ne ptr %27, null
  br i1 %28, label %13, label %29, !prof !362, !llvm.loop !363

29:                                               ; preds = %25, %20, %10
  %30 = phi i1 [ %12, %10 ], [ %28, %25 ], [ %14, %20 ]
  %31 = icmp eq i32 %2, 0
  br i1 %31, label %72, label %32, !prof !360

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.arg_data, ptr %1, i64 0, i32 10
  %34 = getelementptr inbounds %struct.arg_data, ptr %1, i64 0, i32 10, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !295
  %36 = trunc i64 %35 to i32
  %37 = load i64, ptr %33, align 8, !tbaa !245
  %38 = add i64 %37, %35
  %39 = trunc i64 %38 to i32
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %72, !prof !336

41:                                               ; preds = %32
  %42 = load ptr, ptr @stored_args_map, align 8, !tbaa !115
  br label %43

43:                                               ; preds = %41, %61
  %44 = phi i32 [ %36, %41 ], [ %70, %61 ]
  %45 = load ptr, ptr %42, align 8, !tbaa !338
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %47, !prof !364

47:                                               ; preds = %43
  %48 = lshr i32 %44, 6
  %49 = zext nneg i32 %48 to i64
  %50 = getelementptr inbounds %struct.simple_bitmap_def, ptr %42, i64 0, i32 3, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !183
  %52 = and i32 %44, 63
  %53 = zext nneg i32 %52 to i64
  %54 = shl nuw i64 1, %53
  %55 = and i64 %51, %54
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = getelementptr inbounds i8, ptr %45, i64 %49
  %59 = load i8, ptr %58, align 1, !tbaa !126
  %60 = add i8 %59, 1
  store i8 %60, ptr %58, align 1, !tbaa !126
  br label %61

61:                                               ; preds = %43, %47, %57
  %62 = and i32 %44, 63
  %63 = zext nneg i32 %62 to i64
  %64 = shl nuw i64 1, %63
  %65 = lshr i32 %44, 6
  %66 = zext nneg i32 %65 to i64
  %67 = getelementptr inbounds %struct.simple_bitmap_def, ptr %42, i64 0, i32 3, i64 %66
  %68 = load i64, ptr %67, align 8, !tbaa !183
  %69 = or i64 %68, %64
  store i64 %69, ptr %67, align 8, !tbaa !183
  %70 = add nsw i32 %44, 1
  %71 = icmp eq i32 %70, %39
  br i1 %71, label %72, label %43, !prof !365, !llvm.loop !366

72:                                               ; preds = %61, %32, %29
  %73 = zext i1 %30 to i32
  ret i32 %73
}

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @function_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_call_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10) unnamed_addr #9 !prof !134 !PGOFuncName !367 {
  %12 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %5) #23
  %13 = trunc i64 %4 to i32
  %14 = tail call i32 @ix86_return_pops_args(ptr noundef %2, ptr noundef %3, i32 noundef %13) #23
  %15 = sext i32 %14 to i64
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %21, label %19, !prof !135

19:                                               ; preds = %11
  %20 = tail call ptr @memory_address_addr_space(i32 noundef 14, ptr noundef nonnull %0, i8 noundef zeroext 0) #23
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi ptr [ %20, %19 ], [ %0, %11 ]
  %23 = icmp slt i32 %14, 1
  br i1 %23, label %32, label %24, !prof !135

24:                                               ; preds = %21
  %25 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #23
  %26 = icmp eq ptr %7, null
  %27 = tail call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef %22) #23
  br i1 %26, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @gen_call_value_pop(ptr noundef nonnull %7, ptr noundef %27, ptr noundef %12, ptr noundef %6, ptr noundef %25) #23
  br label %47

30:                                               ; preds = %24
  %31 = tail call ptr @gen_call_pop(ptr noundef %27, ptr noundef %12, ptr noundef %6, ptr noundef %25) #23
  br label %47

32:                                               ; preds = %21
  %33 = and i32 %10, 256
  %34 = icmp eq i32 %33, 0
  %35 = icmp eq ptr %7, null
  %36 = tail call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef %22) #23
  br i1 %34, label %42, label %37, !prof !270

37:                                               ; preds = %32
  br i1 %35, label %40, label %38, !prof !269

38:                                               ; preds = %37
  %39 = tail call ptr @gen_sibcall_value(ptr noundef nonnull %7, ptr noundef %36, ptr noundef %12, ptr noundef %6) #23
  br label %47

40:                                               ; preds = %37
  %41 = tail call ptr @gen_sibcall(ptr noundef %36, ptr noundef %12, ptr noundef %6) #23
  br label %47

42:                                               ; preds = %32
  br i1 %35, label %45, label %43, !prof !368

43:                                               ; preds = %42
  %44 = tail call ptr @gen_call_value(ptr noundef nonnull %7, ptr noundef %36, ptr noundef %12, ptr noundef %6) #23
  br label %47

45:                                               ; preds = %42
  %46 = tail call ptr @gen_call(ptr noundef %36, ptr noundef %12, ptr noundef %6) #23
  br label %47

47:                                               ; preds = %28, %30, %40, %38, %45, %43
  %48 = phi ptr [ %41, %40 ], [ %39, %38 ], [ %46, %45 ], [ %44, %43 ], [ %29, %28 ], [ %31, %30 ]
  %49 = tail call ptr @emit_call_insn(ptr noundef %48) #23
  %50 = tail call ptr @last_call_insn() #23
  tail call void @add_function_usage_to(ptr noundef %50, ptr noundef %9) #23
  %51 = and i32 %10, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53, !prof !135

53:                                               ; preds = %47
  %54 = load i32, ptr %50, align 8
  %55 = or i32 %54, 67108864
  store i32 %55, ptr %50, align 8
  br label %56

56:                                               ; preds = %53, %47
  %57 = and i32 %10, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59, !prof !135

59:                                               ; preds = %56
  %60 = load i32, ptr %50, align 8
  %61 = or i32 %60, -2147483648
  store i32 %61, ptr %50, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = and i32 %10, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65, !prof !135

65:                                               ; preds = %62
  %66 = load i32, ptr %50, align 8
  %67 = or i32 %66, 33554432
  store i32 %67, ptr %50, align 8
  br label %68

68:                                               ; preds = %65, %62
  tail call void @make_reg_eh_region_note(ptr noundef %50, i32 noundef %10, i32 noundef 0) #23
  %69 = and i32 %10, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !369

71:                                               ; preds = %68
  %72 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !115
  tail call void @add_reg_note(ptr noundef %50, i32 noundef 27, ptr noundef %72) #23
  br label %73

73:                                               ; preds = %71, %68
  %74 = and i32 %10, 128
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76, !prof !135

76:                                               ; preds = %73
  %77 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !115
  tail call void @add_reg_note(ptr noundef %50, i32 noundef 30, ptr noundef %77) #23
  %78 = load ptr, ptr @cfun, align 8, !tbaa !115
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 20
  %80 = load i32, ptr %79, align 8
  %81 = or i32 %80, 262144
  store i32 %81, ptr %79, align 8
  br label %82

82:                                               ; preds = %76, %73
  %83 = load i32, ptr %50, align 8
  %84 = shl i32 %10, 16
  %85 = and i32 %84, 16777216
  %86 = and i32 %83, -16777217
  %87 = or disjoint i32 %86, %85
  store i32 %87, ptr %50, align 8
  %88 = load i32, ptr @flag_enable_icf_debug, align 4, !tbaa !130
  %89 = icmp ne i32 %88, 0
  %90 = icmp eq ptr %2, null
  %91 = and i1 %90, %89
  br i1 %91, label %92, label %100, !prof !196

92:                                               ; preds = %82
  %93 = load ptr, ptr @debug_hooks, align 8, !tbaa !115
  %94 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %93, i64 0, i32 27
  %95 = load ptr, ptr %94, align 8, !tbaa !370
  %96 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !126
  %98 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !126
  tail call void %95(ptr noundef %97, i32 noundef %99) #23
  br label %100

100:                                              ; preds = %92, %82
  store i32 %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  br i1 %23, label %106, label %101, !prof !135

101:                                              ; preds = %100
  %102 = sub nsw i64 %5, %15
  %103 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %102) #23
  %104 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %105 = sub i32 %104, %14
  store i32 %105, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1, !tbaa !372
  br label %106

106:                                              ; preds = %101, %100
  %107 = phi ptr [ %103, %101 ], [ %12, %100 ]
  %108 = phi i64 [ %102, %101 ], [ %5, %100 ]
  %109 = load i32, ptr @target_flags, align 4, !tbaa !130
  %110 = and i32 %109, 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %135, !prof !196

112:                                              ; preds = %106
  %113 = tail call i32 @ix86_cfun_abi() #23
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %135, label %115

115:                                              ; preds = %112
  %116 = icmp eq i64 %108, 0
  br i1 %116, label %139, label %117

117:                                              ; preds = %115
  br i1 %70, label %122, label %118

118:                                              ; preds = %117
  %119 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %120 = trunc i64 %108 to i32
  %121 = sub i32 %119, %120
  store i32 %121, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  br label %139

122:                                              ; preds = %117
  %123 = load i32, ptr @flag_defer_pop, align 4, !tbaa !130
  %124 = icmp ne i32 %123, 0
  %125 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4
  %126 = and i32 %10, 3
  %127 = or i32 %125, %126
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %124, i1 %128, i1 false
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, ptr @x_rtl, align 8, !tbaa !235
  %132 = trunc i64 %108 to i32
  %133 = add i32 %131, %132
  store i32 %133, ptr @x_rtl, align 8, !tbaa !235
  br label %139

134:                                              ; preds = %122
  tail call void @adjust_stack(ptr noundef %107) #23
  br label %139

135:                                              ; preds = %112, %106
  %136 = icmp eq i32 %14, 0
  br i1 %136, label %139, label %137, !prof !135

137:                                              ; preds = %135
  %138 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #23
  tail call void @anti_adjust_stack(ptr noundef %138) #23
  br label %139

139:                                              ; preds = %135, %137, %115, %130, %134, %118
  ret void
}

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @emit_group_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @avoid_likely_spilled_reg(ptr noundef %0) unnamed_addr #13 !prof !114 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !126
  %8 = icmp ult i32 %7, 53
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !130
  switch i32 %12, label %19 [
    i32 1, label %13
    i32 2, label %13
    i32 3, label %13
    i32 4, label %13
    i32 7, label %13
    i32 5, label %13
    i32 6, label %13
    i32 17, label %13
    i32 14, label %13
    i32 15, label %13
  ]

13:                                               ; preds = %9, %9, %9, %9, %9, %9, %9, %9, %9, %9
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !130
  %14 = load i32, ptr %0, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = tail call ptr @gen_reg_rtx(i32 noundef %16) #23
  store i32 1, ptr @generating_concat_p, align 4, !tbaa !130
  %18 = tail call ptr @emit_move_insn(ptr noundef %17, ptr noundef nonnull %0) #23
  br label %19

19:                                               ; preds = %9, %1, %5, %13
  %20 = phi ptr [ %17, %13 ], [ %0, %5 ], [ %0, %1 ], [ %0, %9 ]
  ret ptr %20
}

declare ptr @copy_blkmode_from_reg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @emit_stack_restore(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @restore_fixed_argument_area(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #13 !prof !114 {
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = sext i32 %3 to i64
  %9 = tail call ptr @plus_constant(ptr noundef %1, i64 noundef %8) #23
  %10 = tail call ptr @memory_address_addr_space(i32 noundef %7, ptr noundef %9, i8 noundef zeroext 0) #23
  %11 = tail call ptr @gen_rtx_MEM(i32 noundef %7, ptr noundef %10) #23
  tail call void @set_mem_align(ptr noundef %11, i32 noundef 32) #23
  %12 = icmp eq i32 %7, 1
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = tail call ptr @emit_move_insn(ptr noundef %11, ptr noundef nonnull %0) #23
  br label %22

15:                                               ; preds = %4
  %16 = tail call ptr @validize_mem(ptr noundef nonnull %0) #23
  %17 = add i32 %2, 1
  %18 = sub i32 %17, %3
  %19 = sext i32 %18 to i64
  %20 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %19) #23
  %21 = tail call ptr @emit_block_move(ptr noundef %11, ptr noundef %16, ptr noundef %20, i32 noundef 2) #23
  br label %22

22:                                               ; preds = %15, %13
  ret void
}

declare ptr @emit_block_move(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @update_nonlocal_goto_save_area() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @fixup_tail_calls() local_unnamed_addr #13 !prof !373 {
  %1 = tail call ptr @get_insns() #23
  %2 = icmp eq ptr %1, null
  br i1 %2, label %24, label %3, !prof !171

3:                                                ; preds = %0, %20
  %4 = phi ptr [ %22, %20 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 13
  br i1 %7, label %8, label %12, !prof !374

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !126
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %24, label %12, !prof !375

12:                                               ; preds = %8, %3
  %13 = tail call ptr @find_reg_note(ptr noundef nonnull %4, i32 noundef 3, ptr noundef null) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !376

15:                                               ; preds = %12
  tail call void @remove_note(ptr noundef nonnull %4, ptr noundef nonnull %13) #23
  br label %16

16:                                               ; preds = %15, %12
  %17 = tail call ptr @find_reg_note(ptr noundef nonnull %4, i32 noundef 3, ptr noundef null) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !377

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3207, ptr noundef nonnull @.str.1) #23
  br label %20

20:                                               ; preds = %16, %19
  %21 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !126
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %3, !prof !378, !llvm.loop !379

24:                                               ; preds = %20, %8, %0
  ret void
}

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @emit_library_call(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ...) local_unnamed_addr #13 !prof !114 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #23
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call fastcc ptr @emit_library_call_value_1(i32 noundef 0, ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5)
  call void @llvm.va_end(ptr %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @emit_library_call_value_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #13 !prof !114 {
  %8 = alloca %struct.args_size, align 8
  %9 = alloca %struct.ix86_args, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #23
  %14 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #23
  store ptr null, ptr %10, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #23
  store i32 0, ptr %11, align 4, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  store i32 0, ptr %12, align 4, !tbaa !130
  %15 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  %16 = load ptr, ptr @stack_usage_map, align 8, !tbaa !115
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !206
  %18 = tail call ptr %17(ptr noundef null, i32 noundef 0) #23
  %19 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef null) #23
  %20 = add i32 %3, -1
  %21 = icmp ult i32 %20, 5
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = zext nneg i32 %20 to i64
  %24 = getelementptr inbounds [5 x i32], ptr @switch.table.emit_library_call_value_1, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %22, %7
  %27 = phi i32 [ 64, %7 ], [ %25, %22 ]
  %28 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !271
  %29 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !130
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 %29, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !271
  br label %32

32:                                               ; preds = %31, %26
  %33 = icmp ne i32 %4, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %32
  %35 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !380
  %36 = tail call ptr %35(i32 noundef %4, i32 noundef 0) #23
  %37 = tail call i32 @aggregate_value_p(ptr noundef %36, ptr noundef null) #23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = icmp eq ptr %2, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %2, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %39
  %46 = tail call ptr @assign_temp(ptr noundef %36, i32 noundef 0, i32 noundef 1, i32 noundef 1) #23
  br label %47

47:                                               ; preds = %41, %45
  %48 = phi ptr [ %46, %45 ], [ %2, %41 ]
  %49 = and i32 %27, 200
  br label %52

50:                                               ; preds = %32
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !115
  br label %52

52:                                               ; preds = %34, %47, %50
  %53 = phi ptr [ %36, %47 ], [ %36, %34 ], [ %51, %50 ]
  %54 = phi i32 [ %49, %47 ], [ %27, %34 ], [ %27, %50 ]
  %55 = phi ptr [ %48, %47 ], [ null, %34 ], [ null, %50 ]
  %56 = add nsw i32 %5, 1
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %57, 112
  %59 = alloca i8, i64 %58, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %59, i8 0, i64 %58, i1 false)
  call void @init_cumulative_args(ptr noundef nonnull %9, ptr noundef null, ptr noundef %1, ptr noundef null) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @push_temp_slots() #23
  %60 = icmp ne ptr %55, null
  %61 = icmp eq ptr %18, null
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %106

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !126
  %66 = load i32, ptr %65, align 8
  %67 = trunc i32 %66 to i16
  switch i16 %67, label %68 [
    i16 37, label %79
    i16 43, label %79
  ]

68:                                               ; preds = %63
  %69 = and i32 %66, 65535
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !130
  %73 = icmp eq i32 %72, 9
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %65) #23
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %68
  %78 = call ptr @force_operand(ptr noundef nonnull %65, ptr noundef null) #23
  br label %79

79:                                               ; preds = %63, %63, %77, %74
  %80 = phi ptr [ %65, %74 ], [ %78, %77 ], [ %65, %63 ], [ %65, %63 ]
  store ptr %80, ptr %59, align 16, !tbaa !381
  %81 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 1
  store i32 16, ptr %81, align 8, !tbaa !383
  %82 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 3
  store i32 0, ptr %82, align 8, !tbaa !384
  %83 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef 16, ptr noundef null, i32 noundef 1) #23
  %84 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 2
  store ptr %83, ptr %84, align 16, !tbaa !385
  %85 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !240
  %86 = call i32 %85(ptr noundef nonnull %9, i32 noundef 16, ptr noundef null, i8 noundef zeroext 1) #23
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3422, ptr noundef nonnull @.str.1) #23
  br label %89

89:                                               ; preds = %79, %88
  %90 = load ptr, ptr %84, align 16, !tbaa !385
  %91 = icmp ne ptr %90, null
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 4
  call void @locate_and_pad_parm(i32 noundef 16, ptr noundef null, i32 noundef %92, i32 noundef 0, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %93) #23
  %94 = load ptr, ptr %84, align 16, !tbaa !385
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %82, align 8, !tbaa !384
  %98 = icmp ne i32 %97, 0
  %99 = icmp sgt i32 %19, 0
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96, %89
  %102 = load i64, ptr %93, align 16, !tbaa !386
  %103 = load i64, ptr %8, align 8, !tbaa !246
  %104 = add nsw i64 %103, %102
  store i64 %104, ptr %8, align 8, !tbaa !246
  br label %105

105:                                              ; preds = %96, %101
  call void @function_arg_advance(ptr noundef nonnull %9, i32 noundef 16, ptr noundef null, i32 noundef 1) #23
  br label %106

106:                                              ; preds = %105, %52
  %107 = phi i32 [ 0, %52 ], [ 1, %105 ]
  %108 = phi i32 [ %5, %52 ], [ %56, %105 ]
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %237

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 2
  %112 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 3
  %113 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 2
  %114 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 3
  %115 = icmp sgt i32 %19, 0
  %116 = zext nneg i32 %107 to i64
  %117 = zext i32 %108 to i64
  br label %118

118:                                              ; preds = %110, %234
  %119 = phi i64 [ %116, %110 ], [ %235, %234 ]
  %120 = phi i32 [ %54, %110 ], [ %207, %234 ]
  %121 = load i32, ptr %6, align 8
  %122 = icmp ult i32 %121, 41
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load ptr, ptr %112, align 8
  %125 = zext nneg i32 %121 to i64
  %126 = getelementptr i8, ptr %124, i64 %125
  %127 = add nuw nsw i32 %121, 8
  store i32 %127, ptr %6, align 8
  br label %131

128:                                              ; preds = %118
  %129 = load ptr, ptr %111, align 8
  %130 = getelementptr i8, ptr %129, i64 8
  store ptr %130, ptr %111, align 8
  br label %131

131:                                              ; preds = %128, %123
  %132 = phi ptr [ %126, %123 ], [ %129, %128 ]
  %133 = load ptr, ptr %132, align 8
  %134 = load i32, ptr %6, align 8
  %135 = icmp ult i32 %134, 41
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load ptr, ptr %114, align 8
  %138 = zext nneg i32 %134 to i64
  %139 = getelementptr i8, ptr %137, i64 %138
  %140 = add nuw nsw i32 %134, 8
  store i32 %140, ptr %6, align 8
  br label %144

141:                                              ; preds = %131
  %142 = load ptr, ptr %113, align 8
  %143 = getelementptr i8, ptr %142, i64 8
  store ptr %143, ptr %113, align 8
  br label %144

144:                                              ; preds = %141, %136
  %145 = phi ptr [ %139, %136 ], [ %142, %141 ]
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  %149 = load i32, ptr %133, align 8
  %150 = lshr i32 %149, 16
  %151 = and i32 %150, 255
  %152 = icmp eq i32 %151, %146
  %153 = icmp eq i32 %151, 0
  %154 = or i1 %152, %153
  br i1 %154, label %156, label %155

155:                                              ; preds = %148, %144
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3449, ptr noundef nonnull @.str.1) #23
  br label %156

156:                                              ; preds = %148, %155
  %157 = load i32, ptr %133, align 8
  %158 = trunc i32 %157 to i16
  switch i16 %158, label %159 [
    i16 37, label %170
    i16 43, label %170
  ]

159:                                              ; preds = %156
  %160 = and i32 %157, 65535
  %161 = zext nneg i32 %160 to i64
  %162 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !130
  %164 = icmp eq i32 %163, 9
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %133) #23
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165, %159
  %169 = call ptr @force_operand(ptr noundef nonnull %133, ptr noundef null) #23
  br label %170

170:                                              ; preds = %156, %156, %168, %165
  %171 = phi ptr [ %133, %165 ], [ %169, %168 ], [ %133, %156 ], [ %133, %156 ]
  %172 = call zeroext i8 @pass_by_reference(ptr noundef nonnull %9, i32 noundef %146, ptr noundef null, i8 noundef zeroext 1) #23
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %204, label %174

174:                                              ; preds = %170
  %175 = call zeroext i8 @reference_callee_copied(ptr noundef nonnull %9, i32 noundef %146, ptr noundef null, i8 noundef zeroext 1) #23
  %176 = icmp eq i8 %175, 0
  %177 = and i32 %120, 1
  %178 = icmp eq i32 %177, 0
  %179 = and i32 %120, -4
  %180 = or disjoint i32 %179, 2
  %181 = select i1 %178, i32 %120, i32 %180
  %182 = load i32, ptr %171, align 8
  %183 = and i32 %182, 65535
  %184 = icmp ne i32 %183, 43
  %185 = select i1 %184, i1 true, i1 %176
  br i1 %185, label %186, label %191

186:                                              ; preds = %174
  %187 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !380
  %188 = call ptr %187(i32 noundef %146, i32 noundef 0) #23
  %189 = call ptr @assign_temp(ptr noundef %188, i32 noundef 0, i32 noundef 1, i32 noundef 1) #23
  %190 = call ptr @emit_move_insn(ptr noundef %189, ptr noundef nonnull %171) #23
  br label %191

191:                                              ; preds = %174, %186
  %192 = phi ptr [ %189, %186 ], [ %171, %174 ]
  %193 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %192) #23
  %194 = load ptr, ptr %10, align 8, !tbaa !115
  %195 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %193, ptr noundef %194) #23
  store ptr %195, ptr %10, align 8, !tbaa !115
  br i1 %176, label %196, label %200

196:                                              ; preds = %191
  %197 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %192) #23
  %198 = load ptr, ptr %10, align 8, !tbaa !115
  %199 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %197, ptr noundef %198) #23
  store ptr %199, ptr %10, align 8, !tbaa !115
  br label %200

200:                                              ; preds = %196, %191
  %201 = getelementptr inbounds %struct.rtx_def, ptr %192, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !126
  %203 = call ptr @force_operand(ptr noundef %202, ptr noundef null) #23
  br label %204

204:                                              ; preds = %200, %170
  %205 = phi i32 [ 16, %200 ], [ %146, %170 ]
  %206 = phi ptr [ %203, %200 ], [ %171, %170 ]
  %207 = phi i32 [ %181, %200 ], [ %120, %170 ]
  %208 = getelementptr inbounds %struct.arg, ptr %59, i64 %119
  store ptr %206, ptr %208, align 16, !tbaa !381
  %209 = getelementptr inbounds %struct.arg, ptr %59, i64 %119, i32 1
  store i32 %205, ptr %209, align 8, !tbaa !383
  %210 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef %205, ptr noundef null, i32 noundef 1) #23
  %211 = getelementptr inbounds %struct.arg, ptr %59, i64 %119, i32 2
  store ptr %210, ptr %211, align 16, !tbaa !385
  %212 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !240
  %213 = call i32 %212(ptr noundef nonnull %9, i32 noundef %205, ptr noundef null, i8 noundef zeroext 1) #23
  %214 = getelementptr inbounds %struct.arg, ptr %59, i64 %119, i32 3
  store i32 %213, ptr %214, align 8, !tbaa !384
  %215 = load ptr, ptr %211, align 16, !tbaa !385
  %216 = icmp ne ptr %215, null
  %217 = zext i1 %216 to i32
  %218 = getelementptr inbounds %struct.arg, ptr %59, i64 %119, i32 4
  call void @locate_and_pad_parm(i32 noundef %205, ptr noundef null, i32 noundef %217, i32 noundef %213, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %218) #23
  %219 = getelementptr inbounds %struct.args_size, ptr %218, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !387
  %221 = icmp eq ptr %220, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %204
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3509, ptr noundef nonnull @.str.1) #23
  br label %223

223:                                              ; preds = %204, %222
  %224 = load ptr, ptr %211, align 16, !tbaa !385
  %225 = icmp eq ptr %224, null
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  %227 = load i32, ptr %214, align 8, !tbaa !384
  %228 = icmp ne i32 %227, 0
  %229 = select i1 %228, i1 true, i1 %115
  br i1 %229, label %230, label %234

230:                                              ; preds = %226, %223
  %231 = load i64, ptr %218, align 16, !tbaa !386
  %232 = load i64, ptr %8, align 8, !tbaa !246
  %233 = add nsw i64 %232, %231
  store i64 %233, ptr %8, align 8, !tbaa !246
  br label %234

234:                                              ; preds = %226, %230
  call void @function_arg_advance(ptr noundef nonnull %9, i32 noundef %205, ptr noundef null, i32 noundef 1) #23
  %235 = add nuw nsw i64 %119, 1
  %236 = icmp eq i64 %235, %117
  br i1 %236, label %237, label %118, !llvm.loop !388

237:                                              ; preds = %234, %106
  %238 = phi i32 [ %54, %106 ], [ %207, %234 ]
  call void @assemble_external_libcall(ptr noundef %1) #23
  %239 = load i64, ptr %8, align 8
  %240 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %241 = sext i32 %240 to i64
  %242 = add nsw i64 %239, %241
  %243 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !130
  %244 = lshr i32 %243, 3
  %245 = zext nneg i32 %244 to i64
  %246 = add nsw i64 %242, %245
  %247 = freeze i64 %246
  %248 = add i64 %247, -1
  %249 = srem i64 %248, %245
  %250 = add nsw i64 %249, %241
  %251 = sub i64 %248, %250
  %252 = sext i32 %19 to i64
  %253 = call i64 @llvm.smax.i64(i64 %251, i64 %252)
  store i64 %253, ptr %8, align 8, !tbaa !246
  %254 = call i32 @ix86_function_type_abi(ptr noundef null) #23
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %259, label %256

256:                                              ; preds = %237
  %257 = load i64, ptr %8, align 8, !tbaa !246
  %258 = sub nsw i64 %257, %252
  store i64 %258, ptr %8, align 8, !tbaa !246
  br label %259

259:                                              ; preds = %256, %237
  %260 = load i64, ptr %8, align 8, !tbaa !246
  %261 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !288
  %262 = sext i32 %261 to i64
  %263 = icmp sgt i64 %260, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = trunc i64 %260 to i32
  store i32 %265, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !288
  br label %266

266:                                              ; preds = %264, %259
  %267 = load i32, ptr @target_flags, align 4, !tbaa !130
  %268 = and i32 %267, 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  %271 = call i32 @ix86_cfun_abi() #23
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %302

273:                                              ; preds = %270, %266
  %274 = load i64, ptr %8, align 8, !tbaa !246
  %275 = trunc i64 %274 to i32
  %276 = call i32 @ix86_function_type_abi(ptr noundef null) #23
  %277 = icmp eq i32 %276, 1
  %278 = select i1 %277, i32 0, i32 %19
  %279 = add nsw i32 %278, %275
  %280 = call i32 @llvm.smax.i32(i32 %15, i32 %279)
  store i32 %280, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  %281 = sext i32 %280 to i64
  %282 = call ptr @xmalloc(i64 noundef %281) #23
  store ptr %282, ptr @stack_usage_map, align 8, !tbaa !115
  %283 = icmp eq i32 %15, 0
  br i1 %283, label %286, label %284

284:                                              ; preds = %273
  %285 = sext i32 %15 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %282, ptr align 1 %16, i64 %285, i1 false)
  br label %286

286:                                              ; preds = %284, %273
  %287 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  %288 = icmp eq i32 %15, %287
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = sext i32 %15 to i64
  %291 = getelementptr inbounds i8, ptr %282, i64 %290
  %292 = sub nsw i32 %287, %15
  %293 = sext i32 %292 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %291, i8 0, i64 %293, i1 false)
  br label %294

294:                                              ; preds = %289, %286
  %295 = load i32, ptr @virtuals_instantiated, align 4, !tbaa !130
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !115
  %299 = call ptr @plus_constant(ptr noundef %298, i64 noundef 0) #23
  br label %313

300:                                              ; preds = %294
  %301 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !115
  br label %313

302:                                              ; preds = %270
  %303 = load i32, ptr @target_flags, align 4, !tbaa !130
  %304 = and i32 %303, 8196
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  %307 = call i32 @ix86_cfun_abi() #23
  %308 = icmp eq i32 %307, 1
  br i1 %308, label %309, label %313

309:                                              ; preds = %306, %302
  %310 = load i64, ptr %8, align 8, !tbaa !246
  %311 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %310) #23
  %312 = call ptr @push_block(ptr noundef %311, i32 noundef 0, i32 noundef 0) #23
  br label %313

313:                                              ; preds = %306, %309, %297, %300
  %314 = phi ptr [ %282, %297 ], [ %282, %300 ], [ null, %309 ], [ null, %306 ]
  %315 = phi ptr [ %299, %297 ], [ %301, %300 ], [ %312, %309 ], [ null, %306 ]
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %321

317:                                              ; preds = %313
  %318 = load i64, ptr %8, align 8, !tbaa !246
  %319 = sub nsw i64 %318, %239
  %320 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %319) #23
  call void @anti_adjust_stack(ptr noundef %320) #23
  br label %321

321:                                              ; preds = %317, %313
  %322 = load i32, ptr @target_flags, align 4, !tbaa !130
  %323 = and i32 %322, 4
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %321
  %326 = call i32 @ix86_cfun_abi() #23
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %328, label %330

328:                                              ; preds = %325, %321
  %329 = call fastcc ptr @save_fixed_argument_area(i32 noundef %19, ptr noundef %315, ptr noundef nonnull %11, ptr noundef nonnull %12)
  br label %330

330:                                              ; preds = %328, %325
  %331 = phi ptr [ %329, %328 ], [ null, %325 ]
  %332 = icmp sgt i32 %108, 0
  br i1 %332, label %333, label %484

333:                                              ; preds = %330
  %334 = and i32 %238, 1
  %335 = icmp eq i32 %334, 0
  %336 = and i32 %238, 2
  %337 = icmp eq i32 %336, 0
  %338 = sext i32 %19 to i64
  %339 = zext nneg i32 %108 to i64
  br label %340

340:                                              ; preds = %333, %481
  %341 = phi i64 [ %339, %333 ], [ %343, %481 ]
  %342 = phi i32 [ 0, %333 ], [ %482, %481 ]
  %343 = add nsw i64 %341, -1
  %344 = getelementptr inbounds %struct.arg, ptr %59, i64 %343
  %345 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 1
  %346 = load i32, ptr %345, align 8, !tbaa !383
  %347 = load ptr, ptr %344, align 16, !tbaa !381
  %348 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 2
  %349 = load ptr, ptr %348, align 16, !tbaa !385
  %350 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 3
  %351 = load i32, ptr %350, align 8, !tbaa !384
  %352 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 4
  %353 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 4, i32 5
  %354 = load i32, ptr %353, align 4, !tbaa !389
  %355 = icmp ne ptr %349, null
  %356 = icmp eq i32 %351, 0
  %357 = select i1 %355, i1 %356, i1 false
  br i1 %357, label %481, label %358

358:                                              ; preds = %340
  %359 = load i32, ptr @target_flags, align 4, !tbaa !130
  %360 = and i32 %359, 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %358
  %363 = call i32 @ix86_cfun_abi() #23
  %364 = icmp eq i32 %363, 1
  br i1 %364, label %365, label %413

365:                                              ; preds = %362, %358
  %366 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 4, i32 2
  %367 = load i64, ptr %366, align 16, !tbaa !390
  %368 = trunc i64 %367 to i32
  %369 = load i64, ptr %352, align 16, !tbaa !386
  %370 = add i64 %369, %367
  %371 = trunc i64 %370 to i32
  %372 = call i32 @llvm.smax.i32(i32 %19, i32 %368)
  %373 = icmp slt i32 %372, %371
  br i1 %373, label %374, label %413

374:                                              ; preds = %365
  %375 = load ptr, ptr @stack_usage_map, align 8, !tbaa !115
  %376 = shl i64 %367, 32
  %377 = ashr exact i64 %376, 32
  %378 = call i64 @llvm.smax.i64(i64 %338, i64 %377)
  %379 = trunc i64 %378 to i32
  %380 = add i32 %379, %371
  %381 = sub i32 %380, %372
  br label %386

382:                                              ; preds = %386
  %383 = add nsw i64 %387, 1
  %384 = trunc i64 %383 to i32
  %385 = icmp eq i32 %381, %384
  br i1 %385, label %413, label %386, !llvm.loop !391

386:                                              ; preds = %374, %382
  %387 = phi i64 [ %378, %374 ], [ %383, %382 ]
  %388 = getelementptr inbounds i8, ptr %375, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !126
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %382, label %391

391:                                              ; preds = %386
  %392 = trunc i64 %369 to i32
  %393 = shl i32 %392, 3
  %394 = call i32 @mode_for_size(i32 noundef %393, i32 noundef 2, i32 noundef 1) #23
  %395 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 4, i32 1
  %396 = load i64, ptr %395, align 16, !tbaa !392
  %397 = call ptr @plus_constant(ptr noundef %315, i64 noundef %396) #23
  %398 = call ptr @memory_address_addr_space(i32 noundef %394, ptr noundef %397, i8 noundef zeroext 0) #23
  %399 = call ptr @gen_rtx_MEM(i32 noundef %394, ptr noundef %398) #23
  %400 = icmp eq i32 %394, 1
  br i1 %400, label %401, label %409

401:                                              ; preds = %391
  %402 = load i64, ptr %352, align 16, !tbaa !386
  %403 = call ptr @assign_stack_temp(i32 noundef 1, i64 noundef %402, i32 noundef 0) #23
  %404 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 5
  store ptr %403, ptr %404, align 8, !tbaa !393
  %405 = call ptr @validize_mem(ptr noundef %403) #23
  %406 = load i64, ptr %352, align 16, !tbaa !386
  %407 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %406) #23
  %408 = call ptr @emit_block_move(ptr noundef %405, ptr noundef %399, ptr noundef %407, i32 noundef 2) #23
  br label %413

409:                                              ; preds = %391
  %410 = call ptr @gen_reg_rtx(i32 noundef %394) #23
  %411 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 5
  store ptr %410, ptr %411, align 8, !tbaa !393
  %412 = call ptr @emit_move_insn(ptr noundef %410, ptr noundef %399) #23
  br label %413

413:                                              ; preds = %382, %365, %401, %409, %362
  %414 = phi i32 [ 0, %362 ], [ %368, %409 ], [ %368, %401 ], [ %368, %365 ], [ %368, %382 ]
  %415 = phi i32 [ 0, %362 ], [ %371, %409 ], [ %371, %401 ], [ %371, %365 ], [ %371, %382 ]
  %416 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 4, i32 1
  %417 = load i64, ptr %416, align 16, !tbaa !392
  %418 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %417) #23
  %419 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 4, i32 3
  %420 = getelementptr inbounds %struct.arg, ptr %59, i64 %343, i32 4, i32 3, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !394
  %422 = icmp eq ptr %421, null
  br i1 %422, label %423, label %426

423:                                              ; preds = %413
  %424 = load i64, ptr %419, align 16, !tbaa !395
  %425 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %424) #23
  br label %433

426:                                              ; preds = %413
  %427 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !115
  %428 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %427, ptr noundef nonnull %421) #23
  %429 = load i64, ptr %419, align 16, !tbaa !395
  %430 = call ptr @size_int_kind(i64 noundef %429, i32 noundef 1) #23
  %431 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %428, ptr noundef %430) #23
  %432 = call ptr @expand_expr_real(ptr noundef %431, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #23
  br label %433

433:                                              ; preds = %426, %423
  %434 = phi ptr [ %425, %423 ], [ %432, %426 ]
  call void @emit_push_insn(ptr noundef %347, i32 noundef %346, ptr noundef null, ptr noundef null, i32 noundef %354, i32 noundef %351, ptr noundef %349, i32 noundef 0, ptr noundef %315, ptr noundef %418, i32 noundef %19, ptr noundef %434) #23
  %435 = load i32, ptr @target_flags, align 4, !tbaa !130
  %436 = and i32 %435, 4
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %443

438:                                              ; preds = %433
  %439 = call i32 @ix86_cfun_abi() #23
  %440 = icmp eq i32 %439, 1
  %441 = icmp slt i32 %414, %415
  %442 = and i1 %440, %441
  br i1 %442, label %445, label %455

443:                                              ; preds = %433
  %444 = icmp slt i32 %414, %415
  br i1 %444, label %445, label %455

445:                                              ; preds = %438, %443
  %446 = load ptr, ptr @stack_usage_map, align 8, !tbaa !115
  %447 = sext i32 %414 to i64
  %448 = getelementptr i8, ptr %446, i64 %447
  %449 = add i32 %414, 1
  %450 = call i32 @llvm.smax.i32(i32 %415, i32 %449)
  %451 = xor i32 %414, -1
  %452 = add i32 %450, %451
  %453 = zext i32 %452 to i64
  %454 = add nuw nsw i64 %453, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %448, i8 1, i64 %454, i1 false), !tbaa !126
  br label %455

455:                                              ; preds = %445, %443, %438
  %456 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  %457 = add nsw i32 %456, 1
  store i32 %457, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  br i1 %335, label %458, label %466

458:                                              ; preds = %455
  br i1 %337, label %481, label %459

459:                                              ; preds = %458
  %460 = load i32, ptr @target_flags, align 4, !tbaa !130
  %461 = and i32 %460, 4
  %462 = icmp eq i32 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %459
  %464 = call i32 @ix86_cfun_abi() #23
  %465 = icmp eq i32 %464, 1
  br i1 %465, label %466, label %481

466:                                              ; preds = %463, %459, %455
  br i1 %316, label %470, label %467

467:                                              ; preds = %466
  %468 = load i64, ptr %416, align 16, !tbaa !392
  %469 = call ptr @plus_constant(ptr noundef nonnull %315, i64 noundef %468) #23
  br label %474

470:                                              ; preds = %466
  %471 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !115
  %472 = call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef 16) #23
  %473 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %471, ptr noundef %472) #23
  br label %474

474:                                              ; preds = %470, %467
  %475 = phi ptr [ %469, %467 ], [ %473, %470 ]
  %476 = load i32, ptr %345, align 8, !tbaa !383
  %477 = call ptr @gen_rtx_MEM(i32 noundef %476, ptr noundef %475) #23
  %478 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %477) #23
  %479 = load ptr, ptr %10, align 8, !tbaa !115
  %480 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %478, ptr noundef %479) #23
  store ptr %480, ptr %10, align 8, !tbaa !115
  br label %481

481:                                              ; preds = %458, %463, %474, %340
  %482 = add nuw nsw i32 %342, 1
  %483 = icmp eq i32 %482, %108
  br i1 %483, label %484, label %340, !llvm.loop !396

484:                                              ; preds = %481, %330
  %485 = load i32, ptr %1, align 8
  %486 = and i32 %485, 65535
  %487 = icmp eq i32 %486, 45
  br i1 %487, label %490, label %488

488:                                              ; preds = %484
  %489 = call ptr @memory_address_addr_space(i32 noundef 14, ptr noundef nonnull %1, i8 noundef zeroext 0) #23
  br label %490

490:                                              ; preds = %484, %488
  %491 = phi ptr [ %489, %488 ], [ %1, %484 ]
  %492 = icmp sgt i32 %108, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %490
  %494 = zext nneg i32 %108 to i64
  br label %499

495:                                              ; preds = %526, %490
  %496 = icmp sgt i32 %108, 0
  br i1 %496, label %497, label %557

497:                                              ; preds = %495
  %498 = zext nneg i32 %108 to i64
  br label %531

499:                                              ; preds = %493, %526
  %500 = phi i64 [ %494, %493 ], [ %502, %526 ]
  %501 = phi i32 [ 0, %493 ], [ %529, %526 ]
  %502 = add nsw i64 %500, -1
  %503 = getelementptr inbounds %struct.arg, ptr %59, i64 %502
  %504 = getelementptr inbounds %struct.arg, ptr %59, i64 %502, i32 1
  %505 = load i32, ptr %504, align 8, !tbaa !383
  %506 = load ptr, ptr %503, align 16, !tbaa !381
  %507 = getelementptr inbounds %struct.arg, ptr %59, i64 %502, i32 2
  %508 = load ptr, ptr %507, align 16, !tbaa !385
  %509 = getelementptr inbounds %struct.arg, ptr %59, i64 %502, i32 3
  %510 = load i32, ptr %509, align 8, !tbaa !384
  %511 = icmp ne ptr %508, null
  br i1 %511, label %512, label %521

512:                                              ; preds = %499
  %513 = load i32, ptr %508, align 8
  %514 = and i32 %513, 65535
  %515 = icmp eq i32 %514, 15
  br i1 %515, label %516, label %521

516:                                              ; preds = %512
  %517 = zext i32 %505 to i64
  %518 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %517
  %519 = load i8, ptr %518, align 1, !tbaa !126
  %520 = zext i8 %519 to i32
  call void @emit_group_load(ptr noundef nonnull %508, ptr noundef %506, ptr noundef null, i32 noundef %520) #23
  br label %526

521:                                              ; preds = %512, %499
  %522 = icmp eq i32 %510, 0
  %523 = select i1 %511, i1 %522, i1 false
  br i1 %523, label %524, label %526

524:                                              ; preds = %521
  %525 = call ptr @emit_move_insn(ptr noundef nonnull %508, ptr noundef %506) #23
  br label %526

526:                                              ; preds = %521, %524, %516
  %527 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  %528 = add nsw i32 %527, 1
  store i32 %528, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  %529 = add nuw nsw i32 %501, 1
  %530 = icmp eq i32 %529, %108
  br i1 %530, label %495, label %499, !llvm.loop !397

531:                                              ; preds = %497, %554
  %532 = phi i64 [ 0, %497 ], [ %555, %554 ]
  %533 = getelementptr inbounds %struct.arg, ptr %59, i64 %532, i32 2
  %534 = load ptr, ptr %533, align 16, !tbaa !385
  %535 = icmp eq ptr %534, null
  br i1 %535, label %554, label %536

536:                                              ; preds = %531
  %537 = load i32, ptr %534, align 8
  %538 = and i32 %537, 65535
  %539 = icmp eq i32 %538, 15
  br i1 %539, label %540, label %541

540:                                              ; preds = %536
  call void @use_group_regs(ptr noundef nonnull %10, ptr noundef nonnull %534) #23
  br label %554

541:                                              ; preds = %536
  %542 = getelementptr inbounds %struct.arg, ptr %59, i64 %532, i32 3
  %543 = load i32, ptr %542, align 8, !tbaa !384
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %553, label %545

545:                                              ; preds = %541
  %546 = and i32 %543, 3
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %549, label %548

548:                                              ; preds = %545
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3780, ptr noundef nonnull @.str.1) #23
  br label %549

549:                                              ; preds = %545, %548
  %550 = sdiv i32 %543, 4
  %551 = getelementptr inbounds %struct.rtx_def, ptr %534, i64 0, i32 1
  %552 = load i32, ptr %551, align 8, !tbaa !126
  call void @use_regs(ptr noundef nonnull %10, i32 noundef %552, i32 noundef %550) #23
  br label %554

553:                                              ; preds = %541
  call void @use_reg(ptr noundef nonnull %10, ptr noundef nonnull %534) #23
  br label %554

554:                                              ; preds = %531, %549, %553, %540
  %555 = add nuw nsw i64 %532, 1
  %556 = icmp eq i64 %555, %498
  br i1 %556, label %557, label %531, !llvm.loop !398

557:                                              ; preds = %554, %495
  %558 = icmp ne ptr %18, null
  %559 = select i1 %60, i1 %558, i1 false
  br i1 %559, label %560, label %570

560:                                              ; preds = %557
  %561 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !126
  %563 = call ptr @force_operand(ptr noundef %562, ptr noundef null) #23
  %564 = call ptr @force_reg(i32 noundef 16, ptr noundef %563) #23
  %565 = call ptr @emit_move_insn(ptr noundef nonnull %18, ptr noundef %564) #23
  %566 = load i32, ptr %18, align 8
  %567 = and i32 %566, 65535
  %568 = icmp eq i32 %567, 37
  br i1 %568, label %569, label %570

569:                                              ; preds = %560
  call void @use_reg(ptr noundef nonnull %10, ptr noundef nonnull %18) #23
  br label %570

570:                                              ; preds = %560, %569, %557
  %571 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  %572 = add nsw i32 %571, 1
  store i32 %572, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  %573 = icmp eq ptr %55, null
  %574 = and i1 %33, %573
  br i1 %574, label %575, label %577

575:                                              ; preds = %570
  %576 = call ptr @hard_libcall_value(i32 noundef %4, ptr noundef nonnull %1) #23
  br label %577

577:                                              ; preds = %570, %575
  %578 = phi ptr [ %576, %575 ], [ null, %570 ]
  %579 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !286
  %580 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !130
  %581 = lshr i32 %580, 3
  %582 = add nsw i32 %581, -1
  %583 = and i32 %582, %579
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %586, label %585

585:                                              ; preds = %577
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3808, ptr noundef nonnull @.str.1) #23
  br label %586

586:                                              ; preds = %577, %585
  %587 = call ptr @get_last_insn() #23
  %588 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %589 = load ptr, ptr %588, align 8, !tbaa !126
  %590 = call ptr @get_identifier(ptr noundef %589) #23
  %591 = call ptr @build_function_type(ptr noundef %53, ptr noundef null) #23
  %592 = load i64, ptr %8, align 8, !tbaa !246
  %593 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !115
  %594 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef 0, ptr noundef %593, i32 noundef 1) #23
  %595 = add nsw i32 %14, 1
  %596 = load ptr, ptr %10, align 8, !tbaa !115
  call fastcc void @emit_call_1(ptr noundef %491, ptr noundef null, ptr noundef %590, ptr noundef %591, i64 noundef %239, i64 noundef %592, ptr noundef %594, ptr noundef %578, i32 noundef %595, ptr noundef %596, i32 noundef %238)
  %597 = and i32 %238, 8
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %617, label %599

599:                                              ; preds = %586
  %600 = call ptr @get_last_insn() #23
  %601 = load i32, ptr %600, align 8
  %602 = and i32 %601, 65535
  %603 = icmp eq i32 %602, 10
  br i1 %603, label %614, label %604

604:                                              ; preds = %599, %610
  %605 = phi ptr [ %607, %610 ], [ %600, %599 ]
  %606 = getelementptr inbounds %struct.rtx_def, ptr %605, i64 0, i32 1, i32 0, i32 0, i64 1
  %607 = load ptr, ptr %606, align 8, !tbaa !126
  %608 = icmp eq ptr %607, %587
  br i1 %608, label %609, label %610

609:                                              ; preds = %604
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3844, ptr noundef nonnull @.str.1) #23
  br label %610

610:                                              ; preds = %604, %609
  %611 = load i32, ptr %607, align 8
  %612 = and i32 %611, 65535
  %613 = icmp eq i32 %612, 10
  br i1 %613, label %614, label %604, !llvm.loop !399

614:                                              ; preds = %610, %599
  %615 = phi ptr [ %600, %599 ], [ %607, %610 ]
  %616 = call ptr @emit_barrier_after(ptr noundef nonnull %615) #23
  br label %617

617:                                              ; preds = %614, %586
  %618 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  %619 = add nsw i32 %618, -1
  store i32 %619, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !197
  call void @pop_temp_slots() #23
  %620 = icmp ne i32 %0, 0
  %621 = and i1 %620, %33
  br i1 %621, label %622, label %668

622:                                              ; preds = %617
  br i1 %60, label %623, label %629

623:                                              ; preds = %622
  %624 = icmp eq ptr %2, null
  %625 = select i1 %624, ptr %55, ptr %2
  %626 = icmp eq ptr %625, %55
  br i1 %626, label %668, label %627

627:                                              ; preds = %623
  %628 = call ptr @emit_move_insn(ptr noundef nonnull %625, ptr noundef nonnull %55) #23
  br label %668

629:                                              ; preds = %622
  %630 = load i32, ptr %578, align 8
  %631 = and i32 %630, 65535
  %632 = icmp eq i32 %631, 15
  br i1 %632, label %633, label %643

633:                                              ; preds = %629
  %634 = icmp eq ptr %2, null
  br i1 %634, label %635, label %637

635:                                              ; preds = %633
  %636 = call ptr @gen_reg_rtx(i32 noundef %4) #23
  br label %637

637:                                              ; preds = %635, %633
  %638 = phi ptr [ %636, %635 ], [ %2, %633 ]
  %639 = zext i32 %4 to i64
  %640 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %639
  %641 = load i8, ptr %640, align 1, !tbaa !126
  %642 = zext i8 %641 to i32
  call void @emit_group_store(ptr noundef %638, ptr noundef nonnull %578, ptr noundef null, i32 noundef %642) #23
  br label %668

643:                                              ; preds = %629
  %644 = lshr i32 %630, 16
  %645 = and i32 %644, 255
  %646 = icmp eq i32 %645, %4
  br i1 %646, label %663, label %647

647:                                              ; preds = %643
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #23
  %648 = load i64, ptr %53, align 8
  %649 = trunc i64 %648 to i32
  %650 = lshr i32 %649, 21
  %651 = and i32 %650, 1
  store i32 %651, ptr %13, align 4, !tbaa !130
  %652 = call i32 @promote_function_mode(ptr noundef nonnull %53, i32 noundef %4, ptr noundef nonnull %13, ptr noundef null, i32 noundef 1) #23
  %653 = load i32, ptr %578, align 8
  %654 = lshr i32 %653, 16
  %655 = and i32 %654, 255
  %656 = icmp eq i32 %652, %655
  br i1 %656, label %658, label %657

657:                                              ; preds = %647
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3880, ptr noundef nonnull @.str.1) #23
  br label %658

658:                                              ; preds = %647, %657
  %659 = load i32, ptr %578, align 8
  %660 = lshr i32 %659, 16
  %661 = and i32 %660, 255
  %662 = call ptr @convert_modes(i32 noundef %4, i32 noundef %661, ptr noundef nonnull %578, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #23
  br label %663

663:                                              ; preds = %658, %643
  %664 = phi ptr [ %662, %658 ], [ %578, %643 ]
  %665 = icmp eq ptr %2, null
  br i1 %665, label %668, label %666

666:                                              ; preds = %663
  %667 = call ptr @emit_move_insn(ptr noundef nonnull %2, ptr noundef %664) #23
  br label %668

668:                                              ; preds = %663, %627, %623, %666, %637, %617
  %669 = phi ptr [ %625, %627 ], [ %625, %623 ], [ %638, %637 ], [ %2, %666 ], [ %2, %617 ], [ %664, %663 ]
  %670 = load i32, ptr @target_flags, align 4, !tbaa !130
  %671 = and i32 %670, 4
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %676

673:                                              ; preds = %668
  %674 = call i32 @ix86_cfun_abi() #23
  %675 = icmp eq i32 %674, 1
  br i1 %675, label %676, label %714

676:                                              ; preds = %673, %668
  %677 = icmp eq ptr %331, null
  br i1 %677, label %681, label %678

678:                                              ; preds = %676
  %679 = load i32, ptr %12, align 4, !tbaa !130
  %680 = load i32, ptr %11, align 4, !tbaa !130
  call fastcc void @restore_fixed_argument_area(ptr noundef nonnull %331, ptr noundef %315, i32 noundef %679, i32 noundef %680)
  br label %681

681:                                              ; preds = %678, %676
  %682 = icmp sgt i32 %108, 0
  br i1 %682, label %683, label %713

683:                                              ; preds = %681
  %684 = zext nneg i32 %108 to i64
  br label %685

685:                                              ; preds = %683, %710
  %686 = phi i64 [ 0, %683 ], [ %711, %710 ]
  %687 = getelementptr inbounds %struct.arg, ptr %59, i64 %686, i32 5
  %688 = load ptr, ptr %687, align 8, !tbaa !393
  %689 = icmp eq ptr %688, null
  br i1 %689, label %710, label %690

690:                                              ; preds = %685
  %691 = load i32, ptr %688, align 8
  %692 = lshr i32 %691, 16
  %693 = and i32 %692, 255
  %694 = getelementptr inbounds %struct.arg, ptr %59, i64 %686, i32 4, i32 1
  %695 = load i64, ptr %694, align 16, !tbaa !392
  %696 = call ptr @plus_constant(ptr noundef %315, i64 noundef %695) #23
  %697 = call ptr @memory_address_addr_space(i32 noundef %693, ptr noundef %696, i8 noundef zeroext 0) #23
  %698 = call ptr @gen_rtx_MEM(i32 noundef %693, ptr noundef %697) #23
  %699 = icmp eq i32 %693, 1
  br i1 %699, label %700, label %707

700:                                              ; preds = %690
  %701 = getelementptr inbounds %struct.arg, ptr %59, i64 %686, i32 4
  %702 = load ptr, ptr %687, align 8, !tbaa !393
  %703 = call ptr @validize_mem(ptr noundef %702) #23
  %704 = load i64, ptr %701, align 16, !tbaa !386
  %705 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %704) #23
  %706 = call ptr @emit_block_move(ptr noundef %698, ptr noundef %703, ptr noundef %705, i32 noundef 2) #23
  br label %710

707:                                              ; preds = %690
  %708 = load ptr, ptr %687, align 8, !tbaa !393
  %709 = call ptr @emit_move_insn(ptr noundef %698, ptr noundef %708) #23
  br label %710

710:                                              ; preds = %700, %707, %685
  %711 = add nuw nsw i64 %686, 1
  %712 = icmp eq i64 %711, %684
  br i1 %712, label %713, label %685, !llvm.loop !400

713:                                              ; preds = %710, %681
  store i32 %15, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !130
  store ptr %16, ptr @stack_usage_map, align 8, !tbaa !115
  br label %714

714:                                              ; preds = %713, %673
  %715 = icmp eq ptr %314, null
  br i1 %715, label %717, label %716

716:                                              ; preds = %714
  call void @free(ptr noundef %314)
  br label %717

717:                                              ; preds = %716, %714
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #23
  ret ptr %669
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: cold nounwind uwtable
define dso_local ptr @emit_library_call_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ...) local_unnamed_addr #13 !prof !114 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  call void @llvm.va_start(ptr nonnull %6)
  %7 = call fastcc ptr @emit_library_call_value_1(i32 noundef 1, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6)
  call void @llvm.va_end(ptr %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  ret ptr %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @must_pass_in_stack_var_size(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #18 !prof !114 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = load i64, ptr %1, align 8
  %12 = lshr i64 %11, 18
  %13 = trunc i64 %12 to i8
  %14 = and i8 %13, 1
  br label %15

15:                                               ; preds = %10, %4, %2
  %16 = phi i8 [ 0, %2 ], [ 1, %4 ], [ %14, %10 ]
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @must_pass_in_stack_var_size_or_pad(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !401 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4, !prof !402

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %18, !prof !403

10:                                               ; preds = %4
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 262144
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18, !prof !403

14:                                               ; preds = %10
  %15 = icmp eq i32 %0, 1
  br i1 %15, label %16, label %18, !prof !402

16:                                               ; preds = %14
  %17 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %1) #23
  br label %18

18:                                               ; preds = %14, %16, %10, %4, %2
  %19 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 1, %10 ], [ 0, %16 ], [ 0, %14 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #19

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @first_field(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @pass_by_reference(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @reference_callee_copied(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @expr_size(ptr noundef) local_unnamed_addr #3

declare ptr @store_expr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @locate_and_pad_parm(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @function_arg_advance(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @promote_mode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @round_up_loc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @assemble_external(ptr noundef) local_unnamed_addr #3

declare void @push_temp_slots() local_unnamed_addr #3

declare void @pop_temp_slots() local_unnamed_addr #3

declare void @preserve_temp_slots(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #3

declare ptr @emit_group_load_into_temps(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #3

declare ptr @copy_to_mode_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @assign_stack_temp(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @validize_mem(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @check_sibcall_argument_overlap_1(ptr noundef readonly %0) unnamed_addr #20 !prof !404 !PGOFuncName !405 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %104, label %3, !prof !406

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %64, !prof !407

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  %10 = lshr i32 %4, 16
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !126
  %15 = zext i8 %14 to i64
  %16 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !287
  %17 = icmp eq ptr %16, %9
  br i1 %17, label %41, label %18, !prof !408

18:                                               ; preds = %7
  %19 = load i32, ptr %9, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 49
  br i1 %21, label %22, label %40, !prof !409

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !126
  %25 = icmp eq ptr %24, %16
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !126
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !126
  br label %41

35:                                               ; preds = %26
  br i1 %25, label %104, label %36

36:                                               ; preds = %22, %35
  %37 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !126
  %39 = icmp eq ptr %38, %16
  br i1 %39, label %104, label %40

40:                                               ; preds = %36, %18
  br label %104

41:                                               ; preds = %32, %7
  %42 = phi i64 [ %34, %32 ], [ 0, %7 ]
  %43 = icmp eq i8 %14, 0
  br i1 %43, label %104, label %44, !prof !269

44:                                               ; preds = %41
  %45 = load ptr, ptr @stored_args_map, align 8, !tbaa !115
  %46 = getelementptr inbounds %struct.simple_bitmap_def, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !410
  %48 = zext i32 %47 to i64
  br label %49

49:                                               ; preds = %61, %44
  %50 = phi i64 [ 0, %44 ], [ %62, %61 ]
  %51 = add i64 %50, %42
  %52 = icmp ult i64 %51, %48
  br i1 %52, label %53, label %61, !prof !364

53:                                               ; preds = %49
  %54 = lshr i64 %51, 6
  %55 = getelementptr inbounds %struct.simple_bitmap_def, ptr %45, i64 0, i32 3, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !183
  %57 = and i64 %51, 63
  %58 = shl nuw i64 1, %57
  %59 = and i64 %56, %58
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %104, !prof !364

61:                                               ; preds = %53, %49
  %62 = add nuw nsw i64 %50, 1
  %63 = icmp eq i64 %62, %15
  br i1 %63, label %104, label %49, !prof !411, !llvm.loop !412

64:                                               ; preds = %3
  %65 = zext nneg i32 %5 to i64
  %66 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !126
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %104, label %69, !prof !413

69:                                               ; preds = %64
  %70 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %65
  %71 = load ptr, ptr %70, align 8, !tbaa !115
  %72 = zext i8 %67 to i64
  br label %73

73:                                               ; preds = %69, %100
  %74 = phi i64 [ 0, %69 ], [ %101, %100 ]
  %75 = phi ptr [ %71, %69 ], [ %102, %100 ]
  %76 = load i8, ptr %75, align 1, !tbaa !126
  switch i8 %76, label %100 [
    i8 101, label %85
    i8 69, label %77
  ], !prof !414

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %79 = getelementptr inbounds [1 x %union.rtunion_def], ptr %78, i64 0, i64 %74
  %80 = load ptr, ptr %79, align 8, !tbaa !126
  %81 = load i32, ptr %80, align 8, !tbaa !415
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %77
  %84 = zext nneg i32 %81 to i64
  br label %94

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %87 = getelementptr inbounds [1 x %union.rtunion_def], ptr %86, i64 0, i64 %74
  %88 = load ptr, ptr %87, align 8, !tbaa !126
  %89 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %88), !range !307
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %100, label %104, !prof !417

91:                                               ; preds = %94
  %92 = add nuw nsw i64 %95, 1
  %93 = icmp eq i64 %92, %84
  br i1 %93, label %100, label %94, !llvm.loop !418

94:                                               ; preds = %83, %91
  %95 = phi i64 [ 0, %83 ], [ %92, %91 ]
  %96 = getelementptr inbounds %struct.rtvec_def, ptr %80, i64 0, i32 1, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !115
  %98 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %97), !range !307
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %91, label %104

100:                                              ; preds = %91, %77, %73, %85
  %101 = add nuw nsw i64 %74, 1
  %102 = getelementptr inbounds i8, ptr %75, i64 1
  %103 = icmp eq i64 %101, %72
  br i1 %103, label %104, label %73, !prof !419, !llvm.loop !420

104:                                              ; preds = %85, %100, %94, %61, %53, %64, %41, %40, %36, %35, %1
  %105 = phi i32 [ 0, %1 ], [ 0, %40 ], [ 1, %36 ], [ 1, %35 ], [ 0, %41 ], [ 0, %64 ], [ 1, %53 ], [ 0, %61 ], [ 1, %94 ], [ 0, %100 ], [ 1, %85 ]
  ret i32 %105
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #21 !prof !421 !PGOFuncName !422 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !287
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %32, label %5, !prof !408

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 49
  br i1 %8, label %9, label %31, !prof !409

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  %12 = icmp eq ptr %11, %3
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !126
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !126
  br label %32

22:                                               ; preds = %13, %9
  br i1 %8, label %23, label %31, !prof !409

23:                                               ; preds = %22
  %24 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !126
  %26 = icmp eq ptr %25, %3
  br i1 %26, label %55, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !126
  %30 = icmp eq ptr %29, %3
  br i1 %30, label %55, label %31

31:                                               ; preds = %5, %27, %22
  br label %55

32:                                               ; preds = %2, %19
  %33 = phi i64 [ %21, %19 ], [ 0, %2 ]
  %34 = icmp eq i64 %1, 0
  br i1 %34, label %55, label %35, !prof !269

35:                                               ; preds = %32
  %36 = load ptr, ptr @stored_args_map, align 8, !tbaa !115
  %37 = getelementptr inbounds %struct.simple_bitmap_def, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !410
  %39 = zext i32 %38 to i64
  br label %40

40:                                               ; preds = %35, %52
  %41 = phi i64 [ 0, %35 ], [ %53, %52 ]
  %42 = add i64 %41, %33
  %43 = icmp ult i64 %42, %39
  br i1 %43, label %44, label %52, !prof !364

44:                                               ; preds = %40
  %45 = lshr i64 %42, 6
  %46 = getelementptr inbounds %struct.simple_bitmap_def, ptr %36, i64 0, i32 3, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !183
  %48 = and i64 %42, 63
  %49 = shl nuw i64 1, %48
  %50 = and i64 %47, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55, !prof !364

52:                                               ; preds = %40, %44
  %53 = add nuw i64 %41, 1
  %54 = icmp eq i64 %53, %1
  br i1 %54, label %55, label %40, !prof !411, !llvm.loop !412

55:                                               ; preds = %52, %44, %32, %23, %27, %31
  %56 = phi i8 [ 0, %31 ], [ 1, %27 ], [ 1, %23 ], [ 0, %32 ], [ 1, %44 ], [ 0, %52 ]
  ret i8 %56
}

declare void @emit_group_move(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @move_block_to_reg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @use_group_regs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @use_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_call_value_pop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_call_pop(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_call_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_sibcall_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_sibcall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_call_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @last_call_insn() local_unnamed_addr #3

declare void @add_function_usage_to(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_reg_eh_region_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @adjust_stack(ptr noundef) local_unnamed_addr #3

declare ptr @copy_list(ptr noundef) local_unnamed_addr #3

declare ptr @build_tree_list_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @assemble_external_libcall(ptr noundef) local_unnamed_addr #3

declare void @emit_push_insn(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @emit_group_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @hard_libcall_value(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_in_bytes(ptr noundef) local_unnamed_addr #3

declare void @free_temp_slots() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

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
attributes #10 = { inlinehint mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!113}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!35 = !{ptr @setjmp_call_p, ptr @strcmp, i64 306495}
!36 = !{ptr @setjmp_call_p, ptr @strncmp, i64 2}
!37 = !{ptr @special_function_p, ptr @strcmp, i64 18372}
!38 = !{ptr @gimple_alloca_call_p, ptr @strcmp, i64 153313}
!39 = !{ptr @gimple_alloca_call_p, ptr @strncmp, i64 1}
!40 = !{ptr @alloca_call_p, ptr @special_function_p, i64 24853}
!41 = !{ptr @flags_from_decl_or_type, ptr @strcmp, i64 2907220}
!42 = !{ptr @flags_from_decl_or_type, ptr @strncmp, i64 16}
!43 = !{ptr @call_expr_flags, ptr @get_callee_fndecl, i64 292642}
!44 = !{ptr @call_expr_flags, ptr @strcmp, i64 216324}
!45 = !{ptr @call_expr_flags, ptr @strncmp, i64 1}
!46 = !{ptr @call_expr_flags, ptr @flags_from_decl_or_type, i64 13}
!47 = !{ptr @expand_call, ptr @get_callee_fndecl, i64 68958}
!48 = !{ptr @expand_call, ptr @flags_from_decl_or_type, i64 68958}
!49 = !{ptr @expand_call, ptr @ix86_reg_parm_stack_space, i64 69083}
!50 = !{ptr @expand_call, ptr @ix86_function_type_abi, i64 276063}
!51 = !{ptr @expand_call, ptr @aggregate_value_p, i64 68958}
!52 = !{ptr @expand_call, ptr @cgraph_rtl_info, i64 68958}
!53 = !{ptr @expand_call, ptr @list_length, i64 68958}
!54 = !{ptr @expand_call, ptr @init_cumulative_args, i64 68958}
!55 = !{ptr @expand_call, ptr @pass_by_reference, i64 81668}
!56 = !{ptr @expand_call, ptr @promote_function_mode, i64 81706}
!57 = !{ptr @expand_call, ptr @function_arg, i64 150626}
!58 = !{ptr @expand_call, ptr @locate_and_pad_parm, i64 81668}
!59 = !{ptr @expand_call, ptr @function_arg_advance, i64 81668}
!60 = !{ptr @expand_call, ptr @dbg_cnt, i64 68958}
!61 = !{ptr @expand_call, ptr @decl_function_context, i64 125}
!62 = !{ptr @expand_call, ptr @ix86_return_pops_args, i64 38}
!63 = !{ptr @expand_call, ptr @start_sequence, i64 68958}
!64 = !{ptr @expand_call, ptr @do_pending_stack_adjust, i64 19}
!65 = !{ptr @expand_call, ptr @plus_constant, i64 326691}
!66 = !{ptr @expand_call, ptr @sbitmap_alloc, i64 19}
!67 = !{ptr @expand_call, ptr @sbitmap_zero, i64 19}
!68 = !{ptr @expand_call, ptr @xmalloc, i64 68939}
!69 = !{ptr @expand_call, ptr @gen_rtx_CONST_INT, i64 163336}
!70 = !{ptr @expand_call, ptr @gen_rtx_MEM, i64 163336}
!71 = !{ptr @expand_call, ptr @set_mem_attributes, i64 163336}
!72 = !{ptr @expand_call, ptr @set_mem_align, i64 163336}
!73 = !{ptr @expand_call, ptr @set_mem_alias_set, i64 163336}
!74 = !{ptr @expand_call, ptr @make_decl_rtl, i64 35}
!75 = !{ptr @expand_call, ptr @hard_function_value, i64 66758}
!76 = !{ptr @expand_call, ptr @save_fixed_argument_area, i64 68939}
!77 = !{ptr @expand_call, ptr @get_last_insn, i64 219666}
!78 = !{ptr @expand_call, ptr @store_one_arg, i64 81668}
!79 = !{ptr @expand_call, ptr @check_sibcall_argument_overlap, i64 38}
!80 = !{ptr @expand_call, ptr @prepare_call_address, i64 68958}
!81 = !{ptr @expand_call, ptr @emit_call_1, i64 68958}
!82 = !{ptr @expand_call, ptr @emit_barrier_after, i64 82}
!83 = !{ptr @expand_call, ptr @emit_move_insn, i64 66684}
!84 = !{ptr @expand_call, ptr @get_insns, i64 68958}
!85 = !{ptr @expand_call, ptr @end_sequence, i64 68958}
!86 = !{ptr @expand_call, ptr @free, i64 68977}
!87 = !{ptr @expand_call, ptr @emit_insn, i64 68958}
!88 = !{ptr @store_one_arg, ptr @push_temp_slots, i64 81668}
!89 = !{ptr @store_one_arg, ptr @expand_expr_real, i64 81668}
!90 = !{ptr @store_one_arg, ptr @mem_overlaps_already_clobbered_arg_p, i64 2}
!91 = !{ptr @store_one_arg, ptr @gen_rtx_CONST_INT, i64 163336}
!92 = !{ptr @store_one_arg, ptr @emit_push_insn, i64 81668}
!93 = !{ptr @store_one_arg, ptr @preserve_temp_slots, i64 81668}
!94 = !{ptr @store_one_arg, ptr @free_temp_slots, i64 81668}
!95 = !{ptr @store_one_arg, ptr @pop_temp_slots, i64 81668}
!96 = !{ptr @check_sibcall_argument_overlap, ptr @get_insns, i64 19}
!97 = !{ptr @check_sibcall_argument_overlap, ptr @check_sibcall_argument_overlap_1, i64 42}
!98 = !{ptr @emit_call_1, ptr @gen_rtx_CONST_INT, i64 68958}
!99 = !{ptr @emit_call_1, ptr @ix86_return_pops_args, i64 68958}
!100 = !{ptr @emit_call_1, ptr @gen_rtx_MEM, i64 68958}
!101 = !{ptr @emit_call_1, ptr @gen_sibcall_value, i64 19}
!102 = !{ptr @emit_call_1, ptr @gen_call_value, i64 66739}
!103 = !{ptr @emit_call_1, ptr @gen_call, i64 2200}
!104 = !{ptr @emit_call_1, ptr @emit_call_insn, i64 68958}
!105 = !{ptr @emit_call_1, ptr @last_call_insn, i64 68958}
!106 = !{ptr @emit_call_1, ptr @add_function_usage_to, i64 68958}
!107 = !{ptr @emit_call_1, ptr @make_reg_eh_region_note, i64 68958}
!108 = !{ptr @emit_call_1, ptr @add_reg_note, i64 63}
!109 = !{ptr @fixup_tail_calls, ptr @get_insns, i64 1}
!110 = !{ptr @fixup_tail_calls, ptr @find_reg_note, i64 6}
!111 = !{ptr @fixup_tail_calls, ptr @remove_note, i64 1}
!112 = !{ptr @check_sibcall_argument_overlap_1, ptr @check_sibcall_argument_overlap_1, i64 122}
!113 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!114 = !{!"function_entry_count", i64 0}
!115 = !{!116, !116, i64 0}
!116 = !{!"any pointer", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C/C++ TBAA"}
!119 = !{!120, !116, i64 8}
!120 = !{!"_IO_FILE", !121, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !121, i64 112, !121, i64 116, !122, i64 120, !123, i64 128, !117, i64 130, !117, i64 131, !116, i64 136, !122, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !116, i64 176, !122, i64 184, !121, i64 192, !117, i64 196}
!121 = !{!"int", !117, i64 0}
!122 = !{!"long", !117, i64 0}
!123 = !{!"short", !117, i64 0}
!124 = !{!120, !116, i64 16}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{!117, !117, i64 0}
!127 = !{!120, !116, i64 40}
!128 = !{!120, !116, i64 48}
!129 = !{!120, !121, i64 0}
!130 = !{!121, !121, i64 0}
!131 = distinct !{!131, !132, !133}
!132 = !{!"llvm.loop.mustprogress"}
!133 = !{!"llvm.loop.unroll.disable"}
!134 = !{!"function_entry_count", i64 68958}
!135 = !{!"branch_weights", i32 68958, i32 0}
!136 = !{!137, !116, i64 1640}
!137 = !{!"gcc_target", !138, i64 0, !140, i64 368, !141, i64 664, !121, i64 744, !116, i64 752, !116, i64 760, !116, i64 768, !116, i64 776, !116, i64 784, !116, i64 792, !116, i64 800, !116, i64 808, !116, i64 816, !116, i64 824, !116, i64 832, !116, i64 840, !116, i64 848, !116, i64 856, !116, i64 864, !116, i64 872, !116, i64 880, !116, i64 888, !116, i64 896, !116, i64 904, !116, i64 912, !116, i64 920, !116, i64 928, !116, i64 936, !116, i64 944, !116, i64 952, !116, i64 960, !116, i64 968, !116, i64 976, !116, i64 984, !116, i64 992, !116, i64 1000, !116, i64 1008, !116, i64 1016, !116, i64 1024, !116, i64 1032, !116, i64 1040, !116, i64 1048, !116, i64 1056, !122, i64 1064, !122, i64 1072, !116, i64 1080, !116, i64 1088, !116, i64 1096, !116, i64 1104, !116, i64 1112, !116, i64 1120, !116, i64 1128, !116, i64 1136, !116, i64 1144, !116, i64 1152, !116, i64 1160, !116, i64 1168, !142, i64 1176, !116, i64 1232, !116, i64 1240, !116, i64 1248, !116, i64 1256, !116, i64 1264, !116, i64 1272, !116, i64 1280, !116, i64 1288, !116, i64 1296, !116, i64 1304, !116, i64 1312, !116, i64 1320, !116, i64 1328, !116, i64 1336, !116, i64 1344, !116, i64 1352, !116, i64 1360, !116, i64 1368, !116, i64 1376, !116, i64 1384, !116, i64 1392, !116, i64 1400, !116, i64 1408, !116, i64 1416, !116, i64 1424, !116, i64 1432, !116, i64 1440, !116, i64 1448, !116, i64 1456, !122, i64 1464, !143, i64 1472, !116, i64 1664, !116, i64 1672, !116, i64 1680, !116, i64 1688, !116, i64 1696, !116, i64 1704, !116, i64 1712, !116, i64 1720, !116, i64 1728, !116, i64 1736, !116, i64 1744, !116, i64 1752, !116, i64 1760, !116, i64 1768, !116, i64 1776, !144, i64 1784, !145, i64 1792, !146, i64 1896, !147, i64 1968, !116, i64 2016, !117, i64 2024, !117, i64 2025, !117, i64 2026, !117, i64 2027, !117, i64 2028, !117, i64 2029, !117, i64 2030, !117, i64 2031, !117, i64 2032, !117, i64 2033, !117, i64 2034, !117, i64 2035}
!138 = !{!"asm_out", !116, i64 0, !116, i64 8, !116, i64 16, !139, i64 24, !139, i64 56, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !116, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !116, i64 176, !116, i64 184, !116, i64 192, !116, i64 200, !116, i64 208, !116, i64 216, !116, i64 224, !116, i64 232, !116, i64 240, !116, i64 248, !116, i64 256, !116, i64 264, !116, i64 272, !116, i64 280, !116, i64 288, !116, i64 296, !116, i64 304, !116, i64 312, !116, i64 320, !116, i64 328, !116, i64 336, !116, i64 344, !116, i64 352, !116, i64 360}
!139 = !{!"asm_int_op", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24}
!140 = !{!"sched", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !116, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !116, i64 176, !116, i64 184, !116, i64 192, !116, i64 200, !116, i64 208, !116, i64 216, !116, i64 224, !116, i64 232, !116, i64 240, !116, i64 248, !116, i64 256, !116, i64 264, !116, i64 272, !116, i64 280, !116, i64 288}
!141 = !{!"vectorize", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72}
!142 = !{!"addr_space", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48}
!143 = !{!"calls", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !116, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !116, i64 176, !116, i64 184}
!144 = !{!"c", !116, i64 0}
!145 = !{!"cxx", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96}
!146 = !{!"emutls", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !117, i64 64, !117, i64 65}
!147 = !{!"target_option_hooks", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40}
!148 = !{!"function_entry_count", i64 414604}
!149 = !{!"branch_weights", i32 0, i32 4872150}
!150 = !{!"branch_weights", i32 4425955, i32 446195}
!151 = !{!"branch_weights", i32 4425955, i32 0}
!152 = !{!"branch_weights", i32 1205, i32 4424750}
!153 = !{!"branch_weights", i32 -2096499469, i32 21605, i32 191453507}
!154 = !{!"branch_weights", i32 0, i32 40}
!155 = !{!"branch_weights", i32 354461, i32 4070289}
!156 = !{!"branch_weights", i32 18, i32 354443}
!157 = !{!"branch_weights", i32 0, i32 18}
!158 = !{!"branch_weights", i32 51, i32 4424699}
!159 = !{!"branch_weights", i32 49, i32 2}
!160 = !{!"branch_weights", i32 725, i32 580, i32 116}
!161 = !{!"branch_weights", i32 20, i32 0}
!162 = !{!"branch_weights", i32 4, i32 25}
!163 = !{!"branch_weights", i32 25, i32 2}
!164 = !{!"branch_weights", i32 494707570, i32 4206, i32 88963, i32 6010, i32 -2130010065, i32 223}
!165 = !{!"branch_weights", i32 343, i32 0, i32 0, i32 0}
!166 = !{!"branch_weights", i32 49, i32 0, i32 0}
!167 = !{!"branch_weights", i32 0, i32 7}
!168 = !{!"branch_weights", i32 0, i32 148}
!169 = !{!"branch_weights", i32 937918133, i32 11395, i32 -190415908, i32 423}
!170 = !{!"branch_weights", i32 1, i32 9}
!171 = !{!"branch_weights", i32 0, i32 1}
!172 = !{!"branch_weights", i32 889073709, i32 -404170652, i32 401}
!173 = !{!"branch_weights", i32 3601705, i32 19}
!174 = !{!"branch_weights", i32 0, i32 3601705}
!175 = !{!"branch_weights", i32 2, i32 4424741}
!176 = !{!"branch_weights", i32 0, i32 2}
!177 = !{!"function_entry_count", i64 24853}
!178 = !{!"calls.c;special_function_p"}
!179 = !{!"branch_weights", i32 20, i32 29}
!180 = !{!"branch_weights", i32 29, i32 2}
!181 = !{!"function_entry_count", i64 207390}
!182 = !{!"branch_weights", i32 207390, i32 0}
!183 = !{!122, !122, i64 0}
!184 = !{!"branch_weights", i32 0, i32 207390}
!185 = !{!"function_entry_count", i64 24866}
!186 = !{!"branch_weights", i32 24866, i32 0}
!187 = !{!"branch_weights", i32 24853, i32 13}
!188 = !{!"branch_weights", i32 24853, i32 0}
!189 = !{!"function_entry_count", i64 3932687}
!190 = !{!"branch_weights", i32 0, i32 4225303, i32 13}
!191 = !{!"branch_weights", i32 4427160, i32 4424750}
!192 = !{!"function_entry_count", i64 292642}
!193 = !{!"branch_weights", i32 13, i32 292629}
!194 = !{!"branch_weights", i32 0, i32 13}
!195 = !{!"branch_weights", i32 13, i32 0}
!196 = !{!"branch_weights", i32 0, i32 68958}
!197 = !{!198, !121, i64 4}
!198 = !{!"rtl_data", !199, i64 0, !200, i64 40, !201, i64 96, !202, i64 112, !204, i64 208, !205, i64 248, !121, i64 312, !116, i64 320, !116, i64 328, !116, i64 336, !116, i64 344, !116, i64 352, !116, i64 360, !116, i64 368, !116, i64 376, !116, i64 384, !116, i64 392, !122, i64 400, !116, i64 408, !116, i64 416, !116, i64 424, !121, i64 432, !121, i64 436, !121, i64 440, !121, i64 444, !121, i64 448, !121, i64 452, !116, i64 456, !117, i64 464, !117, i64 465, !117, i64 466, !117, i64 467, !117, i64 468, !117, i64 469, !117, i64 470, !117, i64 471, !117, i64 472, !117, i64 473, !117, i64 474, !117, i64 475, !117, i64 476, !117, i64 477, !117, i64 478, !117, i64 479, !117, i64 480, !117, i64 481, !117, i64 482, !117, i64 483, !117, i64 484, !117, i64 485}
!199 = !{!"expr_status", !121, i64 0, !121, i64 4, !121, i64 8, !116, i64 16, !116, i64 24, !116, i64 32}
!200 = !{!"emit_status", !121, i64 0, !121, i64 4, !116, i64 8, !116, i64 16, !116, i64 24, !121, i64 32, !121, i64 36, !121, i64 40, !121, i64 44, !116, i64 48}
!201 = !{!"varasm_status", !116, i64 0, !121, i64 8}
!202 = !{!"incoming_args", !121, i64 0, !121, i64 4, !121, i64 8, !116, i64 16, !203, i64 24, !116, i64 88}
!203 = !{!"ix86_args", !121, i64 0, !121, i64 4, !121, i64 8, !121, i64 12, !121, i64 16, !121, i64 20, !121, i64 24, !121, i64 28, !121, i64 32, !121, i64 36, !121, i64 40, !121, i64 44, !121, i64 48, !121, i64 52, !121, i64 56, !121, i64 60}
!204 = !{!"function_subsections", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32}
!205 = !{!"rtl_eh", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !117, i64 48}
!206 = !{!137, !116, i64 1488}
!207 = !{!"VP", i32 0, i64 68958, i64 1731536821568639984, i64 68958}
!208 = distinct !{!208, !132, !133}
!209 = distinct !{!209, !132, !133}
!210 = !{!"branch_weights", i32 16387, i32 52571}
!211 = !{!212, !121, i64 0}
!212 = !{!"cgraph_rtl_info", !121, i64 0}
!213 = !{!"branch_weights", i32 52571, i32 0}
!214 = !{!"branch_weights", i32 0, i32 52571}
!215 = !{!"branch_weights", i32 0, i32 68958, i32 0}
!216 = !{!137, !116, i64 1552}
!217 = distinct !{!217, !132, !133}
!218 = distinct !{!218, !132, !133}
!219 = distinct !{!219, !132, !133}
!220 = !{!137, !116, i64 1536}
!221 = !{!"VP", i32 0, i64 68958, i64 5051174937607810751, i64 68958}
!222 = !{!137, !116, i64 1544}
!223 = !{!"VP", i32 1, i64 68958, i64 129, i64 56451, i64 257, i64 12344, i64 513, i64 163}
!224 = !{!225, !116, i64 0}
!225 = !{!"arg_data", !116, i64 0, !121, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !121, i64 56, !121, i64 60, !121, i64 64, !226, i64 72, !116, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !121, i64 176}
!226 = !{!"locate_and_pad_arg_data", !227, i64 0, !227, i64 16, !227, i64 32, !227, i64 48, !121, i64 64, !121, i64 68}
!227 = !{!"args_size", !122, i64 0, !116, i64 8}
!228 = !{!"branch_weights", i32 1, i32 68957}
!229 = !{!"branch_weights", i32 68957, i32 1}
!230 = !{!"branch_weights", i32 0, i32 81668}
!231 = !{!"branch_weights", i32 12710, i32 68958}
!232 = !{!"branch_weights", i32 68957, i32 12711}
!233 = distinct !{!233, !132, !133}
!234 = !{!"branch_weights", i32 81668, i32 0}
!235 = !{!198, !121, i64 0}
!236 = !{!225, !121, i64 56}
!237 = !{!225, !121, i64 8}
!238 = !{!225, !116, i64 32}
!239 = !{!225, !116, i64 40}
!240 = !{!137, !116, i64 1576}
!241 = !{!225, !121, i64 60}
!242 = !{!137, !116, i64 1560}
!243 = !{!"VP", i32 0, i64 81668, i64 5915247204820207506, i64 81668}
!244 = !{!225, !121, i64 64}
!245 = !{!225, !122, i64 72}
!246 = !{!227, !122, i64 0}
!247 = !{!225, !116, i64 80}
!248 = !{!227, !116, i64 8}
!249 = distinct !{!249, !132, !133}
!250 = distinct !{!250, !132, !133}
!251 = !{!"branch_weights", i32 68833, i32 125}
!252 = !{!"branch_weights", i32 125, i32 0}
!253 = !{!137, !116, i64 1088}
!254 = !{!"VP", i32 0, i64 125, i64 -3757542514238374764, i64 125}
!255 = !{!"branch_weights", i32 0, i32 125}
!256 = !{!198, !121, i64 116}
!257 = !{!198, !121, i64 120}
!258 = !{!"branch_weights", i32 106, i32 19}
!259 = !{!"branch_weights", i32 19, i32 0}
!260 = !{!261, !116, i64 344}
!261 = !{!"lang_hooks", !116, i64 0, !122, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !116, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !116, i64 176, !116, i64 184, !116, i64 192, !116, i64 200, !116, i64 208, !116, i64 216, !116, i64 224, !116, i64 232, !262, i64 240, !263, i64 248, !264, i64 256, !265, i64 272, !266, i64 432, !267, i64 560, !116, i64 584, !116, i64 592, !116, i64 600, !116, i64 608, !116, i64 616, !116, i64 624, !116, i64 632, !116, i64 640, !116, i64 648, !116, i64 656, !116, i64 664, !117, i64 672}
!262 = !{!"lang_hooks_for_tree_inlining", !116, i64 0}
!263 = !{!"lang_hooks_for_callgraph", !116, i64 0}
!264 = !{!"lang_hooks_for_tree_dump", !116, i64 0, !116, i64 8}
!265 = !{!"lang_hooks_for_decls", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !116, i64 144, !116, i64 152}
!266 = !{!"lang_hooks_for_types", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !117, i64 120}
!267 = !{!"lang_hooks_for_lto", !116, i64 0, !116, i64 8, !116, i64 16}
!268 = !{!"VP", i32 0, i64 19, i64 -3581884524293064868, i64 19}
!269 = !{!"branch_weights", i32 0, i32 19}
!270 = !{!"branch_weights", i32 68939, i32 19}
!271 = !{!198, !121, i64 440}
!272 = !{!"branch_weights", i32 38, i32 68920}
!273 = distinct !{!273, !132, !133}
!274 = !{!"branch_weights", i32 19, i32 68939}
!275 = !{!"branch_weights", i32 0, i32 68939}
!276 = !{!"branch_weights", i32 68940, i32 68938}
!277 = !{!"branch_weights", i32 1, i32 68938}
!278 = !{!"branch_weights", i32 0, i32 81649}
!279 = !{!225, !116, i64 16}
!280 = !{!225, !116, i64 24}
!281 = !{!"branch_weights", i32 68938, i32 12711}
!282 = distinct !{!282, !132, !133}
!283 = !{!"branch_weights", i32 68939, i32 0}
!284 = !{i64 0, i64 8, !183, i64 8, i64 8, !115}
!285 = !{i64 0, i64 8, !115}
!286 = !{!198, !121, i64 8}
!287 = !{!198, !116, i64 200}
!288 = !{!198, !121, i64 312}
!289 = !{!"branch_weights", i32 76, i32 68863}
!290 = !{!"VP", i32 1, i64 68939, i64 4, i64 56432, i64 8, i64 12344, i64 9, i64 123, i64 16, i64 40}
!291 = distinct !{!291, !132, !133}
!292 = !{!225, !116, i64 96}
!293 = !{!225, !122, i64 88}
!294 = !{!225, !116, i64 112}
!295 = !{!225, !122, i64 104}
!296 = !{!225, !116, i64 144}
!297 = !{!225, !121, i64 140}
!298 = !{!225, !121, i64 136}
!299 = !{!225, !116, i64 152}
!300 = distinct !{!300, !132, !133}
!301 = !{!"branch_weights", i32 35, i32 68923}
!302 = !{!"branch_weights", i32 2200, i32 66758}
!303 = !{!"branch_weights", i32 0, i32 66758}
!304 = !{!225, !116, i64 48}
!305 = distinct !{!305, !132, !133}
!306 = !{!"branch_weights", i32 19, i32 81649}
!307 = !{i32 0, i32 2}
!308 = distinct !{!308, !132, !133}
!309 = distinct !{!309, !132, !133}
!310 = !{!"branch_weights", i32 81649, i32 19}
!311 = !{!225, !121, i64 176}
!312 = !{!225, !116, i64 168}
!313 = distinct !{!313, !132, !133}
!314 = !{i8 0, i8 2}
!315 = distinct !{!315, !132, !133}
!316 = !{!137, !116, i64 1504}
!317 = !{!"VP", i32 0, i64 68958, i64 -7850396760365598585, i64 68958}
!318 = !{!"branch_weights", i32 82, i32 68876}
!319 = !{!"branch_weights", i32 1, i32 0}
!320 = distinct !{!320, !132, !133}
!321 = !{!"branch_weights", i32 82, i32 0}
!322 = !{!"branch_weights", i32 2274, i32 66684}
!323 = !{!"branch_weights", i32 66684, i32 0}
!324 = !{!"branch_weights", i32 0, i32 66684}
!325 = !{!"branch_weights", i32 66665, i32 19}
!326 = !{!"branch_weights", i32 0, i32 66665}
!327 = distinct !{!327, !132, !133}
!328 = !{!225, !116, i64 160}
!329 = !{!"branch_weights", i32 66684, i32 2274}
!330 = !{!"branch_weights", i32 68938, i32 1}
!331 = !{!"branch_weights", i32 81649, i32 0}
!332 = distinct !{!332, !132, !133}
!333 = !{!334, !116, i64 64}
!334 = !{!"function", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !121, i64 104, !121, i64 108, !121, i64 112, !121, i64 116, !121, i64 120, !121, i64 124, !116, i64 128, !121, i64 136, !121, i64 137, !121, i64 138, !121, i64 138, !121, i64 138, !121, i64 138, !121, i64 138, !121, i64 138, !121, i64 138, !121, i64 139, !121, i64 139, !121, i64 139, !121, i64 139, !121, i64 139, !121, i64 139, !121, i64 139}
!335 = distinct !{!335, !132, !133}
!336 = !{!"branch_weights", i32 151, i32 1}
!337 = distinct !{!337, !132, !133}
!338 = !{!339, !116, i64 0}
!339 = !{!"simple_bitmap_def", !116, i64 0, !121, i64 8, !121, i64 12, !117, i64 16}
!340 = !{!"branch_weights", i32 68876, i32 63}
!341 = !{!"branch_weights", i32 68876, i32 0}
!342 = !{!198, !117, i64 475}
!343 = !{!"function_entry_count", i64 68939}
!344 = !{!"calls.c;save_fixed_argument_area"}
!345 = distinct !{!345, !132, !133}
!346 = distinct !{!346, !132, !133}
!347 = !{!"function_entry_count", i64 81668}
!348 = !{!"calls.c;store_one_arg"}
!349 = !{!"branch_weights", i32 12710, i32 68939}
!350 = !{!"branch_weights", i32 81648, i32 1}
!351 = !{!"branch_weights", i32 81648, i32 244948}
!352 = distinct !{!352, !132, !133}
!353 = !{!"branch_weights", i32 326596, i32 0}
!354 = !{!"branch_weights", i32 2, i32 17}
!355 = !{!225, !116, i64 128}
!356 = !{!225, !122, i64 120}
!357 = !{!"branch_weights", i32 -961728520, i32 40824}
!358 = !{!"function_entry_count", i64 38}
!359 = !{!"calls.c;check_sibcall_argument_overlap"}
!360 = !{!"branch_weights", i32 19, i32 19}
!361 = !{!"branch_weights", i32 42, i32 0}
!362 = !{!"branch_weights", i32 17, i32 151}
!363 = distinct !{!363, !132, !133}
!364 = !{!"branch_weights", i32 76, i32 0}
!365 = !{!"branch_weights", i32 151, i32 457}
!366 = distinct !{!366, !132, !133}
!367 = !{!"calls.c;emit_call_1"}
!368 = !{!"branch_weights", i32 2200, i32 66739}
!369 = !{!"branch_weights", i32 68895, i32 63}
!370 = !{!371, !116, i64 216}
!371 = !{!"gcc_debug_hooks", !116, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !116, i64 144, !116, i64 152, !116, i64 160, !116, i64 168, !116, i64 176, !116, i64 184, !116, i64 192, !116, i64 200, !116, i64 208, !116, i64 216, !116, i64 224, !116, i64 232, !116, i64 240, !121, i64 248}
!372 = !{!198, !117, i64 481}
!373 = !{!"function_entry_count", i64 1}
!374 = !{!"branch_weights", i32 3, i32 1}
!375 = !{!"branch_weights", i32 1, i32 2}
!376 = !{!"branch_weights", i32 2, i32 1}
!377 = !{!"branch_weights", i32 3, i32 0}
!378 = !{!"branch_weights", i32 0, i32 4}
!379 = distinct !{!379, !132, !133}
!380 = !{!261, !116, i64 448}
!381 = !{!382, !116, i64 0}
!382 = !{!"arg", !116, i64 0, !121, i64 8, !116, i64 16, !121, i64 24, !226, i64 32, !116, i64 104}
!383 = !{!382, !121, i64 8}
!384 = !{!382, !121, i64 24}
!385 = !{!382, !116, i64 16}
!386 = !{!382, !122, i64 32}
!387 = !{!382, !116, i64 40}
!388 = distinct !{!388, !132, !133}
!389 = !{!382, !121, i64 100}
!390 = !{!382, !122, i64 64}
!391 = distinct !{!391, !132, !133}
!392 = !{!382, !122, i64 48}
!393 = !{!382, !116, i64 104}
!394 = !{!382, !116, i64 88}
!395 = !{!382, !122, i64 80}
!396 = distinct !{!396, !132, !133}
!397 = distinct !{!397, !132, !133}
!398 = distinct !{!398, !132, !133}
!399 = distinct !{!399, !132, !133}
!400 = distinct !{!400, !132, !133}
!401 = !{!"function_entry_count", i64 81706}
!402 = !{!"branch_weights", i32 0, i32 81706}
!403 = !{!"branch_weights", i32 81706, i32 0}
!404 = !{!"function_entry_count", i64 164}
!405 = !{!"calls.c;check_sibcall_argument_overlap_1"}
!406 = !{!"branch_weights", i32 0, i32 164}
!407 = !{!"branch_weights", i32 40, i32 124}
!408 = !{!"branch_weights", i32 19, i32 23}
!409 = !{!"branch_weights", i32 0, i32 23}
!410 = !{!339, !121, i64 8}
!411 = !{!"branch_weights", i32 19, i32 57}
!412 = distinct !{!412, !132, !133}
!413 = !{!"branch_weights", i32 1, i32 247}
!414 = !{!"branch_weights", i32 151, i32 122, i32 0}
!415 = !{!416, !121, i64 0}
!416 = !{!"rtvec_def", !121, i64 0, !117, i64 8}
!417 = !{!"branch_weights", i32 122, i32 0}
!418 = distinct !{!418, !132, !133}
!419 = !{!"branch_weights", i32 247, i32 299}
!420 = distinct !{!420, !132, !133}
!421 = !{!"function_entry_count", i64 2}
!422 = !{!"calls.c;mem_overlaps_already_clobbered_arg_p"}
