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
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
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
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.case_node = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.case_bit_test = type { i64, i64, ptr, i32 }

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
@lshift_cheap_p.init = internal unnamed_addr global i1 false, align 1
@lshift_cheap_p.cheap = internal unnamed_addr global i8 1, align 1
@cost_table_initialized = internal unnamed_addr global i1 false, align 4
@cost_table_ = internal unnamed_addr global [129 x i16] zeroinitializer, align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @label_rtx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 30
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 136, ptr noundef nonnull @.str.1) #16
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i64 [ 30, %1 ], [ %7, %5 ]
  %10 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %9, i64 11
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %13, %8
  %18 = tail call ptr @gen_label_rtx() #16
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %18) #16
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65536
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 256
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %17
  %28 = load i32, ptr %18, align 8
  %29 = or i32 %28, 268435456
  store i32 %29, ptr %18, align 8
  br label %30

30:                                               ; preds = %22, %27, %13
  %31 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #16
  %35 = load ptr, ptr %31, align 8, !tbaa !5
  br label %36

36:                                               ; preds = %30, %34
  %37 = phi ptr [ %35, %34 ], [ %32, %30 ]
  ret ptr %37
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @force_label_rtx(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @label_rtx(ptr noundef %0) #17
  %3 = tail call ptr @decl_function_context(ptr noundef %0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !8
  %8 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %2, ptr noundef %7) #16
  store ptr %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !8
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_jump(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @do_pending_stack_adjust() #16
  %2 = tail call ptr @gen_jump(ptr noundef %0) #16
  %3 = tail call ptr @emit_jump_insn(ptr noundef %2) #16
  %4 = tail call ptr @emit_barrier() #16
  ret void
}

; Function Attrs: optsize
declare void @do_pending_stack_adjust() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_jump_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_jump(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_barrier() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_computed_goto(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @expand_normal(ptr noundef %0) #17
  %3 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %2, i8 noundef zeroext 0) #16
  tail call void @do_pending_stack_adjust() #16
  tail call void @emit_indirect_jump(ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @emit_indirect_jump(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_label(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @label_rtx(ptr noundef %0) #17
  tail call void @do_pending_stack_adjust() #16
  %3 = tail call ptr @emit_label(ptr noundef %2) #16
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #16
  %14 = load ptr, ptr %10, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %7, %13
  %16 = phi ptr [ %14, %13 ], [ %11, %7 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1, i32 1, i32 0, i32 0, i64 1
  store ptr %9, ptr %17, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %15, %1
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 256
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  tail call fastcc void @expand_nl_goto_receiver() #17
  %24 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8, !tbaa !20
  %25 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %2, ptr noundef %24) #16
  store ptr %25, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 10), align 8, !tbaa !20
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i64, ptr %0, align 8
  %28 = and i64 %27, 65536
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !8
  %32 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %2, ptr noundef %31) #16
  store ptr %32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 5), align 8, !tbaa !8
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i64, ptr %19, align 8
  %35 = and i64 %34, 256
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i64, ptr %0, align 8
  %39 = and i64 %38, 65536
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %33
  tail call void @maybe_set_first_label_num(ptr noundef %2) #16
  br label %42

42:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: optsize
declare ptr @emit_label(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_nl_goto_receiver() unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !21
  %2 = tail call ptr @emit_use(ptr noundef %1) #16
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !22
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !21
  %5 = tail call ptr %3(ptr noundef %4, i8 noundef zeroext 1) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %0
  %8 = load i32, ptr %5, align 8
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 37
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @emit_clobber(ptr noundef nonnull %5) #16
  br label %13

13:                                               ; preds = %11, %7, %0
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !21
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !21
  %16 = tail call ptr @emit_move_insn(ptr noundef %14, ptr noundef %15) #16
  %17 = tail call ptr @gen_blockage() #16
  %18 = tail call ptr @emit_insn(ptr noundef %17) #16
  ret void
}

; Function Attrs: optsize
declare void @maybe_set_first_label_num(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_goto(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @label_rtx(ptr noundef %0) #17
  tail call void @emit_jump(ptr noundef %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @parse_output_constraint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr %0, align 8, !tbaa !21
  store i8 0, ptr %4, align 1, !tbaa !5
  store i8 0, ptr %5, align 1, !tbaa !5
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 61) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 43) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2) #16
  br label %70

15:                                               ; preds = %7, %11
  %16 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %17 = load i8, ptr %16, align 1, !tbaa !5
  %18 = icmp eq i8 %17, 43
  %19 = zext i1 %18 to i8
  store i8 %19, ptr %6, align 1, !tbaa !5
  %20 = icmp ne ptr %16, %8
  %21 = select i1 %20, i1 true, i1 %18
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #17
  br i1 %20, label %24, label %28

24:                                               ; preds = %22
  %25 = load i8, ptr %16, align 1, !tbaa !5
  %26 = sext i8 %25 to i32
  %27 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef %26, i32 noundef %1) #16
  br label %28

28:                                               ; preds = %24, %22
  %29 = add i64 %23, 1
  %30 = alloca i8, i64 %29, align 16
  %31 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %8) #17
  %32 = load i8, ptr %30, align 16, !tbaa !5
  %33 = ptrtoint ptr %16 to i64
  %34 = ptrtoint ptr %8 to i64
  %35 = sub i64 %33, %34
  %36 = getelementptr inbounds i8, ptr %30, i64 %35
  store i8 %32, ptr %36, align 1, !tbaa !5
  store i8 61, ptr %30, align 16, !tbaa !5
  %37 = trunc i64 %23 to i32
  %38 = call ptr @ggc_alloc_string(ptr noundef nonnull %30, i32 noundef %37) #16
  store ptr %38, ptr %0, align 8, !tbaa !21
  br label %39

39:                                               ; preds = %15, %28
  %40 = phi ptr [ %38, %28 ], [ %8, %15 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  %42 = add nsw i32 %1, 1
  %43 = add nsw i32 %3, %2
  %44 = icmp eq i32 %42, %43
  br label %45

45:                                               ; preds = %66, %39
  %46 = phi ptr [ %41, %39 ], [ %69, %66 ]
  %47 = load i8, ptr %46, align 1, !tbaa !5
  switch i8 %47, label %54 [
    i8 0, label %70
    i8 43, label %48
    i8 61, label %48
    i8 37, label %49
    i8 86, label %64
    i8 109, label %64
    i8 111, label %64
    i8 63, label %66
    i8 33, label %66
    i8 42, label %66
    i8 38, label %66
    i8 35, label %66
    i8 69, label %66
    i8 70, label %66
    i8 71, label %66
    i8 72, label %66
    i8 115, label %66
    i8 105, label %66
    i8 110, label %66
    i8 73, label %66
    i8 74, label %66
    i8 75, label %66
    i8 76, label %66
    i8 77, label %66
    i8 78, label %66
    i8 79, label %66
    i8 80, label %66
    i8 44, label %66
    i8 48, label %51
    i8 49, label %51
    i8 50, label %51
    i8 51, label %51
    i8 52, label %51
    i8 53, label %51
    i8 54, label %51
    i8 55, label %51
    i8 56, label %51
    i8 57, label %51
    i8 91, label %51
    i8 60, label %64
    i8 62, label %64
    i8 103, label %52
    i8 88, label %52
    i8 112, label %53
    i8 114, label %53
  ]

48:                                               ; preds = %45, %45
  call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #16
  br label %70

49:                                               ; preds = %45
  br i1 %44, label %50, label %66

50:                                               ; preds = %49
  call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #16
  br label %70

51:                                               ; preds = %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45
  call void (ptr, ...) @error(ptr noundef nonnull @.str.6) #16
  br label %70

52:                                               ; preds = %45, %45
  store i8 1, ptr %5, align 1, !tbaa !5
  br label %64

53:                                               ; preds = %45, %45
  br label %64

54:                                               ; preds = %45
  %55 = zext i8 %47 to i64
  %56 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !34
  %58 = and i16 %57, 136
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = call i32 @lookup_constraint(ptr noundef nonnull %46) #16
  %62 = call i32 @regclass_for_constraint(i32 noundef %61) #16
  %63 = icmp eq i32 %62, 0
  store i8 1, ptr %5, align 1, !tbaa !5
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %45, %45, %45, %45, %45, %53, %52
  %65 = phi ptr [ %4, %52 ], [ %5, %53 ], [ %4, %45 ], [ %4, %45 ], [ %4, %45 ], [ %4, %45 ], [ %4, %45 ], [ %4, %60 ]
  store i8 1, ptr %65, align 1, !tbaa !5
  br label %66

66:                                               ; preds = %64, %60, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %49, %54
  %67 = load i8, ptr %46, align 1, !tbaa !5
  %68 = call fastcc i64 @insn_constraint_len(i8 noundef signext %67) #17
  %69 = getelementptr inbounds i8, ptr %46, i64 %68
  br label %45, !llvm.loop !36

70:                                               ; preds = %45, %51, %50, %48, %14
  %71 = phi i8 [ 0, %51 ], [ 0, %50 ], [ 0, %48 ], [ 0, %14 ], [ 1, %45 ]
  ret i8 %71
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @regclass_for_constraint(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lookup_constraint(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i64 @insn_constraint_len(i8 noundef signext %0) unnamed_addr #5 {
  %2 = icmp eq i8 %0, 89
  %3 = select i1 %2, i64 2, i64 1
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @parse_input_constraint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = load ptr, ptr %0, align 8, !tbaa !21
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #17
  store i8 0, ptr %6, align 1, !tbaa !5
  store i8 0, ptr %7, align 1, !tbaa !5
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %89, label %13

13:                                               ; preds = %8
  %14 = sext i32 %3 to i64
  %15 = add nsw i32 %1, 1
  %16 = sub nsw i32 %2, %4
  %17 = icmp eq i32 %15, %16
  br label %18

18:                                               ; preds = %13, %72
  %19 = phi i8 [ 0, %13 ], [ %76, %72 ]
  %20 = phi i64 [ 0, %13 ], [ %80, %72 ]
  %21 = phi i64 [ %11, %13 ], [ %74, %72 ]
  %22 = phi ptr [ %10, %13 ], [ %73, %72 ]
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  %24 = load i8, ptr %23, align 1, !tbaa !5
  %25 = sext i8 %24 to i32
  switch i8 %24, label %59 [
    i8 43, label %26
    i8 61, label %26
    i8 38, label %26
    i8 37, label %29
    i8 86, label %33
    i8 109, label %33
    i8 111, label %33
    i8 60, label %72
    i8 62, label %72
    i8 63, label %72
    i8 33, label %72
    i8 42, label %72
    i8 35, label %72
    i8 69, label %72
    i8 70, label %72
    i8 71, label %72
    i8 72, label %72
    i8 115, label %72
    i8 105, label %72
    i8 110, label %72
    i8 73, label %72
    i8 74, label %72
    i8 75, label %72
    i8 76, label %72
    i8 77, label %72
    i8 78, label %72
    i8 79, label %72
    i8 80, label %72
    i8 44, label %72
    i8 48, label %34
    i8 49, label %34
    i8 50, label %34
    i8 51, label %34
    i8 52, label %34
    i8 53, label %34
    i8 54, label %34
    i8 55, label %34
    i8 56, label %34
    i8 57, label %34
    i8 112, label %55
    i8 114, label %55
    i8 103, label %58
    i8 88, label %58
  ]

26:                                               ; preds = %18, %18, %18
  %27 = icmp eq ptr %22, %10
  br i1 %27, label %28, label %72

28:                                               ; preds = %26
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7, i32 noundef %25) #16
  br label %89

29:                                               ; preds = %18
  %30 = icmp eq ptr %22, %10
  br i1 %30, label %31, label %72

31:                                               ; preds = %29
  br i1 %17, label %32, label %72

32:                                               ; preds = %31
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #16
  br label %89

33:                                               ; preds = %18, %18, %18
  store i8 1, ptr %6, align 1, !tbaa !5
  br label %72

34:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %35 = call i64 @strtoul(ptr noundef nonnull %23, ptr noundef nonnull %9, i32 noundef 10) #17
  %36 = icmp ult i64 %35, %14
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %89

38:                                               ; preds = %34
  %39 = load ptr, ptr %9, align 8, !tbaa !21
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  switch i64 %20, label %46 [
    i64 0, label %51
    i64 1, label %43
  ]

43:                                               ; preds = %42
  %44 = load i8, ptr %22, align 1, !tbaa !5
  %45 = icmp eq i8 %44, 37
  br i1 %45, label %51, label %46

46:                                               ; preds = %38, %43, %42
  %47 = ptrtoint ptr %39 to i64
  %48 = ptrtoint ptr %22 to i64
  %49 = xor i64 %48, -1
  %50 = add i64 %47, %49
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %55

51:                                               ; preds = %43, %42
  %52 = getelementptr inbounds ptr, ptr %5, i64 %35
  %53 = load ptr, ptr %52, align 8, !tbaa !21
  store ptr %53, ptr %0, align 8, !tbaa !21
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %72

55:                                               ; preds = %46, %18, %18
  %56 = phi i64 [ %20, %18 ], [ %20, %18 ], [ %50, %46 ]
  %57 = phi i8 [ %19, %18 ], [ %19, %18 ], [ 1, %46 ]
  store i8 1, ptr %7, align 1, !tbaa !5
  br label %72

58:                                               ; preds = %18, %18
  store i8 1, ptr %7, align 1, !tbaa !5
  store i8 1, ptr %6, align 1, !tbaa !5
  br label %72

59:                                               ; preds = %18
  %60 = and i32 %25, 255
  %61 = zext nneg i32 %60 to i64
  %62 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !34
  %64 = and i16 %63, 136
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9, i32 noundef %25) #16
  br label %89

67:                                               ; preds = %59
  %68 = tail call i32 @lookup_constraint(ptr noundef nonnull %23) #16
  %69 = tail call i32 @regclass_for_constraint(i32 noundef %68) #16
  %70 = icmp eq i32 %69, 0
  store i8 1, ptr %7, align 1, !tbaa !5
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i8 1, ptr %6, align 1, !tbaa !5
  br label %72

72:                                               ; preds = %67, %51, %33, %55, %58, %26, %31, %29, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %71
  %73 = phi ptr [ %22, %71 ], [ %22, %58 ], [ %22, %55 ], [ %53, %51 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %18 ], [ %22, %33 ], [ %10, %31 ], [ %22, %29 ], [ %22, %26 ], [ %22, %67 ]
  %74 = phi i64 [ %21, %71 ], [ %21, %58 ], [ %21, %55 ], [ %54, %51 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %18 ], [ %21, %33 ], [ %21, %31 ], [ %21, %29 ], [ %21, %26 ], [ %21, %67 ]
  %75 = phi i64 [ %20, %71 ], [ %20, %58 ], [ %56, %55 ], [ 0, %51 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %33 ], [ %20, %31 ], [ %20, %29 ], [ %20, %26 ], [ %20, %67 ]
  %76 = phi i8 [ %19, %71 ], [ %19, %58 ], [ %57, %55 ], [ 1, %51 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ], [ %19, %33 ], [ %19, %31 ], [ %19, %29 ], [ %19, %26 ], [ %19, %67 ]
  %77 = getelementptr inbounds i8, ptr %73, i64 %75
  %78 = load i8, ptr %77, align 1, !tbaa !5
  %79 = tail call fastcc i64 @insn_constraint_len(i8 noundef signext %78) #17
  %80 = add i64 %79, %75
  %81 = icmp ult i64 %80, %74
  br i1 %81, label %18, label %82, !llvm.loop !38

82:                                               ; preds = %72
  %83 = icmp eq i8 %76, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %82
  %85 = load i8, ptr %7, align 1, !tbaa !5
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.10) #16
  br label %89

89:                                               ; preds = %8, %37, %82, %84, %87, %66, %32, %28
  %90 = phi i8 [ 0, %66 ], [ 0, %32 ], [ 0, %28 ], [ 1, %87 ], [ 1, %84 ], [ 1, %82 ], [ 0, %37 ], [ 1, %8 ]
  ret i8 %90
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @tree_overlaps_hard_reg_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !21
  %4 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @decl_overlaps_hard_reg_set_p, ptr noundef %1, ptr noundef null, ptr noundef null) #16
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @decl_overlaps_hard_reg_set_p(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !21
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 32
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %4, i64 0, i32 4
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  tail call void @make_decl_rtl(ptr noundef nonnull %4) #16
  %18 = load ptr, ptr %14, align 8, !tbaa !5
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #17
  %26 = icmp ult i32 %25, 53
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i64, ptr %2, align 8, !tbaa !39
  %29 = lshr i32 %21, 16
  %30 = and i32 %29, 255
  %31 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #17
  %32 = tail call fastcc zeroext i8 @overlaps_hard_reg_set_p(i64 noundef %28, i32 noundef %30, i32 noundef %31) #17, !range !40
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3, %8, %19, %24, %27
  br label %35

35:                                               ; preds = %27, %34
  %36 = phi ptr [ null, %34 ], [ %4, %27 ]
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_asm_stmt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #17
  %3 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #17, !range !41
  %4 = zext nneg i32 %3 to i64
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef 0) #17
  %8 = icmp eq i32 %3, 1
  br i1 %8, label %17, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %13, %9 ], [ %7, %6 ]
  %11 = phi i64 [ %15, %9 ], [ 1, %6 ]
  %12 = trunc i64 %11 to i32
  %13 = tail call fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %12) #17
  %14 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !5
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %4
  br i1 %16, label %17, label %9, !llvm.loop !42

17:                                               ; preds = %9, %6, %1
  %18 = phi ptr [ null, %1 ], [ %7, %6 ], [ %7, %9 ]
  %19 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #17, !range !41
  %20 = zext nneg i32 %19 to i64
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef 0) #17
  %24 = icmp eq i32 %19, 1
  br i1 %24, label %33, label %25

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %29, %25 ], [ %23, %22 ]
  %27 = phi i64 [ %31, %25 ], [ 1, %22 ]
  %28 = trunc i64 %27 to i32
  %29 = tail call fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %28) #17
  %30 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !5
  %31 = add nuw nsw i64 %27, 1
  %32 = icmp eq i64 %31, %20
  br i1 %32, label %33, label %25, !llvm.loop !43

33:                                               ; preds = %25, %22, %17
  %34 = phi ptr [ null, %17 ], [ %23, %22 ], [ %23, %25 ]
  %35 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %0) #17, !range !41
  %36 = zext nneg i32 %35 to i64
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef 0) #17
  %40 = icmp eq i32 %35, 1
  br i1 %40, label %49, label %41

41:                                               ; preds = %38, %41
  %42 = phi ptr [ %45, %41 ], [ %39, %38 ]
  %43 = phi i64 [ %47, %41 ], [ 1, %38 ]
  %44 = trunc i64 %43 to i32
  %45 = tail call fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef %44) #17
  %46 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !5
  %47 = add nuw nsw i64 %43, 1
  %48 = icmp eq i64 %47, %36
  br i1 %48, label %49, label %41, !llvm.loop !44

49:                                               ; preds = %41, %38, %33
  %50 = phi ptr [ null, %33 ], [ %39, %38 ], [ %39, %41 ]
  %51 = tail call fastcc i32 @gimple_asm_nlabels(ptr noundef %0) #17, !range !41
  %52 = zext nneg i32 %51 to i64
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @gimple_asm_label_op(ptr noundef %0, i32 noundef 0) #17
  %56 = icmp eq i32 %51, 1
  br i1 %56, label %65, label %57

57:                                               ; preds = %54, %57
  %58 = phi ptr [ %61, %57 ], [ %55, %54 ]
  %59 = phi i64 [ %63, %57 ], [ 1, %54 ]
  %60 = trunc i64 %59 to i32
  %61 = tail call fastcc ptr @gimple_asm_label_op(ptr noundef %0, i32 noundef %60) #17
  %62 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 1
  store ptr %61, ptr %62, align 8, !tbaa !5
  %63 = add nuw nsw i64 %59, 1
  %64 = icmp eq i64 %63, %52
  br i1 %64, label %65, label %57, !llvm.loop !45

65:                                               ; preds = %57, %54, %49
  %66 = phi ptr [ null, %49 ], [ %55, %54 ], [ %55, %57 ]
  %67 = tail call fastcc ptr @gimple_asm_string(ptr noundef %0) #17
  %68 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %67) #17
  %69 = trunc i64 %68 to i32
  %70 = tail call ptr @build_string(i32 noundef %69, ptr noundef %67) #16
  %71 = tail call fastcc zeroext i8 @gimple_asm_input_p(ptr noundef %0) #17, !range !40
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %65
  %74 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %0) #17, !range !40
  %75 = zext nneg i8 %74 to i32
  tail call fastcc void @expand_asm_loc(ptr noundef %70, i32 noundef %75, i32 noundef %2) #17
  br label %112

76:                                               ; preds = %65
  %77 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #17, !range !41
  %78 = shl nuw nsw i32 %77, 3
  %79 = zext nneg i32 %78 to i64
  %80 = alloca i8, i64 %79, align 16
  %81 = icmp eq ptr %18, null
  br i1 %81, label %109, label %82

82:                                               ; preds = %76, %82
  %83 = phi ptr [ %89, %82 ], [ %18, %76 ]
  %84 = phi i64 [ %90, %82 ], [ 0, %76 ]
  %85 = getelementptr inbounds %struct.tree_list, ptr %83, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds ptr, ptr %80, i64 %84
  store ptr %86, ptr %87, align 8, !tbaa !21
  %88 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = add i64 %84, 1
  %91 = icmp eq ptr %89, null
  br i1 %91, label %92, label %82, !llvm.loop !46

92:                                               ; preds = %82
  %93 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %0) #17, !range !40
  %94 = zext nneg i8 %93 to i32
  tail call fastcc void @expand_asm_operands(ptr noundef %70, ptr noundef nonnull %18, ptr noundef %34, ptr noundef %50, ptr noundef %66, i32 noundef %94, i32 noundef %2) #17
  br i1 %81, label %112, label %95

95:                                               ; preds = %92, %104
  %96 = phi ptr [ %106, %104 ], [ %18, %92 ]
  %97 = phi i64 [ %107, %104 ], [ 0, %92 ]
  %98 = getelementptr inbounds ptr, ptr %80, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !21
  %100 = getelementptr inbounds %struct.tree_list, ptr %96, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !5
  %102 = icmp eq ptr %99, %101
  br i1 %102, label %104, label %103

103:                                              ; preds = %95
  tail call void @expand_assignment(ptr noundef %99, ptr noundef %101, i8 noundef zeroext 0) #16
  tail call void @free_temp_slots() #16
  store ptr %99, ptr %100, align 8, !tbaa !5
  br label %104

104:                                              ; preds = %95, %103
  %105 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %107 = add i64 %97, 1
  %108 = icmp eq ptr %106, null
  br i1 %108, label %112, label %95, !llvm.loop !47

109:                                              ; preds = %76
  %110 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %0) #17, !range !40
  %111 = zext nneg i8 %110 to i32
  tail call fastcc void @expand_asm_operands(ptr noundef %70, ptr noundef %18, ptr noundef %34, ptr noundef %50, ptr noundef %66, i32 noundef %111, i32 noundef %2) #17
  br label %112

112:                                              ; preds = %104, %109, %92, %73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !5
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2655, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !5
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #17
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !5
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !5
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2622, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #17
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nclobbers(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !5
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 2, !tbaa !5
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2688, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !5
  %11 = zext i8 %10 to i32
  %12 = add i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = zext i8 %14 to i32
  %16 = add i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #17
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nlabels(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_label_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2710, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !5
  %11 = zext i8 %10 to i32
  %12 = add i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 2, !tbaa !5
  %15 = zext i8 %14 to i32
  %16 = add i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #17
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_asm_string(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_input_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_asm_loc(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 121
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = getelementptr inbounds %struct.tree_string, ptr %11, i64 0, i32 2
  %13 = tail call ptr @ggc_alloc_string(ptr noundef nonnull %12, i32 noundef -1) #16
  %14 = tail call ptr @gen_rtx_fmt_si_stat(i32 noundef 16, i32 noundef 0, ptr noundef %13, i32 noundef %2) #16
  %15 = load i32, ptr %14, align 8
  %16 = shl i32 %1, 27
  %17 = and i32 %16, 134217728
  %18 = and i32 %15, -134217729
  %19 = or disjoint i32 %18, %17
  store i32 %19, ptr %14, align 8
  %20 = tail call ptr @emit_insn(ptr noundef nonnull %14) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_asm_operands(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
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
  %23 = tail call i32 @list_length(ptr noundef %2) #16
  %24 = tail call i32 @list_length(ptr noundef %1) #16
  %25 = tail call i32 @list_length(ptr noundef %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
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
  %37 = load i32, ptr @generating_concat_p, align 4, !tbaa !48
  %38 = icmp eq i32 %24, 0
  %39 = shl i32 %5, 27
  %40 = tail call fastcc zeroext i8 @check_operand_nalternatives(ptr noundef %1, ptr noundef %2) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %776, label %42

42:                                               ; preds = %7
  %43 = tail call ptr @resolve_asm_operand_names(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %4) #17
  %44 = icmp eq ptr %1, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %50, %42
  %46 = phi i64 [ 0, %42 ], [ %61, %50 ]
  %47 = icmp eq ptr %2, null
  br i1 %47, label %76, label %48

48:                                               ; preds = %45
  %49 = and i64 %46, 4294967295
  br label %63

50:                                               ; preds = %42, %50
  %51 = phi i64 [ %61, %50 ], [ 0, %42 ]
  %52 = phi ptr [ %60, %50 ], [ %1, %42 ]
  %53 = getelementptr inbounds %struct.tree_list, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.tree_list, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  %57 = getelementptr inbounds %struct.tree_string, ptr %56, i64 0, i32 2
  %58 = getelementptr inbounds ptr, ptr %36, i64 %51
  store ptr %57, ptr %58, align 8, !tbaa !21
  %59 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = add nuw i64 %51, 1
  %62 = icmp eq ptr %60, null
  br i1 %62, label %45, label %50, !llvm.loop !49

63:                                               ; preds = %48, %63
  %64 = phi i64 [ %49, %48 ], [ %74, %63 ]
  %65 = phi ptr [ %2, %48 ], [ %73, %63 ]
  %66 = getelementptr inbounds %struct.tree_list, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.tree_list, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.tree_string, ptr %69, i64 0, i32 2
  %71 = getelementptr inbounds ptr, ptr %36, i64 %64
  store ptr %70, ptr %71, align 8, !tbaa !21
  %72 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = add nuw i64 %64, 1
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %63, !llvm.loop !50

76:                                               ; preds = %63, %45
  %77 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 79), align 8, !tbaa !51
  %78 = tail call ptr %77(ptr noundef %1, ptr noundef %2, ptr noundef %3) #16
  store i64 0, ptr %8, align 8, !tbaa !39
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %118, %76
  %81 = phi i32 [ 0, %76 ], [ %120, %118 ]
  br i1 %44, label %192, label %124

82:                                               ; preds = %76, %118
  %83 = phi i32 [ %120, %118 ], [ 0, %76 ]
  %84 = phi ptr [ %122, %118 ], [ %78, %76 ]
  %85 = phi i64 [ %119, %118 ], [ 0, %76 ]
  %86 = getelementptr inbounds %struct.tree_list, ptr %84, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = load ptr, ptr @global_trees, align 16, !tbaa !21
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %776, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.tree_string, ptr %87, i64 0, i32 2
  %92 = tail call i32 @decode_reg_name(ptr noundef nonnull %91) #16
  %93 = icmp sgt i32 %92, -1
  %94 = icmp eq i32 %92, -4
  %95 = or i1 %93, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = icmp eq i32 %92, -2
  br i1 %97, label %98, label %118

98:                                               ; preds = %96
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.14, ptr noundef nonnull %91) #16
  br label %118

99:                                               ; preds = %90
  %100 = add nsw i32 %83, 1
  br i1 %93, label %101, label %118

101:                                              ; preds = %99
  %102 = load i32, ptr @flag_pic, align 4, !tbaa !48
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr @reload_completed, align 4, !tbaa !48
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr @pic_offset_table_rtx, align 8, !tbaa !21
  %109 = tail call fastcc i32 @rhs_regno(ptr noundef %108) #17
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i32 [ %109, %107 ], [ 3, %104 ]
  %112 = icmp eq i32 %92, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15, ptr noundef nonnull %91) #16
  br label %776

114:                                              ; preds = %101, %110
  %115 = zext nneg i32 %92 to i64
  %116 = shl nuw i64 1, %115
  %117 = or i64 %85, %116
  store i64 %117, ptr %8, align 8, !tbaa !39
  br label %118

118:                                              ; preds = %98, %96, %114, %99
  %119 = phi i64 [ %85, %99 ], [ %117, %114 ], [ %85, %96 ], [ %85, %98 ]
  %120 = phi i32 [ %100, %99 ], [ %100, %114 ], [ %83, %96 ], [ %83, %98 ]
  %121 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = icmp eq ptr %122, null
  br i1 %123, label %80, label %82, !llvm.loop !52

124:                                              ; preds = %80, %184
  %125 = phi i64 [ %190, %184 ], [ 0, %80 ]
  %126 = phi i32 [ %187, %184 ], [ 0, %80 ]
  %127 = phi ptr [ %189, %184 ], [ %1, %80 ]
  %128 = getelementptr inbounds %struct.tree_list, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !5
  %130 = getelementptr inbounds %struct.tree_common, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #18
  %132 = load ptr, ptr @global_trees, align 16, !tbaa !21
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %183, label %134

134:                                              ; preds = %124
  %135 = getelementptr inbounds ptr, ptr %36, i64 %125
  %136 = load ptr, ptr %135, align 8, !tbaa !21
  store ptr %136, ptr %9, align 8, !tbaa !21
  %137 = trunc i64 %125 to i32
  %138 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %9, i32 noundef %137, i32 noundef %23, i32 noundef %24, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %10) #17, !range !40
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %183, label %140

140:                                              ; preds = %134
  %141 = load i8, ptr %11, align 1, !tbaa !5
  %142 = icmp eq i8 %141, 0
  %143 = load i8, ptr %10, align 1
  br i1 %142, label %144, label %184

144:                                              ; preds = %140
  %145 = load i8, ptr %12, align 1, !tbaa !5
  %146 = icmp ne i8 %145, 0
  %147 = icmp ne i8 %143, 0
  %148 = select i1 %146, i1 true, i1 %147
  br i1 %148, label %182, label %149

149:                                              ; preds = %144
  %150 = load i64, ptr %129, align 8
  %151 = and i64 %150, 65535
  %152 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !48
  %154 = icmp eq i32 %153, 3
  br i1 %154, label %155, label %184

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %129, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !5
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  tail call void @make_decl_rtl(ptr noundef nonnull %129) #16
  %160 = load ptr, ptr %156, align 8, !tbaa !5
  br label %161

161:                                              ; preds = %155, %159
  %162 = phi ptr [ %160, %159 ], [ %157, %155 ]
  %163 = load i32, ptr %162, align 8
  %164 = and i32 %163, 65535
  %165 = icmp eq i32 %164, 37
  br i1 %165, label %166, label %184

166:                                              ; preds = %161
  %167 = load i64, ptr %131, align 8
  %168 = lshr i32 %163, 16
  %169 = and i32 %168, 255
  %170 = and i64 %167, 65535
  %171 = icmp eq i64 %170, 14
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = tail call i32 @vector_type_mode(ptr noundef nonnull %131) #16
  br label %179

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.tree_type, ptr %131, i64 0, i32 6
  %176 = load i32, ptr %175, align 4
  %177 = lshr i32 %176, 16
  %178 = and i32 %177, 255
  br label %179

179:                                              ; preds = %174, %172
  %180 = phi i32 [ %173, %172 ], [ %178, %174 ]
  %181 = icmp eq i32 %169, %180
  br i1 %181, label %184, label %182

182:                                              ; preds = %179, %144
  tail call void @mark_addressable(ptr noundef nonnull %129) #16
  br label %184

183:                                              ; preds = %124, %134
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %776

184:                                              ; preds = %182, %179, %161, %149, %140
  %185 = icmp ne i8 %143, 0
  %186 = zext i1 %185 to i32
  %187 = add nuw nsw i32 %126, %186
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  %188 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !5
  %190 = add nuw i64 %125, 1
  %191 = icmp eq ptr %189, null
  br i1 %191, label %192, label %124, !llvm.loop !53

192:                                              ; preds = %184, %80
  %193 = phi i32 [ 0, %80 ], [ %187, %184 ]
  %194 = add nsw i32 %193, %23
  %195 = add nsw i32 %194, %24
  %196 = icmp sgt i32 %195, 30
  br i1 %196, label %200, label %197

197:                                              ; preds = %192
  br i1 %47, label %201, label %198

198:                                              ; preds = %197
  %199 = getelementptr ptr, ptr %36, i64 %26
  br label %202

200:                                              ; preds = %192
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16, i32 noundef 30) #16
  br label %776

201:                                              ; preds = %225, %197
  br i1 %44, label %391, label %230

202:                                              ; preds = %198, %225
  %203 = phi i64 [ 0, %198 ], [ %226, %225 ]
  %204 = phi ptr [ %2, %198 ], [ %228, %225 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #18
  %205 = getelementptr inbounds %struct.tree_list, ptr %204, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !5
  %207 = getelementptr inbounds %struct.tree_common, ptr %206, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !5
  %209 = load ptr, ptr @global_trees, align 16, !tbaa !21
  %210 = icmp eq ptr %208, %209
  br i1 %210, label %775, label %211

211:                                              ; preds = %202
  %212 = getelementptr ptr, ptr %199, i64 %203
  %213 = load ptr, ptr %212, align 8, !tbaa !21
  store ptr %213, ptr %15, align 8, !tbaa !21
  %214 = trunc i64 %203 to i32
  %215 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %15, i32 noundef %214, i32 noundef %194, i32 noundef %24, i32 noundef %193, ptr noundef nonnull %36, ptr noundef nonnull %14, ptr noundef nonnull %13) #17
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %775, label %217

217:                                              ; preds = %211
  %218 = load i8, ptr %13, align 1, !tbaa !5
  %219 = icmp eq i8 %218, 0
  %220 = load i8, ptr %14, align 1
  %221 = icmp ne i8 %220, 0
  %222 = select i1 %219, i1 %221, i1 false
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = load ptr, ptr %205, align 8, !tbaa !5
  tail call void @mark_addressable(ptr noundef %224) #16
  br label %225

225:                                              ; preds = %217, %223
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #18
  %226 = add nuw i64 %203, 1
  %227 = getelementptr inbounds %struct.tree_common, ptr %204, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !5
  %229 = icmp eq ptr %228, null
  br i1 %229, label %201, label %202, !llvm.loop !54

230:                                              ; preds = %201, %382
  %231 = phi i64 [ %389, %382 ], [ 0, %201 ]
  %232 = phi i32 [ %383, %382 ], [ 0, %201 ]
  %233 = phi i32 [ %386, %382 ], [ 0, %201 ]
  %234 = phi ptr [ %388, %382 ], [ %1, %201 ]
  %235 = getelementptr inbounds %struct.tree_list, ptr %234, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !5
  %237 = getelementptr inbounds %struct.tree_common, ptr %236, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #18
  %239 = getelementptr inbounds ptr, ptr %36, i64 %231
  %240 = trunc i64 %231 to i32
  %241 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %239, i32 noundef %240, i32 noundef %194, i32 noundef %24, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef nonnull %16) #17, !range !40
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %230
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 790, ptr noundef nonnull @.str.1) #16
  br label %244

244:                                              ; preds = %230, %243
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !48
  %245 = getelementptr inbounds ptr, ptr %31, i64 %231
  store ptr null, ptr %245, align 8, !tbaa !21
  %246 = load i64, ptr %236, align 8
  %247 = and i64 %246, 65535
  %248 = icmp eq i64 %247, 47
  %249 = load i8, ptr %18, align 1
  %250 = icmp ne i8 %249, 0
  %251 = select i1 %248, i1 %250, i1 false
  br i1 %251, label %302, label %252

252:                                              ; preds = %244
  %253 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %247
  %254 = load i32, ptr %253, align 4, !tbaa !48
  %255 = icmp eq i32 %254, 3
  br i1 %255, label %256, label %296

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %236, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !5
  %259 = icmp eq ptr %258, null
  br i1 %250, label %268, label %260

260:                                              ; preds = %256
  br i1 %259, label %261, label %263

261:                                              ; preds = %260
  call void @make_decl_rtl(ptr noundef nonnull %236) #16
  %262 = load ptr, ptr %257, align 8, !tbaa !5
  br label %263

263:                                              ; preds = %260, %261
  %264 = phi ptr [ %262, %261 ], [ %258, %260 ]
  %265 = load i32, ptr %264, align 8
  %266 = and i32 %265, 65535
  %267 = icmp eq i32 %266, 37
  br i1 %267, label %272, label %296

268:                                              ; preds = %256
  br i1 %259, label %269, label %272

269:                                              ; preds = %268
  %270 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %236, i64 0, i32 1
  call void @make_decl_rtl(ptr noundef nonnull %236) #16
  %271 = load ptr, ptr %270, align 8, !tbaa !5
  br label %272

272:                                              ; preds = %263, %268, %269
  %273 = phi ptr [ %271, %269 ], [ %258, %268 ], [ %264, %263 ]
  %274 = load i32, ptr %273, align 8
  %275 = and i32 %274, 65535
  %276 = icmp eq i32 %275, 37
  br i1 %276, label %277, label %302

277:                                              ; preds = %272
  %278 = load i64, ptr %238, align 8
  %279 = lshr i32 %274, 16
  %280 = and i32 %279, 255
  %281 = and i64 %278, 65535
  %282 = icmp eq i64 %281, 14
  br i1 %282, label %283, label %285

283:                                              ; preds = %277
  %284 = call i32 @vector_type_mode(ptr noundef nonnull %238) #16
  br label %290

285:                                              ; preds = %277
  %286 = getelementptr inbounds %struct.tree_type, ptr %238, i64 0, i32 6
  %287 = load i32, ptr %286, align 4
  %288 = lshr i32 %287, 16
  %289 = and i32 %288, 255
  br label %290

290:                                              ; preds = %285, %283
  %291 = phi i32 [ %284, %283 ], [ %289, %285 ]
  %292 = icmp ne i32 %280, %291
  %293 = load i8, ptr %17, align 1
  %294 = icmp ne i8 %293, 0
  %295 = select i1 %292, i1 %294, i1 false
  br i1 %295, label %299, label %302

296:                                              ; preds = %263, %252
  %297 = load i8, ptr %17, align 1, !tbaa !5
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %302, label %299

299:                                              ; preds = %290, %296
  %300 = load i8, ptr %16, align 1, !tbaa !5
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %345, label %302

302:                                              ; preds = %244, %299, %296, %290, %272
  %303 = call fastcc ptr @expand_expr(ptr noundef nonnull %236, ptr noundef null, i32 noundef 0, i32 noundef 5) #17
  %304 = load i32, ptr %303, align 8
  %305 = and i32 %304, 65535
  %306 = icmp eq i32 %305, 43
  br i1 %306, label %307, label %310

307:                                              ; preds = %302
  %308 = call ptr @validize_mem(ptr noundef nonnull %303) #16
  %309 = load i32, ptr %308, align 8
  br label %310

310:                                              ; preds = %307, %302
  %311 = phi i32 [ %309, %307 ], [ %304, %302 ]
  %312 = phi ptr [ %308, %307 ], [ %303, %302 ]
  %313 = load i8, ptr %17, align 1, !tbaa !5
  %314 = icmp ne i8 %313, 0
  %315 = and i32 %311, 65535
  %316 = icmp eq i32 %315, 43
  %317 = select i1 %314, i1 true, i1 %316
  br i1 %317, label %320, label %318

318:                                              ; preds = %310
  call void (ptr, ...) @error(ptr noundef nonnull @.str.17, i32 noundef %240) #16
  %319 = load i32, ptr %312, align 8
  br label %320

320:                                              ; preds = %318, %310
  %321 = phi i32 [ %319, %318 ], [ %311, %310 ]
  %322 = icmp eq i8 %249, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %320
  %324 = load i8, ptr %16, align 1, !tbaa !5
  %325 = and i32 %321, 65535
  br label %330

326:                                              ; preds = %320
  %327 = and i32 %321, 65535
  %328 = icmp eq i32 %327, 43
  %329 = load i8, ptr %16, align 1, !tbaa !5
  br i1 %328, label %334, label %330

330:                                              ; preds = %323, %326
  %331 = phi i32 [ %325, %323 ], [ %327, %326 ]
  %332 = phi i8 [ %324, %323 ], [ %329, %326 ]
  %333 = icmp eq i32 %331, 41
  br i1 %333, label %334, label %362

334:                                              ; preds = %326, %330
  %335 = phi i8 [ %332, %330 ], [ %329, %326 ]
  store ptr %312, ptr %245, align 8, !tbaa !21
  %336 = lshr i32 %321, 16
  %337 = and i32 %336, 255
  %338 = call ptr @gen_reg_rtx(i32 noundef %337) #16
  %339 = icmp eq i8 %335, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %334
  %341 = getelementptr inbounds ptr, ptr %28, i64 %231
  store ptr %338, ptr %341, align 8, !tbaa !21
  store i32 %37, ptr @generating_concat_p, align 4, !tbaa !48
  br label %382

342:                                              ; preds = %334
  %343 = call ptr @emit_move_insn(ptr noundef %338, ptr noundef nonnull %312) #16
  %344 = getelementptr inbounds ptr, ptr %28, i64 %231
  store ptr %338, ptr %344, align 8, !tbaa !21
  store i32 %37, ptr @generating_concat_p, align 4, !tbaa !48
  br label %365

345:                                              ; preds = %299
  %346 = call ptr @assign_temp(ptr noundef %238, i32 noundef 0, i32 noundef 0, i32 noundef 1) #16
  %347 = call ptr @validize_mem(ptr noundef %346) #16
  %348 = load i32, ptr %347, align 8
  %349 = and i32 %348, 65535
  %350 = icmp eq i32 %349, 43
  br i1 %350, label %359, label %351

351:                                              ; preds = %345
  %352 = load ptr, ptr %235, align 8, !tbaa !5
  %353 = load i64, ptr %352, align 8
  %354 = and i64 %353, 65535
  %355 = icmp eq i64 %354, 141
  br i1 %355, label %356, label %359

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.tree_ssa_name, ptr %352, i64 0, i32 1
  %358 = load ptr, ptr %357, align 8, !tbaa !5
  call void @set_reg_attrs_for_decl_rtl(ptr noundef %358, ptr noundef nonnull %347) #16
  br label %359

359:                                              ; preds = %345, %351, %356
  %360 = call ptr @make_tree(ptr noundef %238, ptr noundef nonnull %347) #16
  store ptr %360, ptr %235, align 8, !tbaa !5
  %361 = getelementptr inbounds ptr, ptr %28, i64 %231
  store ptr %347, ptr %361, align 8, !tbaa !21
  store i32 %37, ptr @generating_concat_p, align 4, !tbaa !48
  br label %382

362:                                              ; preds = %330
  %363 = getelementptr inbounds ptr, ptr %28, i64 %231
  store ptr %312, ptr %363, align 8, !tbaa !21
  store i32 %37, ptr @generating_concat_p, align 4, !tbaa !48
  %364 = icmp eq i8 %332, 0
  br i1 %364, label %382, label %365

365:                                              ; preds = %342, %362
  %366 = load i64, ptr %238, align 8
  %367 = and i64 %366, 65535
  %368 = icmp eq i64 %367, 14
  br i1 %368, label %369, label %371

369:                                              ; preds = %365
  %370 = call i32 @vector_type_mode(ptr noundef nonnull %238) #16
  br label %376

371:                                              ; preds = %365
  %372 = getelementptr inbounds %struct.tree_type, ptr %238, i64 0, i32 6
  %373 = load i32, ptr %372, align 4
  %374 = lshr i32 %373, 16
  %375 = and i32 %374, 255
  br label %376

376:                                              ; preds = %371, %369
  %377 = phi i32 [ %370, %369 ], [ %375, %371 ]
  %378 = sext i32 %232 to i64
  %379 = getelementptr inbounds i32, ptr %32, i64 %378
  store i32 %377, ptr %379, align 4, !tbaa !48
  %380 = add nsw i32 %232, 1
  %381 = getelementptr inbounds i32, ptr %30, i64 %378
  store i32 %240, ptr %381, align 4, !tbaa !48
  br label %382

382:                                              ; preds = %359, %340, %376, %362
  %383 = phi i32 [ %380, %376 ], [ %232, %362 ], [ %232, %340 ], [ %232, %359 ]
  %384 = call fastcc zeroext i8 @tree_conflicts_with_clobbers_p(ptr noundef nonnull %236, ptr noundef nonnull %8) #17, !range !40
  %385 = icmp eq i8 %384, 0
  %386 = select i1 %385, i32 %233, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #18
  %387 = getelementptr inbounds %struct.tree_common, ptr %234, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !5
  %389 = add nuw i64 %231, 1
  %390 = icmp eq ptr %388, null
  br i1 %390, label %391, label %230, !llvm.loop !55

391:                                              ; preds = %382, %201
  %392 = phi i32 [ 0, %201 ], [ %386, %382 ]
  %393 = phi i32 [ 0, %201 ], [ %383, %382 ]
  %394 = call ptr @rtvec_alloc(i32 noundef %194) #16
  %395 = call ptr @rtvec_alloc(i32 noundef %194) #16
  %396 = call ptr @rtvec_alloc(i32 noundef %25) #16
  br i1 %38, label %402, label %397

397:                                              ; preds = %391
  %398 = load ptr, ptr %28, align 16, !tbaa !21
  %399 = load i32, ptr %398, align 8
  %400 = lshr i32 %399, 16
  %401 = and i32 %400, 255
  br label %402

402:                                              ; preds = %391, %397
  %403 = phi i32 [ %39, %397 ], [ 134217728, %391 ]
  %404 = phi i32 [ %401, %397 ], [ 0, %391 ]
  %405 = getelementptr inbounds %struct.tree_string, ptr %43, i64 0, i32 2
  %406 = call ptr @ggc_alloc_string(ptr noundef nonnull %405, i32 noundef -1) #16
  %407 = call ptr @gen_rtx_fmt_ssiEEEi_stat(i32 noundef 17, i32 noundef %404, ptr noundef %406, ptr noundef nonnull @empty_string, i32 noundef 0, ptr noundef %394, ptr noundef %395, ptr noundef %396, i32 noundef %6) #16
  %408 = load i32, ptr %407, align 8
  %409 = and i32 %403, 134217728
  %410 = and i32 %408, -134217729
  %411 = or disjoint i32 %410, %409
  store i32 %411, ptr %407, align 8
  br i1 %47, label %579, label %412

412:                                              ; preds = %402
  %413 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1, i32 0, i32 1
  %414 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1, i32 0, i32 2
  br label %415

415:                                              ; preds = %412, %565
  %416 = phi i64 [ 0, %412 ], [ %577, %565 ]
  %417 = phi i32 [ %392, %412 ], [ %574, %565 ]
  %418 = phi ptr [ %2, %412 ], [ %576, %565 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #18
  %419 = add nsw i64 %416, %26
  %420 = getelementptr inbounds ptr, ptr %36, i64 %419
  %421 = load ptr, ptr %420, align 8, !tbaa !21
  store ptr %421, ptr %21, align 8, !tbaa !21
  %422 = trunc i64 %416 to i32
  %423 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %21, i32 noundef %422, i32 noundef %194, i32 noundef %24, i32 noundef %393, ptr noundef nonnull %36, ptr noundef nonnull %20, ptr noundef nonnull %19) #17
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %415
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 875, ptr noundef nonnull @.str.1) #16
  br label %426

426:                                              ; preds = %415, %425
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !48
  %427 = getelementptr inbounds %struct.tree_list, ptr %418, i64 0, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !5
  %429 = getelementptr inbounds %struct.tree_common, ptr %428, i64 0, i32 2
  %430 = load ptr, ptr %429, align 8, !tbaa !5
  %431 = load i8, ptr %19, align 1, !tbaa !5
  %432 = icmp eq i8 %431, 0
  %433 = load i8, ptr %20, align 1
  %434 = icmp eq i8 %433, 0
  %435 = select i1 %434, i32 4, i32 6
  %436 = select i1 %432, i32 %435, i32 0
  %437 = call fastcc ptr @expand_expr(ptr noundef %428, ptr noundef null, i32 noundef 0, i32 noundef %436) #17
  %438 = load i32, ptr %437, align 8
  %439 = trunc i32 %438 to i16
  switch i16 %439, label %446 [
    i16 41, label %440
    i16 43, label %444
  ]

440:                                              ; preds = %426
  %441 = lshr i32 %438, 16
  %442 = and i32 %441, 255
  %443 = call ptr @force_reg(i32 noundef %442, ptr noundef nonnull %437) #16
  br label %446

444:                                              ; preds = %426
  %445 = call ptr @validize_mem(ptr noundef nonnull %437) #16
  br label %446

446:                                              ; preds = %426, %444, %440
  %447 = phi ptr [ %443, %440 ], [ %445, %444 ], [ %437, %426 ]
  %448 = load ptr, ptr %21, align 8, !tbaa !21
  %449 = call i32 @asm_operand_ok(ptr noundef %447, ptr noundef %448, ptr noundef null) #16
  %450 = icmp slt i32 %449, 1
  br i1 %450, label %451, label %551

451:                                              ; preds = %446
  br i1 %432, label %480, label %452

452:                                              ; preds = %451
  %453 = load i64, ptr %430, align 8
  %454 = and i64 %453, 65535
  %455 = icmp eq i64 %454, 14
  br i1 %455, label %456, label %458

456:                                              ; preds = %452
  %457 = call i32 @vector_type_mode(ptr noundef nonnull %430) #16
  br label %463

458:                                              ; preds = %452
  %459 = getelementptr inbounds %struct.tree_type, ptr %430, i64 0, i32 6
  %460 = load i32, ptr %459, align 4
  %461 = lshr i32 %460, 16
  %462 = and i32 %461, 255
  br label %463

463:                                              ; preds = %458, %456
  %464 = phi i32 [ %457, %456 ], [ %462, %458 ]
  %465 = icmp eq i32 %464, 1
  br i1 %465, label %480, label %466

466:                                              ; preds = %463
  %467 = load i64, ptr %430, align 8
  %468 = and i64 %467, 65535
  %469 = icmp eq i64 %468, 14
  br i1 %469, label %470, label %472

470:                                              ; preds = %466
  %471 = call i32 @vector_type_mode(ptr noundef nonnull %430) #16
  br label %477

472:                                              ; preds = %466
  %473 = getelementptr inbounds %struct.tree_type, ptr %430, i64 0, i32 6
  %474 = load i32, ptr %473, align 4
  %475 = lshr i32 %474, 16
  %476 = and i32 %475, 255
  br label %477

477:                                              ; preds = %472, %470
  %478 = phi i32 [ %471, %470 ], [ %476, %472 ]
  %479 = call ptr @force_reg(i32 noundef %478, ptr noundef %447) #16
  br label %551

480:                                              ; preds = %463, %451
  br i1 %434, label %481, label %484

481:                                              ; preds = %480
  %482 = trunc i64 %419 to i32
  %483 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.18, i32 noundef %482) #16
  br label %551

484:                                              ; preds = %480
  %485 = load i32, ptr %447, align 8
  %486 = and i32 %485, 65535
  %487 = icmp eq i32 %486, 43
  br i1 %487, label %551, label %488

488:                                              ; preds = %484
  %489 = trunc i64 %419 to i32
  %490 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.19, i32 noundef %489) #16
  %491 = load i32, ptr %447, align 8
  %492 = and i32 %491, 65535
  %493 = zext nneg i32 %492 to i64
  %494 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %493
  %495 = load i32, ptr %494, align 4, !tbaa !48
  %496 = icmp eq i32 %495, 9
  br i1 %496, label %497, label %528

497:                                              ; preds = %488
  %498 = load i64, ptr %430, align 8
  %499 = and i64 %498, 65535
  %500 = icmp eq i64 %499, 14
  br i1 %500, label %501, label %503

501:                                              ; preds = %497
  %502 = call i32 @vector_type_mode(ptr noundef nonnull %430) #16
  br label %508

503:                                              ; preds = %497
  %504 = getelementptr inbounds %struct.tree_type, ptr %430, i64 0, i32 6
  %505 = load i32, ptr %504, align 4
  %506 = lshr i32 %505, 16
  %507 = and i32 %506, 255
  br label %508

508:                                              ; preds = %503, %501
  %509 = phi i32 [ %502, %501 ], [ %507, %503 ]
  %510 = call ptr @force_const_mem(i32 noundef %509, ptr noundef nonnull %447) #16
  %511 = icmp eq ptr %510, null
  br i1 %511, label %514, label %512

512:                                              ; preds = %508
  %513 = call ptr @validize_mem(ptr noundef nonnull %510) #16
  br label %528

514:                                              ; preds = %508
  %515 = load i64, ptr %430, align 8
  %516 = and i64 %515, 65535
  %517 = icmp eq i64 %516, 14
  br i1 %517, label %518, label %520

518:                                              ; preds = %514
  %519 = call i32 @vector_type_mode(ptr noundef nonnull %430) #16
  br label %525

520:                                              ; preds = %514
  %521 = getelementptr inbounds %struct.tree_type, ptr %430, i64 0, i32 6
  %522 = load i32, ptr %521, align 4
  %523 = lshr i32 %522, 16
  %524 = and i32 %523, 255
  br label %525

525:                                              ; preds = %520, %518
  %526 = phi i32 [ %519, %518 ], [ %524, %520 ]
  %527 = call ptr @force_reg(i32 noundef %526, ptr noundef nonnull %447) #16
  br label %528

528:                                              ; preds = %512, %525, %488
  %529 = phi ptr [ %447, %488 ], [ %513, %512 ], [ %527, %525 ]
  %530 = load i32, ptr %529, align 8
  %531 = trunc i32 %530 to i16
  switch i16 %531, label %551 [
    i16 37, label %532
    i16 39, label %532
    i16 41, label %532
  ]

532:                                              ; preds = %528, %528, %528
  %533 = load i64, ptr %430, align 8
  %534 = trunc i64 %533 to i32
  %535 = lshr i32 %534, 18
  %536 = and i32 %535, 2
  %537 = getelementptr inbounds %struct.tree_type, ptr %430, i64 0, i32 6
  %538 = load i32, ptr %537, align 4
  %539 = lshr i32 %538, 11
  %540 = and i32 %539, 4
  %541 = lshr i64 %533, 48
  %542 = trunc i64 %541 to i32
  %543 = and i32 %542, 65280
  %544 = or disjoint i32 %540, %536
  %545 = or disjoint i32 %544, %543
  %546 = or disjoint i32 %545, 1
  %547 = call ptr @build_qualified_type(ptr noundef nonnull %430, i32 noundef %546) #16
  %548 = call ptr @assign_temp(ptr noundef %547, i32 noundef 1, i32 noundef 1, i32 noundef 1) #16
  %549 = call ptr @validize_mem(ptr noundef %548) #16
  %550 = call ptr @emit_move_insn(ptr noundef %549, ptr noundef nonnull %529) #16
  br label %551

551:                                              ; preds = %528, %477, %484, %532, %481, %446
  %552 = phi ptr [ %479, %477 ], [ %447, %484 ], [ %549, %532 ], [ %447, %481 ], [ %447, %446 ], [ %529, %528 ]
  store i32 %37, ptr @generating_concat_p, align 4, !tbaa !48
  %553 = load ptr, ptr %413, align 8, !tbaa !5
  %554 = getelementptr inbounds %struct.rtvec_def, ptr %553, i64 0, i32 1, i64 %416
  store ptr %552, ptr %554, align 8, !tbaa !21
  %555 = load i64, ptr %430, align 8
  %556 = and i64 %555, 65535
  %557 = icmp eq i64 %556, 14
  br i1 %557, label %558, label %560

558:                                              ; preds = %551
  %559 = call i32 @vector_type_mode(ptr noundef nonnull %430) #16
  br label %565

560:                                              ; preds = %551
  %561 = getelementptr inbounds %struct.tree_type, ptr %430, i64 0, i32 6
  %562 = load i32, ptr %561, align 4
  %563 = lshr i32 %562, 16
  %564 = and i32 %563, 255
  br label %565

565:                                              ; preds = %560, %558
  %566 = phi i32 [ %559, %558 ], [ %564, %560 ]
  %567 = load ptr, ptr %420, align 8, !tbaa !21
  %568 = call ptr @ggc_alloc_string(ptr noundef %567, i32 noundef -1) #16
  %569 = call ptr @gen_rtx_fmt_si_stat(i32 noundef 16, i32 noundef %566, ptr noundef %568, i32 noundef 0) #16
  %570 = load ptr, ptr %414, align 8, !tbaa !5
  %571 = getelementptr inbounds %struct.rtvec_def, ptr %570, i64 0, i32 1, i64 %416
  store ptr %569, ptr %571, align 8, !tbaa !21
  %572 = call fastcc zeroext i8 @tree_conflicts_with_clobbers_p(ptr noundef nonnull %428, ptr noundef nonnull %8) #17, !range !40
  %573 = icmp eq i8 %572, 0
  %574 = select i1 %573, i32 %417, i32 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #18
  %575 = getelementptr inbounds %struct.tree_common, ptr %418, i64 0, i32 1
  %576 = load ptr, ptr %575, align 8, !tbaa !5
  %577 = add nuw i64 %416, 1
  %578 = icmp eq ptr %576, null
  br i1 %578, label %579, label %415, !llvm.loop !56

579:                                              ; preds = %565, %402
  %580 = phi i32 [ %392, %402 ], [ %574, %565 ]
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !48
  %581 = icmp sgt i32 %393, 0
  br i1 %581, label %582, label %588

582:                                              ; preds = %579
  %583 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1, i32 0, i32 1
  %584 = sub i32 %194, %393
  %585 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1, i32 0, i32 2
  %586 = sext i32 %584 to i64
  %587 = zext nneg i32 %393 to i64
  br label %595

588:                                              ; preds = %595, %579
  %589 = icmp sgt i32 %25, 0
  br i1 %589, label %592, label %590

590:                                              ; preds = %588
  store i32 %37, ptr @generating_concat_p, align 4, !tbaa !48
  %591 = icmp eq i32 %81, 0
  br label %634

592:                                              ; preds = %588
  %593 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 1
  %594 = zext nneg i32 %25 to i64
  br label %614

595:                                              ; preds = %582, %595
  %596 = phi i64 [ 0, %582 ], [ %612, %595 ]
  %597 = getelementptr inbounds i32, ptr %30, i64 %596
  %598 = load i32, ptr %597, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %22) #18
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds ptr, ptr %28, i64 %599
  %601 = load ptr, ptr %600, align 8, !tbaa !21
  %602 = load ptr, ptr %583, align 8, !tbaa !5
  %603 = add nsw i64 %596, %586
  %604 = getelementptr inbounds %struct.rtvec_def, ptr %602, i64 0, i32 1, i64 %603
  store ptr %601, ptr %604, align 8, !tbaa !21
  %605 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %598) #17
  %606 = getelementptr inbounds i32, ptr %32, i64 %596
  %607 = load i32, ptr %606, align 4, !tbaa !48
  %608 = call ptr @ggc_alloc_string(ptr noundef nonnull %22, i32 noundef -1) #16
  %609 = call ptr @gen_rtx_fmt_si_stat(i32 noundef 16, i32 noundef %607, ptr noundef %608, i32 noundef 0) #16
  %610 = load ptr, ptr %585, align 8, !tbaa !5
  %611 = getelementptr inbounds %struct.rtvec_def, ptr %610, i64 0, i32 1, i64 %603
  store ptr %609, ptr %611, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %22) #18
  %612 = add nuw nsw i64 %596, 1
  %613 = icmp eq i64 %612, %587
  br i1 %613, label %588, label %595, !llvm.loop !57

614:                                              ; preds = %592, %614
  %615 = phi i64 [ 0, %592 ], [ %623, %614 ]
  %616 = phi ptr [ %4, %592 ], [ %625, %614 ]
  %617 = getelementptr inbounds %struct.tree_list, ptr %616, i64 0, i32 2
  %618 = load ptr, ptr %617, align 8, !tbaa !5
  %619 = call ptr @label_rtx(ptr noundef %618) #17
  %620 = call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %619) #16
  %621 = load ptr, ptr %593, align 8, !tbaa !5
  %622 = getelementptr inbounds %struct.rtvec_def, ptr %621, i64 0, i32 1, i64 %615
  store ptr %620, ptr %622, align 8, !tbaa !21
  %623 = add nuw nsw i64 %615, 1
  %624 = getelementptr inbounds %struct.tree_common, ptr %616, i64 0, i32 1
  %625 = load ptr, ptr %624, align 8, !tbaa !5
  %626 = icmp eq i64 %623, %594
  br i1 %626, label %627, label %614, !llvm.loop !58

627:                                              ; preds = %614
  store i32 %37, ptr @generating_concat_p, align 4, !tbaa !48
  %628 = icmp eq i32 %81, 0
  %629 = select i1 %589, i1 %628, i1 false
  br i1 %629, label %630, label %634

630:                                              ; preds = %627
  br i1 %38, label %632, label %631

631:                                              ; preds = %630
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 980, ptr noundef nonnull @.str.1) #16
  br label %632

632:                                              ; preds = %630, %631
  %633 = call ptr @emit_jump_insn(ptr noundef nonnull %407) #16
  br label %758

634:                                              ; preds = %590, %627
  %635 = phi i1 [ %591, %590 ], [ %628, %627 ]
  %636 = select i1 %38, i1 %635, i1 false
  br i1 %636, label %637, label %639

637:                                              ; preds = %634
  %638 = call ptr @emit_insn(ptr noundef nonnull %407) #16
  br label %774

639:                                              ; preds = %634
  %640 = icmp eq i32 %24, 1
  %641 = select i1 %640, i1 %635, i1 false
  br i1 %641, label %642, label %649

642:                                              ; preds = %639
  %643 = load ptr, ptr %36, align 16, !tbaa !21
  %644 = call ptr @ggc_alloc_string(ptr noundef %643, i32 noundef -1) #16
  %645 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %644, ptr %645, align 8, !tbaa !5
  %646 = load ptr, ptr %28, align 16, !tbaa !21
  %647 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %646, ptr noundef nonnull %407) #16
  %648 = call ptr @emit_insn(ptr noundef %647) #16
  br label %760

649:                                              ; preds = %639
  %650 = call i32 @llvm.umax.i32(i32 %24, i32 1)
  %651 = add nsw i32 %81, %650
  %652 = call ptr @rtvec_alloc(i32 noundef %651) #16
  %653 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %652) #16
  br i1 %44, label %688, label %654

654:                                              ; preds = %649
  %655 = getelementptr inbounds %struct.rtx_def, ptr %653, i64 0, i32 1
  br label %656

656:                                              ; preds = %654, %656
  %657 = phi i64 [ 0, %654 ], [ %683, %656 ]
  %658 = phi ptr [ %1, %654 ], [ %682, %656 ]
  %659 = getelementptr inbounds ptr, ptr %28, i64 %657
  %660 = load ptr, ptr %659, align 8, !tbaa !21
  %661 = load i32, ptr %660, align 8
  %662 = lshr i32 %661, 16
  %663 = and i32 %662, 255
  %664 = call ptr @ggc_alloc_string(ptr noundef nonnull %405, i32 noundef -1) #16
  %665 = getelementptr inbounds ptr, ptr %36, i64 %657
  %666 = load ptr, ptr %665, align 8, !tbaa !21
  %667 = call ptr @ggc_alloc_string(ptr noundef %666, i32 noundef -1) #16
  %668 = trunc i64 %657 to i32
  %669 = call ptr @gen_rtx_fmt_ssiEEEi_stat(i32 noundef 17, i32 noundef %663, ptr noundef %664, ptr noundef %667, i32 noundef %668, ptr noundef %394, ptr noundef %395, ptr noundef %396, i32 noundef %6) #16
  %670 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef nonnull %660, ptr noundef %669) #16
  %671 = load ptr, ptr %655, align 8, !tbaa !5
  %672 = getelementptr inbounds %struct.rtvec_def, ptr %671, i64 0, i32 1, i64 %657
  store ptr %670, ptr %672, align 8, !tbaa !21
  %673 = load ptr, ptr %655, align 8, !tbaa !5
  %674 = getelementptr inbounds %struct.rtvec_def, ptr %673, i64 0, i32 1, i64 %657
  %675 = load ptr, ptr %674, align 8, !tbaa !21
  %676 = getelementptr inbounds %struct.rtx_def, ptr %675, i64 0, i32 1, i32 0, i32 0, i64 1
  %677 = load ptr, ptr %676, align 8, !tbaa !5
  %678 = load i32, ptr %677, align 8
  %679 = and i32 %678, -134217729
  %680 = or disjoint i32 %679, %409
  store i32 %680, ptr %677, align 8
  %681 = getelementptr inbounds %struct.tree_common, ptr %658, i64 0, i32 1
  %682 = load ptr, ptr %681, align 8, !tbaa !5
  %683 = add nuw i64 %657, 1
  %684 = icmp eq ptr %682, null
  br i1 %684, label %685, label %656, !llvm.loop !59

685:                                              ; preds = %656
  %686 = trunc i64 %683 to i32
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %692

688:                                              ; preds = %649, %685
  %689 = getelementptr inbounds %struct.rtx_def, ptr %653, i64 0, i32 1
  %690 = load ptr, ptr %689, align 8, !tbaa !5
  %691 = getelementptr inbounds %struct.rtvec_def, ptr %690, i64 0, i32 1
  store ptr %407, ptr %691, align 8, !tbaa !21
  br label %692

692:                                              ; preds = %688, %685
  %693 = phi i32 [ 1, %688 ], [ %686, %685 ]
  br i1 %79, label %753, label %694

694:                                              ; preds = %692
  %695 = icmp eq i32 %580, 0
  %696 = icmp sgt i32 %24, 0
  %697 = sub i32 %194, %393
  %698 = icmp sgt i32 %697, 0
  %699 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1, i32 0, i32 1
  %700 = getelementptr inbounds %struct.rtx_def, ptr %653, i64 0, i32 1
  %701 = zext nneg i32 %24 to i64
  %702 = zext nneg i32 %697 to i64
  br label %703

703:                                              ; preds = %694, %748
  %704 = phi ptr [ %78, %694 ], [ %751, %748 ]
  %705 = phi i32 [ %693, %694 ], [ %749, %748 ]
  %706 = getelementptr inbounds %struct.tree_list, ptr %704, i64 0, i32 2
  %707 = load ptr, ptr %706, align 8, !tbaa !5
  %708 = getelementptr inbounds %struct.tree_string, ptr %707, i64 0, i32 2
  %709 = call i32 @decode_reg_name(ptr noundef nonnull %708) #16
  %710 = icmp slt i32 %709, 0
  br i1 %710, label %711, label %716

711:                                              ; preds = %703
  %712 = icmp eq i32 %709, -4
  br i1 %712, label %713, label %748

713:                                              ; preds = %711
  %714 = call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef 0) #16
  %715 = call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %714) #16
  br label %741

716:                                              ; preds = %703
  %717 = call ptr @gen_rtx_REG(i32 noundef 14, i32 noundef %709) #16
  br i1 %695, label %718, label %741

718:                                              ; preds = %716
  br i1 %696, label %720, label %719

719:                                              ; preds = %727, %718
  br i1 %698, label %730, label %741

720:                                              ; preds = %718, %727
  %721 = phi i64 [ %728, %727 ], [ 0, %718 ]
  %722 = getelementptr inbounds ptr, ptr %28, i64 %721
  %723 = load ptr, ptr %722, align 8, !tbaa !21
  %724 = call i32 @reg_overlap_mentioned_p(ptr noundef %717, ptr noundef %723) #16
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %727, label %726

726:                                              ; preds = %720
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.21) #16
  br label %727

727:                                              ; preds = %720, %726
  %728 = add nuw nsw i64 %721, 1
  %729 = icmp eq i64 %728, %701
  br i1 %729, label %719, label %720, !llvm.loop !60

730:                                              ; preds = %719, %738
  %731 = phi i64 [ %739, %738 ], [ 0, %719 ]
  %732 = load ptr, ptr %699, align 8, !tbaa !5
  %733 = getelementptr inbounds %struct.rtvec_def, ptr %732, i64 0, i32 1, i64 %731
  %734 = load ptr, ptr %733, align 8, !tbaa !21
  %735 = call i32 @reg_overlap_mentioned_p(ptr noundef %717, ptr noundef %734) #16
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %738, label %737

737:                                              ; preds = %730
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.22) #16
  br label %738

738:                                              ; preds = %730, %737
  %739 = add nuw nsw i64 %731, 1
  %740 = icmp eq i64 %739, %702
  br i1 %740, label %741, label %730, !llvm.loop !61

741:                                              ; preds = %738, %716, %719, %713
  %742 = phi ptr [ %715, %713 ], [ %717, %719 ], [ %717, %716 ], [ %717, %738 ]
  %743 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %742) #16
  %744 = load ptr, ptr %700, align 8, !tbaa !5
  %745 = add nsw i32 %705, 1
  %746 = sext i32 %705 to i64
  %747 = getelementptr inbounds %struct.rtvec_def, ptr %744, i64 0, i32 1, i64 %746
  store ptr %743, ptr %747, align 8, !tbaa !21
  br label %748

748:                                              ; preds = %741, %711
  %749 = phi i32 [ %705, %711 ], [ %745, %741 ]
  %750 = getelementptr inbounds %struct.tree_common, ptr %704, i64 0, i32 1
  %751 = load ptr, ptr %750, align 8, !tbaa !5
  %752 = icmp eq ptr %751, null
  br i1 %752, label %753, label %703, !llvm.loop !62

753:                                              ; preds = %748, %692
  br i1 %589, label %754, label %756

754:                                              ; preds = %753
  %755 = call ptr @emit_jump_insn(ptr noundef %653) #16
  br label %758

756:                                              ; preds = %753
  %757 = call ptr @emit_insn(ptr noundef %653) #16
  br label %758

758:                                              ; preds = %754, %756, %632
  %759 = icmp sgt i32 %24, 0
  br i1 %759, label %760, label %774

760:                                              ; preds = %642, %758
  %761 = zext nneg i32 %24 to i64
  br label %762

762:                                              ; preds = %760, %771
  %763 = phi i64 [ 0, %760 ], [ %772, %771 ]
  %764 = getelementptr inbounds ptr, ptr %31, i64 %763
  %765 = load ptr, ptr %764, align 8, !tbaa !21
  %766 = icmp eq ptr %765, null
  br i1 %766, label %771, label %767

767:                                              ; preds = %762
  %768 = getelementptr inbounds ptr, ptr %28, i64 %763
  %769 = load ptr, ptr %768, align 8, !tbaa !21
  %770 = call ptr @emit_move_insn(ptr noundef nonnull %765, ptr noundef %769) #16
  br label %771

771:                                              ; preds = %762, %767
  %772 = add nuw nsw i64 %763, 1
  %773 = icmp eq i64 %772, %761
  br i1 %773, label %774, label %762, !llvm.loop !63

774:                                              ; preds = %771, %637, %758
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 32), align 4, !tbaa !64
  call void @free_temp_slots() #16
  br label %776

775:                                              ; preds = %211, %202
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #18
  br label %776

776:                                              ; preds = %82, %183, %113, %775, %7, %774, %200
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  ret void
}

; Function Attrs: optsize
declare void @expand_assignment(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_temp_slots() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @resolve_asm_operand_names(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @check_unique_operand_names(ptr noundef %1, ptr noundef %2, ptr noundef %3) #17
  %5 = icmp eq ptr %2, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %4, %30
  %7 = phi ptr [ %32, %30 ], [ %2, %4 ]
  %8 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.tree_string, ptr %11, i64 0, i32 2
  %13 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 91) #17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %6
  %16 = tail call ptr @xstrdup(ptr noundef nonnull %12) #16
  %17 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %16, i32 noundef 91) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %15 ]
  %21 = tail call fastcc ptr @resolve_operand_name_1(ptr noundef nonnull %20, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null) #17
  %22 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %21, i32 noundef 91) #17
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !65

24:                                               ; preds = %19, %15
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #17
  %26 = trunc i64 %25 to i32
  %27 = tail call ptr @build_string(i32 noundef %26, ptr noundef %16) #16
  %28 = load ptr, ptr %8, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.tree_list, ptr %28, i64 0, i32 2
  store ptr %27, ptr %29, align 8, !tbaa !5
  tail call void @free(ptr noundef %16) #17
  br label %30

30:                                               ; preds = %6, %24
  %31 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %6, !llvm.loop !66

34:                                               ; preds = %30, %4
  %35 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 2
  %36 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %35, i32 noundef 37) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %90, label %38

38:                                               ; preds = %34, %53
  %39 = phi ptr [ %54, %53 ], [ %36, %34 ]
  %40 = getelementptr inbounds i8, ptr %39, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = icmp eq i8 %41, 91
  br i1 %42, label %56, label %43

43:                                               ; preds = %38
  %44 = zext i8 %41 to i64
  %45 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !34
  %47 = and i16 %46, 136
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds i8, ptr %39, i64 2
  %51 = load i8, ptr %50, align 1, !tbaa !5
  %52 = icmp eq i8 %51, 91
  br i1 %52, label %56, label %53

53:                                               ; preds = %49, %43
  %54 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %40, i32 noundef 37) #17
  %55 = icmp eq ptr %54, null
  br i1 %55, label %90, label %38, !llvm.loop !67

56:                                               ; preds = %38, %49
  %57 = tail call ptr @xstrdup(ptr noundef nonnull %35) #16
  %58 = ptrtoint ptr %39 to i64
  %59 = ptrtoint ptr %35 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds i8, ptr %57, i64 %60
  %62 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %61, i32 noundef 37) #17
  %63 = icmp eq ptr %62, null
  br i1 %63, label %86, label %64

64:                                               ; preds = %56, %79
  %65 = phi ptr [ %81, %79 ], [ %62, %56 ]
  %66 = getelementptr inbounds i8, ptr %65, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !5
  %68 = icmp eq i8 %67, 91
  br i1 %68, label %83, label %69

69:                                               ; preds = %64
  %70 = zext i8 %67 to i64
  %71 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !34
  %73 = and i16 %72, 136
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %69
  %76 = getelementptr inbounds i8, ptr %65, i64 2
  %77 = load i8, ptr %76, align 1, !tbaa !5
  %78 = icmp eq i8 %77, 91
  br i1 %78, label %83, label %79

79:                                               ; preds = %69, %75, %83
  %80 = phi ptr [ %85, %83 ], [ %66, %75 ], [ %66, %69 ]
  %81 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %80, i32 noundef 37) #17
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %64, !llvm.loop !68

83:                                               ; preds = %75, %64
  %84 = phi ptr [ %66, %64 ], [ %76, %75 ]
  %85 = tail call fastcc ptr @resolve_operand_name_1(ptr noundef nonnull %84, ptr noundef %1, ptr noundef %2, ptr noundef %3) #17
  br label %79

86:                                               ; preds = %79, %56
  %87 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %57) #17
  %88 = trunc i64 %87 to i32
  %89 = tail call ptr @build_string(i32 noundef %88, ptr noundef %57) #16
  tail call void @free(ptr noundef %57) #17
  br label %90

90:                                               ; preds = %53, %34, %86
  %91 = phi ptr [ %89, %86 ], [ %0, %34 ], [ %0, %53 ]
  ret ptr %91
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_unique_operand_names(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %26, %3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %32

7:                                                ; preds = %3, %26
  %8 = phi ptr [ %28, %26 ], [ %0, %3 ]
  %9 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %7, %19
  %15 = phi ptr [ %17, %19 ], [ %8, %7 ]
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_list, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.tree_list, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = tail call i32 @simple_cst_equal(ptr noundef nonnull %12, ptr noundef %23) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %14, label %100, !llvm.loop !69

26:                                               ; preds = %14, %7
  %27 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %5, label %7, !llvm.loop !70

30:                                               ; preds = %64, %5
  %31 = icmp eq ptr %2, null
  br i1 %31, label %107, label %68

32:                                               ; preds = %5, %64
  %33 = phi ptr [ %66, %64 ], [ %1, %5 ]
  %34 = getelementptr inbounds %struct.tree_list, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.tree_list, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = icmp eq ptr %37, null
  br i1 %38, label %64, label %39

39:                                               ; preds = %32, %45
  %40 = phi ptr [ %42, %45 ], [ %33, %32 ]
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br i1 %4, label %64, label %52

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.tree_list, ptr %42, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.tree_list, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = tail call i32 @simple_cst_equal(ptr noundef nonnull %37, ptr noundef %49) #16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %39, label %100, !llvm.loop !71

52:                                               ; preds = %44, %60
  %53 = phi ptr [ %62, %60 ], [ %0, %44 ]
  %54 = getelementptr inbounds %struct.tree_list, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = tail call i32 @simple_cst_equal(ptr noundef nonnull %37, ptr noundef %57) #16
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %52, !llvm.loop !72

64:                                               ; preds = %60, %44, %32
  %65 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %30, label %32, !llvm.loop !73

68:                                               ; preds = %30, %96
  %69 = phi ptr [ %98, %96 ], [ %2, %30 ]
  %70 = getelementptr inbounds %struct.tree_list, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !5
  %72 = icmp eq ptr %71, null
  br i1 %72, label %96, label %73

73:                                               ; preds = %68, %79
  %74 = phi ptr [ %76, %79 ], [ %69, %68 ]
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br i1 %6, label %96, label %84

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.tree_list, ptr %76, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = tail call i32 @simple_cst_equal(ptr noundef nonnull %71, ptr noundef %81) #16
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %73, label %100, !llvm.loop !74

84:                                               ; preds = %78, %92
  %85 = phi ptr [ %94, %92 ], [ %1, %78 ]
  %86 = getelementptr inbounds %struct.tree_list, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = getelementptr inbounds %struct.tree_list, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = tail call i32 @simple_cst_equal(ptr noundef nonnull %71, ptr noundef %89) #16
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %84, !llvm.loop !75

96:                                               ; preds = %92, %78, %68
  %97 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %68, !llvm.loop !76

100:                                              ; preds = %19, %45, %52, %79, %84
  %101 = phi ptr [ %69, %84 ], [ %69, %79 ], [ %33, %52 ], [ %33, %45 ], [ %8, %19 ]
  %102 = getelementptr inbounds %struct.tree_list, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = getelementptr inbounds %struct.tree_list, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds %struct.tree_string, ptr %105, i64 0, i32 2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.26, ptr noundef nonnull %106) #16
  br label %107

107:                                              ; preds = %96, %30, %100
  ret void
}

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @resolve_operand_name_1(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, ptr noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 93) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.27) #16
  %9 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %5)
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  br label %81

11:                                               ; preds = %4
  store i8 0, ptr %6, align 1, !tbaa !5
  %12 = icmp eq ptr %1, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %28, %11
  %14 = phi i32 [ 0, %11 ], [ %31, %28 ]
  %15 = icmp eq ptr %2, null
  br i1 %15, label %33, label %36

16:                                               ; preds = %11, %28
  %17 = phi i32 [ %31, %28 ], [ 0, %11 ]
  %18 = phi ptr [ %30, %28 ], [ %1, %11 ]
  %19 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.tree_list, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tree_string, ptr %22, i64 0, i32 2
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %5) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %70, label %28

28:                                               ; preds = %16, %24
  %29 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = add nuw nsw i32 %17, 1
  %32 = icmp eq ptr %30, null
  br i1 %32, label %13, label %16, !llvm.loop !77

33:                                               ; preds = %48, %13
  %34 = phi i32 [ %14, %13 ], [ %51, %48 ]
  %35 = icmp eq ptr %3, null
  br i1 %35, label %68, label %53

36:                                               ; preds = %13, %48
  %37 = phi i32 [ %51, %48 ], [ %14, %13 ]
  %38 = phi ptr [ %50, %48 ], [ %2, %13 ]
  %39 = getelementptr inbounds %struct.tree_list, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.tree_list, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.tree_string, ptr %42, i64 0, i32 2
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) %5) #17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %36, %44
  %49 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = add nuw nsw i32 %37, 1
  %52 = icmp eq ptr %50, null
  br i1 %52, label %33, label %36, !llvm.loop !78

53:                                               ; preds = %33, %63
  %54 = phi i32 [ %66, %63 ], [ %34, %33 ]
  %55 = phi ptr [ %65, %63 ], [ %3, %33 ]
  %56 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.tree_string, ptr %57, i64 0, i32 2
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(1) %5) #17
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %53, %59
  %64 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = add nuw nsw i32 %54, 1
  %67 = icmp eq ptr %65, null
  br i1 %67, label %68, label %53, !llvm.loop !79

68:                                               ; preds = %63, %33
  %69 = tail call ptr @identifier_to_locale(ptr noundef nonnull %5) #16
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.28, ptr noundef %69) #16
  br label %70

70:                                               ; preds = %24, %44, %59, %68
  %71 = phi i32 [ 0, %68 ], [ %54, %59 ], [ %37, %44 ], [ %17, %24 ]
  %72 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %71) #17
  %73 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %74 = getelementptr inbounds i8, ptr %0, i64 %73
  %75 = icmp ugt ptr %74, %6
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1408, ptr noundef nonnull @.str.1) #16
  br label %77

77:                                               ; preds = %70, %76
  %78 = getelementptr inbounds i8, ptr %6, i64 1
  %79 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %78) #17
  %80 = add i64 %79, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %74, ptr nonnull align 1 %78, i64 %80, i1 false)
  br label %81

81:                                               ; preds = %77, %8
  %82 = phi ptr [ %74, %77 ], [ %10, %8 ]
  ret ptr %82
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_expr_stmt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %3 = tail call fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %2, i32 noundef 0, i32 noundef 0) #17
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
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
  %20 = tail call i32 @vector_type_mode(ptr noundef nonnull %5) #16
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
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %5) #16
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
  %44 = tail call ptr @copy_to_reg(ptr noundef nonnull %3) #16
  br label %51

45:                                               ; preds = %40
  %46 = tail call ptr @gen_label_rtx() #16
  %47 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = tail call fastcc ptr @expand_normal(ptr noundef %48) #17
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %3, ptr noundef nonnull %3, i32 noundef 81, ptr noundef %49, i32 noundef 1, i32 noundef 0, ptr noundef %46) #16
  %50 = tail call ptr @emit_label(ptr noundef %46) #16
  br label %51

51:                                               ; preds = %26, %45, %43, %11, %7, %1
  tail call void @free_temp_slots() #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null) #16
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @emit_cmp_and_jump_insns(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @warn_if_unused_value(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 25165824
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %78

6:                                                ; preds = %2, %34
  %7 = phi i64 [ %36, %34 ], [ %3, %2 ]
  %8 = phi i32 [ %27, %34 ], [ %1, %2 ]
  %9 = phi ptr [ %35, %34 ], [ %0, %2 ]
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 19
  br i1 %14, label %78, label %15

15:                                               ; preds = %6
  %16 = and i64 %7, 65535
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !48
  %19 = add i32 %18, -4
  %20 = icmp ult i32 %19, 7
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !5
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %8, i32 %23
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i32 [ %8, %15 ], [ %25, %21 ]
  %28 = trunc i64 %7 to i16
  switch i16 %28, label %65 [
    i16 126, label %78
    i16 128, label %78
    i16 125, label %78
    i16 127, label %78
    i16 53, label %78
    i16 54, label %78
    i16 55, label %78
    i16 59, label %78
    i16 130, label %78
    i16 60, label %78
    i16 136, label %78
    i16 129, label %78
    i16 58, label %29
    i16 120, label %39
    i16 117, label %39
    i16 92, label %41
    i16 91, label %41
    i16 52, label %43
    i16 56, label %54
    i16 47, label %57
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  br label %31

31:                                               ; preds = %41, %39, %29
  %32 = phi ptr [ %30, %29 ], [ %40, %39 ], [ %42, %41 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  br label %34

34:                                               ; preds = %31, %48, %57
  %35 = phi ptr [ %50, %48 ], [ %59, %57 ], [ %33, %31 ]
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 25165824
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %6, label %78

39:                                               ; preds = %26, %26
  %40 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  br label %31

41:                                               ; preds = %26, %26
  %42 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  br label %31

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = tail call i32 @warn_if_unused_value(ptr noundef %45, i32 noundef %27) #17, !range !80
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 131072
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %34, label %78

54:                                               ; preds = %26
  %55 = and i64 %7, 65536
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %76, label %78

57:                                               ; preds = %26
  %58 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 12
  br i1 %64, label %34, label %65

65:                                               ; preds = %57, %26
  %66 = add i32 %18, -3
  %67 = icmp ult i32 %66, 2
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = and i64 %7, 524288
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %76, label %78

71:                                               ; preds = %65
  %72 = icmp eq i32 %18, 10
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %9) #17
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %68, %71, %73, %54
  %77 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %27, i32 noundef 229, ptr noundef nonnull @.str.11) #16
  br label %78

78:                                               ; preds = %34, %6, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %43, %48, %2, %73, %68, %54, %76
  %79 = phi i32 [ 1, %76 ], [ 0, %54 ], [ 0, %68 ], [ 0, %73 ], [ 0, %2 ], [ 0, %34 ], [ 0, %6 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 0, %26 ], [ 1, %43 ], [ 0, %48 ]
  ret i32 %79
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !48
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !5
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_null_return() local_unnamed_addr #0 {
  tail call void @clobber_return_register() #16
  tail call fastcc void @expand_null_return_1() #17
  ret void
}

; Function Attrs: optsize
declare void @clobber_return_register() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_null_return_1() unnamed_addr #0 {
  tail call void @clear_pending_stack_adjust() #16
  tail call void @do_pending_stack_adjust() #16
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 11), align 8, !tbaa !81
  tail call void @emit_jump(ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_naked_return() local_unnamed_addr #0 {
  tail call void @clear_pending_stack_adjust() #16
  tail call void @do_pending_stack_adjust() #16
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 12), align 8, !tbaa !82
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @gen_label_rtx() #16
  store ptr %4, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 12), align 8, !tbaa !82
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  tail call void @emit_jump(ptr noundef %6) #17
  ret void
}

; Function Attrs: optsize
declare void @clear_pending_stack_adjust() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_return(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 19
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @expand_normal(ptr noundef %0) #17
  tail call void @expand_null_return() #17
  br label %238

12:                                               ; preds = %1
  %13 = load ptr, ptr @global_trees, align 16, !tbaa !21
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @expand_null_return() #17
  br label %238

16:                                               ; preds = %12
  %17 = load i64, ptr %0, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -53
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 36
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %16, %22, %28
  %32 = phi ptr [ %30, %28 ], [ %0, %16 ], [ %0, %22 ]
  %33 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  tail call void @make_decl_rtl(ptr noundef nonnull %34) #16
  %39 = load ptr, ptr @current_function_decl, align 8, !tbaa !21
  %40 = getelementptr inbounds %struct.tree_decl_non_common, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  br label %44

44:                                               ; preds = %31, %38
  %45 = phi ptr [ %43, %38 ], [ %36, %31 ]
  %46 = load i64, ptr %32, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 36
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  tail call fastcc void @expand_value_return(ptr noundef %45) #17
  br label %238

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 14
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = tail call i32 @vector_type_mode(ptr noundef nonnull %52) #16
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
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %51, align 8, !tbaa !5
  br label %200

68:                                               ; preds = %63
  %69 = load i32, ptr %45, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 37
  %72 = load ptr, ptr %51, align 8, !tbaa !5
  br i1 %71, label %73, label %200

73:                                               ; preds = %68
  %74 = tail call i64 @int_size_in_bytes(ptr noundef %72) #16
  %75 = add i64 %74, 3
  %76 = lshr i64 %75, 2
  %77 = trunc i64 %76 to i32
  %78 = load ptr, ptr %51, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 7
  %80 = load i32, ptr %79, align 8, !tbaa !5
  %81 = tail call i32 @llvm.umin.i32(i32 %80, i32 32)
  %82 = zext nneg i32 %81 to i64
  %83 = shl i64 %76, 32
  %84 = ashr exact i64 %83, 29
  %85 = alloca i8, i64 %84, align 16
  %86 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %32) #17
  %87 = icmp eq i64 %74, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  tail call void @expand_null_return() #17
  br label %238

89:                                               ; preds = %73
  %90 = and i64 %74, 3
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %89
  %93 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !83
  %94 = load ptr, ptr %51, align 8, !tbaa !5
  %95 = tail call zeroext i8 %93(ptr noundef %94) #16
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = shl nuw nsw i64 %90, 3
  %99 = sub nuw nsw i64 32, %98
  br label %100

100:                                              ; preds = %92, %97, %89
  %101 = phi i64 [ %99, %97 ], [ 0, %92 ], [ 0, %89 ]
  %102 = shl i64 %74, 3
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %140, label %104

104:                                              ; preds = %100, %133
  %105 = phi ptr [ %126, %133 ], [ null, %100 ]
  %106 = phi ptr [ %134, %133 ], [ null, %100 ]
  %107 = phi i64 [ %137, %133 ], [ 0, %100 ]
  %108 = phi i64 [ %138, %133 ], [ %101, %100 ]
  %109 = and i64 %108, 31
  %110 = icmp eq i64 %109, 0
  %111 = icmp eq i64 %108, %101
  %112 = select i1 %110, i1 true, i1 %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %104
  %114 = load i32, ptr @word_mode, align 4, !tbaa !48
  %115 = tail call ptr @gen_reg_rtx(i32 noundef %114) #16
  %116 = lshr i64 %108, 5
  %117 = getelementptr inbounds ptr, ptr %85, i64 %116
  store ptr %115, ptr %117, align 8, !tbaa !21
  %118 = load i32, ptr %115, align 8
  %119 = lshr i32 %118, 16
  %120 = and i32 %119, 255
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds [87 x ptr], ptr @const_tiny_rtx, i64 0, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !21
  %124 = tail call ptr @emit_move_insn(ptr noundef nonnull %115, ptr noundef %123) #16
  br label %125

125:                                              ; preds = %104, %113
  %126 = phi ptr [ %115, %113 ], [ %105, %104 ]
  %127 = and i64 %107, 31
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = lshr exact i64 %107, 5
  %131 = trunc i64 %130 to i32
  %132 = tail call ptr @operand_subword_force(ptr noundef %86, i32 noundef %131, i32 noundef 1) #16
  br label %133

133:                                              ; preds = %129, %125
  %134 = phi ptr [ %132, %129 ], [ %106, %125 ]
  %135 = load i32, ptr @word_mode, align 4, !tbaa !48
  %136 = tail call ptr @extract_bit_field(ptr noundef %134, i64 noundef %82, i64 noundef %127, i32 noundef 1, ptr noundef null, i32 noundef %135, i32 noundef %135) #16
  tail call void @store_bit_field(ptr noundef %126, i64 noundef %82, i64 noundef %109, i32 noundef %135, ptr noundef %136) #16
  %137 = add i64 %107, %82
  %138 = add i64 %108, %82
  %139 = icmp ult i64 %137, %102
  br i1 %139, label %104, label %140, !llvm.loop !84

140:                                              ; preds = %133, %100
  %141 = load i32, ptr %45, align 8
  %142 = lshr i32 %141, 16
  %143 = and i32 %142, 255
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %169

145:                                              ; preds = %140
  %146 = load i8, ptr getelementptr inbounds ([18 x i8], ptr @class_narrowest_mode, i64 0, i64 2), align 2, !tbaa !5
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %145, %155
  %149 = phi i8 [ %157, %155 ], [ %146, %145 ]
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !5
  %153 = zext i8 %152 to i64
  %154 = icmp ugt i64 %74, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %150
  %157 = load i8, ptr %156, align 1, !tbaa !5
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %148, !llvm.loop !85

159:                                              ; preds = %155, %145
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1754, ptr noundef nonnull @.str.1) #16
  %160 = load i32, ptr %45, align 8
  br label %163

161:                                              ; preds = %148
  %162 = zext i8 %149 to i32
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %141, %161 ], [ %160, %159 ]
  %165 = phi i32 [ %162, %161 ], [ 0, %159 ]
  %166 = shl nuw nsw i32 %165, 16
  %167 = and i32 %164, -16711681
  %168 = or disjoint i32 %167, %166
  store i32 %168, ptr %45, align 8
  br label %169

169:                                              ; preds = %163, %140
  %170 = phi i32 [ %165, %163 ], [ %143, %140 ]
  %171 = zext nneg i32 %170 to i64
  %172 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !5
  %174 = load i32, ptr @word_mode, align 4, !tbaa !48
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !5
  %178 = icmp ult i8 %173, %177
  %179 = select i1 %178, i32 %174, i32 %170
  %180 = tail call ptr @gen_reg_rtx(i32 noundef %179) #16
  %181 = icmp sgt i32 %77, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %169
  %183 = and i64 %76, 4294967295
  br label %184

184:                                              ; preds = %182, %184
  %185 = phi i64 [ 0, %182 ], [ %191, %184 ]
  %186 = trunc i64 %185 to i32
  %187 = tail call ptr @operand_subword(ptr noundef %180, i32 noundef %186, i32 noundef 0, i32 noundef %179) #16
  %188 = getelementptr inbounds ptr, ptr %85, i64 %185
  %189 = load ptr, ptr %188, align 8, !tbaa !21
  %190 = tail call ptr @emit_move_insn(ptr noundef %187, ptr noundef %189) #16
  %191 = add nuw nsw i64 %185, 1
  %192 = icmp eq i64 %191, %183
  br i1 %192, label %193, label %184, !llvm.loop !86

193:                                              ; preds = %184, %169
  %194 = icmp eq i32 %170, %179
  br i1 %194, label %198, label %195

195:                                              ; preds = %193
  %196 = load ptr, ptr @rtl_hooks, align 8, !tbaa !87
  %197 = tail call ptr %196(i32 noundef %170, ptr noundef %180) #16
  br label %198

198:                                              ; preds = %195, %193
  %199 = phi ptr [ %197, %195 ], [ %180, %193 ]
  tail call fastcc void @expand_value_return(ptr noundef %199) #17
  br label %238

200:                                              ; preds = %66, %68
  %201 = phi ptr [ %67, %66 ], [ %72, %68 ]
  %202 = load i64, ptr %201, align 8
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 19
  br i1 %204, label %235, label %205

205:                                              ; preds = %200
  %206 = load i32, ptr %45, align 8
  %207 = trunc i32 %206 to i16
  switch i16 %207, label %235 [
    i16 37, label %208
    i16 15, label %208
  ]

208:                                              ; preds = %205, %205
  %209 = load ptr, ptr @current_function_decl, align 8, !tbaa !21
  %210 = getelementptr inbounds %struct.tree_decl_non_common, ptr %209, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !5
  %212 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !5
  %214 = load i64, ptr %213, align 8
  %215 = trunc i64 %214 to i32
  %216 = lshr i32 %215, 18
  %217 = and i32 %216, 2
  %218 = getelementptr inbounds %struct.tree_type, ptr %213, i64 0, i32 6
  %219 = load i32, ptr %218, align 4
  %220 = lshr i32 %219, 11
  %221 = and i32 %220, 4
  %222 = lshr i64 %214, 48
  %223 = trunc i64 %222 to i32
  %224 = and i32 %223, 65280
  %225 = or disjoint i32 %221, %217
  %226 = or disjoint i32 %225, %224
  %227 = or disjoint i32 %226, 1
  %228 = tail call ptr @build_qualified_type(ptr noundef nonnull %213, i32 noundef %227) #16
  %229 = tail call ptr @assign_temp(ptr noundef %228, i32 noundef 0, i32 noundef 0, i32 noundef 1) #16
  %230 = load i32, ptr %229, align 8
  %231 = lshr i32 %230, 16
  %232 = and i32 %231, 255
  %233 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %32, ptr noundef nonnull %229, i32 noundef %232, i32 noundef 0) #17
  %234 = tail call ptr @force_not_mem(ptr noundef %233) #16
  tail call fastcc void @expand_value_return(ptr noundef %234) #17
  br label %238

235:                                              ; preds = %205, %200
  %236 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %237 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %0, ptr noundef %236, i32 noundef 0, i32 noundef 0) #17
  tail call fastcc void @expand_value_return(ptr noundef %45) #17
  br label %238

238:                                              ; preds = %88, %198, %49, %208, %235, %15, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_value_return(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  tail call void @make_decl_rtl(ptr noundef nonnull %5) #16
  %10 = load ptr, ptr %6, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %1, %9
  %12 = phi ptr [ %10, %9 ], [ %7, %1 ]
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %44, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @current_function_decl, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = lshr i32 %21, 21
  %23 = and i32 %22, 1
  store i32 %23, ptr %2, align 4, !tbaa !48
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 255
  %28 = call i32 @promote_function_mode(ptr noundef nonnull %19, i32 noundef %27, ptr noundef nonnull %2, ptr noundef %17, i32 noundef 1) #16
  %29 = icmp eq i32 %28, %27
  br i1 %29, label %33, label %30

30:                                               ; preds = %14
  %31 = load i32, ptr %2, align 4, !tbaa !48
  %32 = call ptr @convert_modes(i32 noundef %28, i32 noundef %27, ptr noundef %0, i32 noundef %31) #16
  br label %33

33:                                               ; preds = %30, %14
  %34 = phi ptr [ %32, %30 ], [ %0, %14 ]
  %35 = load i32, ptr %12, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 15
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = call i64 @int_size_in_bytes(ptr noundef nonnull %19) #16
  %40 = trunc i64 %39 to i32
  call void @emit_group_load(ptr noundef nonnull %12, ptr noundef %34, ptr noundef nonnull %19, i32 noundef %40) #16
  br label %43

41:                                               ; preds = %33
  %42 = call ptr @emit_move_insn(ptr noundef nonnull %12, ptr noundef %34) #16
  br label %43

43:                                               ; preds = %41, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  br label %44

44:                                               ; preds = %43, %11
  call fastcc void @expand_null_return_1() #17
  ret void
}

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @operand_subword_force(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @store_bit_field(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @extract_bit_field(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @operand_subword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @assign_temp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_not_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_decl(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %173 [
    i16 33, label %6
    i16 32, label %33
  ]

6:                                                ; preds = %1
  %7 = load i64, ptr %3, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 14
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #16
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
  %25 = load i32, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  store i32 %25, ptr %26, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  store ptr %31, ptr %32, align 8, !tbaa !5
  br label %173

33:                                               ; preds = %1
  %34 = and i64 %4, 67108864
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %173

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 33554432
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %173

41:                                               ; preds = %36
  %42 = load ptr, ptr @global_trees, align 16, !tbaa !21
  %43 = icmp eq ptr %3, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %46 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %45) #16
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %46) #16
  br label %173

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  br label %59

57:                                               ; preds = %51
  %58 = tail call ptr @gen_reg_rtx(i32 noundef 16) #16
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi ptr [ %58, %57 ], [ %56, %55 ]
  %61 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %60) #16
  tail call void @set_mem_attributes(ptr noundef %61, ptr noundef nonnull %0, i32 noundef 1) #16
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %61) #16
  br label %173

62:                                               ; preds = %47
  %63 = tail call zeroext i8 @use_register_for_decl(ptr noundef nonnull %0) #16
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @promote_decl_mode(ptr noundef nonnull %0, ptr noundef null) #16
  %67 = tail call ptr @gen_reg_rtx(i32 noundef %66) #16
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %67) #16
  %68 = load i64, ptr %37, align 8
  %69 = and i64 %68, 4096
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #16
  %76 = load ptr, ptr %72, align 8, !tbaa !5
  br label %77

77:                                               ; preds = %71, %75
  %78 = phi ptr [ %76, %75 ], [ %73, %71 ]
  tail call void @mark_user_reg(ptr noundef %78) #16
  br label %79

79:                                               ; preds = %77, %65
  %80 = load i64, ptr %3, align 8
  %81 = trunc i64 %80 to i16
  switch i16 %81, label %173 [
    i16 10, label %82
    i16 12, label %82
  ]

82:                                               ; preds = %79, %79
  %83 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #16
  %87 = load ptr, ptr %83, align 8, !tbaa !5
  br label %88

88:                                               ; preds = %82, %86
  %89 = phi ptr [ %87, %86 ], [ %84, %82 ]
  %90 = load ptr, ptr %2, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !5
  %93 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !5
  tail call void @mark_reg_pointer(ptr noundef %89, i32 noundef %94) #16
  br label %173

95:                                               ; preds = %62
  %96 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 23
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1944, ptr noundef nonnull @.str.1) #16
  br label %102

102:                                              ; preds = %95, %101
  %103 = load i64, ptr %0, align 8
  %104 = and i64 %103, 65535
  %105 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %104, i64 11
  %106 = load i8, ptr %105, align 1, !tbaa !5
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %137, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = icmp eq ptr %110, null
  br i1 %111, label %137, label %112

112:                                              ; preds = %108
  %113 = load i32, ptr %110, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 43
  br i1 %115, label %121, label %116

116:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1952, ptr noundef nonnull @.str.1) #16
  %117 = load ptr, ptr %109, align 8, !tbaa !5
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #16
  %120 = load ptr, ptr %109, align 8, !tbaa !5
  br label %121

121:                                              ; preds = %112, %116, %119
  %122 = phi ptr [ %120, %119 ], [ %117, %116 ], [ %110, %112 ]
  %123 = getelementptr inbounds %struct.rtx_def, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !5
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 37
  br i1 %127, label %133, label %128

128:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1953, ptr noundef nonnull @.str.1) #16
  %129 = load ptr, ptr %109, align 8, !tbaa !5
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #16
  %132 = load ptr, ptr %109, align 8, !tbaa !5
  br label %133

133:                                              ; preds = %121, %128, %131
  %134 = phi ptr [ %132, %131 ], [ %129, %128 ], [ %122, %121 ]
  %135 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  br label %137

137:                                              ; preds = %133, %108, %102
  %138 = phi ptr [ %136, %133 ], [ null, %108 ], [ null, %102 ]
  %139 = load i64, ptr %37, align 8
  %140 = and i64 %139, 255
  %141 = icmp eq i64 %140, 1
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !48
  %144 = and i32 %143, 32
  %145 = icmp eq i32 %144, 0
  %146 = select i1 %145, i32 128, i32 256
  br label %152

147:                                              ; preds = %137
  %148 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %140
  %149 = load i8, ptr %148, align 1, !tbaa !5
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 3
  br label %152

152:                                              ; preds = %147, %142
  %153 = phi i32 [ %146, %142 ], [ %151, %147 ]
  %154 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  store i32 %153, ptr %154, align 8, !tbaa !5
  %155 = load i64, ptr %0, align 8
  %156 = and i64 %155, -4398046511105
  store i64 %156, ptr %0, align 8
  %157 = tail call ptr @assign_temp(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1, i32 noundef 1) #16
  tail call void @set_mem_attributes(ptr noundef %157, ptr noundef nonnull %0, i32 noundef 1) #16
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %157) #16
  %158 = icmp eq ptr %138, null
  br i1 %158, label %173, label %159

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !5
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #16
  %164 = load ptr, ptr %160, align 8, !tbaa !5
  br label %165

165:                                              ; preds = %159, %163
  %166 = phi ptr [ %164, %163 ], [ %161, %159 ]
  %167 = getelementptr inbounds %struct.rtx_def, ptr %166, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !5
  %169 = tail call ptr @force_operand(ptr noundef %168, ptr noundef nonnull %138) #16
  %170 = icmp eq ptr %169, %138
  br i1 %170, label %173, label %171

171:                                              ; preds = %165
  %172 = tail call ptr @emit_move_insn(ptr noundef nonnull %138, ptr noundef %169) #16
  br label %173

173:                                              ; preds = %44, %59, %79, %88, %165, %171, %152, %33, %36, %1, %16
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @use_register_for_decl(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @promote_decl_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_user_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_stack_save() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  store ptr null, ptr %1, align 8, !tbaa !21
  tail call void @do_pending_stack_adjust() #16
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %1, ptr noundef null) #16
  %2 = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret ptr %2
}

; Function Attrs: optsize
declare void @emit_stack_save(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_stack_restore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @expand_normal(ptr noundef %0) #17
  %3 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %2, i8 noundef zeroext 0) #16
  tail call void @emit_stack_restore(i32 noundef 0, ptr noundef %3, ptr noundef null) #16
  ret void
}

; Function Attrs: optsize
declare void @emit_stack_restore(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_case(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #17
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = lshr i32 %7, 21
  %9 = and i32 %8, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %10 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.12, i64 noundef 48, i64 noundef 100) #16
  tail call void @do_pending_stack_adjust() #16
  %11 = load ptr, ptr @global_trees, align 16, !tbaa !21
  %12 = icmp eq ptr %5, %11
  br i1 %12, label %340, label %13

13:                                               ; preds = %1
  %14 = load i64, ptr %3, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 23
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2279, ptr noundef nonnull @.str.1) #16
  br label %18

18:                                               ; preds = %13, %17
  %19 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef 0) #17
  %20 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %27, %23, %18
  %31 = phi ptr [ null, %18 ], [ null, %23 ], [ %29, %27 ]
  %32 = phi i32 [ 0, %18 ], [ 0, %23 ], [ 1, %27 ]
  %33 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #17
  %34 = add i32 %33, -1
  %35 = icmp slt i32 %34, %32
  br i1 %35, label %59, label %36

36:                                               ; preds = %30, %55
  %37 = phi i32 [ %57, %55 ], [ %34, %30 ]
  %38 = phi ptr [ %56, %55 ], [ null, %30 ]
  %39 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %37) #17
  %40 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2295, ptr noundef nonnull @.str.1) #16
  br label %44

44:                                               ; preds = %36, %43
  %45 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %46, ptr noundef %41) #16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48, %44
  %52 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 1, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = tail call fastcc ptr @add_case_node(ptr noundef %38, ptr noundef nonnull %5, ptr noundef %41, ptr noundef %46, ptr noundef %53, ptr noundef %10) #17
  br label %55

55:                                               ; preds = %48, %51
  %56 = phi ptr [ %38, %48 ], [ %54, %51 ]
  %57 = add nsw i32 %37, -1
  %58 = icmp sgt i32 %37, %32
  br i1 %58, label %36, label %59, !llvm.loop !89

59:                                               ; preds = %55, %30
  %60 = phi ptr [ null, %30 ], [ %56, %55 ]
  store ptr %60, ptr %2, align 8, !tbaa !21
  %61 = tail call ptr @get_last_insn() #16
  %62 = icmp eq ptr %31, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = tail call ptr @label_rtx(ptr noundef nonnull %31) #17
  br label %65

65:                                               ; preds = %63, %59
  %66 = phi ptr [ %64, %63 ], [ null, %59 ]
  %67 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %68 = icmp eq ptr %60, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call void @bitmap_obstack_free(ptr noundef %67) #16
  br label %123

70:                                               ; preds = %65, %116
  %71 = phi ptr [ %119, %116 ], [ %60, %65 ]
  %72 = phi ptr [ %98, %116 ], [ null, %65 ]
  %73 = phi ptr [ %97, %116 ], [ null, %65 ]
  %74 = phi i32 [ %104, %116 ], [ 0, %65 ]
  %75 = phi i32 [ %117, %116 ], [ 0, %65 ]
  %76 = icmp eq i32 %74, 0
  %77 = getelementptr inbounds %struct.case_node, ptr %71, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !90
  br i1 %76, label %79, label %82

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.case_node, ptr %71, i64 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !92
  br label %95

82:                                               ; preds = %70
  %83 = tail call i32 @tree_int_cst_lt(ptr noundef %78, ptr noundef %72) #16
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %77, align 8, !tbaa !90
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi ptr [ %86, %85 ], [ %72, %82 ]
  %89 = getelementptr inbounds %struct.case_node, ptr %71, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !92
  %91 = tail call i32 @tree_int_cst_lt(ptr noundef %73, ptr noundef %90) #16
  %92 = icmp eq i32 %91, 0
  %93 = load ptr, ptr %89, align 8, !tbaa !92
  %94 = select i1 %92, ptr %73, ptr %93
  br label %95

95:                                               ; preds = %87, %79
  %96 = phi ptr [ %81, %79 ], [ %93, %87 ]
  %97 = phi ptr [ %81, %79 ], [ %94, %87 ]
  %98 = phi ptr [ %78, %79 ], [ %88, %87 ]
  %99 = getelementptr inbounds %struct.case_node, ptr %71, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !90
  %101 = tail call i32 @tree_int_cst_equal(ptr noundef %100, ptr noundef %96) #16
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %102, i32 2, i32 1
  %104 = add i32 %103, %74
  %105 = getelementptr inbounds %struct.case_node, ptr %71, i64 0, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !93
  %107 = tail call ptr @label_rtx(ptr noundef %106) #17
  %108 = getelementptr inbounds %struct.rtx_def, ptr %107, i64 1, i32 1
  %109 = load i32, ptr %108, align 8, !tbaa !5
  %110 = tail call i32 @bitmap_bit_p(ptr noundef %67, i32 noundef %109) #16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %95
  %113 = load i32, ptr %108, align 8, !tbaa !5
  %114 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %67, i32 noundef %113) #16
  %115 = add i32 %75, 1
  br label %116

116:                                              ; preds = %95, %112
  %117 = phi i32 [ %75, %95 ], [ %115, %112 ]
  %118 = getelementptr inbounds %struct.case_node, ptr %71, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !21
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %70, !llvm.loop !94

121:                                              ; preds = %116
  tail call void @bitmap_obstack_free(ptr noundef %67) #16
  %122 = icmp eq i32 %104, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %69, %121
  %124 = icmp eq ptr %66, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %123
  tail call void @emit_jump(ptr noundef nonnull %66) #17
  br label %126

126:                                              ; preds = %123, %125
  tail call void @free_alloc_pool(ptr noundef %10) #16
  br label %341

127:                                              ; preds = %121
  %128 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %5, ptr noundef %97, ptr noundef %98) #16
  %129 = load i32, ptr @word_mode, align 4, !tbaa !48
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44, i32 4, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !95
  %133 = icmp eq i32 %132, 2956
  br i1 %133, label %181, label %134

134:                                              ; preds = %127
  %135 = load i64, ptr %3, align 8
  %136 = and i64 %135, 131072
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %181

138:                                              ; preds = %134
  %139 = zext i32 %129 to i64
  %140 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !5
  %142 = zext i8 %141 to i64
  %143 = shl nuw nsw i64 %142, 3
  %144 = tail call i32 @compare_tree_int(ptr noundef %128, i64 noundef %143) #16
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %181

146:                                              ; preds = %138
  %147 = tail call i32 @compare_tree_int(ptr noundef %128, i64 noundef 0) #16
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %181

149:                                              ; preds = %146
  %150 = tail call fastcc zeroext i8 @lshift_cheap_p() #17, !range !40
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %181, label %152

152:                                              ; preds = %149
  %153 = icmp eq i32 %117, 1
  %154 = icmp ugt i32 %104, 2
  %155 = select i1 %153, i1 %154, i1 false
  br i1 %155, label %164, label %156

156:                                              ; preds = %152
  %157 = icmp eq i32 %117, 2
  %158 = icmp ugt i32 %104, 4
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = icmp eq i32 %117, 3
  %162 = icmp ugt i32 %104, 5
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %164, label %181

164:                                              ; preds = %160, %156, %152
  %165 = tail call i32 @compare_tree_int(ptr noundef %98, i64 noundef 0) #16
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load i32, ptr @word_mode, align 4, !tbaa !48
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !5
  %172 = zext i8 %171 to i64
  %173 = shl nuw nsw i64 %172, 3
  %174 = tail call i32 @compare_tree_int(ptr noundef %97, i64 noundef %173) #16
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = tail call ptr @build_int_cst(ptr noundef nonnull %5, i64 noundef 0) #16
  br label %178

178:                                              ; preds = %176, %167, %164
  %179 = phi ptr [ %97, %176 ], [ %128, %167 ], [ %128, %164 ]
  %180 = phi ptr [ %177, %176 ], [ %98, %167 ], [ %98, %164 ]
  tail call fastcc void @emit_case_bit_tests(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %180, ptr noundef %179, ptr noundef nonnull %60, ptr noundef %66) #17
  br label %336

181:                                              ; preds = %160, %149, %146, %138, %134, %127
  %182 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 101), align 8, !tbaa !97
  %183 = tail call i32 %182() #16
  %184 = icmp ult i32 %104, %183
  br i1 %184, label %203, label %185

185:                                              ; preds = %181
  %186 = tail call zeroext i8 @optimize_insn_for_size_p() #16
  %187 = icmp eq i8 %186, 0
  %188 = select i1 %187, i32 10, i32 3
  %189 = mul i32 %188, %104
  %190 = zext i32 %189 to i64
  %191 = tail call i32 @compare_tree_int(ptr noundef %128, i64 noundef %190) #16
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %203, label %193

193:                                              ; preds = %185
  %194 = tail call i32 @compare_tree_int(ptr noundef %128, i64 noundef 0) #16
  %195 = icmp sgt i32 %194, -1
  %196 = load i32, ptr @flag_jump_tables, align 4
  %197 = icmp ne i32 %196, 0
  %198 = select i1 %195, i1 %197, i1 false
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = load i64, ptr %3, align 8
  %201 = and i64 %200, 131072
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %245, label %203

203:                                              ; preds = %199, %193, %185, %181
  %204 = tail call fastcc ptr @expand_normal(ptr noundef nonnull %3) #17
  %205 = load i32, ptr %204, align 8
  %206 = lshr i32 %205, 16
  %207 = and i32 %206, 255
  %208 = zext nneg i32 %207 to i64
  %209 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !5
  %211 = icmp eq i8 %210, 2
  br i1 %211, label %212, label %232

212:                                              ; preds = %203
  %213 = tail call i32 @have_insn_for(i32 noundef 48, i32 noundef %207) #16
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %232

215:                                              ; preds = %212
  %216 = load i32, ptr %204, align 8
  %217 = lshr i32 %216, 16
  %218 = and i32 %217, 255
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %215, %226
  %221 = phi i32 [ %230, %226 ], [ %218, %215 ]
  %222 = tail call i32 @have_insn_for(i32 noundef 48, i32 noundef %221) #16
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %220
  %225 = tail call ptr @convert_to_mode(i32 noundef %221, ptr noundef nonnull %204, i32 noundef %9) #16
  br label %232

226:                                              ; preds = %220
  %227 = zext nneg i32 %221 to i64
  %228 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !5
  %230 = zext i8 %229 to i32
  %231 = icmp eq i8 %229, 0
  br i1 %231, label %232, label %220, !llvm.loop !98

232:                                              ; preds = %226, %215, %224, %212, %203
  %233 = phi ptr [ %204, %212 ], [ %204, %203 ], [ %225, %224 ], [ %204, %215 ], [ %204, %226 ]
  tail call void @do_pending_stack_adjust() #16
  %234 = load i32, ptr %233, align 8
  %235 = and i32 %234, 65535
  %236 = icmp eq i32 %235, 43
  br i1 %236, label %237, label %239

237:                                              ; preds = %232
  %238 = tail call ptr @copy_to_reg(ptr noundef nonnull %233) #16
  br label %239

239:                                              ; preds = %237, %232
  %240 = phi ptr [ %238, %237 ], [ %233, %232 ]
  %241 = tail call fastcc i32 @estimate_case_costs(ptr noundef nonnull %60) #17, !range !80
  store i32 %241, ptr @use_cost_table, align 4, !tbaa !48
  call fastcc void @balance_case_nodes(ptr noundef nonnull %2, ptr noundef null) #17
  %242 = load ptr, ptr %2, align 8, !tbaa !21
  tail call fastcc void @emit_case_nodes(ptr noundef %240, ptr noundef %242, ptr noundef %66, ptr noundef nonnull %5) #17
  %243 = icmp eq ptr %66, null
  br i1 %243, label %336, label %244

244:                                              ; preds = %239
  tail call void @emit_jump(ptr noundef nonnull %66) #17
  br label %336

245:                                              ; preds = %199
  %246 = getelementptr inbounds %struct.case_node, ptr %60, i64 0, i32 5
  %247 = load ptr, ptr %246, align 8, !tbaa !93
  %248 = tail call ptr @label_rtx(ptr noundef %247) #17
  %249 = tail call ptr @gen_label_rtx() #16
  %250 = tail call i32 @try_casesi(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %98, ptr noundef %128, ptr noundef %249, ptr noundef %66, ptr noundef %248) #16
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %270

252:                                              ; preds = %245
  %253 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %252
  %256 = tail call i32 @compare_tree_int(ptr noundef %98, i64 noundef 0) #16
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = tail call i32 @compare_tree_int(ptr noundef %98, i64 noundef 3) #16
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %258
  %262 = tail call ptr @build_int_cst(ptr noundef nonnull %5, i64 noundef 0) #16
  br label %263

263:                                              ; preds = %261, %258, %255, %252
  %264 = phi ptr [ %97, %261 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ]
  %265 = phi ptr [ %262, %261 ], [ %98, %258 ], [ %98, %255 ], [ %98, %252 ]
  %266 = tail call i32 @try_tablejump(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef %265, ptr noundef %264, ptr noundef %249, ptr noundef %66) #16
  %267 = and i32 %266, 255
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2473, ptr noundef nonnull @.str.1) #16
  br label %270

270:                                              ; preds = %245, %263, %269
  %271 = phi ptr [ %128, %245 ], [ %264, %263 ], [ %264, %269 ]
  %272 = phi ptr [ %98, %245 ], [ %265, %263 ], [ %265, %269 ]
  %273 = tail call i64 @tree_low_cst(ptr noundef %271, i32 noundef 0) #16
  %274 = trunc i64 %273 to i32
  %275 = add i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = shl nsw i64 %276, 3
  %278 = alloca i8, i64 %277, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %278, i8 0, i64 %277, i1 false)
  br label %279

279:                                              ; preds = %270, %300
  %280 = phi ptr [ %302, %300 ], [ %60, %270 ]
  %281 = getelementptr inbounds %struct.case_node, ptr %280, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !90
  %283 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %5, ptr noundef %282, ptr noundef %272) #16
  %284 = tail call i64 @tree_low_cst(ptr noundef %283, i32 noundef 1) #16
  %285 = getelementptr inbounds %struct.case_node, ptr %280, i64 0, i32 4
  %286 = load ptr, ptr %285, align 8, !tbaa !92
  %287 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %5, ptr noundef %286, ptr noundef %272) #16
  %288 = tail call i64 @tree_low_cst(ptr noundef %287, i32 noundef 1) #16
  %289 = icmp sgt i64 %284, %288
  br i1 %289, label %300, label %290

290:                                              ; preds = %279
  %291 = getelementptr inbounds %struct.case_node, ptr %280, i64 0, i32 5
  br label %292

292:                                              ; preds = %290, %292
  %293 = phi i64 [ %284, %290 ], [ %298, %292 ]
  %294 = load ptr, ptr %291, align 8, !tbaa !93
  %295 = tail call ptr @label_rtx(ptr noundef %294) #17
  %296 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %295) #16
  %297 = getelementptr inbounds ptr, ptr %278, i64 %293
  store ptr %296, ptr %297, align 8, !tbaa !21
  %298 = add i64 %293, 1
  %299 = icmp eq i64 %293, %288
  br i1 %299, label %300, label %292, !llvm.loop !99

300:                                              ; preds = %292, %279
  %301 = getelementptr inbounds %struct.case_node, ptr %280, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !21
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %279, !llvm.loop !100

304:                                              ; preds = %300
  %305 = icmp eq ptr %66, null
  %306 = select i1 %305, ptr %248, ptr %66
  %307 = icmp ult i32 %274, 2147483647
  br i1 %307, label %308, label %320

308:                                              ; preds = %304
  %309 = zext nneg i32 %275 to i64
  br label %310

310:                                              ; preds = %308, %317
  %311 = phi i64 [ 0, %308 ], [ %318, %317 ]
  %312 = getelementptr inbounds ptr, ptr %278, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !21
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %306) #16
  store ptr %316, ptr %312, align 8, !tbaa !21
  br label %317

317:                                              ; preds = %310, %315
  %318 = add nuw nsw i64 %311, 1
  %319 = icmp eq i64 %318, %309
  br i1 %319, label %320, label %310, !llvm.loop !101

320:                                              ; preds = %317, %304
  %321 = tail call ptr @emit_label(ptr noundef %249) #16
  %322 = load i32, ptr @flag_pic, align 4, !tbaa !48
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %320
  %325 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %249) #16
  %326 = call ptr @gen_rtvec_v(i32 noundef %275, ptr noundef nonnull %278) #16
  %327 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %328 = call ptr @gen_rtx_fmt_eEee0_stat(i32 noundef 21, i32 noundef 16, ptr noundef %325, ptr noundef %326, ptr noundef %327, ptr noundef %327) #16
  br label %332

329:                                              ; preds = %320
  %330 = call ptr @gen_rtvec_v(i32 noundef %275, ptr noundef nonnull %278) #16
  %331 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 20, i32 noundef 16, ptr noundef %330) #16
  br label %332

332:                                              ; preds = %329, %324
  %333 = phi ptr [ %331, %329 ], [ %328, %324 ]
  %334 = call ptr @emit_jump_insn(ptr noundef %333) #16
  %335 = call ptr @emit_barrier() #16
  br label %336

336:                                              ; preds = %178, %239, %244, %332
  %337 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1, i32 0, i32 0, i64 2
  %338 = load ptr, ptr %337, align 8, !tbaa !5
  %339 = call ptr @get_last_insn() #16
  call void @reorder_insns(ptr noundef %338, ptr noundef %339, ptr noundef %61) #16
  br label %340

340:                                              ; preds = %336, %1
  call void @free_temp_slots() #16
  call void @free_alloc_pool(ptr noundef %10) #16
  br label %341

341:                                              ; preds = %126, %340
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %4 = add nuw i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3215, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %4) #17
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3162, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @add_case_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2009, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %6, %10
  %12 = icmp eq ptr %3, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = load i64, ptr %3, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 23
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2010, ptr noundef nonnull @.str.1) #16
  br label %23

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  br label %30

23:                                               ; preds = %13, %17
  %24 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 13
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %18, %23
  %31 = phi ptr [ %27, %23 ], [ %22, %18 ]
  %32 = phi ptr [ %25, %23 ], [ %20, %18 ]
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 23
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %2, ptr noundef nonnull %32) #16
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %106, label %39

39:                                               ; preds = %36, %30
  %40 = load i64, ptr %31, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 23
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %2, ptr noundef nonnull %31) #16
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %106, label %46

46:                                               ; preds = %43, %39
  %47 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  br label %83

48:                                               ; preds = %23
  %49 = load i64, ptr %25, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 23
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %3, ptr noundef nonnull %25) #16
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %106, label %55

55:                                               ; preds = %52, %48
  %56 = load i64, ptr %27, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 23
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %2, ptr noundef nonnull %27) #16
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %106, label %62

62:                                               ; preds = %59, %55
  %63 = load i64, ptr %25, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 23
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %2, ptr noundef nonnull %25) #16
  %68 = icmp slt i32 %67, 0
  %69 = select i1 %68, ptr %25, ptr %2
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi ptr [ %2, %62 ], [ %69, %66 ]
  %72 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %71) #16
  %73 = load i64, ptr %27, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 23
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %3, ptr noundef nonnull %27) #16
  %78 = icmp sgt i32 %77, 0
  %79 = select i1 %78, ptr %27, ptr %3
  br label %80

80:                                               ; preds = %76, %70
  %81 = phi ptr [ %3, %70 ], [ %79, %76 ]
  %82 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %81) #16
  br label %83

83:                                               ; preds = %80, %46
  %84 = phi ptr [ %47, %46 ], [ %82, %80 ]
  %85 = phi ptr [ %47, %46 ], [ %72, %80 ]
  %86 = tail call ptr @pool_alloc(ptr noundef %5) #16
  %87 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = getelementptr inbounds %struct.tree_int_cst, ptr %85, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.tree_int_cst, ptr %85, i64 0, i32 1, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !5
  %93 = tail call ptr @build_int_cst_wide(ptr noundef %88, i64 noundef %90, i64 noundef %92) #16
  %94 = getelementptr inbounds %struct.case_node, ptr %86, i64 0, i32 3
  store ptr %93, ptr %94, align 8, !tbaa !90
  %95 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.tree_int_cst, ptr %84, i64 0, i32 1
  %98 = load i64, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.tree_int_cst, ptr %84, i64 0, i32 1, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !5
  %101 = tail call ptr @build_int_cst_wide(ptr noundef %96, i64 noundef %98, i64 noundef %100) #16
  %102 = getelementptr inbounds %struct.case_node, ptr %86, i64 0, i32 4
  store ptr %101, ptr %102, align 8, !tbaa !92
  %103 = getelementptr inbounds %struct.case_node, ptr %86, i64 0, i32 5
  store ptr %4, ptr %103, align 8, !tbaa !93
  store ptr null, ptr %86, align 8, !tbaa !102
  %104 = getelementptr inbounds %struct.case_node, ptr %86, i64 0, i32 2
  store ptr null, ptr %104, align 8, !tbaa !103
  %105 = getelementptr inbounds %struct.case_node, ptr %86, i64 0, i32 1
  store ptr %0, ptr %105, align 8, !tbaa !104
  br label %106

106:                                              ; preds = %52, %59, %36, %43, %83
  %107 = phi ptr [ %86, %83 ], [ %0, %43 ], [ %0, %36 ], [ %0, %59 ], [ %0, %52 ]
  ret ptr %107
}

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @lshift_cheap_p() unnamed_addr #0 {
  %1 = load i1, ptr @lshift_cheap_p.init, align 1
  br i1 %1, label %2, label %4

2:                                                ; preds = %0
  %3 = load i8, ptr @lshift_cheap_p.cheap, align 1, !tbaa !5
  br label %14

4:                                                ; preds = %0
  %5 = load i32, ptr @word_mode, align 4, !tbaa !48
  %6 = tail call ptr @gen_rtx_REG(i32 noundef %5, i32 noundef 10000) #16
  %7 = load i32, ptr @word_mode, align 4, !tbaa !48
  %8 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !21
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 65, i32 noundef %7, ptr noundef %8, ptr noundef %6) #16
  %10 = tail call zeroext i8 @optimize_insn_for_speed_p() #16
  %11 = tail call i32 @rtx_cost(ptr noundef %9, i32 noundef 23, i8 noundef zeroext %10) #16
  %12 = icmp slt i32 %11, 12
  %13 = zext i1 %12 to i8
  store i8 %13, ptr @lshift_cheap_p.cheap, align 1, !tbaa !5
  store i1 true, ptr @lshift_cheap_p.init, align 1
  br label %14

14:                                               ; preds = %2, %4
  %15 = phi i8 [ %3, %2 ], [ %13, %4 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_case_bit_tests(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readonly %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [3 x %struct.case_bit_test], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #18
  %8 = icmp eq ptr %4, null
  br i1 %8, label %82, label %9

9:                                                ; preds = %6, %78
  %10 = phi i32 [ %45, %78 ], [ 0, %6 ]
  %11 = phi ptr [ %80, %78 ], [ %4, %6 ]
  %12 = getelementptr inbounds %struct.case_node, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = tail call ptr @label_rtx(ptr noundef %13) #17
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %9, %22
  %17 = phi i32 [ %23, %22 ], [ 0, %9 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %18, i32 2
  %20 = load ptr, ptr %19, align 16, !tbaa !105
  %21 = icmp eq ptr %14, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = add nuw i32 %17, 1
  %24 = icmp eq i32 %23, %10
  br i1 %24, label %28, label %16, !llvm.loop !107

25:                                               ; preds = %16, %9
  %26 = phi i32 [ 0, %9 ], [ %17, %16 ]
  %27 = icmp eq i32 %26, %10
  br i1 %27, label %28, label %38

28:                                               ; preds = %22, %25
  %29 = phi i32 [ %26, %25 ], [ %10, %22 ]
  %30 = icmp ult i32 %10, 3
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2165, ptr noundef nonnull @.str.1) #16
  br label %32

32:                                               ; preds = %28, %31
  %33 = zext i32 %10 to i64
  %34 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %33
  %35 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %33, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  store ptr %14, ptr %35, align 16, !tbaa !105
  %36 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %33, i32 3
  store i32 1, ptr %36, align 8, !tbaa !108
  %37 = add i32 %10, 1
  br label %43

38:                                               ; preds = %25
  %39 = zext i32 %26 to i64
  %40 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %39, i32 3
  %41 = load i32, ptr %40, align 8, !tbaa !108
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !108
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i32 [ %29, %32 ], [ %26, %38 ]
  %45 = phi i32 [ %37, %32 ], [ %10, %38 ]
  %46 = getelementptr inbounds %struct.case_node, ptr %11, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !90
  %48 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %47, ptr noundef %2) #16
  %49 = tail call i64 @tree_low_cst(ptr noundef %48, i32 noundef 1) #16
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.case_node, ptr %11, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !92
  %53 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %52, ptr noundef %2) #16
  %54 = tail call i64 @tree_low_cst(ptr noundef %53, i32 noundef 1) #16
  %55 = trunc i64 %54 to i32
  %56 = icmp ugt i32 %50, %55
  br i1 %56, label %78, label %57

57:                                               ; preds = %43
  %58 = zext i32 %44 to i64
  %59 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %58, i32 1
  %60 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %58
  br label %61

61:                                               ; preds = %57, %75
  %62 = phi i32 [ %50, %57 ], [ %76, %75 ]
  %63 = icmp ugt i32 %62, 63
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = add i32 %62, -32
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw i64 1, %66
  %68 = load i64, ptr %60, align 16, !tbaa !109
  %69 = or i64 %68, %67
  store i64 %69, ptr %60, align 16, !tbaa !109
  br label %75

70:                                               ; preds = %61
  %71 = zext nneg i32 %62 to i64
  %72 = shl nuw i64 1, %71
  %73 = load i64, ptr %59, align 8, !tbaa !110
  %74 = or i64 %73, %72
  store i64 %74, ptr %59, align 8, !tbaa !110
  br label %75

75:                                               ; preds = %64, %70
  %76 = add i32 %62, 1
  %77 = icmp ugt i32 %76, %55
  br i1 %77, label %78, label %61, !llvm.loop !111

78:                                               ; preds = %75, %43
  %79 = getelementptr inbounds %struct.case_node, ptr %11, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !104
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %9, !llvm.loop !112

82:                                               ; preds = %78, %6
  %83 = phi i32 [ 0, %6 ], [ %45, %78 ]
  %84 = zext i32 %83 to i64
  call void @spec_qsort(ptr noundef nonnull %7, i64 noundef %84, i64 noundef 32, ptr noundef nonnull @case_bit_test_cmp) #16
  %85 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %1) #16
  %86 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %2) #16
  %87 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %0, ptr noundef %85, ptr noundef %86) #16
  %88 = call fastcc ptr @expand_normal(ptr noundef %87) #17
  call void @do_pending_stack_adjust() #16
  %89 = load i64, ptr %0, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 14
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = call i32 @vector_type_mode(ptr noundef nonnull %0) #16
  br label %99

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = lshr i32 %96, 16
  %98 = and i32 %97, 255
  br label %99

99:                                               ; preds = %94, %92
  %100 = phi i32 [ %93, %92 ], [ %98, %94 ]
  %101 = call fastcc ptr @expand_normal(ptr noundef %3) #17
  %102 = icmp eq ptr %5, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  call void @emit_cmp_and_jump_insns(ptr noundef %88, ptr noundef %101, i32 noundef 87, ptr noundef null, i32 noundef %100, i32 noundef 1, ptr noundef nonnull %5) #16
  br label %104

104:                                              ; preds = %103, %99
  %105 = load i32, ptr @word_mode, align 4, !tbaa !48
  %106 = call ptr @convert_to_mode(i32 noundef %105, ptr noundef %88, i32 noundef 0) #16
  %107 = load i32, ptr @word_mode, align 4, !tbaa !48
  %108 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !21
  %109 = call ptr @expand_binop(i32 noundef %107, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 44), ptr noundef %108, ptr noundef %106, ptr noundef null, i32 noundef 1, i32 noundef 2) #16
  %110 = icmp eq i32 %83, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %104, %111
  %112 = phi i64 [ %125, %111 ], [ 0, %104 ]
  %113 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %112
  %114 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %112, i32 1
  %115 = load i64, ptr %114, align 8, !tbaa !110
  %116 = load i64, ptr %113, align 16, !tbaa !109
  %117 = load i32, ptr @word_mode, align 4, !tbaa !48
  %118 = call ptr @immed_double_const(i64 noundef %115, i64 noundef %116, i32 noundef %117) #16
  %119 = load i32, ptr @word_mode, align 4, !tbaa !48
  %120 = call ptr @expand_binop(i32 noundef %119, ptr noundef nonnull getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 41), ptr noundef %109, ptr noundef %118, ptr noundef null, i32 noundef 1, i32 noundef 2) #16
  %121 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !21
  %122 = load i32, ptr @word_mode, align 4, !tbaa !48
  %123 = getelementptr inbounds [3 x %struct.case_bit_test], ptr %7, i64 0, i64 %112, i32 2
  %124 = load ptr, ptr %123, align 16, !tbaa !105
  call void @emit_cmp_and_jump_insns(ptr noundef %120, ptr noundef %121, i32 noundef 80, ptr noundef null, i32 noundef %122, i32 noundef 1, ptr noundef %124) #16
  %125 = add nuw nsw i64 %112, 1
  %126 = icmp eq i64 %125, %84
  br i1 %126, label %127, label %111, !llvm.loop !113

127:                                              ; preds = %111, %104
  br i1 %102, label %129, label %128

128:                                              ; preds = %127
  call void @emit_jump(ptr noundef nonnull %5) #17
  br label %129

129:                                              ; preds = %128, %127
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #18
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_insn_for_size_p() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @have_insn_for(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @convert_to_mode(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @estimate_case_costs(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.case_node, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call ptr @build_int_cst(ptr noundef %6, i64 noundef 127) #16
  %8 = load i1, ptr @cost_table_initialized, align 4
  br i1 %8, label %37, label %9

9:                                                ; preds = %1
  store i1 true, ptr @cost_table_initialized, align 4
  br label %10

10:                                               ; preds = %9, %32
  %11 = phi i64 [ 0, %9 ], [ %33, %32 ]
  %12 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !34
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 140
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = add nuw nsw i64 %11, 1
  br label %28

19:                                               ; preds = %10
  %20 = and i32 %14, 32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = add nuw nsw i64 %11, 1
  br label %28

24:                                               ; preds = %19
  %25 = and i32 %14, 2
  %26 = icmp eq i32 %25, 0
  %27 = add nuw nsw i64 %11, 1
  br i1 %26, label %32, label %28

28:                                               ; preds = %24, %22, %17
  %29 = phi i64 [ %18, %17 ], [ %23, %22 ], [ %27, %24 ]
  %30 = phi i16 [ 16, %17 ], [ 8, %22 ], [ -1, %24 ]
  %31 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %29
  store i16 %30, ptr %31, align 2, !tbaa !34
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i64 [ %27, %24 ], [ %29, %28 ]
  %34 = icmp eq i64 %33, 128
  br i1 %34, label %35, label %10, !llvm.loop !114

35:                                               ; preds = %32
  store i16 8, ptr getelementptr inbounds ([129 x i16], ptr @cost_table_, i64 0, i64 33), align 2, !tbaa !34
  store i16 4, ptr getelementptr inbounds ([129 x i16], ptr @cost_table_, i64 0, i64 1), align 2, !tbaa !34
  store i16 1, ptr getelementptr inbounds ([129 x i16], ptr @cost_table_, i64 0, i64 13), align 2, !tbaa !34
  store <4 x i16> <i16 1, i16 4, i16 2, i16 1>, ptr getelementptr inbounds ([129 x i16], ptr @cost_table_, i64 0, i64 9), align 2, !tbaa !34
  %36 = icmp eq ptr %0, null
  br i1 %36, label %70, label %37

37:                                               ; preds = %1, %35
  br label %38

38:                                               ; preds = %37, %66
  %39 = phi ptr [ %68, %66 ], [ %0, %37 ]
  %40 = getelementptr inbounds %struct.case_node, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !90
  %42 = tail call i32 @tree_int_cst_lt(ptr noundef %41, ptr noundef %2) #16
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.case_node, ptr %39, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !92
  %47 = tail call i32 @tree_int_cst_lt(ptr noundef %7, ptr noundef %46) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = load ptr, ptr %40, align 8, !tbaa !90
  %51 = getelementptr inbounds %struct.tree_int_cst, ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !5
  %53 = load ptr, ptr %45, align 8, !tbaa !92
  %54 = getelementptr inbounds %struct.tree_int_cst, ptr %53, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !5
  %56 = shl i64 %52, 32
  %57 = ashr exact i64 %56, 32
  br label %58

58:                                               ; preds = %61, %49
  %59 = phi i64 [ %62, %61 ], [ %57, %49 ]
  %60 = icmp slt i64 %55, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = add i64 %59, 1
  %63 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !34
  %65 = icmp slt i16 %64, 0
  br i1 %65, label %70, label %58, !llvm.loop !115

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.case_node, ptr %39, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !104
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %38, !llvm.loop !116

70:                                               ; preds = %44, %38, %66, %61, %35
  %71 = phi i32 [ 1, %35 ], [ 0, %61 ], [ 0, %44 ], [ 0, %38 ], [ 1, %66 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @balance_case_nodes(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %166, label %5

5:                                                ; preds = %2, %147
  %6 = phi ptr [ %152, %147 ], [ %3, %2 ]
  %7 = phi ptr [ %149, %147 ], [ %1, %2 ]
  %8 = phi ptr [ %151, %147 ], [ %0, %2 ]
  br label %9

9:                                                ; preds = %5, %46
  %10 = phi ptr [ %6, %5 ], [ %51, %46 ]
  %11 = phi i32 [ 0, %5 ], [ %47, %46 ]
  %12 = phi i32 [ 0, %5 ], [ %49, %46 ]
  %13 = phi i32 [ 0, %5 ], [ %48, %46 ]
  %14 = getelementptr inbounds %struct.case_node, ptr %10, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  %16 = getelementptr inbounds %struct.case_node, ptr %10, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = tail call i32 @tree_int_cst_equal(ptr noundef %15, ptr noundef %17) #16
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr @use_cost_table, align 4, !tbaa !48
  br i1 %19, label %21, label %33

21:                                               ; preds = %9
  %22 = add nsw i32 %11, 1
  %23 = icmp eq i32 %20, 0
  br i1 %23, label %46, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %16, align 8, !tbaa !92
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %25, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !5
  %28 = add i64 %27, 1
  %29 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !34
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %13, %31
  br label %35

33:                                               ; preds = %9
  %34 = icmp eq i32 %20, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %24, %33
  %36 = phi i32 [ %22, %24 ], [ %11, %33 ]
  %37 = phi i32 [ %32, %24 ], [ %13, %33 ]
  %38 = load ptr, ptr %14, align 8, !tbaa !90
  %39 = getelementptr inbounds %struct.tree_int_cst, ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !5
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !34
  %44 = sext i16 %43 to i32
  %45 = add nsw i32 %37, %44
  br label %46

46:                                               ; preds = %21, %35, %33
  %47 = phi i32 [ %36, %35 ], [ %11, %33 ], [ %22, %21 ]
  %48 = phi i32 [ %45, %35 ], [ %13, %33 ], [ %13, %21 ]
  %49 = add nuw nsw i32 %12, 1
  %50 = getelementptr inbounds %struct.case_node, ptr %10, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !104
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %9, !llvm.loop !117

53:                                               ; preds = %46
  %54 = icmp ugt i32 %12, 1
  %55 = load ptr, ptr %8, align 8, !tbaa !21
  br i1 %54, label %56, label %154

56:                                               ; preds = %53
  %57 = icmp eq i32 %20, 0
  br i1 %57, label %114, label %58

58:                                               ; preds = %56
  %59 = add nsw i32 %48, 1
  %60 = sdiv i32 %59, 2
  br label %61

61:                                               ; preds = %95, %58
  %62 = phi ptr [ %55, %58 ], [ %98, %95 ]
  %63 = phi i32 [ %60, %58 ], [ %93, %95 ]
  %64 = phi ptr [ %8, %58 ], [ %96, %95 ]
  %65 = phi i32 [ 0, %58 ], [ %97, %95 ]
  %66 = getelementptr inbounds %struct.case_node, ptr %62, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !90
  %68 = getelementptr inbounds %struct.case_node, ptr %62, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !92
  %70 = tail call i32 @tree_int_cst_equal(ptr noundef %67, ptr noundef %69) #16
  %71 = icmp eq i32 %70, 0
  %72 = load ptr, ptr %64, align 8, !tbaa !21
  br i1 %71, label %73, label %83

73:                                               ; preds = %61
  %74 = getelementptr inbounds %struct.case_node, ptr %72, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !92
  %76 = getelementptr inbounds %struct.tree_int_cst, ptr %75, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !5
  %78 = add i64 %77, 1
  %79 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !34
  %81 = sext i16 %80 to i32
  %82 = sub nsw i32 %63, %81
  br label %83

83:                                               ; preds = %73, %61
  %84 = phi i32 [ %63, %61 ], [ %82, %73 ]
  %85 = getelementptr inbounds %struct.case_node, ptr %72, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !90
  %87 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1
  %88 = load i64, ptr %87, align 8, !tbaa !5
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds [129 x i16], ptr @cost_table_, i64 0, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !34
  %92 = sext i16 %91 to i32
  %93 = sub nsw i32 %84, %92
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %99, label %95

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.case_node, ptr %72, i64 0, i32 1
  %97 = add nuw nsw i32 %65, 1
  %98 = load ptr, ptr %96, align 8, !tbaa !21
  br label %61

99:                                               ; preds = %83
  %100 = icmp eq i32 %65, 0
  br i1 %100, label %101, label %147

101:                                              ; preds = %99
  %102 = load ptr, ptr %8, align 8, !tbaa !21
  %103 = getelementptr inbounds %struct.case_node, ptr %102, i64 0, i32 2
  store ptr %7, ptr %103, align 8, !tbaa !103
  tail call fastcc void @balance_case_nodes(ptr noundef %102, ptr noundef %102) #17
  %104 = getelementptr inbounds %struct.case_node, ptr %102, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !104
  %106 = icmp eq ptr %105, null
  br i1 %106, label %166, label %107

107:                                              ; preds = %101, %107
  %108 = phi ptr [ %112, %107 ], [ %105, %101 ]
  %109 = phi ptr [ %108, %107 ], [ %102, %101 ]
  %110 = getelementptr inbounds %struct.case_node, ptr %108, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !103
  %111 = getelementptr inbounds %struct.case_node, ptr %108, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !104
  %113 = icmp eq ptr %112, null
  br i1 %113, label %166, label %107, !llvm.loop !118

114:                                              ; preds = %56
  %115 = icmp eq i32 %49, 3
  br i1 %115, label %116, label %118

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.case_node, ptr %55, i64 0, i32 1
  br label %147

118:                                              ; preds = %114
  %119 = add nuw i32 %12, 2
  %120 = add i32 %119, %47
  %121 = sdiv i32 %120, 2
  %122 = getelementptr inbounds %struct.case_node, ptr %55, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !90
  %124 = getelementptr inbounds %struct.case_node, ptr %55, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !92
  %126 = tail call i32 @tree_int_cst_equal(ptr noundef %123, ptr noundef %125) #16
  %127 = icmp eq i32 %126, 0
  %128 = sext i1 %127 to i32
  %129 = add nsw i32 %121, %128
  %130 = icmp slt i32 %129, 2
  br i1 %130, label %147, label %131

131:                                              ; preds = %118, %131
  %132 = phi i32 [ %145, %131 ], [ %129, %118 ]
  %133 = phi ptr [ %136, %131 ], [ %8, %118 ]
  %134 = add nsw i32 %132, -1
  %135 = load ptr, ptr %133, align 8, !tbaa !21
  %136 = getelementptr inbounds %struct.case_node, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !21
  %138 = getelementptr inbounds %struct.case_node, ptr %137, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !90
  %140 = getelementptr inbounds %struct.case_node, ptr %137, i64 0, i32 4
  %141 = load ptr, ptr %140, align 8, !tbaa !92
  %142 = tail call i32 @tree_int_cst_equal(ptr noundef %139, ptr noundef %141) #16
  %143 = icmp eq i32 %142, 0
  %144 = sext i1 %143 to i32
  %145 = add nsw i32 %134, %144
  %146 = icmp ult i32 %145, 2
  br i1 %146, label %147, label %131

147:                                              ; preds = %131, %118, %99, %116
  %148 = phi ptr [ %117, %116 ], [ %64, %99 ], [ %8, %118 ], [ %136, %131 ]
  %149 = load ptr, ptr %148, align 8, !tbaa !21
  store ptr %149, ptr %8, align 8, !tbaa !21
  store ptr null, ptr %148, align 8, !tbaa !21
  %150 = getelementptr inbounds %struct.case_node, ptr %149, i64 0, i32 2
  store ptr %7, ptr %150, align 8, !tbaa !103
  store ptr %55, ptr %149, align 8, !tbaa !102
  tail call fastcc void @balance_case_nodes(ptr noundef nonnull %149, ptr noundef nonnull %149) #17
  %151 = getelementptr inbounds %struct.case_node, ptr %149, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !21
  %153 = icmp eq ptr %152, null
  br i1 %153, label %166, label %5

154:                                              ; preds = %53
  %155 = getelementptr inbounds %struct.case_node, ptr %55, i64 0, i32 2
  store ptr %7, ptr %155, align 8, !tbaa !103
  %156 = getelementptr inbounds %struct.case_node, ptr %55, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !104
  %158 = icmp eq ptr %157, null
  br i1 %158, label %166, label %159

159:                                              ; preds = %154, %159
  %160 = phi ptr [ %164, %159 ], [ %157, %154 ]
  %161 = phi ptr [ %160, %159 ], [ %55, %154 ]
  %162 = getelementptr inbounds %struct.case_node, ptr %160, i64 0, i32 2
  store ptr %161, ptr %162, align 8, !tbaa !103
  %163 = getelementptr inbounds %struct.case_node, ptr %160, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !104
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %159, !llvm.loop !119

166:                                              ; preds = %147, %159, %107, %2, %154, %101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_case_nodes(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %65, %4
  %8 = phi ptr [ %1, %4 ], [ %67, %65 ]
  %9 = load i64, ptr %3, align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i32 %10, 21
  %12 = and i32 %11, 1
  %13 = load i32, ptr %0, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = and i64 %9, 65535
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %20

18:                                               ; preds = %7
  %19 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #16
  br label %24

20:                                               ; preds = %7
  %21 = load i32, ptr %5, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i32 [ %19, %18 ], [ %23, %20 ]
  %26 = icmp eq i32 %15, 0
  %27 = select i1 %26, i32 %25, i32 %15
  %28 = tail call fastcc i32 @node_is_bounded(ptr noundef %8, ptr noundef nonnull %3) #17, !range !80
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.case_node, ptr %8, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !93
  %33 = tail call ptr @label_rtx(ptr noundef %32) #17
  tail call void @emit_jump(ptr noundef %33) #17
  br label %309

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.case_node, ptr %8, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !90
  %37 = getelementptr inbounds %struct.case_node, ptr %8, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  %39 = tail call i32 @tree_int_cst_equal(ptr noundef %36, ptr noundef %38) #16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %205, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %35, align 8, !tbaa !90
  %43 = tail call fastcc ptr @expand_normal(ptr noundef %42) #17
  %44 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %43, i32 noundef %12) #16
  %45 = getelementptr inbounds %struct.case_node, ptr %8, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !93
  %47 = tail call ptr @label_rtx(ptr noundef %46) #17
  tail call fastcc void @do_jump_if_equal(i32 noundef %27, ptr noundef nonnull %0, ptr noundef %44, ptr noundef %47, i32 noundef %12) #17
  %48 = getelementptr inbounds %struct.case_node, ptr %8, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !104
  %50 = icmp eq ptr %49, null
  %51 = load ptr, ptr %8, align 8, !tbaa !102
  %52 = icmp eq ptr %51, null
  br i1 %50, label %173, label %53

53:                                               ; preds = %41
  br i1 %52, label %142, label %54

54:                                               ; preds = %53
  %55 = tail call fastcc i32 @node_is_bounded(ptr noundef nonnull %49, ptr noundef nonnull %3) #17, !range !80
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %37, align 8, !tbaa !92
  %59 = tail call fastcc ptr @expand_normal(ptr noundef %58) #17
  %60 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %59, i32 noundef %12) #16
  %61 = load ptr, ptr %48, align 8, !tbaa !104
  %62 = getelementptr inbounds %struct.case_node, ptr %61, i64 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !93
  %64 = tail call ptr @label_rtx(ptr noundef %63) #17
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %60, i32 noundef 83, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %64) #16
  br label %65

65:                                               ; preds = %188, %191, %156, %159, %57, %72, %141, %244, %252, %267
  %66 = phi ptr [ %8, %57 ], [ %48, %72 ], [ %48, %141 ], [ %206, %244 ], [ %206, %252 ], [ %8, %267 ], [ %48, %159 ], [ %48, %156 ], [ %8, %191 ], [ %8, %188 ]
  %67 = load ptr, ptr %66, align 8, !tbaa !21
  br label %7

68:                                               ; preds = %54
  %69 = load ptr, ptr %8, align 8, !tbaa !102
  %70 = tail call fastcc i32 @node_is_bounded(ptr noundef %69, ptr noundef nonnull %3) #17, !range !80
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %37, align 8, !tbaa !92
  %74 = tail call fastcc ptr @expand_normal(ptr noundef %73) #17
  %75 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %74, i32 noundef %12) #16
  %76 = load ptr, ptr %8, align 8, !tbaa !102
  %77 = getelementptr inbounds %struct.case_node, ptr %76, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !93
  %79 = tail call ptr @label_rtx(ptr noundef %78) #17
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %75, i32 noundef 85, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %79) #16
  br label %65

80:                                               ; preds = %68
  %81 = load ptr, ptr %48, align 8, !tbaa !104
  %82 = getelementptr inbounds %struct.case_node, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !90
  %84 = getelementptr inbounds %struct.case_node, ptr %81, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !92
  %86 = tail call i32 @tree_int_cst_equal(ptr noundef %83, ptr noundef %85) #16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %131, label %88

88:                                               ; preds = %80
  %89 = load ptr, ptr %48, align 8, !tbaa !104
  %90 = load ptr, ptr %89, align 8, !tbaa !102
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %131

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.case_node, ptr %89, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !104
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %131

96:                                               ; preds = %92
  %97 = load ptr, ptr %8, align 8, !tbaa !102
  %98 = getelementptr inbounds %struct.case_node, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !90
  %100 = getelementptr inbounds %struct.case_node, ptr %97, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !92
  %102 = tail call i32 @tree_int_cst_equal(ptr noundef %99, ptr noundef %101) #16
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %131, label %104

104:                                              ; preds = %96
  %105 = load ptr, ptr %8, align 8, !tbaa !102
  %106 = load ptr, ptr %105, align 8, !tbaa !102
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %131

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.case_node, ptr %105, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !104
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = load ptr, ptr %48, align 8, !tbaa !104
  %114 = getelementptr inbounds %struct.case_node, ptr %113, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !90
  %116 = tail call fastcc ptr @expand_normal(ptr noundef %115) #17
  %117 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %116, i32 noundef %12) #16
  %118 = load ptr, ptr %48, align 8, !tbaa !104
  %119 = getelementptr inbounds %struct.case_node, ptr %118, i64 0, i32 5
  %120 = load ptr, ptr %119, align 8, !tbaa !93
  %121 = tail call ptr @label_rtx(ptr noundef %120) #17
  tail call fastcc void @do_jump_if_equal(i32 noundef %27, ptr noundef nonnull %0, ptr noundef %117, ptr noundef %121, i32 noundef %12) #17
  %122 = load ptr, ptr %8, align 8, !tbaa !102
  %123 = getelementptr inbounds %struct.case_node, ptr %122, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !90
  %125 = tail call fastcc ptr @expand_normal(ptr noundef %124) #17
  %126 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %125, i32 noundef %12) #16
  %127 = load ptr, ptr %8, align 8, !tbaa !102
  %128 = getelementptr inbounds %struct.case_node, ptr %127, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !93
  %130 = tail call ptr @label_rtx(ptr noundef %129) #17
  tail call fastcc void @do_jump_if_equal(i32 noundef %27, ptr noundef nonnull %0, ptr noundef %126, ptr noundef %130, i32 noundef %12) #17
  br label %309

131:                                              ; preds = %108, %104, %96, %92, %88, %80
  %132 = tail call i32 @curr_insn_locator() #16
  %133 = tail call i32 @locator_location(i32 noundef %132) #16
  %134 = tail call ptr @build_decl_stat(i32 noundef %133, i32 noundef 30, ptr noundef null, ptr noundef null) #16
  %135 = load ptr, ptr %37, align 8, !tbaa !92
  %136 = tail call fastcc ptr @expand_normal(ptr noundef %135) #17
  %137 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %136, i32 noundef %12) #16
  %138 = tail call ptr @label_rtx(ptr noundef %134) #17
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %137, i32 noundef 83, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %138) #16
  %139 = load ptr, ptr %8, align 8, !tbaa !102
  tail call fastcc void @emit_case_nodes(ptr noundef nonnull %0, ptr noundef %139, ptr noundef %2, ptr noundef nonnull %3) #17
  br i1 %6, label %141, label %140

140:                                              ; preds = %131
  tail call void @emit_jump(ptr noundef nonnull %2) #17
  br label %141

141:                                              ; preds = %140, %131
  tail call void @expand_label(ptr noundef %134) #17
  br label %65

142:                                              ; preds = %53
  %143 = getelementptr inbounds %struct.case_node, ptr %49, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !104
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %156

146:                                              ; preds = %142
  %147 = load ptr, ptr %49, align 8, !tbaa !102
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.case_node, ptr %49, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !90
  %152 = getelementptr inbounds %struct.case_node, ptr %49, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !92
  %154 = tail call i32 @tree_int_cst_equal(ptr noundef %151, ptr noundef %153) #16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %149, %146, %142
  %157 = tail call fastcc i32 @node_has_low_bound(ptr noundef nonnull %8, ptr noundef nonnull %3) #17, !range !80
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %65

159:                                              ; preds = %156
  %160 = load ptr, ptr %37, align 8, !tbaa !92
  %161 = tail call fastcc ptr @expand_normal(ptr noundef %160) #17
  %162 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %161, i32 noundef %12) #16
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %162, i32 noundef 85, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %2) #16
  br label %65

163:                                              ; preds = %149
  %164 = load ptr, ptr %48, align 8, !tbaa !104
  %165 = getelementptr inbounds %struct.case_node, ptr %164, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !90
  %167 = tail call fastcc ptr @expand_normal(ptr noundef %166) #17
  %168 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %167, i32 noundef %12) #16
  %169 = load ptr, ptr %48, align 8, !tbaa !104
  %170 = getelementptr inbounds %struct.case_node, ptr %169, i64 0, i32 5
  %171 = load ptr, ptr %170, align 8, !tbaa !93
  %172 = tail call ptr @label_rtx(ptr noundef %171) #17
  tail call fastcc void @do_jump_if_equal(i32 noundef %27, ptr noundef nonnull %0, ptr noundef %168, ptr noundef %172, i32 noundef %12) #17
  br label %309

173:                                              ; preds = %41
  br i1 %52, label %309, label %174

174:                                              ; preds = %173
  %175 = load ptr, ptr %51, align 8, !tbaa !102
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %188

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.case_node, ptr %51, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !104
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.case_node, ptr %51, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !90
  %184 = getelementptr inbounds %struct.case_node, ptr %51, i64 0, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !92
  %186 = tail call i32 @tree_int_cst_equal(ptr noundef %183, ptr noundef %185) #16
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %181, %177, %174
  %189 = tail call fastcc i32 @node_has_high_bound(ptr noundef nonnull %8, ptr noundef nonnull %3) #17, !range !80
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %65

191:                                              ; preds = %188
  %192 = load ptr, ptr %37, align 8, !tbaa !92
  %193 = tail call fastcc ptr @expand_normal(ptr noundef %192) #17
  %194 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %193, i32 noundef %12) #16
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %194, i32 noundef 83, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %2) #16
  br label %65

195:                                              ; preds = %181
  %196 = load ptr, ptr %8, align 8, !tbaa !102
  %197 = getelementptr inbounds %struct.case_node, ptr %196, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !90
  %199 = tail call fastcc ptr @expand_normal(ptr noundef %198) #17
  %200 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %199, i32 noundef %12) #16
  %201 = load ptr, ptr %8, align 8, !tbaa !102
  %202 = getelementptr inbounds %struct.case_node, ptr %201, i64 0, i32 5
  %203 = load ptr, ptr %202, align 8, !tbaa !93
  %204 = tail call ptr @label_rtx(ptr noundef %203) #17
  tail call fastcc void @do_jump_if_equal(i32 noundef %27, ptr noundef nonnull %0, ptr noundef %200, ptr noundef %204, i32 noundef %12) #17
  br label %309

205:                                              ; preds = %34
  %206 = getelementptr inbounds %struct.case_node, ptr %8, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !104
  %208 = icmp eq ptr %207, null
  %209 = load ptr, ptr %8, align 8, !tbaa !102
  %210 = icmp eq ptr %209, null
  br i1 %208, label %259, label %211

211:                                              ; preds = %205
  br i1 %210, label %245, label %212

212:                                              ; preds = %211
  %213 = tail call fastcc i32 @node_is_bounded(ptr noundef nonnull %207, ptr noundef nonnull %3) #17, !range !80
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %222, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr %37, align 8, !tbaa !92
  %217 = tail call fastcc ptr @expand_normal(ptr noundef %216) #17
  %218 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %217, i32 noundef %12) #16
  %219 = load ptr, ptr %206, align 8, !tbaa !104
  %220 = getelementptr inbounds %struct.case_node, ptr %219, i64 0, i32 5
  %221 = load ptr, ptr %220, align 8, !tbaa !93
  br label %229

222:                                              ; preds = %212
  %223 = tail call i32 @curr_insn_locator() #16
  %224 = tail call i32 @locator_location(i32 noundef %223) #16
  %225 = tail call ptr @build_decl_stat(i32 noundef %224, i32 noundef 30, ptr noundef null, ptr noundef null) #16
  %226 = load ptr, ptr %37, align 8, !tbaa !92
  %227 = tail call fastcc ptr @expand_normal(ptr noundef %226) #17
  %228 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %227, i32 noundef %12) #16
  br label %229

229:                                              ; preds = %222, %215
  %230 = phi ptr [ %225, %222 ], [ %221, %215 ]
  %231 = phi ptr [ %228, %222 ], [ %218, %215 ]
  %232 = phi ptr [ %225, %222 ], [ null, %215 ]
  %233 = tail call ptr @label_rtx(ptr noundef %230) #17
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %231, i32 noundef 83, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %233) #16
  %234 = load ptr, ptr %35, align 8, !tbaa !90
  %235 = tail call fastcc ptr @expand_normal(ptr noundef %234) #17
  %236 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %235, i32 noundef %12) #16
  %237 = getelementptr inbounds %struct.case_node, ptr %8, i64 0, i32 5
  %238 = load ptr, ptr %237, align 8, !tbaa !93
  %239 = tail call ptr @label_rtx(ptr noundef %238) #17
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %236, i32 noundef 82, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %239) #16
  %240 = load ptr, ptr %8, align 8, !tbaa !102
  tail call fastcc void @emit_case_nodes(ptr noundef nonnull %0, ptr noundef %240, ptr noundef %2, ptr noundef nonnull %3) #17
  %241 = icmp eq ptr %232, null
  br i1 %241, label %309, label %242

242:                                              ; preds = %229
  br i1 %6, label %244, label %243

243:                                              ; preds = %242
  tail call void @emit_jump(ptr noundef nonnull %2) #17
  br label %244

244:                                              ; preds = %243, %242
  tail call void @expand_label(ptr noundef nonnull %232) #17
  br label %65

245:                                              ; preds = %211
  %246 = tail call fastcc i32 @node_has_low_bound(ptr noundef nonnull %8, ptr noundef nonnull %3) #17, !range !80
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load ptr, ptr %35, align 8, !tbaa !90
  %250 = tail call fastcc ptr @expand_normal(ptr noundef %249) #17
  %251 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %250, i32 noundef %12) #16
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %251, i32 noundef 85, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %2) #16
  br label %252

252:                                              ; preds = %248, %245
  %253 = load ptr, ptr %37, align 8, !tbaa !92
  %254 = tail call fastcc ptr @expand_normal(ptr noundef %253) #17
  %255 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %254, i32 noundef %12) #16
  %256 = getelementptr inbounds %struct.case_node, ptr %8, i64 0, i32 5
  %257 = load ptr, ptr %256, align 8, !tbaa !93
  %258 = tail call ptr @label_rtx(ptr noundef %257) #17
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %255, i32 noundef 84, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %258) #16
  br label %65

259:                                              ; preds = %205
  %260 = tail call fastcc i32 @node_has_high_bound(ptr noundef nonnull %8, ptr noundef nonnull %3) #17, !range !80
  br i1 %210, label %274, label %261

261:                                              ; preds = %259
  %262 = icmp eq i32 %260, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %261
  %264 = load ptr, ptr %37, align 8, !tbaa !92
  %265 = tail call fastcc ptr @expand_normal(ptr noundef %264) #17
  %266 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %265, i32 noundef %12) #16
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %266, i32 noundef 83, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %2) #16
  br label %267

267:                                              ; preds = %263, %261
  %268 = load ptr, ptr %35, align 8, !tbaa !90
  %269 = tail call fastcc ptr @expand_normal(ptr noundef %268) #17
  %270 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %269, i32 noundef %12) #16
  %271 = getelementptr inbounds %struct.case_node, ptr %8, i64 0, i32 5
  %272 = load ptr, ptr %271, align 8, !tbaa !93
  %273 = tail call ptr @label_rtx(ptr noundef %272) #17
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %270, i32 noundef 82, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %273) #16
  br label %65

274:                                              ; preds = %259
  %275 = tail call fastcc i32 @node_has_low_bound(ptr noundef nonnull %8, ptr noundef nonnull %3) #17, !range !80
  %276 = icmp eq i32 %260, 0
  %277 = icmp ne i32 %275, 0
  %278 = and i1 %276, %277
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  %280 = load ptr, ptr %37, align 8, !tbaa !92
  %281 = tail call fastcc ptr @expand_normal(ptr noundef %280) #17
  %282 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %281, i32 noundef %12) #16
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %282, i32 noundef 83, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %2) #16
  br label %305

283:                                              ; preds = %274
  %284 = icmp eq i32 %275, 0
  %285 = icmp ne i32 %260, 0
  %286 = and i1 %285, %284
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = load ptr, ptr %35, align 8, !tbaa !90
  %289 = tail call fastcc ptr @expand_normal(ptr noundef %288) #17
  %290 = tail call ptr @convert_modes(i32 noundef %27, i32 noundef %25, ptr noundef %289, i32 noundef %12) #16
  tail call void @emit_cmp_and_jump_insns(ptr noundef nonnull %0, ptr noundef %290, i32 noundef 85, ptr noundef null, i32 noundef %27, i32 noundef %12, ptr noundef %2) #16
  br label %305

291:                                              ; preds = %283
  %292 = or i32 %275, %260
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %291
  %295 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !120
  %296 = tail call ptr %295(i32 noundef %27, i32 noundef %12) #16
  %297 = load ptr, ptr %35, align 8, !tbaa !90
  %298 = tail call ptr @build1_stat(i32 noundef 113, ptr noundef %296, ptr noundef %297) #16
  %299 = load ptr, ptr %37, align 8, !tbaa !92
  %300 = tail call ptr @build1_stat(i32 noundef 113, ptr noundef %296, ptr noundef %299) #16
  %301 = tail call fastcc ptr @expand_expr(ptr noundef %298, ptr noundef null, i32 noundef %27, i32 noundef 0) #17
  %302 = tail call ptr @expand_simple_binop(i32 noundef %27, i32 noundef 50, ptr noundef nonnull %0, ptr noundef %301, ptr noundef null, i32 noundef %12, i32 noundef 2) #16
  %303 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %296, ptr noundef %300, ptr noundef %298) #16
  %304 = tail call fastcc ptr @expand_expr(ptr noundef %303, ptr noundef null, i32 noundef %27, i32 noundef 0) #17
  tail call void @emit_cmp_and_jump_insns(ptr noundef %302, ptr noundef %304, i32 noundef 83, ptr noundef null, i32 noundef %27, i32 noundef 1, ptr noundef %2) #16
  br label %305

305:                                              ; preds = %287, %294, %291, %279
  %306 = getelementptr inbounds %struct.case_node, ptr %8, i64 0, i32 5
  %307 = load ptr, ptr %306, align 8, !tbaa !93
  %308 = tail call ptr @label_rtx(ptr noundef %307) #17
  tail call void @emit_jump(ptr noundef %308) #17
  br label %309

309:                                              ; preds = %229, %173, %163, %195, %112, %305, %30
  ret void
}

; Function Attrs: optsize
declare i32 @try_casesi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @try_tablejump(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_eEee0_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtvec_v(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !5
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @overlaps_hard_reg_set_p(i64 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #11 {
  %4 = zext nneg i32 %2 to i64
  %5 = shl nuw i64 1, %4
  %6 = and i64 %5, %0
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = tail call fastcc i32 @end_hard_regno(i32 noundef %1, i32 noundef %2) #17
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
  br i1 %18, label %10, label %19, !llvm.loop !128

19:                                               ; preds = %10, %14, %3
  %20 = phi i8 [ 1, %3 ], [ 0, %10 ], [ 1, %14 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @end_hard_regno(i32 noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = zext i32 %1 to i64
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %7 = zext i8 %6 to i32
  %8 = add i32 %7, %1
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !40
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !41
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !39
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1622, ptr noundef nonnull @.str.1) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !41
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !48
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_si_stat(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @list_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_operand_nalternatives(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  %7 = select i1 %3, ptr %0, ptr %1
  %8 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.tree_string, ptr %11, i64 0, i32 2
  %13 = tail call fastcc i32 @n_occurrences(ptr noundef nonnull %12) #17
  %14 = icmp sgt i32 %13, 29
  br i1 %14, label %34, label %15

15:                                               ; preds = %6
  %16 = icmp eq ptr %0, null
  br i1 %16, label %36, label %17

17:                                               ; preds = %15, %27
  %18 = phi ptr [ %32, %27 ], [ %1, %15 ]
  %19 = phi ptr [ %31, %27 ], [ %0, %15 ]
  %20 = getelementptr inbounds %struct.tree_list, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.tree_list, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.tree_string, ptr %23, i64 0, i32 2
  %25 = tail call fastcc i32 @n_occurrences(ptr noundef nonnull %24) #17
  %26 = icmp eq i32 %25, %13
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr %18, ptr %29
  %32 = select i1 %30, ptr null, ptr %18
  %33 = icmp eq ptr %31, null
  br i1 %33, label %36, label %17

34:                                               ; preds = %17, %6
  %35 = phi ptr [ @.str.23, %6 ], [ @.str.24, %17 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %35) #16
  br label %36

36:                                               ; preds = %27, %34, %15, %2
  %37 = phi i8 [ 1, %2 ], [ 1, %15 ], [ 0, %34 ], [ 1, %27 ]
  ret i8 %37
}

; Function Attrs: optsize
declare i32 @decode_reg_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_addressable(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @validize_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_reg_attrs_for_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_tree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @tree_conflicts_with_clobbers_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @tree_overlaps_hard_reg_set(ptr noundef %0, ptr noundef %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.25, ptr noundef %7) #16
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, -16777217
  store i64 %10, ptr %8, align 8
  br label %11

11:                                               ; preds = %2, %5
  %12 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ssiEEEi_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @asm_operand_ok(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_const_mem(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @reg_overlap_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @n_occurrences(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = load i8, ptr %0, align 1, !tbaa !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %4
  %5 = phi i8 [ %12, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %11, %4 ], [ 0, %1 ]
  %7 = phi ptr [ %8, %4 ], [ %0, %1 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = icmp eq i8 %5, 44
  %10 = zext i1 %9 to i32
  %11 = add nuw nsw i32 %6, %10
  %12 = load i8, ptr %8, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %4, !llvm.loop !129

14:                                               ; preds = %4, %1
  %15 = phi i32 [ 0, %1 ], [ %11, %4 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: optsize
declare i32 @promote_function_mode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @emit_group_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_use(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_blockage() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !5
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @case_bit_test_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.case_bit_test, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.case_bit_test, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !108
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = sub nsw i32 %4, %6
  br label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.case_bit_test, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !105
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.case_bit_test, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  %17 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 1, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !5
  %19 = sub nsw i32 %14, %18
  br label %20

20:                                               ; preds = %10, %8
  %21 = phi i32 [ %9, %8 ], [ %19, %10 ]
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @node_is_bounded(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @node_has_low_bound(ptr noundef %0, ptr noundef %1) #17, !range !80
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @node_has_high_bound(ptr noundef %0, ptr noundef %1) #17, !range !80
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ 0, %2 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_jump_if_equal(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  tail call void @do_compare_rtx_and_jump(ptr noundef %1, ptr noundef %2, i32 noundef 81, i32 noundef %4, i32 noundef %0, ptr noundef null, ptr noundef null, ptr noundef %3, i32 noundef -1) #16
  ret void
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @locator_location(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @curr_insn_locator() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @node_has_low_bound(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.case_node, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call i32 @tree_int_cst_equal(ptr noundef %4, ptr noundef %6) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !102
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load ptr, ptr %3, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = tail call ptr @build_int_cst(ptr noundef %15, i64 noundef 1) #16
  %17 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %15, ptr noundef %13, ptr noundef %16) #16
  %18 = load ptr, ptr %3, align 8, !tbaa !90
  %19 = tail call i32 @tree_int_cst_lt(ptr noundef %17, ptr noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %12, %26
  %22 = phi ptr [ %24, %26 ], [ %0, %12 ]
  %23 = getelementptr inbounds %struct.case_node, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !103
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.case_node, ptr %24, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !92
  %29 = tail call i32 @tree_int_cst_equal(ptr noundef %17, ptr noundef %28) #16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %21, label %31, !llvm.loop !130

31:                                               ; preds = %21, %26, %12, %9, %2
  %32 = phi i32 [ 1, %2 ], [ 0, %9 ], [ 0, %12 ], [ 0, %21 ], [ 1, %26 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @node_has_high_bound(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.case_node, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = tail call i32 @tree_int_cst_equal(ptr noundef %8, ptr noundef nonnull %4) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.case_node, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !92
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = tail call ptr @build_int_cst(ptr noundef %18, i64 noundef 1) #16
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %18, ptr noundef %16, ptr noundef %19) #16
  %21 = load ptr, ptr %7, align 8, !tbaa !92
  %22 = tail call i32 @tree_int_cst_lt(ptr noundef %21, ptr noundef %20) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %15, %29
  %25 = phi ptr [ %27, %29 ], [ %0, %15 ]
  %26 = getelementptr inbounds %struct.case_node, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.case_node, ptr %27, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !90
  %32 = tail call i32 @tree_int_cst_equal(ptr noundef %20, ptr noundef %31) #16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %24, label %34, !llvm.loop !131

34:                                               ; preds = %24, %29, %15, %11, %6, %2
  %35 = phi i32 [ 1, %2 ], [ 1, %6 ], [ 0, %11 ], [ 0, %15 ], [ 0, %24 ], [ 1, %29 ]
  ret i32 %35
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @expand_simple_binop(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @do_compare_rtx_and_jump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 32}
!9 = !{!"rtl_data", !10, i64 0, !13, i64 40, !14, i64 96, !15, i64 112, !17, i64 208, !18, i64 248, !11, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !12, i64 376, !12, i64 384, !12, i64 392, !19, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !11, i64 432, !11, i64 436, !11, i64 440, !11, i64 444, !11, i64 448, !11, i64 452, !12, i64 456, !6, i64 464, !6, i64 465, !6, i64 466, !6, i64 467, !6, i64 468, !6, i64 469, !6, i64 470, !6, i64 471, !6, i64 472, !6, i64 473, !6, i64 474, !6, i64 475, !6, i64 476, !6, i64 477, !6, i64 478, !6, i64 479, !6, i64 480, !6, i64 481, !6, i64 482, !6, i64 483, !6, i64 484, !6, i64 485}
!10 = !{!"expr_status", !11, i64 0, !11, i64 4, !11, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!11 = !{!"int", !6, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"emit_status", !11, i64 0, !11, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !12, i64 48}
!14 = !{!"varasm_status", !12, i64 0, !11, i64 8}
!15 = !{!"incoming_args", !11, i64 0, !11, i64 4, !11, i64 8, !12, i64 16, !16, i64 24, !12, i64 88}
!16 = !{!"ix86_args", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60}
!17 = !{!"function_subsections", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!18 = !{!"rtl_eh", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !6, i64 48}
!19 = !{!"long", !6, i64 0}
!20 = !{!9, !12, i64 344}
!21 = !{!12, !12, i64 0}
!22 = !{!23, !12, i64 1640}
!23 = !{!"gcc_target", !24, i64 0, !26, i64 368, !27, i64 664, !11, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !12, i64 936, !12, i64 944, !12, i64 952, !12, i64 960, !12, i64 968, !12, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !19, i64 1064, !19, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !12, i64 1104, !12, i64 1112, !12, i64 1120, !12, i64 1128, !12, i64 1136, !12, i64 1144, !12, i64 1152, !12, i64 1160, !12, i64 1168, !28, i64 1176, !12, i64 1232, !12, i64 1240, !12, i64 1248, !12, i64 1256, !12, i64 1264, !12, i64 1272, !12, i64 1280, !12, i64 1288, !12, i64 1296, !12, i64 1304, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !12, i64 1392, !12, i64 1400, !12, i64 1408, !12, i64 1416, !12, i64 1424, !12, i64 1432, !12, i64 1440, !12, i64 1448, !12, i64 1456, !19, i64 1464, !29, i64 1472, !12, i64 1664, !12, i64 1672, !12, i64 1680, !12, i64 1688, !12, i64 1696, !12, i64 1704, !12, i64 1712, !12, i64 1720, !12, i64 1728, !12, i64 1736, !12, i64 1744, !12, i64 1752, !12, i64 1760, !12, i64 1768, !12, i64 1776, !30, i64 1784, !31, i64 1792, !32, i64 1896, !33, i64 1968, !12, i64 2016, !6, i64 2024, !6, i64 2025, !6, i64 2026, !6, i64 2027, !6, i64 2028, !6, i64 2029, !6, i64 2030, !6, i64 2031, !6, i64 2032, !6, i64 2033, !6, i64 2034, !6, i64 2035}
!24 = !{!"asm_out", !12, i64 0, !12, i64 8, !12, i64 16, !25, i64 24, !25, i64 56, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360}
!25 = !{!"asm_int_op", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!26 = !{!"sched", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288}
!27 = !{!"vectorize", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!28 = !{!"addr_space", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!29 = !{!"calls", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184}
!30 = !{!"c", !12, i64 0}
!31 = !{!"cxx", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96}
!32 = !{!"emutls", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !6, i64 64, !6, i64 65}
!33 = !{!"target_option_hooks", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !6, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = distinct !{!38, !37}
!39 = !{!19, !19, i64 0}
!40 = !{i8 0, i8 2}
!41 = !{i32 0, i32 256}
!42 = distinct !{!42, !37}
!43 = distinct !{!43, !37}
!44 = distinct !{!44, !37}
!45 = distinct !{!45, !37}
!46 = distinct !{!46, !37}
!47 = distinct !{!47, !37}
!48 = !{!11, !11, i64 0}
!49 = distinct !{!49, !37}
!50 = distinct !{!50, !37}
!51 = !{!23, !12, i64 1400}
!52 = distinct !{!52, !37}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !37}
!60 = distinct !{!60, !37}
!61 = distinct !{!61, !37}
!62 = distinct !{!62, !37}
!63 = distinct !{!63, !37}
!64 = !{!9, !6, i64 468}
!65 = distinct !{!65, !37}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !37}
!68 = distinct !{!68, !37}
!69 = distinct !{!69, !37}
!70 = distinct !{!70, !37}
!71 = distinct !{!71, !37}
!72 = distinct !{!72, !37}
!73 = distinct !{!73, !37}
!74 = distinct !{!74, !37}
!75 = distinct !{!75, !37}
!76 = distinct !{!76, !37}
!77 = distinct !{!77, !37}
!78 = distinct !{!78, !37}
!79 = distinct !{!79, !37}
!80 = !{i32 0, i32 2}
!81 = !{!9, !12, i64 352}
!82 = !{!9, !12, i64 360}
!83 = !{!23, !12, i64 1504}
!84 = distinct !{!84, !37}
!85 = distinct !{!85, !37}
!86 = distinct !{!86, !37}
!87 = !{!88, !12, i64 0}
!88 = !{!"rtl_hooks", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!89 = distinct !{!89, !37}
!90 = !{!91, !12, i64 24}
!91 = !{!"case_node", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!92 = !{!91, !12, i64 32}
!93 = !{!91, !12, i64 40}
!94 = distinct !{!94, !37}
!95 = !{!96, !11, i64 0}
!96 = !{!"optab_handlers", !11, i64 0}
!97 = !{!23, !12, i64 1760}
!98 = distinct !{!98, !37}
!99 = distinct !{!99, !37}
!100 = distinct !{!100, !37}
!101 = distinct !{!101, !37}
!102 = !{!91, !12, i64 0}
!103 = !{!91, !12, i64 16}
!104 = !{!91, !12, i64 8}
!105 = !{!106, !12, i64 16}
!106 = !{!"case_bit_test", !19, i64 0, !19, i64 8, !12, i64 16, !11, i64 24}
!107 = distinct !{!107, !37}
!108 = !{!106, !11, i64 24}
!109 = !{!106, !19, i64 0}
!110 = !{!106, !19, i64 8}
!111 = distinct !{!111, !37}
!112 = distinct !{!112, !37}
!113 = distinct !{!113, !37}
!114 = distinct !{!114, !37}
!115 = distinct !{!115, !37}
!116 = distinct !{!116, !37}
!117 = distinct !{!117, !37}
!118 = distinct !{!118, !37}
!119 = distinct !{!119, !37}
!120 = !{!121, !12, i64 448}
!121 = !{!"lang_hooks", !12, i64 0, !19, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !122, i64 240, !123, i64 248, !124, i64 256, !125, i64 272, !126, i64 432, !127, i64 560, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !12, i64 616, !12, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !6, i64 672}
!122 = !{!"lang_hooks_for_tree_inlining", !12, i64 0}
!123 = !{!"lang_hooks_for_callgraph", !12, i64 0}
!124 = !{!"lang_hooks_for_tree_dump", !12, i64 0, !12, i64 8}
!125 = !{!"lang_hooks_for_decls", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152}
!126 = !{!"lang_hooks_for_types", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !6, i64 120}
!127 = !{!"lang_hooks_for_lto", !12, i64 0, !12, i64 8, !12, i64 16}
!128 = distinct !{!128, !37}
!129 = distinct !{!129, !37}
!130 = distinct !{!130, !37}
!131 = distinct !{!131, !37}
