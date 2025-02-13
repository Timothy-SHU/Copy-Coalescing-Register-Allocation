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
%struct.call_expr_arg_iterator_d = type { ptr, i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.arg_data = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.locate_and_pad_arg_data, ptr, ptr, ptr, ptr, i32 }
%struct.locate_and_pad_arg_data = type { %struct.args_size, %struct.args_size, %struct.args_size, %struct.args_size, i32, i32 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.arg = type { ptr, i32, ptr, i32, %struct.locate_and_pad_arg_data, ptr }

@.str = private unnamed_addr constant [8 x i8] c"calls.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"alloca\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"__builtin_alloca\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"uiltin_\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"setjmp\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"setjmp_syscall\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"sigsetjmp\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"savectx\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"siglongjmp\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"qsetjmp\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"getcontext\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"longjmp\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.14 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@optab_table = external global [159 x %struct.optab_d], align 16
@expand_call.currently_expanding_call = internal unnamed_addr global i32 0, align 4
@target_flags = external local_unnamed_addr global i32, align 4
@highest_outgoing_arg_in_use = internal unnamed_addr global i32 0, align 4
@stack_usage_map = internal unnamed_addr global ptr null, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str.15 = private unnamed_addr constant [34 x i8] c"function call has aggregate value\00", align 1
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
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@flag_stack_check = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@optimize = external local_unnamed_addr global i32, align 4
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @prepare_call_address(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #0 !prof !331 {
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 45
  br i1 %9, label %15, label %10, !prof !332

10:                                               ; preds = %6
  %11 = icmp eq i32 %4, 0
  %12 = tail call ptr @memory_address_addr_space(i32 noundef 14, ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br i1 %11, label %15, label %13, !prof !333

13:                                               ; preds = %10
  %14 = tail call ptr @force_not_mem(ptr noundef %12) #18
  br label %15

15:                                               ; preds = %10, %6, %13
  %16 = phi ptr [ %14, %13 ], [ %1, %6 ], [ %12, %10 ]
  %17 = icmp eq ptr %2, null
  br i1 %17, label %30, label %18, !prof !334

18:                                               ; preds = %15
  %19 = icmp eq ptr %0, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #18
  br label %21

21:                                               ; preds = %18, %20
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !335
  %23 = tail call ptr %22(ptr noundef %0, i8 noundef zeroext 0) #18
  %24 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %2, i8 noundef zeroext 0) #18
  %25 = tail call ptr @emit_move_insn(ptr noundef %23, ptr noundef %24) #18
  %26 = load i32, ptr %23, align 8
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 37
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  tail call void @use_reg(ptr noundef %3, ptr noundef nonnull %23) #18
  br label %30

30:                                               ; preds = %21, %29, %15
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @force_not_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @use_reg(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @setjmp_call_p(ptr noundef %0) local_unnamed_addr #3 !prof !352 {
  %2 = tail call fastcc i32 @special_function_p(ptr noundef %0, i32 noundef 0) #19
  %3 = and i32 %2, 128
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @special_function_p(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !353 !PGOFuncName !354 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %129, label %4, !prof !355

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !356
  %7 = icmp eq ptr %6, null
  br i1 %7, label %129, label %8, !prof !355

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_identifier, ptr %6, i64 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !356
  %11 = icmp ult i32 %10, 18
  br i1 %11, label %12, label %129, !prof !357

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !356
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !358

16:                                               ; preds = %12
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 40
  br i1 %19, label %20, label %129

20:                                               ; preds = %16, %12
  %21 = load i64, ptr %0, align 8
  %22 = and i64 %21, 134217728
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %129, label %24, !prof !359

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %6, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !356
  %27 = load i8, ptr %26, align 1, !tbaa !356
  switch i32 %10, label %41 [
    i32 6, label %28
    i32 16, label %33
  ], !prof !360

28:                                               ; preds = %24
  %29 = icmp eq i8 %27, 97
  br i1 %29, label %30, label %41, !prof !361

30:                                               ; preds = %28
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(7) @.str.2) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %129, !prof !362

33:                                               ; preds = %24
  %34 = icmp eq i8 %27, 95
  br i1 %34, label %35, label %67, !prof !363

35:                                               ; preds = %33
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(17) @.str.3) #19
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45, !prof !364

38:                                               ; preds = %35, %30
  %39 = phi i8 [ 95, %35 ], [ 97, %30 ]
  %40 = or i32 %1, 32
  br label %41

41:                                               ; preds = %24, %38, %28
  %42 = phi i8 [ %27, %28 ], [ %39, %38 ], [ %27, %24 ]
  %43 = phi i32 [ %1, %28 ], [ %40, %38 ], [ %1, %24 ]
  %44 = icmp eq i8 %42, 95
  br i1 %44, label %45, label %67, !prof !365

45:                                               ; preds = %35, %41
  %46 = phi i32 [ %43, %41 ], [ %1, %35 ]
  %47 = getelementptr inbounds i8, ptr %26, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !356
  %49 = icmp eq i8 %48, 95
  br i1 %49, label %50, label %61, !prof !366

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %26, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !356
  switch i8 %52, label %61 [
    i8 98, label %53
    i8 120, label %59
  ], !prof !367

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %26, i64 3
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(8) @.str.4, i64 noundef 7) #19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61, !prof !368

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %26, i64 10
  br label %64

59:                                               ; preds = %50
  %60 = getelementptr inbounds i8, ptr %26, i64 3
  br label %64

61:                                               ; preds = %50, %53, %45
  %62 = getelementptr inbounds i8, ptr %26, i64 2
  %63 = select i1 %49, ptr %62, ptr %47, !prof !369
  br label %64

64:                                               ; preds = %59, %57, %61
  %65 = phi ptr [ %63, %61 ], [ %58, %57 ], [ %60, %59 ]
  %66 = load i8, ptr %65, align 1, !tbaa !356
  br label %67

67:                                               ; preds = %33, %64, %41
  %68 = phi i8 [ %66, %64 ], [ %42, %41 ], [ %27, %33 ]
  %69 = phi i32 [ %46, %64 ], [ %43, %41 ], [ %1, %33 ]
  %70 = phi ptr [ %65, %64 ], [ %26, %41 ], [ %26, %33 ]
  switch i8 %68, label %129 [
    i8 115, label %71
    i8 113, label %97
    i8 118, label %104
    i8 103, label %111
    i8 108, label %120
  ], !prof !370

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %70, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !356
  switch i8 %73, label %88 [
    i8 101, label %74
    i8 105, label %80
    i8 97, label %83
  ], !prof !371

74:                                               ; preds = %71
  %75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(7) @.str.5) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77, !prof !372

77:                                               ; preds = %74
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(15) @.str.6) #19
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %129, !prof !372

80:                                               ; preds = %71
  %81 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(10) @.str.7) #19
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %91, !prof !373

83:                                               ; preds = %71
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(8) @.str.8) #19
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %129, !prof !374

86:                                               ; preds = %83, %80, %77, %74
  %87 = or i32 %69, 128
  br label %88

88:                                               ; preds = %71, %86
  %89 = phi i32 [ %87, %86 ], [ %69, %71 ]
  %90 = icmp eq i8 %73, 105
  br i1 %90, label %91, label %129, !prof !375

91:                                               ; preds = %80, %88
  %92 = phi i32 [ %89, %88 ], [ %69, %80 ]
  %93 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(11) @.str.9) #19
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %129, !prof !373

95:                                               ; preds = %91
  %96 = or i32 %92, 8
  br label %129

97:                                               ; preds = %67
  %98 = getelementptr inbounds i8, ptr %70, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !356
  %100 = icmp eq i8 %99, 115
  br i1 %100, label %101, label %129, !prof !376

101:                                              ; preds = %97
  %102 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(8) @.str.10) #19
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %118, label %129, !prof !377

104:                                              ; preds = %67
  %105 = getelementptr inbounds i8, ptr %70, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !356
  %107 = icmp eq i8 %106, 102
  br i1 %107, label %108, label %129, !prof !378

108:                                              ; preds = %104
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(6) @.str.11) #19
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %118, label %129, !prof !379

111:                                              ; preds = %67
  %112 = getelementptr inbounds i8, ptr %70, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !356
  %114 = icmp eq i8 %113, 101
  br i1 %114, label %115, label %129, !prof !380

115:                                              ; preds = %111
  %116 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(11) @.str.12) #19
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %129, !prof !381

118:                                              ; preds = %115, %108, %101
  %119 = or i32 %69, 128
  br label %129

120:                                              ; preds = %67
  %121 = getelementptr inbounds i8, ptr %70, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !356
  %123 = icmp eq i8 %122, 111
  br i1 %123, label %124, label %129, !prof !382

124:                                              ; preds = %120
  %125 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(8) @.str.13) #19
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129, !prof !383

127:                                              ; preds = %124
  %128 = or i32 %69, 8
  br label %129

129:                                              ; preds = %67, %77, %30, %97, %101, %104, %108, %111, %115, %83, %95, %91, %88, %120, %124, %127, %118, %20, %16, %8, %4, %2
  %130 = phi i32 [ %1, %20 ], [ %1, %16 ], [ %1, %8 ], [ %1, %4 ], [ %1, %2 ], [ %92, %91 ], [ %96, %95 ], [ %89, %88 ], [ %69, %124 ], [ %128, %127 ], [ %69, %120 ], [ %119, %118 ], [ %69, %83 ], [ %69, %111 ], [ %69, %115 ], [ %69, %104 ], [ %69, %108 ], [ %69, %101 ], [ %69, %97 ], [ %1, %30 ], [ %69, %77 ], [ %69, %67 ]
  ret i32 %130
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_alloca_call_p(ptr noundef %0) local_unnamed_addr #0 !prof !384 {
  %2 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #19, !range !385
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %12, label %4, !prof !386

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !387

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @special_function_p(ptr noundef nonnull %5, i32 noundef 0) #19
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !388

11:                                               ; preds = %7, %4
  br label %12

12:                                               ; preds = %7, %1, %11
  %13 = phi i8 [ 0, %11 ], [ 0, %1 ], [ 1, %7 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !384 !PGOFuncName !389 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !390
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !384 !PGOFuncName !391 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !392

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !356
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !393 !PGOFuncName !394 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !384 !PGOFuncName !395 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 !prof !384 !PGOFuncName !396 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !385
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !386

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !397
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !384 !PGOFuncName !398 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !390
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !384 !PGOFuncName !399 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !400
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !386

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !384 !PGOFuncName !401 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !390
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !384 !PGOFuncName !402 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !403
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @alloca_call_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !404 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 59
  br i1 %4, label %5, label %21, !prof !405

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !356
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 121
  br i1 %10, label %11, label %21, !prof !406

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !356
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 29
  br i1 %16, label %17, label %21, !prof !407

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @special_function_p(ptr noundef nonnull %13, i32 noundef 0) #19
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !407

21:                                               ; preds = %17, %11, %5, %1
  br label %22

22:                                               ; preds = %17, %21
  %23 = phi i8 [ 0, %21 ], [ 1, %17 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @flags_from_decl_or_type(ptr noundef %0) local_unnamed_addr #3 !prof !408 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !403
  switch i32 %5, label %47 [
    i32 3, label %6
    i32 2, label %40
  ], !prof !409

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = lshr i32 %8, 15
  %10 = and i32 %9, 16
  %11 = and i32 %8, 262144
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !410

13:                                               ; preds = %6
  %14 = or disjoint i32 %10, 128
  br label %15

15:                                               ; preds = %13, %6
  %16 = phi i32 [ %14, %13 ], [ %10, %6 ]
  %17 = and i64 %2, 1048576
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19, !prof !411

19:                                               ; preds = %15
  %20 = and i64 %2, 524288
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = or i32 %16, %22
  br label %24

24:                                               ; preds = %19, %15
  %25 = phi i32 [ %16, %15 ], [ %23, %19 ]
  %26 = lshr i32 %8, 26
  %27 = and i32 %26, 6
  %28 = or i32 %27, %25
  %29 = and i32 %8, 131072
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !412

31:                                               ; preds = %24
  %32 = or i32 %28, 512
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %32, %31 ], [ %28, %24 ]
  %35 = trunc i64 %2 to i32
  %36 = lshr i32 %35, 19
  %37 = and i32 %36, 64
  %38 = or i32 %34, %37
  %39 = tail call fastcc i32 @special_function_p(ptr noundef nonnull %0, i32 noundef %38) #19
  br label %47

40:                                               ; preds = %1
  %41 = and i64 %2, 1048576
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %47, label %43, !prof !413

43:                                               ; preds = %40
  %44 = and i64 %2, 524288
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  br label %47

47:                                               ; preds = %43, %1, %40, %33
  %48 = phi i32 [ %39, %33 ], [ 0, %40 ], [ 0, %1 ], [ %46, %43 ]
  %49 = trunc i64 %2 to i32
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 8
  %52 = or i32 %48, %51
  ret i32 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @call_expr_flags(ptr noundef %0) local_unnamed_addr #0 !prof !414 {
  %2 = tail call ptr @get_callee_fndecl(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !415

4:                                                ; preds = %1
  %5 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %2) #19
  br label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !356
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !356
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12, !prof !416

12:                                               ; preds = %6
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 10
  br i1 %15, label %16, label %20, !prof !417

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !356
  %19 = tail call i32 @flags_from_decl_or_type(ptr noundef %18) #19
  br label %20

20:                                               ; preds = %6, %12, %16, %4
  %21 = phi i32 [ %5, %4 ], [ %19, %16 ], [ 0, %12 ], [ 0, %6 ]
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @shift_return_value(i32 noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 !prof !418 {
  %4 = load i32, ptr %2, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #19
  %9 = icmp ult i32 %8, 53
  br i1 %9, label %12, label %10

10:                                               ; preds = %7, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1863, ptr noundef nonnull @.str.1) #18
  %11 = load i32, ptr %2, align 8
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ %4, %7 ], [ %11, %10 ]
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !356
  %19 = zext i32 %0 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !356
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
  %31 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %28) #18
  %32 = tail call zeroext i8 @force_expand_binop(i32 noundef %15, ptr noundef nonnull %30, ptr noundef nonnull %2, ptr noundef %31, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 2) #18
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1873, ptr noundef nonnull @.str.1) #18
  br label %35

35:                                               ; preds = %23, %34, %12
  %36 = phi i8 [ 0, %12 ], [ 1, %34 ], [ 1, %23 ]
  ret i8 %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !419 !PGOFuncName !420 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !356
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @force_expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_call(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !421 {
  %4 = alloca i8, align 1
  %5 = alloca %struct.args_size, align 8
  %6 = alloca %struct.args_size, align 8
  %7 = alloca %struct.ix86_args, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca %struct.call_expr_arg_iterator_d, align 8
  %17 = alloca %struct.call_expr_arg_iterator_d, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #20
  %22 = load i64, ptr %0, align 8
  %23 = lshr i64 %22, 18
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, ptr %4, align 1, !tbaa !356
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  %26 = load i32, ptr @target_flags, align 4, !tbaa !403
  %27 = and i32 %26, 8196
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33, !prof !422

29:                                               ; preds = %3
  %30 = tail call i32 @ix86_cfun_abi() #18
  %31 = icmp eq i32 %30, 1
  %32 = load i64, ptr %0, align 8
  br label %33

33:                                               ; preds = %29, %3
  %34 = phi i64 [ %22, %3 ], [ %32, %29 ]
  %35 = phi i1 [ true, %3 ], [ %31, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, ptr %9, align 4, !tbaa !403
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  %37 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  %38 = load ptr, ptr @stack_usage_map, align 8, !tbaa !397
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #20
  store ptr null, ptr %13, align 8, !tbaa !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #20
  store i32 0, ptr %14, align 4, !tbaa !403
  %39 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #20
  %40 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %41 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !356
  %43 = trunc i64 %34 to i32
  %44 = lshr i32 %43, 19
  %45 = and i32 %44, 64
  %46 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %0) #18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48, !prof !432

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !356
  %51 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %46) #19
  br label %58

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !356
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !356
  %57 = tail call i32 @flags_from_decl_or_type(ptr noundef %56) #19
  br label %58

58:                                               ; preds = %52, %48
  %59 = phi ptr [ %56, %52 ], [ %46, %48 ]
  %60 = phi i32 [ %57, %52 ], [ %51, %48 ]
  %61 = phi ptr [ %56, %52 ], [ %50, %48 ]
  %62 = or i32 %45, %60
  store i32 %62, ptr %10, align 4, !tbaa !403
  %63 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !356
  %65 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !433
  %66 = tail call ptr %65(ptr noundef %61, i32 noundef 0) #18
  %67 = load i64, ptr %64, align 8
  %68 = trunc i64 %67 to i32
  %69 = and i32 %68, 65535
  %70 = add nsw i32 %69, -15
  %71 = icmp ult i32 %70, 4
  br i1 %71, label %72, label %74, !prof !434

72:                                               ; preds = %58
  %73 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 34, ptr noundef nonnull @.str.15) #18
  br label %74

74:                                               ; preds = %58, %72
  %75 = and i32 %60, 3
  %76 = icmp ne i32 %75, 0
  %77 = and i32 %60, 4
  %78 = icmp eq i32 %77, 0
  %79 = and i1 %76, %78
  br i1 %79, label %80, label %122, !prof !435

80:                                               ; preds = %74
  %81 = icmp ne i32 %2, 0
  %82 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %83 = icmp eq ptr %82, %1
  %84 = select i1 %81, i1 true, i1 %83
  br i1 %84, label %99, label %85, !prof !436

85:                                               ; preds = %80
  %86 = load i64, ptr %64, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 14
  br i1 %88, label %89, label %91, !prof !437

89:                                               ; preds = %85
  %90 = tail call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %96

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  br label %96

96:                                               ; preds = %91, %89
  %97 = phi i32 [ %90, %89 ], [ %95, %91 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %122, !prof !437

99:                                               ; preds = %96, %80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #20
  %100 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %0, ptr noundef nonnull %16) #19
  %101 = icmp eq ptr %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %99, %108
  %103 = phi ptr [ %109, %108 ], [ %100, %99 ]
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 524288
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #20
  br label %122

108:                                              ; preds = %102
  %109 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %16) #19
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %102, !llvm.loop !438

111:                                              ; preds = %108, %99
  %112 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %0, ptr noundef nonnull %16) #19
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %111, %114
  %115 = phi ptr [ %118, %114 ], [ %112, %111 ]
  %116 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !397
  %117 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %115, ptr noundef %116, i32 noundef 0, i32 noundef 0) #19
  %118 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %16) #19
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %114, !llvm.loop !440

120:                                              ; preds = %114, %111
  %121 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !397
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #20
  br label %1371

122:                                              ; preds = %107, %96, %74
  %123 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %59) #18
  br i1 %47, label %127, label %124, !prof !432

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !356
  br label %127

127:                                              ; preds = %122, %124
  %128 = phi ptr [ %126, %124 ], [ %61, %122 ]
  %129 = tail call i32 @ix86_function_type_abi(ptr noundef %128) #18
  %130 = icmp ne i32 %129, 1
  %131 = icmp sgt i32 %123, 0
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %133, label %141, !prof !422

133:                                              ; preds = %127
  %134 = load i32, ptr @target_flags, align 4, !tbaa !403
  %135 = and i32 %134, 8196
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = tail call i32 @ix86_cfun_abi() #18
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  store i32 1, ptr %9, align 4, !tbaa !403
  br label %141

141:                                              ; preds = %140, %137, %133, %127
  %142 = tail call i32 @aggregate_value_p(ptr noundef nonnull %0, ptr noundef %59) #18
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %163, label %144, !prof !441

144:                                              ; preds = %141
  %145 = and i32 %62, -8
  store i32 %145, ptr %10, align 4, !tbaa !403
  %146 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %64) #18
  %147 = icmp eq ptr %1, null
  br i1 %147, label %156, label %148, !prof !442

148:                                              ; preds = %144
  %149 = load i32, ptr %1, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 43
  br i1 %151, label %152, label %156, !prof !443

152:                                              ; preds = %148
  %153 = load i64, ptr %0, align 8
  %154 = and i64 %153, 268435456
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %158, !prof !444

156:                                              ; preds = %152, %148, %144
  %157 = tail call ptr @assign_temp(ptr noundef nonnull %64, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  tail call void @mark_temp_addr_taken(ptr noundef %157) #18
  br label %158

158:                                              ; preds = %152, %156
  %159 = phi ptr [ %157, %156 ], [ %1, %152 ]
  %160 = phi ptr [ null, %156 ], [ %1, %152 ]
  %161 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !356
  br label %163

163:                                              ; preds = %158, %141
  %164 = phi i32 [ %62, %141 ], [ %145, %158 ]
  %165 = phi ptr [ null, %141 ], [ %162, %158 ]
  %166 = phi ptr [ %1, %141 ], [ %160, %158 ]
  %167 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !403
  %168 = zext i32 %167 to i64
  br i1 %47, label %179, label %169, !prof !432

169:                                              ; preds = %163
  %170 = tail call ptr @cgraph_rtl_info(ptr noundef nonnull %46) #18
  %171 = icmp eq ptr %170, null
  br i1 %171, label %179, label %172, !prof !445

172:                                              ; preds = %169
  %173 = load i32, ptr %170, align 4, !tbaa !446
  %174 = icmp ne i32 %173, 0
  %175 = icmp ult i32 %173, %167
  %176 = select i1 %174, i1 %175, i1 false
  %177 = zext i32 %173 to i64
  %178 = select i1 %176, i64 %177, i64 %168, !prof !448
  br label %179

179:                                              ; preds = %172, %169, %163
  %180 = phi i64 [ %168, %163 ], [ %168, %169 ], [ %178, %172 ]
  %181 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !356
  %183 = load i64, ptr %182, align 8
  %184 = trunc i64 %183 to i16
  switch i16 %184, label %185 [
    i16 10, label %186
    i16 12, label %186
  ], !prof !449

185:                                              ; preds = %179
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2140, ptr noundef nonnull @.str.1) #18
  br label %186

186:                                              ; preds = %179, %179, %185
  %187 = getelementptr inbounds %struct.tree_common, ptr %182, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !356
  %189 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !450
  %190 = icmp eq ptr %189, null
  br i1 %190, label %219, label %191, !prof !451

191:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #20
  %192 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %0, ptr noundef nonnull %17) #19
  %193 = icmp eq ptr %192, null
  br i1 %193, label %214, label %194

194:                                              ; preds = %191, %210
  %195 = phi i32 [ %211, %210 ], [ 0, %191 ]
  %196 = phi ptr [ %212, %210 ], [ %192, %191 ]
  %197 = getelementptr inbounds %struct.tree_common, ptr %196, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !356
  %199 = icmp eq ptr %198, null
  br i1 %199, label %210, label %200

200:                                              ; preds = %194
  %201 = load i64, ptr %198, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 13
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !450
  %206 = tail call zeroext i8 %205(ptr noundef nonnull %198) #18
  %207 = icmp ne i8 %206, 0
  %208 = zext i1 %207 to i32
  %209 = add nsw i32 %195, %208
  br label %210

210:                                              ; preds = %204, %200, %194
  %211 = phi i32 [ %195, %200 ], [ %195, %194 ], [ %209, %204 ]
  %212 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %17) #19
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %194, !llvm.loop !452

214:                                              ; preds = %210, %191
  %215 = phi i32 [ 0, %191 ], [ %211, %210 ]
  %216 = getelementptr inbounds %struct.tree_type, ptr %188, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !356
  %218 = tail call fastcc ptr @split_complex_types(ptr noundef %217) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #20
  br label %222

219:                                              ; preds = %186
  %220 = getelementptr inbounds %struct.tree_type, ptr %188, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !356
  br label %222

222:                                              ; preds = %219, %214
  %223 = phi i32 [ %215, %214 ], [ 0, %219 ]
  %224 = phi ptr [ %218, %214 ], [ %221, %219 ]
  %225 = and i32 %164, 32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %232, label %227, !prof !453

227:                                              ; preds = %222
  %228 = load ptr, ptr @cfun, align 8, !tbaa !397
  %229 = getelementptr inbounds %struct.function, ptr %228, i64 0, i32 20
  %230 = load i32, ptr %229, align 8
  %231 = or i32 %230, 524288
  store i32 %231, ptr %229, align 8
  br label %232

232:                                              ; preds = %227, %222
  %233 = icmp eq ptr %165, null
  br i1 %233, label %265, label %234, !prof !441

234:                                              ; preds = %232
  %235 = icmp eq ptr %66, null
  br i1 %235, label %236, label %265, !prof !454

236:                                              ; preds = %234
  %237 = load i32, ptr %165, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 37
  br i1 %239, label %240, label %256, !prof !455

240:                                              ; preds = %236
  %241 = load i32, ptr @target_flags, align 4, !tbaa !403
  %242 = and i32 %241, 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %250, !prof !456

244:                                              ; preds = %240
  %245 = tail call i32 @ix86_cfun_abi() #18
  %246 = icmp eq i32 %245, 1
  %247 = load i32, ptr @stack_arg_under_construction, align 4
  %248 = icmp ne i32 %247, 0
  %249 = select i1 %246, i1 %248, i1 false
  br i1 %249, label %253, label %259, !prof !457

250:                                              ; preds = %240
  %251 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !403
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %259, label %253, !prof !458

253:                                              ; preds = %244, %250
  %254 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !397
  %255 = icmp eq ptr %165, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %253, %236
  %257 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %165, i8 noundef zeroext 0) #18
  %258 = tail call ptr @copy_addr_to_reg(ptr noundef %257) #18
  br label %259

259:                                              ; preds = %244, %250, %253, %256
  %260 = phi ptr [ %258, %256 ], [ %165, %253 ], [ %165, %250 ], [ %165, %244 ]
  %261 = getelementptr inbounds %struct.tree_common, ptr %188, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !356
  %263 = tail call ptr @build_pointer_type(ptr noundef %262) #18
  %264 = tail call ptr @make_tree(ptr noundef %263, ptr noundef %260) #18
  br label %265

265:                                              ; preds = %259, %234, %232
  %266 = phi ptr [ %264, %259 ], [ null, %234 ], [ null, %232 ]
  %267 = phi i1 [ false, %259 ], [ true, %234 ], [ true, %232 ]
  %268 = phi i32 [ 1, %259 ], [ 0, %234 ], [ 0, %232 ]
  %269 = load ptr, ptr %40, align 8, !tbaa !356
  %270 = getelementptr inbounds %struct.tree_int_cst, ptr %269, i64 0, i32 1
  %271 = load i64, ptr %270, align 8, !tbaa !356
  %272 = trunc i64 %271 to i32
  %273 = add i32 %223, -3
  %274 = add i32 %273, %268
  %275 = add i32 %274, %272
  %276 = icmp eq ptr %224, null
  br i1 %276, label %277, label %278, !prof !459

277:                                              ; preds = %265
  call void @init_cumulative_args(ptr noundef nonnull %7, ptr noundef nonnull %188, ptr noundef null, ptr noundef %46) #18
  br label %290

278:                                              ; preds = %265
  %279 = tail call i32 @list_length(ptr noundef nonnull %224) #18
  %280 = add nsw i32 %279, %268
  call void @init_cumulative_args(ptr noundef nonnull %7, ptr noundef nonnull %188, ptr noundef null, ptr noundef %46) #18
  %281 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 8), align 8, !tbaa !460
  %282 = call zeroext i8 %281(ptr noundef nonnull %7) #18
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %290, !prof !461

284:                                              ; preds = %278
  %285 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 9), align 8, !tbaa !462
  %286 = call zeroext i8 %285(ptr noundef nonnull %7) #18
  %287 = icmp eq i8 %286, 0
  %288 = add nsw i32 %280, -1
  %289 = select i1 %287, i32 %288, i32 %275
  br label %290

290:                                              ; preds = %277, %284, %278
  %291 = phi i32 [ %280, %278 ], [ %289, %284 ], [ %275, %277 ]
  %292 = sext i32 %275 to i64
  %293 = mul nsw i64 %292, 184
  %294 = alloca i8, i64 %293, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %294, i8 0, i64 %293, i1 false)
  %295 = load i64, ptr %0, align 8
  %296 = trunc i64 %295 to i32
  %297 = lshr i32 %296, 29
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  call fastcc void @initialize_argument_information(i32 noundef %275, ptr noundef nonnull %294, ptr noundef nonnull %5, i32 noundef %291, ptr noundef nonnull %0, ptr noundef %266, ptr noundef %46, ptr noundef %61, ptr noundef nonnull %7, i32 noundef %123, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %4, i8 noundef zeroext %299) #19
  %300 = getelementptr inbounds %struct.args_size, ptr %5, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !463
  %302 = icmp eq ptr %301, null
  %303 = load i32, ptr %9, align 4
  %304 = select i1 %302, i32 %303, i32 1, !prof !451
  %305 = call fastcc i32 @finalize_must_preallocate(i32 noundef %304, i32 noundef %275, ptr noundef nonnull %294, ptr noundef nonnull %5) #19
  store i32 %305, ptr %9, align 4, !tbaa !403
  br i1 %233, label %329, label %306, !prof !441

306:                                              ; preds = %290
  %307 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !397
  %308 = call i32 @reg_mentioned_p(ptr noundef %307, ptr noundef nonnull %165) #18
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %314, !prof !454

310:                                              ; preds = %306
  %311 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !397
  %312 = call i32 @reg_mentioned_p(ptr noundef %311, ptr noundef nonnull %165) #18
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %329, label %314, !prof !454

314:                                              ; preds = %310, %306
  %315 = load ptr, ptr %300, align 8, !tbaa !463
  %316 = icmp eq ptr %315, null
  br i1 %316, label %317, label %327

317:                                              ; preds = %314
  %318 = load i32, ptr @target_flags, align 4, !tbaa !403
  %319 = and i32 %318, 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %329

321:                                              ; preds = %317
  %322 = call i32 @ix86_cfun_abi() #18
  %323 = icmp ne i32 %322, 1
  %324 = load i64, ptr %5, align 8
  %325 = icmp ne i64 %324, 0
  %326 = select i1 %323, i1 %325, i1 false
  br i1 %326, label %327, label %329

327:                                              ; preds = %321, %314
  %328 = call ptr @copy_to_reg(ptr noundef nonnull %165) #18
  br label %329

329:                                              ; preds = %327, %321, %317, %310, %290
  %330 = phi ptr [ %328, %327 ], [ %165, %317 ], [ %165, %321 ], [ %165, %310 ], [ null, %290 ]
  %331 = load i32, ptr @expand_call.currently_expanding_call, align 4, !tbaa !403
  %332 = add nsw i32 %331, 1
  store i32 %332, ptr @expand_call.currently_expanding_call, align 4, !tbaa !403
  %333 = icmp ne i32 %331, 0
  %334 = load i32, ptr @flag_optimize_sibling_calls, align 4
  %335 = icmp eq i32 %334, 0
  %336 = select i1 %333, i1 true, i1 %335
  %337 = load ptr, ptr %300, align 8
  %338 = icmp ne ptr %337, null
  %339 = select i1 %336, i1 true, i1 %338
  br i1 %339, label %400, label %340, !prof !465

340:                                              ; preds = %329
  %341 = call zeroext i8 @dbg_cnt(i32 noundef 37) #18
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %400, label %343, !prof !466

343:                                              ; preds = %340
  %344 = load i8, ptr %4, align 1, !tbaa !356
  %345 = icmp eq i8 %344, 0
  %346 = icmp ne ptr %330, null
  %347 = select i1 %345, i1 true, i1 %346
  br i1 %347, label %400, label %348, !prof !467

348:                                              ; preds = %343
  %349 = call i32 @ix86_function_type_abi(ptr noundef nonnull %188) #18
  %350 = icmp eq i32 %349, 1
  %351 = load ptr, ptr @current_function_decl, align 8, !tbaa !397
  %352 = getelementptr inbounds %struct.tree_common, ptr %351, i64 0, i32 2
  %353 = load ptr, ptr %352, align 8, !tbaa !356
  %354 = call i32 @ix86_function_type_abi(ptr noundef %353) #18
  %355 = icmp ne i32 %354, 1
  %356 = xor i1 %350, %355
  br i1 %356, label %357, label %400, !prof !468

357:                                              ; preds = %348
  %358 = call i32 @ix86_reg_parm_stack_space(ptr noundef %46) #18
  %359 = icmp eq i32 %123, %358
  br i1 %359, label %360, label %400, !prof !468

360:                                              ; preds = %357
  %361 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 46), align 8, !tbaa !469
  %362 = call zeroext i8 %361(ptr noundef %46, ptr noundef nonnull %0) #18
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %400, label %364, !prof !470

364:                                              ; preds = %360
  %365 = load i32, ptr %10, align 4
  %366 = and i32 %365, 136
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %400, !prof !471

368:                                              ; preds = %364
  %369 = load ptr, ptr %181, align 8, !tbaa !356
  %370 = getelementptr inbounds %struct.tree_common, ptr %369, i64 0, i32 2
  %371 = load ptr, ptr %370, align 8, !tbaa !356
  %372 = load i64, ptr %371, align 8
  %373 = and i64 %372, 524288
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %375, label %400, !prof !471

375:                                              ; preds = %368
  br i1 %47, label %380, label %376, !prof !472

376:                                              ; preds = %375
  %377 = call ptr @decl_function_context(ptr noundef nonnull %46) #18
  %378 = load ptr, ptr @current_function_decl, align 8, !tbaa !397
  %379 = icmp eq ptr %377, %378
  br i1 %379, label %400, label %380, !prof !473

380:                                              ; preds = %376, %375
  %381 = load i64, ptr %5, align 8, !tbaa !474
  %382 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !475
  %383 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !476
  %384 = sub nsw i32 %382, %383
  %385 = sext i32 %384 to i64
  %386 = icmp sgt i64 %381, %385
  br i1 %386, label %400, label %387, !prof !477

387:                                              ; preds = %380
  %388 = trunc i64 %381 to i32
  %389 = call i32 @ix86_return_pops_args(ptr noundef %46, ptr noundef nonnull %188, i32 noundef %388) #18
  %390 = load ptr, ptr @current_function_decl, align 8, !tbaa !397
  %391 = getelementptr inbounds %struct.tree_common, ptr %390, i64 0, i32 2
  %392 = load ptr, ptr %391, align 8, !tbaa !356
  %393 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !475
  %394 = call i32 @ix86_return_pops_args(ptr noundef %390, ptr noundef %392, i32 noundef %393) #18
  %395 = icmp eq i32 %389, %394
  br i1 %395, label %396, label %400, !prof !478

396:                                              ; preds = %387
  %397 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 9), align 8, !tbaa !479
  %398 = call zeroext i8 %397(ptr noundef %46) #18
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %401, !prof !487

400:                                              ; preds = %340, %329, %343, %348, %357, %360, %364, %368, %376, %380, %387, %396
  store i8 0, ptr %4, align 1, !tbaa !356
  br label %465

401:                                              ; preds = %396
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #20
  %402 = load ptr, ptr @current_function_decl, align 8, !tbaa !397
  %403 = getelementptr inbounds %struct.tree_decl_non_common, ptr %402, i64 0, i32 3
  %404 = load ptr, ptr %403, align 8, !tbaa !356
  %405 = getelementptr inbounds %struct.tree_common, ptr %404, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !356
  %407 = load i64, ptr %406, align 8
  %408 = trunc i64 %407 to i32
  %409 = lshr i32 %408, 21
  %410 = and i32 %409, 1
  store i32 %410, ptr %18, align 4, !tbaa !403
  %411 = getelementptr inbounds %struct.tree_decl_common, ptr %404, i64 0, i32 2
  %412 = load i64, ptr %411, align 8
  %413 = trunc i64 %412 to i32
  %414 = and i32 %413, 255
  %415 = getelementptr inbounds %struct.tree_common, ptr %188, i64 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !356
  %417 = load i64, ptr %416, align 8
  %418 = trunc i64 %417 to i32
  %419 = lshr i32 %418, 21
  %420 = and i32 %419, 1
  store i32 %420, ptr %19, align 4, !tbaa !403
  %421 = and i64 %417, 65535
  %422 = icmp eq i64 %421, 14
  br i1 %422, label %423, label %427, !prof !487

423:                                              ; preds = %401
  %424 = call i32 @vector_type_mode(ptr noundef nonnull %416) #18
  %425 = load ptr, ptr %405, align 8, !tbaa !356
  %426 = load ptr, ptr @current_function_decl, align 8, !tbaa !397
  br label %432

427:                                              ; preds = %401
  %428 = getelementptr inbounds %struct.tree_type, ptr %416, i64 0, i32 6
  %429 = load i32, ptr %428, align 4
  %430 = lshr i32 %429, 16
  %431 = and i32 %430, 255
  br label %432

432:                                              ; preds = %427, %423
  %433 = phi ptr [ %426, %423 ], [ %402, %427 ]
  %434 = phi ptr [ %425, %423 ], [ %406, %427 ]
  %435 = phi i32 [ %424, %423 ], [ %431, %427 ]
  %436 = getelementptr inbounds %struct.tree_common, ptr %433, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !356
  %438 = call i32 @promote_function_mode(ptr noundef %434, i32 noundef %414, ptr noundef nonnull %18, ptr noundef %437, i32 noundef 1) #18
  %439 = load ptr, ptr %415, align 8, !tbaa !356
  %440 = call i32 @promote_function_mode(ptr noundef %439, i32 noundef %435, ptr noundef nonnull %19, ptr noundef nonnull %188, i32 noundef 1) #18
  %441 = icmp eq i32 %414, 0
  br i1 %441, label %461, label %442, !prof !488

442:                                              ; preds = %432
  %443 = icmp eq i32 %438, %440
  br i1 %443, label %444, label %460, !prof !489

444:                                              ; preds = %442
  %445 = icmp eq i32 %414, %438
  %446 = icmp eq i32 %435, %438
  %447 = select i1 %445, i1 %446, i1 false
  br i1 %447, label %461, label %448, !prof !490

448:                                              ; preds = %444
  %449 = load i32, ptr %18, align 4, !tbaa !403
  %450 = load i32, ptr %19, align 4, !tbaa !403
  %451 = icmp eq i32 %449, %450
  br i1 %451, label %452, label %460

452:                                              ; preds = %448
  %453 = and i64 %412, 255
  %454 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %453
  %455 = load i8, ptr %454, align 1, !tbaa !356
  %456 = zext i32 %435 to i64
  %457 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %456
  %458 = load i8, ptr %457, align 1, !tbaa !356
  %459 = icmp ult i8 %455, %458
  br i1 %459, label %460, label %461

460:                                              ; preds = %452, %448, %442
  store i8 0, ptr %4, align 1, !tbaa !356
  br label %461

461:                                              ; preds = %444, %460, %452, %432
  %462 = phi i8 [ %344, %444 ], [ 0, %460 ], [ %344, %452 ], [ %344, %432 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #20
  %463 = icmp eq i8 %462, 0
  %464 = zext i1 %463 to i32
  br label %465

465:                                              ; preds = %400, %461
  %466 = phi i32 [ 1, %400 ], [ %464, %461 ]
  %467 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !491
  %468 = zext i32 %467 to i64
  %469 = icmp ugt i64 %180, %468
  br i1 %469, label %470, label %472, !prof !492

470:                                              ; preds = %465
  %471 = trunc i64 %180 to i32
  store i32 %471, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !491
  br label %472

472:                                              ; preds = %465, %470
  %473 = phi i32 [ %471, %470 ], [ %467, %465 ]
  %474 = phi i64 [ %180, %470 ], [ %468, %465 ]
  %475 = lshr i64 %474, 3
  %476 = getelementptr inbounds %struct.args_size, ptr %6, i64 0, i32 1
  %477 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %478 = icmp eq i32 %37, 0
  %479 = sext i32 %37 to i64
  %480 = icmp sgt i32 %275, 0
  %481 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %482 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %483 = icmp slt i32 %275, 1
  %484 = icmp ne i32 %2, 0
  %485 = load i32, ptr %10, align 4
  %486 = zext nneg i32 %275 to i64
  %487 = zext nneg i32 %275 to i64
  %488 = zext nneg i32 %275 to i64
  %489 = zext nneg i32 %275 to i64
  %490 = zext nneg i32 %275 to i64
  br label %492

491:                                              ; preds = %1355
  br i1 %502, label %492, label %1364, !prof !493, !llvm.loop !494

492:                                              ; preds = %472, %491
  %493 = phi i32 [ %485, %472 ], [ %1312, %491 ]
  %494 = phi ptr [ %166, %472 ], [ %1261, %491 ]
  %495 = phi ptr [ null, %472 ], [ %1357, %491 ]
  %496 = phi i32 [ %466, %472 ], [ 1, %491 ]
  %497 = phi ptr [ %330, %472 ], [ %886, %491 ]
  %498 = phi ptr [ null, %472 ], [ %773, %491 ]
  %499 = phi ptr [ null, %472 ], [ %694, %491 ]
  %500 = phi i32 [ 0, %472 ], [ %693, %491 ]
  %501 = phi i32 [ 0, %472 ], [ %692, %491 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #20
  store i32 0, ptr %20, align 4, !tbaa !403
  %502 = icmp eq i32 %496, 0
  %503 = load i32, ptr @x_rtl, align 8
  %504 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8
  %505 = icmp ne i32 %496, 0
  %506 = and i32 %493, -257
  %507 = select i1 %505, i32 0, i32 256, !prof !495
  %508 = or disjoint i32 %506, %507
  store i32 %508, ptr %10, align 4, !tbaa !403
  store ptr null, ptr %15, align 8, !tbaa !397
  call void @start_sequence() #18
  %509 = load i32, ptr @x_rtl, align 8, !tbaa !496
  %510 = icmp sgt i32 %509, 31
  br i1 %510, label %525, label %511, !prof !466

511:                                              ; preds = %492
  %512 = icmp sgt i32 %509, 0
  br i1 %512, label %513, label %523, !prof !466

513:                                              ; preds = %511
  %514 = and i32 %493, 32
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %525

516:                                              ; preds = %513
  %517 = load i32, ptr @flag_exceptions, align 4, !tbaa !403
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %523, label %519

519:                                              ; preds = %516
  %520 = and i32 %493, 64
  %521 = icmp eq i32 %520, 0
  %522 = or i1 %502, %521
  br i1 %522, label %525, label %526, !prof !497

523:                                              ; preds = %511, %516
  br i1 %502, label %524, label %526, !prof !498

524:                                              ; preds = %523
  call void @do_pending_stack_adjust() #18
  br label %530

525:                                              ; preds = %492, %513, %519
  call void @do_pending_stack_adjust() #18
  br i1 %505, label %526, label %530, !prof !499

526:                                              ; preds = %523, %519, %525
  call fastcc void @precompute_arguments(i32 noundef %275, ptr noundef nonnull %294) #19
  %527 = and i32 %493, 16
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %534, label %529, !prof !500

529:                                              ; preds = %526
  call void @start_sequence() #18
  br label %534

530:                                              ; preds = %524, %525
  %531 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8
  %532 = icmp eq ptr %531, null
  br i1 %532, label %534, label %533, !prof !501

533:                                              ; preds = %530
  call void @stack_protect_epilogue() #18
  br label %534

534:                                              ; preds = %526, %529, %533, %530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !502
  %535 = select i1 %502, i32 0, i32 %473, !prof !498
  %536 = call fastcc i32 @compute_argument_block_size(i32 noundef %123, ptr noundef nonnull %6, ptr noundef %46, ptr noundef %61, i32 noundef %535) #19
  %537 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %538 = load i32, ptr @x_rtl, align 8, !tbaa !496
  %539 = sub nsw i32 %537, %538
  br i1 %502, label %540, label %548, !prof !498

540:                                              ; preds = %534
  %541 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !504
  %542 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !476
  %543 = sext i32 %542 to i64
  %544 = call ptr @plus_constant(ptr noundef %541, i64 noundef %543) #18
  %545 = load i64, ptr %5, align 8, !tbaa !474
  %546 = trunc i64 %545 to i32
  %547 = call ptr @sbitmap_alloc(i32 noundef %546) #18
  store ptr %547, ptr @stored_args_map, align 8, !tbaa !397
  call void @sbitmap_zero(ptr noundef %547) #18
  br label %634

548:                                              ; preds = %534
  %549 = load ptr, ptr %476, align 8, !tbaa !463
  %550 = icmp eq ptr %549, null
  br i1 %550, label %568, label %551, !prof !505

551:                                              ; preds = %548
  %552 = load ptr, ptr %13, align 8, !tbaa !397
  %553 = icmp eq ptr %552, null
  br i1 %553, label %554, label %558

554:                                              ; preds = %551
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %13, ptr noundef null) #18
  %555 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %556 = load i32, ptr @x_rtl, align 8, !tbaa !496
  store i32 %556, ptr %14, align 4, !tbaa !403
  store i32 0, ptr @x_rtl, align 8, !tbaa !496
  %557 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !403
  store i32 0, ptr @stack_arg_under_construction, align 4, !tbaa !403
  br label %558

558:                                              ; preds = %554, %551
  %559 = phi i32 [ %555, %554 ], [ %501, %551 ]
  %560 = phi i32 [ %557, %554 ], [ %500, %551 ]
  %561 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !397
  %562 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %561, ptr noundef nonnull %549) #18
  %563 = load i64, ptr %6, align 8, !tbaa !474
  %564 = call ptr @size_int_kind(i64 noundef %563, i32 noundef 1) #18
  %565 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %562, ptr noundef %564) #18
  %566 = call fastcc ptr @expand_normal(ptr noundef %565) #19
  %567 = call ptr @push_block(ptr noundef %566, i32 noundef 0, i32 noundef 0) #18
  br label %634

568:                                              ; preds = %548
  %569 = load i64, ptr %6, align 8, !tbaa !474
  %570 = trunc i64 %569 to i32
  %571 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !506
  %572 = icmp slt i32 %571, %570
  br i1 %572, label %573, label %574, !prof !507

573:                                              ; preds = %568
  store i32 %570, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !506
  br label %574

574:                                              ; preds = %573, %568
  %575 = load i32, ptr %9, align 4, !tbaa !403
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %634, label %577, !prof !508

577:                                              ; preds = %574
  %578 = load i32, ptr @target_flags, align 4, !tbaa !403
  %579 = and i32 %578, 4
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %584, !prof !508

581:                                              ; preds = %577
  %582 = call i32 @ix86_cfun_abi() #18
  %583 = icmp eq i32 %582, 1
  br i1 %583, label %584, label %611

584:                                              ; preds = %581, %577
  br i1 %47, label %587, label %585, !prof !509

585:                                              ; preds = %584
  %586 = load ptr, ptr %477, align 8, !tbaa !356
  br label %587

587:                                              ; preds = %584, %585
  %588 = phi ptr [ %586, %585 ], [ %61, %584 ]
  %589 = call i32 @ix86_function_type_abi(ptr noundef %588) #18
  %590 = icmp eq i32 %589, 1
  %591 = select i1 %590, i32 0, i32 %123, !prof !508
  %592 = add nsw i32 %591, %570
  %593 = call i32 @llvm.smax.i32(i32 %37, i32 %592)
  store i32 %593, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  %594 = icmp eq ptr %499, null
  br i1 %594, label %597, label %595, !prof !505

595:                                              ; preds = %587
  call void @free(ptr noundef nonnull %499) #19
  %596 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  br label %597

597:                                              ; preds = %595, %587
  %598 = phi i32 [ %596, %595 ], [ %593, %587 ]
  %599 = sext i32 %598 to i64
  %600 = call ptr @xmalloc(i64 noundef %599) #18
  store ptr %600, ptr @stack_usage_map, align 8, !tbaa !397
  br i1 %478, label %602, label %601, !prof !505

601:                                              ; preds = %597
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %600, ptr align 1 %38, i64 %479, i1 false)
  br label %602

602:                                              ; preds = %601, %597
  %603 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  %604 = icmp eq i32 %37, %603
  br i1 %604, label %609, label %605, !prof !510

605:                                              ; preds = %602
  %606 = getelementptr inbounds i8, ptr %600, i64 %479
  %607 = sub nsw i32 %603, %37
  %608 = sext i32 %607 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %606, i8 0, i64 %608, i1 false)
  br label %609

609:                                              ; preds = %605, %602
  %610 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !397
  br label %634

611:                                              ; preds = %581
  %612 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %622

614:                                              ; preds = %611
  %615 = trunc i64 %475 to i32
  %616 = call fastcc i32 @combine_pending_stack_adjustment_and_call(i32 noundef %536, ptr noundef nonnull %6, i32 noundef %615) #19
  %617 = sub nsw i32 %536, %616
  %618 = icmp slt i32 %617, 0
  br i1 %618, label %619, label %621

619:                                              ; preds = %614
  %620 = sub nsw i32 0, %617
  store i32 %620, ptr @x_rtl, align 8, !tbaa !496
  call void @do_pending_stack_adjust() #18
  br label %625

621:                                              ; preds = %614
  store i32 0, ptr @x_rtl, align 8, !tbaa !496
  br label %622

622:                                              ; preds = %621, %611
  %623 = phi i32 [ %617, %621 ], [ %570, %611 ]
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %627

625:                                              ; preds = %619, %622
  %626 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !397
  br label %631

627:                                              ; preds = %622
  %628 = sext i32 %623 to i64
  %629 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %628) #18
  %630 = call ptr @push_block(ptr noundef %629, i32 noundef 0, i32 noundef 0) #18
  br label %631

631:                                              ; preds = %627, %625
  %632 = phi ptr [ %626, %625 ], [ %630, %627 ]
  %633 = call ptr @copy_to_reg(ptr noundef %632) #18
  br label %634

634:                                              ; preds = %574, %631, %609, %558, %540
  %635 = phi i32 [ %501, %540 ], [ %559, %558 ], [ %501, %609 ], [ %501, %631 ], [ %501, %574 ]
  %636 = phi i32 [ %500, %540 ], [ %560, %558 ], [ %500, %609 ], [ %500, %631 ], [ %500, %574 ]
  %637 = phi ptr [ %499, %540 ], [ %499, %558 ], [ %600, %609 ], [ %499, %631 ], [ %499, %574 ]
  %638 = phi ptr [ %544, %540 ], [ %567, %558 ], [ %610, %609 ], [ %633, %631 ], [ null, %574 ]
  %639 = load i32, ptr @target_flags, align 4, !tbaa !403
  %640 = and i32 %639, 4
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %642, label %645, !prof !466

642:                                              ; preds = %634
  %643 = call i32 @ix86_cfun_abi() #18
  %644 = icmp eq i32 %643, 1
  br i1 %644, label %645, label %691

645:                                              ; preds = %642, %634
  %646 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !403
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %677, label %648, !prof !451

648:                                              ; preds = %645
  %649 = load i64, ptr %6, align 8, !tbaa !474
  br i1 %47, label %652, label %650

650:                                              ; preds = %648
  %651 = load ptr, ptr %477, align 8, !tbaa !356
  br label %652

652:                                              ; preds = %648, %650
  %653 = phi ptr [ %651, %650 ], [ %61, %648 ]
  %654 = call i32 @ix86_function_type_abi(ptr noundef %653) #18
  %655 = icmp eq i32 %654, 1
  %656 = select i1 %655, i32 0, i32 %123
  %657 = sext i32 %656 to i64
  %658 = add nsw i64 %649, %657
  %659 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %658) #18
  %660 = load ptr, ptr %13, align 8, !tbaa !397
  %661 = icmp eq ptr %660, null
  br i1 %661, label %662, label %672

662:                                              ; preds = %652
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %13, ptr noundef null) #18
  %663 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %664 = load i32, ptr @x_rtl, align 8, !tbaa !496
  store i32 %664, ptr %14, align 4, !tbaa !403
  store i32 0, ptr @x_rtl, align 8, !tbaa !496
  %665 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !403
  store i32 0, ptr @stack_arg_under_construction, align 4, !tbaa !403
  %666 = icmp eq ptr %637, null
  br i1 %666, label %668, label %667

667:                                              ; preds = %662
  call void @free(ptr noundef nonnull %637) #19
  br label %668

668:                                              ; preds = %667, %662
  %669 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  %670 = sext i32 %669 to i64
  %671 = call ptr @xcalloc(i64 noundef %670, i64 noundef 1) #18
  store ptr %671, ptr @stack_usage_map, align 8, !tbaa !397
  store i32 0, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  br label %672

672:                                              ; preds = %668, %652
  %673 = phi i32 [ %663, %668 ], [ %635, %652 ]
  %674 = phi i32 [ %665, %668 ], [ %636, %652 ]
  %675 = phi ptr [ %671, %668 ], [ %637, %652 ]
  %676 = call ptr @allocate_dynamic_stack_space(ptr noundef %659, ptr noundef null, i32 noundef 8) #18
  br label %677

677:                                              ; preds = %672, %645
  %678 = phi i32 [ %673, %672 ], [ %635, %645 ]
  %679 = phi i32 [ %674, %672 ], [ %636, %645 ]
  %680 = phi ptr [ %675, %672 ], [ %637, %645 ]
  br i1 %480, label %684, label %691, !prof !493

681:                                              ; preds = %684
  %682 = add nuw nsw i64 %685, 1
  %683 = icmp eq i64 %682, %486
  br i1 %683, label %691, label %684, !prof !511, !llvm.loop !512

684:                                              ; preds = %677, %681
  %685 = phi i64 [ %682, %681 ], [ 0, %677 ]
  %686 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %685, i32 9
  %687 = load i32, ptr %686, align 8, !tbaa !513
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %681, label %689, !prof !516

689:                                              ; preds = %684
  %690 = call ptr @copy_addr_to_reg(ptr noundef %638) #18
  br label %691

691:                                              ; preds = %681, %677, %689, %642
  %692 = phi i32 [ %678, %689 ], [ %635, %642 ], [ %678, %677 ], [ %678, %681 ]
  %693 = phi i32 [ %679, %689 ], [ %636, %642 ], [ %679, %677 ], [ %679, %681 ]
  %694 = phi ptr [ %680, %689 ], [ %637, %642 ], [ %680, %677 ], [ %680, %681 ]
  %695 = phi ptr [ %690, %689 ], [ %638, %642 ], [ %638, %677 ], [ %638, %681 ]
  call fastcc void @compute_argument_addresses(ptr noundef nonnull %294, ptr noundef %695, i32 noundef %275) #19
  %696 = icmp eq ptr %695, null
  br i1 %696, label %697, label %713, !prof !466

697:                                              ; preds = %691
  %698 = load i64, ptr %6, align 8, !tbaa !474
  %699 = sext i32 %536 to i64
  %700 = icmp eq i64 %698, %699
  br i1 %700, label %713, label %701

701:                                              ; preds = %697
  %702 = load i32, ptr @x_rtl, align 8, !tbaa !496
  %703 = icmp eq i32 %702, 0
  %704 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4
  %705 = icmp ne i32 %704, 0
  %706 = select i1 %703, i1 true, i1 %705
  br i1 %706, label %710, label %707

707:                                              ; preds = %701
  %708 = trunc i64 %475 to i32
  %709 = call fastcc i32 @combine_pending_stack_adjustment_and_call(i32 noundef %536, ptr noundef nonnull %6, i32 noundef %708) #19
  store i32 %709, ptr @x_rtl, align 8, !tbaa !496
  call void @do_pending_stack_adjust() #18
  br label %713

710:                                              ; preds = %701
  %711 = sub nsw i64 %698, %699
  %712 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %711) #18
  call void @anti_adjust_stack(ptr noundef %712) #18
  br label %713

713:                                              ; preds = %707, %710, %697, %691
  %714 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %715 = add nsw i32 %714, 1
  store i32 %715, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %716 = call fastcc ptr @rtx_for_function_call(ptr noundef %46, ptr noundef %42) #19
  %717 = load i64, ptr %64, align 8
  %718 = and i64 %717, 65535
  %719 = icmp eq i64 %718, 14
  br i1 %719, label %720, label %722, !prof !466

720:                                              ; preds = %713
  %721 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %726

722:                                              ; preds = %713
  %723 = load i32, ptr %481, align 4
  %724 = lshr i32 %723, 16
  %725 = and i32 %724, 255
  br label %726

726:                                              ; preds = %722, %720
  %727 = phi i32 [ %721, %720 ], [ %725, %722 ]
  %728 = icmp eq i32 %727, 0
  %729 = icmp ne ptr %497, null
  %730 = select i1 %728, i1 true, i1 %729
  br i1 %730, label %754, label %731, !prof !517

731:                                              ; preds = %726
  %732 = xor i32 %496, 1
  %733 = call ptr @hard_function_value(ptr noundef nonnull %64, ptr noundef %46, ptr noundef %61, i32 noundef %732) #18
  %734 = load i32, ptr %733, align 8
  %735 = and i32 %734, 65535
  %736 = icmp eq i32 %735, 15
  br i1 %736, label %737, label %754, !prof !518

737:                                              ; preds = %731
  %738 = getelementptr inbounds %struct.rtx_def, ptr %733, i64 0, i32 1
  %739 = load ptr, ptr %738, align 8, !tbaa !356
  %740 = getelementptr inbounds %struct.rtvec_def, ptr %739, i64 0, i32 1
  %741 = load ptr, ptr %740, align 8, !tbaa !397
  %742 = getelementptr inbounds %struct.rtx_def, ptr %741, i64 0, i32 1, i32 0, i32 0, i64 1
  %743 = load ptr, ptr %742, align 8, !tbaa !356
  %744 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !397
  %745 = icmp eq ptr %743, %744
  br i1 %745, label %746, label %754

746:                                              ; preds = %737
  %747 = getelementptr inbounds %struct.rtx_def, ptr %741, i64 0, i32 1
  %748 = load ptr, ptr %747, align 8, !tbaa !356
  %749 = load i32, ptr %748, align 8
  %750 = xor i32 %749, %734
  %751 = and i32 %750, 16711680
  %752 = icmp eq i32 %751, 0
  %753 = select i1 %752, ptr %748, ptr %733
  br label %754

754:                                              ; preds = %746, %737, %731, %726
  %755 = phi ptr [ null, %726 ], [ %733, %731 ], [ %733, %737 ], [ %753, %746 ]
  call fastcc void @precompute_register_parameters(i32 noundef %275, ptr noundef nonnull %294, ptr noundef nonnull %8) #19
  %756 = load ptr, ptr %482, align 8, !tbaa !356
  %757 = icmp eq ptr %756, null
  br i1 %757, label %760, label %758, !prof !451

758:                                              ; preds = %754
  %759 = call fastcc ptr @expand_normal(ptr noundef nonnull %756) #19
  br label %760

760:                                              ; preds = %754, %758
  %761 = phi ptr [ %759, %758 ], [ null, %754 ]
  %762 = load i32, ptr @target_flags, align 4, !tbaa !403
  %763 = and i32 %762, 4
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %769, !prof !466

765:                                              ; preds = %760
  %766 = call i32 @ix86_cfun_abi() #18
  %767 = icmp eq i32 %766, 1
  %768 = and i1 %505, %767
  br i1 %768, label %770, label %772, !prof !519

769:                                              ; preds = %760
  br i1 %505, label %770, label %772, !prof !495

770:                                              ; preds = %765, %769
  %771 = call fastcc ptr @save_fixed_argument_area(i32 noundef %123, ptr noundef %695, ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  br label %772

772:                                              ; preds = %770, %769, %765
  %773 = phi ptr [ %771, %770 ], [ %498, %769 ], [ %498, %765 ]
  br i1 %480, label %774, label %852, !prof !493

774:                                              ; preds = %772, %819
  %775 = phi i64 [ %820, %819 ], [ 0, %772 ]
  %776 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %775
  %777 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %775, i32 4
  %778 = load ptr, ptr %777, align 8, !tbaa !520
  %779 = icmp eq ptr %778, null
  br i1 %779, label %784, label %780, !prof !521

780:                                              ; preds = %774
  %781 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %775, i32 9
  %782 = load i32, ptr %781, align 8, !tbaa !513
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %797, label %784, !prof !522

784:                                              ; preds = %780, %774
  %785 = call ptr @get_last_insn() #18
  %786 = load i32, ptr %10, align 4, !tbaa !403
  %787 = load ptr, ptr %476, align 8, !tbaa !463
  %788 = icmp ne ptr %787, null
  %789 = zext i1 %788 to i32
  %790 = call fastcc i32 @store_one_arg(ptr noundef nonnull %776, ptr noundef %695, i32 noundef %786, i32 noundef %789, i32 noundef %123) #19
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %792, label %796, !prof !523

792:                                              ; preds = %784
  br i1 %502, label %793, label %797, !prof !524

793:                                              ; preds = %792
  %794 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %785, ptr noundef nonnull %776, i32 noundef 1) #19, !range !525
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %797, label %796, !prof !526

796:                                              ; preds = %793, %784
  store i32 1, ptr %20, align 4, !tbaa !403
  br label %797

797:                                              ; preds = %792, %793, %796, %780
  %798 = load i32, ptr %10, align 4, !tbaa !403
  %799 = and i32 %798, 1
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %811, !prof !527

801:                                              ; preds = %797
  %802 = and i32 %798, 2
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %819, label %804, !prof !528

804:                                              ; preds = %801
  %805 = load i32, ptr @target_flags, align 4, !tbaa !403
  %806 = and i32 %805, 4
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %808, label %811, !prof !529

808:                                              ; preds = %804
  %809 = call i32 @ix86_cfun_abi() #18
  %810 = icmp eq i32 %809, 1
  br i1 %810, label %811, label %819

811:                                              ; preds = %808, %804, %797
  %812 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %775, i32 11
  %813 = load ptr, ptr %812, align 8, !tbaa !530
  %814 = icmp eq ptr %813, null
  br i1 %814, label %819, label %815, !prof !531

815:                                              ; preds = %811
  %816 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %813) #18
  %817 = load ptr, ptr %15, align 8, !tbaa !397
  %818 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %816, ptr noundef %817) #18
  store ptr %818, ptr %15, align 8, !tbaa !397
  br label %819

819:                                              ; preds = %801, %808, %811, %815
  %820 = add nuw nsw i64 %775, 1
  %821 = icmp eq i64 %820, %487
  br i1 %821, label %822, label %774, !prof !511, !llvm.loop !532

822:                                              ; preds = %819
  %823 = load i32, ptr %8, align 4, !tbaa !403
  %824 = icmp eq i32 %823, 0
  %825 = select i1 %824, i1 true, i1 %483
  br i1 %825, label %852, label %826, !prof !533

826:                                              ; preds = %822, %849
  %827 = phi i64 [ %850, %849 ], [ 0, %822 ]
  %828 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %827
  %829 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %827, i32 8
  %830 = load i32, ptr %829, align 4, !tbaa !534
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %849, label %832, !prof !535

832:                                              ; preds = %826
  %833 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %827, i32 9
  %834 = load i32, ptr %833, align 8, !tbaa !513
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %836, label %849

836:                                              ; preds = %832
  %837 = call ptr @get_last_insn() #18
  %838 = load i32, ptr %10, align 4, !tbaa !403
  %839 = load ptr, ptr %476, align 8, !tbaa !463
  %840 = icmp ne ptr %839, null
  %841 = zext i1 %840 to i32
  %842 = call fastcc i32 @store_one_arg(ptr noundef nonnull %828, ptr noundef %695, i32 noundef %838, i32 noundef %841, i32 noundef %123) #19
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %844, label %848

844:                                              ; preds = %836
  br i1 %502, label %845, label %849

845:                                              ; preds = %844
  %846 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %837, ptr noundef nonnull %828, i32 noundef 1) #19, !range !525
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %849, label %848

848:                                              ; preds = %845, %836
  store i32 1, ptr %20, align 4, !tbaa !403
  br label %849

849:                                              ; preds = %844, %845, %848, %826, %832
  %850 = add nuw nsw i64 %827, 1
  %851 = icmp eq i64 %850, %488
  br i1 %851, label %852, label %826, !prof !536, !llvm.loop !537

852:                                              ; preds = %849, %772, %822
  br i1 %47, label %855, label %853, !prof !432

853:                                              ; preds = %852
  %854 = load ptr, ptr %477, align 8, !tbaa !356
  br label %855

855:                                              ; preds = %852, %853
  %856 = phi ptr [ %854, %853 ], [ %61, %852 ]
  %857 = call i32 @ix86_function_type_abi(ptr noundef %856) #18
  %858 = icmp eq i32 %857, 1
  br i1 %858, label %859, label %873, !prof !466

859:                                              ; preds = %855
  %860 = load i32, ptr @target_flags, align 4, !tbaa !403
  %861 = and i32 %860, 4
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %863, label %873

863:                                              ; preds = %859
  %864 = call i32 @ix86_cfun_abi() #18
  %865 = icmp ne i32 %864, 1
  %866 = load i32, ptr %9, align 4
  %867 = icmp eq i32 %866, 0
  %868 = select i1 %865, i1 %867, i1 false
  %869 = select i1 %868, i1 %131, i1 false
  br i1 %869, label %870, label %873

870:                                              ; preds = %863
  %871 = zext nneg i32 %123 to i64
  %872 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %871) #18
  call void @anti_adjust_stack(ptr noundef %872) #18
  br label %873

873:                                              ; preds = %870, %863, %859, %855
  %874 = select i1 %505, i1 %729, i1 false
  br i1 %874, label %875, label %885, !prof !538

875:                                              ; preds = %873
  br i1 %267, label %876, label %885, !prof !442

876:                                              ; preds = %875
  %877 = call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %497, i8 noundef zeroext 0) #18
  %878 = call ptr @force_operand(ptr noundef %877, ptr noundef null) #18
  %879 = call ptr @force_reg(i32 noundef 16, ptr noundef %878) #18
  %880 = call ptr @emit_move_insn(ptr noundef %66, ptr noundef %879) #18
  %881 = load i32, ptr %66, align 8
  %882 = and i32 %881, 65535
  %883 = icmp eq i32 %882, 37
  br i1 %883, label %884, label %885

884:                                              ; preds = %876
  call void @use_reg(ptr noundef nonnull %15, ptr noundef nonnull %66) #18
  br label %885

885:                                              ; preds = %876, %884, %875, %873
  %886 = phi ptr [ %497, %875 ], [ %877, %884 ], [ %877, %876 ], [ %497, %873 ]
  %887 = call ptr @get_last_insn() #18
  %888 = load i32, ptr %8, align 4, !tbaa !403
  %889 = xor i32 %496, 1
  %890 = call ptr @prepare_call_address(ptr noundef %46, ptr noundef %716, ptr noundef %761, ptr noundef nonnull %15, i32 noundef %888, i32 poison) #19
  %891 = load i32, ptr %10, align 4, !tbaa !403
  call fastcc void @load_register_parameters(ptr noundef nonnull %294, i32 noundef %275, ptr noundef nonnull %15, i32 noundef %891, i32 noundef %889, ptr noundef nonnull %20) #19
  %892 = call ptr @get_last_insn() #18
  %893 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !397
  %894 = call ptr @function_arg(ptr noundef nonnull %7, i32 noundef 0, ptr noundef %893, i32 noundef 1) #18
  br i1 %505, label %895, label %901, !prof !495

895:                                              ; preds = %885
  %896 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %897 = sext i32 %896 to i64
  %898 = urem i64 %897, %475
  %899 = icmp eq i64 %898, 0
  br i1 %899, label %901, label %900, !prof !505

900:                                              ; preds = %895
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2840, ptr noundef nonnull @.str.1) #18
  br label %901

901:                                              ; preds = %885, %895, %900
  %902 = sext i32 %536 to i64
  %903 = load i64, ptr %6, align 8, !tbaa !474
  %904 = load ptr, ptr %15, align 8, !tbaa !397
  call fastcc void @emit_call_1(ptr noundef %890, ptr noundef nonnull %0, ptr noundef %46, ptr noundef %188, i64 noundef %902, i64 noundef %903, ptr noundef %894, ptr noundef %755, i32 noundef %39, ptr noundef %904, i32 noundef %891) #19
  br i1 %502, label %905, label %909, !prof !498

905:                                              ; preds = %901
  %906 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %887, ptr noundef null, i32 noundef 0) #19, !range !525
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %909, label %908, !prof !478

908:                                              ; preds = %905
  store i32 1, ptr %20, align 4, !tbaa !403
  br label %909

909:                                              ; preds = %908, %905, %901
  %910 = icmp eq ptr %886, null
  br i1 %910, label %911, label %957, !prof !539

911:                                              ; preds = %909
  %912 = load i64, ptr %64, align 8
  %913 = and i64 %912, 65535
  %914 = icmp eq i64 %913, 14
  br i1 %914, label %915, label %917, !prof !540

915:                                              ; preds = %911
  %916 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %921

917:                                              ; preds = %911
  %918 = load i32, ptr %481, align 4
  %919 = lshr i32 %918, 16
  %920 = and i32 %919, 255
  br label %921

921:                                              ; preds = %917, %915
  %922 = phi i32 [ %916, %915 ], [ %920, %917 ]
  %923 = icmp eq i32 %922, 1
  br i1 %923, label %957, label %924, !prof !540

924:                                              ; preds = %921
  %925 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !541
  %926 = call zeroext i8 %925(ptr noundef nonnull %64) #18
  %927 = icmp eq i8 %926, 0
  br i1 %927, label %957, label %928, !prof !542

928:                                              ; preds = %924
  %929 = load i64, ptr %64, align 8
  %930 = and i64 %929, 65535
  %931 = icmp eq i64 %930, 14
  br i1 %931, label %932, label %934

932:                                              ; preds = %928
  %933 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %938

934:                                              ; preds = %928
  %935 = load i32, ptr %481, align 4
  %936 = lshr i32 %935, 16
  %937 = and i32 %936, 255
  br label %938

938:                                              ; preds = %934, %932
  %939 = phi i32 [ %933, %932 ], [ %937, %934 ]
  %940 = call zeroext i8 @shift_return_value(i32 noundef %939, i8 noundef zeroext 0, ptr noundef %755) #19, !range !385
  %941 = icmp eq i8 %940, 0
  br i1 %941, label %943, label %942

942:                                              ; preds = %938
  store i32 1, ptr %20, align 4, !tbaa !403
  br label %943

943:                                              ; preds = %942, %938
  %944 = load i64, ptr %64, align 8
  %945 = and i64 %944, 65535
  %946 = icmp eq i64 %945, 14
  br i1 %946, label %947, label %949

947:                                              ; preds = %943
  %948 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %953

949:                                              ; preds = %943
  %950 = load i32, ptr %481, align 4
  %951 = lshr i32 %950, 16
  %952 = and i32 %951, 255
  br label %953

953:                                              ; preds = %949, %947
  %954 = phi i32 [ %948, %947 ], [ %952, %949 ]
  %955 = call fastcc i32 @rhs_regno(ptr noundef %755) #19
  %956 = call ptr @gen_rtx_REG(i32 noundef %954, i32 noundef %955) #18
  br label %957

957:                                              ; preds = %953, %924, %921, %909
  %958 = phi ptr [ %755, %909 ], [ %956, %953 ], [ %755, %924 ], [ %755, %921 ]
  br i1 %505, label %959, label %986, !prof !495

959:                                              ; preds = %957
  %960 = and i32 %891, 16
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %981, label %962, !prof !500

962:                                              ; preds = %959
  %963 = load i32, ptr %958, align 8
  %964 = lshr i32 %963, 16
  %965 = and i32 %964, 255
  %966 = call ptr @gen_reg_rtx(i32 noundef %965) #18
  %967 = load i64, ptr %64, align 8
  %968 = and i64 %967, 65535
  %969 = icmp eq i64 %968, 10
  br i1 %969, label %970, label %975, !prof !543

970:                                              ; preds = %962
  %971 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !403
  %972 = and i32 %971, 32
  %973 = icmp eq i32 %972, 0
  %974 = select i1 %973, i32 128, i32 256
  call void @mark_reg_pointer(ptr noundef %966, i32 noundef %974) #18
  br label %975

975:                                              ; preds = %970, %962
  %976 = call ptr @emit_move_insn(ptr noundef %966, ptr noundef nonnull %958) #18
  %977 = call ptr @get_last_insn() #18
  call void @add_reg_note(ptr noundef %977, i32 noundef 15, ptr noundef %966) #18
  %978 = call ptr @get_insns() #18
  call void @end_sequence() #18
  %979 = call ptr @emit_insn(ptr noundef %978) #18
  %980 = load i32, ptr %10, align 4, !tbaa !403
  br label %981

981:                                              ; preds = %975, %959
  %982 = phi i32 [ %980, %975 ], [ %891, %959 ]
  %983 = phi ptr [ %966, %975 ], [ %958, %959 ]
  %984 = and i32 %982, 8
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1008, label %986, !prof !544

986:                                              ; preds = %957, %981
  %987 = phi ptr [ %983, %981 ], [ %958, %957 ]
  %988 = call ptr @get_last_insn() #18
  %989 = load i32, ptr %988, align 8
  %990 = and i32 %989, 65535
  %991 = icmp eq i32 %990, 10
  br i1 %991, label %1002, label %992, !prof !545

992:                                              ; preds = %986, %998
  %993 = phi ptr [ %995, %998 ], [ %988, %986 ]
  %994 = getelementptr inbounds %struct.rtx_def, ptr %993, i64 0, i32 1, i32 0, i32 0, i64 1
  %995 = load ptr, ptr %994, align 8, !tbaa !356
  %996 = icmp eq ptr %995, %892
  br i1 %996, label %997, label %998

997:                                              ; preds = %992
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2908, ptr noundef nonnull @.str.1) #18
  br label %998

998:                                              ; preds = %992, %997
  %999 = load i32, ptr %995, align 8
  %1000 = and i32 %999, 65535
  %1001 = icmp eq i32 %1000, 10
  br i1 %1001, label %1002, label %992, !prof !546, !llvm.loop !547

1002:                                             ; preds = %998, %986
  %1003 = phi ptr [ %988, %986 ], [ %995, %998 ]
  %1004 = call ptr @emit_barrier_after(ptr noundef nonnull %1003) #18
  %1005 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1008, !prof !548

1007:                                             ; preds = %1002
  store i32 %539, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  store i32 0, ptr @x_rtl, align 8, !tbaa !496
  br label %1008

1008:                                             ; preds = %1002, %1007, %981
  %1009 = phi ptr [ %987, %1002 ], [ %987, %1007 ], [ %983, %981 ]
  %1010 = load i64, ptr %64, align 8
  %1011 = and i64 %1010, 65535
  %1012 = icmp eq i64 %1011, 14
  br i1 %1012, label %1013, label %1015, !prof !466

1013:                                             ; preds = %1008
  %1014 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1019

1015:                                             ; preds = %1008
  %1016 = load i32, ptr %481, align 4
  %1017 = lshr i32 %1016, 16
  %1018 = and i32 %1017, 255
  br label %1019

1019:                                             ; preds = %1015, %1013
  %1020 = phi i32 [ %1014, %1013 ], [ %1018, %1015 ]
  %1021 = icmp eq i32 %1020, 0
  %1022 = or i1 %484, %1021
  br i1 %1022, label %1023, label %1025, !prof !549

1023:                                             ; preds = %1019
  %1024 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !397
  br label %1177

1025:                                             ; preds = %1019
  br i1 %910, label %1058, label %1026, !prof !550

1026:                                             ; preds = %1025
  %1027 = icmp eq ptr %494, null
  br i1 %1027, label %1032, label %1028, !prof !551

1028:                                             ; preds = %1026
  %1029 = load i32, ptr %494, align 8
  %1030 = and i32 %1029, 65535
  %1031 = icmp eq i32 %1030, 43
  br i1 %1031, label %1177, label %1032, !prof !552

1032:                                             ; preds = %1028, %1026
  %1033 = load i64, ptr %64, align 8
  %1034 = and i64 %1033, 65535
  %1035 = icmp eq i64 %1034, 14
  br i1 %1035, label %1036, label %1039, !prof !553

1036:                                             ; preds = %1032
  %1037 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  %1038 = load i64, ptr %64, align 8
  br label %1043

1039:                                             ; preds = %1032
  %1040 = load i32, ptr %481, align 4
  %1041 = lshr i32 %1040, 16
  %1042 = and i32 %1041, 255
  br label %1043

1043:                                             ; preds = %1039, %1036
  %1044 = phi i64 [ %1038, %1036 ], [ %1033, %1039 ]
  %1045 = phi i32 [ %1037, %1036 ], [ %1042, %1039 ]
  %1046 = and i64 %1044, 65535
  %1047 = icmp eq i64 %1046, 14
  br i1 %1047, label %1048, label %1050, !prof !553

1048:                                             ; preds = %1043
  %1049 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1054

1050:                                             ; preds = %1043
  %1051 = load i32, ptr %481, align 4
  %1052 = lshr i32 %1051, 16
  %1053 = and i32 %1052, 255
  br label %1054

1054:                                             ; preds = %1050, %1048
  %1055 = phi i32 [ %1049, %1048 ], [ %1053, %1050 ]
  %1056 = call ptr @memory_address_addr_space(i32 noundef %1055, ptr noundef nonnull %886, i8 noundef zeroext 0) #18
  %1057 = call ptr @gen_rtx_MEM(i32 noundef %1045, ptr noundef %1056) #18
  call void @set_mem_attributes(ptr noundef %1057, ptr noundef nonnull %64, i32 noundef 1) #18
  br label %1177

1058:                                             ; preds = %1025
  %1059 = load i32, ptr %1009, align 8
  %1060 = and i32 %1059, 65535
  %1061 = icmp eq i32 %1060, 15
  %1062 = icmp eq ptr %494, null
  br i1 %1061, label %1063, label %1088, !prof !554

1063:                                             ; preds = %1058
  br i1 %1062, label %1064, label %1080

1064:                                             ; preds = %1063
  %1065 = load i64, ptr %64, align 8
  %1066 = trunc i64 %1065 to i32
  %1067 = lshr i32 %1066, 18
  %1068 = and i32 %1067, 2
  %1069 = load i32, ptr %481, align 4
  %1070 = lshr i32 %1069, 11
  %1071 = and i32 %1070, 4
  %1072 = lshr i64 %1065, 48
  %1073 = trunc i64 %1072 to i32
  %1074 = and i32 %1073, 65280
  %1075 = or disjoint i32 %1071, %1068
  %1076 = or disjoint i32 %1075, %1074
  %1077 = or disjoint i32 %1076, 1
  %1078 = call ptr @build_qualified_type(ptr noundef nonnull %64, i32 noundef %1077) #18
  %1079 = call ptr @assign_temp(ptr noundef %1078, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  br label %1080

1080:                                             ; preds = %1064, %1063
  %1081 = phi ptr [ %1079, %1064 ], [ %494, %1063 ]
  %1082 = call i32 @rtx_equal_p(ptr noundef %1081, ptr noundef nonnull %1009) #18
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1084, label %1087

1084:                                             ; preds = %1080
  %1085 = call i64 @int_size_in_bytes(ptr noundef nonnull %64) #18
  %1086 = trunc i64 %1085 to i32
  call void @emit_group_store(ptr noundef %1081, ptr noundef nonnull %1009, ptr noundef nonnull %64, i32 noundef %1086) #18
  br label %1087

1087:                                             ; preds = %1084, %1080
  store i32 1, ptr %20, align 4, !tbaa !403
  br label %1177

1088:                                             ; preds = %1058
  br i1 %1062, label %1152, label %1089, !prof !554

1089:                                             ; preds = %1088
  %1090 = load i32, ptr %494, align 8
  %1091 = lshr i32 %1090, 16
  %1092 = and i32 %1091, 255
  %1093 = load i64, ptr %64, align 8
  %1094 = and i64 %1093, 65535
  %1095 = icmp eq i64 %1094, 14
  br i1 %1095, label %1096, label %1098, !prof !554

1096:                                             ; preds = %1089
  %1097 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1102

1098:                                             ; preds = %1089
  %1099 = load i32, ptr %481, align 4
  %1100 = lshr i32 %1099, 16
  %1101 = and i32 %1100, 255
  br label %1102

1102:                                             ; preds = %1098, %1096
  %1103 = phi i32 [ %1097, %1096 ], [ %1101, %1098 ]
  %1104 = icmp eq i32 %1092, %1103
  br i1 %1104, label %1105, label %1152, !prof !555

1105:                                             ; preds = %1102
  %1106 = load i32, ptr %494, align 8
  %1107 = load i32, ptr %1009, align 8
  %1108 = xor i32 %1107, %1106
  %1109 = and i32 %1108, 16711680
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1111, label %1152, !prof !555

1111:                                             ; preds = %1105
  %1112 = and i32 %1106, 65535
  %1113 = icmp eq i32 %1112, 37
  br i1 %1113, label %1114, label %1117, !prof !555

1114:                                             ; preds = %1111
  %1115 = call fastcc i32 @rhs_regno(ptr noundef nonnull %494) #19
  %1116 = icmp ult i32 %1115, 53
  br i1 %1116, label %1117, label %1119, !prof !554

1117:                                             ; preds = %1114, %1111
  %1118 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %1009) #19
  br label %1119

1119:                                             ; preds = %1117, %1114
  %1120 = phi ptr [ %1118, %1117 ], [ %1009, %1114 ]
  %1121 = load i32, ptr @target_flags, align 4, !tbaa !403
  %1122 = and i32 %1121, 4
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1124, label %1128, !prof !554

1124:                                             ; preds = %1119
  %1125 = call i32 @ix86_cfun_abi() #18
  %1126 = icmp eq i32 %1125, 1
  %1127 = and i1 %505, %1126
  br i1 %1127, label %1129, label %1146, !prof !556

1128:                                             ; preds = %1119
  br i1 %505, label %1129, label %1146, !prof !557

1129:                                             ; preds = %1124, %1128
  %1130 = load i32, ptr %494, align 8
  %1131 = and i32 %1130, 65535
  %1132 = icmp eq i32 %1131, 43
  br i1 %1132, label %1133, label %1146, !prof !558

1133:                                             ; preds = %1129
  br i1 %480, label %1134, label %1146

1134:                                             ; preds = %1133
  %1135 = zext nneg i32 %275 to i64
  br label %1139

1136:                                             ; preds = %1139
  %1137 = add nuw nsw i64 %1140, 1
  %1138 = icmp eq i64 %1137, %1135
  br i1 %1138, label %1146, label %1139, !llvm.loop !559

1139:                                             ; preds = %1134, %1136
  %1140 = phi i64 [ %1137, %1136 ], [ 0, %1134 ]
  %1141 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %1140, i32 13
  %1142 = load ptr, ptr %1141, align 8, !tbaa !560
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %1136, label %1144

1144:                                             ; preds = %1139
  %1145 = call ptr @copy_to_reg(ptr noundef %1120) #18
  br label %1177

1146:                                             ; preds = %1136, %1133, %1129, %1128, %1124
  %1147 = call ptr @emit_move_insn(ptr noundef nonnull %494, ptr noundef %1120) #18
  %1148 = load i32, ptr %494, align 8
  %1149 = and i32 %1148, 65535
  %1150 = icmp eq i32 %1149, 43
  br i1 %1150, label %1151, label %1177, !prof !554

1151:                                             ; preds = %1146
  store i32 1, ptr %20, align 4, !tbaa !403
  br label %1177

1152:                                             ; preds = %1105, %1102, %1088
  %1153 = load i64, ptr %64, align 8
  %1154 = and i64 %1153, 65535
  %1155 = icmp eq i64 %1154, 14
  br i1 %1155, label %1156, label %1158

1156:                                             ; preds = %1152
  %1157 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1162

1158:                                             ; preds = %1152
  %1159 = load i32, ptr %481, align 4
  %1160 = lshr i32 %1159, 16
  %1161 = and i32 %1160, 255
  br label %1162

1162:                                             ; preds = %1158, %1156
  %1163 = phi i32 [ %1157, %1156 ], [ %1161, %1158 ]
  %1164 = icmp eq i32 %1163, 1
  br i1 %1164, label %1165, label %1174

1165:                                             ; preds = %1162
  %1166 = load i32, ptr %1009, align 8
  %1167 = and i32 %1166, 16711680
  %1168 = icmp eq i32 %1167, 65536
  br i1 %1168, label %1171, label %1169

1169:                                             ; preds = %1165
  %1170 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %1009) #19
  br label %1171

1171:                                             ; preds = %1169, %1165
  %1172 = phi ptr [ %1170, %1169 ], [ %1009, %1165 ]
  %1173 = call ptr @copy_blkmode_from_reg(ptr noundef %494, ptr noundef %1172, ptr noundef nonnull %64) #18
  store i32 1, ptr %20, align 4, !tbaa !403
  br label %1177

1174:                                             ; preds = %1162
  %1175 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %1009) #19
  %1176 = call ptr @copy_to_reg(ptr noundef %1175) #18
  br label %1177

1177:                                             ; preds = %1144, %1151, %1146, %1054, %1028, %1087, %1171, %1174, %1023
  %1178 = phi ptr [ %1024, %1023 ], [ %1057, %1054 ], [ %494, %1028 ], [ %1081, %1087 ], [ %1173, %1171 ], [ %1176, %1174 ], [ %1145, %1144 ], [ %494, %1151 ], [ %494, %1146 ]
  %1179 = load i32, ptr %1178, align 8
  %1180 = and i32 %1179, 65535
  %1181 = icmp eq i32 %1180, 37
  br i1 %1181, label %1182, label %1260, !prof !561

1182:                                             ; preds = %1177
  %1183 = load i64, ptr %64, align 8
  %1184 = and i64 %1183, 65535
  %1185 = icmp eq i64 %1184, 14
  br i1 %1185, label %1186, label %1188, !prof !554

1186:                                             ; preds = %1182
  %1187 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1192

1188:                                             ; preds = %1182
  %1189 = load i32, ptr %481, align 4
  %1190 = lshr i32 %1189, 16
  %1191 = and i32 %1190, 255
  br label %1192

1192:                                             ; preds = %1188, %1186
  %1193 = phi i32 [ %1187, %1186 ], [ %1191, %1188 ]
  %1194 = icmp eq i32 %1193, 1
  br i1 %1194, label %1260, label %1195, !prof !554

1195:                                             ; preds = %1192
  %1196 = load i32, ptr %1178, align 8
  %1197 = lshr i32 %1196, 16
  %1198 = and i32 %1197, 255
  %1199 = load i64, ptr %64, align 8
  %1200 = and i64 %1199, 65535
  %1201 = icmp eq i64 %1200, 14
  br i1 %1201, label %1202, label %1204, !prof !554

1202:                                             ; preds = %1195
  %1203 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1208

1204:                                             ; preds = %1195
  %1205 = load i32, ptr %481, align 4
  %1206 = lshr i32 %1205, 16
  %1207 = and i32 %1206, 255
  br label %1208

1208:                                             ; preds = %1204, %1202
  %1209 = phi i32 [ %1203, %1202 ], [ %1207, %1204 ]
  %1210 = icmp eq i32 %1198, %1209
  br i1 %1210, label %1260, label %1211, !prof !555

1211:                                             ; preds = %1208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #20
  %1212 = load i64, ptr %64, align 8
  %1213 = trunc i64 %1212 to i32
  %1214 = lshr i32 %1213, 21
  %1215 = and i32 %1214, 1
  store i32 %1215, ptr %21, align 4, !tbaa !403
  %1216 = and i64 %1212, 65535
  %1217 = icmp eq i64 %1216, 14
  br i1 %1217, label %1218, label %1220

1218:                                             ; preds = %1211
  %1219 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1224

1220:                                             ; preds = %1211
  %1221 = load i32, ptr %481, align 4
  %1222 = lshr i32 %1221, 16
  %1223 = and i32 %1222, 255
  br label %1224

1224:                                             ; preds = %1220, %1218
  %1225 = phi i32 [ %1219, %1218 ], [ %1223, %1220 ]
  %1226 = call i32 @promote_function_mode(ptr noundef nonnull %64, i32 noundef %1225, ptr noundef nonnull %21, ptr noundef %188, i32 noundef 1) #18
  %1227 = load i32, ptr %1178, align 8
  %1228 = lshr i32 %1227, 16
  %1229 = and i32 %1228, 255
  %1230 = icmp eq i32 %1229, %1226
  br i1 %1230, label %1232, label %1231

1231:                                             ; preds = %1224
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3042, ptr noundef nonnull @.str.1) #18
  br label %1232

1232:                                             ; preds = %1224, %1231
  %1233 = load i64, ptr %64, align 8
  %1234 = and i64 %1233, 65535
  %1235 = icmp eq i64 %1234, 14
  br i1 %1235, label %1236, label %1238

1236:                                             ; preds = %1232
  %1237 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1242

1238:                                             ; preds = %1232
  %1239 = load i32, ptr %481, align 4
  %1240 = lshr i32 %1239, 16
  %1241 = and i32 %1240, 255
  br label %1242

1242:                                             ; preds = %1238, %1236
  %1243 = phi i32 [ %1237, %1236 ], [ %1241, %1238 ]
  %1244 = call ptr @gen_rtx_SUBREG(i32 noundef %1243, ptr noundef nonnull %1178, i32 noundef 0) #18
  %1245 = load i32, ptr %1244, align 8
  %1246 = or i32 %1245, 268435456
  store i32 %1246, ptr %1244, align 8
  %1247 = load i32, ptr %21, align 4, !tbaa !403
  %1248 = icmp slt i32 %1247, 0
  br i1 %1248, label %1249, label %1251

1249:                                             ; preds = %1242
  %1250 = or i32 %1245, 402653184
  br label %1258

1251:                                             ; preds = %1242
  %1252 = and i32 %1246, -134217729
  store i32 %1252, ptr %1244, align 8
  %1253 = load i32, ptr %21, align 4, !tbaa !403
  %1254 = shl i32 %1253, 26
  %1255 = and i32 %1254, 67108864
  %1256 = and i32 %1246, -201326593
  %1257 = or disjoint i32 %1255, %1256
  br label %1258

1258:                                             ; preds = %1251, %1249
  %1259 = phi i32 [ %1257, %1251 ], [ %1250, %1249 ]
  store i32 %1259, ptr %1244, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #20
  br label %1260

1260:                                             ; preds = %1258, %1208, %1192, %1177
  %1261 = phi ptr [ %1244, %1258 ], [ %1178, %1208 ], [ %1178, %1192 ], [ %1178, %1177 ]
  %1262 = load ptr, ptr %13, align 8, !tbaa !397
  %1263 = icmp eq ptr %1262, null
  br i1 %1263, label %1267, label %1264, !prof !451

1264:                                             ; preds = %1260
  call void @emit_stack_restore(i32 noundef 0, ptr noundef nonnull %1262, ptr noundef null) #18
  store i32 %692, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %1265 = load i32, ptr %14, align 4, !tbaa !403
  store i32 %1265, ptr @x_rtl, align 8, !tbaa !496
  %1266 = sub nsw i32 %692, %1265
  store i32 %693, ptr @stack_arg_under_construction, align 4, !tbaa !403
  store i32 %37, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  store ptr %38, ptr @stack_usage_map, align 8, !tbaa !397
  store i32 1, ptr %20, align 4, !tbaa !403
  br label %1310

1267:                                             ; preds = %1260
  %1268 = load i32, ptr @target_flags, align 4, !tbaa !403
  %1269 = and i32 %1268, 4
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1271, label %1275, !prof !466

1271:                                             ; preds = %1267
  %1272 = call i32 @ix86_cfun_abi() #18
  %1273 = icmp eq i32 %1272, 1
  %1274 = and i1 %505, %1273
  br i1 %1274, label %1276, label %1310, !prof !519

1275:                                             ; preds = %1267
  br i1 %505, label %1276, label %1310, !prof !495

1276:                                             ; preds = %1271, %1275
  %1277 = icmp eq ptr %773, null
  br i1 %1277, label %1281, label %1278, !prof !505

1278:                                             ; preds = %1276
  %1279 = load i32, ptr %12, align 4, !tbaa !403
  %1280 = load i32, ptr %11, align 4, !tbaa !403
  call fastcc void @restore_fixed_argument_area(ptr noundef nonnull %773, ptr noundef %695, i32 noundef %1279, i32 noundef %1280) #19
  br label %1281

1281:                                             ; preds = %1278, %1276
  br i1 %480, label %1282, label %1309, !prof !562

1282:                                             ; preds = %1281, %1306
  %1283 = phi i64 [ %1307, %1306 ], [ 0, %1281 ]
  %1284 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %1283, i32 13
  %1285 = load ptr, ptr %1284, align 8, !tbaa !560
  %1286 = icmp eq ptr %1285, null
  br i1 %1286, label %1306, label %1287, !prof !563

1287:                                             ; preds = %1282
  %1288 = load i32, ptr %1285, align 8
  %1289 = lshr i32 %1288, 16
  %1290 = and i32 %1289, 255
  %1291 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %1283, i32 12
  %1292 = load ptr, ptr %1291, align 8, !tbaa !564
  %1293 = getelementptr inbounds %struct.rtx_def, ptr %1292, i64 0, i32 1
  %1294 = load ptr, ptr %1293, align 8, !tbaa !356
  %1295 = call ptr @memory_address_addr_space(i32 noundef %1290, ptr noundef %1294, i8 noundef zeroext 0) #18
  %1296 = call ptr @gen_rtx_MEM(i32 noundef %1290, ptr noundef %1295) #18
  %1297 = icmp eq i32 %1290, 1
  %1298 = load ptr, ptr %1284, align 8, !tbaa !560
  br i1 %1297, label %1301, label %1299

1299:                                             ; preds = %1287
  %1300 = call ptr @emit_move_insn(ptr noundef %1296, ptr noundef %1298) #18
  br label %1306

1301:                                             ; preds = %1287
  %1302 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %1283, i32 10
  %1303 = load i64, ptr %1302, align 8, !tbaa !565
  %1304 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1303) #18
  %1305 = call ptr @emit_block_move(ptr noundef %1296, ptr noundef %1298, ptr noundef %1304, i32 noundef 2) #18
  br label %1306

1306:                                             ; preds = %1299, %1301, %1282
  %1307 = add nuw nsw i64 %1283, 1
  %1308 = icmp eq i64 %1307, %489
  br i1 %1308, label %1309, label %1282, !prof !566, !llvm.loop !567

1309:                                             ; preds = %1306, %1281
  store i32 %37, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  store ptr %38, ptr @stack_usage_map, align 8, !tbaa !397
  br label %1310

1310:                                             ; preds = %1271, %1275, %1309, %1264
  %1311 = phi i32 [ %1266, %1264 ], [ %539, %1309 ], [ %539, %1275 ], [ %539, %1271 ]
  %1312 = load i32, ptr %10, align 4
  %1313 = and i32 %1312, 32
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1321, label %1315, !prof !453

1315:                                             ; preds = %1310
  %1316 = load ptr, ptr @cfun, align 8, !tbaa !397
  %1317 = getelementptr inbounds %struct.function, ptr %1316, i64 0, i32 8
  %1318 = load ptr, ptr %1317, align 8, !tbaa !568
  %1319 = icmp eq ptr %1318, null
  br i1 %1319, label %1321, label %1320, !prof !570

1320:                                             ; preds = %1315
  call void @update_nonlocal_goto_save_area() #18
  br label %1321

1321:                                             ; preds = %1320, %1315, %1310
  br i1 %480, label %1322, label %1331, !prof !493

1322:                                             ; preds = %1321, %1328
  %1323 = phi i64 [ %1329, %1328 ], [ 0, %1321 ]
  %1324 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %1323, i32 14
  %1325 = load ptr, ptr %1324, align 8, !tbaa !571
  %1326 = icmp eq ptr %1325, null
  br i1 %1326, label %1328, label %1327, !prof !516

1327:                                             ; preds = %1322
  call void @free(ptr noundef nonnull %1325) #19
  br label %1328

1328:                                             ; preds = %1322, %1327
  %1329 = add nuw nsw i64 %1323, 1
  %1330 = icmp eq i64 %1329, %490
  br i1 %1330, label %1331, label %1322, !prof !511, !llvm.loop !572

1331:                                             ; preds = %1328, %1321
  %1332 = call ptr @get_insns() #18
  call void @end_sequence() #18
  br i1 %502, label %1333, label %1346, !prof !498

1333:                                             ; preds = %1331
  store i32 %503, ptr @x_rtl, align 8, !tbaa !496
  store i32 %504, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  br i1 %480, label %1334, label %1343, !prof !573

1334:                                             ; preds = %1333
  %1335 = zext nneg i32 %275 to i64
  br label %1336

1336:                                             ; preds = %1334, %1336
  %1337 = phi i64 [ %1341, %1336 ], [ 0, %1334 ]
  %1338 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %1337, i32 2
  store ptr null, ptr %1338, align 8, !tbaa !574
  %1339 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %1337, i32 14
  store ptr null, ptr %1339, align 8, !tbaa !571
  %1340 = getelementptr inbounds %struct.arg_data, ptr %294, i64 %1337, i32 11
  store ptr null, ptr %1340, align 8, !tbaa !530
  %1341 = add nuw nsw i64 %1337, 1
  %1342 = icmp eq i64 %1341, %1335
  br i1 %1342, label %1343, label %1336, !prof !575, !llvm.loop !576

1343:                                             ; preds = %1336, %1333
  %1344 = load ptr, ptr @stored_args_map, align 8, !tbaa !397
  %1345 = load ptr, ptr %1344, align 8, !tbaa !577
  call void @free(ptr noundef %1345) #19
  call void @free(ptr noundef %1344) #19
  br label %1355

1346:                                             ; preds = %1331
  %1347 = and i32 %1312, 8
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1349, label %1355, !prof !579

1349:                                             ; preds = %1346
  %1350 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %1351 = load i32, ptr @x_rtl, align 8, !tbaa !496
  %1352 = sub nsw i32 %1350, %1351
  %1353 = icmp eq i32 %1311, %1352
  br i1 %1353, label %1355, label %1354, !prof !580

1354:                                             ; preds = %1349
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3147, ptr noundef nonnull @.str.1) #18
  br label %1355

1355:                                             ; preds = %1354, %1349, %1346, %1343
  %1356 = phi ptr [ %1332, %1343 ], [ null, %1346 ], [ null, %1349 ], [ null, %1354 ]
  %1357 = phi ptr [ %495, %1343 ], [ %1332, %1346 ], [ %1332, %1349 ], [ %1332, %1354 ]
  %1358 = load i32, ptr %20, align 4, !tbaa !403
  %1359 = icmp eq i32 %1358, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #20
  br i1 %1359, label %1360, label %491

1360:                                             ; preds = %1355
  %1361 = icmp eq ptr %1356, null
  br i1 %1361, label %1364, label %1362, !prof !581

1362:                                             ; preds = %1360
  %1363 = call ptr @emit_insn(ptr noundef nonnull %1356) #18
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 39), align 1, !tbaa !582
  br label %1366

1364:                                             ; preds = %491, %1360
  %1365 = call ptr @emit_insn(ptr noundef %1357) #18
  br label %1366

1366:                                             ; preds = %1364, %1362
  %1367 = load i32, ptr @expand_call.currently_expanding_call, align 4, !tbaa !403
  %1368 = add nsw i32 %1367, -1
  store i32 %1368, ptr @expand_call.currently_expanding_call, align 4, !tbaa !403
  %1369 = icmp eq ptr %694, null
  br i1 %1369, label %1371, label %1370, !prof !498

1370:                                             ; preds = %1366
  call void @free(ptr noundef nonnull %694) #19
  br label %1371

1371:                                             ; preds = %120, %1366, %1370
  %1372 = phi ptr [ %121, %120 ], [ %1261, %1370 ], [ %1261, %1366 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #20
  ret ptr %1372
}

; Function Attrs: optsize
declare i32 @ix86_cfun_abi() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !421 !PGOFuncName !583 {
  tail call fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr noundef %1) #19
  %3 = tail call fastcc ptr @next_call_expr_arg(ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #7 !prof !584 !PGOFuncName !585 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !586
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !588
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14, !prof !589

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !590
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !356
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !586
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !591 !PGOFuncName !592 {
  %5 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null) #18
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @ix86_reg_parm_stack_space(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ix86_function_type_abi(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @assign_temp(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_temp_addr_taken(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @cgraph_rtl_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @split_complex_types(ptr noundef %0) unnamed_addr #0 !prof !418 !PGOFuncName !593 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1, %14
  %4 = phi ptr [ %16, %14 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !356
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 13
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !450
  %12 = tail call zeroext i8 %11(ptr noundef nonnull %6) #18
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3, %10
  %15 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !356
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %3, !llvm.loop !594

18:                                               ; preds = %10
  %19 = tail call ptr @copy_list(ptr noundef nonnull %0) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %18, %40
  %22 = phi ptr [ %43, %40 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.tree_list, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !356
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 13
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !450
  %30 = tail call zeroext i8 %29(ptr noundef nonnull %24) #18
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !356
  store ptr %34, ptr %23, align 8, !tbaa !356
  %35 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !356
  %37 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %34) #18
  store ptr %37, ptr %35, align 8, !tbaa !356
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 1
  store ptr %36, ptr %38, align 8, !tbaa !356
  %39 = load ptr, ptr %35, align 8, !tbaa !356
  br label %40

40:                                               ; preds = %32, %28, %21
  %41 = phi ptr [ %39, %32 ], [ %22, %28 ], [ %22, %21 ]
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !356
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %21, !llvm.loop !595

45:                                               ; preds = %14, %40, %1, %18
  %46 = phi ptr [ null, %18 ], [ null, %1 ], [ %19, %40 ], [ %0, %14 ]
  ret ptr %46
}

; Function Attrs: optsize
declare ptr @copy_addr_to_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_tree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @list_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @init_cumulative_args(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_argument_information(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12, ptr nocapture noundef %13, ptr nocapture noundef writeonly %14, i8 noundef zeroext %15) unnamed_addr #0 !prof !421 !PGOFuncName !596 {
  %17 = alloca %struct.call_expr_arg_iterator_d, align 8
  %18 = alloca i32, align 4
  %19 = load i64, ptr %4, align 8
  %20 = and i64 %19, 65535
  %21 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !403
  %23 = add i32 %22, -4
  %24 = icmp ult i32 %23, 7
  br i1 %24, label %25, label %28, !prof !597

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !356
  br label %28

28:                                               ; preds = %16, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %16 ]
  %30 = getelementptr inbounds %struct.args_size, ptr %2, i64 0, i32 1
  %31 = add nsw i32 %0, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #20
  %32 = icmp eq ptr %5, null
  br i1 %32, label %37, label %33, !prof !441

33:                                               ; preds = %28
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %34
  store ptr %5, ptr %35, align 8, !tbaa !598
  %36 = add nsw i32 %0, -2
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i32 [ %36, %33 ], [ %31, %28 ]
  %39 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %4, ptr noundef nonnull %17) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %73, label %41, !prof !599

41:                                               ; preds = %37, %65
  %42 = phi i32 [ %70, %65 ], [ %38, %37 ]
  %43 = phi ptr [ %71, %65 ], [ %39, %37 ]
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !356
  %46 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !450
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48, !prof !600

48:                                               ; preds = %41
  %49 = icmp eq ptr %45, null
  br i1 %49, label %65, label %50

50:                                               ; preds = %48
  %51 = load i64, ptr %45, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 13
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = tail call zeroext i8 %46(ptr noundef nonnull %45) #18
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !356
  %60 = tail call ptr @build1_stat(i32 noundef 43, ptr noundef %59, ptr noundef nonnull %43) #18
  %61 = sext i32 %42 to i64
  %62 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %61
  store ptr %60, ptr %62, align 8, !tbaa !598
  %63 = add nsw i32 %42, -1
  %64 = tail call ptr @build1_stat(i32 noundef 44, ptr noundef %59, ptr noundef nonnull %43) #18
  br label %65

65:                                               ; preds = %41, %48, %50, %54, %57
  %66 = phi i32 [ %63, %57 ], [ %42, %54 ], [ %42, %50 ], [ %42, %48 ], [ %42, %41 ]
  %67 = phi ptr [ %64, %57 ], [ %43, %54 ], [ %43, %50 ], [ %43, %48 ], [ %43, %41 ]
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %68
  store ptr %67, ptr %69, align 8, !tbaa !598
  %70 = add nsw i32 %66, -1
  %71 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %17) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %41, !prof !601, !llvm.loop !602

73:                                               ; preds = %65, %37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #20
  %74 = icmp sgt i32 %0, 0
  br i1 %74, label %75, label %368, !prof !493

75:                                               ; preds = %73
  %76 = icmp eq ptr %6, null
  %77 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %78 = zext nneg i32 %0 to i64
  br label %79

79:                                               ; preds = %75, %364
  %80 = phi i64 [ %78, %75 ], [ %82, %364 ]
  %81 = phi i32 [ 0, %75 ], [ %366, %364 ]
  %82 = add nsw i64 %80, -1
  %83 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !598
  %85 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !356
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #20
  %87 = load ptr, ptr @global_trees, align 16, !tbaa !397
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %93, label %89, !prof !603

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !356
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96, !prof !603

93:                                               ; preds = %89, %79
  %94 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !397
  store ptr %94, ptr %83, align 8, !tbaa !598
  %95 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !397
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi ptr [ %95, %93 ], [ %86, %89 ]
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65534
  %100 = icmp eq i64 %99, 16
  br i1 %100, label %101, label %111, !prof !604

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.tree_type, ptr %97, i64 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 4096
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106, !prof !605

106:                                              ; preds = %101
  %107 = call ptr @first_field(ptr noundef nonnull %97) #18
  %108 = getelementptr inbounds %struct.tree_common, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !356
  %110 = load i64, ptr %109, align 8
  br label %111

111:                                              ; preds = %96, %106, %101
  %112 = phi i64 [ %110, %106 ], [ %98, %101 ], [ %98, %96 ]
  %113 = phi ptr [ %109, %106 ], [ %97, %101 ], [ %97, %96 ]
  %114 = and i64 %112, 65535
  %115 = icmp eq i64 %114, 14
  br i1 %115, label %116, label %118, !prof !603

116:                                              ; preds = %111
  %117 = call i32 @vector_type_mode(ptr noundef nonnull %113) #18
  br label %123

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = lshr i32 %120, 16
  %122 = and i32 %121, 255
  br label %123

123:                                              ; preds = %118, %116
  %124 = phi i32 [ %117, %116 ], [ %122, %118 ]
  %125 = icmp slt i32 %81, %3
  %126 = zext i1 %125 to i32
  %127 = zext i1 %125 to i8
  %128 = call zeroext i8 @pass_by_reference(ptr noundef %8, i32 noundef %124, ptr noundef nonnull %113, i8 noundef zeroext %127) #18
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %246, label %130, !prof !516

130:                                              ; preds = %123
  %131 = load i64, ptr %113, align 8
  %132 = and i64 %131, 65535
  %133 = icmp eq i64 %132, 14
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = call i32 @vector_type_mode(ptr noundef nonnull %113) #18
  br label %141

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = lshr i32 %138, 16
  %140 = and i32 %139, 255
  br label %141

141:                                              ; preds = %136, %134
  %142 = phi i32 [ %135, %134 ], [ %140, %136 ]
  %143 = icmp eq i8 %15, 0
  %144 = call zeroext i8 @reference_callee_copied(ptr noundef %8, i32 noundef %142, ptr noundef nonnull %113, i8 noundef zeroext %127) #18
  br i1 %143, label %145, label %184

145:                                              ; preds = %141
  %146 = icmp eq i8 %144, 0
  br i1 %146, label %194, label %147

147:                                              ; preds = %145
  %148 = load i64, ptr %113, align 8
  %149 = and i64 %148, 262144
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %194

151:                                              ; preds = %147
  %152 = load ptr, ptr %83, align 8, !tbaa !598
  %153 = call ptr @get_base_address(ptr noundef %152) #18
  %154 = icmp eq ptr %153, null
  br i1 %154, label %194, label %155

155:                                              ; preds = %151
  %156 = load i64, ptr %153, align 8
  %157 = and i64 %156, 65535
  %158 = icmp eq i64 %157, 141
  br i1 %158, label %194, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %157
  %161 = load i32, ptr %160, align 4, !tbaa !403
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %163, label %184

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %153, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !356
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  call void @make_decl_rtl(ptr noundef nonnull %153) #18
  %168 = load ptr, ptr %164, align 8, !tbaa !356
  br label %169

169:                                              ; preds = %163, %167
  %170 = phi ptr [ %168, %167 ], [ %165, %163 ]
  %171 = load i32, ptr %170, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 43
  br i1 %173, label %174, label %194

174:                                              ; preds = %169
  %175 = load i64, ptr %153, align 8
  %176 = and i64 %175, 65535
  %177 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !403
  %179 = icmp eq i32 %178, 3
  %180 = and i64 %175, 67108864
  %181 = icmp eq i64 %180, 0
  %182 = and i1 %179, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  store i8 0, ptr %14, align 1, !tbaa !356
  br label %184

184:                                              ; preds = %159, %141, %183, %174
  %185 = load ptr, ptr %83, align 8, !tbaa !598
  %186 = call ptr @build_fold_addr_expr_loc(i32 noundef %29, ptr noundef %185) #18
  store ptr %186, ptr %83, align 8, !tbaa !598
  %187 = getelementptr inbounds %struct.tree_common, ptr %186, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !356
  %189 = load i32, ptr %13, align 4, !tbaa !403
  %190 = and i32 %189, 1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %246, label %192

192:                                              ; preds = %184
  %193 = and i32 %189, -6
  store i32 %193, ptr %13, align 4, !tbaa !403
  br label %246

194:                                              ; preds = %169, %155, %151, %147, %145
  %195 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !356
  %197 = icmp eq ptr %196, null
  br i1 %197, label %210, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !356
  %201 = load i64, ptr %200, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 23
  br i1 %203, label %204, label %210

204:                                              ; preds = %198
  %205 = load i32, ptr @flag_stack_check, align 4, !tbaa !403
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %222

207:                                              ; preds = %204
  %208 = call i32 @compare_tree_int(ptr noundef nonnull %200, i64 noundef 40) #18
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %207, %198, %194
  %211 = load ptr, ptr %83, align 8, !tbaa !598
  %212 = call ptr @expr_size(ptr noundef %211) #18
  %213 = load ptr, ptr %10, align 8, !tbaa !397
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %10, ptr noundef null) #18
  %216 = load i32, ptr @x_rtl, align 8, !tbaa !496
  store i32 %216, ptr %11, align 4, !tbaa !403
  store i32 0, ptr @x_rtl, align 8, !tbaa !496
  br label %217

217:                                              ; preds = %215, %210
  %218 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 7
  %219 = load i32, ptr %218, align 8, !tbaa !356
  %220 = call ptr @allocate_dynamic_stack_space(ptr noundef %212, ptr noundef null, i32 noundef %219) #18
  %221 = call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %220) #18
  call void @set_mem_attributes(ptr noundef %221, ptr noundef nonnull %113, i32 noundef 1) #18
  br label %224

222:                                              ; preds = %207, %204
  %223 = call ptr @assign_temp(ptr noundef nonnull %113, i32 noundef 0, i32 noundef 1, i32 noundef 0) #18
  br label %224

224:                                              ; preds = %222, %217
  %225 = phi ptr [ %221, %217 ], [ %223, %222 ]
  %226 = load ptr, ptr %83, align 8, !tbaa !598
  %227 = call ptr @store_expr(ptr noundef %226, ptr noundef %225, i32 noundef 0, i8 noundef zeroext 0) #18
  %228 = load i32, ptr %13, align 4, !tbaa !403
  %229 = and i32 %228, 1
  %230 = icmp ne i32 %229, 0
  %231 = and i32 %228, -4
  %232 = or disjoint i32 %231, 2
  %233 = select i1 %230, i32 %232, i32 %228
  %234 = and i32 %233, 2
  %235 = icmp ne i32 %234, 0
  %236 = select i1 %146, i1 %235, i1 false
  %237 = or i1 %230, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %224
  %239 = and i32 %233, -7
  %240 = select i1 %236, i32 %239, i32 %233
  store i32 %240, ptr %13, align 4, !tbaa !403
  br label %241

241:                                              ; preds = %224, %238
  %242 = call ptr @make_tree(ptr noundef nonnull %113, ptr noundef %225) #18
  %243 = call ptr @build_fold_addr_expr_loc(i32 noundef %29, ptr noundef %242) #18
  store ptr %243, ptr %83, align 8, !tbaa !598
  %244 = getelementptr inbounds %struct.tree_common, ptr %243, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !356
  store i8 0, ptr %14, align 1, !tbaa !356
  br label %246

246:                                              ; preds = %241, %192, %184, %123
  %247 = phi ptr [ %113, %123 ], [ %188, %192 ], [ %188, %184 ], [ %245, %241 ]
  %248 = load i64, ptr %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = lshr i32 %249, 21
  %251 = and i32 %250, 1
  store i32 %251, ptr %18, align 4, !tbaa !403
  %252 = and i64 %248, 65535
  %253 = icmp eq i64 %252, 14
  br i1 %253, label %254, label %256, !prof !603

254:                                              ; preds = %246
  %255 = call i32 @vector_type_mode(ptr noundef nonnull %247) #18
  br label %261

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.tree_type, ptr %247, i64 0, i32 6
  %258 = load i32, ptr %257, align 4
  %259 = lshr i32 %258, 16
  %260 = and i32 %259, 255
  br label %261

261:                                              ; preds = %256, %254
  %262 = phi i32 [ %255, %254 ], [ %260, %256 ]
  br i1 %76, label %265, label %263, !prof !606

263:                                              ; preds = %261
  %264 = load ptr, ptr %77, align 8, !tbaa !356
  br label %265

265:                                              ; preds = %261, %263
  %266 = phi ptr [ %264, %263 ], [ %7, %261 ]
  %267 = call i32 @promote_function_mode(ptr noundef nonnull %247, i32 noundef %262, ptr noundef nonnull %18, ptr noundef %266, i32 noundef 0) #18
  %268 = load i32, ptr %18, align 4, !tbaa !403
  %269 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 7
  store i32 %268, ptr %269, align 8, !tbaa !607
  %270 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 1
  store i32 %267, ptr %270, align 8, !tbaa !608
  %271 = call ptr @function_arg(ptr noundef %8, i32 noundef %267, ptr noundef nonnull %247, i32 noundef %126) #18
  %272 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 4
  store ptr %271, ptr %272, align 8, !tbaa !520
  %273 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 5
  store ptr %271, ptr %273, align 8, !tbaa !609
  %274 = icmp eq ptr %271, null
  br i1 %274, label %279, label %275, !prof !521

275:                                              ; preds = %265
  %276 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !610
  %277 = call i32 %276(ptr noundef %8, i32 noundef %267, ptr noundef nonnull %247, i8 noundef zeroext %127) #18
  %278 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 8
  store i32 %277, ptr %278, align 4, !tbaa !534
  br label %279

279:                                              ; preds = %275, %265
  %280 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 11), align 8, !tbaa !611
  %281 = call zeroext i8 %280(i32 noundef %267, ptr noundef nonnull %247) #18
  %282 = zext i8 %281 to i32
  %283 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 9
  store i32 %282, ptr %283, align 8, !tbaa !513
  %284 = load ptr, ptr %272, align 8, !tbaa !520
  %285 = icmp eq ptr %284, null
  br i1 %285, label %298, label %286, !prof !521

286:                                              ; preds = %279
  %287 = load i32, ptr %284, align 8
  %288 = and i32 %287, 65535
  %289 = icmp eq i32 %288, 15
  br i1 %289, label %290, label %298, !prof !612

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.rtx_def, ptr %284, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !356
  %293 = getelementptr inbounds %struct.rtvec_def, ptr %292, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !397
  %295 = getelementptr inbounds %struct.rtx_def, ptr %294, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !356
  %297 = icmp eq ptr %296, null
  br i1 %297, label %302, label %298

298:                                              ; preds = %290, %286, %279
  %299 = load i64, ptr %247, align 8
  %300 = and i64 %299, 262144
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %303, label %306, !prof !516

302:                                              ; preds = %290
  store i32 1, ptr %283, align 8, !tbaa !513
  br label %306

303:                                              ; preds = %298
  %304 = icmp eq i8 %281, 0
  br i1 %304, label %307, label %305, !prof !613

305:                                              ; preds = %303
  br i1 %285, label %325, label %306

306:                                              ; preds = %302, %305, %298
  store i32 1, ptr %12, align 4, !tbaa !403
  br label %307

307:                                              ; preds = %306, %303
  br i1 %285, label %308, label %310, !prof !614

308:                                              ; preds = %307
  %309 = load i32, ptr %283, align 8, !tbaa !513
  br label %319

310:                                              ; preds = %307
  %311 = icmp sgt i32 %9, 0
  %312 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 8
  %313 = load i32, ptr %312, align 4, !tbaa !534
  %314 = icmp ne i32 %313, 0
  %315 = or i1 %311, %314
  %316 = load i32, ptr %283, align 8, !tbaa !513
  br i1 %315, label %319, label %317, !prof !615

317:                                              ; preds = %310
  %318 = icmp eq i32 %316, 0
  br i1 %318, label %330, label %325, !prof !522

319:                                              ; preds = %308, %310
  %320 = phi i32 [ %309, %308 ], [ %316, %310 ]
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %325, !prof !616

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 8
  %324 = load i32, ptr %323, align 4, !tbaa !534
  br label %325

325:                                              ; preds = %305, %317, %319, %322
  %326 = phi i32 [ %324, %322 ], [ 0, %319 ], [ 0, %317 ], [ 0, %305 ]
  %327 = icmp ne ptr %284, null
  %328 = zext i1 %327 to i32
  %329 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 10
  call void @locate_and_pad_parm(i32 noundef %267, ptr noundef nonnull %247, i32 noundef %328, i32 noundef %326, ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull %329) #18
  br label %330

330:                                              ; preds = %325, %317
  %331 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 10
  %332 = load i64, ptr %331, align 8, !tbaa !565
  %333 = load i64, ptr %2, align 8, !tbaa !474
  %334 = add nsw i64 %333, %332
  store i64 %334, ptr %2, align 8, !tbaa !474
  %335 = getelementptr inbounds %struct.args_size, ptr %331, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !617
  %337 = icmp eq ptr %336, null
  br i1 %337, label %353, label %338, !prof !516

338:                                              ; preds = %330
  %339 = call i32 @host_integerp(ptr noundef nonnull %336, i32 noundef 0) #18
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %338
  %342 = call i64 @tree_low_cst(ptr noundef nonnull %336, i32 noundef 0) #18
  %343 = load i64, ptr %2, align 8, !tbaa !474
  %344 = add nsw i64 %343, %342
  store i64 %344, ptr %2, align 8, !tbaa !474
  br label %353

345:                                              ; preds = %338
  %346 = load ptr, ptr %30, align 8, !tbaa !463
  %347 = icmp eq ptr %346, null
  %348 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !397
  %349 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %348, ptr noundef nonnull %336) #18
  br i1 %347, label %350, label %351

350:                                              ; preds = %345
  store ptr %349, ptr %30, align 8, !tbaa !463
  br label %353

351:                                              ; preds = %345
  %352 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %346, ptr noundef %349) #18
  store ptr %352, ptr %30, align 8, !tbaa !463
  br label %353

353:                                              ; preds = %341, %351, %350, %330
  %354 = load i64, ptr %247, align 8
  %355 = and i64 %354, 65535
  %356 = icmp eq i64 %355, 14
  br i1 %356, label %357, label %359, !prof !603

357:                                              ; preds = %353
  %358 = call i32 @vector_type_mode(ptr noundef nonnull %247) #18
  br label %364

359:                                              ; preds = %353
  %360 = getelementptr inbounds %struct.tree_type, ptr %247, i64 0, i32 6
  %361 = load i32, ptr %360, align 4
  %362 = lshr i32 %361, 16
  %363 = and i32 %362, 255
  br label %364

364:                                              ; preds = %359, %357
  %365 = phi i32 [ %358, %357 ], [ %363, %359 ]
  call void @function_arg_advance(ptr noundef %8, i32 noundef %365, ptr noundef nonnull %247, i32 noundef %126) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #20
  %366 = add nuw nsw i32 %81, 1
  %367 = icmp eq i32 %366, %0
  br i1 %367, label %368, label %79, !prof !511, !llvm.loop !618

368:                                              ; preds = %364, %73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @finalize_must_preallocate(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !421 !PGOFuncName !619 {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %81, !prof !466

6:                                                ; preds = %4
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %73

8:                                                ; preds = %6
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %8, %64
  %11 = phi i64 [ 0, %8 ], [ %66, %64 ]
  %12 = phi i32 [ 0, %8 ], [ %65, %64 ]
  %13 = phi i32 [ 0, %8 ], [ %31, %64 ]
  %14 = getelementptr inbounds %struct.arg_data, ptr %2, i64 %11
  %15 = getelementptr inbounds %struct.arg_data, ptr %2, i64 %11, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !534
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.arg_data, ptr %2, i64 %11, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !513
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18, %10
  %23 = icmp eq i32 %13, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.arg_data, ptr %2, i64 %11, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !520
  %27 = icmp eq ptr %26, null
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %24, %18, %22
  %30 = phi i32 [ 0, %22 ], [ 0, %18 ], [ %28, %24 ]
  %31 = phi i32 [ 0, %22 ], [ 1, %18 ], [ 1, %24 ]
  %32 = load ptr, ptr %14, align 8, !tbaa !598
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !356
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 14
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = tail call i32 @vector_type_mode(ptr noundef nonnull %34) #18
  br label %45

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  br label %45

45:                                               ; preds = %40, %38
  %46 = phi i32 [ %39, %38 ], [ %44, %40 ]
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load ptr, ptr %14, align 8, !tbaa !598
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %52 [
    i16 59, label %58
    i16 55, label %58
    i16 56, label %58
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !356
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 262144
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %48, %48, %48, %52
  %59 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !356
  %61 = tail call i64 @int_size_in_bytes(ptr noundef %60) #18
  %62 = trunc i64 %61 to i32
  %63 = add i32 %12, %62
  br label %64

64:                                               ; preds = %45, %52, %58
  %65 = phi i32 [ %63, %58 ], [ %12, %52 ], [ %12, %45 ]
  %66 = add nuw nsw i64 %11, 1
  %67 = icmp ult i64 %66, %9
  %68 = icmp eq i32 %30, 0
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %10, label %70, !llvm.loop !620

70:                                               ; preds = %64
  %71 = shl nsw i32 %65, 1
  %72 = sext i32 %71 to i64
  br label %73

73:                                               ; preds = %70, %6
  %74 = phi i32 [ 0, %6 ], [ %30, %70 ]
  %75 = phi i64 [ 0, %6 ], [ %72, %70 ]
  %76 = load i64, ptr %3, align 8, !tbaa !474
  %77 = icmp sle i64 %76, %75
  %78 = icmp sgt i64 %76, 0
  %79 = and i1 %77, %78
  %80 = select i1 %79, i32 1, i32 %74
  br label %81

81:                                               ; preds = %73, %4
  %82 = phi i32 [ %0, %4 ], [ %80, %73 ]
  ret i32 %82
}

; Function Attrs: optsize
declare i32 @reg_mentioned_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @ix86_return_pops_args(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @promote_function_mode(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #1

; Function Attrs: optsize
declare void @do_pending_stack_adjust() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @precompute_arguments(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !621 !PGOFuncName !622 {
  %3 = alloca i32, align 4
  %4 = load i32, ptr @target_flags, align 4, !tbaa !403
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12, !prof !508

7:                                                ; preds = %2
  %8 = tail call i32 @ix86_cfun_abi() #18
  %9 = icmp eq i32 %8, 1
  %10 = icmp sgt i32 %0, 0
  %11 = and i1 %9, %10
  br i1 %11, label %14, label %93, !prof !623

12:                                               ; preds = %2
  %13 = icmp sgt i32 %0, 0
  br i1 %13, label %14, label %93, !prof !562

14:                                               ; preds = %12, %7
  %15 = zext nneg i32 %0 to i64
  br label %16

16:                                               ; preds = %14, %90
  %17 = phi i64 [ 0, %14 ], [ %91, %90 ]
  %18 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !598
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 59
  br i1 %22, label %23, label %90, !prof !624

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !356
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 262144
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1308, ptr noundef nonnull @.str.1) #18
  %30 = load ptr, ptr %18, align 8, !tbaa !598
  br label %31

31:                                               ; preds = %23, %29
  %32 = phi ptr [ %19, %23 ], [ %30, %29 ]
  %33 = call fastcc ptr @expand_normal(ptr noundef %32) #19
  %34 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !574
  %35 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17, i32 3
  store ptr %33, ptr %35, align 8, !tbaa !625
  %36 = load i64, ptr %25, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 14
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @vector_type_mode(ptr noundef nonnull %25) #18
  br label %46

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  br label %46

46:                                               ; preds = %41, %39
  %47 = phi i32 [ %40, %39 ], [ %45, %41 ]
  %48 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !608
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %90, label %51

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %52 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !607
  store i32 %53, ptr %3, align 4, !tbaa !403
  %54 = load ptr, ptr %34, align 8, !tbaa !574
  %55 = call ptr @convert_modes(i32 noundef %49, i32 noundef %47, ptr noundef %54, i32 noundef %53) #18
  store ptr %55, ptr %34, align 8, !tbaa !574
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %89

59:                                               ; preds = %51
  %60 = load i32, ptr %48, align 8, !tbaa !608
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !356
  %64 = icmp eq i8 %63, 2
  br i1 %64, label %65, label %89

65:                                               ; preds = %59
  %66 = call i32 @promote_mode(ptr noundef nonnull %25, i32 noundef %47, ptr noundef nonnull %3) #18
  %67 = load i32, ptr %48, align 8, !tbaa !608
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %34, align 8, !tbaa !574
  %71 = call ptr @gen_lowpart_SUBREG(i32 noundef %47, ptr noundef %70) #18
  store ptr %71, ptr %35, align 8, !tbaa !625
  %72 = load i32, ptr %71, align 8
  %73 = or i32 %72, 268435456
  store i32 %73, ptr %71, align 8
  %74 = load ptr, ptr %35, align 8, !tbaa !625
  %75 = load i32, ptr %52, align 8, !tbaa !607
  %76 = icmp slt i32 %75, 0
  %77 = load i32, ptr %74, align 8
  br i1 %76, label %78, label %80

78:                                               ; preds = %69
  %79 = or i32 %77, 134217728
  br label %87

80:                                               ; preds = %69
  %81 = and i32 %77, -134217729
  store i32 %81, ptr %74, align 8
  %82 = load i32, ptr %52, align 8, !tbaa !607
  %83 = shl i32 %82, 26
  %84 = and i32 %83, 67108864
  %85 = and i32 %77, -201326593
  %86 = or disjoint i32 %84, %85
  br label %87

87:                                               ; preds = %80, %78
  %88 = phi i32 [ %86, %80 ], [ %79, %78 ]
  store i32 %88, ptr %74, align 8
  br label %89

89:                                               ; preds = %87, %65, %59, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  br label %90

90:                                               ; preds = %46, %89, %16
  %91 = add nuw nsw i64 %17, 1
  %92 = icmp eq i64 %91, %15
  br i1 %92, label %93, label %16, !prof !566, !llvm.loop !626

93:                                               ; preds = %90, %12, %7
  ret void
}

; Function Attrs: optsize
declare void @stack_protect_epilogue() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compute_argument_block_size(i32 noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !421 !PGOFuncName !627 {
  %6 = load i64, ptr %1, align 8, !tbaa !474
  %7 = load i32, ptr @target_flags, align 4, !tbaa !403
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15, !prof !466

10:                                               ; preds = %5
  %11 = tail call i32 @ix86_cfun_abi() #18
  %12 = icmp eq i32 %11, 1
  %13 = icmp sgt i32 %4, 32
  %14 = and i1 %13, %12
  br i1 %14, label %17, label %18, !prof !628

15:                                               ; preds = %5
  %16 = icmp sgt i32 %4, 32
  br i1 %16, label %17, label %18, !prof !629

17:                                               ; preds = %10, %15
  br label %18

18:                                               ; preds = %17, %15, %10
  %19 = phi i32 [ 32, %17 ], [ %4, %15 ], [ %4, %10 ]
  %20 = getelementptr inbounds %struct.args_size, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !463
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23, !prof !451

23:                                               ; preds = %18
  %24 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !397
  %25 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %24, ptr noundef nonnull %21) #18
  %26 = load i64, ptr %1, align 8, !tbaa !474
  %27 = tail call ptr @size_int_kind(i64 noundef %26, i32 noundef 1) #18
  %28 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %25, ptr noundef %27) #18
  store ptr %28, ptr %20, align 8, !tbaa !463
  store i64 0, ptr %1, align 8, !tbaa !474
  %29 = sdiv i32 %19, 8
  %30 = icmp sgt i32 %19, 15
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %33 = add nsw i32 %29, -1
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1231, ptr noundef nonnull @.str.1) #18
  %37 = load ptr, ptr %20, align 8, !tbaa !463
  br label %38

38:                                               ; preds = %31, %36
  %39 = phi ptr [ %28, %31 ], [ %37, %36 ]
  %40 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %39, i32 noundef %29) #18
  store ptr %40, ptr %20, align 8, !tbaa !463
  br label %41

41:                                               ; preds = %38, %23
  %42 = phi ptr [ %40, %38 ], [ %28, %23 ]
  %43 = icmp sgt i32 %0, 0
  br i1 %43, label %44, label %87

44:                                               ; preds = %41
  %45 = zext nneg i32 %0 to i64
  %46 = tail call ptr @size_int_kind(i64 noundef %45, i32 noundef 1) #18
  %47 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 81, ptr noundef %42, ptr noundef %46) #18
  store ptr %47, ptr %20, align 8, !tbaa !463
  %48 = icmp eq ptr %2, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !356
  br label %52

52:                                               ; preds = %44, %49
  %53 = phi ptr [ %51, %49 ], [ %3, %44 ]
  %54 = tail call i32 @ix86_function_type_abi(ptr noundef %53) #18
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %87, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %20, align 8, !tbaa !463
  %58 = tail call ptr @size_int_kind(i64 noundef %45, i32 noundef 1) #18
  %59 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %57, ptr noundef %58) #18
  store ptr %59, ptr %20, align 8, !tbaa !463
  br label %87

60:                                               ; preds = %18
  %61 = sdiv i32 %19, 8
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 1)
  %63 = load i64, ptr %1, align 8, !tbaa !474
  %64 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %65 = sext i32 %64 to i64
  %66 = zext nneg i32 %62 to i64
  %67 = add i64 %63, %66
  %68 = add i64 %67, %65
  %69 = freeze i64 %68
  %70 = add i64 %69, -1
  %71 = srem i64 %70, %66
  %72 = add nsw i64 %71, %65
  %73 = sub i64 %70, %72
  %74 = sext i32 %0 to i64
  %75 = tail call i64 @llvm.smax.i64(i64 %73, i64 %74)
  store i64 %75, ptr %1, align 8, !tbaa !474
  %76 = icmp eq ptr %2, null
  br i1 %76, label %80, label %77, !prof !432

77:                                               ; preds = %60
  %78 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !356
  br label %80

80:                                               ; preds = %60, %77
  %81 = phi ptr [ %79, %77 ], [ %3, %60 ]
  %82 = tail call i32 @ix86_function_type_abi(ptr noundef %81) #18
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %87, label %84, !prof !466

84:                                               ; preds = %80
  %85 = load i64, ptr %1, align 8, !tbaa !474
  %86 = sub nsw i64 %85, %74
  store i64 %86, ptr %1, align 8, !tbaa !474
  br label %87

87:                                               ; preds = %80, %84, %41, %56, %52
  %88 = trunc i64 %6 to i32
  ret i32 %88
}

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @emit_stack_save(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @push_block(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #0 !prof !630 !PGOFuncName !631 {
  %2 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc i32 @combine_pending_stack_adjustment_and_call(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #11 !prof !418 !PGOFuncName !632 {
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %5 = add nsw i32 %4, %0
  %6 = urem i32 %5, %2
  %7 = zext nneg i32 %6 to i64
  %8 = load i32, ptr @x_rtl, align 8, !tbaa !496
  %9 = urem i32 %8, %2
  %10 = zext nneg i32 %9 to i64
  %11 = icmp ult i32 %2, 2
  %12 = icmp eq i32 %6, %9
  %13 = select i1 %11, i1 true, i1 %12
  %14 = zext nneg i32 %2 to i64
  %15 = sub nsw i64 %14, %7
  %16 = add nsw i64 %15, %10
  %17 = select i1 %13, i64 0, i64 %16
  %18 = sext i32 %0 to i64
  %19 = add nsw i64 %17, %18
  store i64 %19, ptr %1, align 8, !tbaa !474
  %20 = trunc i64 %17 to i32
  %21 = sub i32 %8, %20
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @allocate_dynamic_stack_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_argument_addresses(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !421 !PGOFuncName !633 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %164, label %5, !prof !466

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 49
  br i1 %8, label %9, label %18, !prof !466

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !356
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !356
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !356
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi i64 [ %17, %9 ], [ 0, %5 ]
  %20 = phi ptr [ %11, %9 ], [ %1, %5 ]
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %164, !prof !493

22:                                               ; preds = %18
  %23 = zext nneg i32 %2 to i64
  br label %24

24:                                               ; preds = %22, %161
  %25 = phi i64 [ 0, %22 ], [ %162, %161 ]
  %26 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25
  %27 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10
  %28 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 1
  %29 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !634
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35, !prof !516

32:                                               ; preds = %24
  %33 = load i64, ptr %28, align 8, !tbaa !635
  %34 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #18
  br label %42

35:                                               ; preds = %24
  %36 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !397
  %37 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %36, ptr noundef nonnull %30) #18
  %38 = load i64, ptr %28, align 8, !tbaa !635
  %39 = tail call ptr @size_int_kind(i64 noundef %38, i32 noundef 1) #18
  %40 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %37, ptr noundef %39) #18
  %41 = tail call fastcc ptr @expand_normal(ptr noundef %40) #19
  br label %42

42:                                               ; preds = %35, %32
  %43 = phi ptr [ %34, %32 ], [ %41, %35 ]
  %44 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 2
  %45 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 2, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !636
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51, !prof !516

48:                                               ; preds = %42
  %49 = load i64, ptr %44, align 8, !tbaa !637
  %50 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %49) #18
  br label %58

51:                                               ; preds = %42
  %52 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !397
  %53 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %52, ptr noundef nonnull %46) #18
  %54 = load i64, ptr %44, align 8, !tbaa !637
  %55 = tail call ptr @size_int_kind(i64 noundef %54, i32 noundef 1) #18
  %56 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %53, ptr noundef %55) #18
  %57 = tail call fastcc ptr @expand_normal(ptr noundef %56) #19
  br label %58

58:                                               ; preds = %51, %48
  %59 = phi ptr [ %50, %48 ], [ %57, %51 ]
  %60 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !513
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71, !prof !516

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !520
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67, !prof !521

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 8
  %69 = load i32, ptr %68, align 4, !tbaa !534
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %161, label %71, !prof !522

71:                                               ; preds = %67, %63, %58
  %72 = load i32, ptr %43, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 30
  br i1 %74, label %75, label %79, !prof !523

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !356
  %78 = tail call ptr @plus_constant(ptr noundef %20, i64 noundef %77) #18
  br label %81

79:                                               ; preds = %71
  %80 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %20, ptr noundef nonnull %43) #18
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi ptr [ %78, %75 ], [ %80, %79 ]
  %83 = tail call ptr @plus_constant(ptr noundef %82, i64 noundef %19) #18
  %84 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 8
  %85 = load i32, ptr %84, align 4, !tbaa !534
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87, !prof !523

87:                                               ; preds = %81
  %88 = load i64, ptr %27, align 8, !tbaa !565
  %89 = trunc i64 %88 to i32
  %90 = shl i32 %89, 3
  %91 = tail call i32 @mode_for_size(i32 noundef %90, i32 noundef 2, i32 noundef 1) #18
  %92 = tail call ptr @gen_rtx_MEM(i32 noundef %91, ptr noundef %83) #18
  %93 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 11
  store ptr %92, ptr %93, align 8, !tbaa !530
  %94 = and i64 %88, 4294967295
  %95 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %94) #18
  tail call void @set_mem_size(ptr noundef %92, ptr noundef %95) #18
  br label %104

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !608
  %99 = tail call ptr @gen_rtx_MEM(i32 noundef %98, ptr noundef %83) #18
  %100 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 11
  store ptr %99, ptr %100, align 8, !tbaa !530
  %101 = load ptr, ptr %26, align 8, !tbaa !598
  %102 = getelementptr inbounds %struct.tree_common, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !356
  tail call void @set_mem_attributes(ptr noundef %99, ptr noundef %103, i32 noundef 1) #18
  br label %104

104:                                              ; preds = %96, %87
  %105 = phi i64 [ %88, %87 ], [ 0, %96 ]
  %106 = phi i32 [ %91, %87 ], [ 0, %96 ]
  %107 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !638
  %109 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !639
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %124, !prof !640

112:                                              ; preds = %104
  %113 = load i32, ptr %43, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 30
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !356
  %119 = trunc i64 %118 to i32
  %120 = shl i32 %119, 3
  %121 = or i32 %120, %108
  %122 = sub i32 0, %121
  %123 = and i32 %121, %122
  br label %124

124:                                              ; preds = %104, %112, %116
  %125 = phi i32 [ %123, %116 ], [ 8, %112 ], [ %108, %104 ]
  %126 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 11
  %127 = load ptr, ptr %126, align 8, !tbaa !530
  tail call void @set_mem_align(ptr noundef %127, i32 noundef %125) #18
  %128 = load i32, ptr %59, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 30
  br i1 %130, label %131, label %135, !prof !523

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !356
  %134 = tail call ptr @plus_constant(ptr noundef %20, i64 noundef %133) #18
  br label %137

135:                                              ; preds = %124
  %136 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %20, ptr noundef nonnull %59) #18
  br label %137

137:                                              ; preds = %135, %131
  %138 = phi ptr [ %134, %131 ], [ %136, %135 ]
  %139 = tail call ptr @plus_constant(ptr noundef %138, i64 noundef %19) #18
  %140 = load i32, ptr %84, align 4, !tbaa !534
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142, !prof !523

142:                                              ; preds = %137
  %143 = tail call ptr @gen_rtx_MEM(i32 noundef %106, ptr noundef %139) #18
  %144 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 12
  store ptr %143, ptr %144, align 8, !tbaa !564
  %145 = and i64 %105, 4294967295
  %146 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %145) #18
  tail call void @set_mem_size(ptr noundef %143, ptr noundef %146) #18
  br label %155

147:                                              ; preds = %137
  %148 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !608
  %150 = tail call ptr @gen_rtx_MEM(i32 noundef %149, ptr noundef %139) #18
  %151 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 12
  store ptr %150, ptr %151, align 8, !tbaa !564
  %152 = load ptr, ptr %26, align 8, !tbaa !598
  %153 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !356
  tail call void @set_mem_attributes(ptr noundef %150, ptr noundef %154, i32 noundef 1) #18
  br label %155

155:                                              ; preds = %147, %142
  %156 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 12
  %157 = load ptr, ptr %156, align 8, !tbaa !564
  %158 = load i32, ptr %107, align 4, !tbaa !638
  tail call void @set_mem_align(ptr noundef %157, i32 noundef %158) #18
  %159 = load ptr, ptr %126, align 8, !tbaa !530
  tail call void @set_mem_alias_set(ptr noundef %159, i32 noundef 0) #18
  %160 = load ptr, ptr %156, align 8, !tbaa !564
  tail call void @set_mem_alias_set(ptr noundef %160, i32 noundef 0) #18
  br label %161

161:                                              ; preds = %67, %155
  %162 = add nuw nsw i64 %25, 1
  %163 = icmp eq i64 %162, %23
  br i1 %163, label %164, label %24, !prof !511, !llvm.loop !641

164:                                              ; preds = %161, %18, %3
  ret void
}

; Function Attrs: optsize
declare void @anti_adjust_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rtx_for_function_call(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !421 !PGOFuncName !642 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4, !prof !432

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 16777216
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %14, !prof !643

8:                                                ; preds = %4
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !397
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %14, label %11, !prof !644

11:                                               ; preds = %8
  tail call void @assemble_external(ptr noundef nonnull %0) #18
  %12 = load i64, ptr %0, align 8
  %13 = or i64 %12, 16777216
  store i64 %13, ptr %0, align 8
  br label %14

14:                                               ; preds = %11, %8, %4
  %15 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !356
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20, !prof !645

18:                                               ; preds = %14
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #18
  %19 = load ptr, ptr %15, align 8, !tbaa !356
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi ptr [ %19, %18 ], [ %16, %14 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !356
  br label %26

24:                                               ; preds = %2
  tail call void @push_temp_slots() #18
  %25 = tail call fastcc ptr @expand_normal(ptr noundef %1) #19
  tail call void @pop_temp_slots() #18
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %23, %20 ], [ %25, %24 ]
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @hard_function_value(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @precompute_register_parameters(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !421 !PGOFuncName !646 {
  store i32 0, ptr %2, align 4, !tbaa !403
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %125, !prof !493

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  br label %7

7:                                                ; preds = %5, %122
  %8 = phi i64 [ 0, %5 ], [ %123, %122 ]
  %9 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8
  %10 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !520
  %12 = icmp eq ptr %11, null
  br i1 %12, label %122, label %13, !prof !521

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !513
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %122, !prof !522

17:                                               ; preds = %13
  store i32 1, ptr %2, align 4, !tbaa !403
  %18 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !574
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25, !prof !522

21:                                               ; preds = %17
  tail call void @push_temp_slots() #18
  %22 = load ptr, ptr %9, align 8, !tbaa !598
  %23 = tail call fastcc ptr @expand_normal(ptr noundef %22) #19
  store ptr %23, ptr %18, align 8, !tbaa !574
  tail call void @preserve_temp_slots(ptr noundef %23) #18
  tail call void @pop_temp_slots() #18
  %24 = load ptr, ptr %18, align 8, !tbaa !574
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi ptr [ %24, %21 ], [ %19, %17 ]
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !403
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %41, !prof !647

33:                                               ; preds = %25
  %34 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %26) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %41, !prof !648

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !608
  %39 = load ptr, ptr %18, align 8, !tbaa !574
  %40 = tail call ptr @force_reg(i32 noundef %38, ptr noundef %39) #18
  store ptr %40, ptr %18, align 8, !tbaa !574
  br label %41

41:                                               ; preds = %36, %33, %25
  %42 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !608
  %44 = load ptr, ptr %9, align 8, !tbaa !598
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !356
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 14
  br i1 %49, label %50, label %52, !prof !612

50:                                               ; preds = %41
  %51 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #18
  br label %57

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %54, 16
  %56 = and i32 %55, 255
  br label %57

57:                                               ; preds = %52, %50
  %58 = phi i32 [ %51, %50 ], [ %56, %52 ]
  %59 = icmp eq i32 %43, %58
  br i1 %59, label %81, label %60, !prof !522

60:                                               ; preds = %57
  %61 = load i32, ptr %42, align 8, !tbaa !608
  %62 = load ptr, ptr %9, align 8, !tbaa !598
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !356
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 14
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = tail call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %75

70:                                               ; preds = %60
  %71 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = lshr i32 %72, 16
  %74 = and i32 %73, 255
  br label %75

75:                                               ; preds = %70, %68
  %76 = phi i32 [ %69, %68 ], [ %74, %70 ]
  %77 = load ptr, ptr %18, align 8, !tbaa !574
  %78 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !607
  %80 = tail call ptr @convert_modes(i32 noundef %61, i32 noundef %76, ptr noundef %77, i32 noundef %79) #18
  store ptr %80, ptr %18, align 8, !tbaa !574
  br label %81

81:                                               ; preds = %75, %57
  %82 = load ptr, ptr %10, align 8, !tbaa !520
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 15
  br i1 %85, label %86, label %95, !prof !612

86:                                               ; preds = %81
  %87 = load ptr, ptr %9, align 8, !tbaa !598
  %88 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !356
  %90 = load ptr, ptr %18, align 8, !tbaa !574
  %91 = tail call i64 @int_size_in_bytes(ptr noundef %89) #18
  %92 = trunc i64 %91 to i32
  %93 = tail call ptr @emit_group_load_into_temps(ptr noundef nonnull %82, ptr noundef %90, ptr noundef %89, i32 noundef %92) #18
  %94 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 6
  store ptr %93, ptr %94, align 8, !tbaa !649
  br label %122

95:                                               ; preds = %81
  %96 = load ptr, ptr %18, align 8, !tbaa !574
  %97 = load i32, ptr %96, align 8
  %98 = trunc i32 %97 to i16
  switch i16 %98, label %105 [
    i16 37, label %122
    i16 39, label %99
  ], !prof !650

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !356
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 37
  br i1 %104, label %122, label %105

105:                                              ; preds = %95, %99
  %106 = load i32, ptr %42, align 8, !tbaa !608
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %122, label %108, !prof !651

108:                                              ; preds = %105
  %109 = tail call zeroext i8 @optimize_insn_for_speed_p() #18
  %110 = tail call i32 @rtx_cost(ptr noundef nonnull %96, i32 noundef 23, i8 noundef zeroext %109) #18
  %111 = icmp sgt i32 %110, 4
  br i1 %111, label %112, label %122, !prof !652

112:                                              ; preds = %108
  %113 = load i32, ptr %2, align 4, !tbaa !403
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118, !prof !653

115:                                              ; preds = %112
  %116 = load i32, ptr @optimize, align 4, !tbaa !403
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115, %112
  %119 = load i32, ptr %42, align 8, !tbaa !608
  %120 = load ptr, ptr %18, align 8, !tbaa !574
  %121 = tail call ptr @copy_to_mode_reg(i32 noundef %119, ptr noundef %120) #18
  store ptr %121, ptr %18, align 8, !tbaa !574
  br label %122

122:                                              ; preds = %95, %7, %13, %99, %105, %108, %115, %118, %86
  %123 = add nuw nsw i64 %8, 1
  %124 = icmp eq i64 %123, %6
  br i1 %124, label %125, label %7, !prof !511, !llvm.loop !654

125:                                              ; preds = %122, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @save_fixed_argument_area(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !655 !PGOFuncName !656 {
  %5 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  %6 = icmp slt i32 %5, %0
  br i1 %6, label %7, label %8, !prof !657

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %4
  %9 = phi i32 [ %5, %7 ], [ %0, %4 ]
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %64, !prof !658

11:                                               ; preds = %8
  %12 = load ptr, ptr @stack_usage_map, align 8, !tbaa !397
  br label %13

13:                                               ; preds = %11, %60
  %14 = phi i64 [ 0, %11 ], [ %62, %60 ]
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !356
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %60, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @llvm.smin.i32(i32 %5, i32 %0)
  %20 = sext i32 %19 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %20, %18 ], [ %23, %21 ]
  %23 = add nsw i64 %22, -1
  %24 = getelementptr inbounds i8, ptr %12, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !356
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %21, label %27, !llvm.loop !659

27:                                               ; preds = %21
  %28 = trunc i64 %14 to i32
  %29 = trunc i64 %23 to i32
  store i32 %28, ptr %2, align 4, !tbaa !403
  store i32 %29, ptr %3, align 4, !tbaa !403
  %30 = sub nsw i32 %29, %28
  %31 = add nsw i32 %30, 1
  %32 = shl nsw i32 %31, 3
  %33 = tail call i32 @mode_for_size(i32 noundef %32, i32 noundef 2, i32 noundef 1) #18
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !356
  %37 = zext i8 %36 to i32
  %38 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !403
  %39 = and i32 %38, 32
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 32, i32 64
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %37)
  %43 = add nuw i32 %42, 2147483647
  %44 = and i32 %43, %28
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 %33, i32 1
  %47 = tail call ptr @plus_constant(ptr noundef %1, i64 noundef %14) #18
  %48 = tail call ptr @memory_address_addr_space(i32 noundef %46, ptr noundef %47, i8 noundef zeroext 0) #18
  %49 = tail call ptr @gen_rtx_MEM(i32 noundef %46, ptr noundef %48) #18
  tail call void @set_mem_align(ptr noundef %49, i32 noundef 32) #18
  %50 = icmp eq i32 %46, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %27
  %52 = sext i32 %31 to i64
  %53 = tail call ptr @assign_stack_temp(i32 noundef 1, i64 noundef %52, i32 noundef 0) #18
  %54 = tail call ptr @validize_mem(ptr noundef %53) #18
  %55 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %52) #18
  %56 = tail call ptr @emit_block_move(ptr noundef %54, ptr noundef %49, ptr noundef %55, i32 noundef 2) #18
  br label %64

57:                                               ; preds = %27
  %58 = tail call ptr @gen_reg_rtx(i32 noundef %46) #18
  %59 = tail call ptr @emit_move_insn(ptr noundef %58, ptr noundef %49) #18
  br label %64

60:                                               ; preds = %13
  %61 = zext nneg i32 %9 to i64
  %62 = add nuw nsw i64 %14, 1
  %63 = icmp eq i64 %62, %61
  br i1 %63, label %64, label %13, !prof !546, !llvm.loop !660

64:                                               ; preds = %60, %8, %51, %57
  %65 = phi ptr [ %53, %51 ], [ %58, %57 ], [ null, %8 ], [ null, %60 ]
  ret ptr %65
}

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @store_one_arg(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !661 !PGOFuncName !662 {
  %6 = load ptr, ptr %0, align 8, !tbaa !598
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %479, label %10, !prof !640

10:                                               ; preds = %5
  tail call void @push_temp_slots() #18
  %11 = load i32, ptr @target_flags, align 4, !tbaa !403
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20, !prof !640

14:                                               ; preds = %10
  %15 = tail call i32 @ix86_cfun_abi() #18
  %16 = icmp eq i32 %15, 1
  %17 = and i32 %2, 256
  %18 = icmp eq i32 %17, 0
  %19 = and i1 %18, %16
  br i1 %19, label %23, label %110, !prof !663

20:                                               ; preds = %10
  %21 = and i32 %2, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %110, !prof !664

23:                                               ; preds = %14, %20
  %24 = icmp eq ptr %1, null
  %25 = icmp ne i32 %3, 0
  %26 = or i1 %24, %25
  br i1 %26, label %110, label %27, !prof !665

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !530
  %30 = icmp eq ptr %29, null
  br i1 %30, label %110, label %31, !prof !666

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !564
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !356
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 49
  br i1 %38, label %39, label %45, !prof !667

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !356
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !356
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %31, %39
  %46 = phi i32 [ %44, %39 ], [ 0, %31 ]
  %47 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %48 = load i64, ptr %47, align 8, !tbaa !565
  %49 = trunc i64 %48 to i32
  %50 = add i32 %46, %49
  %51 = icmp slt i32 %46, %4
  br i1 %51, label %52, label %53, !prof !666

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi i32 [ %4, %52 ], [ %46, %45 ]
  %55 = icmp slt i32 %54, %50
  br i1 %55, label %56, label %110, !prof !668

56:                                               ; preds = %53
  %57 = load ptr, ptr @stack_usage_map, align 8, !tbaa !397
  %58 = tail call i32 @llvm.smax.i32(i32 %46, i32 %4)
  %59 = sext i32 %58 to i64
  %60 = add i32 %50, %58
  %61 = sub i32 %60, %54
  br label %66

62:                                               ; preds = %66
  %63 = add nsw i64 %67, 1
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %110, label %66, !prof !669, !llvm.loop !670

66:                                               ; preds = %56, %62
  %67 = phi i64 [ %59, %56 ], [ %63, %62 ]
  %68 = getelementptr inbounds i8, ptr %57, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !356
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %62, label %71, !prof !671

71:                                               ; preds = %66
  %72 = shl i32 %49, 3
  %73 = tail call i32 @mode_for_size(i32 noundef %72, i32 noundef 2, i32 noundef 1) #18
  %74 = load ptr, ptr %32, align 8, !tbaa !564
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !356
  %77 = tail call ptr @memory_address_addr_space(i32 noundef %73, ptr noundef %76, i8 noundef zeroext 0) #18
  %78 = tail call ptr @gen_rtx_MEM(i32 noundef %73, ptr noundef %77) #18
  %79 = icmp eq i32 %73, 1
  br i1 %79, label %80, label %106

80:                                               ; preds = %71
  %81 = load ptr, ptr %0, align 8, !tbaa !598
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !356
  %84 = load i64, ptr %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = lshr i32 %85, 18
  %87 = and i32 %86, 2
  %88 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = lshr i32 %89, 11
  %91 = and i32 %90, 4
  %92 = lshr i64 %84, 48
  %93 = trunc i64 %92 to i32
  %94 = and i32 %93, 65280
  %95 = or disjoint i32 %91, %87
  %96 = or disjoint i32 %95, %94
  %97 = or disjoint i32 %96, 1
  %98 = tail call ptr @build_qualified_type(ptr noundef nonnull %83, i32 noundef %97) #18
  %99 = tail call ptr @assign_temp(ptr noundef %98, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  %100 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 13
  store ptr %99, ptr %100, align 8, !tbaa !560
  tail call void @preserve_temp_slots(ptr noundef %99) #18
  %101 = load ptr, ptr %100, align 8, !tbaa !560
  %102 = tail call ptr @validize_mem(ptr noundef %101) #18
  %103 = load i64, ptr %47, align 8, !tbaa !565
  %104 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %103) #18
  %105 = tail call ptr @emit_block_move(ptr noundef %102, ptr noundef %78, ptr noundef %104, i32 noundef 2) #18
  br label %110

106:                                              ; preds = %71
  %107 = tail call ptr @gen_reg_rtx(i32 noundef %73) #18
  %108 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 13
  store ptr %107, ptr %108, align 8, !tbaa !560
  %109 = tail call ptr @emit_move_insn(ptr noundef %107, ptr noundef %78) #18
  br label %110

110:                                              ; preds = %62, %53, %80, %106, %23, %27, %20, %14
  %111 = phi i32 [ 0, %20 ], [ 0, %23 ], [ 0, %27 ], [ 0, %14 ], [ %50, %106 ], [ %50, %80 ], [ %50, %53 ], [ %50, %62 ]
  %112 = phi i32 [ 0, %20 ], [ 0, %23 ], [ 0, %27 ], [ 0, %14 ], [ %46, %106 ], [ %46, %80 ], [ %46, %53 ], [ %46, %62 ]
  %113 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !513
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %129, !prof !523

116:                                              ; preds = %110
  %117 = and i32 %2, 256
  %118 = icmp eq i32 %117, 0
  %119 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 5
  %120 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 4
  %121 = select i1 %118, ptr %120, ptr %119, !prof !664
  %122 = load ptr, ptr %121, align 8, !tbaa !397
  %123 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 8
  %124 = load i32, ptr %123, align 4, !tbaa !534
  %125 = icmp eq ptr %122, null
  br i1 %125, label %129, label %126, !prof !672

126:                                              ; preds = %116
  %127 = icmp eq i32 %124, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4085, ptr noundef nonnull @.str.1) #18
  br label %129

129:                                              ; preds = %110, %116, %126, %128
  %130 = phi ptr [ null, %116 ], [ %122, %126 ], [ %122, %128 ], [ null, %110 ]
  %131 = phi i32 [ %124, %116 ], [ %124, %126 ], [ 0, %128 ], [ 0, %110 ]
  %132 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 15
  %133 = load i32, ptr %132, align 8, !tbaa !673
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135, !prof !523

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %129
  %137 = phi ptr [ null, %135 ], [ %130, %129 ]
  %138 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !574
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %215, !prof !523

141:                                              ; preds = %136
  %142 = load i32, ptr %113, align 8, !tbaa !513
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144, !prof !523

144:                                              ; preds = %141
  %145 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !403
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr @stack_arg_under_construction, align 4, !tbaa !403
  br label %147

147:                                              ; preds = %144, %141
  %148 = icmp eq i32 %131, 0
  br i1 %148, label %149, label %170, !prof !523

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !356
  %152 = load i64, ptr %151, align 8
  %153 = and i64 %152, 65535
  %154 = icmp eq i64 %153, 14
  br i1 %154, label %155, label %157, !prof !640

155:                                              ; preds = %149
  %156 = tail call i32 @vector_type_mode(ptr noundef nonnull %151) #18
  br label %162

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.tree_type, ptr %151, i64 0, i32 6
  %159 = load i32, ptr %158, align 4
  %160 = lshr i32 %159, 16
  %161 = and i32 %160, 255
  br label %162

162:                                              ; preds = %157, %155
  %163 = phi i32 [ %156, %155 ], [ %161, %157 ]
  %164 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %165 = load i32, ptr %164, align 8, !tbaa !608
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %170, !prof !523

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %169 = load ptr, ptr %168, align 8, !tbaa !530
  br label %170

170:                                              ; preds = %147, %162, %167
  %171 = phi ptr [ %169, %167 ], [ null, %162 ], [ null, %147 ]
  %172 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %6, ptr noundef %171, i32 noundef 0, i32 noundef 1) #19
  store ptr %172, ptr %138, align 8, !tbaa !574
  %173 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !608
  %175 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !356
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 14
  br i1 %179, label %180, label %182, !prof !640

180:                                              ; preds = %170
  %181 = tail call i32 @vector_type_mode(ptr noundef nonnull %176) #18
  br label %187

182:                                              ; preds = %170
  %183 = getelementptr inbounds %struct.tree_type, ptr %176, i64 0, i32 6
  %184 = load i32, ptr %183, align 4
  %185 = lshr i32 %184, 16
  %186 = and i32 %185, 255
  br label %187

187:                                              ; preds = %182, %180
  %188 = phi i32 [ %181, %180 ], [ %186, %182 ]
  %189 = icmp eq i32 %174, %188
  br i1 %189, label %209, label %190, !prof !523

190:                                              ; preds = %187
  %191 = load i32, ptr %173, align 8, !tbaa !608
  %192 = load ptr, ptr %175, align 8, !tbaa !356
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 14
  br i1 %195, label %196, label %198

196:                                              ; preds = %190
  %197 = tail call i32 @vector_type_mode(ptr noundef nonnull %192) #18
  br label %203

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.tree_type, ptr %192, i64 0, i32 6
  %200 = load i32, ptr %199, align 4
  %201 = lshr i32 %200, 16
  %202 = and i32 %201, 255
  br label %203

203:                                              ; preds = %198, %196
  %204 = phi i32 [ %197, %196 ], [ %202, %198 ]
  %205 = load ptr, ptr %138, align 8, !tbaa !574
  %206 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 7
  %207 = load i32, ptr %206, align 8, !tbaa !607
  %208 = tail call ptr @convert_modes(i32 noundef %191, i32 noundef %204, ptr noundef %205, i32 noundef %207) #18
  store ptr %208, ptr %138, align 8, !tbaa !574
  br label %209

209:                                              ; preds = %203, %187
  %210 = load i32, ptr %113, align 8, !tbaa !513
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %215, label %212, !prof !523

212:                                              ; preds = %209
  %213 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !403
  %214 = add nsw i32 %213, -1
  store i32 %214, ptr @stack_arg_under_construction, align 4, !tbaa !403
  br label %215

215:                                              ; preds = %209, %212, %136
  %216 = and i32 %2, 256
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %231, label %218, !prof !664

218:                                              ; preds = %215
  %219 = load ptr, ptr %138, align 8, !tbaa !574
  %220 = load i32, ptr %219, align 8
  %221 = and i32 %220, 65535
  %222 = icmp eq i32 %221, 43
  br i1 %222, label %223, label %231, !prof !674

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.rtx_def, ptr %219, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !356
  %226 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %227 = load i64, ptr %226, align 8, !tbaa !565
  %228 = tail call fastcc zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef %225, i64 noundef %227) #19, !range !385
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %231, label %230, !prof !675

230:                                              ; preds = %223
  br label %231

231:                                              ; preds = %230, %223, %218, %215
  %232 = phi i32 [ 1, %230 ], [ 0, %223 ], [ 0, %218 ], [ 0, %215 ]
  %233 = and i32 %2, 32
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %236, label %235, !prof !676

235:                                              ; preds = %231
  tail call void @do_pending_stack_adjust() #18
  br label %236

236:                                              ; preds = %235, %231
  %237 = load ptr, ptr %138, align 8, !tbaa !574
  %238 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %239 = load ptr, ptr %238, align 8, !tbaa !530
  %240 = icmp eq ptr %237, %239
  br i1 %240, label %433, label %241, !prof !677

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %243 = load i32, ptr %242, align 8, !tbaa !608
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %283, label %245, !prof !678

245:                                              ; preds = %241
  %246 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 5
  %247 = load i32, ptr %246, align 4, !tbaa !638
  %248 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %249 = load ptr, ptr %248, align 8, !tbaa !356
  %250 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %251 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !634
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %257, !prof !679

254:                                              ; preds = %245
  %255 = load i64, ptr %250, align 8, !tbaa !635
  %256 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %255) #18
  br label %264

257:                                              ; preds = %245
  %258 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !397
  %259 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %258, ptr noundef nonnull %252) #18
  %260 = load i64, ptr %250, align 8, !tbaa !635
  %261 = tail call ptr @size_int_kind(i64 noundef %260, i32 noundef 1) #18
  %262 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %259, ptr noundef %261) #18
  %263 = tail call fastcc ptr @expand_normal(ptr noundef %262) #19
  br label %264

264:                                              ; preds = %257, %254
  %265 = phi ptr [ %256, %254 ], [ %263, %257 ]
  %266 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3
  %267 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !680
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %273, !prof !679

270:                                              ; preds = %264
  %271 = load i64, ptr %266, align 8, !tbaa !681
  %272 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %271) #18
  br label %280

273:                                              ; preds = %264
  %274 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !397
  %275 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %274, ptr noundef nonnull %268) #18
  %276 = load i64, ptr %266, align 8, !tbaa !681
  %277 = tail call ptr @size_int_kind(i64 noundef %276, i32 noundef 1) #18
  %278 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %275, ptr noundef %277) #18
  %279 = tail call fastcc ptr @expand_normal(ptr noundef %278) #19
  br label %280

280:                                              ; preds = %273, %270
  %281 = phi ptr [ %272, %270 ], [ %279, %273 ]
  tail call void @emit_push_insn(ptr noundef %237, i32 noundef %243, ptr noundef %249, ptr noundef null, i32 noundef %247, i32 noundef %131, ptr noundef %137, i32 noundef 0, ptr noundef %1, ptr noundef %265, i32 noundef %4, ptr noundef %281) #18
  %282 = icmp eq i32 %131, 0
  br i1 %282, label %429, label %433, !prof !679

283:                                              ; preds = %241
  %284 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %285 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 0, i32 1
  %286 = load ptr, ptr %285, align 8, !tbaa !617
  %287 = icmp eq ptr %286, null
  br i1 %287, label %295, label %288, !prof !682

288:                                              ; preds = %283
  %289 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !397
  %290 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %289, ptr noundef nonnull %286) #18
  %291 = load i64, ptr %284, align 8, !tbaa !565
  %292 = tail call ptr @size_int_kind(i64 noundef %291, i32 noundef 1) #18
  %293 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %290, ptr noundef %292) #18
  %294 = tail call fastcc ptr @expand_normal(ptr noundef %293) #19
  br label %319

295:                                              ; preds = %283
  %296 = load i64, ptr %284, align 8, !tbaa !565
  %297 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !356
  %299 = tail call i64 @int_size_in_bytes(ptr noundef %298) #18
  %300 = sub nsw i64 %296, %299
  %301 = trunc i64 %300 to i32
  %302 = add i32 %131, %301
  %303 = load ptr, ptr %297, align 8, !tbaa !356
  %304 = tail call ptr @size_in_bytes(ptr noundef %303) #18
  %305 = load ptr, ptr @sizetype_tab, align 16, !tbaa !397
  %306 = load i64, ptr %305, align 8
  %307 = and i64 %306, 65535
  %308 = icmp eq i64 %307, 14
  br i1 %308, label %309, label %311, !prof !683

309:                                              ; preds = %295
  %310 = tail call i32 @vector_type_mode(ptr noundef nonnull %305) #18
  br label %316

311:                                              ; preds = %295
  %312 = getelementptr inbounds %struct.tree_type, ptr %305, i64 0, i32 6
  %313 = load i32, ptr %312, align 4
  %314 = lshr i32 %313, 16
  %315 = and i32 %314, 255
  br label %316

316:                                              ; preds = %311, %309
  %317 = phi i32 [ %310, %309 ], [ %315, %311 ]
  %318 = tail call fastcc ptr @expand_expr(ptr noundef %304, ptr noundef null, i32 noundef %317, i32 noundef 0) #19
  br label %319

319:                                              ; preds = %316, %288
  %320 = phi i32 [ 0, %288 ], [ %302, %316 ]
  %321 = phi ptr [ %294, %288 ], [ %318, %316 ]
  %322 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 5
  %323 = load i32, ptr %322, align 4, !tbaa !638
  br i1 %217, label %388, label %324, !prof !682

324:                                              ; preds = %319
  %325 = load ptr, ptr %138, align 8, !tbaa !574
  %326 = load i32, ptr %325, align 8
  %327 = and i32 %326, 65535
  %328 = icmp eq i32 %327, 43
  br i1 %328, label %329, label %388

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !356
  %332 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !504
  %333 = icmp eq ptr %331, %332
  br i1 %333, label %353, label %334

334:                                              ; preds = %329
  %335 = load i32, ptr %331, align 8
  %336 = and i32 %335, 65535
  %337 = icmp eq i32 %336, 49
  br i1 %337, label %338, label %388

338:                                              ; preds = %334
  %339 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !356
  %341 = icmp eq ptr %340, %332
  br i1 %341, label %342, label %388

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.rtx_def, ptr %331, i64 0, i32 1, i32 0, i32 0, i64 1
  %344 = load ptr, ptr %343, align 8, !tbaa !356
  %345 = load i32, ptr %344, align 8
  %346 = and i32 %345, 65535
  %347 = icmp eq i32 %346, 30
  br i1 %347, label %348, label %388

348:                                              ; preds = %342
  %349 = getelementptr inbounds %struct.rtx_def, ptr %344, i64 0, i32 1
  %350 = load i64, ptr %349, align 8, !tbaa !356
  %351 = shl i64 %350, 32
  %352 = ashr exact i64 %351, 32
  br label %353

353:                                              ; preds = %329, %348
  %354 = phi i64 [ %352, %348 ], [ 0, %329 ]
  %355 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %356 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !634
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %366

359:                                              ; preds = %353
  %360 = load ptr, ptr %285, align 8, !tbaa !617
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %366

362:                                              ; preds = %359
  %363 = load i32, ptr %321, align 8
  %364 = and i32 %363, 65535
  %365 = icmp eq i32 %364, 30
  br i1 %365, label %367, label %366

366:                                              ; preds = %362, %359, %353
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4270, ptr noundef nonnull @.str.1) #18
  br label %367

367:                                              ; preds = %362, %366
  %368 = load i64, ptr %355, align 8, !tbaa !635
  %369 = icmp sgt i64 %368, %354
  br i1 %369, label %370, label %376

370:                                              ; preds = %367
  %371 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1
  %372 = load i64, ptr %371, align 8, !tbaa !356
  %373 = add nsw i64 %372, %354
  %374 = icmp slt i64 %368, %373
  %375 = select i1 %374, i32 1, i32 %232
  br label %388

376:                                              ; preds = %367
  %377 = icmp slt i64 %368, %354
  %378 = load i64, ptr %284, align 8, !tbaa !565
  br i1 %377, label %379, label %383

379:                                              ; preds = %376
  %380 = add nsw i64 %378, %368
  %381 = icmp slt i64 %354, %380
  %382 = select i1 %381, i32 1, i32 %232
  br label %388

383:                                              ; preds = %376
  %384 = getelementptr inbounds %struct.rtx_def, ptr %321, i64 0, i32 1
  %385 = load i64, ptr %384, align 8, !tbaa !356
  %386 = icmp eq i64 %378, %385
  %387 = select i1 %386, i32 %232, i32 1
  br label %388

388:                                              ; preds = %383, %379, %370, %334, %338, %342, %324, %319
  %389 = phi i32 [ %232, %324 ], [ %232, %319 ], [ %232, %342 ], [ %232, %338 ], [ %232, %334 ], [ %375, %370 ], [ %382, %379 ], [ %387, %383 ]
  %390 = load ptr, ptr %138, align 8, !tbaa !574
  %391 = load i32, ptr %242, align 8, !tbaa !608
  %392 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %393 = load ptr, ptr %392, align 8, !tbaa !356
  %394 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %395 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %396 = load ptr, ptr %395, align 8, !tbaa !634
  %397 = icmp eq ptr %396, null
  br i1 %397, label %398, label %401, !prof !682

398:                                              ; preds = %388
  %399 = load i64, ptr %394, align 8, !tbaa !635
  %400 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %399) #18
  br label %408

401:                                              ; preds = %388
  %402 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !397
  %403 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %402, ptr noundef nonnull %396) #18
  %404 = load i64, ptr %394, align 8, !tbaa !635
  %405 = tail call ptr @size_int_kind(i64 noundef %404, i32 noundef 1) #18
  %406 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %403, ptr noundef %405) #18
  %407 = tail call fastcc ptr @expand_normal(ptr noundef %406) #19
  br label %408

408:                                              ; preds = %401, %398
  %409 = phi ptr [ %400, %398 ], [ %407, %401 ]
  %410 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3
  %411 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !680
  %413 = icmp eq ptr %412, null
  br i1 %413, label %414, label %417, !prof !682

414:                                              ; preds = %408
  %415 = load i64, ptr %410, align 8, !tbaa !681
  %416 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %415) #18
  br label %424

417:                                              ; preds = %408
  %418 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !397
  %419 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %418, ptr noundef nonnull %412) #18
  %420 = load i64, ptr %410, align 8, !tbaa !681
  %421 = tail call ptr @size_int_kind(i64 noundef %420, i32 noundef 1) #18
  %422 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %419, ptr noundef %421) #18
  %423 = tail call fastcc ptr @expand_normal(ptr noundef %422) #19
  br label %424

424:                                              ; preds = %417, %414
  %425 = phi ptr [ %416, %414 ], [ %423, %417 ]
  tail call void @emit_push_insn(ptr noundef %390, i32 noundef %391, ptr noundef %393, ptr noundef %321, i32 noundef %323, i32 noundef %131, ptr noundef %137, i32 noundef %320, ptr noundef %1, ptr noundef %409, i32 noundef %4, ptr noundef %425) #18
  %426 = icmp eq i32 %131, 0
  br i1 %426, label %427, label %433, !prof !682

427:                                              ; preds = %424
  %428 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 12
  br label %429

429:                                              ; preds = %280, %427
  %430 = phi ptr [ %428, %427 ], [ %238, %280 ]
  %431 = phi i32 [ %389, %427 ], [ %232, %280 ]
  %432 = load ptr, ptr %430, align 8, !tbaa !397
  store ptr %432, ptr %138, align 8, !tbaa !574
  br label %433

433:                                              ; preds = %429, %424, %280, %236
  %434 = phi i32 [ %232, %236 ], [ %232, %280 ], [ %389, %424 ], [ %431, %429 ]
  %435 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 4
  %436 = load ptr, ptr %435, align 8, !tbaa !520
  %437 = icmp eq ptr %436, null
  br i1 %437, label %451, label %438, !prof !523

438:                                              ; preds = %433
  %439 = load i32, ptr %436, align 8
  %440 = and i32 %439, 65535
  %441 = icmp eq i32 %440, 15
  br i1 %441, label %442, label %451

442:                                              ; preds = %438
  %443 = load ptr, ptr %0, align 8, !tbaa !598
  %444 = getelementptr inbounds %struct.tree_common, ptr %443, i64 0, i32 2
  %445 = load ptr, ptr %444, align 8, !tbaa !356
  %446 = load ptr, ptr %138, align 8, !tbaa !574
  %447 = tail call i64 @int_size_in_bytes(ptr noundef %445) #18
  %448 = trunc i64 %447 to i32
  %449 = tail call ptr @emit_group_load_into_temps(ptr noundef nonnull %436, ptr noundef %446, ptr noundef %445, i32 noundef %448) #18
  %450 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 6
  store ptr %449, ptr %450, align 8, !tbaa !649
  br label %451

451:                                              ; preds = %442, %438, %433
  %452 = load i32, ptr @target_flags, align 4, !tbaa !403
  %453 = and i32 %452, 4
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %458, !prof !640

455:                                              ; preds = %451
  %456 = tail call i32 @ix86_cfun_abi() #18
  %457 = icmp eq i32 %456, 1
  br i1 %457, label %458, label %476

458:                                              ; preds = %455, %451
  %459 = icmp eq ptr %1, null
  %460 = or i32 %216, %3
  %461 = icmp ne i32 %460, 0
  %462 = or i1 %459, %461
  br i1 %462, label %476, label %463, !prof !684

463:                                              ; preds = %458
  %464 = load ptr, ptr %238, align 8, !tbaa !530
  %465 = icmp ne ptr %464, null
  %466 = icmp slt i32 %112, %111
  %467 = select i1 %465, i1 %466, i1 false
  br i1 %467, label %468, label %476, !prof !685

468:                                              ; preds = %463
  %469 = load ptr, ptr @stack_usage_map, align 8, !tbaa !397
  %470 = sext i32 %112 to i64
  %471 = getelementptr i8, ptr %469, i64 %470
  %472 = xor i32 %112, -1
  %473 = add i32 %111, %472
  %474 = zext i32 %473 to i64
  %475 = add nuw nsw i64 %474, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %471, i8 1, i64 %475, i1 false), !tbaa !356
  br label %476

476:                                              ; preds = %468, %463, %458, %455
  %477 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %478 = add nsw i32 %477, 1
  store i32 %478, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  tail call void @preserve_temp_slots(ptr noundef null) #18
  tail call void @free_temp_slots() #18
  tail call void @pop_temp_slots() #18
  br label %479

479:                                              ; preds = %5, %476
  %480 = phi i32 [ %434, %476 ], [ 1, %5 ]
  ret i32 %480
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @check_sibcall_argument_overlap(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !686 !PGOFuncName !687 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7, !prof !688

5:                                                ; preds = %3
  %6 = tail call ptr @get_insns() #18
  br label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !356
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13, !prof !689

13:                                               ; preds = %10, %24
  %14 = phi ptr [ %26, %24 ], [ %11, %10 ]
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -7
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %24, !prof !690

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !356
  %22 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %21) #19, !range !525
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28, !prof !691

24:                                               ; preds = %13, %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !356
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !prof !692, !llvm.loop !693

28:                                               ; preds = %24, %19, %10
  %29 = phi i32 [ 0, %10 ], [ 1, %19 ], [ 0, %24 ]
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %45, label %31, !prof !694

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.arg_data, ptr %1, i64 0, i32 10
  %33 = getelementptr inbounds %struct.arg_data, ptr %1, i64 0, i32 10, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !637
  %35 = trunc i64 %34 to i32
  %36 = load i64, ptr %32, align 8, !tbaa !565
  %37 = add i64 %36, %34
  %38 = trunc i64 %37 to i32
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %45, !prof !695

40:                                               ; preds = %31, %40
  %41 = phi i32 [ %43, %40 ], [ %35, %31 ]
  %42 = load ptr, ptr @stored_args_map, align 8, !tbaa !397
  tail call fastcc void @SET_BIT(ptr noundef %42, i32 noundef %41) #19
  %43 = add nsw i32 %41, 1
  %44 = icmp eq i32 %43, %38
  br i1 %44, label %45, label %40, !prof !696, !llvm.loop !697

45:                                               ; preds = %40, %31, %28
  ret i32 %29
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @load_register_parameters(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !prof !421 !PGOFuncName !698 {
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %149, !prof !493

8:                                                ; preds = %6
  %9 = and i32 %3, 256
  %10 = icmp eq i32 %9, 0
  %11 = zext nneg i32 %1 to i64
  br label %12

12:                                               ; preds = %8, %146
  %13 = phi i64 [ 0, %8 ], [ %147, %146 ]
  %14 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 5
  %15 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 4
  %16 = select i1 %10, ptr %15, ptr %14, !prof !699
  %17 = load ptr, ptr %16, align 8, !tbaa !397
  %18 = icmp eq ptr %17, null
  br i1 %18, label %146, label %19, !prof !521

19:                                               ; preds = %12
  %20 = icmp eq i32 %4, 0
  %21 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13
  %22 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !534
  %24 = tail call ptr @get_last_insn() #18
  %25 = load i32, ptr %17, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 15
  br i1 %27, label %68, label %28, !prof !612

28:                                               ; preds = %19
  %29 = icmp eq i32 %23, 0
  br i1 %29, label %36, label %30, !prof !522

30:                                               ; preds = %28
  %31 = and i32 %23, 3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1608, ptr noundef nonnull @.str.1) #18
  br label %34

34:                                               ; preds = %30, %33
  %35 = sdiv i32 %23, 4
  br label %68

36:                                               ; preds = %28
  %37 = load ptr, ptr %21, align 8, !tbaa !598
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !356
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 14
  br i1 %42, label %43, label %45, !prof !612

43:                                               ; preds = %36
  %44 = tail call i32 @vector_type_mode(ptr noundef nonnull %39) #18
  br label %50

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  br label %50

50:                                               ; preds = %45, %43
  %51 = phi i32 [ %44, %43 ], [ %49, %45 ]
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %61, !prof !700

53:                                               ; preds = %50
  %54 = load ptr, ptr %21, align 8, !tbaa !598
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !356
  %57 = tail call i64 @int_size_in_bytes(ptr noundef %56) #18
  %58 = trunc i64 %57 to i32
  %59 = add nsw i32 %58, 3
  %60 = sdiv i32 %59, 4
  br label %68

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !608
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !356
  %67 = zext i8 %66 to i64
  br label %68

68:                                               ; preds = %34, %61, %53, %19
  %69 = phi i32 [ -1, %19 ], [ %35, %34 ], [ %60, %53 ], [ -1, %61 ]
  %70 = phi i64 [ 0, %19 ], [ 0, %34 ], [ %57, %53 ], [ %67, %61 ]
  %71 = load i32, ptr %17, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 15
  br i1 %73, label %74, label %77, !prof !612

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !649
  tail call void @emit_group_move(ptr noundef nonnull %17, ptr noundef %76) #18
  br label %129

77:                                               ; preds = %68
  %78 = icmp eq i32 %69, -1
  br i1 %78, label %79, label %83, !prof !701

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !574
  %82 = tail call ptr @emit_move_insn(ptr noundef nonnull %17, ptr noundef %81) #18
  br label %129

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 15
  %85 = load i32, ptr %84, align 8, !tbaa !673
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %106, label %87, !prof !702

87:                                               ; preds = %83
  %88 = icmp sgt i32 %85, 0
  br i1 %88, label %89, label %129

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 14
  br label %91

91:                                               ; preds = %89, %91
  %92 = phi i64 [ 0, %89 ], [ %102, %91 ]
  %93 = load i32, ptr @word_mode, align 4, !tbaa !403
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %17) #19
  %95 = trunc i64 %92 to i32
  %96 = add i32 %94, %95
  %97 = tail call ptr @gen_rtx_REG(i32 noundef %93, i32 noundef %96) #18
  %98 = load ptr, ptr %90, align 8, !tbaa !571
  %99 = getelementptr inbounds ptr, ptr %98, i64 %92
  %100 = load ptr, ptr %99, align 8, !tbaa !397
  %101 = tail call ptr @emit_move_insn(ptr noundef %97, ptr noundef %100) #18
  %102 = add nuw nsw i64 %92, 1
  %103 = load i32, ptr %84, align 8, !tbaa !673
  %104 = sext i32 %103 to i64
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %91, label %129, !llvm.loop !703

106:                                              ; preds = %83
  %107 = icmp eq i32 %23, 0
  br i1 %107, label %112, label %108, !prof !702

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 9
  %110 = load i32, ptr %109, align 8, !tbaa !513
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %108, %106
  %113 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !574
  %115 = tail call ptr @validize_mem(ptr noundef %114) #18
  br i1 %20, label %125, label %116, !prof !702

116:                                              ; preds = %112
  %117 = load ptr, ptr %113, align 8, !tbaa !574
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !356
  %120 = shl i64 %70, 32
  %121 = ashr exact i64 %120, 32
  %122 = tail call fastcc zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef %119, i64 noundef %121) #19, !range !385
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  store i32 1, ptr %5, align 4, !tbaa !403
  br label %125

125:                                              ; preds = %124, %116, %112
  %126 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %17) #19
  %127 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !608
  tail call void @move_block_to_reg(i32 noundef %126, ptr noundef %115, i32 noundef %69, i32 noundef %128) #18
  br label %129

129:                                              ; preds = %91, %87, %79, %108, %125, %74
  br i1 %20, label %134, label %130, !prof !704

130:                                              ; preds = %129
  %131 = tail call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %24, ptr noundef nonnull %21, i32 noundef 0) #19, !range !525
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133, !prof !705

133:                                              ; preds = %130
  store i32 1, ptr %5, align 4, !tbaa !403
  br label %134

134:                                              ; preds = %133, %130, %129
  %135 = load i32, ptr %17, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 15
  br i1 %137, label %138, label %139, !prof !612

138:                                              ; preds = %134
  tail call void @use_group_regs(ptr noundef %2, ptr noundef nonnull %17) #18
  br label %146

139:                                              ; preds = %134
  %140 = icmp eq i32 %69, -1
  br i1 %140, label %141, label %142, !prof !701

141:                                              ; preds = %139
  tail call void @use_reg(ptr noundef %2, ptr noundef nonnull %17) #18
  br label %146

142:                                              ; preds = %139
  %143 = icmp sgt i32 %69, 0
  br i1 %143, label %144, label %146, !prof !702

144:                                              ; preds = %142
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %17) #19
  tail call void @use_regs(ptr noundef %2, i32 noundef %145, i32 noundef %69) #18
  br label %146

146:                                              ; preds = %138, %142, %144, %141, %12
  %147 = add nuw nsw i64 %13, 1
  %148 = icmp eq i64 %147, %11
  br i1 %148, label %149, label %12, !prof !511, !llvm.loop !706

149:                                              ; preds = %146, %6
  ret void
}

; Function Attrs: optsize
declare ptr @function_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_call_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10) unnamed_addr #0 !prof !331 !PGOFuncName !707 {
  %12 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %5) #18
  %13 = trunc i64 %4 to i32
  %14 = tail call i32 @ix86_return_pops_args(ptr noundef %2, ptr noundef %3, i32 noundef %13) #18
  %15 = sext i32 %14 to i64
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %21, label %19, !prof !332

19:                                               ; preds = %11
  %20 = tail call ptr @memory_address_addr_space(i32 noundef 14, ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi ptr [ %20, %19 ], [ %0, %11 ]
  %23 = icmp slt i32 %14, 1
  br i1 %23, label %32, label %24, !prof !708

24:                                               ; preds = %21
  %25 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #18
  %26 = icmp eq ptr %7, null
  %27 = tail call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef %22) #18
  br i1 %26, label %30, label %28, !prof !709

28:                                               ; preds = %24
  %29 = tail call ptr @gen_call_value_pop(ptr noundef nonnull %7, ptr noundef %27, ptr noundef %12, ptr noundef %6, ptr noundef %25) #18
  br label %47

30:                                               ; preds = %24
  %31 = tail call ptr @gen_call_pop(ptr noundef %27, ptr noundef %12, ptr noundef %6, ptr noundef %25) #18
  br label %47

32:                                               ; preds = %21
  %33 = and i32 %10, 256
  %34 = icmp eq i32 %33, 0
  %35 = icmp eq ptr %7, null
  %36 = tail call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef %22) #18
  br i1 %34, label %42, label %37, !prof !710

37:                                               ; preds = %32
  br i1 %35, label %40, label %38, !prof !711

38:                                               ; preds = %37
  %39 = tail call ptr @gen_sibcall_value(ptr noundef nonnull %7, ptr noundef %36, ptr noundef %12, ptr noundef %6) #18
  br label %47

40:                                               ; preds = %37
  %41 = tail call ptr @gen_sibcall(ptr noundef %36, ptr noundef %12, ptr noundef %6) #18
  br label %47

42:                                               ; preds = %32
  br i1 %35, label %45, label %43, !prof !712

43:                                               ; preds = %42
  %44 = tail call ptr @gen_call_value(ptr noundef nonnull %7, ptr noundef %36, ptr noundef %12, ptr noundef %6) #18
  br label %47

45:                                               ; preds = %42
  %46 = tail call ptr @gen_call(ptr noundef %36, ptr noundef %12, ptr noundef %6) #18
  br label %47

47:                                               ; preds = %28, %30, %40, %38, %45, %43
  %48 = phi ptr [ %41, %40 ], [ %39, %38 ], [ %46, %45 ], [ %44, %43 ], [ %29, %28 ], [ %31, %30 ]
  %49 = tail call ptr @emit_call_insn(ptr noundef %48) #18
  %50 = tail call ptr @last_call_insn() #18
  tail call void @add_function_usage_to(ptr noundef %50, ptr noundef %9) #18
  %51 = and i32 %10, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53, !prof !713

53:                                               ; preds = %47
  %54 = load i32, ptr %50, align 8
  %55 = or i32 %54, 67108864
  store i32 %55, ptr %50, align 8
  br label %56

56:                                               ; preds = %53, %47
  %57 = and i32 %10, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59, !prof !714

59:                                               ; preds = %56
  %60 = load i32, ptr %50, align 8
  %61 = or i32 %60, -2147483648
  store i32 %61, ptr %50, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = and i32 %10, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65, !prof !715

65:                                               ; preds = %62
  %66 = load i32, ptr %50, align 8
  %67 = or i32 %66, 33554432
  store i32 %67, ptr %50, align 8
  br label %68

68:                                               ; preds = %65, %62
  tail call void @make_reg_eh_region_note(ptr noundef %50, i32 noundef %10, i32 noundef 0) #18
  %69 = and i32 %10, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !716

71:                                               ; preds = %68
  %72 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !397
  tail call void @add_reg_note(ptr noundef %50, i32 noundef 27, ptr noundef %72) #18
  br label %73

73:                                               ; preds = %71, %68
  %74 = and i32 %10, 128
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76, !prof !717

76:                                               ; preds = %73
  %77 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !397
  tail call void @add_reg_note(ptr noundef %50, i32 noundef 30, ptr noundef %77) #18
  %78 = load ptr, ptr @cfun, align 8, !tbaa !397
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
  %88 = load i32, ptr @flag_enable_icf_debug, align 4, !tbaa !403
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90, !prof !334

90:                                               ; preds = %82
  %91 = icmp eq ptr %2, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %90
  %93 = load ptr, ptr @debug_hooks, align 8, !tbaa !397
  %94 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %93, i64 0, i32 27
  %95 = load ptr, ptr %94, align 8, !tbaa !718
  %96 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !356
  %98 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !356
  tail call void %95(ptr noundef %97, i32 noundef %99) #18
  br label %100

100:                                              ; preds = %92, %90, %82
  store i32 %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  br i1 %23, label %106, label %101, !prof !708

101:                                              ; preds = %100
  %102 = sub nsw i64 %5, %15
  %103 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %102) #18
  %104 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %105 = sub i32 %104, %14
  store i32 %105, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1, !tbaa !720
  br label %106

106:                                              ; preds = %101, %100
  %107 = phi ptr [ %103, %101 ], [ %12, %100 ]
  %108 = phi i64 [ %102, %101 ], [ %5, %100 ]
  %109 = load i32, ptr @target_flags, align 4, !tbaa !403
  %110 = and i32 %109, 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %135, !prof !721

112:                                              ; preds = %106
  %113 = tail call i32 @ix86_cfun_abi() #18
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %135, label %115

115:                                              ; preds = %112
  %116 = icmp eq i64 %108, 0
  br i1 %116, label %139, label %117

117:                                              ; preds = %115
  br i1 %70, label %122, label %118

118:                                              ; preds = %117
  %119 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %120 = trunc i64 %108 to i32
  %121 = sub i32 %119, %120
  store i32 %121, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  br label %139

122:                                              ; preds = %117
  %123 = load i32, ptr @flag_defer_pop, align 4, !tbaa !403
  %124 = icmp ne i32 %123, 0
  %125 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4
  %126 = and i32 %10, 3
  %127 = or i32 %125, %126
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %124, i1 %128, i1 false
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, ptr @x_rtl, align 8, !tbaa !496
  %132 = trunc i64 %108 to i32
  %133 = add i32 %131, %132
  store i32 %133, ptr @x_rtl, align 8, !tbaa !496
  br label %139

134:                                              ; preds = %122
  tail call void @adjust_stack(ptr noundef %107) #18
  br label %139

135:                                              ; preds = %112, %106
  %136 = icmp eq i32 %14, 0
  br i1 %136, label %139, label %137, !prof !708

137:                                              ; preds = %135
  %138 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #18
  tail call void @anti_adjust_stack(ptr noundef %138) #18
  br label %139

139:                                              ; preds = %135, %137, %115, %130, %134, %118
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @add_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #1

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_barrier_after(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @emit_group_store(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @avoid_likely_spilled_reg(ptr noundef %0) unnamed_addr #0 !prof !418 !PGOFuncName !722 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 37
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %7 = icmp ult i32 %6, 53
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !403
  switch i32 %11, label %18 [
    i32 1, label %12
    i32 2, label %12
    i32 3, label %12
    i32 4, label %12
    i32 7, label %12
    i32 5, label %12
    i32 6, label %12
    i32 17, label %12
    i32 14, label %12
    i32 15, label %12
  ]

12:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8, %8, %8
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !403
  %13 = load i32, ptr %0, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = tail call ptr @gen_reg_rtx(i32 noundef %15) #18
  store i32 1, ptr @generating_concat_p, align 4, !tbaa !403
  %17 = tail call ptr @emit_move_insn(ptr noundef %16, ptr noundef nonnull %0) #18
  br label %18

18:                                               ; preds = %8, %1, %5, %12
  %19 = phi ptr [ %16, %12 ], [ %0, %5 ], [ %0, %1 ], [ %0, %8 ]
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @copy_blkmode_from_reg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @emit_stack_restore(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @restore_fixed_argument_area(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !418 !PGOFuncName !723 {
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  %7 = and i32 %6, 255
  %8 = sext i32 %3 to i64
  %9 = tail call ptr @plus_constant(ptr noundef %1, i64 noundef %8) #18
  %10 = tail call ptr @memory_address_addr_space(i32 noundef %7, ptr noundef %9, i8 noundef zeroext 0) #18
  %11 = tail call ptr @gen_rtx_MEM(i32 noundef %7, ptr noundef %10) #18
  tail call void @set_mem_align(ptr noundef %11, i32 noundef 32) #18
  %12 = icmp eq i32 %7, 1
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = tail call ptr @emit_move_insn(ptr noundef %11, ptr noundef nonnull %0) #18
  br label %22

15:                                               ; preds = %4
  %16 = tail call ptr @validize_mem(ptr noundef nonnull %0) #18
  %17 = add i32 %2, 1
  %18 = sub i32 %17, %3
  %19 = sext i32 %18 to i64
  %20 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %19) #18
  %21 = tail call ptr @emit_block_move(ptr noundef %11, ptr noundef %16, ptr noundef %20, i32 noundef 2) #18
  br label %22

22:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: optsize
declare ptr @emit_block_move(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_nonlocal_goto_save_area() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !prof !421 !PGOFuncName !724 {
  store ptr %0, ptr %1, align 8, !tbaa !590
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !356
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !356
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !588
  %10 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !586
  ret void
}

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_tree_list_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @first_field(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @pass_by_reference(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @reference_callee_copied(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @expr_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @store_expr(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @locate_and_pad_parm(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @function_arg_advance(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @promote_mode(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @round_up_loc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_mem_size(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_mem_align(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assemble_external(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @push_temp_slots() local_unnamed_addr #1

; Function Attrs: optsize
declare void @pop_temp_slots() local_unnamed_addr #1

; Function Attrs: optsize
declare void @preserve_temp_slots(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @legitimate_constant_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_group_load_into_temps(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_to_mode_reg(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @assign_stack_temp(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @validize_mem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #12 !prof !725 !PGOFuncName !726 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !504
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %25, label %5, !prof !727

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 49
  br i1 %8, label %9, label %24, !prof !728

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !356
  %12 = icmp eq ptr %11, %3
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !356
  br i1 %12, label %15, label %22, !prof !729

15:                                               ; preds = %9
  %16 = load i32, ptr %14, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %48, !prof !730

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !356
  br label %25

22:                                               ; preds = %9
  %23 = icmp eq ptr %14, %3
  br i1 %23, label %48, label %24, !prof !731

24:                                               ; preds = %5, %22
  br label %48

25:                                               ; preds = %2, %19
  %26 = phi i64 [ %21, %19 ], [ 0, %2 ]
  %27 = icmp eq i64 %1, 0
  br i1 %27, label %48, label %28, !prof !732

28:                                               ; preds = %25
  %29 = load ptr, ptr @stored_args_map, align 8, !tbaa !397
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !733
  %32 = zext i32 %31 to i64
  br label %33

33:                                               ; preds = %28, %45
  %34 = phi i64 [ 0, %28 ], [ %46, %45 ]
  %35 = add i64 %34, %26
  %36 = icmp ult i64 %35, %32
  br i1 %36, label %37, label %45, !prof !734

37:                                               ; preds = %33
  %38 = lshr i64 %35, 6
  %39 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 3, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !400
  %41 = and i64 %35, 63
  %42 = shl nuw i64 1, %41
  %43 = and i64 %40, %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48, !prof !734

45:                                               ; preds = %33, %37
  %46 = add nuw i64 %34, 1
  %47 = icmp eq i64 %46, %1
  br i1 %47, label %48, label %33, !prof !735, !llvm.loop !736

48:                                               ; preds = %45, %37, %15, %25, %22, %24
  %49 = phi i8 [ 0, %24 ], [ 1, %22 ], [ 0, %25 ], [ 1, %15 ], [ 0, %45 ], [ 1, %37 ]
  ret i8 %49
}

; Function Attrs: optsize
declare void @emit_push_insn(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @size_in_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_temp_slots() local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef readonly %0) unnamed_addr #13 !prof !737 !PGOFuncName !738 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %58, label %3, !prof !739

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %18, !prof !740

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !356
  %10 = lshr i32 %4, 16
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !356
  %15 = zext i8 %14 to i64
  %16 = tail call fastcc zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef %9, i64 noundef %15) #19, !range !385
  %17 = zext nneg i8 %16 to i32
  br label %58

18:                                               ; preds = %3
  %19 = zext nneg i32 %5 to i64
  %20 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !356
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %58, label %23, !prof !741

23:                                               ; preds = %18
  %24 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %19
  %25 = load ptr, ptr %24, align 8, !tbaa !397
  %26 = zext i8 %21 to i64
  br label %27

27:                                               ; preds = %23, %54
  %28 = phi i64 [ 0, %23 ], [ %55, %54 ]
  %29 = phi ptr [ %25, %23 ], [ %56, %54 ]
  %30 = load i8, ptr %29, align 1, !tbaa !356
  switch i8 %30, label %54 [
    i8 101, label %39
    i8 69, label %31
  ], !prof !742

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %32, i64 0, i64 %28
  %34 = load ptr, ptr %33, align 8, !tbaa !356
  %35 = load i32, ptr %34, align 8, !tbaa !743
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %54, !prof !745

37:                                               ; preds = %31
  %38 = zext nneg i32 %35 to i64
  br label %48

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %41 = getelementptr inbounds [1 x %union.rtunion_def], ptr %40, i64 0, i64 %28
  %42 = load ptr, ptr %41, align 8, !tbaa !356
  %43 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %42) #19, !range !525
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %58, !prof !746

45:                                               ; preds = %48
  %46 = add nuw nsw i64 %49, 1
  %47 = icmp eq i64 %46, %38
  br i1 %47, label %54, label %48, !prof !747, !llvm.loop !748

48:                                               ; preds = %37, %45
  %49 = phi i64 [ 0, %37 ], [ %46, %45 ]
  %50 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !397
  %52 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %51) #19, !range !525
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %45, label %58, !prof !749

54:                                               ; preds = %45, %31, %27, %39
  %55 = add nuw nsw i64 %28, 1
  %56 = getelementptr inbounds i8, ptr %29, i64 1
  %57 = icmp eq i64 %55, %26
  br i1 %57, label %58, label %27, !prof !750, !llvm.loop !751

58:                                               ; preds = %39, %54, %48, %18, %1, %7
  %59 = phi i32 [ %17, %7 ], [ 0, %1 ], [ 0, %18 ], [ 1, %48 ], [ 1, %39 ], [ 0, %54 ]
  ret i32 %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 !prof !752 !PGOFuncName !753 {
  %3 = load ptr, ptr %0, align 8, !tbaa !577
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !754

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !400
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !356
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !356
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !400
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !400
  ret void
}

; Function Attrs: optsize
declare void @emit_group_move(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @move_block_to_reg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @use_group_regs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @use_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_call_value_pop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_call_pop(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @emit_call_insn(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_sibcall_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_sibcall(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_call_value(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_call(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @last_call_insn() local_unnamed_addr #1

; Function Attrs: optsize
declare void @add_function_usage_to(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_reg_eh_region_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @adjust_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fixup_tail_calls() local_unnamed_addr #0 !prof !755 {
  %1 = tail call ptr @get_insns() #18
  %2 = icmp eq ptr %1, null
  br i1 %2, label %24, label %3, !prof !756

3:                                                ; preds = %0, %20
  %4 = phi ptr [ %22, %20 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 13
  br i1 %7, label %8, label %12, !prof !757

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !356
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %24, label %12, !prof !758

12:                                               ; preds = %8, %3
  %13 = tail call ptr @find_reg_note(ptr noundef nonnull %4, i32 noundef 3, ptr noundef null) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !759

15:                                               ; preds = %12
  tail call void @remove_note(ptr noundef nonnull %4, ptr noundef nonnull %13) #18
  br label %16

16:                                               ; preds = %15, %12
  %17 = tail call ptr @find_reg_note(ptr noundef nonnull %4, i32 noundef 3, ptr noundef null) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !760

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3207, ptr noundef nonnull @.str.1) #18
  br label %20

20:                                               ; preds = %16, %19
  %21 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !356
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %3, !prof !761, !llvm.loop !762

24:                                               ; preds = %20, %8, %0
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_library_call(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ...) local_unnamed_addr #0 !prof !418 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call fastcc ptr @emit_library_call_value_1(i32 noundef 0, ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #19
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_library_call_value_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #0 !prof !763 !PGOFuncName !764 {
  %8 = alloca %struct.args_size, align 8
  %9 = alloca %struct.ix86_args, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #20
  %14 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  store ptr null, ptr %10, align 8, !tbaa !397
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !tbaa !403
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  store i32 0, ptr %12, align 4, !tbaa !403
  %15 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  %16 = load ptr, ptr @stack_usage_map, align 8, !tbaa !397
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !433
  %18 = tail call ptr %17(ptr noundef null, i32 noundef 0) #18
  %19 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef null) #18
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
  %28 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !491
  %29 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !403
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %32, !prof !765

31:                                               ; preds = %26
  store i32 %29, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !491
  br label %32

32:                                               ; preds = %31, %26
  %33 = icmp ne i32 %4, 0
  br i1 %33, label %34, label %50, !prof !766

34:                                               ; preds = %32
  %35 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !767
  %36 = tail call ptr %35(i32 noundef %4, i32 noundef 0) #18
  %37 = tail call i32 @aggregate_value_p(ptr noundef %36, ptr noundef null) #18
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %52, label %39, !prof !766

39:                                               ; preds = %34
  %40 = icmp eq ptr %2, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %2, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 43
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %39
  %46 = tail call ptr @assign_temp(ptr noundef %36, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  br label %47

47:                                               ; preds = %41, %45
  %48 = phi ptr [ %46, %45 ], [ %2, %41 ]
  %49 = and i32 %27, 200
  br label %52

50:                                               ; preds = %32
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !397
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
  call void @init_cumulative_args(ptr noundef nonnull %9, ptr noundef null, ptr noundef %1, ptr noundef null) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @push_temp_slots() #18
  %60 = icmp ne ptr %55, null
  %61 = icmp eq ptr %18, null
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %106, !prof !768

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !356
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
  %72 = load i32, ptr %71, align 4, !tbaa !403
  %73 = icmp eq i32 %72, 9
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %65) #18
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74, %68
  %78 = call ptr @force_operand(ptr noundef nonnull %65, ptr noundef null) #18
  br label %79

79:                                               ; preds = %63, %63, %77, %74
  %80 = phi ptr [ %65, %63 ], [ %65, %74 ], [ %78, %77 ], [ %65, %63 ]
  store ptr %80, ptr %59, align 16, !tbaa !769
  %81 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 1
  store i32 16, ptr %81, align 8, !tbaa !771
  %82 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 3
  store i32 0, ptr %82, align 8, !tbaa !772
  %83 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef 16, ptr noundef null, i32 noundef 1) #18
  %84 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 2
  store ptr %83, ptr %84, align 16, !tbaa !773
  %85 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !610
  %86 = call i32 %85(ptr noundef nonnull %9, i32 noundef 16, ptr noundef null, i8 noundef zeroext 1) #18
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3422, ptr noundef nonnull @.str.1) #18
  br label %89

89:                                               ; preds = %79, %88
  %90 = load ptr, ptr %84, align 16, !tbaa !773
  %91 = icmp ne ptr %90, null
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 4
  call void @locate_and_pad_parm(i32 noundef 16, ptr noundef null, i32 noundef %92, i32 noundef 0, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %93) #18
  %94 = load ptr, ptr %84, align 16, !tbaa !773
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %82, align 8, !tbaa !772
  %98 = icmp ne i32 %97, 0
  %99 = icmp sgt i32 %19, 0
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96, %89
  %102 = load i64, ptr %93, align 16, !tbaa !774
  %103 = load i64, ptr %8, align 8, !tbaa !474
  %104 = add nsw i64 %103, %102
  store i64 %104, ptr %8, align 8, !tbaa !474
  br label %105

105:                                              ; preds = %96, %101
  call void @function_arg_advance(ptr noundef nonnull %9, i32 noundef 16, ptr noundef null, i32 noundef 1) #18
  br label %106

106:                                              ; preds = %105, %52
  %107 = phi i32 [ 1, %105 ], [ 0, %52 ]
  %108 = phi i32 [ %56, %105 ], [ %5, %52 ]
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %236, !prof !775

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 2
  %112 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 3
  %113 = zext nneg i32 %107 to i64
  %114 = zext nneg i32 %108 to i64
  br label %115

115:                                              ; preds = %110, %233
  %116 = phi i64 [ %113, %110 ], [ %234, %233 ]
  %117 = phi i32 [ %54, %110 ], [ %205, %233 ]
  %118 = load i32, ptr %6, align 8
  %119 = icmp ult i32 %118, 41
  br i1 %119, label %124, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr %111, align 8
  %122 = getelementptr i8, ptr %121, i64 8
  store ptr %122, ptr %111, align 8
  %123 = load ptr, ptr %121, align 8
  br label %136

124:                                              ; preds = %115
  %125 = load ptr, ptr %112, align 8
  %126 = zext nneg i32 %118 to i64
  %127 = getelementptr i8, ptr %125, i64 %126
  %128 = add nuw nsw i32 %118, 8
  store i32 %128, ptr %6, align 8
  %129 = load ptr, ptr %127, align 8
  %130 = icmp ult i32 %118, 33
  br i1 %130, label %131, label %136

131:                                              ; preds = %124
  %132 = load ptr, ptr %112, align 8
  %133 = zext nneg i32 %128 to i64
  %134 = getelementptr i8, ptr %132, i64 %133
  %135 = add nuw nsw i32 %118, 16
  store i32 %135, ptr %6, align 8
  br label %140

136:                                              ; preds = %120, %124
  %137 = phi ptr [ %123, %120 ], [ %129, %124 ]
  %138 = load ptr, ptr %111, align 8
  %139 = getelementptr i8, ptr %138, i64 8
  store ptr %139, ptr %111, align 8
  br label %140

140:                                              ; preds = %136, %131
  %141 = phi ptr [ %129, %131 ], [ %137, %136 ]
  %142 = phi ptr [ %134, %131 ], [ %138, %136 ]
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %152, label %145, !prof !776

145:                                              ; preds = %140
  %146 = load i32, ptr %141, align 8
  %147 = lshr i32 %146, 16
  %148 = and i32 %147, 255
  %149 = icmp eq i32 %148, %143
  %150 = icmp eq i32 %148, 0
  %151 = or i1 %149, %150
  br i1 %151, label %154, label %152, !prof !777

152:                                              ; preds = %145, %140
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3449, ptr noundef nonnull @.str.1) #18
  %153 = load i32, ptr %141, align 8
  br label %154

154:                                              ; preds = %145, %152
  %155 = phi i32 [ %146, %145 ], [ %153, %152 ]
  %156 = trunc i32 %155 to i16
  switch i16 %156, label %157 [
    i16 37, label %168
    i16 43, label %168
  ], !prof !778

157:                                              ; preds = %154
  %158 = and i32 %155, 65535
  %159 = zext nneg i32 %158 to i64
  %160 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !403
  %162 = icmp eq i32 %161, 9
  br i1 %162, label %163, label %166, !prof !779

163:                                              ; preds = %157
  %164 = call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %141) #18
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %168, !prof !780

166:                                              ; preds = %163, %157
  %167 = call ptr @force_operand(ptr noundef nonnull %141, ptr noundef null) #18
  br label %168

168:                                              ; preds = %154, %154, %166, %163
  %169 = phi ptr [ %141, %154 ], [ %141, %163 ], [ %167, %166 ], [ %141, %154 ]
  %170 = call zeroext i8 @pass_by_reference(ptr noundef nonnull %9, i32 noundef %143, ptr noundef null, i8 noundef zeroext 1) #18
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %202, label %172, !prof !775

172:                                              ; preds = %168
  %173 = call zeroext i8 @reference_callee_copied(ptr noundef nonnull %9, i32 noundef %143, ptr noundef null, i8 noundef zeroext 1) #18
  %174 = icmp eq i8 %173, 0
  %175 = and i32 %117, 1
  %176 = icmp eq i32 %175, 0
  %177 = and i32 %117, -4
  %178 = or disjoint i32 %177, 2
  %179 = select i1 %176, i32 %117, i32 %178
  %180 = load i32, ptr %169, align 8
  %181 = and i32 %180, 65535
  %182 = icmp ne i32 %181, 43
  %183 = select i1 %182, i1 true, i1 %174
  br i1 %183, label %184, label %189

184:                                              ; preds = %172
  %185 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !767
  %186 = call ptr %185(i32 noundef %143, i32 noundef 0) #18
  %187 = call ptr @assign_temp(ptr noundef %186, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  %188 = call ptr @emit_move_insn(ptr noundef %187, ptr noundef nonnull %169) #18
  br label %189

189:                                              ; preds = %172, %184
  %190 = phi ptr [ %187, %184 ], [ %169, %172 ]
  %191 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %190) #18
  %192 = load ptr, ptr %10, align 8, !tbaa !397
  %193 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %191, ptr noundef %192) #18
  store ptr %193, ptr %10, align 8, !tbaa !397
  br i1 %174, label %194, label %198

194:                                              ; preds = %189
  %195 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %190) #18
  %196 = load ptr, ptr %10, align 8, !tbaa !397
  %197 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %195, ptr noundef %196) #18
  store ptr %197, ptr %10, align 8, !tbaa !397
  br label %198

198:                                              ; preds = %194, %189
  %199 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !356
  %201 = call ptr @force_operand(ptr noundef %200, ptr noundef null) #18
  br label %202

202:                                              ; preds = %198, %168
  %203 = phi i32 [ 16, %198 ], [ %143, %168 ]
  %204 = phi ptr [ %201, %198 ], [ %169, %168 ]
  %205 = phi i32 [ %179, %198 ], [ %117, %168 ]
  %206 = getelementptr inbounds %struct.arg, ptr %59, i64 %116
  store ptr %204, ptr %206, align 16, !tbaa !769
  %207 = getelementptr inbounds %struct.arg, ptr %59, i64 %116, i32 1
  store i32 %203, ptr %207, align 8, !tbaa !771
  %208 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef %203, ptr noundef null, i32 noundef 1) #18
  %209 = getelementptr inbounds %struct.arg, ptr %59, i64 %116, i32 2
  store ptr %208, ptr %209, align 16, !tbaa !773
  %210 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !610
  %211 = call i32 %210(ptr noundef nonnull %9, i32 noundef %203, ptr noundef null, i8 noundef zeroext 1) #18
  %212 = getelementptr inbounds %struct.arg, ptr %59, i64 %116, i32 3
  store i32 %211, ptr %212, align 8, !tbaa !772
  %213 = load ptr, ptr %209, align 16, !tbaa !773
  %214 = icmp ne ptr %213, null
  %215 = zext i1 %214 to i32
  %216 = getelementptr inbounds %struct.arg, ptr %59, i64 %116, i32 4
  call void @locate_and_pad_parm(i32 noundef %203, ptr noundef null, i32 noundef %215, i32 noundef %211, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %216) #18
  %217 = getelementptr inbounds %struct.args_size, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !781
  %219 = icmp eq ptr %218, null
  br i1 %219, label %221, label %220, !prof !775

220:                                              ; preds = %202
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3509, ptr noundef nonnull @.str.1) #18
  br label %221

221:                                              ; preds = %202, %220
  %222 = load ptr, ptr %209, align 16, !tbaa !773
  %223 = icmp eq ptr %222, null
  br i1 %223, label %229, label %224, !prof !775

224:                                              ; preds = %221
  %225 = icmp sgt i32 %19, 0
  %226 = load i32, ptr %212, align 8, !tbaa !772
  %227 = icmp ne i32 %226, 0
  %228 = select i1 %227, i1 true, i1 %225
  br i1 %228, label %229, label %233

229:                                              ; preds = %224, %221
  %230 = load i64, ptr %216, align 16, !tbaa !774
  %231 = load i64, ptr %8, align 8, !tbaa !474
  %232 = add nsw i64 %231, %230
  store i64 %232, ptr %8, align 8, !tbaa !474
  br label %233

233:                                              ; preds = %224, %229
  call void @function_arg_advance(ptr noundef nonnull %9, i32 noundef %203, ptr noundef null, i32 noundef 1) #18
  %234 = add nuw nsw i64 %116, 1
  %235 = icmp eq i64 %234, %114
  br i1 %235, label %236, label %115, !prof !782, !llvm.loop !783

236:                                              ; preds = %233, %106
  %237 = phi i32 [ %54, %106 ], [ %205, %233 ]
  call void @assemble_external_libcall(ptr noundef %1) #18
  %238 = load i64, ptr %8, align 8
  %239 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %238, %240
  %242 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !403
  %243 = lshr i32 %242, 3
  %244 = zext nneg i32 %243 to i64
  %245 = add nsw i64 %241, %244
  %246 = freeze i64 %245
  %247 = add i64 %246, -1
  %248 = srem i64 %247, %244
  %249 = add nsw i64 %248, %240
  %250 = sub i64 %247, %249
  %251 = sext i32 %19 to i64
  %252 = call i64 @llvm.smax.i64(i64 %250, i64 %251)
  store i64 %252, ptr %8, align 8, !tbaa !474
  %253 = call i32 @ix86_function_type_abi(ptr noundef null) #18
  %254 = icmp eq i32 %253, 1
  %255 = load i64, ptr %8, align 8, !tbaa !474
  br i1 %254, label %258, label %256, !prof !784

256:                                              ; preds = %236
  %257 = sub nsw i64 %255, %251
  store i64 %257, ptr %8, align 8, !tbaa !474
  br label %258

258:                                              ; preds = %256, %236
  %259 = phi i64 [ %257, %256 ], [ %255, %236 ]
  %260 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !506
  %261 = sext i32 %260 to i64
  %262 = icmp sgt i64 %259, %261
  br i1 %262, label %263, label %265, !prof !785

263:                                              ; preds = %258
  %264 = trunc i64 %259 to i32
  store i32 %264, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !506
  br label %265

265:                                              ; preds = %263, %258
  %266 = load i32, ptr @target_flags, align 4, !tbaa !403
  %267 = and i32 %266, 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %274, !prof !784

269:                                              ; preds = %265
  %270 = call i32 @ix86_cfun_abi() #18
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %303

272:                                              ; preds = %269
  %273 = load i64, ptr %8, align 8, !tbaa !474
  br label %274

274:                                              ; preds = %272, %265
  %275 = phi i64 [ %273, %272 ], [ %259, %265 ]
  %276 = trunc i64 %275 to i32
  %277 = call i32 @ix86_function_type_abi(ptr noundef null) #18
  %278 = icmp eq i32 %277, 1
  %279 = select i1 %278, i32 0, i32 %19, !prof !784
  %280 = add nsw i32 %279, %276
  %281 = call i32 @llvm.smax.i32(i32 %15, i32 %280)
  store i32 %281, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  %282 = sext i32 %281 to i64
  %283 = call ptr @xmalloc(i64 noundef %282) #18
  store ptr %283, ptr @stack_usage_map, align 8, !tbaa !397
  %284 = icmp eq i32 %15, 0
  br i1 %284, label %287, label %285, !prof !766

285:                                              ; preds = %274
  %286 = sext i32 %15 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %283, ptr align 1 %16, i64 %286, i1 false)
  br label %287

287:                                              ; preds = %285, %274
  %288 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  %289 = icmp eq i32 %15, %288
  br i1 %289, label %295, label %290, !prof !784

290:                                              ; preds = %287
  %291 = sext i32 %15 to i64
  %292 = getelementptr inbounds i8, ptr %283, i64 %291
  %293 = sub nsw i32 %288, %15
  %294 = sext i32 %293 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %292, i8 0, i64 %294, i1 false)
  br label %295

295:                                              ; preds = %290, %287
  %296 = load i32, ptr @virtuals_instantiated, align 4, !tbaa !403
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %301, label %298, !prof !766

298:                                              ; preds = %295
  %299 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !397
  %300 = call ptr @plus_constant(ptr noundef %299, i64 noundef 0) #18
  br label %314

301:                                              ; preds = %295
  %302 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !397
  br label %314

303:                                              ; preds = %269
  %304 = load i32, ptr @target_flags, align 4, !tbaa !403
  %305 = and i32 %304, 8196
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = call i32 @ix86_cfun_abi() #18
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %318

310:                                              ; preds = %307, %303
  %311 = load i64, ptr %8, align 8, !tbaa !474
  %312 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %311) #18
  %313 = call ptr @push_block(ptr noundef %312, i32 noundef 0, i32 noundef 0) #18
  br label %314

314:                                              ; preds = %310, %298, %301
  %315 = phi ptr [ %283, %298 ], [ %283, %301 ], [ null, %310 ]
  %316 = phi ptr [ %300, %298 ], [ %302, %301 ], [ %313, %310 ]
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %323, !prof !786

318:                                              ; preds = %307, %314
  %319 = phi ptr [ %315, %314 ], [ null, %307 ]
  %320 = load i64, ptr %8, align 8, !tbaa !474
  %321 = sub nsw i64 %320, %238
  %322 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %321) #18
  call void @anti_adjust_stack(ptr noundef %322) #18
  br label %323

323:                                              ; preds = %318, %314
  %324 = phi i1 [ true, %318 ], [ false, %314 ]
  %325 = phi ptr [ null, %318 ], [ %316, %314 ]
  %326 = phi ptr [ %319, %318 ], [ %315, %314 ]
  %327 = load i32, ptr @target_flags, align 4, !tbaa !403
  %328 = and i32 %327, 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %333, !prof !784

330:                                              ; preds = %323
  %331 = call i32 @ix86_cfun_abi() #18
  %332 = icmp eq i32 %331, 1
  br i1 %332, label %333, label %335

333:                                              ; preds = %330, %323
  %334 = call fastcc ptr @save_fixed_argument_area(i32 noundef %19, ptr noundef %325, ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  br label %335

335:                                              ; preds = %333, %330
  %336 = phi ptr [ %334, %333 ], [ null, %330 ]
  %337 = icmp sgt i32 %108, 0
  br i1 %337, label %340, label %338, !prof !775

338:                                              ; preds = %335
  %339 = call ptr @prepare_call_address(ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef nonnull %10, i32 noundef 0, i32 poison) #19
  br label %556

340:                                              ; preds = %335
  %341 = and i32 %237, 1
  %342 = icmp eq i32 %341, 0
  %343 = zext nneg i32 %108 to i64
  br label %344

344:                                              ; preds = %340, %490
  %345 = phi i64 [ %343, %340 ], [ %347, %490 ]
  %346 = phi i32 [ 0, %340 ], [ %491, %490 ]
  %347 = add nsw i64 %345, -1
  %348 = getelementptr inbounds %struct.arg, ptr %59, i64 %347
  %349 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 1
  %350 = load i32, ptr %349, align 8, !tbaa !771
  %351 = load ptr, ptr %348, align 16, !tbaa !769
  %352 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 2
  %353 = load ptr, ptr %352, align 16, !tbaa !773
  %354 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 3
  %355 = load i32, ptr %354, align 8, !tbaa !772
  %356 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 4
  %357 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 4, i32 5
  %358 = load i32, ptr %357, align 4, !tbaa !787
  %359 = icmp eq ptr %353, null
  br i1 %359, label %362, label %360, !prof !775

360:                                              ; preds = %344
  %361 = icmp eq i32 %355, 0
  br i1 %361, label %490, label %362

362:                                              ; preds = %360, %344
  %363 = load i32, ptr @target_flags, align 4, !tbaa !403
  %364 = and i32 %363, 4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %369, !prof !776

366:                                              ; preds = %362
  %367 = call i32 @ix86_cfun_abi() #18
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %369, label %420

369:                                              ; preds = %366, %362
  %370 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 4, i32 2
  %371 = load i64, ptr %370, align 16, !tbaa !788
  %372 = trunc i64 %371 to i32
  %373 = load i64, ptr %356, align 16, !tbaa !774
  %374 = add i64 %373, %371
  %375 = trunc i64 %374 to i32
  %376 = icmp sgt i32 %19, %372
  br i1 %376, label %377, label %378, !prof !776

377:                                              ; preds = %369
  br label %378

378:                                              ; preds = %377, %369
  %379 = phi i32 [ %19, %377 ], [ %372, %369 ]
  %380 = icmp slt i32 %379, %375
  br i1 %380, label %381, label %420, !prof !789

381:                                              ; preds = %378
  %382 = load ptr, ptr @stack_usage_map, align 8, !tbaa !397
  %383 = shl i64 %371, 32
  %384 = ashr exact i64 %383, 32
  %385 = call i64 @llvm.smax.i64(i64 %251, i64 %384)
  %386 = trunc i64 %385 to i32
  %387 = add i32 %386, %375
  %388 = sub i32 %387, %379
  br label %393

389:                                              ; preds = %393
  %390 = add nsw i64 %394, 1
  %391 = trunc i64 %390 to i32
  %392 = icmp eq i32 %388, %391
  br i1 %392, label %420, label %393, !prof !790, !llvm.loop !791

393:                                              ; preds = %381, %389
  %394 = phi i64 [ %385, %381 ], [ %390, %389 ]
  %395 = getelementptr inbounds i8, ptr %382, i64 %394
  %396 = load i8, ptr %395, align 1, !tbaa !356
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %389, label %398, !prof !792

398:                                              ; preds = %393
  %399 = trunc i64 %373 to i32
  %400 = shl i32 %399, 3
  %401 = call i32 @mode_for_size(i32 noundef %400, i32 noundef 2, i32 noundef 1) #18
  %402 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 4, i32 1
  %403 = load i64, ptr %402, align 16, !tbaa !793
  %404 = call ptr @plus_constant(ptr noundef %325, i64 noundef %403) #18
  %405 = call ptr @memory_address_addr_space(i32 noundef %401, ptr noundef %404, i8 noundef zeroext 0) #18
  %406 = call ptr @gen_rtx_MEM(i32 noundef %401, ptr noundef %405) #18
  %407 = icmp eq i32 %401, 1
  br i1 %407, label %408, label %416

408:                                              ; preds = %398
  %409 = load i64, ptr %356, align 16, !tbaa !774
  %410 = call ptr @assign_stack_temp(i32 noundef 1, i64 noundef %409, i32 noundef 0) #18
  %411 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 5
  store ptr %410, ptr %411, align 8, !tbaa !794
  %412 = call ptr @validize_mem(ptr noundef %410) #18
  %413 = load i64, ptr %356, align 16, !tbaa !774
  %414 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %413) #18
  %415 = call ptr @emit_block_move(ptr noundef %412, ptr noundef %406, ptr noundef %414, i32 noundef 2) #18
  br label %420

416:                                              ; preds = %398
  %417 = call ptr @gen_reg_rtx(i32 noundef %401) #18
  %418 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 5
  store ptr %417, ptr %418, align 8, !tbaa !794
  %419 = call ptr @emit_move_insn(ptr noundef %417, ptr noundef %406) #18
  br label %420

420:                                              ; preds = %389, %378, %408, %416, %366
  %421 = phi i32 [ 0, %366 ], [ %372, %416 ], [ %372, %408 ], [ %372, %378 ], [ %372, %389 ]
  %422 = phi i32 [ 0, %366 ], [ %375, %416 ], [ %375, %408 ], [ %375, %378 ], [ %375, %389 ]
  %423 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 4, i32 1
  %424 = load i64, ptr %423, align 16, !tbaa !793
  %425 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %424) #18
  %426 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 4, i32 3
  %427 = getelementptr inbounds %struct.arg, ptr %59, i64 %347, i32 4, i32 3, i32 1
  %428 = load ptr, ptr %427, align 8, !tbaa !795
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %433, !prof !775

430:                                              ; preds = %420
  %431 = load i64, ptr %426, align 16, !tbaa !796
  %432 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %431) #18
  br label %440

433:                                              ; preds = %420
  %434 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !397
  %435 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %434, ptr noundef nonnull %428) #18
  %436 = load i64, ptr %426, align 16, !tbaa !796
  %437 = call ptr @size_int_kind(i64 noundef %436, i32 noundef 1) #18
  %438 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %435, ptr noundef %437) #18
  %439 = call fastcc ptr @expand_normal(ptr noundef %438) #19
  br label %440

440:                                              ; preds = %433, %430
  %441 = phi ptr [ %432, %430 ], [ %439, %433 ]
  call void @emit_push_insn(ptr noundef %351, i32 noundef %350, ptr noundef null, ptr noundef null, i32 noundef %358, i32 noundef %355, ptr noundef %353, i32 noundef 0, ptr noundef %325, ptr noundef %425, i32 noundef %19, ptr noundef %441) #18
  %442 = load i32, ptr @target_flags, align 4, !tbaa !403
  %443 = and i32 %442, 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %450, !prof !776

445:                                              ; preds = %440
  %446 = call i32 @ix86_cfun_abi() #18
  %447 = icmp eq i32 %446, 1
  %448 = icmp slt i32 %421, %422
  %449 = select i1 %447, i1 %448, i1 false
  br i1 %449, label %452, label %462, !prof !797

450:                                              ; preds = %440
  %451 = icmp slt i32 %421, %422
  br i1 %451, label %452, label %462, !prof !789

452:                                              ; preds = %445, %450
  %453 = load ptr, ptr @stack_usage_map, align 8, !tbaa !397
  %454 = sext i32 %421 to i64
  %455 = getelementptr i8, ptr %453, i64 %454
  %456 = add nsw i32 %421, 1
  %457 = call i32 @llvm.smax.i32(i32 %422, i32 %456)
  %458 = xor i32 %421, -1
  %459 = add i32 %457, %458
  %460 = zext i32 %459 to i64
  %461 = add nuw nsw i64 %460, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %455, i8 1, i64 %461, i1 false), !tbaa !356
  br label %462

462:                                              ; preds = %452, %450, %445
  %463 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %464 = add nsw i32 %463, 1
  store i32 %464, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  br i1 %342, label %465, label %475, !prof !776

465:                                              ; preds = %462
  %466 = and i32 %237, 2
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %490, label %468

468:                                              ; preds = %465
  %469 = load i32, ptr @target_flags, align 4, !tbaa !403
  %470 = and i32 %469, 4
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %472, label %475

472:                                              ; preds = %468
  %473 = call i32 @ix86_cfun_abi() #18
  %474 = icmp eq i32 %473, 1
  br i1 %474, label %475, label %490

475:                                              ; preds = %472, %468, %462
  br i1 %324, label %479, label %476, !prof !776

476:                                              ; preds = %475
  %477 = load i64, ptr %423, align 16, !tbaa !793
  %478 = call ptr @plus_constant(ptr noundef nonnull %325, i64 noundef %477) #18
  br label %483

479:                                              ; preds = %475
  %480 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !397
  %481 = call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef 16) #18
  %482 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %480, ptr noundef %481) #18
  br label %483

483:                                              ; preds = %479, %476
  %484 = phi ptr [ %478, %476 ], [ %482, %479 ]
  %485 = load i32, ptr %349, align 8, !tbaa !771
  %486 = call ptr @gen_rtx_MEM(i32 noundef %485, ptr noundef %484) #18
  %487 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %486) #18
  %488 = load ptr, ptr %10, align 8, !tbaa !397
  %489 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %487, ptr noundef %488) #18
  store ptr %489, ptr %10, align 8, !tbaa !397
  br label %490

490:                                              ; preds = %465, %472, %483, %360
  %491 = add nuw nsw i32 %346, 1
  %492 = icmp eq i32 %491, %108
  br i1 %492, label %493, label %344, !prof !782, !llvm.loop !798

493:                                              ; preds = %490
  %494 = call ptr @prepare_call_address(ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef nonnull %10, i32 noundef 0, i32 poison) #19
  br i1 %337, label %495, label %556, !prof !616

495:                                              ; preds = %493
  %496 = zext nneg i32 %108 to i64
  br label %500

497:                                              ; preds = %526
  br i1 %337, label %498, label %556, !prof !616

498:                                              ; preds = %497
  %499 = zext nneg i32 %108 to i64
  br label %531

500:                                              ; preds = %495, %526
  %501 = phi i64 [ %496, %495 ], [ %503, %526 ]
  %502 = phi i32 [ 0, %495 ], [ %529, %526 ]
  %503 = add nsw i64 %501, -1
  %504 = getelementptr inbounds %struct.arg, ptr %59, i64 %503
  %505 = getelementptr inbounds %struct.arg, ptr %59, i64 %503, i32 1
  %506 = load i32, ptr %505, align 8, !tbaa !771
  %507 = load ptr, ptr %504, align 16, !tbaa !769
  %508 = getelementptr inbounds %struct.arg, ptr %59, i64 %503, i32 2
  %509 = load ptr, ptr %508, align 16, !tbaa !773
  %510 = getelementptr inbounds %struct.arg, ptr %59, i64 %503, i32 3
  %511 = load i32, ptr %510, align 8, !tbaa !772
  %512 = icmp eq ptr %509, null
  br i1 %512, label %526, label %513, !prof !775

513:                                              ; preds = %500
  %514 = load i32, ptr %509, align 8
  %515 = and i32 %514, 65535
  %516 = icmp eq i32 %515, 15
  br i1 %516, label %517, label %522

517:                                              ; preds = %513
  %518 = zext i32 %506 to i64
  %519 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %518
  %520 = load i8, ptr %519, align 1, !tbaa !356
  %521 = zext i8 %520 to i32
  call void @emit_group_load(ptr noundef nonnull %509, ptr noundef %507, ptr noundef null, i32 noundef %521) #18
  br label %526

522:                                              ; preds = %513
  %523 = icmp eq i32 %511, 0
  br i1 %523, label %524, label %526

524:                                              ; preds = %522
  %525 = call ptr @emit_move_insn(ptr noundef nonnull %509, ptr noundef %507) #18
  br label %526

526:                                              ; preds = %500, %522, %524, %517
  %527 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %528 = add nsw i32 %527, 1
  store i32 %528, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %529 = add nuw nsw i32 %502, 1
  %530 = icmp eq i32 %529, %108
  br i1 %530, label %497, label %500, !prof !782, !llvm.loop !799

531:                                              ; preds = %498, %553
  %532 = phi i64 [ 0, %498 ], [ %554, %553 ]
  %533 = getelementptr inbounds %struct.arg, ptr %59, i64 %532, i32 2
  %534 = load ptr, ptr %533, align 16, !tbaa !773
  %535 = icmp eq ptr %534, null
  br i1 %535, label %553, label %536, !prof !775

536:                                              ; preds = %531
  %537 = load i32, ptr %534, align 8
  %538 = and i32 %537, 65535
  %539 = icmp eq i32 %538, 15
  br i1 %539, label %540, label %541

540:                                              ; preds = %536
  call void @use_group_regs(ptr noundef nonnull %10, ptr noundef nonnull %534) #18
  br label %553

541:                                              ; preds = %536
  %542 = getelementptr inbounds %struct.arg, ptr %59, i64 %532, i32 3
  %543 = load i32, ptr %542, align 8, !tbaa !772
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %552, label %545

545:                                              ; preds = %541
  %546 = and i32 %543, 3
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %549, label %548

548:                                              ; preds = %545
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3780, ptr noundef nonnull @.str.1) #18
  br label %549

549:                                              ; preds = %545, %548
  %550 = sdiv i32 %543, 4
  %551 = call fastcc i32 @rhs_regno(ptr noundef nonnull %534) #19
  call void @use_regs(ptr noundef nonnull %10, i32 noundef %551, i32 noundef %550) #18
  br label %553

552:                                              ; preds = %541
  call void @use_reg(ptr noundef nonnull %10, ptr noundef nonnull %534) #18
  br label %553

553:                                              ; preds = %531, %549, %552, %540
  %554 = add nuw nsw i64 %532, 1
  %555 = icmp eq i64 %554, %499
  br i1 %555, label %556, label %531, !prof !782, !llvm.loop !800

556:                                              ; preds = %553, %493, %338, %497
  %557 = phi ptr [ %494, %497 ], [ %494, %493 ], [ %339, %338 ], [ %494, %553 ]
  %558 = icmp ne ptr %18, null
  %559 = select i1 %60, i1 %558, i1 false
  br i1 %559, label %560, label %573, !prof !768

560:                                              ; preds = %556
  %561 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %562 = load ptr, ptr %561, align 8, !tbaa !356
  %563 = call ptr @force_operand(ptr noundef %562, ptr noundef null) #18
  %564 = call ptr @force_reg(i32 noundef 16, ptr noundef %563) #18
  %565 = call ptr @emit_move_insn(ptr noundef nonnull %18, ptr noundef %564) #18
  %566 = load i32, ptr %18, align 8
  %567 = and i32 %566, 65535
  %568 = icmp eq i32 %567, 37
  br i1 %568, label %569, label %570

569:                                              ; preds = %560
  call void @use_reg(ptr noundef nonnull %10, ptr noundef nonnull %18) #18
  br label %570

570:                                              ; preds = %560, %569
  %571 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %572 = add nsw i32 %571, 1
  store i32 %572, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  br label %580

573:                                              ; preds = %556
  %574 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %575 = add nsw i32 %574, 1
  store i32 %575, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %576 = icmp eq ptr %55, null
  %577 = and i1 %33, %576
  br i1 %577, label %578, label %580, !prof !801

578:                                              ; preds = %573
  %579 = call ptr @hard_libcall_value(i32 noundef %4, ptr noundef %1) #18
  br label %580

580:                                              ; preds = %570, %573, %578
  %581 = phi ptr [ %579, %578 ], [ null, %573 ], [ null, %570 ]
  %582 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !503
  %583 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !403
  %584 = lshr i32 %583, 3
  %585 = add nsw i32 %584, -1
  %586 = and i32 %585, %582
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %589, label %588, !prof !766

588:                                              ; preds = %580
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3808, ptr noundef nonnull @.str.1) #18
  br label %589

589:                                              ; preds = %580, %588
  %590 = call ptr @get_last_insn() #18
  %591 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %592 = load ptr, ptr %591, align 8, !tbaa !356
  %593 = call ptr @get_identifier(ptr noundef %592) #18
  %594 = call ptr @build_function_type(ptr noundef %53, ptr noundef null) #18
  %595 = load i64, ptr %8, align 8, !tbaa !474
  %596 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !397
  %597 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef 0, ptr noundef %596, i32 noundef 1) #18
  %598 = add nsw i32 %14, 1
  %599 = load ptr, ptr %10, align 8, !tbaa !397
  call fastcc void @emit_call_1(ptr noundef %557, ptr noundef null, ptr noundef %593, ptr noundef %594, i64 noundef %238, i64 noundef %595, ptr noundef %597, ptr noundef %581, i32 noundef %598, ptr noundef %599, i32 noundef %237) #19
  %600 = and i32 %237, 8
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %620, label %602, !prof !766

602:                                              ; preds = %589
  %603 = call ptr @get_last_insn() #18
  %604 = load i32, ptr %603, align 8
  %605 = and i32 %604, 65535
  %606 = icmp eq i32 %605, 10
  br i1 %606, label %617, label %607

607:                                              ; preds = %602, %613
  %608 = phi ptr [ %610, %613 ], [ %603, %602 ]
  %609 = getelementptr inbounds %struct.rtx_def, ptr %608, i64 0, i32 1, i32 0, i32 0, i64 1
  %610 = load ptr, ptr %609, align 8, !tbaa !356
  %611 = icmp eq ptr %610, %590
  br i1 %611, label %612, label %613

612:                                              ; preds = %607
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3844, ptr noundef nonnull @.str.1) #18
  br label %613

613:                                              ; preds = %607, %612
  %614 = load i32, ptr %610, align 8
  %615 = and i32 %614, 65535
  %616 = icmp eq i32 %615, 10
  br i1 %616, label %617, label %607, !llvm.loop !802

617:                                              ; preds = %613, %602
  %618 = phi ptr [ %603, %602 ], [ %610, %613 ]
  %619 = call ptr @emit_barrier_after(ptr noundef nonnull %618) #18
  br label %620

620:                                              ; preds = %617, %589
  %621 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  %622 = add nsw i32 %621, -1
  store i32 %622, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !423
  call void @pop_temp_slots() #18
  %623 = icmp ne i32 %0, 0
  %624 = and i1 %623, %33
  br i1 %624, label %625, label %672, !prof !803

625:                                              ; preds = %620
  br i1 %60, label %626, label %632, !prof !784

626:                                              ; preds = %625
  %627 = icmp eq ptr %2, null
  %628 = select i1 %627, ptr %55, ptr %2
  %629 = icmp eq ptr %628, %55
  br i1 %629, label %672, label %630

630:                                              ; preds = %626
  %631 = call ptr @emit_move_insn(ptr noundef nonnull %628, ptr noundef nonnull %55) #18
  br label %672

632:                                              ; preds = %625
  %633 = load i32, ptr %581, align 8
  %634 = and i32 %633, 65535
  %635 = icmp eq i32 %634, 15
  br i1 %635, label %636, label %646, !prof !784

636:                                              ; preds = %632
  %637 = icmp eq ptr %2, null
  br i1 %637, label %638, label %640

638:                                              ; preds = %636
  %639 = call ptr @gen_reg_rtx(i32 noundef %4) #18
  br label %640

640:                                              ; preds = %638, %636
  %641 = phi ptr [ %639, %638 ], [ %2, %636 ]
  %642 = zext i32 %4 to i64
  %643 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %642
  %644 = load i8, ptr %643, align 1, !tbaa !356
  %645 = zext i8 %644 to i32
  call void @emit_group_store(ptr noundef %641, ptr noundef nonnull %581, ptr noundef null, i32 noundef %645) #18
  br label %672

646:                                              ; preds = %632
  %647 = lshr i32 %633, 16
  %648 = and i32 %647, 255
  %649 = icmp eq i32 %648, %4
  br i1 %649, label %667, label %650, !prof !766

650:                                              ; preds = %646
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #20
  %651 = load i64, ptr %53, align 8
  %652 = trunc i64 %651 to i32
  %653 = lshr i32 %652, 21
  %654 = and i32 %653, 1
  store i32 %654, ptr %13, align 4, !tbaa !403
  %655 = call i32 @promote_function_mode(ptr noundef nonnull %53, i32 noundef %4, ptr noundef nonnull %13, ptr noundef null, i32 noundef 1) #18
  %656 = load i32, ptr %581, align 8
  %657 = lshr i32 %656, 16
  %658 = and i32 %657, 255
  %659 = icmp eq i32 %655, %658
  br i1 %659, label %664, label %660

660:                                              ; preds = %650
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3880, ptr noundef nonnull @.str.1) #18
  %661 = load i32, ptr %581, align 8
  %662 = lshr i32 %661, 16
  %663 = and i32 %662, 255
  br label %664

664:                                              ; preds = %650, %660
  %665 = phi i32 [ %658, %650 ], [ %663, %660 ]
  %666 = call ptr @convert_modes(i32 noundef %4, i32 noundef %665, ptr noundef nonnull %581, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #20
  br label %667

667:                                              ; preds = %664, %646
  %668 = phi ptr [ %666, %664 ], [ %581, %646 ]
  %669 = icmp eq ptr %2, null
  br i1 %669, label %672, label %670, !prof !766

670:                                              ; preds = %667
  %671 = call ptr @emit_move_insn(ptr noundef nonnull %2, ptr noundef %668) #18
  br label %672

672:                                              ; preds = %667, %630, %626, %670, %640, %620
  %673 = phi ptr [ %628, %630 ], [ %55, %626 ], [ %641, %640 ], [ %2, %670 ], [ %2, %620 ], [ %668, %667 ]
  %674 = load i32, ptr @target_flags, align 4, !tbaa !403
  %675 = and i32 %674, 4
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %680, !prof !784

677:                                              ; preds = %672
  %678 = call i32 @ix86_cfun_abi() #18
  %679 = icmp eq i32 %678, 1
  br i1 %679, label %680, label %717

680:                                              ; preds = %677, %672
  %681 = icmp eq ptr %336, null
  br i1 %681, label %685, label %682, !prof !766

682:                                              ; preds = %680
  %683 = load i32, ptr %12, align 4, !tbaa !403
  %684 = load i32, ptr %11, align 4, !tbaa !403
  call fastcc void @restore_fixed_argument_area(ptr noundef nonnull %336, ptr noundef %325, i32 noundef %683, i32 noundef %684) #19
  br label %685

685:                                              ; preds = %682, %680
  br i1 %337, label %686, label %716, !prof !775

686:                                              ; preds = %685
  %687 = zext nneg i32 %108 to i64
  br label %688

688:                                              ; preds = %686, %713
  %689 = phi i64 [ 0, %686 ], [ %714, %713 ]
  %690 = getelementptr inbounds %struct.arg, ptr %59, i64 %689, i32 5
  %691 = load ptr, ptr %690, align 8, !tbaa !794
  %692 = icmp eq ptr %691, null
  br i1 %692, label %713, label %693, !prof !775

693:                                              ; preds = %688
  %694 = load i32, ptr %691, align 8
  %695 = lshr i32 %694, 16
  %696 = and i32 %695, 255
  %697 = getelementptr inbounds %struct.arg, ptr %59, i64 %689, i32 4, i32 1
  %698 = load i64, ptr %697, align 16, !tbaa !793
  %699 = call ptr @plus_constant(ptr noundef %325, i64 noundef %698) #18
  %700 = call ptr @memory_address_addr_space(i32 noundef %696, ptr noundef %699, i8 noundef zeroext 0) #18
  %701 = call ptr @gen_rtx_MEM(i32 noundef %696, ptr noundef %700) #18
  %702 = icmp eq i32 %696, 1
  br i1 %702, label %703, label %710

703:                                              ; preds = %693
  %704 = getelementptr inbounds %struct.arg, ptr %59, i64 %689, i32 4
  %705 = load ptr, ptr %690, align 8, !tbaa !794
  %706 = call ptr @validize_mem(ptr noundef %705) #18
  %707 = load i64, ptr %704, align 16, !tbaa !774
  %708 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %707) #18
  %709 = call ptr @emit_block_move(ptr noundef %701, ptr noundef %706, ptr noundef %708, i32 noundef 2) #18
  br label %713

710:                                              ; preds = %693
  %711 = load ptr, ptr %690, align 8, !tbaa !794
  %712 = call ptr @emit_move_insn(ptr noundef %701, ptr noundef %711) #18
  br label %713

713:                                              ; preds = %703, %710, %688
  %714 = add nuw nsw i64 %689, 1
  %715 = icmp eq i64 %714, %687
  br i1 %715, label %716, label %688, !prof !782, !llvm.loop !804

716:                                              ; preds = %713, %685
  store i32 %15, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !403
  store ptr %16, ptr @stack_usage_map, align 8, !tbaa !397
  br label %717

717:                                              ; preds = %716, %677
  %718 = icmp eq ptr %326, null
  br i1 %718, label %720, label %719, !prof !784

719:                                              ; preds = %717
  call void @free(ptr noundef nonnull %326) #19
  br label %720

720:                                              ; preds = %719, %717
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  ret ptr %673
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: optsize
declare void @assemble_external_libcall(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @emit_group_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @hard_libcall_value(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_library_call_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ...) local_unnamed_addr #0 !prof !763 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.va_start(ptr nonnull %6)
  %7 = call fastcc ptr @emit_library_call_value_1(i32 noundef 1, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #19
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @must_pass_in_stack_var_size(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #16 !prof !418 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !356
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @must_pass_in_stack_var_size_or_pad(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !805 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4, !prof !806

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !356
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %18, !prof !807

10:                                               ; preds = %4
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 262144
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18, !prof !807

14:                                               ; preds = %10
  %15 = icmp eq i32 %0, 1
  br i1 %15, label %16, label %18, !prof !808

16:                                               ; preds = %14
  %17 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %1) #18
  br label %18

18:                                               ; preds = %14, %16, %10, %4, %2
  %19 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 1, %10 ], [ 0, %16 ], [ 0, %14 ]
  ret i8 %19
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!330}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329}
!36 = !{ptr @prepare_call_address, ptr @memory_address_addr_space, i64 3260}
!37 = !{ptr @prepare_call_address, ptr @force_not_mem, i64 1}
!38 = !{ptr @prepare_call_address, ptr @convert_memory_address_addr_space, i64 1}
!39 = !{ptr @prepare_call_address, ptr @emit_move_insn, i64 1}
!40 = !{ptr @setjmp_call_p, ptr @special_function_p, i64 527957}
!41 = !{ptr @special_function_p, ptr @strcmp, i64 1724937}
!42 = !{ptr @special_function_p, ptr @strncmp, i64 198050}
!43 = !{ptr @gimple_alloca_call_p, ptr @is_gimple_call, i64 294994}
!44 = !{ptr @gimple_alloca_call_p, ptr @gimple_call_fndecl, i64 294993}
!45 = !{ptr @gimple_alloca_call_p, ptr @special_function_p, i64 288725}
!46 = !{ptr @is_gimple_call, ptr @gimple_code, i64 294994}
!47 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 294994}
!48 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 294994}
!49 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 294994}
!50 = !{ptr @gimple_op, ptr @gimple_ops, i64 294993}
!51 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 294994}
!52 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 294994}
!53 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!54 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 294994}
!55 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 294994}
!56 = !{ptr @alloca_call_p, ptr @special_function_p, i64 13912}
!57 = !{ptr @flags_from_decl_or_type, ptr @special_function_p, i64 9349814}
!58 = !{ptr @call_expr_flags, ptr @get_callee_fndecl, i64 260278}
!59 = !{ptr @call_expr_flags, ptr @flags_from_decl_or_type, i64 260276}
!60 = !{ptr @expand_call, ptr @ix86_cfun_abi, i64 210}
!61 = !{ptr @expand_call, ptr @get_callee_fndecl, i64 92778}
!62 = !{ptr @expand_call, ptr @flags_from_decl_or_type, i64 92778}
!63 = !{ptr @expand_call, ptr @warning, i64 54}
!64 = !{ptr @expand_call, ptr @vector_type_mode, i64 368}
!65 = !{ptr @expand_call, ptr @first_call_expr_arg, i64 6}
!66 = !{ptr @expand_call, ptr @next_call_expr_arg, i64 90}
!67 = !{ptr @expand_call, ptr @expand_expr, i64 41}
!68 = !{ptr @expand_call, ptr @ix86_reg_parm_stack_space, i64 96240}
!69 = !{ptr @expand_call, ptr @ix86_function_type_abi, i64 5970560}
!70 = !{ptr @expand_call, ptr @aggregate_value_p, i64 92776}
!71 = !{ptr @expand_call, ptr @int_size_in_bytes, i64 63}
!72 = !{ptr @expand_call, ptr @assign_temp, i64 31}
!73 = !{ptr @expand_call, ptr @mark_temp_addr_taken, i64 19}
!74 = !{ptr @expand_call, ptr @cgraph_rtl_info, i64 89516}
!75 = !{ptr @expand_call, ptr @split_complex_types, i64 1}
!76 = !{ptr @expand_call, ptr @convert_memory_address_addr_space, i64 78}
!77 = !{ptr @expand_call, ptr @copy_addr_to_reg, i64 79}
!78 = !{ptr @expand_call, ptr @build_pointer_type, i64 50}
!79 = !{ptr @expand_call, ptr @make_tree, i64 50}
!80 = !{ptr @expand_call, ptr @init_cumulative_args, i64 92776}
!81 = !{ptr @expand_call, ptr @list_length, i64 92723}
!82 = !{ptr @expand_call, ptr @initialize_argument_information, i64 92776}
!83 = !{ptr @expand_call, ptr @finalize_must_preallocate, i64 92776}
!84 = !{ptr @expand_call, ptr @reg_mentioned_p, i64 101}
!85 = !{ptr @expand_call, ptr @copy_to_reg, i64 75}
!86 = !{ptr @expand_call, ptr @dbg_cnt, i64 92773}
!87 = !{ptr @expand_call, ptr @decl_function_context, i64 3024}
!88 = !{ptr @expand_call, ptr @ix86_return_pops_args, i64 4040}
!89 = !{ptr @expand_call, ptr @promote_function_mode, i64 4068}
!90 = !{ptr @expand_call, ptr @start_sequence, i64 3027304}
!91 = !{ptr @expand_call, ptr @do_pending_stack_adjust, i64 64837}
!92 = !{ptr @expand_call, ptr @precompute_arguments, i64 2903063}
!93 = !{ptr @expand_call, ptr @stack_protect_epilogue, i64 32}
!94 = !{ptr @expand_call, ptr @compute_argument_block_size, i64 2967839}
!95 = !{ptr @expand_call, ptr @plus_constant, i64 64776}
!96 = !{ptr @expand_call, ptr @sbitmap_alloc, i64 64776}
!97 = !{ptr @expand_call, ptr @sbitmap_zero, i64 64776}
!98 = !{ptr @expand_call, ptr @emit_stack_save, i64 24}
!99 = !{ptr @expand_call, ptr @fold_convert_loc, i64 32}
!100 = !{ptr @expand_call, ptr @size_int_kind, i64 32}
!101 = !{ptr @expand_call, ptr @size_binop_loc, i64 32}
!102 = !{ptr @expand_call, ptr @expand_normal, i64 64}
!103 = !{ptr @expand_call, ptr @push_block, i64 41}
!104 = !{ptr @expand_call, ptr @free, i64 220374}
!105 = !{ptr @expand_call, ptr @xmalloc, i64 2902983}
!106 = !{ptr @expand_call, ptr @combine_pending_stack_adjustment_and_call, i64 14}
!107 = !{ptr @expand_call, ptr @gen_rtx_CONST_INT, i64 73}
!108 = !{ptr @expand_call, ptr @xcalloc, i64 12}
!109 = !{ptr @expand_call, ptr @allocate_dynamic_stack_space, i64 32}
!110 = !{ptr @expand_call, ptr @compute_argument_addresses, i64 2967839}
!111 = !{ptr @expand_call, ptr @anti_adjust_stack, i64 16}
!112 = !{ptr @expand_call, ptr @rtx_for_function_call, i64 2967839}
!113 = !{ptr @expand_call, ptr @hard_function_value, i64 2049818}
!114 = !{ptr @expand_call, ptr @precompute_register_parameters, i64 2967839}
!115 = !{ptr @expand_call, ptr @save_fixed_argument_area, i64 2903048}
!116 = !{ptr @expand_call, ptr @get_last_insn, i64 11681453}
!117 = !{ptr @expand_call, ptr @store_one_arg, i64 5511689}
!118 = !{ptr @expand_call, ptr @check_sibcall_argument_overlap, i64 157415}
!119 = !{ptr @expand_call, ptr @gen_rtx_fmt_e_stat, i64 253010}
!120 = !{ptr @expand_call, ptr @gen_rtx_fmt_ee_stat, i64 253010}
!121 = !{ptr @expand_call, ptr @force_operand, i64 31}
!122 = !{ptr @expand_call, ptr @force_reg, i64 31}
!123 = !{ptr @expand_call, ptr @emit_move_insn, i64 1744791}
!124 = !{ptr @expand_call, ptr @use_reg, i64 16}
!125 = !{ptr @expand_call, ptr @prepare_call_address, i64 2967839}
!126 = !{ptr @expand_call, ptr @load_register_parameters, i64 2967839}
!127 = !{ptr @expand_call, ptr @function_arg, i64 2967839}
!128 = !{ptr @expand_call, ptr @fancy_abort, i64 92}
!129 = !{ptr @expand_call, ptr @emit_call_1, i64 2967839}
!130 = !{ptr @expand_call, ptr @shift_return_value, i64 32}
!131 = !{ptr @expand_call, ptr @rhs_regno, i64 1685289}
!132 = !{ptr @expand_call, ptr @gen_rtx_REG, i64 32}
!133 = !{ptr @expand_call, ptr @gen_reg_rtx, i64 59465}
!134 = !{ptr @expand_call, ptr @mark_reg_pointer, i64 59433}
!135 = !{ptr @expand_call, ptr @add_reg_note, i64 59465}
!136 = !{ptr @expand_call, ptr @get_insns, i64 3027304}
!137 = !{ptr @expand_call, ptr @end_sequence, i64 3027304}
!138 = !{ptr @expand_call, ptr @emit_insn, i64 152241}
!139 = !{ptr @expand_call, ptr @emit_barrier_after, i64 174621}
!140 = !{ptr @expand_call, ptr @memory_address_addr_space, i64 627}
!141 = !{ptr @expand_call, ptr @gen_rtx_MEM, i64 627}
!142 = !{ptr @expand_call, ptr @set_mem_attributes, i64 595}
!143 = !{ptr @expand_call, ptr @build_qualified_type, i64 12}
!144 = !{ptr @expand_call, ptr @rtx_equal_p, i64 32}
!145 = !{ptr @expand_call, ptr @emit_group_store, i64 12}
!146 = !{ptr @expand_call, ptr @avoid_likely_spilled_reg, i64 136}
!147 = !{ptr @expand_call, ptr @copy_blkmode_from_reg, i64 48}
!148 = !{ptr @expand_call, ptr @gen_rtx_SUBREG, i64 32}
!149 = !{ptr @expand_call, ptr @emit_stack_restore, i64 32}
!150 = !{ptr @expand_call, ptr @restore_fixed_argument_area, i64 32}
!151 = !{ptr @expand_call, ptr @emit_block_move, i64 16}
!152 = !{ptr @expand_call, ptr @update_nonlocal_goto_save_area, i64 32}
!153 = !{ptr @first_call_expr_arg, ptr @init_call_expr_arg_iterator, i64 92778}
!154 = !{ptr @first_call_expr_arg, ptr @next_call_expr_arg, i64 92778}
!155 = !{ptr @expand_expr, ptr @expand_expr_real, i64 172425}
!156 = !{ptr @initialize_argument_information, ptr @first_call_expr_arg, i64 92778}
!157 = !{ptr @initialize_argument_information, ptr @next_call_expr_arg, i64 194752}
!158 = !{ptr @initialize_argument_information, ptr @first_field, i64 1}
!159 = !{ptr @initialize_argument_information, ptr @vector_type_mode, i64 4}
!160 = !{ptr @initialize_argument_information, ptr @pass_by_reference, i64 194802}
!161 = !{ptr @initialize_argument_information, ptr @reference_callee_copied, i64 1}
!162 = !{ptr @initialize_argument_information, ptr @build_fold_addr_expr_loc, i64 1}
!163 = !{ptr @initialize_argument_information, ptr @promote_function_mode, i64 194802}
!164 = !{ptr @initialize_argument_information, ptr @function_arg, i64 194802}
!165 = !{ptr @initialize_argument_information, ptr @locate_and_pad_parm, i64 172303}
!166 = !{ptr @initialize_argument_information, ptr @host_integerp, i64 1}
!167 = !{ptr @initialize_argument_information, ptr @tree_low_cst, i64 1}
!168 = !{ptr @initialize_argument_information, ptr @function_arg_advance, i64 194802}
!169 = !{ptr @finalize_must_preallocate, ptr @vector_type_mode, i64 10}
!170 = !{ptr @finalize_must_preallocate, ptr @int_size_in_bytes, i64 9}
!171 = !{ptr @precompute_arguments, ptr @ix86_cfun_abi, i64 1}
!172 = !{ptr @precompute_arguments, ptr @expand_normal, i64 1}
!173 = !{ptr @compute_argument_block_size, ptr @ix86_cfun_abi, i64 1}
!174 = !{ptr @compute_argument_block_size, ptr @fold_convert_loc, i64 1}
!175 = !{ptr @compute_argument_block_size, ptr @size_int_kind, i64 2}
!176 = !{ptr @compute_argument_block_size, ptr @size_binop_loc, i64 2}
!177 = !{ptr @compute_argument_block_size, ptr @ix86_function_type_abi, i64 92778}
!178 = !{ptr @expand_normal, ptr @expand_expr_real, i64 25760}
!179 = !{ptr @compute_argument_addresses, ptr @gen_rtx_CONST_INT, i64 389600}
!180 = !{ptr @compute_argument_addresses, ptr @fold_convert_loc, i64 2}
!181 = !{ptr @compute_argument_addresses, ptr @size_int_kind, i64 2}
!182 = !{ptr @compute_argument_addresses, ptr @size_binop_loc, i64 2}
!183 = !{ptr @compute_argument_addresses, ptr @expand_normal, i64 2}
!184 = !{ptr @compute_argument_addresses, ptr @plus_constant, i64 689198}
!185 = !{ptr @compute_argument_addresses, ptr @gen_rtx_fmt_ee_stat, i64 2}
!186 = !{ptr @compute_argument_addresses, ptr @mode_for_size, i64 1}
!187 = !{ptr @compute_argument_addresses, ptr @gen_rtx_MEM, i64 344600}
!188 = !{ptr @compute_argument_addresses, ptr @set_mem_size, i64 2}
!189 = !{ptr @compute_argument_addresses, ptr @set_mem_attributes, i64 344598}
!190 = !{ptr @compute_argument_addresses, ptr @set_mem_align, i64 344600}
!191 = !{ptr @compute_argument_addresses, ptr @set_mem_alias_set, i64 344600}
!192 = !{ptr @rtx_for_function_call, ptr @assemble_external, i64 12}
!193 = !{ptr @rtx_for_function_call, ptr @make_decl_rtl, i64 955}
!194 = !{ptr @rtx_for_function_call, ptr @push_temp_slots, i64 3260}
!195 = !{ptr @rtx_for_function_call, ptr @expand_normal, i64 3260}
!196 = !{ptr @rtx_for_function_call, ptr @pop_temp_slots, i64 3260}
!197 = !{ptr @precompute_register_parameters, ptr @push_temp_slots, i64 22500}
!198 = !{ptr @precompute_register_parameters, ptr @expand_normal, i64 22500}
!199 = !{ptr @precompute_register_parameters, ptr @preserve_temp_slots, i64 22500}
!200 = !{ptr @precompute_register_parameters, ptr @pop_temp_slots, i64 22500}
!201 = !{ptr @precompute_register_parameters, ptr @legitimate_constant_p, i64 3923}
!202 = !{ptr @precompute_register_parameters, ptr @force_reg, i64 1}
!203 = !{ptr @precompute_register_parameters, ptr @vector_type_mode, i64 1}
!204 = !{ptr @precompute_register_parameters, ptr @convert_modes, i64 1}
!205 = !{ptr @precompute_register_parameters, ptr @int_size_in_bytes, i64 1}
!206 = !{ptr @precompute_register_parameters, ptr @emit_group_load_into_temps, i64 1}
!207 = !{ptr @precompute_register_parameters, ptr @optimize_insn_for_speed_p, i64 7867}
!208 = !{ptr @precompute_register_parameters, ptr @rtx_cost, i64 7867}
!209 = !{ptr @precompute_register_parameters, ptr @copy_to_mode_reg, i64 3177}
!210 = !{ptr @store_one_arg, ptr @push_temp_slots, i64 172301}
!211 = !{ptr @store_one_arg, ptr @ix86_cfun_abi, i64 2}
!212 = !{ptr @store_one_arg, ptr @mode_for_size, i64 84701}
!213 = !{ptr @store_one_arg, ptr @memory_address_addr_space, i64 84701}
!214 = !{ptr @store_one_arg, ptr @gen_rtx_MEM, i64 84701}
!215 = !{ptr @store_one_arg, ptr @build_qualified_type, i64 42350}
!216 = !{ptr @store_one_arg, ptr @assign_temp, i64 42350}
!217 = !{ptr @store_one_arg, ptr @preserve_temp_slots, i64 214651}
!218 = !{ptr @store_one_arg, ptr @validize_mem, i64 42350}
!219 = !{ptr @store_one_arg, ptr @gen_rtx_CONST_INT, i64 374748}
!220 = !{ptr @store_one_arg, ptr @emit_block_move, i64 42350}
!221 = !{ptr @store_one_arg, ptr @gen_reg_rtx, i64 42350}
!222 = !{ptr @store_one_arg, ptr @emit_move_insn, i64 42350}
!223 = !{ptr @store_one_arg, ptr @vector_type_mode, i64 3}
!224 = !{ptr @store_one_arg, ptr @expand_expr, i64 172423}
!225 = !{ptr @store_one_arg, ptr @convert_modes, i64 1}
!226 = !{ptr @store_one_arg, ptr @mem_overlaps_already_clobbered_arg_p, i64 429}
!227 = !{ptr @store_one_arg, ptr @do_pending_stack_adjust, i64 148}
!228 = !{ptr @store_one_arg, ptr @fold_convert_loc, i64 5}
!229 = !{ptr @store_one_arg, ptr @size_int_kind, i64 5}
!230 = !{ptr @store_one_arg, ptr @size_binop_loc, i64 5}
!231 = !{ptr @store_one_arg, ptr @expand_normal, i64 5}
!232 = !{ptr @store_one_arg, ptr @emit_push_insn, i64 166201}
!233 = !{ptr @store_one_arg, ptr @int_size_in_bytes, i64 123}
!234 = !{ptr @store_one_arg, ptr @size_in_bytes, i64 123}
!235 = !{ptr @store_one_arg, ptr @free_temp_slots, i64 172301}
!236 = !{ptr @store_one_arg, ptr @pop_temp_slots, i64 172301}
!237 = !{ptr @check_sibcall_argument_overlap, ptr @get_insns, i64 2140}
!238 = !{ptr @check_sibcall_argument_overlap, ptr @check_sibcall_argument_overlap_1, i64 7748}
!239 = !{ptr @check_sibcall_argument_overlap, ptr @SET_BIT, i64 11577}
!240 = !{ptr @load_register_parameters, ptr @get_last_insn, i64 22502}
!241 = !{ptr @load_register_parameters, ptr @fancy_abort, i64 1}
!242 = !{ptr @load_register_parameters, ptr @vector_type_mode, i64 1}
!243 = !{ptr @load_register_parameters, ptr @int_size_in_bytes, i64 4}
!244 = !{ptr @load_register_parameters, ptr @emit_group_move, i64 1}
!245 = !{ptr @load_register_parameters, ptr @emit_move_insn, i64 22513}
!246 = !{ptr @load_register_parameters, ptr @rhs_regno, i64 22}
!247 = !{ptr @load_register_parameters, ptr @gen_rtx_REG, i64 16}
!248 = !{ptr @load_register_parameters, ptr @validize_mem, i64 3}
!249 = !{ptr @load_register_parameters, ptr @mem_overlaps_already_clobbered_arg_p, i64 1}
!250 = !{ptr @load_register_parameters, ptr @move_block_to_reg, i64 3}
!251 = !{ptr @load_register_parameters, ptr @check_sibcall_argument_overlap, i64 1127}
!252 = !{ptr @load_register_parameters, ptr @use_group_regs, i64 1}
!253 = !{ptr @load_register_parameters, ptr @use_reg, i64 22497}
!254 = !{ptr @load_register_parameters, ptr @use_regs, i64 3}
!255 = !{ptr @emit_call_1, ptr @gen_rtx_CONST_INT, i64 92908}
!256 = !{ptr @emit_call_1, ptr @ix86_return_pops_args, i64 92863}
!257 = !{ptr @emit_call_1, ptr @memory_address_addr_space, i64 3260}
!258 = !{ptr @emit_call_1, ptr @gen_rtx_MEM, i64 92863}
!259 = !{ptr @emit_call_1, ptr @gen_call_value_pop, i64 1}
!260 = !{ptr @emit_call_1, ptr @gen_call_pop, i64 14}
!261 = !{ptr @emit_call_1, ptr @gen_sibcall_value, i64 1088}
!262 = !{ptr @emit_call_1, ptr @gen_sibcall, i64 937}
!263 = !{ptr @emit_call_1, ptr @gen_call_value, i64 63076}
!264 = !{ptr @emit_call_1, ptr @gen_call, i64 27747}
!265 = !{ptr @emit_call_1, ptr @emit_call_insn, i64 92863}
!266 = !{ptr @emit_call_1, ptr @last_call_insn, i64 92863}
!267 = !{ptr @emit_call_1, ptr @add_function_usage_to, i64 92863}
!268 = !{ptr @emit_call_1, ptr @make_reg_eh_region_note, i64 92863}
!269 = !{ptr @emit_call_1, ptr @add_reg_note, i64 3436}
!270 = !{ptr @emit_call_1, ptr @ix86_cfun_abi, i64 1}
!271 = !{ptr @emit_call_1, ptr @anti_adjust_stack, i64 15}
!272 = !{ptr @check_sibcall_argument_overlap_1, ptr @mem_overlaps_already_clobbered_arg_p, i64 5265}
!273 = !{ptr @check_sibcall_argument_overlap_1, ptr @check_sibcall_argument_overlap_1, i64 19225}
!274 = !{ptr @fixup_tail_calls, ptr @get_insns, i64 1006}
!275 = !{ptr @fixup_tail_calls, ptr @find_reg_note, i64 9010}
!276 = !{ptr @fixup_tail_calls, ptr @remove_note, i64 2255}
!277 = !{ptr @fixup_tail_calls, ptr @fancy_abort, i64 1}
!278 = !{ptr @emit_library_call_value_1, ptr @ix86_reg_parm_stack_space, i64 85}
!279 = !{ptr @emit_library_call_value_1, ptr @aggregate_value_p, i64 84}
!280 = !{ptr @emit_library_call_value_1, ptr @assign_temp, i64 1}
!281 = !{ptr @emit_library_call_value_1, ptr @init_cumulative_args, i64 85}
!282 = !{ptr @emit_library_call_value_1, ptr @push_temp_slots, i64 85}
!283 = !{ptr @emit_library_call_value_1, ptr @fancy_abort, i64 10}
!284 = !{ptr @emit_library_call_value_1, ptr @legitimate_constant_p, i64 39}
!285 = !{ptr @emit_library_call_value_1, ptr @force_operand, i64 3}
!286 = !{ptr @emit_library_call_value_1, ptr @pass_by_reference, i64 169}
!287 = !{ptr @emit_library_call_value_1, ptr @reference_callee_copied, i64 1}
!288 = !{ptr @emit_library_call_value_1, ptr @gen_rtx_fmt_e_stat, i64 169}
!289 = !{ptr @emit_library_call_value_1, ptr @gen_rtx_fmt_ee_stat, i64 170}
!290 = !{ptr @emit_library_call_value_1, ptr @function_arg, i64 254}
!291 = !{ptr @emit_library_call_value_1, ptr @locate_and_pad_parm, i64 169}
!292 = !{ptr @emit_library_call_value_1, ptr @function_arg_advance, i64 169}
!293 = !{ptr @emit_library_call_value_1, ptr @assemble_external_libcall, i64 85}
!294 = !{ptr @emit_library_call_value_1, ptr @ix86_function_type_abi, i64 170}
!295 = !{ptr @emit_library_call_value_1, ptr @ix86_cfun_abi, i64 5}
!296 = !{ptr @emit_library_call_value_1, ptr @xmalloc, i64 85}
!297 = !{ptr @emit_library_call_value_1, ptr @plus_constant, i64 253}
!298 = !{ptr @emit_library_call_value_1, ptr @gen_rtx_CONST_INT, i64 380}
!299 = !{ptr @emit_library_call_value_1, ptr @anti_adjust_stack, i64 1}
!300 = !{ptr @emit_library_call_value_1, ptr @save_fixed_argument_area, i64 85}
!301 = !{ptr @emit_library_call_value_1, ptr @mode_for_size, i64 84}
!302 = !{ptr @emit_library_call_value_1, ptr @memory_address_addr_space, i64 85}
!303 = !{ptr @emit_library_call_value_1, ptr @gen_rtx_MEM, i64 253}
!304 = !{ptr @emit_library_call_value_1, ptr @assign_stack_temp, i64 42}
!305 = !{ptr @emit_library_call_value_1, ptr @validize_mem, i64 42}
!306 = !{ptr @emit_library_call_value_1, ptr @emit_block_move, i64 42}
!307 = !{ptr @emit_library_call_value_1, ptr @gen_reg_rtx, i64 42}
!308 = !{ptr @emit_library_call_value_1, ptr @emit_move_insn, i64 44}
!309 = !{ptr @emit_library_call_value_1, ptr @fold_convert_loc, i64 1}
!310 = !{ptr @emit_library_call_value_1, ptr @size_int_kind, i64 1}
!311 = !{ptr @emit_library_call_value_1, ptr @size_binop_loc, i64 1}
!312 = !{ptr @emit_library_call_value_1, ptr @expand_normal, i64 1}
!313 = !{ptr @emit_library_call_value_1, ptr @emit_push_insn, i64 169}
!314 = !{ptr @emit_library_call_value_1, ptr @gen_rtx_fmt_0_stat, i64 1}
!315 = !{ptr @emit_library_call_value_1, ptr @prepare_call_address, i64 85}
!316 = !{ptr @emit_library_call_value_1, ptr @hard_libcall_value, i64 83}
!317 = !{ptr @emit_library_call_value_1, ptr @get_last_insn, i64 86}
!318 = !{ptr @emit_library_call_value_1, ptr @get_identifier, i64 85}
!319 = !{ptr @emit_library_call_value_1, ptr @build_function_type, i64 85}
!320 = !{ptr @emit_library_call_value_1, ptr @emit_call_1, i64 85}
!321 = !{ptr @emit_library_call_value_1, ptr @emit_barrier_after, i64 1}
!322 = !{ptr @emit_library_call_value_1, ptr @pop_temp_slots, i64 85}
!323 = !{ptr @emit_library_call_value_1, ptr @emit_group_store, i64 1}
!324 = !{ptr @emit_library_call_value_1, ptr @promote_function_mode, i64 1}
!325 = !{ptr @emit_library_call_value_1, ptr @convert_modes, i64 1}
!326 = !{ptr @emit_library_call_value_1, ptr @restore_fixed_argument_area, i64 1}
!327 = !{ptr @emit_library_call_value_1, ptr @free, i64 84}
!328 = !{ptr @emit_library_call_value, ptr @emit_library_call_value_1, i64 85}
!329 = !{ptr @must_pass_in_stack_var_size_or_pad, ptr @int_size_in_bytes, i64 144}
!330 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!331 = !{!"function_entry_count", i64 92863}
!332 = !{!"branch_weights", i32 89605, i32 3260}
!333 = !{!"branch_weights", i32 3260, i32 1}
!334 = !{!"branch_weights", i32 92864, i32 1}
!335 = !{!336, !338, i64 1640}
!336 = !{!"gcc_target", !337, i64 0, !342, i64 368, !343, i64 664, !344, i64 744, !338, i64 752, !338, i64 760, !338, i64 768, !338, i64 776, !338, i64 784, !338, i64 792, !338, i64 800, !338, i64 808, !338, i64 816, !338, i64 824, !338, i64 832, !338, i64 840, !338, i64 848, !338, i64 856, !338, i64 864, !338, i64 872, !338, i64 880, !338, i64 888, !338, i64 896, !338, i64 904, !338, i64 912, !338, i64 920, !338, i64 928, !338, i64 936, !338, i64 944, !338, i64 952, !338, i64 960, !338, i64 968, !338, i64 976, !338, i64 984, !338, i64 992, !338, i64 1000, !338, i64 1008, !338, i64 1016, !338, i64 1024, !338, i64 1032, !338, i64 1040, !338, i64 1048, !338, i64 1056, !345, i64 1064, !345, i64 1072, !338, i64 1080, !338, i64 1088, !338, i64 1096, !338, i64 1104, !338, i64 1112, !338, i64 1120, !338, i64 1128, !338, i64 1136, !338, i64 1144, !338, i64 1152, !338, i64 1160, !338, i64 1168, !346, i64 1176, !338, i64 1232, !338, i64 1240, !338, i64 1248, !338, i64 1256, !338, i64 1264, !338, i64 1272, !338, i64 1280, !338, i64 1288, !338, i64 1296, !338, i64 1304, !338, i64 1312, !338, i64 1320, !338, i64 1328, !338, i64 1336, !338, i64 1344, !338, i64 1352, !338, i64 1360, !338, i64 1368, !338, i64 1376, !338, i64 1384, !338, i64 1392, !338, i64 1400, !338, i64 1408, !338, i64 1416, !338, i64 1424, !338, i64 1432, !338, i64 1440, !338, i64 1448, !338, i64 1456, !345, i64 1464, !347, i64 1472, !338, i64 1664, !338, i64 1672, !338, i64 1680, !338, i64 1688, !338, i64 1696, !338, i64 1704, !338, i64 1712, !338, i64 1720, !338, i64 1728, !338, i64 1736, !338, i64 1744, !338, i64 1752, !338, i64 1760, !338, i64 1768, !338, i64 1776, !348, i64 1784, !349, i64 1792, !350, i64 1896, !351, i64 1968, !338, i64 2016, !339, i64 2024, !339, i64 2025, !339, i64 2026, !339, i64 2027, !339, i64 2028, !339, i64 2029, !339, i64 2030, !339, i64 2031, !339, i64 2032, !339, i64 2033, !339, i64 2034, !339, i64 2035}
!337 = !{!"asm_out", !338, i64 0, !338, i64 8, !338, i64 16, !341, i64 24, !341, i64 56, !338, i64 88, !338, i64 96, !338, i64 104, !338, i64 112, !338, i64 120, !338, i64 128, !338, i64 136, !338, i64 144, !338, i64 152, !338, i64 160, !338, i64 168, !338, i64 176, !338, i64 184, !338, i64 192, !338, i64 200, !338, i64 208, !338, i64 216, !338, i64 224, !338, i64 232, !338, i64 240, !338, i64 248, !338, i64 256, !338, i64 264, !338, i64 272, !338, i64 280, !338, i64 288, !338, i64 296, !338, i64 304, !338, i64 312, !338, i64 320, !338, i64 328, !338, i64 336, !338, i64 344, !338, i64 352, !338, i64 360}
!338 = !{!"any pointer", !339, i64 0}
!339 = !{!"omnipotent char", !340, i64 0}
!340 = !{!"Simple C/C++ TBAA"}
!341 = !{!"asm_int_op", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24}
!342 = !{!"sched", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72, !338, i64 80, !338, i64 88, !338, i64 96, !338, i64 104, !338, i64 112, !338, i64 120, !338, i64 128, !338, i64 136, !338, i64 144, !338, i64 152, !338, i64 160, !338, i64 168, !338, i64 176, !338, i64 184, !338, i64 192, !338, i64 200, !338, i64 208, !338, i64 216, !338, i64 224, !338, i64 232, !338, i64 240, !338, i64 248, !338, i64 256, !338, i64 264, !338, i64 272, !338, i64 280, !338, i64 288}
!343 = !{!"vectorize", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72}
!344 = !{!"int", !339, i64 0}
!345 = !{!"long", !339, i64 0}
!346 = !{!"addr_space", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48}
!347 = !{!"calls", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72, !338, i64 80, !338, i64 88, !338, i64 96, !338, i64 104, !338, i64 112, !338, i64 120, !338, i64 128, !338, i64 136, !338, i64 144, !338, i64 152, !338, i64 160, !338, i64 168, !338, i64 176, !338, i64 184}
!348 = !{!"c", !338, i64 0}
!349 = !{!"cxx", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72, !338, i64 80, !338, i64 88, !338, i64 96}
!350 = !{!"emutls", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !338, i64 56, !339, i64 64, !339, i64 65}
!351 = !{!"target_option_hooks", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40}
!352 = !{!"function_entry_count", i64 527957}
!353 = !{!"function_entry_count", i64 10180414}
!354 = !{!"calls.c:special_function_p"}
!355 = !{!"branch_weights", i32 1, i32 10180415}
!356 = !{!339, !339, i64 0}
!357 = !{!"branch_weights", i32 7908999, i32 2271417}
!358 = !{!"branch_weights", i32 7908999, i32 1}
!359 = !{!"branch_weights", i32 940748, i32 6968252}
!360 = !{!"branch_weights", i32 -1217079254, i32 188729344, i32 301128149}
!361 = !{!"branch_weights", i32 1276, i32 367337}
!362 = !{!"branch_weights", i32 1, i32 1276}
!363 = !{!"branch_weights", i32 135244, i32 452898}
!364 = !{!"branch_weights", i32 15214, i32 120031}
!365 = !{!"branch_weights", i32 48540032, i32 2098943616}
!366 = !{!"branch_weights", i32 204821, i32 59736}
!367 = !{!"branch_weights", i32 110903296, i32 -1050083328, i32 16383}
!368 = !{!"branch_weights", i32 198052, i32 1}
!369 = !{!"branch_weights", i32 6770, i32 59736}
!370 = !{!"branch_weights", i32 -1348662351, i32 264372806, i32 7231248, i32 52606258, i32 989042352, i32 35409682}
!371 = !{!"branch_weights", i32 -1827590740, i32 318685184, i32 680514458, i32 46538424}
!372 = !{!"branch_weights", i32 1, i32 38902}
!373 = !{!"branch_weights", i32 1, i32 83071}
!374 = !{!"branch_weights", i32 1, i32 5681}
!375 = !{!"branch_weights", i32 9891, i32 2147473757}
!376 = !{!"branch_weights", i32 6100, i32 5631}
!377 = !{!"branch_weights", i32 1, i32 6100}
!378 = !{!"branch_weights", i32 1436, i32 83899}
!379 = !{!"branch_weights", i32 135, i32 1302}
!380 = !{!"branch_weights", i32 1305698, i32 298655}
!381 = !{!"branch_weights", i32 1, i32 1305698}
!382 = !{!"branch_weights", i32 25561, i32 31879}
!383 = !{!"branch_weights", i32 1, i32 25561}
!384 = !{!"function_entry_count", i64 294994}
!385 = !{i8 0, i8 2}
!386 = !{!"branch_weights", i32 1, i32 294995}
!387 = !{!"branch_weights", i32 6268, i32 288728}
!388 = !{!"branch_weights", i32 288326, i32 403}
!389 = !{!"calls.c:is_gimple_call"}
!390 = !{i32 0, i32 256}
!391 = !{!"calls.c:gimple_call_fndecl"}
!392 = !{!"branch_weights", i32 288728, i32 6268}
!393 = !{!"function_entry_count", i64 1179976}
!394 = !{!"calls.c:gimple_code"}
!395 = !{!"calls.c:gimple_call_fn"}
!396 = !{!"calls.c:gimple_op"}
!397 = !{!338, !338, i64 0}
!398 = !{!"calls.c:gimple_has_ops"}
!399 = !{!"calls.c:gimple_ops"}
!400 = !{!345, !345, i64 0}
!401 = !{!"calls.c:gimple_statement_structure"}
!402 = !{!"calls.c:gss_for_code"}
!403 = !{!344, !344, i64 0}
!404 = !{!"function_entry_count", i64 14236}
!405 = !{!"branch_weights", i32 14237, i32 1}
!406 = !{!"branch_weights", i32 13916, i32 322}
!407 = !{!"branch_weights", i32 13916, i32 1}
!408 = !{!"function_entry_count", i64 9638526}
!409 = !{!"branch_weights", i32 281, i32 -1658821372, i32 81400995}
!410 = !{!"branch_weights", i32 9349816, i32 1}
!411 = !{!"branch_weights", i32 9310535, i32 39282}
!412 = !{!"branch_weights", i32 9349706, i32 111}
!413 = !{!"branch_weights", i32 288712, i32 1}
!414 = !{!"function_entry_count", i64 260278}
!415 = !{!"branch_weights", i32 5785, i32 254495}
!416 = !{!"branch_weights", i32 1, i32 5785}
!417 = !{!"branch_weights", i32 5785, i32 1}
!418 = !{!"function_entry_count", i64 0}
!419 = !{!"function_entry_count", i64 52696}
!420 = !{!"calls.c:rhs_regno"}
!421 = !{!"function_entry_count", i64 92778}
!422 = !{!"branch_weights", i32 23194, i32 -2142958391}
!423 = !{!424, !344, i64 4}
!424 = !{!"rtl_data", !425, i64 0, !426, i64 40, !427, i64 96, !428, i64 112, !430, i64 208, !431, i64 248, !344, i64 312, !338, i64 320, !338, i64 328, !338, i64 336, !338, i64 344, !338, i64 352, !338, i64 360, !338, i64 368, !338, i64 376, !338, i64 384, !338, i64 392, !345, i64 400, !338, i64 408, !338, i64 416, !338, i64 424, !344, i64 432, !344, i64 436, !344, i64 440, !344, i64 444, !344, i64 448, !344, i64 452, !338, i64 456, !339, i64 464, !339, i64 465, !339, i64 466, !339, i64 467, !339, i64 468, !339, i64 469, !339, i64 470, !339, i64 471, !339, i64 472, !339, i64 473, !339, i64 474, !339, i64 475, !339, i64 476, !339, i64 477, !339, i64 478, !339, i64 479, !339, i64 480, !339, i64 481, !339, i64 482, !339, i64 483, !339, i64 484, !339, i64 485}
!425 = !{!"expr_status", !344, i64 0, !344, i64 4, !344, i64 8, !338, i64 16, !338, i64 24, !338, i64 32}
!426 = !{!"emit_status", !344, i64 0, !344, i64 4, !338, i64 8, !338, i64 16, !338, i64 24, !344, i64 32, !344, i64 36, !344, i64 40, !344, i64 44, !338, i64 48}
!427 = !{!"varasm_status", !338, i64 0, !344, i64 8}
!428 = !{!"incoming_args", !344, i64 0, !344, i64 4, !344, i64 8, !338, i64 16, !429, i64 24, !338, i64 88}
!429 = !{!"ix86_args", !344, i64 0, !344, i64 4, !344, i64 8, !344, i64 12, !344, i64 16, !344, i64 20, !344, i64 24, !344, i64 28, !344, i64 32, !344, i64 36, !344, i64 40, !344, i64 44, !344, i64 48, !344, i64 52, !344, i64 56, !344, i64 60}
!430 = !{!"function_subsections", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32}
!431 = !{!"rtl_eh", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !339, i64 48}
!432 = !{!"branch_weights", i32 3260, i32 89520}
!433 = !{!336, !338, i64 1488}
!434 = !{!"branch_weights", i32 1253812, i32 -2141954714}
!435 = !{!"branch_weights", i32 15922104, i32 486296036}
!436 = !{!"branch_weights", i32 5885, i32 8655364}
!437 = !{!"branch_weights", i32 1, i32 2942}
!438 = distinct !{!438, !439}
!439 = !{!"llvm.loop.mustprogress"}
!440 = distinct !{!440, !439}
!441 = !{!"branch_weights", i32 92729, i32 51}
!442 = !{!"branch_weights", i32 1, i32 51}
!443 = !{!"branch_weights", i32 46, i32 6}
!444 = !{!"branch_weights", i32 13, i32 34}
!445 = !{!"branch_weights", i32 14450, i32 75071}
!446 = !{!447, !344, i64 0}
!447 = !{!"cgraph_rtl_info", !344, i64 0}
!448 = !{!"branch_weights", i32 157182540, i32 -1778798380}
!449 = !{!"branch_weights", i32 1, i32 185558, i32 1}
!450 = !{!336, !338, i64 1552}
!451 = !{!"branch_weights", i32 92779, i32 1}
!452 = distinct !{!452, !439}
!453 = !{!"branch_weights", i32 92632, i32 148}
!454 = !{!"branch_weights", i32 51, i32 1}
!455 = !{!"branch_weights", i32 3, i32 49}
!456 = !{!"branch_weights", i32 1, i32 3}
!457 = !{!"branch_weights", i32 1, i32 7}
!458 = !{!"branch_weights", i32 3, i32 1}
!459 = !{!"branch_weights", i32 53, i32 92727}
!460 = !{!336, !338, i64 1536}
!461 = !{!"branch_weights", i32 1, i32 92727}
!462 = !{!336, !338, i64 1544}
!463 = !{!464, !338, i64 8}
!464 = !{!"args_size", !345, i64 0, !338, i64 8}
!465 = !{!"branch_weights", i32 98510, i32 -1248411477}
!466 = !{!"branch_weights", i32 1, i32 92779}
!467 = !{!"branch_weights", i32 2067279377, i32 80204271}
!468 = !{!"branch_weights", i32 3466, i32 1}
!469 = !{!336, !338, i64 1088}
!470 = !{!"branch_weights", i32 2, i32 3465}
!471 = !{!"branch_weights", i32 3465, i32 1}
!472 = !{!"branch_weights", i32 436, i32 3030}
!473 = !{!"branch_weights", i32 1, i32 3030}
!474 = !{!464, !345, i64 0}
!475 = !{!424, !344, i64 116}
!476 = !{!424, !344, i64 120}
!477 = !{!"branch_weights", i32 1441, i32 2025}
!478 = !{!"branch_weights", i32 2025, i32 1}
!479 = !{!480, !338, i64 344}
!480 = !{!"lang_hooks", !338, i64 0, !345, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72, !338, i64 80, !338, i64 88, !338, i64 96, !338, i64 104, !338, i64 112, !338, i64 120, !338, i64 128, !338, i64 136, !338, i64 144, !338, i64 152, !338, i64 160, !338, i64 168, !338, i64 176, !338, i64 184, !338, i64 192, !338, i64 200, !338, i64 208, !338, i64 216, !338, i64 224, !338, i64 232, !481, i64 240, !482, i64 248, !483, i64 256, !484, i64 272, !485, i64 432, !486, i64 560, !338, i64 584, !338, i64 592, !338, i64 600, !338, i64 608, !338, i64 616, !338, i64 624, !338, i64 632, !338, i64 640, !338, i64 648, !338, i64 656, !338, i64 664, !339, i64 672}
!481 = !{!"lang_hooks_for_tree_inlining", !338, i64 0}
!482 = !{!"lang_hooks_for_callgraph", !338, i64 0}
!483 = !{!"lang_hooks_for_tree_dump", !338, i64 0, !338, i64 8}
!484 = !{!"lang_hooks_for_decls", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72, !338, i64 80, !338, i64 88, !338, i64 96, !338, i64 104, !338, i64 112, !338, i64 120, !338, i64 128, !338, i64 136, !338, i64 144, !338, i64 152}
!485 = !{!"lang_hooks_for_types", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72, !338, i64 80, !338, i64 88, !338, i64 96, !338, i64 104, !338, i64 112, !339, i64 120}
!486 = !{!"lang_hooks_for_lto", !338, i64 0, !338, i64 8, !338, i64 16}
!487 = !{!"branch_weights", i32 1, i32 2025}
!488 = !{!"branch_weights", i32 1121, i32 905}
!489 = !{!"branch_weights", i32 905, i32 1}
!490 = !{!"branch_weights", i32 819025, i32 1811}
!491 = !{!424, !344, i64 440}
!492 = !{!"branch_weights", i32 5625, i32 87155}
!493 = !{!"branch_weights", i32 92778, i32 1}
!494 = distinct !{!494, !439}
!495 = !{!"branch_weights", i32 90755, i32 2025}
!496 = !{!424, !344, i64 0}
!497 = !{!"branch_weights", i32 94805, i32 90755}
!498 = !{!"branch_weights", i32 2025, i32 90755}
!499 = !{!"branch_weights", i32 2092737124, i32 54746524}
!500 = !{!"branch_weights", i32 88897, i32 1859}
!501 = !{!"branch_weights", i32 2146423665, i32 1059983}
!502 = !{i64 0, i64 8, !400, i64 8, i64 8, !397}
!503 = !{!424, !344, i64 8}
!504 = !{!424, !338, i64 200}
!505 = !{!"branch_weights", i32 90755, i32 1}
!506 = !{!424, !344, i64 312}
!507 = !{!"branch_weights", i32 9169, i32 81587}
!508 = !{!"branch_weights", i32 1, i32 90755}
!509 = !{!"branch_weights", i32 2881, i32 87875}
!510 = !{!"branch_weights", i32 12898, i32 77858}
!511 = !{!"branch_weights", i32 92778, i32 102026}
!512 = distinct !{!512, !439}
!513 = !{!514, !344, i64 64}
!514 = !{!"arg_data", !338, i64 0, !344, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !344, i64 56, !344, i64 60, !344, i64 64, !515, i64 72, !338, i64 144, !338, i64 152, !338, i64 160, !338, i64 168, !344, i64 176}
!515 = !{!"locate_and_pad_arg_data", !464, i64 0, !464, i64 16, !464, i64 32, !464, i64 48, !344, i64 64, !344, i64 68}
!516 = !{!"branch_weights", i32 194804, i32 1}
!517 = !{!"branch_weights", i32 1840552916, i32 -185260472}
!518 = !{!"branch_weights", i32 1, i32 64082}
!519 = !{!"branch_weights", i32 90755, i32 94805}
!520 = !{!514, !338, i64 32}
!521 = !{!"branch_weights", i32 172303, i32 22502}
!522 = !{!"branch_weights", i32 22502, i32 1}
!523 = !{!"branch_weights", i32 172303, i32 1}
!524 = !{!"branch_weights", i32 2896, i32 169408}
!525 = !{i32 0, i32 2}
!526 = !{!"branch_weights", i32 2896, i32 1}
!527 = !{!"branch_weights", i32 194584, i32 221}
!528 = !{!"branch_weights", i32 185932, i32 8653}
!529 = !{!"branch_weights", i32 1, i32 8653}
!530 = !{!514, !338, i64 144}
!531 = !{!"branch_weights", i32 964, i32 7910}
!532 = distinct !{!532, !439}
!533 = !{!"branch_weights", i32 1898453409, i32 249030239}
!534 = !{!514, !344, i64 60}
!535 = !{!"branch_weights", i32 27596, i32 1}
!536 = !{!"branch_weights", i32 10759, i32 16837}
!537 = distinct !{!537, !439}
!538 = !{!"branch_weights", i32 2314252, i32 -87110709}
!539 = !{!"branch_weights", i32 -2145300436, i32 1205489}
!540 = !{!"branch_weights", i32 1, i32 92729}
!541 = !{!336, !338, i64 1504}
!542 = !{!"branch_weights", i32 92729, i32 1}
!543 = !{!"branch_weights", i32 1859, i32 1}
!544 = !{!"branch_weights", i32 2066227406, i32 81256242}
!545 = !{!"branch_weights", i32 5457, i32 1}
!546 = !{!"branch_weights", i32 1, i32 0}
!547 = distinct !{!547, !439}
!548 = !{!"branch_weights", i32 5458, i32 1}
!549 = !{!"branch_weights", i32 -1727093368, i32 -912581484}
!550 = !{!"branch_weights", i32 52691, i32 51}
!551 = !{!"branch_weights", i32 18, i32 34}
!552 = !{!"branch_weights", i32 34, i32 1}
!553 = !{!"branch_weights", i32 1, i32 18}
!554 = !{!"branch_weights", i32 1, i32 52691}
!555 = !{!"branch_weights", i32 52691, i32 1}
!556 = !{!"branch_weights", i32 51787, i32 53597}
!557 = !{!"branch_weights", i32 51787, i32 905}
!558 = !{!"branch_weights", i32 1, i32 51787}
!559 = distinct !{!559, !439}
!560 = !{!514, !338, i64 160}
!561 = !{!"branch_weights", i32 52691, i32 40089}
!562 = !{!"branch_weights", i32 90754, i32 1}
!563 = !{!"branch_weights", i32 190783, i32 1}
!564 = !{!514, !338, i64 152}
!565 = !{!514, !345, i64 72}
!566 = !{!"branch_weights", i32 90754, i32 100029}
!567 = distinct !{!567, !439}
!568 = !{!569, !338, i64 64}
!569 = !{!"function", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72, !338, i64 80, !338, i64 88, !338, i64 96, !344, i64 104, !344, i64 108, !344, i64 112, !344, i64 116, !344, i64 120, !344, i64 124, !338, i64 128, !344, i64 136, !344, i64 137, !344, i64 138, !344, i64 138, !344, i64 138, !344, i64 138, !344, i64 138, !344, i64 138, !344, i64 138, !344, i64 139, !344, i64 139, !344, i64 139, !344, i64 139, !344, i64 139, !344, i64 139, !344, i64 139}
!570 = !{!"branch_weights", i32 148, i32 1}
!571 = !{!514, !338, i64 168}
!572 = distinct !{!572, !439}
!573 = !{!"branch_weights", i32 2024, i32 1}
!574 = !{!514, !338, i64 16}
!575 = !{!"branch_weights", i32 2024, i32 1998}
!576 = distinct !{!576, !439}
!577 = !{!578, !338, i64 0}
!578 = !{!"simple_bitmap_def", !338, i64 0, !344, i64 8, !344, i64 12, !339, i64 16}
!579 = !{!"branch_weights", i32 87322, i32 3434}
!580 = !{!"branch_weights", i32 87322, i32 1}
!581 = !{!"branch_weights", i32 2100597387, i32 46886261}
!582 = !{!424, !339, i64 475}
!583 = !{!"calls.c:first_call_expr_arg"}
!584 = !{!"function_entry_count", i64 287531}
!585 = !{!"calls.c:next_call_expr_arg"}
!586 = !{!587, !344, i64 12}
!587 = !{!"call_expr_arg_iterator_d", !338, i64 0, !344, i64 8, !344, i64 12}
!588 = !{!587, !344, i64 8}
!589 = !{!"branch_weights", i32 194754, i32 92779}
!590 = !{!587, !338, i64 0}
!591 = !{!"function_entry_count", i64 172425}
!592 = !{!"calls.c:expand_expr"}
!593 = !{!"calls.c:split_complex_types"}
!594 = distinct !{!594, !439}
!595 = distinct !{!595, !439}
!596 = !{!"calls.c:initialize_argument_information"}
!597 = !{!"branch_weights", i32 -2142981586, i32 46389}
!598 = !{!514, !338, i64 0}
!599 = !{!"branch_weights", i32 1, i32 92778}
!600 = !{!"branch_weights", i32 194754, i32 1}
!601 = !{!"branch_weights", i32 92778, i32 101976}
!602 = distinct !{!602, !439}
!603 = !{!"branch_weights", i32 1, i32 194804}
!604 = !{!"branch_weights", i32 2447225, i32 -1925602770}
!605 = !{!"branch_weights", i32 200, i32 1}
!606 = !{!"branch_weights", i32 5837, i32 188968}
!607 = !{!514, !344, i64 56}
!608 = !{!514, !344, i64 8}
!609 = !{!514, !338, i64 40}
!610 = !{!336, !338, i64 1576}
!611 = !{!336, !338, i64 1560}
!612 = !{!"branch_weights", i32 1, i32 22502}
!613 = !{!"branch_weights", i32 2147476758, i32 6890}
!614 = !{!"branch_weights", i32 1899426513, i32 248057135}
!615 = !{!"branch_weights", i32 45005, i32 506340004}
!616 = !{!"branch_weights", i32 -2147483648, i32 0}
!617 = !{!514, !338, i64 80}
!618 = distinct !{!618, !439}
!619 = !{!"calls.c:finalize_must_preallocate"}
!620 = distinct !{!620, !439}
!621 = !{!"function_entry_count", i64 90754}
!622 = !{!"calls.c:precompute_arguments"}
!623 = !{!"branch_weights", i32 90754, i32 90756}
!624 = !{!"branch_weights", i32 1, i32 190783}
!625 = !{!514, !338, i64 24}
!626 = distinct !{!626, !439}
!627 = !{!"calls.c:compute_argument_block_size"}
!628 = !{!"branch_weights", i32 90118, i32 95442}
!629 = !{!"branch_weights", i32 90118, i32 2662}
!630 = !{!"function_entry_count", i64 25760}
!631 = !{!"calls.c:expand_normal"}
!632 = !{!"calls.c:combine_pending_stack_adjustment_and_call"}
!633 = !{!"calls.c:compute_argument_addresses"}
!634 = !{!514, !338, i64 96}
!635 = !{!514, !345, i64 88}
!636 = !{!514, !338, i64 112}
!637 = !{!514, !345, i64 104}
!638 = !{!514, !344, i64 140}
!639 = !{!514, !344, i64 136}
!640 = !{!"branch_weights", i32 1, i32 172303}
!641 = distinct !{!641, !439}
!642 = !{!"calls.c:rtx_for_function_call"}
!643 = !{!"branch_weights", i32 217, i32 89304}
!644 = !{!"branch_weights", i32 206, i32 12}
!645 = !{!"branch_weights", i32 955, i32 88566}
!646 = !{!"calls.c:precompute_register_parameters"}
!647 = !{!"branch_weights", i32 3923, i32 18580}
!648 = !{!"branch_weights", i32 1, i32 3923}
!649 = !{!514, !338, i64 48}
!650 = !{!"branch_weights", i32 61984129, i32 115196620, i32 7873}
!651 = !{!"branch_weights", i32 4, i32 7870}
!652 = !{!"branch_weights", i32 3179, i32 4692}
!653 = !{!"branch_weights", i32 1, i32 3179}
!654 = distinct !{!654, !439}
!655 = !{!"function_entry_count", i64 90839}
!656 = !{!"calls.c:save_fixed_argument_area"}
!657 = !{!"branch_weights", i32 1, i32 90840}
!658 = !{!"branch_weights", i32 1, i32 90839}
!659 = distinct !{!659, !439}
!660 = distinct !{!660, !439}
!661 = !{!"function_entry_count", i64 172302}
!662 = !{!"calls.c:store_one_arg"}
!663 = !{!"branch_weights", i32 169408, i32 175200}
!664 = !{!"branch_weights", i32 169408, i32 2896}
!665 = !{!"branch_weights", i32 42352, i32 -707583488}
!666 = !{!"branch_weights", i32 1, i32 169408}
!667 = !{!"branch_weights", i32 91551, i32 77858}
!668 = !{!"branch_weights", i32 169407, i32 1}
!669 = !{!"branch_weights", i32 169407, i32 510814}
!670 = distinct !{!670, !439}
!671 = !{!"branch_weights", i32 680221, i32 169408}
!672 = !{!"branch_weights", i32 2147471185, i32 12463}
!673 = !{!514, !344, i64 176}
!674 = !{!"branch_weights", i32 429, i32 2468}
!675 = !{!"branch_weights", i32 429, i32 1}
!676 = !{!"branch_weights", i32 172156, i32 148}
!677 = !{!"branch_weights", i32 6100, i32 166204}
!678 = !{!"branch_weights", i32 124, i32 166081}
!679 = !{!"branch_weights", i32 166081, i32 1}
!680 = !{!514, !338, i64 128}
!681 = !{!514, !345, i64 120}
!682 = !{!"branch_weights", i32 124, i32 1}
!683 = !{!"branch_weights", i32 1, i32 124}
!684 = !{!"branch_weights", i32 39658969, i32 -1976655544}
!685 = !{!"branch_weights", i32 -707604664, i32 42352}
!686 = !{!"function_entry_count", i64 6045}
!687 = !{!"calls.c:check_sibcall_argument_overlap"}
!688 = !{!"branch_weights", i32 2141, i32 3906}
!689 = !{!"branch_weights", i32 1, i32 6045}
!690 = !{!"branch_weights", i32 -360769386, i32 506821}
!691 = !{!"branch_weights", i32 7751, i32 1}
!692 = !{!"branch_weights", i32 6045, i32 1706}
!693 = distinct !{!693, !439}
!694 = !{!"branch_weights", i32 3151, i32 2896}
!695 = !{!"branch_weights", i32 2895, i32 1}
!696 = !{!"branch_weights", i32 2895, i32 8686}
!697 = distinct !{!697, !439}
!698 = !{!"calls.c:load_register_parameters"}
!699 = !{!"branch_weights", i32 190783, i32 4022}
!700 = !{!"branch_weights", i32 4, i32 22499}
!701 = !{!"branch_weights", i32 22499, i32 4}
!702 = !{!"branch_weights", i32 4, i32 1}
!703 = distinct !{!703, !439}
!704 = !{!"branch_weights", i32 21376, i32 1127}
!705 = !{!"branch_weights", i32 1127, i32 1}
!706 = distinct !{!706, !439}
!707 = !{!"calls.c:emit_call_1"}
!708 = !{!"branch_weights", i32 92850, i32 15}
!709 = !{!"branch_weights", i32 15, i32 1}
!710 = !{!"branch_weights", i32 90826, i32 2025}
!711 = !{!"branch_weights", i32 937, i32 1089}
!712 = !{!"branch_weights", i32 27748, i32 63079}
!713 = !{!"branch_weights", i32 92498, i32 367}
!714 = !{!"branch_weights", i32 87744, i32 5121}
!715 = !{!"branch_weights", i32 90394, i32 2471}
!716 = !{!"branch_weights", i32 89431, i32 3434}
!717 = !{!"branch_weights", i32 92863, i32 2}
!718 = !{!719, !338, i64 216}
!719 = !{!"gcc_debug_hooks", !338, i64 0, !338, i64 8, !338, i64 16, !338, i64 24, !338, i64 32, !338, i64 40, !338, i64 48, !338, i64 56, !338, i64 64, !338, i64 72, !338, i64 80, !338, i64 88, !338, i64 96, !338, i64 104, !338, i64 112, !338, i64 120, !338, i64 128, !338, i64 136, !338, i64 144, !338, i64 152, !338, i64 160, !338, i64 168, !338, i64 176, !338, i64 184, !338, i64 192, !338, i64 200, !338, i64 208, !338, i64 216, !338, i64 224, !338, i64 232, !338, i64 240, !344, i64 248}
!720 = !{!424, !339, i64 481}
!721 = !{!"branch_weights", i32 1, i32 92864}
!722 = !{!"calls.c:avoid_likely_spilled_reg"}
!723 = !{!"calls.c:restore_fixed_argument_area"}
!724 = !{!"calls.c:init_call_expr_arg_iterator"}
!725 = !{!"function_entry_count", i64 5693}
!726 = !{!"calls.c:mem_overlaps_already_clobbered_arg_p"}
!727 = !{!"branch_weights", i32 1842, i32 3853}
!728 = !{!"branch_weights", i32 1604, i32 2250}
!729 = !{!"branch_weights", i32 1325, i32 280}
!730 = !{!"branch_weights", i32 1325, i32 1}
!731 = !{!"branch_weights", i32 1, i32 280}
!732 = !{!"branch_weights", i32 1, i32 3166}
!733 = !{!578, !344, i64 8}
!734 = !{!"branch_weights", i32 12661, i32 1}
!735 = !{!"branch_weights", i32 3166, i32 9495}
!736 = distinct !{!736, !439}
!737 = !{!"function_entry_count", i64 26977}
!738 = !{!"calls.c:check_sibcall_argument_overlap_1"}
!739 = !{!"branch_weights", i32 1, i32 26978}
!740 = !{!"branch_weights", i32 5266, i32 21713}
!741 = !{!"branch_weights", i32 1, i32 21712}
!742 = !{!"branch_weights", i32 898508250, i32 561247380, i32 9037500}
!743 = !{!744, !344, i64 0}
!744 = !{!"rtvec_def", !344, i64 0, !339, i64 8}
!745 = !{!"branch_weights", i32 299, i32 1}
!746 = !{!"branch_weights", i32 18630, i32 1}
!747 = !{!"branch_weights", i32 299, i32 300}
!748 = distinct !{!748, !439}
!749 = !{!"branch_weights", i32 599, i32 1}
!750 = !{!"branch_weights", i32 21712, i32 27042}
!751 = distinct !{!751, !439}
!752 = !{!"function_entry_count", i64 11580}
!753 = !{!"calls.c:SET_BIT"}
!754 = !{!"branch_weights", i32 11581, i32 1}
!755 = !{!"function_entry_count", i64 1006}
!756 = !{!"branch_weights", i32 1, i32 127}
!757 = !{!"branch_weights", i32 3019, i32 2535}
!758 = !{!"branch_weights", i32 1007, i32 2013}
!759 = !{!"branch_weights", i32 2272, i32 2276}
!760 = !{!"branch_weights", i32 4547, i32 1}
!761 = !{!"branch_weights", i32 127, i32 710657}
!762 = distinct !{!762, !439}
!763 = !{!"function_entry_count", i64 85}
!764 = !{!"calls.c:emit_library_call_value_1"}
!765 = !{!"branch_weights", i32 8, i32 79}
!766 = !{!"branch_weights", i32 86, i32 1}
!767 = !{!480, !338, i64 448}
!768 = !{!"branch_weights", i32 1, i32 173}
!769 = !{!770, !338, i64 0}
!770 = !{!"arg", !338, i64 0, !344, i64 8, !338, i64 16, !344, i64 24, !515, i64 32, !338, i64 104}
!771 = !{!770, !344, i64 8}
!772 = !{!770, !344, i64 24}
!773 = !{!770, !338, i64 16}
!774 = !{!770, !345, i64 32}
!775 = !{!"branch_weights", i32 171, i32 1}
!776 = !{!"branch_weights", i32 1, i32 171}
!777 = !{!"branch_weights", i32 7183, i32 41}
!778 = !{!"branch_weights", i32 2501, i32 6882, i32 1281}
!779 = !{!"branch_weights", i32 41, i32 1}
!780 = !{!"branch_weights", i32 1, i32 41}
!781 = !{!770, !338, i64 40}
!782 = !{!"branch_weights", i32 171, i32 171}
!783 = distinct !{!783, !439}
!784 = !{!"branch_weights", i32 1, i32 86}
!785 = !{!"branch_weights", i32 19, i32 68}
!786 = !{!"branch_weights", i32 21629331, i32 2125854317}
!787 = !{!770, !344, i64 100}
!788 = !{!770, !345, i64 64}
!789 = !{!"branch_weights", i32 170, i32 1}
!790 = !{!"branch_weights", i32 170, i32 1191}
!791 = distinct !{!791, !439}
!792 = !{!"branch_weights", i32 1361, i32 171}
!793 = !{!770, !345, i64 48}
!794 = !{!770, !338, i64 104}
!795 = !{!770, !338, i64 88}
!796 = !{!770, !345, i64 80}
!797 = !{!"branch_weights", i32 170, i32 172}
!798 = distinct !{!798, !439}
!799 = distinct !{!799, !439}
!800 = distinct !{!800, !439}
!801 = !{!"branch_weights", i32 2110529408, i32 36954240}
!802 = distinct !{!802, !439}
!803 = !{!"branch_weights", i32 7396, i32 173}
!804 = distinct !{!804, !439}
!805 = !{!"function_entry_count", i64 208584}
!806 = !{!"branch_weights", i32 1, i32 208585}
!807 = !{!"branch_weights", i32 208585, i32 1}
!808 = !{!"branch_weights", i32 144, i32 208442}
