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
define dso_local ptr @prepare_call_address(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #0 {
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 45
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = icmp eq i32 %4, 0
  %12 = tail call ptr @memory_address_addr_space(i32 noundef 14, ptr noundef nonnull %1, i8 noundef zeroext 0) #18
  br i1 %11, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @force_not_mem(ptr noundef %12) #18
  br label %15

15:                                               ; preds = %10, %6, %13
  %16 = phi ptr [ %14, %13 ], [ %1, %6 ], [ %12, %10 ]
  %17 = icmp eq ptr %2, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %0, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #18
  br label %21

21:                                               ; preds = %18, %20
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !6
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
define dso_local i32 @setjmp_call_p(ptr noundef %0) local_unnamed_addr #3 {
  %2 = tail call fastcc i32 @special_function_p(ptr noundef %0, i32 noundef 0) #19
  %3 = and i32 %2, 128
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @special_function_p(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %129, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %129, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_identifier, ptr %6, i64 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !23
  %11 = icmp ult i32 %10, 18
  br i1 %11, label %12, label %129

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 40
  br i1 %19, label %20, label %129

20:                                               ; preds = %16, %12
  %21 = load i64, ptr %0, align 8
  %22 = and i64 %21, 134217728
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %129, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %6, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !23
  %27 = load i8, ptr %26, align 1, !tbaa !23
  switch i32 %10, label %41 [
    i32 6, label %28
    i32 16, label %33
  ]

28:                                               ; preds = %24
  %29 = icmp eq i8 %27, 97
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(7) @.str.2) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %129

33:                                               ; preds = %24
  %34 = icmp eq i8 %27, 95
  br i1 %34, label %35, label %67

35:                                               ; preds = %33
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(17) @.str.3) #19
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35, %30
  %39 = phi i8 [ 95, %35 ], [ 97, %30 ]
  %40 = or i32 %1, 32
  br label %41

41:                                               ; preds = %24, %38, %28
  %42 = phi i8 [ %27, %28 ], [ %39, %38 ], [ %27, %24 ]
  %43 = phi i32 [ %1, %28 ], [ %40, %38 ], [ %1, %24 ]
  %44 = icmp eq i8 %42, 95
  br i1 %44, label %45, label %67

45:                                               ; preds = %35, %41
  %46 = phi i32 [ %43, %41 ], [ %1, %35 ]
  %47 = getelementptr inbounds i8, ptr %26, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !23
  %49 = icmp eq i8 %48, 95
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %26, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !23
  switch i8 %52, label %61 [
    i8 98, label %53
    i8 120, label %59
  ]

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %26, i64 3
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(8) @.str.4, i64 noundef 7) #19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %26, i64 10
  br label %64

59:                                               ; preds = %50
  %60 = getelementptr inbounds i8, ptr %26, i64 3
  br label %64

61:                                               ; preds = %50, %53, %45
  %62 = getelementptr inbounds i8, ptr %26, i64 2
  %63 = select i1 %49, ptr %62, ptr %47
  br label %64

64:                                               ; preds = %59, %57, %61
  %65 = phi ptr [ %63, %61 ], [ %58, %57 ], [ %60, %59 ]
  %66 = load i8, ptr %65, align 1, !tbaa !23
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
  ]

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %70, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !23
  switch i8 %73, label %88 [
    i8 101, label %74
    i8 105, label %80
    i8 97, label %83
  ]

74:                                               ; preds = %71
  %75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(7) @.str.5) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(15) @.str.6) #19
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %129

80:                                               ; preds = %71
  %81 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(10) @.str.7) #19
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %91

83:                                               ; preds = %71
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(8) @.str.8) #19
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %129

86:                                               ; preds = %83, %80, %77, %74
  %87 = or i32 %69, 128
  br label %88

88:                                               ; preds = %71, %86
  %89 = phi i32 [ %87, %86 ], [ %69, %71 ]
  %90 = icmp eq i8 %73, 105
  br i1 %90, label %91, label %129

91:                                               ; preds = %80, %88
  %92 = phi i32 [ %89, %88 ], [ %69, %80 ]
  %93 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(11) @.str.9) #19
  %94 = icmp eq i32 %93, 0
  %95 = or i32 %92, 8
  %96 = select i1 %94, i32 %95, i32 %92
  br label %129

97:                                               ; preds = %67
  %98 = getelementptr inbounds i8, ptr %70, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !23
  %100 = icmp eq i8 %99, 115
  br i1 %100, label %101, label %129

101:                                              ; preds = %97
  %102 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(8) @.str.10) #19
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %118, label %129

104:                                              ; preds = %67
  %105 = getelementptr inbounds i8, ptr %70, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !23
  %107 = icmp eq i8 %106, 102
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(6) @.str.11) #19
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %118, label %129

111:                                              ; preds = %67
  %112 = getelementptr inbounds i8, ptr %70, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !23
  %114 = icmp eq i8 %113, 101
  br i1 %114, label %115, label %129

115:                                              ; preds = %111
  %116 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(11) @.str.12) #19
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115, %108, %101
  %119 = or i32 %69, 128
  br label %129

120:                                              ; preds = %67
  %121 = getelementptr inbounds i8, ptr %70, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !23
  %123 = icmp eq i8 %122, 111
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(8) @.str.13) #19
  %126 = icmp eq i32 %125, 0
  %127 = or i32 %69, 8
  %128 = select i1 %126, i32 %127, i32 %69
  br label %129

129:                                              ; preds = %67, %77, %30, %97, %101, %104, %108, %111, %115, %83, %124, %91, %88, %120, %118, %20, %16, %8, %4, %2
  %130 = phi i32 [ %1, %20 ], [ %1, %16 ], [ %1, %8 ], [ %1, %4 ], [ %1, %2 ], [ %89, %88 ], [ %69, %120 ], [ %119, %118 ], [ %96, %91 ], [ %128, %124 ], [ %69, %83 ], [ %69, %111 ], [ %69, %115 ], [ %69, %104 ], [ %69, %108 ], [ %69, %101 ], [ %69, %97 ], [ %1, %30 ], [ %69, %77 ], [ %69, %67 ]
  ret i32 %130
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_alloca_call_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #19, !range !24
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @special_function_p(ptr noundef nonnull %5, i32 noundef 0) #19
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %4
  br label %12

12:                                               ; preds = %7, %1, %11
  %13 = phi i8 [ 0, %11 ], [ 0, %1 ], [ 1, %7 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !25
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !24
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !25
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !27
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !25
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !28
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @alloca_call_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 59
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 121
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 29
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @special_function_p(ptr noundef nonnull %13, i32 noundef 0) #19
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %11, %5, %1
  br label %22

22:                                               ; preds = %17, %21
  %23 = phi i8 [ 0, %21 ], [ 1, %17 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @flags_from_decl_or_type(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !28
  switch i32 %5, label %33 [
    i32 3, label %6
    i32 2, label %29
  ]

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
  %17 = lshr i32 %8, 8
  %18 = and i32 %17, 512
  %19 = trunc i64 %2 to i32
  %20 = lshr i32 %19, 19
  %21 = and i32 %20, 64
  %22 = or disjoint i32 %21, %15
  %23 = or disjoint i32 %22, %12
  %24 = or disjoint i32 %23, %10
  %25 = and i32 %16, 6
  %26 = or disjoint i32 %24, %25
  %27 = or disjoint i32 %26, %18
  %28 = tail call fastcc i32 @special_function_p(ptr noundef nonnull %0, i32 noundef %27) #19
  br label %33

29:                                               ; preds = %1
  %30 = and i64 %2, 1572864
  %31 = icmp eq i64 %30, 1048576
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %29, %1, %6
  %34 = phi i32 [ %28, %6 ], [ 0, %1 ], [ %32, %29 ]
  %35 = trunc i64 %2 to i32
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 8
  %38 = or i32 %34, %37
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @call_expr_flags(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @get_callee_fndecl(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %2) #19
  br label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %6
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 10
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !23
  %19 = tail call i32 @flags_from_decl_or_type(ptr noundef %18) #19
  br label %20

20:                                               ; preds = %6, %12, %16, %4
  %21 = phi i32 [ %5, %4 ], [ %19, %16 ], [ 0, %12 ], [ 0, %6 ]
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @shift_return_value(i32 noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 {
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
  %18 = load i8, ptr %17, align 1, !tbaa !23
  %19 = zext i32 %0 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !23
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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !23
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @force_expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_call(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
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
  store i8 %25, ptr %4, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  %26 = load i32, ptr @target_flags, align 4, !tbaa !28
  %27 = and i32 %26, 8196
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = tail call i32 @ix86_cfun_abi() #18
  %31 = icmp eq i32 %30, 1
  %32 = load i64, ptr %0, align 8
  br label %33

33:                                               ; preds = %29, %3
  %34 = phi i64 [ %22, %3 ], [ %32, %29 ]
  %35 = phi i1 [ true, %3 ], [ %31, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, ptr %9, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  %37 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  %38 = load ptr, ptr @stack_usage_map, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #20
  store ptr null, ptr %13, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #20
  store i32 0, ptr %14, align 4, !tbaa !28
  %39 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #20
  %40 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %41 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !23
  %43 = trunc i64 %34 to i32
  %44 = lshr i32 %43, 19
  %45 = and i32 %44, 64
  %46 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %0) #18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !23
  %51 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %46) #19
  br label %58

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !23
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !23
  %57 = tail call i32 @flags_from_decl_or_type(ptr noundef %56) #19
  br label %58

58:                                               ; preds = %52, %48
  %59 = phi ptr [ %56, %52 ], [ %46, %48 ]
  %60 = phi i32 [ %57, %52 ], [ %51, %48 ]
  %61 = phi ptr [ %56, %52 ], [ %50, %48 ]
  %62 = or i32 %45, %60
  store i32 %62, ptr %10, align 4, !tbaa !28
  %63 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !23
  %65 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !38
  %66 = tail call ptr %65(ptr noundef %61, i32 noundef 0) #18
  %67 = load i64, ptr %64, align 8
  %68 = trunc i64 %67 to i32
  %69 = and i32 %68, 65535
  %70 = add nsw i32 %69, -15
  %71 = icmp ult i32 %70, 4
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 34, ptr noundef nonnull @.str.15) #18
  br label %74

74:                                               ; preds = %58, %72
  %75 = and i32 %60, 3
  %76 = icmp ne i32 %75, 0
  %77 = and i32 %60, 4
  %78 = icmp eq i32 %77, 0
  %79 = and i1 %76, %78
  br i1 %79, label %80, label %122

80:                                               ; preds = %74
  %81 = icmp ne i32 %2, 0
  %82 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %83 = icmp eq ptr %82, %1
  %84 = select i1 %81, i1 true, i1 %83
  br i1 %84, label %99, label %85

85:                                               ; preds = %80
  %86 = load i64, ptr %64, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 14
  br i1 %88, label %89, label %91

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
  br i1 %98, label %99, label %122

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
  br i1 %110, label %111, label %102, !llvm.loop !39

111:                                              ; preds = %108, %99
  %112 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %0, ptr noundef nonnull %16) #19
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %111, %114
  %115 = phi ptr [ %118, %114 ], [ %112, %111 ]
  %116 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !26
  %117 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %115, ptr noundef %116, i32 noundef 0, i32 noundef 0) #19
  %118 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %16) #19
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %114, !llvm.loop !41

120:                                              ; preds = %114, %111
  %121 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #20
  br label %1368

122:                                              ; preds = %107, %96, %74
  %123 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %59) #18
  br i1 %47, label %127, label %124

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !23
  br label %127

127:                                              ; preds = %122, %124
  %128 = phi ptr [ %126, %124 ], [ %61, %122 ]
  %129 = tail call i32 @ix86_function_type_abi(ptr noundef %128) #18
  %130 = icmp ne i32 %129, 1
  %131 = icmp sgt i32 %123, 0
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load i32, ptr @target_flags, align 4, !tbaa !28
  %135 = and i32 %134, 8196
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = tail call i32 @ix86_cfun_abi() #18
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  store i32 1, ptr %9, align 4, !tbaa !28
  br label %141

141:                                              ; preds = %140, %137, %133, %127
  %142 = tail call i32 @aggregate_value_p(ptr noundef nonnull %0, ptr noundef %59) #18
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %163, label %144

144:                                              ; preds = %141
  %145 = and i32 %62, -8
  store i32 %145, ptr %10, align 4, !tbaa !28
  %146 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %64) #18
  %147 = icmp eq ptr %1, null
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  %149 = load i32, ptr %1, align 8
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 43
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i64, ptr %0, align 8
  %154 = and i64 %153, 268435456
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152, %148, %144
  %157 = tail call ptr @assign_temp(ptr noundef nonnull %64, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  tail call void @mark_temp_addr_taken(ptr noundef %157) #18
  br label %158

158:                                              ; preds = %152, %156
  %159 = phi ptr [ %157, %156 ], [ %1, %152 ]
  %160 = phi ptr [ null, %156 ], [ %1, %152 ]
  %161 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !23
  br label %163

163:                                              ; preds = %158, %141
  %164 = phi i32 [ %62, %141 ], [ %145, %158 ]
  %165 = phi ptr [ null, %141 ], [ %162, %158 ]
  %166 = phi ptr [ %1, %141 ], [ %160, %158 ]
  %167 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !28
  %168 = zext i32 %167 to i64
  br i1 %47, label %179, label %169

169:                                              ; preds = %163
  %170 = tail call ptr @cgraph_rtl_info(ptr noundef nonnull %46) #18
  %171 = icmp eq ptr %170, null
  br i1 %171, label %179, label %172

172:                                              ; preds = %169
  %173 = load i32, ptr %170, align 4, !tbaa !42
  %174 = icmp ne i32 %173, 0
  %175 = icmp ult i32 %173, %167
  %176 = select i1 %174, i1 %175, i1 false
  %177 = zext i32 %173 to i64
  %178 = select i1 %176, i64 %177, i64 %168
  br label %179

179:                                              ; preds = %172, %169, %163
  %180 = phi i64 [ %168, %163 ], [ %168, %169 ], [ %178, %172 ]
  %181 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !23
  %183 = load i64, ptr %182, align 8
  %184 = trunc i64 %183 to i16
  switch i16 %184, label %185 [
    i16 10, label %186
    i16 12, label %186
  ]

185:                                              ; preds = %179
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2140, ptr noundef nonnull @.str.1) #18
  br label %186

186:                                              ; preds = %179, %179, %185
  %187 = getelementptr inbounds %struct.tree_common, ptr %182, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !23
  %189 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !44
  %190 = icmp eq ptr %189, null
  br i1 %190, label %219, label %191

191:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #20
  %192 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %0, ptr noundef nonnull %17) #19
  %193 = icmp eq ptr %192, null
  br i1 %193, label %214, label %194

194:                                              ; preds = %191, %210
  %195 = phi i32 [ %211, %210 ], [ 0, %191 ]
  %196 = phi ptr [ %212, %210 ], [ %192, %191 ]
  %197 = getelementptr inbounds %struct.tree_common, ptr %196, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !23
  %199 = icmp eq ptr %198, null
  br i1 %199, label %210, label %200

200:                                              ; preds = %194
  %201 = load i64, ptr %198, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 13
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !44
  %206 = tail call zeroext i8 %205(ptr noundef nonnull %198) #18
  %207 = icmp ne i8 %206, 0
  %208 = zext i1 %207 to i32
  %209 = add nsw i32 %195, %208
  br label %210

210:                                              ; preds = %204, %200, %194
  %211 = phi i32 [ %195, %200 ], [ %195, %194 ], [ %209, %204 ]
  %212 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %17) #19
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %194, !llvm.loop !45

214:                                              ; preds = %210, %191
  %215 = phi i32 [ 0, %191 ], [ %211, %210 ]
  %216 = getelementptr inbounds %struct.tree_type, ptr %188, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !23
  %218 = tail call fastcc ptr @split_complex_types(ptr noundef %217) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #20
  br label %222

219:                                              ; preds = %186
  %220 = getelementptr inbounds %struct.tree_type, ptr %188, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !23
  br label %222

222:                                              ; preds = %219, %214
  %223 = phi i32 [ %215, %214 ], [ 0, %219 ]
  %224 = phi ptr [ %218, %214 ], [ %221, %219 ]
  %225 = and i32 %164, 32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %222
  %228 = load ptr, ptr @cfun, align 8, !tbaa !26
  %229 = getelementptr inbounds %struct.function, ptr %228, i64 0, i32 20
  %230 = load i32, ptr %229, align 8
  %231 = or i32 %230, 524288
  store i32 %231, ptr %229, align 8
  br label %232

232:                                              ; preds = %227, %222
  %233 = icmp ne ptr %165, null
  %234 = icmp eq ptr %66, null
  %235 = select i1 %233, i1 %234, i1 false
  br i1 %235, label %236, label %265

236:                                              ; preds = %232
  %237 = load i32, ptr %165, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 37
  br i1 %239, label %240, label %256

240:                                              ; preds = %236
  %241 = load i32, ptr @target_flags, align 4, !tbaa !28
  %242 = and i32 %241, 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = tail call i32 @ix86_cfun_abi() #18
  %246 = icmp eq i32 %245, 1
  %247 = load i32, ptr @stack_arg_under_construction, align 4
  %248 = icmp ne i32 %247, 0
  %249 = select i1 %246, i1 %248, i1 false
  br i1 %249, label %253, label %259

250:                                              ; preds = %240
  %251 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !28
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %244, %250
  %254 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !26
  %255 = icmp eq ptr %165, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %253, %236
  %257 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %165, i8 noundef zeroext 0) #18
  %258 = tail call ptr @copy_addr_to_reg(ptr noundef %257) #18
  br label %259

259:                                              ; preds = %244, %250, %253, %256
  %260 = phi ptr [ %258, %256 ], [ %165, %253 ], [ %165, %250 ], [ %165, %244 ]
  %261 = getelementptr inbounds %struct.tree_common, ptr %188, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !23
  %263 = tail call ptr @build_pointer_type(ptr noundef %262) #18
  %264 = tail call ptr @make_tree(ptr noundef %263, ptr noundef %260) #18
  br label %265

265:                                              ; preds = %259, %232
  %266 = phi ptr [ %264, %259 ], [ null, %232 ]
  %267 = phi i32 [ 1, %259 ], [ 0, %232 ]
  %268 = load ptr, ptr %40, align 8, !tbaa !23
  %269 = getelementptr inbounds %struct.tree_int_cst, ptr %268, i64 0, i32 1
  %270 = load i64, ptr %269, align 8, !tbaa !23
  %271 = trunc i64 %270 to i32
  %272 = add i32 %223, -3
  %273 = add i32 %272, %267
  %274 = add i32 %273, %271
  %275 = icmp eq ptr %224, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %265
  call void @init_cumulative_args(ptr noundef nonnull %7, ptr noundef nonnull %188, ptr noundef null, ptr noundef %46) #18
  br label %289

277:                                              ; preds = %265
  %278 = tail call i32 @list_length(ptr noundef nonnull %224) #18
  %279 = add nsw i32 %278, %267
  call void @init_cumulative_args(ptr noundef nonnull %7, ptr noundef nonnull %188, ptr noundef null, ptr noundef %46) #18
  %280 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 8), align 8, !tbaa !46
  %281 = call zeroext i8 %280(ptr noundef nonnull %7) #18
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 9), align 8, !tbaa !47
  %285 = call zeroext i8 %284(ptr noundef nonnull %7) #18
  %286 = icmp eq i8 %285, 0
  %287 = add nsw i32 %279, -1
  %288 = select i1 %286, i32 %287, i32 %274
  br label %289

289:                                              ; preds = %276, %283, %277
  %290 = phi i32 [ %279, %277 ], [ %288, %283 ], [ %274, %276 ]
  %291 = sext i32 %274 to i64
  %292 = mul nsw i64 %291, 184
  %293 = alloca i8, i64 %292, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %293, i8 0, i64 %292, i1 false)
  %294 = load i64, ptr %0, align 8
  %295 = trunc i64 %294 to i32
  %296 = lshr i32 %295, 29
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  call fastcc void @initialize_argument_information(i32 noundef %274, ptr noundef nonnull %293, ptr noundef nonnull %5, i32 noundef %290, ptr noundef nonnull %0, ptr noundef %266, ptr noundef %46, ptr noundef %61, ptr noundef nonnull %7, i32 noundef %123, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %4, i8 noundef zeroext %298) #19
  %299 = getelementptr inbounds %struct.args_size, ptr %5, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !48
  %301 = icmp eq ptr %300, null
  %302 = load i32, ptr %9, align 4
  %303 = select i1 %301, i32 %302, i32 1
  %304 = call fastcc i32 @finalize_must_preallocate(i32 noundef %303, i32 noundef %274, ptr noundef nonnull %293, ptr noundef nonnull %5) #19
  store i32 %304, ptr %9, align 4, !tbaa !28
  br i1 %233, label %305, label %328

305:                                              ; preds = %289
  %306 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !26
  %307 = call i32 @reg_mentioned_p(ptr noundef %306, ptr noundef nonnull %165) #18
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %313

309:                                              ; preds = %305
  %310 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !26
  %311 = call i32 @reg_mentioned_p(ptr noundef %310, ptr noundef nonnull %165) #18
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %328, label %313

313:                                              ; preds = %309, %305
  %314 = load ptr, ptr %299, align 8, !tbaa !48
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %326

316:                                              ; preds = %313
  %317 = load i32, ptr @target_flags, align 4, !tbaa !28
  %318 = and i32 %317, 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %316
  %321 = call i32 @ix86_cfun_abi() #18
  %322 = icmp ne i32 %321, 1
  %323 = load i64, ptr %5, align 8
  %324 = icmp ne i64 %323, 0
  %325 = select i1 %322, i1 %324, i1 false
  br i1 %325, label %326, label %328

326:                                              ; preds = %320, %313
  %327 = call ptr @copy_to_reg(ptr noundef nonnull %165) #18
  br label %328

328:                                              ; preds = %326, %320, %316, %309, %289
  %329 = phi ptr [ %327, %326 ], [ %165, %316 ], [ %165, %320 ], [ %165, %309 ], [ null, %289 ]
  %330 = load i32, ptr @expand_call.currently_expanding_call, align 4, !tbaa !28
  %331 = add nsw i32 %330, 1
  store i32 %331, ptr @expand_call.currently_expanding_call, align 4, !tbaa !28
  %332 = icmp ne i32 %330, 0
  %333 = load i32, ptr @flag_optimize_sibling_calls, align 4
  %334 = icmp eq i32 %333, 0
  %335 = select i1 %332, i1 true, i1 %334
  %336 = load ptr, ptr %299, align 8
  %337 = icmp ne ptr %336, null
  %338 = select i1 %335, i1 true, i1 %337
  br i1 %338, label %399, label %339

339:                                              ; preds = %328
  %340 = call zeroext i8 @dbg_cnt(i32 noundef 37) #18
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %399, label %342

342:                                              ; preds = %339
  %343 = load i8, ptr %4, align 1, !tbaa !23
  %344 = icmp eq i8 %343, 0
  %345 = icmp ne ptr %329, null
  %346 = select i1 %344, i1 true, i1 %345
  br i1 %346, label %399, label %347

347:                                              ; preds = %342
  %348 = call i32 @ix86_function_type_abi(ptr noundef nonnull %188) #18
  %349 = icmp eq i32 %348, 1
  %350 = load ptr, ptr @current_function_decl, align 8, !tbaa !26
  %351 = getelementptr inbounds %struct.tree_common, ptr %350, i64 0, i32 2
  %352 = load ptr, ptr %351, align 8, !tbaa !23
  %353 = call i32 @ix86_function_type_abi(ptr noundef %352) #18
  %354 = icmp ne i32 %353, 1
  %355 = xor i1 %349, %354
  br i1 %355, label %356, label %399

356:                                              ; preds = %347
  %357 = call i32 @ix86_reg_parm_stack_space(ptr noundef %46) #18
  %358 = icmp eq i32 %123, %357
  br i1 %358, label %359, label %399

359:                                              ; preds = %356
  %360 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 46), align 8, !tbaa !50
  %361 = call zeroext i8 %360(ptr noundef %46, ptr noundef nonnull %0) #18
  %362 = icmp eq i8 %361, 0
  br i1 %362, label %399, label %363

363:                                              ; preds = %359
  %364 = load i32, ptr %10, align 4
  %365 = and i32 %364, 136
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %399

367:                                              ; preds = %363
  %368 = load ptr, ptr %181, align 8, !tbaa !23
  %369 = getelementptr inbounds %struct.tree_common, ptr %368, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !23
  %371 = load i64, ptr %370, align 8
  %372 = and i64 %371, 524288
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %399

374:                                              ; preds = %367
  br i1 %47, label %379, label %375

375:                                              ; preds = %374
  %376 = call ptr @decl_function_context(ptr noundef nonnull %46) #18
  %377 = load ptr, ptr @current_function_decl, align 8, !tbaa !26
  %378 = icmp eq ptr %376, %377
  br i1 %378, label %399, label %379

379:                                              ; preds = %375, %374
  %380 = load i64, ptr %5, align 8, !tbaa !51
  %381 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !52
  %382 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !53
  %383 = sub nsw i32 %381, %382
  %384 = sext i32 %383 to i64
  %385 = icmp sgt i64 %380, %384
  br i1 %385, label %399, label %386

386:                                              ; preds = %379
  %387 = trunc i64 %380 to i32
  %388 = call i32 @ix86_return_pops_args(ptr noundef %46, ptr noundef nonnull %188, i32 noundef %387) #18
  %389 = load ptr, ptr @current_function_decl, align 8, !tbaa !26
  %390 = getelementptr inbounds %struct.tree_common, ptr %389, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8, !tbaa !23
  %392 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !52
  %393 = call i32 @ix86_return_pops_args(ptr noundef %389, ptr noundef %391, i32 noundef %392) #18
  %394 = icmp eq i32 %388, %393
  br i1 %394, label %395, label %399

395:                                              ; preds = %386
  %396 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 9), align 8, !tbaa !54
  %397 = call zeroext i8 %396(ptr noundef %46) #18
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %339, %328, %342, %347, %356, %359, %363, %367, %375, %379, %386, %395
  store i8 0, ptr %4, align 1, !tbaa !23
  br label %464

400:                                              ; preds = %395
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #20
  %401 = load ptr, ptr @current_function_decl, align 8, !tbaa !26
  %402 = getelementptr inbounds %struct.tree_decl_non_common, ptr %401, i64 0, i32 3
  %403 = load ptr, ptr %402, align 8, !tbaa !23
  %404 = getelementptr inbounds %struct.tree_common, ptr %403, i64 0, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !23
  %406 = load i64, ptr %405, align 8
  %407 = trunc i64 %406 to i32
  %408 = lshr i32 %407, 21
  %409 = and i32 %408, 1
  store i32 %409, ptr %18, align 4, !tbaa !28
  %410 = getelementptr inbounds %struct.tree_decl_common, ptr %403, i64 0, i32 2
  %411 = load i64, ptr %410, align 8
  %412 = trunc i64 %411 to i32
  %413 = and i32 %412, 255
  %414 = getelementptr inbounds %struct.tree_common, ptr %188, i64 0, i32 2
  %415 = load ptr, ptr %414, align 8, !tbaa !23
  %416 = load i64, ptr %415, align 8
  %417 = trunc i64 %416 to i32
  %418 = lshr i32 %417, 21
  %419 = and i32 %418, 1
  store i32 %419, ptr %19, align 4, !tbaa !28
  %420 = and i64 %416, 65535
  %421 = icmp eq i64 %420, 14
  br i1 %421, label %422, label %426

422:                                              ; preds = %400
  %423 = call i32 @vector_type_mode(ptr noundef nonnull %415) #18
  %424 = load ptr, ptr %404, align 8, !tbaa !23
  %425 = load ptr, ptr @current_function_decl, align 8, !tbaa !26
  br label %431

426:                                              ; preds = %400
  %427 = getelementptr inbounds %struct.tree_type, ptr %415, i64 0, i32 6
  %428 = load i32, ptr %427, align 4
  %429 = lshr i32 %428, 16
  %430 = and i32 %429, 255
  br label %431

431:                                              ; preds = %426, %422
  %432 = phi ptr [ %425, %422 ], [ %401, %426 ]
  %433 = phi ptr [ %424, %422 ], [ %405, %426 ]
  %434 = phi i32 [ %423, %422 ], [ %430, %426 ]
  %435 = getelementptr inbounds %struct.tree_common, ptr %432, i64 0, i32 2
  %436 = load ptr, ptr %435, align 8, !tbaa !23
  %437 = call i32 @promote_function_mode(ptr noundef %433, i32 noundef %413, ptr noundef nonnull %18, ptr noundef %436, i32 noundef 1) #18
  %438 = load ptr, ptr %414, align 8, !tbaa !23
  %439 = call i32 @promote_function_mode(ptr noundef %438, i32 noundef %434, ptr noundef nonnull %19, ptr noundef nonnull %188, i32 noundef 1) #18
  %440 = icmp eq i32 %413, 0
  br i1 %440, label %460, label %441

441:                                              ; preds = %431
  %442 = icmp eq i32 %437, %439
  br i1 %442, label %443, label %459

443:                                              ; preds = %441
  %444 = icmp eq i32 %413, %437
  %445 = icmp eq i32 %434, %437
  %446 = select i1 %444, i1 %445, i1 false
  br i1 %446, label %460, label %447

447:                                              ; preds = %443
  %448 = load i32, ptr %18, align 4, !tbaa !28
  %449 = load i32, ptr %19, align 4, !tbaa !28
  %450 = icmp eq i32 %448, %449
  br i1 %450, label %451, label %459

451:                                              ; preds = %447
  %452 = and i64 %411, 255
  %453 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !23
  %455 = zext i32 %434 to i64
  %456 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %455
  %457 = load i8, ptr %456, align 1, !tbaa !23
  %458 = icmp ult i8 %454, %457
  br i1 %458, label %459, label %460

459:                                              ; preds = %451, %447, %441
  store i8 0, ptr %4, align 1, !tbaa !23
  br label %460

460:                                              ; preds = %443, %459, %451, %431
  %461 = phi i8 [ %343, %443 ], [ 0, %459 ], [ %343, %451 ], [ %343, %431 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #20
  %462 = icmp eq i8 %461, 0
  %463 = zext i1 %462 to i32
  br label %464

464:                                              ; preds = %399, %460
  %465 = phi i32 [ 1, %399 ], [ %463, %460 ]
  %466 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !62
  %467 = zext i32 %466 to i64
  %468 = icmp ugt i64 %180, %467
  br i1 %468, label %469, label %471

469:                                              ; preds = %464
  %470 = trunc i64 %180 to i32
  store i32 %470, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !62
  br label %471

471:                                              ; preds = %464, %469
  %472 = phi i32 [ %470, %469 ], [ %466, %464 ]
  %473 = phi i64 [ %180, %469 ], [ %467, %464 ]
  %474 = lshr i64 %473, 3
  %475 = getelementptr inbounds %struct.args_size, ptr %6, i64 0, i32 1
  %476 = trunc i64 %474 to i32
  %477 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %478 = icmp eq i32 %37, 0
  %479 = sext i32 %37 to i64
  %480 = icmp sgt i32 %274, 0
  %481 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %482 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %483 = icmp slt i32 %274, 1
  %484 = zext nneg i32 %123 to i64
  %485 = icmp ne i32 %2, 0
  %486 = load i32, ptr %10, align 4
  %487 = zext nneg i32 %274 to i64
  %488 = zext nneg i32 %274 to i64
  %489 = zext nneg i32 %274 to i64
  %490 = zext nneg i32 %274 to i64
  %491 = zext nneg i32 %274 to i64
  %492 = zext nneg i32 %274 to i64
  %493 = zext nneg i32 %274 to i64
  br label %495

494:                                              ; preds = %1352
  br i1 %505, label %495, label %1361, !llvm.loop !63

495:                                              ; preds = %471, %494
  %496 = phi i32 [ %486, %471 ], [ %1311, %494 ]
  %497 = phi ptr [ %166, %471 ], [ %1260, %494 ]
  %498 = phi ptr [ null, %471 ], [ %1354, %494 ]
  %499 = phi i32 [ %465, %471 ], [ 1, %494 ]
  %500 = phi ptr [ %329, %471 ], [ %887, %494 ]
  %501 = phi ptr [ null, %471 ], [ %774, %494 ]
  %502 = phi ptr [ null, %471 ], [ %696, %494 ]
  %503 = phi i32 [ 0, %471 ], [ %695, %494 ]
  %504 = phi i32 [ 0, %471 ], [ %694, %494 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #20
  store i32 0, ptr %20, align 4, !tbaa !28
  %505 = icmp eq i32 %499, 0
  %506 = load i32, ptr @x_rtl, align 8
  %507 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8
  %508 = icmp ne i32 %499, 0
  %509 = and i32 %496, -257
  %510 = select i1 %508, i32 0, i32 256
  %511 = or disjoint i32 %509, %510
  store i32 %511, ptr %10, align 4, !tbaa !28
  store ptr null, ptr %15, align 8, !tbaa !26
  call void @start_sequence() #18
  %512 = load i32, ptr @x_rtl, align 8, !tbaa !64
  %513 = icmp sgt i32 %512, 31
  br i1 %513, label %528, label %514

514:                                              ; preds = %495
  %515 = icmp sgt i32 %512, 0
  br i1 %515, label %516, label %526

516:                                              ; preds = %514
  %517 = and i32 %496, 32
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %528

519:                                              ; preds = %516
  %520 = load i32, ptr @flag_exceptions, align 4
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %526, label %522

522:                                              ; preds = %519
  %523 = and i32 %496, 64
  %524 = icmp eq i32 %523, 0
  %525 = or i1 %505, %524
  br i1 %525, label %528, label %529

526:                                              ; preds = %514, %519
  br i1 %505, label %527, label %529

527:                                              ; preds = %526
  call void @do_pending_stack_adjust() #18
  br label %533

528:                                              ; preds = %495, %516, %522
  call void @do_pending_stack_adjust() #18
  br i1 %508, label %529, label %533

529:                                              ; preds = %526, %522, %528
  call fastcc void @precompute_arguments(i32 noundef %274, ptr noundef nonnull %293) #19
  %530 = and i32 %496, 16
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %537, label %532

532:                                              ; preds = %529
  call void @start_sequence() #18
  br label %537

533:                                              ; preds = %527, %528
  %534 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8
  %535 = icmp eq ptr %534, null
  br i1 %535, label %537, label %536

536:                                              ; preds = %533
  call void @stack_protect_epilogue() #18
  br label %537

537:                                              ; preds = %529, %532, %536, %533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !65
  %538 = select i1 %505, i32 0, i32 %472
  %539 = call fastcc i32 @compute_argument_block_size(i32 noundef %123, ptr noundef nonnull %6, ptr noundef %46, ptr noundef %61, i32 noundef %538) #19
  %540 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %541 = load i32, ptr @x_rtl, align 8, !tbaa !64
  %542 = sub nsw i32 %540, %541
  br i1 %505, label %543, label %551

543:                                              ; preds = %537
  %544 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !67
  %545 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !53
  %546 = sext i32 %545 to i64
  %547 = call ptr @plus_constant(ptr noundef %544, i64 noundef %546) #18
  %548 = load i64, ptr %5, align 8, !tbaa !51
  %549 = trunc i64 %548 to i32
  %550 = call ptr @sbitmap_alloc(i32 noundef %549) #18
  store ptr %550, ptr @stored_args_map, align 8, !tbaa !26
  call void @sbitmap_zero(ptr noundef %550) #18
  br label %636

551:                                              ; preds = %537
  %552 = load ptr, ptr %475, align 8, !tbaa !48
  %553 = icmp eq ptr %552, null
  br i1 %553, label %571, label %554

554:                                              ; preds = %551
  %555 = load ptr, ptr %13, align 8, !tbaa !26
  %556 = icmp eq ptr %555, null
  br i1 %556, label %557, label %561

557:                                              ; preds = %554
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %13, ptr noundef null) #18
  %558 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %559 = load i32, ptr @x_rtl, align 8, !tbaa !64
  store i32 %559, ptr %14, align 4, !tbaa !28
  store i32 0, ptr @x_rtl, align 8, !tbaa !64
  %560 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !28
  store i32 0, ptr @stack_arg_under_construction, align 4, !tbaa !28
  br label %561

561:                                              ; preds = %557, %554
  %562 = phi i32 [ %558, %557 ], [ %504, %554 ]
  %563 = phi i32 [ %560, %557 ], [ %503, %554 ]
  %564 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !26
  %565 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %564, ptr noundef nonnull %552) #18
  %566 = load i64, ptr %6, align 8, !tbaa !51
  %567 = call ptr @size_int_kind(i64 noundef %566, i32 noundef 1) #18
  %568 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %565, ptr noundef %567) #18
  %569 = call fastcc ptr @expand_normal(ptr noundef %568) #19
  %570 = call ptr @push_block(ptr noundef %569, i32 noundef 0, i32 noundef 0) #18
  br label %636

571:                                              ; preds = %551
  %572 = load i64, ptr %6, align 8, !tbaa !51
  %573 = trunc i64 %572 to i32
  %574 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !68
  %575 = icmp slt i32 %574, %573
  br i1 %575, label %576, label %577

576:                                              ; preds = %571
  store i32 %573, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !68
  br label %577

577:                                              ; preds = %576, %571
  %578 = load i32, ptr %9, align 4, !tbaa !28
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %636, label %580

580:                                              ; preds = %577
  %581 = load i32, ptr @target_flags, align 4, !tbaa !28
  %582 = and i32 %581, 4
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %587

584:                                              ; preds = %580
  %585 = call i32 @ix86_cfun_abi() #18
  %586 = icmp eq i32 %585, 1
  br i1 %586, label %587, label %614

587:                                              ; preds = %584, %580
  br i1 %47, label %590, label %588

588:                                              ; preds = %587
  %589 = load ptr, ptr %477, align 8, !tbaa !23
  br label %590

590:                                              ; preds = %587, %588
  %591 = phi ptr [ %589, %588 ], [ %61, %587 ]
  %592 = call i32 @ix86_function_type_abi(ptr noundef %591) #18
  %593 = icmp eq i32 %592, 1
  %594 = select i1 %593, i32 0, i32 %123
  %595 = add nsw i32 %594, %573
  %596 = call i32 @llvm.smax.i32(i32 %37, i32 %595)
  store i32 %596, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  %597 = icmp eq ptr %502, null
  br i1 %597, label %600, label %598

598:                                              ; preds = %590
  call void @free(ptr noundef nonnull %502) #19
  %599 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  br label %600

600:                                              ; preds = %598, %590
  %601 = phi i32 [ %599, %598 ], [ %596, %590 ]
  %602 = sext i32 %601 to i64
  %603 = call ptr @xmalloc(i64 noundef %602) #18
  store ptr %603, ptr @stack_usage_map, align 8, !tbaa !26
  br i1 %478, label %605, label %604

604:                                              ; preds = %600
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %603, ptr align 1 %38, i64 %479, i1 false)
  br label %605

605:                                              ; preds = %604, %600
  %606 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  %607 = icmp eq i32 %37, %606
  br i1 %607, label %612, label %608

608:                                              ; preds = %605
  %609 = getelementptr inbounds i8, ptr %603, i64 %479
  %610 = sub nsw i32 %606, %37
  %611 = sext i32 %610 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %609, i8 0, i64 %611, i1 false)
  br label %612

612:                                              ; preds = %608, %605
  %613 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !26
  br label %636

614:                                              ; preds = %584
  %615 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %624

617:                                              ; preds = %614
  %618 = call fastcc i32 @combine_pending_stack_adjustment_and_call(i32 noundef %539, ptr noundef nonnull %6, i32 noundef %476) #19
  %619 = sub nsw i32 %539, %618
  %620 = icmp slt i32 %619, 0
  br i1 %620, label %621, label %623

621:                                              ; preds = %617
  %622 = sub nsw i32 0, %619
  store i32 %622, ptr @x_rtl, align 8, !tbaa !64
  call void @do_pending_stack_adjust() #18
  br label %627

623:                                              ; preds = %617
  store i32 0, ptr @x_rtl, align 8, !tbaa !64
  br label %624

624:                                              ; preds = %623, %614
  %625 = phi i32 [ %619, %623 ], [ %573, %614 ]
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %627, label %629

627:                                              ; preds = %621, %624
  %628 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !26
  br label %633

629:                                              ; preds = %624
  %630 = sext i32 %625 to i64
  %631 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %630) #18
  %632 = call ptr @push_block(ptr noundef %631, i32 noundef 0, i32 noundef 0) #18
  br label %633

633:                                              ; preds = %629, %627
  %634 = phi ptr [ %628, %627 ], [ %632, %629 ]
  %635 = call ptr @copy_to_reg(ptr noundef %634) #18
  br label %636

636:                                              ; preds = %577, %633, %612, %561, %543
  %637 = phi i32 [ %504, %543 ], [ %562, %561 ], [ %504, %612 ], [ %504, %633 ], [ %504, %577 ]
  %638 = phi i32 [ %503, %543 ], [ %563, %561 ], [ %503, %612 ], [ %503, %633 ], [ %503, %577 ]
  %639 = phi ptr [ %502, %543 ], [ %502, %561 ], [ %603, %612 ], [ %502, %633 ], [ %502, %577 ]
  %640 = phi ptr [ %547, %543 ], [ %570, %561 ], [ %613, %612 ], [ %635, %633 ], [ null, %577 ]
  %641 = load i32, ptr @target_flags, align 4, !tbaa !28
  %642 = and i32 %641, 4
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %647

644:                                              ; preds = %636
  %645 = call i32 @ix86_cfun_abi() #18
  %646 = icmp eq i32 %645, 1
  br i1 %646, label %647, label %693

647:                                              ; preds = %644, %636
  %648 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !28
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %679, label %650

650:                                              ; preds = %647
  %651 = load i64, ptr %6, align 8, !tbaa !51
  br i1 %47, label %654, label %652

652:                                              ; preds = %650
  %653 = load ptr, ptr %477, align 8, !tbaa !23
  br label %654

654:                                              ; preds = %650, %652
  %655 = phi ptr [ %653, %652 ], [ %61, %650 ]
  %656 = call i32 @ix86_function_type_abi(ptr noundef %655) #18
  %657 = icmp eq i32 %656, 1
  %658 = select i1 %657, i32 0, i32 %123
  %659 = sext i32 %658 to i64
  %660 = add nsw i64 %651, %659
  %661 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %660) #18
  %662 = load ptr, ptr %13, align 8, !tbaa !26
  %663 = icmp eq ptr %662, null
  br i1 %663, label %664, label %674

664:                                              ; preds = %654
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %13, ptr noundef null) #18
  %665 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %666 = load i32, ptr @x_rtl, align 8, !tbaa !64
  store i32 %666, ptr %14, align 4, !tbaa !28
  store i32 0, ptr @x_rtl, align 8, !tbaa !64
  %667 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !28
  store i32 0, ptr @stack_arg_under_construction, align 4, !tbaa !28
  %668 = icmp eq ptr %639, null
  br i1 %668, label %670, label %669

669:                                              ; preds = %664
  call void @free(ptr noundef nonnull %639) #19
  br label %670

670:                                              ; preds = %669, %664
  %671 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  %672 = sext i32 %671 to i64
  %673 = call ptr @xcalloc(i64 noundef %672, i64 noundef 1) #18
  store ptr %673, ptr @stack_usage_map, align 8, !tbaa !26
  store i32 0, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  br label %674

674:                                              ; preds = %670, %654
  %675 = phi i32 [ %665, %670 ], [ %637, %654 ]
  %676 = phi i32 [ %667, %670 ], [ %638, %654 ]
  %677 = phi ptr [ %673, %670 ], [ %639, %654 ]
  %678 = call ptr @allocate_dynamic_stack_space(ptr noundef %661, ptr noundef null, i32 noundef 8) #18
  br label %679

679:                                              ; preds = %674, %647
  %680 = phi i32 [ %675, %674 ], [ %637, %647 ]
  %681 = phi i32 [ %676, %674 ], [ %638, %647 ]
  %682 = phi ptr [ %677, %674 ], [ %639, %647 ]
  br i1 %480, label %686, label %693

683:                                              ; preds = %686
  %684 = add nuw nsw i64 %687, 1
  %685 = icmp eq i64 %684, %487
  br i1 %685, label %693, label %686, !llvm.loop !69

686:                                              ; preds = %679, %683
  %687 = phi i64 [ %684, %683 ], [ 0, %679 ]
  %688 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %687, i32 9
  %689 = load i32, ptr %688, align 8, !tbaa !70
  %690 = icmp eq i32 %689, 0
  br i1 %690, label %683, label %691

691:                                              ; preds = %686
  %692 = call ptr @copy_addr_to_reg(ptr noundef %640) #18
  br label %693

693:                                              ; preds = %683, %679, %691, %644
  %694 = phi i32 [ %680, %691 ], [ %637, %644 ], [ %680, %679 ], [ %680, %683 ]
  %695 = phi i32 [ %681, %691 ], [ %638, %644 ], [ %681, %679 ], [ %681, %683 ]
  %696 = phi ptr [ %682, %691 ], [ %639, %644 ], [ %682, %679 ], [ %682, %683 ]
  %697 = phi ptr [ %692, %691 ], [ %640, %644 ], [ %640, %679 ], [ %640, %683 ]
  call fastcc void @compute_argument_addresses(ptr noundef nonnull %293, ptr noundef %697, i32 noundef %274) #19
  %698 = icmp eq ptr %697, null
  br i1 %698, label %699, label %714

699:                                              ; preds = %693
  %700 = load i64, ptr %6, align 8, !tbaa !51
  %701 = sext i32 %539 to i64
  %702 = icmp eq i64 %700, %701
  br i1 %702, label %714, label %703

703:                                              ; preds = %699
  %704 = load i32, ptr @x_rtl, align 8, !tbaa !64
  %705 = icmp eq i32 %704, 0
  %706 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4
  %707 = icmp ne i32 %706, 0
  %708 = select i1 %705, i1 true, i1 %707
  br i1 %708, label %711, label %709

709:                                              ; preds = %703
  %710 = call fastcc i32 @combine_pending_stack_adjustment_and_call(i32 noundef %539, ptr noundef nonnull %6, i32 noundef %476) #19
  store i32 %710, ptr @x_rtl, align 8, !tbaa !64
  call void @do_pending_stack_adjust() #18
  br label %714

711:                                              ; preds = %703
  %712 = sub nsw i64 %700, %701
  %713 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %712) #18
  call void @anti_adjust_stack(ptr noundef %713) #18
  br label %714

714:                                              ; preds = %709, %711, %699, %693
  %715 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %716 = add nsw i32 %715, 1
  store i32 %716, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %717 = call fastcc ptr @rtx_for_function_call(ptr noundef %46, ptr noundef %42) #19
  %718 = load i64, ptr %64, align 8
  %719 = and i64 %718, 65535
  %720 = icmp eq i64 %719, 14
  br i1 %720, label %721, label %723

721:                                              ; preds = %714
  %722 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %727

723:                                              ; preds = %714
  %724 = load i32, ptr %481, align 4
  %725 = lshr i32 %724, 16
  %726 = and i32 %725, 255
  br label %727

727:                                              ; preds = %723, %721
  %728 = phi i32 [ %722, %721 ], [ %726, %723 ]
  %729 = icmp eq i32 %728, 0
  %730 = icmp ne ptr %500, null
  %731 = select i1 %729, i1 true, i1 %730
  br i1 %731, label %755, label %732

732:                                              ; preds = %727
  %733 = xor i32 %499, 1
  %734 = call ptr @hard_function_value(ptr noundef nonnull %64, ptr noundef %46, ptr noundef %61, i32 noundef %733) #18
  %735 = load i32, ptr %734, align 8
  %736 = and i32 %735, 65535
  %737 = icmp eq i32 %736, 15
  br i1 %737, label %738, label %755

738:                                              ; preds = %732
  %739 = getelementptr inbounds %struct.rtx_def, ptr %734, i64 0, i32 1
  %740 = load ptr, ptr %739, align 8, !tbaa !23
  %741 = getelementptr inbounds %struct.rtvec_def, ptr %740, i64 0, i32 1
  %742 = load ptr, ptr %741, align 8, !tbaa !26
  %743 = getelementptr inbounds %struct.rtx_def, ptr %742, i64 0, i32 1, i32 0, i32 0, i64 1
  %744 = load ptr, ptr %743, align 8, !tbaa !23
  %745 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !26
  %746 = icmp eq ptr %744, %745
  br i1 %746, label %747, label %755

747:                                              ; preds = %738
  %748 = getelementptr inbounds %struct.rtx_def, ptr %742, i64 0, i32 1
  %749 = load ptr, ptr %748, align 8, !tbaa !23
  %750 = load i32, ptr %749, align 8
  %751 = xor i32 %750, %735
  %752 = and i32 %751, 16711680
  %753 = icmp eq i32 %752, 0
  %754 = select i1 %753, ptr %749, ptr %734
  br label %755

755:                                              ; preds = %747, %738, %732, %727
  %756 = phi ptr [ null, %727 ], [ %734, %732 ], [ %734, %738 ], [ %754, %747 ]
  call fastcc void @precompute_register_parameters(i32 noundef %274, ptr noundef nonnull %293, ptr noundef nonnull %8) #19
  %757 = load ptr, ptr %482, align 8, !tbaa !23
  %758 = icmp eq ptr %757, null
  br i1 %758, label %761, label %759

759:                                              ; preds = %755
  %760 = call fastcc ptr @expand_normal(ptr noundef nonnull %757) #19
  br label %761

761:                                              ; preds = %755, %759
  %762 = phi ptr [ %760, %759 ], [ null, %755 ]
  %763 = load i32, ptr @target_flags, align 4, !tbaa !28
  %764 = and i32 %763, 4
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %766, label %770

766:                                              ; preds = %761
  %767 = call i32 @ix86_cfun_abi() #18
  %768 = icmp eq i32 %767, 1
  %769 = and i1 %508, %768
  br i1 %769, label %771, label %773

770:                                              ; preds = %761
  br i1 %508, label %771, label %773

771:                                              ; preds = %766, %770
  %772 = call fastcc ptr @save_fixed_argument_area(i32 noundef %123, ptr noundef %697, ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  br label %773

773:                                              ; preds = %771, %770, %766
  %774 = phi ptr [ %772, %771 ], [ %501, %770 ], [ %501, %766 ]
  br i1 %480, label %775, label %853

775:                                              ; preds = %773, %820
  %776 = phi i64 [ %821, %820 ], [ 0, %773 ]
  %777 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %776
  %778 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %776, i32 4
  %779 = load ptr, ptr %778, align 8, !tbaa !73
  %780 = icmp eq ptr %779, null
  br i1 %780, label %785, label %781

781:                                              ; preds = %775
  %782 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %776, i32 9
  %783 = load i32, ptr %782, align 8, !tbaa !70
  %784 = icmp eq i32 %783, 0
  br i1 %784, label %798, label %785

785:                                              ; preds = %781, %775
  %786 = call ptr @get_last_insn() #18
  %787 = load i32, ptr %10, align 4, !tbaa !28
  %788 = load ptr, ptr %475, align 8, !tbaa !48
  %789 = icmp ne ptr %788, null
  %790 = zext i1 %789 to i32
  %791 = call fastcc i32 @store_one_arg(ptr noundef nonnull %777, ptr noundef %697, i32 noundef %787, i32 noundef %790, i32 noundef %123) #19
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %793, label %797

793:                                              ; preds = %785
  br i1 %505, label %794, label %798

794:                                              ; preds = %793
  %795 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %786, ptr noundef nonnull %777, i32 noundef 1) #19, !range !74
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %798, label %797

797:                                              ; preds = %794, %785
  store i32 1, ptr %20, align 4, !tbaa !28
  br label %798

798:                                              ; preds = %793, %794, %797, %781
  %799 = load i32, ptr %10, align 4, !tbaa !28
  %800 = and i32 %799, 1
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %802, label %812

802:                                              ; preds = %798
  %803 = and i32 %799, 2
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %820, label %805

805:                                              ; preds = %802
  %806 = load i32, ptr @target_flags, align 4, !tbaa !28
  %807 = and i32 %806, 4
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %812

809:                                              ; preds = %805
  %810 = call i32 @ix86_cfun_abi() #18
  %811 = icmp eq i32 %810, 1
  br i1 %811, label %812, label %820

812:                                              ; preds = %809, %805, %798
  %813 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %776, i32 11
  %814 = load ptr, ptr %813, align 8, !tbaa !75
  %815 = icmp eq ptr %814, null
  br i1 %815, label %820, label %816

816:                                              ; preds = %812
  %817 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %814) #18
  %818 = load ptr, ptr %15, align 8, !tbaa !26
  %819 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %817, ptr noundef %818) #18
  store ptr %819, ptr %15, align 8, !tbaa !26
  br label %820

820:                                              ; preds = %802, %809, %812, %816
  %821 = add nuw nsw i64 %776, 1
  %822 = icmp eq i64 %821, %488
  br i1 %822, label %823, label %775, !llvm.loop !76

823:                                              ; preds = %820
  %824 = load i32, ptr %8, align 4, !tbaa !28
  %825 = icmp eq i32 %824, 0
  %826 = select i1 %825, i1 true, i1 %483
  br i1 %826, label %853, label %827

827:                                              ; preds = %823, %850
  %828 = phi i64 [ %851, %850 ], [ 0, %823 ]
  %829 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %828
  %830 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %828, i32 8
  %831 = load i32, ptr %830, align 4, !tbaa !77
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %850, label %833

833:                                              ; preds = %827
  %834 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %828, i32 9
  %835 = load i32, ptr %834, align 8, !tbaa !70
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %837, label %850

837:                                              ; preds = %833
  %838 = call ptr @get_last_insn() #18
  %839 = load i32, ptr %10, align 4, !tbaa !28
  %840 = load ptr, ptr %475, align 8, !tbaa !48
  %841 = icmp ne ptr %840, null
  %842 = zext i1 %841 to i32
  %843 = call fastcc i32 @store_one_arg(ptr noundef nonnull %829, ptr noundef %697, i32 noundef %839, i32 noundef %842, i32 noundef %123) #19
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %845, label %849

845:                                              ; preds = %837
  br i1 %505, label %846, label %850

846:                                              ; preds = %845
  %847 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %838, ptr noundef nonnull %829, i32 noundef 1) #19, !range !74
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %850, label %849

849:                                              ; preds = %846, %837
  store i32 1, ptr %20, align 4, !tbaa !28
  br label %850

850:                                              ; preds = %845, %846, %849, %827, %833
  %851 = add nuw nsw i64 %828, 1
  %852 = icmp eq i64 %851, %489
  br i1 %852, label %853, label %827, !llvm.loop !78

853:                                              ; preds = %850, %773, %823
  br i1 %47, label %856, label %854

854:                                              ; preds = %853
  %855 = load ptr, ptr %477, align 8, !tbaa !23
  br label %856

856:                                              ; preds = %853, %854
  %857 = phi ptr [ %855, %854 ], [ %61, %853 ]
  %858 = call i32 @ix86_function_type_abi(ptr noundef %857) #18
  %859 = icmp eq i32 %858, 1
  br i1 %859, label %860, label %873

860:                                              ; preds = %856
  %861 = load i32, ptr @target_flags, align 4, !tbaa !28
  %862 = and i32 %861, 4
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %873

864:                                              ; preds = %860
  %865 = call i32 @ix86_cfun_abi() #18
  %866 = icmp ne i32 %865, 1
  %867 = load i32, ptr %9, align 4
  %868 = icmp eq i32 %867, 0
  %869 = select i1 %866, i1 %868, i1 false
  %870 = select i1 %869, i1 %131, i1 false
  br i1 %870, label %871, label %873

871:                                              ; preds = %864
  %872 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %484) #18
  call void @anti_adjust_stack(ptr noundef %872) #18
  br label %873

873:                                              ; preds = %871, %864, %860, %856
  %874 = select i1 %508, i1 %730, i1 false
  %875 = xor i1 %874, true
  %876 = or i1 %235, %875
  br i1 %876, label %886, label %877

877:                                              ; preds = %873
  %878 = call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %500, i8 noundef zeroext 0) #18
  %879 = call ptr @force_operand(ptr noundef %878, ptr noundef null) #18
  %880 = call ptr @force_reg(i32 noundef 16, ptr noundef %879) #18
  %881 = call ptr @emit_move_insn(ptr noundef %66, ptr noundef %880) #18
  %882 = load i32, ptr %66, align 8
  %883 = and i32 %882, 65535
  %884 = icmp eq i32 %883, 37
  br i1 %884, label %885, label %886

885:                                              ; preds = %877
  call void @use_reg(ptr noundef nonnull %15, ptr noundef nonnull %66) #18
  br label %886

886:                                              ; preds = %877, %885, %873
  %887 = phi ptr [ %500, %873 ], [ %878, %885 ], [ %878, %877 ]
  %888 = call ptr @get_last_insn() #18
  %889 = load i32, ptr %8, align 4, !tbaa !28
  %890 = xor i32 %499, 1
  %891 = call ptr @prepare_call_address(ptr noundef %46, ptr noundef %717, ptr noundef %762, ptr noundef nonnull %15, i32 noundef %889, i32 poison) #19
  %892 = load i32, ptr %10, align 4, !tbaa !28
  call fastcc void @load_register_parameters(ptr noundef nonnull %293, i32 noundef %274, ptr noundef nonnull %15, i32 noundef %892, i32 noundef %890, ptr noundef nonnull %20) #19
  %893 = call ptr @get_last_insn() #18
  %894 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !26
  %895 = call ptr @function_arg(ptr noundef nonnull %7, i32 noundef 0, ptr noundef %894, i32 noundef 1) #18
  br i1 %508, label %896, label %902

896:                                              ; preds = %886
  %897 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %898 = sext i32 %897 to i64
  %899 = urem i64 %898, %474
  %900 = icmp eq i64 %899, 0
  br i1 %900, label %902, label %901

901:                                              ; preds = %896
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2840, ptr noundef nonnull @.str.1) #18
  br label %902

902:                                              ; preds = %886, %896, %901
  %903 = sext i32 %539 to i64
  %904 = load i64, ptr %6, align 8, !tbaa !51
  %905 = load ptr, ptr %15, align 8, !tbaa !26
  call fastcc void @emit_call_1(ptr noundef %891, ptr noundef nonnull %0, ptr noundef %46, ptr noundef %188, i64 noundef %903, i64 noundef %904, ptr noundef %895, ptr noundef %756, i32 noundef %39, ptr noundef %905, i32 noundef %892) #19
  br i1 %505, label %906, label %910

906:                                              ; preds = %902
  %907 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %888, ptr noundef null, i32 noundef 0) #19, !range !74
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %910, label %909

909:                                              ; preds = %906
  store i32 1, ptr %20, align 4, !tbaa !28
  br label %910

910:                                              ; preds = %909, %906, %902
  %911 = icmp eq ptr %887, null
  br i1 %911, label %912, label %958

912:                                              ; preds = %910
  %913 = load i64, ptr %64, align 8
  %914 = and i64 %913, 65535
  %915 = icmp eq i64 %914, 14
  br i1 %915, label %916, label %918

916:                                              ; preds = %912
  %917 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %922

918:                                              ; preds = %912
  %919 = load i32, ptr %481, align 4
  %920 = lshr i32 %919, 16
  %921 = and i32 %920, 255
  br label %922

922:                                              ; preds = %918, %916
  %923 = phi i32 [ %917, %916 ], [ %921, %918 ]
  %924 = icmp eq i32 %923, 1
  br i1 %924, label %958, label %925

925:                                              ; preds = %922
  %926 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !79
  %927 = call zeroext i8 %926(ptr noundef nonnull %64) #18
  %928 = icmp eq i8 %927, 0
  br i1 %928, label %958, label %929

929:                                              ; preds = %925
  %930 = load i64, ptr %64, align 8
  %931 = and i64 %930, 65535
  %932 = icmp eq i64 %931, 14
  br i1 %932, label %933, label %935

933:                                              ; preds = %929
  %934 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %939

935:                                              ; preds = %929
  %936 = load i32, ptr %481, align 4
  %937 = lshr i32 %936, 16
  %938 = and i32 %937, 255
  br label %939

939:                                              ; preds = %935, %933
  %940 = phi i32 [ %934, %933 ], [ %938, %935 ]
  %941 = call zeroext i8 @shift_return_value(i32 noundef %940, i8 noundef zeroext 0, ptr noundef %756) #19, !range !24
  %942 = icmp eq i8 %941, 0
  br i1 %942, label %944, label %943

943:                                              ; preds = %939
  store i32 1, ptr %20, align 4, !tbaa !28
  br label %944

944:                                              ; preds = %943, %939
  %945 = load i64, ptr %64, align 8
  %946 = and i64 %945, 65535
  %947 = icmp eq i64 %946, 14
  br i1 %947, label %948, label %950

948:                                              ; preds = %944
  %949 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %954

950:                                              ; preds = %944
  %951 = load i32, ptr %481, align 4
  %952 = lshr i32 %951, 16
  %953 = and i32 %952, 255
  br label %954

954:                                              ; preds = %950, %948
  %955 = phi i32 [ %949, %948 ], [ %953, %950 ]
  %956 = call fastcc i32 @rhs_regno(ptr noundef %756) #19
  %957 = call ptr @gen_rtx_REG(i32 noundef %955, i32 noundef %956) #18
  br label %958

958:                                              ; preds = %954, %925, %922, %910
  %959 = phi ptr [ %756, %910 ], [ %957, %954 ], [ %756, %925 ], [ %756, %922 ]
  br i1 %508, label %960, label %987

960:                                              ; preds = %958
  %961 = and i32 %892, 16
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %982, label %963

963:                                              ; preds = %960
  %964 = load i32, ptr %959, align 8
  %965 = lshr i32 %964, 16
  %966 = and i32 %965, 255
  %967 = call ptr @gen_reg_rtx(i32 noundef %966) #18
  %968 = load i64, ptr %64, align 8
  %969 = and i64 %968, 65535
  %970 = icmp eq i64 %969, 10
  br i1 %970, label %971, label %976

971:                                              ; preds = %963
  %972 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !28
  %973 = and i32 %972, 32
  %974 = icmp eq i32 %973, 0
  %975 = select i1 %974, i32 128, i32 256
  call void @mark_reg_pointer(ptr noundef %967, i32 noundef %975) #18
  br label %976

976:                                              ; preds = %971, %963
  %977 = call ptr @emit_move_insn(ptr noundef %967, ptr noundef nonnull %959) #18
  %978 = call ptr @get_last_insn() #18
  call void @add_reg_note(ptr noundef %978, i32 noundef 15, ptr noundef %967) #18
  %979 = call ptr @get_insns() #18
  call void @end_sequence() #18
  %980 = call ptr @emit_insn(ptr noundef %979) #18
  %981 = load i32, ptr %10, align 4, !tbaa !28
  br label %982

982:                                              ; preds = %976, %960
  %983 = phi i32 [ %981, %976 ], [ %892, %960 ]
  %984 = phi ptr [ %967, %976 ], [ %959, %960 ]
  %985 = and i32 %983, 8
  %986 = icmp eq i32 %985, 0
  br i1 %986, label %1009, label %987

987:                                              ; preds = %958, %982
  %988 = phi ptr [ %984, %982 ], [ %959, %958 ]
  %989 = call ptr @get_last_insn() #18
  %990 = load i32, ptr %989, align 8
  %991 = and i32 %990, 65535
  %992 = icmp eq i32 %991, 10
  br i1 %992, label %1003, label %993

993:                                              ; preds = %987, %999
  %994 = phi ptr [ %996, %999 ], [ %989, %987 ]
  %995 = getelementptr inbounds %struct.rtx_def, ptr %994, i64 0, i32 1, i32 0, i32 0, i64 1
  %996 = load ptr, ptr %995, align 8, !tbaa !23
  %997 = icmp eq ptr %996, %893
  br i1 %997, label %998, label %999

998:                                              ; preds = %993
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2908, ptr noundef nonnull @.str.1) #18
  br label %999

999:                                              ; preds = %993, %998
  %1000 = load i32, ptr %996, align 8
  %1001 = and i32 %1000, 65535
  %1002 = icmp eq i32 %1001, 10
  br i1 %1002, label %1003, label %993, !llvm.loop !80

1003:                                             ; preds = %999, %987
  %1004 = phi ptr [ %989, %987 ], [ %996, %999 ]
  %1005 = call ptr @emit_barrier_after(ptr noundef nonnull %1004) #18
  %1006 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %1009

1008:                                             ; preds = %1003
  store i32 %542, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  store i32 0, ptr @x_rtl, align 8, !tbaa !64
  br label %1009

1009:                                             ; preds = %1003, %1008, %982
  %1010 = phi ptr [ %988, %1003 ], [ %988, %1008 ], [ %984, %982 ]
  %1011 = load i64, ptr %64, align 8
  %1012 = and i64 %1011, 65535
  %1013 = icmp eq i64 %1012, 14
  br i1 %1013, label %1014, label %1016

1014:                                             ; preds = %1009
  %1015 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1020

1016:                                             ; preds = %1009
  %1017 = load i32, ptr %481, align 4
  %1018 = lshr i32 %1017, 16
  %1019 = and i32 %1018, 255
  br label %1020

1020:                                             ; preds = %1016, %1014
  %1021 = phi i32 [ %1015, %1014 ], [ %1019, %1016 ]
  %1022 = icmp eq i32 %1021, 0
  %1023 = or i1 %485, %1022
  br i1 %1023, label %1024, label %1026

1024:                                             ; preds = %1020
  %1025 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !26
  br label %1176

1026:                                             ; preds = %1020
  br i1 %911, label %1059, label %1027

1027:                                             ; preds = %1026
  %1028 = icmp eq ptr %497, null
  br i1 %1028, label %1033, label %1029

1029:                                             ; preds = %1027
  %1030 = load i32, ptr %497, align 8
  %1031 = and i32 %1030, 65535
  %1032 = icmp eq i32 %1031, 43
  br i1 %1032, label %1176, label %1033

1033:                                             ; preds = %1029, %1027
  %1034 = load i64, ptr %64, align 8
  %1035 = and i64 %1034, 65535
  %1036 = icmp eq i64 %1035, 14
  br i1 %1036, label %1037, label %1040

1037:                                             ; preds = %1033
  %1038 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  %1039 = load i64, ptr %64, align 8
  br label %1044

1040:                                             ; preds = %1033
  %1041 = load i32, ptr %481, align 4
  %1042 = lshr i32 %1041, 16
  %1043 = and i32 %1042, 255
  br label %1044

1044:                                             ; preds = %1040, %1037
  %1045 = phi i64 [ %1039, %1037 ], [ %1034, %1040 ]
  %1046 = phi i32 [ %1038, %1037 ], [ %1043, %1040 ]
  %1047 = and i64 %1045, 65535
  %1048 = icmp eq i64 %1047, 14
  br i1 %1048, label %1049, label %1051

1049:                                             ; preds = %1044
  %1050 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1055

1051:                                             ; preds = %1044
  %1052 = load i32, ptr %481, align 4
  %1053 = lshr i32 %1052, 16
  %1054 = and i32 %1053, 255
  br label %1055

1055:                                             ; preds = %1051, %1049
  %1056 = phi i32 [ %1050, %1049 ], [ %1054, %1051 ]
  %1057 = call ptr @memory_address_addr_space(i32 noundef %1056, ptr noundef nonnull %887, i8 noundef zeroext 0) #18
  %1058 = call ptr @gen_rtx_MEM(i32 noundef %1046, ptr noundef %1057) #18
  call void @set_mem_attributes(ptr noundef %1058, ptr noundef nonnull %64, i32 noundef 1) #18
  br label %1176

1059:                                             ; preds = %1026
  %1060 = load i32, ptr %1010, align 8
  %1061 = and i32 %1060, 65535
  %1062 = icmp eq i32 %1061, 15
  %1063 = icmp eq ptr %497, null
  br i1 %1062, label %1064, label %1089

1064:                                             ; preds = %1059
  br i1 %1063, label %1065, label %1081

1065:                                             ; preds = %1064
  %1066 = load i64, ptr %64, align 8
  %1067 = trunc i64 %1066 to i32
  %1068 = lshr i32 %1067, 18
  %1069 = and i32 %1068, 2
  %1070 = load i32, ptr %481, align 4
  %1071 = lshr i32 %1070, 11
  %1072 = and i32 %1071, 4
  %1073 = lshr i64 %1066, 48
  %1074 = trunc i64 %1073 to i32
  %1075 = and i32 %1074, 65280
  %1076 = or disjoint i32 %1072, %1069
  %1077 = or disjoint i32 %1076, %1075
  %1078 = or disjoint i32 %1077, 1
  %1079 = call ptr @build_qualified_type(ptr noundef nonnull %64, i32 noundef %1078) #18
  %1080 = call ptr @assign_temp(ptr noundef %1079, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  br label %1081

1081:                                             ; preds = %1065, %1064
  %1082 = phi ptr [ %1080, %1065 ], [ %497, %1064 ]
  %1083 = call i32 @rtx_equal_p(ptr noundef %1082, ptr noundef nonnull %1010) #18
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1085, label %1088

1085:                                             ; preds = %1081
  %1086 = call i64 @int_size_in_bytes(ptr noundef nonnull %64) #18
  %1087 = trunc i64 %1086 to i32
  call void @emit_group_store(ptr noundef %1082, ptr noundef nonnull %1010, ptr noundef nonnull %64, i32 noundef %1087) #18
  br label %1088

1088:                                             ; preds = %1085, %1081
  store i32 1, ptr %20, align 4, !tbaa !28
  br label %1176

1089:                                             ; preds = %1059
  br i1 %1063, label %1151, label %1090

1090:                                             ; preds = %1089
  %1091 = load i32, ptr %497, align 8
  %1092 = lshr i32 %1091, 16
  %1093 = and i32 %1092, 255
  %1094 = load i64, ptr %64, align 8
  %1095 = and i64 %1094, 65535
  %1096 = icmp eq i64 %1095, 14
  br i1 %1096, label %1097, label %1099

1097:                                             ; preds = %1090
  %1098 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1103

1099:                                             ; preds = %1090
  %1100 = load i32, ptr %481, align 4
  %1101 = lshr i32 %1100, 16
  %1102 = and i32 %1101, 255
  br label %1103

1103:                                             ; preds = %1099, %1097
  %1104 = phi i32 [ %1098, %1097 ], [ %1102, %1099 ]
  %1105 = icmp eq i32 %1093, %1104
  br i1 %1105, label %1106, label %1151

1106:                                             ; preds = %1103
  %1107 = load i32, ptr %497, align 8
  %1108 = load i32, ptr %1010, align 8
  %1109 = xor i32 %1108, %1107
  %1110 = and i32 %1109, 16711680
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1112, label %1151

1112:                                             ; preds = %1106
  %1113 = and i32 %1107, 65535
  %1114 = icmp eq i32 %1113, 37
  br i1 %1114, label %1115, label %1118

1115:                                             ; preds = %1112
  %1116 = call fastcc i32 @rhs_regno(ptr noundef nonnull %497) #19
  %1117 = icmp ult i32 %1116, 53
  br i1 %1117, label %1118, label %1120

1118:                                             ; preds = %1115, %1112
  %1119 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %1010) #19
  br label %1120

1120:                                             ; preds = %1118, %1115
  %1121 = phi ptr [ %1119, %1118 ], [ %1010, %1115 ]
  %1122 = load i32, ptr @target_flags, align 4, !tbaa !28
  %1123 = and i32 %1122, 4
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1125, label %1129

1125:                                             ; preds = %1120
  %1126 = call i32 @ix86_cfun_abi() #18
  %1127 = icmp eq i32 %1126, 1
  %1128 = and i1 %508, %1127
  br i1 %1128, label %1130, label %1145

1129:                                             ; preds = %1120
  br i1 %508, label %1130, label %1145

1130:                                             ; preds = %1125, %1129
  %1131 = load i32, ptr %497, align 8
  %1132 = and i32 %1131, 65535
  %1133 = icmp ne i32 %1132, 43
  %1134 = select i1 %1133, i1 true, i1 %483
  br i1 %1134, label %1145, label %1138

1135:                                             ; preds = %1138
  %1136 = add nuw nsw i64 %1139, 1
  %1137 = icmp eq i64 %1136, %490
  br i1 %1137, label %1145, label %1138, !llvm.loop !81

1138:                                             ; preds = %1130, %1135
  %1139 = phi i64 [ %1136, %1135 ], [ 0, %1130 ]
  %1140 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %1139, i32 13
  %1141 = load ptr, ptr %1140, align 8, !tbaa !82
  %1142 = icmp eq ptr %1141, null
  br i1 %1142, label %1135, label %1143

1143:                                             ; preds = %1138
  %1144 = call ptr @copy_to_reg(ptr noundef %1121) #18
  br label %1176

1145:                                             ; preds = %1135, %1130, %1129, %1125
  %1146 = call ptr @emit_move_insn(ptr noundef nonnull %497, ptr noundef %1121) #18
  %1147 = load i32, ptr %497, align 8
  %1148 = and i32 %1147, 65535
  %1149 = icmp eq i32 %1148, 43
  br i1 %1149, label %1150, label %1176

1150:                                             ; preds = %1145
  store i32 1, ptr %20, align 4, !tbaa !28
  br label %1176

1151:                                             ; preds = %1106, %1103, %1089
  %1152 = load i64, ptr %64, align 8
  %1153 = and i64 %1152, 65535
  %1154 = icmp eq i64 %1153, 14
  br i1 %1154, label %1155, label %1157

1155:                                             ; preds = %1151
  %1156 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1161

1157:                                             ; preds = %1151
  %1158 = load i32, ptr %481, align 4
  %1159 = lshr i32 %1158, 16
  %1160 = and i32 %1159, 255
  br label %1161

1161:                                             ; preds = %1157, %1155
  %1162 = phi i32 [ %1156, %1155 ], [ %1160, %1157 ]
  %1163 = icmp eq i32 %1162, 1
  br i1 %1163, label %1164, label %1173

1164:                                             ; preds = %1161
  %1165 = load i32, ptr %1010, align 8
  %1166 = and i32 %1165, 16711680
  %1167 = icmp eq i32 %1166, 65536
  br i1 %1167, label %1170, label %1168

1168:                                             ; preds = %1164
  %1169 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %1010) #19
  br label %1170

1170:                                             ; preds = %1168, %1164
  %1171 = phi ptr [ %1169, %1168 ], [ %1010, %1164 ]
  %1172 = call ptr @copy_blkmode_from_reg(ptr noundef %497, ptr noundef %1171, ptr noundef nonnull %64) #18
  store i32 1, ptr %20, align 4, !tbaa !28
  br label %1176

1173:                                             ; preds = %1161
  %1174 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %1010) #19
  %1175 = call ptr @copy_to_reg(ptr noundef %1174) #18
  br label %1176

1176:                                             ; preds = %1143, %1150, %1145, %1055, %1029, %1088, %1170, %1173, %1024
  %1177 = phi ptr [ %1025, %1024 ], [ %1058, %1055 ], [ %497, %1029 ], [ %1082, %1088 ], [ %1172, %1170 ], [ %1175, %1173 ], [ %1144, %1143 ], [ %497, %1150 ], [ %497, %1145 ]
  %1178 = load i32, ptr %1177, align 8
  %1179 = and i32 %1178, 65535
  %1180 = icmp eq i32 %1179, 37
  br i1 %1180, label %1181, label %1259

1181:                                             ; preds = %1176
  %1182 = load i64, ptr %64, align 8
  %1183 = and i64 %1182, 65535
  %1184 = icmp eq i64 %1183, 14
  br i1 %1184, label %1185, label %1187

1185:                                             ; preds = %1181
  %1186 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1191

1187:                                             ; preds = %1181
  %1188 = load i32, ptr %481, align 4
  %1189 = lshr i32 %1188, 16
  %1190 = and i32 %1189, 255
  br label %1191

1191:                                             ; preds = %1187, %1185
  %1192 = phi i32 [ %1186, %1185 ], [ %1190, %1187 ]
  %1193 = icmp eq i32 %1192, 1
  br i1 %1193, label %1259, label %1194

1194:                                             ; preds = %1191
  %1195 = load i32, ptr %1177, align 8
  %1196 = lshr i32 %1195, 16
  %1197 = and i32 %1196, 255
  %1198 = load i64, ptr %64, align 8
  %1199 = and i64 %1198, 65535
  %1200 = icmp eq i64 %1199, 14
  br i1 %1200, label %1201, label %1203

1201:                                             ; preds = %1194
  %1202 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1207

1203:                                             ; preds = %1194
  %1204 = load i32, ptr %481, align 4
  %1205 = lshr i32 %1204, 16
  %1206 = and i32 %1205, 255
  br label %1207

1207:                                             ; preds = %1203, %1201
  %1208 = phi i32 [ %1202, %1201 ], [ %1206, %1203 ]
  %1209 = icmp eq i32 %1197, %1208
  br i1 %1209, label %1259, label %1210

1210:                                             ; preds = %1207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #20
  %1211 = load i64, ptr %64, align 8
  %1212 = trunc i64 %1211 to i32
  %1213 = lshr i32 %1212, 21
  %1214 = and i32 %1213, 1
  store i32 %1214, ptr %21, align 4, !tbaa !28
  %1215 = and i64 %1211, 65535
  %1216 = icmp eq i64 %1215, 14
  br i1 %1216, label %1217, label %1219

1217:                                             ; preds = %1210
  %1218 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1223

1219:                                             ; preds = %1210
  %1220 = load i32, ptr %481, align 4
  %1221 = lshr i32 %1220, 16
  %1222 = and i32 %1221, 255
  br label %1223

1223:                                             ; preds = %1219, %1217
  %1224 = phi i32 [ %1218, %1217 ], [ %1222, %1219 ]
  %1225 = call i32 @promote_function_mode(ptr noundef nonnull %64, i32 noundef %1224, ptr noundef nonnull %21, ptr noundef %188, i32 noundef 1) #18
  %1226 = load i32, ptr %1177, align 8
  %1227 = lshr i32 %1226, 16
  %1228 = and i32 %1227, 255
  %1229 = icmp eq i32 %1228, %1225
  br i1 %1229, label %1231, label %1230

1230:                                             ; preds = %1223
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3042, ptr noundef nonnull @.str.1) #18
  br label %1231

1231:                                             ; preds = %1223, %1230
  %1232 = load i64, ptr %64, align 8
  %1233 = and i64 %1232, 65535
  %1234 = icmp eq i64 %1233, 14
  br i1 %1234, label %1235, label %1237

1235:                                             ; preds = %1231
  %1236 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1241

1237:                                             ; preds = %1231
  %1238 = load i32, ptr %481, align 4
  %1239 = lshr i32 %1238, 16
  %1240 = and i32 %1239, 255
  br label %1241

1241:                                             ; preds = %1237, %1235
  %1242 = phi i32 [ %1236, %1235 ], [ %1240, %1237 ]
  %1243 = call ptr @gen_rtx_SUBREG(i32 noundef %1242, ptr noundef nonnull %1177, i32 noundef 0) #18
  %1244 = load i32, ptr %1243, align 8
  %1245 = or i32 %1244, 268435456
  store i32 %1245, ptr %1243, align 8
  %1246 = load i32, ptr %21, align 4, !tbaa !28
  %1247 = icmp slt i32 %1246, 0
  br i1 %1247, label %1248, label %1250

1248:                                             ; preds = %1241
  %1249 = or i32 %1244, 402653184
  br label %1257

1250:                                             ; preds = %1241
  %1251 = and i32 %1245, -134217729
  store i32 %1251, ptr %1243, align 8
  %1252 = load i32, ptr %21, align 4, !tbaa !28
  %1253 = shl i32 %1252, 26
  %1254 = and i32 %1253, 67108864
  %1255 = and i32 %1245, -201326593
  %1256 = or disjoint i32 %1254, %1255
  br label %1257

1257:                                             ; preds = %1250, %1248
  %1258 = phi i32 [ %1256, %1250 ], [ %1249, %1248 ]
  store i32 %1258, ptr %1243, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #20
  br label %1259

1259:                                             ; preds = %1257, %1207, %1191, %1176
  %1260 = phi ptr [ %1243, %1257 ], [ %1177, %1207 ], [ %1177, %1191 ], [ %1177, %1176 ]
  %1261 = load ptr, ptr %13, align 8, !tbaa !26
  %1262 = icmp eq ptr %1261, null
  br i1 %1262, label %1266, label %1263

1263:                                             ; preds = %1259
  call void @emit_stack_restore(i32 noundef 0, ptr noundef nonnull %1261, ptr noundef null) #18
  store i32 %694, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %1264 = load i32, ptr %14, align 4, !tbaa !28
  store i32 %1264, ptr @x_rtl, align 8, !tbaa !64
  %1265 = sub nsw i32 %694, %1264
  store i32 %695, ptr @stack_arg_under_construction, align 4, !tbaa !28
  store i32 %37, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  store ptr %38, ptr @stack_usage_map, align 8, !tbaa !26
  store i32 1, ptr %20, align 4, !tbaa !28
  br label %1309

1266:                                             ; preds = %1259
  %1267 = load i32, ptr @target_flags, align 4, !tbaa !28
  %1268 = and i32 %1267, 4
  %1269 = icmp eq i32 %1268, 0
  br i1 %1269, label %1270, label %1274

1270:                                             ; preds = %1266
  %1271 = call i32 @ix86_cfun_abi() #18
  %1272 = icmp eq i32 %1271, 1
  %1273 = and i1 %508, %1272
  br i1 %1273, label %1275, label %1309

1274:                                             ; preds = %1266
  br i1 %508, label %1275, label %1309

1275:                                             ; preds = %1270, %1274
  %1276 = icmp eq ptr %774, null
  br i1 %1276, label %1280, label %1277

1277:                                             ; preds = %1275
  %1278 = load i32, ptr %12, align 4, !tbaa !28
  %1279 = load i32, ptr %11, align 4, !tbaa !28
  call fastcc void @restore_fixed_argument_area(ptr noundef nonnull %774, ptr noundef %697, i32 noundef %1278, i32 noundef %1279) #19
  br label %1280

1280:                                             ; preds = %1277, %1275
  br i1 %480, label %1281, label %1308

1281:                                             ; preds = %1280, %1305
  %1282 = phi i64 [ %1306, %1305 ], [ 0, %1280 ]
  %1283 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %1282, i32 13
  %1284 = load ptr, ptr %1283, align 8, !tbaa !82
  %1285 = icmp eq ptr %1284, null
  br i1 %1285, label %1305, label %1286

1286:                                             ; preds = %1281
  %1287 = load i32, ptr %1284, align 8
  %1288 = lshr i32 %1287, 16
  %1289 = and i32 %1288, 255
  %1290 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %1282, i32 12
  %1291 = load ptr, ptr %1290, align 8, !tbaa !83
  %1292 = getelementptr inbounds %struct.rtx_def, ptr %1291, i64 0, i32 1
  %1293 = load ptr, ptr %1292, align 8, !tbaa !23
  %1294 = call ptr @memory_address_addr_space(i32 noundef %1289, ptr noundef %1293, i8 noundef zeroext 0) #18
  %1295 = call ptr @gen_rtx_MEM(i32 noundef %1289, ptr noundef %1294) #18
  %1296 = icmp eq i32 %1289, 1
  %1297 = load ptr, ptr %1283, align 8, !tbaa !82
  br i1 %1296, label %1300, label %1298

1298:                                             ; preds = %1286
  %1299 = call ptr @emit_move_insn(ptr noundef %1295, ptr noundef %1297) #18
  br label %1305

1300:                                             ; preds = %1286
  %1301 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %1282, i32 10
  %1302 = load i64, ptr %1301, align 8, !tbaa !84
  %1303 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1302) #18
  %1304 = call ptr @emit_block_move(ptr noundef %1295, ptr noundef %1297, ptr noundef %1303, i32 noundef 2) #18
  br label %1305

1305:                                             ; preds = %1298, %1300, %1281
  %1306 = add nuw nsw i64 %1282, 1
  %1307 = icmp eq i64 %1306, %491
  br i1 %1307, label %1308, label %1281, !llvm.loop !85

1308:                                             ; preds = %1305, %1280
  store i32 %37, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  store ptr %38, ptr @stack_usage_map, align 8, !tbaa !26
  br label %1309

1309:                                             ; preds = %1270, %1274, %1308, %1263
  %1310 = phi i32 [ %1265, %1263 ], [ %542, %1308 ], [ %542, %1274 ], [ %542, %1270 ]
  %1311 = load i32, ptr %10, align 4
  %1312 = and i32 %1311, 32
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1320, label %1314

1314:                                             ; preds = %1309
  %1315 = load ptr, ptr @cfun, align 8, !tbaa !26
  %1316 = getelementptr inbounds %struct.function, ptr %1315, i64 0, i32 8
  %1317 = load ptr, ptr %1316, align 8, !tbaa !86
  %1318 = icmp eq ptr %1317, null
  br i1 %1318, label %1320, label %1319

1319:                                             ; preds = %1314
  call void @update_nonlocal_goto_save_area() #18
  br label %1320

1320:                                             ; preds = %1319, %1314, %1309
  br i1 %480, label %1321, label %1330

1321:                                             ; preds = %1320, %1327
  %1322 = phi i64 [ %1328, %1327 ], [ 0, %1320 ]
  %1323 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %1322, i32 14
  %1324 = load ptr, ptr %1323, align 8, !tbaa !88
  %1325 = icmp eq ptr %1324, null
  br i1 %1325, label %1327, label %1326

1326:                                             ; preds = %1321
  call void @free(ptr noundef nonnull %1324) #19
  br label %1327

1327:                                             ; preds = %1321, %1326
  %1328 = add nuw nsw i64 %1322, 1
  %1329 = icmp eq i64 %1328, %492
  br i1 %1329, label %1330, label %1321, !llvm.loop !89

1330:                                             ; preds = %1327, %1320
  %1331 = call ptr @get_insns() #18
  call void @end_sequence() #18
  br i1 %505, label %1332, label %1343

1332:                                             ; preds = %1330
  store i32 %506, ptr @x_rtl, align 8, !tbaa !64
  store i32 %507, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  br i1 %480, label %1333, label %1340

1333:                                             ; preds = %1332, %1333
  %1334 = phi i64 [ %1338, %1333 ], [ 0, %1332 ]
  %1335 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %1334, i32 2
  store ptr null, ptr %1335, align 8, !tbaa !90
  %1336 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %1334, i32 14
  store ptr null, ptr %1336, align 8, !tbaa !88
  %1337 = getelementptr inbounds %struct.arg_data, ptr %293, i64 %1334, i32 11
  store ptr null, ptr %1337, align 8, !tbaa !75
  %1338 = add nuw nsw i64 %1334, 1
  %1339 = icmp eq i64 %1338, %493
  br i1 %1339, label %1340, label %1333, !llvm.loop !91

1340:                                             ; preds = %1333, %1332
  %1341 = load ptr, ptr @stored_args_map, align 8, !tbaa !26
  %1342 = load ptr, ptr %1341, align 8, !tbaa !92
  call void @free(ptr noundef %1342) #19
  call void @free(ptr noundef %1341) #19
  br label %1352

1343:                                             ; preds = %1330
  %1344 = and i32 %1311, 8
  %1345 = icmp eq i32 %1344, 0
  br i1 %1345, label %1346, label %1352

1346:                                             ; preds = %1343
  %1347 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %1348 = load i32, ptr @x_rtl, align 8, !tbaa !64
  %1349 = sub nsw i32 %1347, %1348
  %1350 = icmp eq i32 %1310, %1349
  br i1 %1350, label %1352, label %1351

1351:                                             ; preds = %1346
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3147, ptr noundef nonnull @.str.1) #18
  br label %1352

1352:                                             ; preds = %1351, %1346, %1343, %1340
  %1353 = phi ptr [ %1331, %1340 ], [ null, %1343 ], [ null, %1346 ], [ null, %1351 ]
  %1354 = phi ptr [ %498, %1340 ], [ %1331, %1343 ], [ %1331, %1346 ], [ %1331, %1351 ]
  %1355 = load i32, ptr %20, align 4, !tbaa !28
  %1356 = icmp eq i32 %1355, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #20
  br i1 %1356, label %1357, label %494

1357:                                             ; preds = %1352
  %1358 = icmp eq ptr %1353, null
  br i1 %1358, label %1361, label %1359

1359:                                             ; preds = %1357
  %1360 = call ptr @emit_insn(ptr noundef nonnull %1353) #18
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 39), align 1, !tbaa !94
  br label %1363

1361:                                             ; preds = %494, %1357
  %1362 = call ptr @emit_insn(ptr noundef %1354) #18
  br label %1363

1363:                                             ; preds = %1361, %1359
  %1364 = load i32, ptr @expand_call.currently_expanding_call, align 4, !tbaa !28
  %1365 = add nsw i32 %1364, -1
  store i32 %1365, ptr @expand_call.currently_expanding_call, align 4, !tbaa !28
  %1366 = icmp eq ptr %696, null
  br i1 %1366, label %1368, label %1367

1367:                                             ; preds = %1363
  call void @free(ptr noundef nonnull %696) #19
  br label %1368

1368:                                             ; preds = %120, %1363, %1367
  %1369 = phi ptr [ %121, %120 ], [ %1260, %1367 ], [ %1260, %1363 ]
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
  ret ptr %1369
}

; Function Attrs: optsize
declare i32 @ix86_cfun_abi() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  tail call fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr noundef %1) #19
  %3 = tail call fastcc ptr @next_call_expr_arg(ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !95
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !97
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !98
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !95
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
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
define internal fastcc ptr @split_complex_types(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1, %14
  %4 = phi ptr [ %16, %14 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 13
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !44
  %12 = tail call zeroext i8 %11(ptr noundef nonnull %6) #18
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3, %10
  %15 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %3, !llvm.loop !99

18:                                               ; preds = %10
  %19 = tail call ptr @copy_list(ptr noundef nonnull %0) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %18, %40
  %22 = phi ptr [ %43, %40 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.tree_list, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 13
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !44
  %30 = tail call zeroext i8 %29(ptr noundef nonnull %24) #18
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  store ptr %34, ptr %23, align 8, !tbaa !23
  %35 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !23
  %37 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %34) #18
  store ptr %37, ptr %35, align 8, !tbaa !23
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 1
  store ptr %36, ptr %38, align 8, !tbaa !23
  %39 = load ptr, ptr %35, align 8, !tbaa !23
  br label %40

40:                                               ; preds = %32, %28, %21
  %41 = phi ptr [ %39, %32 ], [ %22, %28 ], [ %22, %21 ]
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !23
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %21, !llvm.loop !100

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
define internal fastcc void @initialize_argument_information(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12, ptr nocapture noundef %13, ptr nocapture noundef writeonly %14, i8 noundef zeroext %15) unnamed_addr #0 {
  %17 = alloca %struct.call_expr_arg_iterator_d, align 8
  %18 = alloca i32, align 4
  %19 = load i64, ptr %4, align 8
  %20 = and i64 %19, 65535
  %21 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !28
  %23 = add i32 %22, -4
  %24 = icmp ult i32 %23, 7
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !23
  br label %28

28:                                               ; preds = %16, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %16 ]
  %30 = getelementptr inbounds %struct.args_size, ptr %2, i64 0, i32 1
  %31 = add nsw i32 %0, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #20
  %32 = icmp eq ptr %5, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %34
  store ptr %5, ptr %35, align 8, !tbaa !101
  %36 = add nsw i32 %0, -2
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i32 [ %36, %33 ], [ %31, %28 ]
  %39 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %4, ptr noundef nonnull %17) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %73, label %41

41:                                               ; preds = %37, %65
  %42 = phi i32 [ %70, %65 ], [ %38, %37 ]
  %43 = phi ptr [ %71, %65 ], [ %39, %37 ]
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !23
  %46 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !44
  %47 = icmp ne ptr %46, null
  %48 = icmp ne ptr %45, null
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %65

50:                                               ; preds = %41
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
  %59 = load ptr, ptr %58, align 8, !tbaa !23
  %60 = tail call ptr @build1_stat(i32 noundef 43, ptr noundef %59, ptr noundef nonnull %43) #18
  %61 = sext i32 %42 to i64
  %62 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %61
  store ptr %60, ptr %62, align 8, !tbaa !101
  %63 = add nsw i32 %42, -1
  %64 = tail call ptr @build1_stat(i32 noundef 44, ptr noundef %59, ptr noundef nonnull %43) #18
  br label %65

65:                                               ; preds = %41, %50, %54, %57
  %66 = phi i32 [ %63, %57 ], [ %42, %54 ], [ %42, %50 ], [ %42, %41 ]
  %67 = phi ptr [ %64, %57 ], [ %43, %54 ], [ %43, %50 ], [ %43, %41 ]
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %68
  store ptr %67, ptr %69, align 8, !tbaa !101
  %70 = add nsw i32 %66, -1
  %71 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %17) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %41, !llvm.loop !102

73:                                               ; preds = %65, %37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #20
  %74 = icmp sgt i32 %0, 0
  br i1 %74, label %75, label %368

75:                                               ; preds = %73
  %76 = icmp eq i8 %15, 0
  %77 = icmp eq ptr %6, null
  %78 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %79 = icmp sgt i32 %9, 0
  %80 = zext nneg i32 %0 to i64
  br label %81

81:                                               ; preds = %75, %364
  %82 = phi i64 [ %80, %75 ], [ %84, %364 ]
  %83 = phi i32 [ 0, %75 ], [ %366, %364 ]
  %84 = add nsw i64 %82, -1
  %85 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !101
  %87 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #20
  %89 = load ptr, ptr @global_trees, align 16, !tbaa !26
  %90 = icmp eq ptr %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.tree_type, ptr %88, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !23
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %81
  %96 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !26
  store ptr %96, ptr %85, align 8, !tbaa !101
  %97 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !26
  br label %98

98:                                               ; preds = %95, %91
  %99 = phi ptr [ %97, %95 ], [ %88, %91 ]
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 65534
  %102 = icmp eq i64 %101, 16
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 6
  %105 = load i32, ptr %104, align 4
  %106 = and i32 %105, 4096
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = call ptr @first_field(ptr noundef nonnull %99) #18
  %110 = getelementptr inbounds %struct.tree_common, ptr %109, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !23
  %112 = load i64, ptr %111, align 8
  br label %113

113:                                              ; preds = %98, %108, %103
  %114 = phi i64 [ %112, %108 ], [ %100, %103 ], [ %100, %98 ]
  %115 = phi ptr [ %111, %108 ], [ %99, %103 ], [ %99, %98 ]
  %116 = and i64 %114, 65535
  %117 = icmp eq i64 %116, 14
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = call i32 @vector_type_mode(ptr noundef nonnull %115) #18
  br label %125

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.tree_type, ptr %115, i64 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  br label %125

125:                                              ; preds = %120, %118
  %126 = phi i32 [ %119, %118 ], [ %124, %120 ]
  %127 = icmp slt i32 %83, %3
  %128 = zext i1 %127 to i32
  %129 = zext i1 %127 to i8
  %130 = call zeroext i8 @pass_by_reference(ptr noundef %8, i32 noundef %126, ptr noundef nonnull %115, i8 noundef zeroext %129) #18
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %247, label %132

132:                                              ; preds = %125
  %133 = load i64, ptr %115, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 14
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = call i32 @vector_type_mode(ptr noundef nonnull %115) #18
  br label %143

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.tree_type, ptr %115, i64 0, i32 6
  %140 = load i32, ptr %139, align 4
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  br label %143

143:                                              ; preds = %138, %136
  %144 = phi i32 [ %137, %136 ], [ %142, %138 ]
  %145 = call zeroext i8 @reference_callee_copied(ptr noundef %8, i32 noundef %144, ptr noundef nonnull %115, i8 noundef zeroext %129) #18
  br i1 %76, label %146, label %185

146:                                              ; preds = %143
  %147 = icmp eq i8 %145, 0
  br i1 %147, label %195, label %148

148:                                              ; preds = %146
  %149 = load i64, ptr %115, align 8
  %150 = and i64 %149, 262144
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %195

152:                                              ; preds = %148
  %153 = load ptr, ptr %85, align 8, !tbaa !101
  %154 = call ptr @get_base_address(ptr noundef %153) #18
  %155 = icmp eq ptr %154, null
  br i1 %155, label %195, label %156

156:                                              ; preds = %152
  %157 = load i64, ptr %154, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 141
  br i1 %159, label %195, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %158
  %162 = load i32, ptr %161, align 4, !tbaa !28
  %163 = icmp eq i32 %162, 3
  br i1 %163, label %164, label %185

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %154, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !23
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  call void @make_decl_rtl(ptr noundef nonnull %154) #18
  %169 = load ptr, ptr %165, align 8, !tbaa !23
  br label %170

170:                                              ; preds = %164, %168
  %171 = phi ptr [ %169, %168 ], [ %166, %164 ]
  %172 = load i32, ptr %171, align 8
  %173 = and i32 %172, 65535
  %174 = icmp eq i32 %173, 43
  br i1 %174, label %175, label %195

175:                                              ; preds = %170
  %176 = load i64, ptr %154, align 8
  %177 = and i64 %176, 65535
  %178 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !28
  %180 = icmp eq i32 %179, 3
  %181 = and i64 %176, 67108864
  %182 = icmp eq i64 %181, 0
  %183 = and i1 %180, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  store i8 0, ptr %14, align 1, !tbaa !23
  br label %185

185:                                              ; preds = %160, %143, %184, %175
  %186 = load ptr, ptr %85, align 8, !tbaa !101
  %187 = call ptr @build_fold_addr_expr_loc(i32 noundef %29, ptr noundef %186) #18
  store ptr %187, ptr %85, align 8, !tbaa !101
  %188 = getelementptr inbounds %struct.tree_common, ptr %187, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !23
  %190 = load i32, ptr %13, align 4, !tbaa !28
  %191 = and i32 %190, 1
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %247, label %193

193:                                              ; preds = %185
  %194 = and i32 %190, -6
  store i32 %194, ptr %13, align 4, !tbaa !28
  br label %247

195:                                              ; preds = %170, %156, %152, %148, %146
  %196 = getelementptr inbounds %struct.tree_type, ptr %115, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !23
  %198 = icmp eq ptr %197, null
  br i1 %198, label %211, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.tree_type, ptr %115, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !23
  %202 = load i64, ptr %201, align 8
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 23
  br i1 %204, label %205, label %211

205:                                              ; preds = %199
  %206 = load i32, ptr @flag_stack_check, align 4, !tbaa !28
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %223

208:                                              ; preds = %205
  %209 = call i32 @compare_tree_int(ptr noundef nonnull %201, i64 noundef 40) #18
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %208, %199, %195
  %212 = load ptr, ptr %85, align 8, !tbaa !101
  %213 = call ptr @expr_size(ptr noundef %212) #18
  %214 = load ptr, ptr %10, align 8, !tbaa !26
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %218

216:                                              ; preds = %211
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %10, ptr noundef null) #18
  %217 = load i32, ptr @x_rtl, align 8, !tbaa !64
  store i32 %217, ptr %11, align 4, !tbaa !28
  store i32 0, ptr @x_rtl, align 8, !tbaa !64
  br label %218

218:                                              ; preds = %216, %211
  %219 = getelementptr inbounds %struct.tree_type, ptr %115, i64 0, i32 7
  %220 = load i32, ptr %219, align 8, !tbaa !23
  %221 = call ptr @allocate_dynamic_stack_space(ptr noundef %213, ptr noundef null, i32 noundef %220) #18
  %222 = call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %221) #18
  call void @set_mem_attributes(ptr noundef %222, ptr noundef nonnull %115, i32 noundef 1) #18
  br label %225

223:                                              ; preds = %208, %205
  %224 = call ptr @assign_temp(ptr noundef nonnull %115, i32 noundef 0, i32 noundef 1, i32 noundef 0) #18
  br label %225

225:                                              ; preds = %223, %218
  %226 = phi ptr [ %222, %218 ], [ %224, %223 ]
  %227 = load ptr, ptr %85, align 8, !tbaa !101
  %228 = call ptr @store_expr(ptr noundef %227, ptr noundef %226, i32 noundef 0, i8 noundef zeroext 0) #18
  %229 = load i32, ptr %13, align 4, !tbaa !28
  %230 = and i32 %229, 1
  %231 = icmp ne i32 %230, 0
  %232 = and i32 %229, -4
  %233 = or disjoint i32 %232, 2
  %234 = select i1 %231, i32 %233, i32 %229
  %235 = and i32 %234, 2
  %236 = icmp ne i32 %235, 0
  %237 = select i1 %147, i1 %236, i1 false
  %238 = or i1 %231, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %225
  %240 = and i32 %234, -7
  %241 = select i1 %237, i32 %240, i32 %234
  store i32 %241, ptr %13, align 4, !tbaa !28
  br label %242

242:                                              ; preds = %225, %239
  %243 = call ptr @make_tree(ptr noundef nonnull %115, ptr noundef %226) #18
  %244 = call ptr @build_fold_addr_expr_loc(i32 noundef %29, ptr noundef %243) #18
  store ptr %244, ptr %85, align 8, !tbaa !101
  %245 = getelementptr inbounds %struct.tree_common, ptr %244, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !23
  store i8 0, ptr %14, align 1, !tbaa !23
  br label %247

247:                                              ; preds = %242, %193, %185, %125
  %248 = phi ptr [ %115, %125 ], [ %189, %193 ], [ %189, %185 ], [ %246, %242 ]
  %249 = load i64, ptr %248, align 8
  %250 = trunc i64 %249 to i32
  %251 = lshr i32 %250, 21
  %252 = and i32 %251, 1
  store i32 %252, ptr %18, align 4, !tbaa !28
  %253 = and i64 %249, 65535
  %254 = icmp eq i64 %253, 14
  br i1 %254, label %255, label %257

255:                                              ; preds = %247
  %256 = call i32 @vector_type_mode(ptr noundef nonnull %248) #18
  br label %262

257:                                              ; preds = %247
  %258 = getelementptr inbounds %struct.tree_type, ptr %248, i64 0, i32 6
  %259 = load i32, ptr %258, align 4
  %260 = lshr i32 %259, 16
  %261 = and i32 %260, 255
  br label %262

262:                                              ; preds = %257, %255
  %263 = phi i32 [ %256, %255 ], [ %261, %257 ]
  br i1 %77, label %266, label %264

264:                                              ; preds = %262
  %265 = load ptr, ptr %78, align 8, !tbaa !23
  br label %266

266:                                              ; preds = %262, %264
  %267 = phi ptr [ %265, %264 ], [ %7, %262 ]
  %268 = call i32 @promote_function_mode(ptr noundef nonnull %248, i32 noundef %263, ptr noundef nonnull %18, ptr noundef %267, i32 noundef 0) #18
  %269 = load i32, ptr %18, align 4, !tbaa !28
  %270 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %84, i32 7
  store i32 %269, ptr %270, align 8, !tbaa !103
  %271 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %84, i32 1
  store i32 %268, ptr %271, align 8, !tbaa !104
  %272 = call ptr @function_arg(ptr noundef %8, i32 noundef %268, ptr noundef nonnull %248, i32 noundef %128) #18
  %273 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %84, i32 4
  store ptr %272, ptr %273, align 8, !tbaa !73
  %274 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %84, i32 5
  store ptr %272, ptr %274, align 8, !tbaa !105
  %275 = icmp eq ptr %272, null
  br i1 %275, label %280, label %276

276:                                              ; preds = %266
  %277 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !106
  %278 = call i32 %277(ptr noundef %8, i32 noundef %268, ptr noundef nonnull %248, i8 noundef zeroext %129) #18
  %279 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %84, i32 8
  store i32 %278, ptr %279, align 4, !tbaa !77
  br label %280

280:                                              ; preds = %276, %266
  %281 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 11), align 8, !tbaa !107
  %282 = call zeroext i8 %281(i32 noundef %268, ptr noundef nonnull %248) #18
  %283 = zext i8 %282 to i32
  %284 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %84, i32 9
  store i32 %283, ptr %284, align 8, !tbaa !70
  %285 = load ptr, ptr %273, align 8, !tbaa !73
  %286 = icmp eq ptr %285, null
  br i1 %286, label %299, label %287

287:                                              ; preds = %280
  %288 = load i32, ptr %285, align 8
  %289 = and i32 %288, 65535
  %290 = icmp eq i32 %289, 15
  br i1 %290, label %291, label %299

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.rtx_def, ptr %285, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !23
  %294 = getelementptr inbounds %struct.rtvec_def, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !26
  %296 = getelementptr inbounds %struct.rtx_def, ptr %295, i64 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !23
  %298 = icmp eq ptr %297, null
  br i1 %298, label %303, label %299

299:                                              ; preds = %291, %287, %280
  %300 = load i64, ptr %248, align 8
  %301 = and i64 %300, 262144
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %304, label %307

303:                                              ; preds = %291
  store i32 1, ptr %284, align 8, !tbaa !70
  br label %307

304:                                              ; preds = %299
  %305 = icmp eq i8 %282, 0
  br i1 %305, label %308, label %306

306:                                              ; preds = %304
  br i1 %286, label %325, label %307

307:                                              ; preds = %303, %306, %299
  store i32 1, ptr %12, align 4, !tbaa !28
  br label %308

308:                                              ; preds = %307, %304
  br i1 %286, label %309, label %311

309:                                              ; preds = %308
  %310 = load i32, ptr %284, align 8, !tbaa !70
  br label %319

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %84, i32 8
  %313 = load i32, ptr %312, align 4, !tbaa !77
  %314 = icmp ne i32 %313, 0
  %315 = or i1 %79, %314
  %316 = load i32, ptr %284, align 8, !tbaa !70
  br i1 %315, label %319, label %317

317:                                              ; preds = %311
  %318 = icmp eq i32 %316, 0
  br i1 %318, label %330, label %325

319:                                              ; preds = %309, %311
  %320 = phi i32 [ %310, %309 ], [ %316, %311 ]
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %84, i32 8
  %324 = load i32, ptr %323, align 4, !tbaa !77
  br label %325

325:                                              ; preds = %306, %317, %319, %322
  %326 = phi i32 [ %324, %322 ], [ 0, %319 ], [ 0, %317 ], [ 0, %306 ]
  %327 = icmp ne ptr %285, null
  %328 = zext i1 %327 to i32
  %329 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %84, i32 10
  call void @locate_and_pad_parm(i32 noundef %268, ptr noundef nonnull %248, i32 noundef %328, i32 noundef %326, ptr noundef %6, ptr noundef nonnull %2, ptr noundef nonnull %329) #18
  br label %330

330:                                              ; preds = %325, %317
  %331 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %84, i32 10
  %332 = load i64, ptr %331, align 8, !tbaa !84
  %333 = load i64, ptr %2, align 8, !tbaa !51
  %334 = add nsw i64 %333, %332
  store i64 %334, ptr %2, align 8, !tbaa !51
  %335 = getelementptr inbounds %struct.args_size, ptr %331, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !108
  %337 = icmp eq ptr %336, null
  br i1 %337, label %353, label %338

338:                                              ; preds = %330
  %339 = call i32 @host_integerp(ptr noundef nonnull %336, i32 noundef 0) #18
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %338
  %342 = call i64 @tree_low_cst(ptr noundef nonnull %336, i32 noundef 0) #18
  %343 = load i64, ptr %2, align 8, !tbaa !51
  %344 = add nsw i64 %343, %342
  store i64 %344, ptr %2, align 8, !tbaa !51
  br label %353

345:                                              ; preds = %338
  %346 = load ptr, ptr %30, align 8, !tbaa !48
  %347 = icmp eq ptr %346, null
  %348 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !26
  %349 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %348, ptr noundef nonnull %336) #18
  br i1 %347, label %350, label %351

350:                                              ; preds = %345
  store ptr %349, ptr %30, align 8, !tbaa !48
  br label %353

351:                                              ; preds = %345
  %352 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %346, ptr noundef %349) #18
  store ptr %352, ptr %30, align 8, !tbaa !48
  br label %353

353:                                              ; preds = %341, %351, %350, %330
  %354 = load i64, ptr %248, align 8
  %355 = and i64 %354, 65535
  %356 = icmp eq i64 %355, 14
  br i1 %356, label %357, label %359

357:                                              ; preds = %353
  %358 = call i32 @vector_type_mode(ptr noundef nonnull %248) #18
  br label %364

359:                                              ; preds = %353
  %360 = getelementptr inbounds %struct.tree_type, ptr %248, i64 0, i32 6
  %361 = load i32, ptr %360, align 4
  %362 = lshr i32 %361, 16
  %363 = and i32 %362, 255
  br label %364

364:                                              ; preds = %359, %357
  %365 = phi i32 [ %358, %357 ], [ %363, %359 ]
  call void @function_arg_advance(ptr noundef %8, i32 noundef %365, ptr noundef nonnull %248, i32 noundef %128) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #20
  %366 = add nuw nsw i32 %83, 1
  %367 = icmp eq i32 %366, %0
  br i1 %367, label %368, label %81, !llvm.loop !109

368:                                              ; preds = %364, %73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @finalize_must_preallocate(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %81

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
  %16 = load i32, ptr %15, align 4, !tbaa !77
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.arg_data, ptr %2, i64 %11, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !70
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18, %10
  %23 = icmp eq i32 %13, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.arg_data, ptr %2, i64 %11, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = icmp eq ptr %26, null
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %24, %18, %22
  %30 = phi i32 [ 0, %22 ], [ 0, %18 ], [ %28, %24 ]
  %31 = phi i32 [ 0, %22 ], [ 1, %18 ], [ 1, %24 ]
  %32 = load ptr, ptr %14, align 8, !tbaa !101
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !23
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
  %49 = load ptr, ptr %14, align 8, !tbaa !101
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %52 [
    i16 59, label %58
    i16 55, label %58
    i16 56, label %58
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !23
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 262144
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %48, %48, %48, %52
  %59 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !23
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
  br i1 %69, label %10, label %70, !llvm.loop !110

70:                                               ; preds = %64
  %71 = shl nsw i32 %65, 1
  %72 = sext i32 %71 to i64
  br label %73

73:                                               ; preds = %70, %6
  %74 = phi i32 [ 0, %6 ], [ %30, %70 ]
  %75 = phi i64 [ 0, %6 ], [ %72, %70 ]
  %76 = load i64, ptr %3, align 8, !tbaa !51
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
define internal fastcc void @precompute_arguments(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load i32, ptr @target_flags, align 4, !tbaa !28
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = tail call i32 @ix86_cfun_abi() #18
  %9 = icmp eq i32 %8, 1
  %10 = icmp sgt i32 %0, 0
  %11 = and i1 %9, %10
  br i1 %11, label %14, label %93

12:                                               ; preds = %2
  %13 = icmp sgt i32 %0, 0
  br i1 %13, label %14, label %93

14:                                               ; preds = %12, %7
  %15 = zext nneg i32 %0 to i64
  br label %16

16:                                               ; preds = %14, %90
  %17 = phi i64 [ 0, %14 ], [ %91, %90 ]
  %18 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 59
  br i1 %22, label %23, label %90

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !23
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 262144
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1308, ptr noundef nonnull @.str.1) #18
  %30 = load ptr, ptr %18, align 8, !tbaa !101
  br label %31

31:                                               ; preds = %23, %29
  %32 = phi ptr [ %19, %23 ], [ %30, %29 ]
  %33 = call fastcc ptr @expand_normal(ptr noundef %32) #19
  %34 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !90
  %35 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17, i32 3
  store ptr %33, ptr %35, align 8, !tbaa !111
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
  %49 = load i32, ptr %48, align 8, !tbaa !104
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %90, label %51

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %52 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !103
  store i32 %53, ptr %3, align 4, !tbaa !28
  %54 = load ptr, ptr %34, align 8, !tbaa !90
  %55 = call ptr @convert_modes(i32 noundef %49, i32 noundef %47, ptr noundef %54, i32 noundef %53) #18
  store ptr %55, ptr %34, align 8, !tbaa !90
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %89

59:                                               ; preds = %51
  %60 = load i32, ptr %48, align 8, !tbaa !104
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !23
  %64 = icmp eq i8 %63, 2
  br i1 %64, label %65, label %89

65:                                               ; preds = %59
  %66 = call i32 @promote_mode(ptr noundef nonnull %25, i32 noundef %47, ptr noundef nonnull %3) #18
  %67 = load i32, ptr %48, align 8, !tbaa !104
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %34, align 8, !tbaa !90
  %71 = call ptr @gen_lowpart_SUBREG(i32 noundef %47, ptr noundef %70) #18
  store ptr %71, ptr %35, align 8, !tbaa !111
  %72 = load i32, ptr %71, align 8
  %73 = or i32 %72, 268435456
  store i32 %73, ptr %71, align 8
  %74 = load ptr, ptr %35, align 8, !tbaa !111
  %75 = load i32, ptr %52, align 8, !tbaa !103
  %76 = icmp slt i32 %75, 0
  %77 = load i32, ptr %74, align 8
  br i1 %76, label %78, label %80

78:                                               ; preds = %69
  %79 = or i32 %77, 134217728
  br label %87

80:                                               ; preds = %69
  %81 = and i32 %77, -134217729
  store i32 %81, ptr %74, align 8
  %82 = load i32, ptr %52, align 8, !tbaa !103
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
  br i1 %92, label %93, label %16, !llvm.loop !112

93:                                               ; preds = %90, %12, %7
  ret void
}

; Function Attrs: optsize
declare void @stack_protect_epilogue() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compute_argument_block_size(i32 noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load i64, ptr %1, align 8, !tbaa !51
  %7 = load i32, ptr @target_flags, align 4, !tbaa !28
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = tail call i32 @ix86_cfun_abi() #18
  %12 = icmp eq i32 %11, 1
  %13 = icmp sgt i32 %4, 32
  %14 = and i1 %13, %12
  br i1 %14, label %17, label %18

15:                                               ; preds = %5
  %16 = icmp sgt i32 %4, 32
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %15
  br label %18

18:                                               ; preds = %17, %15, %10
  %19 = phi i32 [ 32, %17 ], [ %4, %15 ], [ %4, %10 ]
  %20 = getelementptr inbounds %struct.args_size, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !26
  %25 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %24, ptr noundef nonnull %21) #18
  %26 = load i64, ptr %1, align 8, !tbaa !51
  %27 = tail call ptr @size_int_kind(i64 noundef %26, i32 noundef 1) #18
  %28 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %25, ptr noundef %27) #18
  store ptr %28, ptr %20, align 8, !tbaa !48
  store i64 0, ptr %1, align 8, !tbaa !51
  %29 = sdiv i32 %19, 8
  %30 = icmp sgt i32 %19, 15
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %33 = add nsw i32 %29, -1
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1231, ptr noundef nonnull @.str.1) #18
  %37 = load ptr, ptr %20, align 8, !tbaa !48
  br label %38

38:                                               ; preds = %31, %36
  %39 = phi ptr [ %28, %31 ], [ %37, %36 ]
  %40 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %39, i32 noundef %29) #18
  store ptr %40, ptr %20, align 8, !tbaa !48
  br label %41

41:                                               ; preds = %38, %23
  %42 = phi ptr [ %40, %38 ], [ %28, %23 ]
  %43 = icmp sgt i32 %0, 0
  br i1 %43, label %44, label %87

44:                                               ; preds = %41
  %45 = zext nneg i32 %0 to i64
  %46 = tail call ptr @size_int_kind(i64 noundef %45, i32 noundef 1) #18
  %47 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 81, ptr noundef %42, ptr noundef %46) #18
  store ptr %47, ptr %20, align 8, !tbaa !48
  %48 = icmp eq ptr %2, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !23
  br label %52

52:                                               ; preds = %44, %49
  %53 = phi ptr [ %51, %49 ], [ %3, %44 ]
  %54 = tail call i32 @ix86_function_type_abi(ptr noundef %53) #18
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %87, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %20, align 8, !tbaa !48
  %58 = tail call ptr @size_int_kind(i64 noundef %45, i32 noundef 1) #18
  %59 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %57, ptr noundef %58) #18
  store ptr %59, ptr %20, align 8, !tbaa !48
  br label %87

60:                                               ; preds = %18
  %61 = sdiv i32 %19, 8
  %62 = tail call i32 @llvm.smax.i32(i32 %61, i32 1)
  %63 = load i64, ptr %1, align 8, !tbaa !51
  %64 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
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
  store i64 %75, ptr %1, align 8, !tbaa !51
  %76 = icmp eq ptr %2, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %60
  %78 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !23
  br label %80

80:                                               ; preds = %60, %77
  %81 = phi ptr [ %79, %77 ], [ %3, %60 ]
  %82 = tail call i32 @ix86_function_type_abi(ptr noundef %81) #18
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = load i64, ptr %1, align 8, !tbaa !51
  %86 = sub nsw i64 %85, %74
  store i64 %86, ptr %1, align 8, !tbaa !51
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
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #0 {
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
define internal fastcc i32 @combine_pending_stack_adjustment_and_call(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #11 {
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %5 = add nsw i32 %4, %0
  %6 = urem i32 %5, %2
  %7 = zext nneg i32 %6 to i64
  %8 = load i32, ptr @x_rtl, align 8, !tbaa !64
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
  store i64 %19, ptr %1, align 8, !tbaa !51
  %20 = trunc i64 %17 to i32
  %21 = sub i32 %8, %20
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @allocate_dynamic_stack_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_argument_addresses(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %164, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 49
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !23
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi i64 [ %17, %9 ], [ 0, %5 ]
  %20 = phi ptr [ %11, %9 ], [ %1, %5 ]
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %164

22:                                               ; preds = %18
  %23 = zext nneg i32 %2 to i64
  br label %24

24:                                               ; preds = %22, %161
  %25 = phi i64 [ 0, %22 ], [ %162, %161 ]
  %26 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25
  %27 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10
  %28 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 1
  %29 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !113
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i64, ptr %28, align 8, !tbaa !114
  %34 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #18
  br label %42

35:                                               ; preds = %24
  %36 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !26
  %37 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %36, ptr noundef nonnull %30) #18
  %38 = load i64, ptr %28, align 8, !tbaa !114
  %39 = tail call ptr @size_int_kind(i64 noundef %38, i32 noundef 1) #18
  %40 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %37, ptr noundef %39) #18
  %41 = tail call fastcc ptr @expand_normal(ptr noundef %40) #19
  br label %42

42:                                               ; preds = %35, %32
  %43 = phi ptr [ %34, %32 ], [ %41, %35 ]
  %44 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 2
  %45 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 2, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !115
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i64, ptr %44, align 8, !tbaa !116
  %50 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %49) #18
  br label %58

51:                                               ; preds = %42
  %52 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !26
  %53 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %52, ptr noundef nonnull %46) #18
  %54 = load i64, ptr %44, align 8, !tbaa !116
  %55 = tail call ptr @size_int_kind(i64 noundef %54, i32 noundef 1) #18
  %56 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %53, ptr noundef %55) #18
  %57 = tail call fastcc ptr @expand_normal(ptr noundef %56) #19
  br label %58

58:                                               ; preds = %51, %48
  %59 = phi ptr [ %50, %48 ], [ %57, %51 ]
  %60 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !70
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !73
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 8
  %69 = load i32, ptr %68, align 4, !tbaa !77
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %161, label %71

71:                                               ; preds = %67, %63, %58
  %72 = load i32, ptr %43, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 30
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !23
  %78 = tail call ptr @plus_constant(ptr noundef %20, i64 noundef %77) #18
  br label %81

79:                                               ; preds = %71
  %80 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %20, ptr noundef nonnull %43) #18
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi ptr [ %78, %75 ], [ %80, %79 ]
  %83 = tail call ptr @plus_constant(ptr noundef %82, i64 noundef %19) #18
  %84 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 8
  %85 = load i32, ptr %84, align 4, !tbaa !77
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %81
  %88 = load i64, ptr %27, align 8, !tbaa !84
  %89 = trunc i64 %88 to i32
  %90 = shl i32 %89, 3
  %91 = tail call i32 @mode_for_size(i32 noundef %90, i32 noundef 2, i32 noundef 1) #18
  %92 = tail call ptr @gen_rtx_MEM(i32 noundef %91, ptr noundef %83) #18
  %93 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 11
  store ptr %92, ptr %93, align 8, !tbaa !75
  %94 = and i64 %88, 4294967295
  %95 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %94) #18
  tail call void @set_mem_size(ptr noundef %92, ptr noundef %95) #18
  br label %104

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !104
  %99 = tail call ptr @gen_rtx_MEM(i32 noundef %98, ptr noundef %83) #18
  %100 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 11
  store ptr %99, ptr %100, align 8, !tbaa !75
  %101 = load ptr, ptr %26, align 8, !tbaa !101
  %102 = getelementptr inbounds %struct.tree_common, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !23
  tail call void @set_mem_attributes(ptr noundef %99, ptr noundef %103, i32 noundef 1) #18
  br label %104

104:                                              ; preds = %96, %87
  %105 = phi i64 [ %88, %87 ], [ 0, %96 ]
  %106 = phi i32 [ %91, %87 ], [ 0, %96 ]
  %107 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !117
  %109 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !118
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %124

112:                                              ; preds = %104
  %113 = load i32, ptr %43, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 30
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !23
  %119 = trunc i64 %118 to i32
  %120 = shl i32 %119, 3
  %121 = or i32 %120, %108
  %122 = sub i32 0, %121
  %123 = and i32 %121, %122
  br label %124

124:                                              ; preds = %104, %112, %116
  %125 = phi i32 [ %123, %116 ], [ 8, %112 ], [ %108, %104 ]
  %126 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 11
  %127 = load ptr, ptr %126, align 8, !tbaa !75
  tail call void @set_mem_align(ptr noundef %127, i32 noundef %125) #18
  %128 = load i32, ptr %59, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 30
  br i1 %130, label %131, label %135

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !23
  %134 = tail call ptr @plus_constant(ptr noundef %20, i64 noundef %133) #18
  br label %137

135:                                              ; preds = %124
  %136 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %20, ptr noundef nonnull %59) #18
  br label %137

137:                                              ; preds = %135, %131
  %138 = phi ptr [ %134, %131 ], [ %136, %135 ]
  %139 = tail call ptr @plus_constant(ptr noundef %138, i64 noundef %19) #18
  %140 = load i32, ptr %84, align 4, !tbaa !77
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = tail call ptr @gen_rtx_MEM(i32 noundef %106, ptr noundef %139) #18
  %144 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 12
  store ptr %143, ptr %144, align 8, !tbaa !83
  %145 = and i64 %105, 4294967295
  %146 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %145) #18
  tail call void @set_mem_size(ptr noundef %143, ptr noundef %146) #18
  br label %155

147:                                              ; preds = %137
  %148 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !104
  %150 = tail call ptr @gen_rtx_MEM(i32 noundef %149, ptr noundef %139) #18
  %151 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 12
  store ptr %150, ptr %151, align 8, !tbaa !83
  %152 = load ptr, ptr %26, align 8, !tbaa !101
  %153 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !23
  tail call void @set_mem_attributes(ptr noundef %150, ptr noundef %154, i32 noundef 1) #18
  br label %155

155:                                              ; preds = %147, %142
  %156 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 12
  %157 = load ptr, ptr %156, align 8, !tbaa !83
  %158 = load i32, ptr %107, align 4, !tbaa !117
  tail call void @set_mem_align(ptr noundef %157, i32 noundef %158) #18
  %159 = load ptr, ptr %126, align 8, !tbaa !75
  tail call void @set_mem_alias_set(ptr noundef %159, i32 noundef 0) #18
  %160 = load ptr, ptr %156, align 8, !tbaa !83
  tail call void @set_mem_alias_set(ptr noundef %160, i32 noundef 0) #18
  br label %161

161:                                              ; preds = %67, %155
  %162 = add nuw nsw i64 %25, 1
  %163 = icmp eq i64 %162, %23
  br i1 %163, label %164, label %24, !llvm.loop !119

164:                                              ; preds = %161, %18, %3
  ret void
}

; Function Attrs: optsize
declare void @anti_adjust_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rtx_for_function_call(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 16777216
  %7 = icmp ne i64 %6, 0
  %8 = load ptr, ptr @current_function_decl, align 8
  %9 = icmp eq ptr %8, %0
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  tail call void @assemble_external(ptr noundef nonnull %0) #18
  %12 = load i64, ptr %0, align 8
  %13 = or i64 %12, 16777216
  store i64 %13, ptr %0, align 8
  br label %14

14:                                               ; preds = %11, %4
  %15 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !23
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #18
  %19 = load ptr, ptr %15, align 8, !tbaa !23
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi ptr [ %19, %18 ], [ %16, %14 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !23
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
define internal fastcc void @precompute_register_parameters(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  store i32 0, ptr %2, align 4, !tbaa !28
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %125

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  br label %7

7:                                                ; preds = %5, %122
  %8 = phi i64 [ 0, %5 ], [ %123, %122 ]
  %9 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8
  %10 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %122, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !70
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %122

17:                                               ; preds = %13
  store i32 1, ptr %2, align 4, !tbaa !28
  %18 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  tail call void @push_temp_slots() #18
  %22 = load ptr, ptr %9, align 8, !tbaa !101
  %23 = tail call fastcc ptr @expand_normal(ptr noundef %22) #19
  store ptr %23, ptr %18, align 8, !tbaa !90
  tail call void @preserve_temp_slots(ptr noundef %23) #18
  tail call void @pop_temp_slots() #18
  %24 = load ptr, ptr %18, align 8, !tbaa !90
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi ptr [ %24, %21 ], [ %19, %17 ]
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !28
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %26) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !104
  %39 = load ptr, ptr %18, align 8, !tbaa !90
  %40 = tail call ptr @force_reg(i32 noundef %38, ptr noundef %39) #18
  store ptr %40, ptr %18, align 8, !tbaa !90
  br label %41

41:                                               ; preds = %36, %33, %25
  %42 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !104
  %44 = load ptr, ptr %9, align 8, !tbaa !101
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !23
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 14
  br i1 %49, label %50, label %52

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
  br i1 %59, label %81, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr %42, align 8, !tbaa !104
  %62 = load ptr, ptr %9, align 8, !tbaa !101
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !23
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
  %77 = load ptr, ptr %18, align 8, !tbaa !90
  %78 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !103
  %80 = tail call ptr @convert_modes(i32 noundef %61, i32 noundef %76, ptr noundef %77, i32 noundef %79) #18
  store ptr %80, ptr %18, align 8, !tbaa !90
  br label %81

81:                                               ; preds = %75, %57
  %82 = load ptr, ptr %10, align 8, !tbaa !73
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 15
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load ptr, ptr %9, align 8, !tbaa !101
  %88 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !23
  %90 = load ptr, ptr %18, align 8, !tbaa !90
  %91 = tail call i64 @int_size_in_bytes(ptr noundef %89) #18
  %92 = trunc i64 %91 to i32
  %93 = tail call ptr @emit_group_load_into_temps(ptr noundef nonnull %82, ptr noundef %90, ptr noundef %89, i32 noundef %92) #18
  %94 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 6
  store ptr %93, ptr %94, align 8, !tbaa !120
  br label %122

95:                                               ; preds = %81
  %96 = load ptr, ptr %18, align 8, !tbaa !90
  %97 = load i32, ptr %96, align 8
  %98 = trunc i32 %97 to i16
  switch i16 %98, label %105 [
    i16 37, label %122
    i16 39, label %99
  ]

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !23
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 37
  br i1 %104, label %122, label %105

105:                                              ; preds = %95, %99
  %106 = load i32, ptr %42, align 8, !tbaa !104
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %122, label %108

108:                                              ; preds = %105
  %109 = tail call zeroext i8 @optimize_insn_for_speed_p() #18
  %110 = tail call i32 @rtx_cost(ptr noundef nonnull %96, i32 noundef 23, i8 noundef zeroext %109) #18
  %111 = icmp sgt i32 %110, 4
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32, ptr %2, align 4, !tbaa !28
  %114 = icmp ne i32 %113, 0
  %115 = load i32, ptr @optimize, align 4
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, ptr %42, align 8, !tbaa !104
  %120 = load ptr, ptr %18, align 8, !tbaa !90
  %121 = tail call ptr @copy_to_mode_reg(i32 noundef %119, ptr noundef %120) #18
  store ptr %121, ptr %18, align 8, !tbaa !90
  br label %122

122:                                              ; preds = %95, %7, %13, %99, %105, %108, %118, %112, %86
  %123 = add nuw nsw i64 %8, 1
  %124 = icmp eq i64 %123, %6
  br i1 %124, label %125, label %7, !llvm.loop !121

125:                                              ; preds = %122, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @save_fixed_argument_area(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 %0)
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %61

8:                                                ; preds = %4
  %9 = load ptr, ptr @stack_usage_map, align 8, !tbaa !26
  %10 = zext nneg i32 %6 to i64
  br label %11

11:                                               ; preds = %8, %58
  %12 = phi i64 [ 0, %8 ], [ %59, %58 ]
  %13 = getelementptr inbounds i8, ptr %9, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %58, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @llvm.smin.i32(i32 %5, i32 %0)
  %18 = sext i32 %17 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ %18, %16 ], [ %21, %19 ]
  %21 = add nsw i64 %20, -1
  %22 = getelementptr inbounds i8, ptr %9, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %19, label %25, !llvm.loop !122

25:                                               ; preds = %19
  %26 = trunc i64 %12 to i32
  %27 = trunc i64 %21 to i32
  store i32 %26, ptr %2, align 4, !tbaa !28
  store i32 %27, ptr %3, align 4, !tbaa !28
  %28 = sub nsw i32 %27, %26
  %29 = add nsw i32 %28, 1
  %30 = shl nsw i32 %29, 3
  %31 = tail call i32 @mode_for_size(i32 noundef %30, i32 noundef 2, i32 noundef 1) #18
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !23
  %35 = zext i8 %34 to i32
  %36 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !28
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 32, i32 64
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 %35)
  %41 = add nuw i32 %40, 2147483647
  %42 = and i32 %41, %26
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %31, i32 1
  %45 = tail call ptr @plus_constant(ptr noundef %1, i64 noundef %12) #18
  %46 = tail call ptr @memory_address_addr_space(i32 noundef %44, ptr noundef %45, i8 noundef zeroext 0) #18
  %47 = tail call ptr @gen_rtx_MEM(i32 noundef %44, ptr noundef %46) #18
  tail call void @set_mem_align(ptr noundef %47, i32 noundef 32) #18
  %48 = icmp eq i32 %44, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %25
  %50 = sext i32 %29 to i64
  %51 = tail call ptr @assign_stack_temp(i32 noundef 1, i64 noundef %50, i32 noundef 0) #18
  %52 = tail call ptr @validize_mem(ptr noundef %51) #18
  %53 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %50) #18
  %54 = tail call ptr @emit_block_move(ptr noundef %52, ptr noundef %47, ptr noundef %53, i32 noundef 2) #18
  br label %61

55:                                               ; preds = %25
  %56 = tail call ptr @gen_reg_rtx(i32 noundef %44) #18
  %57 = tail call ptr @emit_move_insn(ptr noundef %56, ptr noundef %47) #18
  br label %61

58:                                               ; preds = %11
  %59 = add nuw nsw i64 %12, 1
  %60 = icmp eq i64 %59, %10
  br i1 %60, label %61, label %11, !llvm.loop !123

61:                                               ; preds = %58, %4, %49, %55
  %62 = phi ptr [ %51, %49 ], [ %56, %55 ], [ null, %4 ], [ null, %58 ]
  ret ptr %62
}

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @store_one_arg(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr %0, align 8, !tbaa !101
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %473, label %10

10:                                               ; preds = %5
  tail call void @push_temp_slots() #18
  %11 = load i32, ptr @target_flags, align 4, !tbaa !28
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = tail call i32 @ix86_cfun_abi() #18
  %16 = icmp eq i32 %15, 1
  %17 = and i32 %2, 256
  %18 = icmp eq i32 %17, 0
  %19 = and i1 %18, %16
  br i1 %19, label %23, label %107

20:                                               ; preds = %10
  %21 = and i32 %2, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %107

23:                                               ; preds = %14, %20
  %24 = icmp eq ptr %1, null
  %25 = icmp ne i32 %3, 0
  %26 = or i1 %24, %25
  br i1 %26, label %107, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = icmp eq ptr %29, null
  br i1 %30, label %107, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !83
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !23
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 49
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !23
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !23
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %31, %39
  %46 = phi i32 [ %44, %39 ], [ 0, %31 ]
  %47 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %48 = load i64, ptr %47, align 8, !tbaa !84
  %49 = trunc i64 %48 to i32
  %50 = add i32 %46, %49
  %51 = tail call i32 @llvm.smax.i32(i32 %46, i32 %4)
  %52 = icmp slt i32 %51, %50
  br i1 %52, label %53, label %107

53:                                               ; preds = %45
  %54 = load ptr, ptr @stack_usage_map, align 8, !tbaa !26
  %55 = tail call i32 @llvm.smax.i32(i32 %46, i32 %4)
  %56 = sext i32 %55 to i64
  %57 = add i32 %50, %55
  %58 = sub i32 %57, %51
  br label %63

59:                                               ; preds = %63
  %60 = add nsw i64 %64, 1
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %107, label %63, !llvm.loop !124

63:                                               ; preds = %53, %59
  %64 = phi i64 [ %56, %53 ], [ %60, %59 ]
  %65 = getelementptr inbounds i8, ptr %54, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !23
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %59, label %68

68:                                               ; preds = %63
  %69 = shl i32 %49, 3
  %70 = tail call i32 @mode_for_size(i32 noundef %69, i32 noundef 2, i32 noundef 1) #18
  %71 = load ptr, ptr %32, align 8, !tbaa !83
  %72 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !23
  %74 = tail call ptr @memory_address_addr_space(i32 noundef %70, ptr noundef %73, i8 noundef zeroext 0) #18
  %75 = tail call ptr @gen_rtx_MEM(i32 noundef %70, ptr noundef %74) #18
  %76 = icmp eq i32 %70, 1
  br i1 %76, label %77, label %103

77:                                               ; preds = %68
  %78 = load ptr, ptr %0, align 8, !tbaa !101
  %79 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !23
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = lshr i32 %82, 18
  %84 = and i32 %83, 2
  %85 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 11
  %88 = and i32 %87, 4
  %89 = lshr i64 %81, 48
  %90 = trunc i64 %89 to i32
  %91 = and i32 %90, 65280
  %92 = or disjoint i32 %88, %84
  %93 = or disjoint i32 %92, %91
  %94 = or disjoint i32 %93, 1
  %95 = tail call ptr @build_qualified_type(ptr noundef nonnull %80, i32 noundef %94) #18
  %96 = tail call ptr @assign_temp(ptr noundef %95, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  %97 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 13
  store ptr %96, ptr %97, align 8, !tbaa !82
  tail call void @preserve_temp_slots(ptr noundef %96) #18
  %98 = load ptr, ptr %97, align 8, !tbaa !82
  %99 = tail call ptr @validize_mem(ptr noundef %98) #18
  %100 = load i64, ptr %47, align 8, !tbaa !84
  %101 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %100) #18
  %102 = tail call ptr @emit_block_move(ptr noundef %99, ptr noundef %75, ptr noundef %101, i32 noundef 2) #18
  br label %107

103:                                              ; preds = %68
  %104 = tail call ptr @gen_reg_rtx(i32 noundef %70) #18
  %105 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 13
  store ptr %104, ptr %105, align 8, !tbaa !82
  %106 = tail call ptr @emit_move_insn(ptr noundef %104, ptr noundef %75) #18
  br label %107

107:                                              ; preds = %59, %45, %77, %103, %23, %27, %20, %14
  %108 = phi i32 [ 0, %20 ], [ 0, %23 ], [ 0, %27 ], [ 0, %14 ], [ %50, %103 ], [ %50, %77 ], [ %50, %45 ], [ %50, %59 ]
  %109 = phi i32 [ 0, %20 ], [ 0, %23 ], [ 0, %27 ], [ 0, %14 ], [ %46, %103 ], [ %46, %77 ], [ %46, %45 ], [ %46, %59 ]
  %110 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !70
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = and i32 %2, 256
  %115 = icmp eq i32 %114, 0
  %116 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 5
  %117 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 4
  %118 = select i1 %115, ptr %117, ptr %116
  %119 = load ptr, ptr %118, align 8, !tbaa !26
  %120 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 8
  %121 = load i32, ptr %120, align 4, !tbaa !77
  %122 = icmp eq ptr %119, null
  %123 = icmp ne i32 %121, 0
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %126, label %125

125:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4085, ptr noundef nonnull @.str.1) #18
  br label %126

126:                                              ; preds = %107, %113, %125
  %127 = phi i1 [ %123, %113 ], [ false, %125 ], [ false, %107 ]
  %128 = phi ptr [ %119, %113 ], [ %119, %125 ], [ null, %107 ]
  %129 = phi i32 [ %121, %113 ], [ 0, %125 ], [ 0, %107 ]
  %130 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 15
  %131 = load i32, ptr %130, align 8, !tbaa !125
  %132 = icmp eq i32 %131, 0
  %133 = select i1 %132, ptr %128, ptr null
  %134 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !90
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %210

137:                                              ; preds = %126
  %138 = load i32, ptr %110, align 8, !tbaa !70
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !28
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr @stack_arg_under_construction, align 4, !tbaa !28
  br label %143

143:                                              ; preds = %140, %137
  br i1 %127, label %165, label %144

144:                                              ; preds = %143
  %145 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !23
  %147 = load i64, ptr %146, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 14
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = tail call i32 @vector_type_mode(ptr noundef nonnull %146) #18
  br label %157

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  br label %157

157:                                              ; preds = %152, %150
  %158 = phi i32 [ %151, %150 ], [ %156, %152 ]
  %159 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !104
  %161 = icmp eq i32 %158, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %164 = load ptr, ptr %163, align 8, !tbaa !75
  br label %165

165:                                              ; preds = %143, %157, %162
  %166 = phi ptr [ %164, %162 ], [ null, %157 ], [ null, %143 ]
  %167 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %6, ptr noundef %166, i32 noundef 0, i32 noundef 1) #19
  store ptr %167, ptr %134, align 8, !tbaa !90
  %168 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !104
  %170 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !23
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 14
  br i1 %174, label %175, label %177

175:                                              ; preds = %165
  %176 = tail call i32 @vector_type_mode(ptr noundef nonnull %171) #18
  br label %182

177:                                              ; preds = %165
  %178 = getelementptr inbounds %struct.tree_type, ptr %171, i64 0, i32 6
  %179 = load i32, ptr %178, align 4
  %180 = lshr i32 %179, 16
  %181 = and i32 %180, 255
  br label %182

182:                                              ; preds = %177, %175
  %183 = phi i32 [ %176, %175 ], [ %181, %177 ]
  %184 = icmp eq i32 %169, %183
  br i1 %184, label %204, label %185

185:                                              ; preds = %182
  %186 = load i32, ptr %168, align 8, !tbaa !104
  %187 = load ptr, ptr %170, align 8, !tbaa !23
  %188 = load i64, ptr %187, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 14
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = tail call i32 @vector_type_mode(ptr noundef nonnull %187) #18
  br label %198

193:                                              ; preds = %185
  %194 = getelementptr inbounds %struct.tree_type, ptr %187, i64 0, i32 6
  %195 = load i32, ptr %194, align 4
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  br label %198

198:                                              ; preds = %193, %191
  %199 = phi i32 [ %192, %191 ], [ %197, %193 ]
  %200 = load ptr, ptr %134, align 8, !tbaa !90
  %201 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 7
  %202 = load i32, ptr %201, align 8, !tbaa !103
  %203 = tail call ptr @convert_modes(i32 noundef %186, i32 noundef %199, ptr noundef %200, i32 noundef %202) #18
  store ptr %203, ptr %134, align 8, !tbaa !90
  br label %204

204:                                              ; preds = %198, %182
  %205 = load i32, ptr %110, align 8, !tbaa !70
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !28
  %209 = add nsw i32 %208, -1
  store i32 %209, ptr @stack_arg_under_construction, align 4, !tbaa !28
  br label %210

210:                                              ; preds = %204, %207, %126
  %211 = and i32 %2, 256
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %225, label %213

213:                                              ; preds = %210
  %214 = load ptr, ptr %134, align 8, !tbaa !90
  %215 = load i32, ptr %214, align 8
  %216 = and i32 %215, 65535
  %217 = icmp eq i32 %216, 43
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.rtx_def, ptr %214, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !23
  %221 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %222 = load i64, ptr %221, align 8, !tbaa !84
  %223 = tail call fastcc zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef %220, i64 noundef %222) #19, !range !24
  %224 = zext nneg i8 %223 to i32
  br label %225

225:                                              ; preds = %218, %213, %210
  %226 = phi i32 [ 0, %213 ], [ 0, %210 ], [ %224, %218 ]
  %227 = and i32 %2, 32
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  tail call void @do_pending_stack_adjust() #18
  br label %230

230:                                              ; preds = %229, %225
  %231 = load ptr, ptr %134, align 8, !tbaa !90
  %232 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %233 = load ptr, ptr %232, align 8, !tbaa !75
  %234 = icmp eq ptr %231, %233
  br i1 %234, label %427, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %237 = load i32, ptr %236, align 8, !tbaa !104
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %277, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 5
  %241 = load i32, ptr %240, align 4, !tbaa !117
  %242 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !23
  %244 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %245 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !113
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %239
  %249 = load i64, ptr %244, align 8, !tbaa !114
  %250 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %249) #18
  br label %258

251:                                              ; preds = %239
  %252 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !26
  %253 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %252, ptr noundef nonnull %246) #18
  %254 = load i64, ptr %244, align 8, !tbaa !114
  %255 = tail call ptr @size_int_kind(i64 noundef %254, i32 noundef 1) #18
  %256 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %253, ptr noundef %255) #18
  %257 = tail call fastcc ptr @expand_normal(ptr noundef %256) #19
  br label %258

258:                                              ; preds = %251, %248
  %259 = phi ptr [ %250, %248 ], [ %257, %251 ]
  %260 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3
  %261 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !126
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = load i64, ptr %260, align 8, !tbaa !127
  %266 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %265) #18
  br label %274

267:                                              ; preds = %258
  %268 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !26
  %269 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %268, ptr noundef nonnull %262) #18
  %270 = load i64, ptr %260, align 8, !tbaa !127
  %271 = tail call ptr @size_int_kind(i64 noundef %270, i32 noundef 1) #18
  %272 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %269, ptr noundef %271) #18
  %273 = tail call fastcc ptr @expand_normal(ptr noundef %272) #19
  br label %274

274:                                              ; preds = %267, %264
  %275 = phi ptr [ %266, %264 ], [ %273, %267 ]
  tail call void @emit_push_insn(ptr noundef %231, i32 noundef %237, ptr noundef %243, ptr noundef null, i32 noundef %241, i32 noundef %129, ptr noundef %133, i32 noundef 0, ptr noundef %1, ptr noundef %259, i32 noundef %4, ptr noundef %275) #18
  %276 = icmp eq i32 %129, 0
  br i1 %276, label %423, label %427

277:                                              ; preds = %235
  %278 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %279 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !108
  %281 = icmp eq ptr %280, null
  br i1 %281, label %289, label %282

282:                                              ; preds = %277
  %283 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !26
  %284 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %283, ptr noundef nonnull %280) #18
  %285 = load i64, ptr %278, align 8, !tbaa !84
  %286 = tail call ptr @size_int_kind(i64 noundef %285, i32 noundef 1) #18
  %287 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %284, ptr noundef %286) #18
  %288 = tail call fastcc ptr @expand_normal(ptr noundef %287) #19
  br label %313

289:                                              ; preds = %277
  %290 = load i64, ptr %278, align 8, !tbaa !84
  %291 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !23
  %293 = tail call i64 @int_size_in_bytes(ptr noundef %292) #18
  %294 = sub nsw i64 %290, %293
  %295 = trunc i64 %294 to i32
  %296 = add i32 %129, %295
  %297 = load ptr, ptr %291, align 8, !tbaa !23
  %298 = tail call ptr @size_in_bytes(ptr noundef %297) #18
  %299 = load ptr, ptr @sizetype_tab, align 16, !tbaa !26
  %300 = load i64, ptr %299, align 8
  %301 = and i64 %300, 65535
  %302 = icmp eq i64 %301, 14
  br i1 %302, label %303, label %305

303:                                              ; preds = %289
  %304 = tail call i32 @vector_type_mode(ptr noundef nonnull %299) #18
  br label %310

305:                                              ; preds = %289
  %306 = getelementptr inbounds %struct.tree_type, ptr %299, i64 0, i32 6
  %307 = load i32, ptr %306, align 4
  %308 = lshr i32 %307, 16
  %309 = and i32 %308, 255
  br label %310

310:                                              ; preds = %305, %303
  %311 = phi i32 [ %304, %303 ], [ %309, %305 ]
  %312 = tail call fastcc ptr @expand_expr(ptr noundef %298, ptr noundef null, i32 noundef %311, i32 noundef 0) #19
  br label %313

313:                                              ; preds = %310, %282
  %314 = phi i32 [ 0, %282 ], [ %296, %310 ]
  %315 = phi ptr [ %288, %282 ], [ %312, %310 ]
  %316 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 5
  %317 = load i32, ptr %316, align 4, !tbaa !117
  br i1 %212, label %382, label %318

318:                                              ; preds = %313
  %319 = load ptr, ptr %134, align 8, !tbaa !90
  %320 = load i32, ptr %319, align 8
  %321 = and i32 %320, 65535
  %322 = icmp eq i32 %321, 43
  br i1 %322, label %323, label %382

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.rtx_def, ptr %319, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !23
  %326 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !67
  %327 = icmp eq ptr %325, %326
  br i1 %327, label %347, label %328

328:                                              ; preds = %323
  %329 = load i32, ptr %325, align 8
  %330 = and i32 %329, 65535
  %331 = icmp eq i32 %330, 49
  br i1 %331, label %332, label %382

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !23
  %335 = icmp eq ptr %334, %326
  br i1 %335, label %336, label %382

336:                                              ; preds = %332
  %337 = getelementptr inbounds %struct.rtx_def, ptr %325, i64 0, i32 1, i32 0, i32 0, i64 1
  %338 = load ptr, ptr %337, align 8, !tbaa !23
  %339 = load i32, ptr %338, align 8
  %340 = and i32 %339, 65535
  %341 = icmp eq i32 %340, 30
  br i1 %341, label %342, label %382

342:                                              ; preds = %336
  %343 = getelementptr inbounds %struct.rtx_def, ptr %338, i64 0, i32 1
  %344 = load i64, ptr %343, align 8, !tbaa !23
  %345 = shl i64 %344, 32
  %346 = ashr exact i64 %345, 32
  br label %347

347:                                              ; preds = %323, %342
  %348 = phi i64 [ %346, %342 ], [ 0, %323 ]
  %349 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %350 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !113
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %360

353:                                              ; preds = %347
  %354 = load ptr, ptr %279, align 8, !tbaa !108
  %355 = icmp eq ptr %354, null
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = load i32, ptr %315, align 8
  %358 = and i32 %357, 65535
  %359 = icmp eq i32 %358, 30
  br i1 %359, label %361, label %360

360:                                              ; preds = %356, %353, %347
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4270, ptr noundef nonnull @.str.1) #18
  br label %361

361:                                              ; preds = %356, %360
  %362 = load i64, ptr %349, align 8, !tbaa !114
  %363 = icmp sgt i64 %362, %348
  br i1 %363, label %364, label %370

364:                                              ; preds = %361
  %365 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1
  %366 = load i64, ptr %365, align 8, !tbaa !23
  %367 = add nsw i64 %366, %348
  %368 = icmp slt i64 %362, %367
  %369 = select i1 %368, i32 1, i32 %226
  br label %382

370:                                              ; preds = %361
  %371 = icmp slt i64 %362, %348
  %372 = load i64, ptr %278, align 8, !tbaa !84
  br i1 %371, label %373, label %377

373:                                              ; preds = %370
  %374 = add nsw i64 %372, %362
  %375 = icmp slt i64 %348, %374
  %376 = select i1 %375, i32 1, i32 %226
  br label %382

377:                                              ; preds = %370
  %378 = getelementptr inbounds %struct.rtx_def, ptr %315, i64 0, i32 1
  %379 = load i64, ptr %378, align 8, !tbaa !23
  %380 = icmp eq i64 %372, %379
  %381 = select i1 %380, i32 %226, i32 1
  br label %382

382:                                              ; preds = %377, %373, %364, %328, %332, %336, %318, %313
  %383 = phi i32 [ %226, %318 ], [ %226, %313 ], [ %226, %336 ], [ %226, %332 ], [ %226, %328 ], [ %369, %364 ], [ %376, %373 ], [ %381, %377 ]
  %384 = load ptr, ptr %134, align 8, !tbaa !90
  %385 = load i32, ptr %236, align 8, !tbaa !104
  %386 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %387 = load ptr, ptr %386, align 8, !tbaa !23
  %388 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %389 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !113
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %395

392:                                              ; preds = %382
  %393 = load i64, ptr %388, align 8, !tbaa !114
  %394 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %393) #18
  br label %402

395:                                              ; preds = %382
  %396 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !26
  %397 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %396, ptr noundef nonnull %390) #18
  %398 = load i64, ptr %388, align 8, !tbaa !114
  %399 = tail call ptr @size_int_kind(i64 noundef %398, i32 noundef 1) #18
  %400 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %397, ptr noundef %399) #18
  %401 = tail call fastcc ptr @expand_normal(ptr noundef %400) #19
  br label %402

402:                                              ; preds = %395, %392
  %403 = phi ptr [ %394, %392 ], [ %401, %395 ]
  %404 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3
  %405 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !126
  %407 = icmp eq ptr %406, null
  br i1 %407, label %408, label %411

408:                                              ; preds = %402
  %409 = load i64, ptr %404, align 8, !tbaa !127
  %410 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %409) #18
  br label %418

411:                                              ; preds = %402
  %412 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !26
  %413 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %412, ptr noundef nonnull %406) #18
  %414 = load i64, ptr %404, align 8, !tbaa !127
  %415 = tail call ptr @size_int_kind(i64 noundef %414, i32 noundef 1) #18
  %416 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %413, ptr noundef %415) #18
  %417 = tail call fastcc ptr @expand_normal(ptr noundef %416) #19
  br label %418

418:                                              ; preds = %411, %408
  %419 = phi ptr [ %410, %408 ], [ %417, %411 ]
  tail call void @emit_push_insn(ptr noundef %384, i32 noundef %385, ptr noundef %387, ptr noundef %315, i32 noundef %317, i32 noundef %129, ptr noundef %133, i32 noundef %314, ptr noundef %1, ptr noundef %403, i32 noundef %4, ptr noundef %419) #18
  %420 = icmp eq i32 %129, 0
  br i1 %420, label %421, label %427

421:                                              ; preds = %418
  %422 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 12
  br label %423

423:                                              ; preds = %274, %421
  %424 = phi ptr [ %422, %421 ], [ %232, %274 ]
  %425 = phi i32 [ %383, %421 ], [ %226, %274 ]
  %426 = load ptr, ptr %424, align 8, !tbaa !26
  store ptr %426, ptr %134, align 8, !tbaa !90
  br label %427

427:                                              ; preds = %423, %418, %274, %230
  %428 = phi i32 [ %226, %230 ], [ %226, %274 ], [ %383, %418 ], [ %425, %423 ]
  %429 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 4
  %430 = load ptr, ptr %429, align 8, !tbaa !73
  %431 = icmp eq ptr %430, null
  br i1 %431, label %445, label %432

432:                                              ; preds = %427
  %433 = load i32, ptr %430, align 8
  %434 = and i32 %433, 65535
  %435 = icmp eq i32 %434, 15
  br i1 %435, label %436, label %445

436:                                              ; preds = %432
  %437 = load ptr, ptr %0, align 8, !tbaa !101
  %438 = getelementptr inbounds %struct.tree_common, ptr %437, i64 0, i32 2
  %439 = load ptr, ptr %438, align 8, !tbaa !23
  %440 = load ptr, ptr %134, align 8, !tbaa !90
  %441 = tail call i64 @int_size_in_bytes(ptr noundef %439) #18
  %442 = trunc i64 %441 to i32
  %443 = tail call ptr @emit_group_load_into_temps(ptr noundef nonnull %430, ptr noundef %440, ptr noundef %439, i32 noundef %442) #18
  %444 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 6
  store ptr %443, ptr %444, align 8, !tbaa !120
  br label %445

445:                                              ; preds = %436, %432, %427
  %446 = load i32, ptr @target_flags, align 4, !tbaa !28
  %447 = and i32 %446, 4
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %445
  %450 = tail call i32 @ix86_cfun_abi() #18
  %451 = icmp eq i32 %450, 1
  br i1 %451, label %452, label %470

452:                                              ; preds = %449, %445
  %453 = icmp eq ptr %1, null
  %454 = or i32 %211, %3
  %455 = icmp ne i32 %454, 0
  %456 = or i1 %453, %455
  br i1 %456, label %470, label %457

457:                                              ; preds = %452
  %458 = load ptr, ptr %232, align 8, !tbaa !75
  %459 = icmp ne ptr %458, null
  %460 = icmp slt i32 %109, %108
  %461 = and i1 %459, %460
  br i1 %461, label %462, label %470

462:                                              ; preds = %457
  %463 = load ptr, ptr @stack_usage_map, align 8, !tbaa !26
  %464 = sext i32 %109 to i64
  %465 = getelementptr i8, ptr %463, i64 %464
  %466 = xor i32 %109, -1
  %467 = add i32 %108, %466
  %468 = zext i32 %467 to i64
  %469 = add nuw nsw i64 %468, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %465, i8 1, i64 %469, i1 false), !tbaa !23
  br label %470

470:                                              ; preds = %462, %457, %452, %449
  %471 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %472 = add nsw i32 %471, 1
  store i32 %472, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  tail call void @preserve_temp_slots(ptr noundef null) #18
  tail call void @free_temp_slots() #18
  tail call void @pop_temp_slots() #18
  br label %473

473:                                              ; preds = %5, %470
  %474 = phi i32 [ %428, %470 ], [ 1, %5 ]
  ret i32 %474
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @check_sibcall_argument_overlap(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call ptr @get_insns() #18
  br label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %10, %24
  %14 = phi ptr [ %26, %24 ], [ %11, %10 ]
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -7
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !23
  %22 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %21) #19, !range !74
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %13, %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !23
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !128

28:                                               ; preds = %24, %19, %10
  %29 = phi i32 [ 0, %10 ], [ 1, %19 ], [ 0, %24 ]
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.arg_data, ptr %1, i64 0, i32 10
  %33 = getelementptr inbounds %struct.arg_data, ptr %1, i64 0, i32 10, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !116
  %35 = trunc i64 %34 to i32
  %36 = load i64, ptr %32, align 8, !tbaa !84
  %37 = add i64 %36, %34
  %38 = trunc i64 %37 to i32
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %31, %40
  %41 = phi i32 [ %43, %40 ], [ %35, %31 ]
  %42 = load ptr, ptr @stored_args_map, align 8, !tbaa !26
  tail call fastcc void @SET_BIT(ptr noundef %42, i32 noundef %41) #19
  %43 = add nsw i32 %41, 1
  %44 = icmp eq i32 %43, %38
  br i1 %44, label %45, label %40, !llvm.loop !129

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
define internal fastcc void @load_register_parameters(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 {
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %149

8:                                                ; preds = %6
  %9 = and i32 %3, 256
  %10 = icmp eq i32 %9, 0
  %11 = icmp eq i32 %4, 0
  %12 = zext nneg i32 %1 to i64
  br label %13

13:                                               ; preds = %8, %146
  %14 = phi i64 [ 0, %8 ], [ %147, %146 ]
  %15 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14, i32 5
  %16 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14, i32 4
  %17 = select i1 %10, ptr %16, ptr %15
  %18 = load ptr, ptr %17, align 8, !tbaa !26
  %19 = icmp eq ptr %18, null
  br i1 %19, label %146, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14
  %22 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !77
  %24 = tail call ptr @get_last_insn() #18
  %25 = load i32, ptr %18, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 15
  br i1 %27, label %68, label %28

28:                                               ; preds = %20
  %29 = icmp eq i32 %23, 0
  br i1 %29, label %36, label %30

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
  %37 = load ptr, ptr %21, align 8, !tbaa !101
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 14
  br i1 %42, label %43, label %45

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
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load ptr, ptr %21, align 8, !tbaa !101
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !23
  %57 = tail call i64 @int_size_in_bytes(ptr noundef %56) #18
  %58 = trunc i64 %57 to i32
  %59 = add nsw i32 %58, 3
  %60 = sdiv i32 %59, 4
  br label %68

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !104
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !23
  %67 = zext i8 %66 to i64
  br label %68

68:                                               ; preds = %34, %61, %53, %20
  %69 = phi i32 [ -1, %20 ], [ %35, %34 ], [ %60, %53 ], [ -1, %61 ]
  %70 = phi i64 [ 0, %20 ], [ 0, %34 ], [ %57, %53 ], [ %67, %61 ]
  %71 = load i32, ptr %18, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 15
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14, i32 6
  %76 = load ptr, ptr %75, align 8, !tbaa !120
  tail call void @emit_group_move(ptr noundef nonnull %18, ptr noundef %76) #18
  br label %129

77:                                               ; preds = %68
  %78 = icmp eq i32 %69, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !90
  %82 = tail call ptr @emit_move_insn(ptr noundef nonnull %18, ptr noundef %81) #18
  br label %129

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14, i32 15
  %85 = load i32, ptr %84, align 8, !tbaa !125
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %83
  %88 = icmp sgt i32 %85, 0
  br i1 %88, label %89, label %129

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14, i32 14
  br label %91

91:                                               ; preds = %89, %91
  %92 = phi i64 [ 0, %89 ], [ %102, %91 ]
  %93 = load i32, ptr @word_mode, align 4, !tbaa !28
  %94 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #19
  %95 = trunc i64 %92 to i32
  %96 = add i32 %94, %95
  %97 = tail call ptr @gen_rtx_REG(i32 noundef %93, i32 noundef %96) #18
  %98 = load ptr, ptr %90, align 8, !tbaa !88
  %99 = getelementptr inbounds ptr, ptr %98, i64 %92
  %100 = load ptr, ptr %99, align 8, !tbaa !26
  %101 = tail call ptr @emit_move_insn(ptr noundef %97, ptr noundef %100) #18
  %102 = add nuw nsw i64 %92, 1
  %103 = load i32, ptr %84, align 8, !tbaa !125
  %104 = sext i32 %103 to i64
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %91, label %129, !llvm.loop !130

106:                                              ; preds = %83
  %107 = icmp eq i32 %23, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14, i32 9
  %110 = load i32, ptr %109, align 8, !tbaa !70
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %129, label %112

112:                                              ; preds = %108, %106
  %113 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !90
  %115 = tail call ptr @validize_mem(ptr noundef %114) #18
  br i1 %11, label %125, label %116

116:                                              ; preds = %112
  %117 = load ptr, ptr %113, align 8, !tbaa !90
  %118 = getelementptr inbounds %struct.rtx_def, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !23
  %120 = shl i64 %70, 32
  %121 = ashr exact i64 %120, 32
  %122 = tail call fastcc zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef %119, i64 noundef %121) #19, !range !24
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  store i32 1, ptr %5, align 4, !tbaa !28
  br label %125

125:                                              ; preds = %124, %116, %112
  %126 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #19
  %127 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %14, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !104
  tail call void @move_block_to_reg(i32 noundef %126, ptr noundef %115, i32 noundef %69, i32 noundef %128) #18
  br label %129

129:                                              ; preds = %91, %87, %79, %108, %125, %74
  br i1 %11, label %134, label %130

130:                                              ; preds = %129
  %131 = tail call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %24, ptr noundef nonnull %21, i32 noundef 0) #19, !range !74
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %130
  store i32 1, ptr %5, align 4, !tbaa !28
  br label %134

134:                                              ; preds = %133, %130, %129
  %135 = load i32, ptr %18, align 8
  %136 = and i32 %135, 65535
  %137 = icmp eq i32 %136, 15
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  tail call void @use_group_regs(ptr noundef %2, ptr noundef nonnull %18) #18
  br label %146

139:                                              ; preds = %134
  %140 = icmp eq i32 %69, -1
  br i1 %140, label %141, label %142

141:                                              ; preds = %139
  tail call void @use_reg(ptr noundef %2, ptr noundef nonnull %18) #18
  br label %146

142:                                              ; preds = %139
  %143 = icmp sgt i32 %69, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %142
  %145 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %18) #19
  tail call void @use_regs(ptr noundef %2, i32 noundef %145, i32 noundef %69) #18
  br label %146

146:                                              ; preds = %138, %142, %144, %141, %13
  %147 = add nuw nsw i64 %14, 1
  %148 = icmp eq i64 %147, %12
  br i1 %148, label %149, label %13, !llvm.loop !131

149:                                              ; preds = %146, %6
  ret void
}

; Function Attrs: optsize
declare ptr @function_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_call_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10) unnamed_addr #0 {
  %12 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %5) #18
  %13 = trunc i64 %4 to i32
  %14 = tail call i32 @ix86_return_pops_args(ptr noundef %2, ptr noundef %3, i32 noundef %13) #18
  %15 = sext i32 %14 to i64
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %21, label %19

19:                                               ; preds = %11
  %20 = tail call ptr @memory_address_addr_space(i32 noundef 14, ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi ptr [ %20, %19 ], [ %0, %11 ]
  %23 = icmp slt i32 %14, 1
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #18
  %26 = icmp eq ptr %7, null
  %27 = tail call ptr @gen_rtx_MEM(i32 noundef 14, ptr noundef %22) #18
  br i1 %26, label %30, label %28

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
  br i1 %34, label %42, label %37

37:                                               ; preds = %32
  br i1 %35, label %40, label %38

38:                                               ; preds = %37
  %39 = tail call ptr @gen_sibcall_value(ptr noundef nonnull %7, ptr noundef %36, ptr noundef %12, ptr noundef %6) #18
  br label %47

40:                                               ; preds = %37
  %41 = tail call ptr @gen_sibcall(ptr noundef %36, ptr noundef %12, ptr noundef %6) #18
  br label %47

42:                                               ; preds = %32
  br i1 %35, label %45, label %43

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
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, ptr %50, align 8
  %55 = or i32 %54, 67108864
  store i32 %55, ptr %50, align 8
  br label %56

56:                                               ; preds = %53, %47
  %57 = and i32 %10, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %50, align 8
  %61 = or i32 %60, -2147483648
  store i32 %61, ptr %50, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = and i32 %10, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %50, align 8
  %67 = or i32 %66, 33554432
  store i32 %67, ptr %50, align 8
  br label %68

68:                                               ; preds = %65, %62
  tail call void @make_reg_eh_region_note(ptr noundef %50, i32 noundef %10, i32 noundef 0) #18
  %69 = and i32 %10, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !26
  tail call void @add_reg_note(ptr noundef %50, i32 noundef 27, ptr noundef %72) #18
  br label %73

73:                                               ; preds = %71, %68
  %74 = and i32 %10, 128
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !26
  tail call void @add_reg_note(ptr noundef %50, i32 noundef 30, ptr noundef %77) #18
  %78 = load ptr, ptr @cfun, align 8, !tbaa !26
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
  %88 = load i32, ptr @flag_enable_icf_debug, align 4, !tbaa !28
  %89 = icmp ne i32 %88, 0
  %90 = icmp eq ptr %2, null
  %91 = and i1 %90, %89
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load ptr, ptr @debug_hooks, align 8, !tbaa !26
  %94 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %93, i64 0, i32 27
  %95 = load ptr, ptr %94, align 8, !tbaa !132
  %96 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !23
  %98 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !23
  tail call void %95(ptr noundef %97, i32 noundef %99) #18
  br label %100

100:                                              ; preds = %92, %82
  store i32 %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  br i1 %23, label %106, label %101

101:                                              ; preds = %100
  %102 = sub nsw i64 %5, %15
  %103 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %102) #18
  %104 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %105 = sub i32 %104, %14
  store i32 %105, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1, !tbaa !134
  br label %106

106:                                              ; preds = %101, %100
  %107 = phi ptr [ %103, %101 ], [ %12, %100 ]
  %108 = phi i64 [ %102, %101 ], [ %5, %100 ]
  %109 = load i32, ptr @target_flags, align 4, !tbaa !28
  %110 = and i32 %109, 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %135

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
  %119 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %120 = trunc i64 %108 to i32
  %121 = sub i32 %119, %120
  store i32 %121, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  br label %139

122:                                              ; preds = %117
  %123 = load i32, ptr @flag_defer_pop, align 4, !tbaa !28
  %124 = icmp ne i32 %123, 0
  %125 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4
  %126 = and i32 %10, 3
  %127 = or i32 %125, %126
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %124, i1 %128, i1 false
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, ptr @x_rtl, align 8, !tbaa !64
  %132 = trunc i64 %108 to i32
  %133 = add i32 %131, %132
  store i32 %133, ptr @x_rtl, align 8, !tbaa !64
  br label %139

134:                                              ; preds = %122
  tail call void @adjust_stack(ptr noundef %107) #18
  br label %139

135:                                              ; preds = %112, %106
  %136 = icmp eq i32 %14, 0
  br i1 %136, label %139, label %137

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
define internal fastcc noundef ptr @avoid_likely_spilled_reg(ptr noundef %0) unnamed_addr #0 {
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
  %11 = load i32, ptr %10, align 4, !tbaa !28
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
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !28
  %13 = load i32, ptr %0, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = tail call ptr @gen_reg_rtx(i32 noundef %15) #18
  store i32 1, ptr @generating_concat_p, align 4, !tbaa !28
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
define internal fastcc void @restore_fixed_argument_area(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
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
define internal fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 {
  store ptr %0, ptr %1, align 8, !tbaa !98
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !23
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !95
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
define internal fastcc noundef zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #12 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !67
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %25, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 49
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = icmp eq ptr %11, %3
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !23
  br i1 %12, label %15, label %22

15:                                               ; preds = %9
  %16 = load i32, ptr %14, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !23
  br label %25

22:                                               ; preds = %9
  %23 = icmp eq ptr %14, %3
  br i1 %23, label %48, label %24

24:                                               ; preds = %5, %22
  br label %48

25:                                               ; preds = %2, %19
  %26 = phi i64 [ %21, %19 ], [ 0, %2 ]
  %27 = icmp eq i64 %1, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @stored_args_map, align 8, !tbaa !26
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !135
  %32 = zext i32 %31 to i64
  br label %33

33:                                               ; preds = %28, %45
  %34 = phi i64 [ 0, %28 ], [ %46, %45 ]
  %35 = add i64 %34, %26
  %36 = icmp ult i64 %35, %32
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = lshr i64 %35, 6
  %39 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 3, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !27
  %41 = and i64 %35, 63
  %42 = shl nuw i64 1, %41
  %43 = and i64 %40, %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33, %37
  %46 = add nuw i64 %34, 1
  %47 = icmp eq i64 %46, %1
  br i1 %47, label %48, label %33, !llvm.loop !136

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
define internal fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef readonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %57, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = lshr i32 %4, 16
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !23
  %15 = zext i8 %14 to i64
  %16 = tail call fastcc zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef %9, i64 noundef %15) #19, !range !24
  %17 = zext nneg i8 %16 to i32
  br label %57

18:                                               ; preds = %3
  %19 = zext nneg i32 %5 to i64
  %20 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !23
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %19
  %25 = load ptr, ptr %24, align 8, !tbaa !26
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = zext i8 %21 to i64
  br label %28

28:                                               ; preds = %23, %53
  %29 = phi i64 [ 0, %23 ], [ %54, %53 ]
  %30 = phi ptr [ %25, %23 ], [ %55, %53 ]
  %31 = load i8, ptr %30, align 1, !tbaa !23
  switch i8 %31, label %53 [
    i8 101, label %39
    i8 69, label %32
  ]

32:                                               ; preds = %28
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %26, i64 0, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  %35 = load i32, ptr %34, align 8, !tbaa !137
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  br label %47

39:                                               ; preds = %28
  %40 = getelementptr inbounds [1 x %union.rtunion_def], ptr %26, i64 0, i64 %29
  %41 = load ptr, ptr %40, align 8, !tbaa !23
  %42 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %41) #19, !range !74
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %57

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %38
  br i1 %46, label %53, label %47, !llvm.loop !139

47:                                               ; preds = %37, %44
  %48 = phi i64 [ 0, %37 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !26
  %51 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %50) #19, !range !74
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %44, label %57

53:                                               ; preds = %44, %32, %28, %39
  %54 = add nuw nsw i64 %29, 1
  %55 = getelementptr inbounds i8, ptr %30, i64 1
  %56 = icmp eq i64 %54, %27
  br i1 %56, label %57, label %28, !llvm.loop !140

57:                                               ; preds = %39, %53, %47, %18, %1, %7
  %58 = phi i32 [ %17, %7 ], [ 0, %1 ], [ 0, %18 ], [ 1, %47 ], [ 1, %39 ], [ 0, %53 ]
  ret i32 %58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

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
  %15 = load i64, ptr %14, align 8, !tbaa !27
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !23
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !23
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !27
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !27
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
define dso_local void @fixup_tail_calls() local_unnamed_addr #0 {
  %1 = tail call ptr @get_insns() #18
  %2 = icmp eq ptr %1, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %0, %20
  %4 = phi ptr [ %22, %20 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 13
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !23
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %3
  %13 = tail call ptr @find_reg_note(ptr noundef nonnull %4, i32 noundef 3, ptr noundef null) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @remove_note(ptr noundef nonnull %4, ptr noundef nonnull %13) #18
  br label %16

16:                                               ; preds = %15, %12
  %17 = tail call ptr @find_reg_note(ptr noundef nonnull %4, i32 noundef 3, ptr noundef null) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3207, ptr noundef nonnull @.str.1) #18
  br label %20

20:                                               ; preds = %16, %19
  %21 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %3, !llvm.loop !141

24:                                               ; preds = %20, %8, %0
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_library_call(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ...) local_unnamed_addr #0 {
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
define internal fastcc ptr @emit_library_call_value_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = alloca %struct.args_size, align 8
  %9 = alloca %struct.ix86_args, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #20
  %14 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  store ptr null, ptr %10, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  store i32 0, ptr %12, align 4, !tbaa !28
  %15 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  %16 = load ptr, ptr @stack_usage_map, align 8, !tbaa !26
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !38
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
  %28 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !62
  %29 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !28
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 %29, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !62
  br label %32

32:                                               ; preds = %31, %26
  %33 = icmp ne i32 %4, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %32
  %35 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !142
  %36 = tail call ptr %35(i32 noundef %4, i32 noundef 0) #18
  %37 = tail call i32 @aggregate_value_p(ptr noundef %36, ptr noundef null) #18
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
  %46 = tail call ptr @assign_temp(ptr noundef %36, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  br label %47

47:                                               ; preds = %41, %45
  %48 = phi ptr [ %46, %45 ], [ %2, %41 ]
  %49 = and i32 %27, 200
  br label %52

50:                                               ; preds = %32
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !26
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
  br i1 %62, label %63, label %106

63:                                               ; preds = %52
  %64 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !23
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
  %72 = load i32, ptr %71, align 4, !tbaa !28
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
  store ptr %80, ptr %59, align 16, !tbaa !143
  %81 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 1
  store i32 16, ptr %81, align 8, !tbaa !145
  %82 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 3
  store i32 0, ptr %82, align 8, !tbaa !146
  %83 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef 16, ptr noundef null, i32 noundef 1) #18
  %84 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 2
  store ptr %83, ptr %84, align 16, !tbaa !147
  %85 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !106
  %86 = call i32 %85(ptr noundef nonnull %9, i32 noundef 16, ptr noundef null, i8 noundef zeroext 1) #18
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3422, ptr noundef nonnull @.str.1) #18
  br label %89

89:                                               ; preds = %79, %88
  %90 = load ptr, ptr %84, align 16, !tbaa !147
  %91 = icmp ne ptr %90, null
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 4
  call void @locate_and_pad_parm(i32 noundef 16, ptr noundef null, i32 noundef %92, i32 noundef 0, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %93) #18
  %94 = load ptr, ptr %84, align 16, !tbaa !147
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %82, align 8, !tbaa !146
  %98 = icmp ne i32 %97, 0
  %99 = icmp sgt i32 %19, 0
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96, %89
  %102 = load i64, ptr %93, align 16, !tbaa !148
  %103 = load i64, ptr %8, align 8, !tbaa !51
  %104 = add nsw i64 %103, %102
  store i64 %104, ptr %8, align 8, !tbaa !51
  br label %105

105:                                              ; preds = %96, %101
  call void @function_arg_advance(ptr noundef nonnull %9, i32 noundef 16, ptr noundef null, i32 noundef 1) #18
  br label %106

106:                                              ; preds = %105, %52
  %107 = phi i32 [ 0, %52 ], [ 1, %105 ]
  %108 = phi i32 [ %5, %52 ], [ %56, %105 ]
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %236

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 2
  %112 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 3
  %113 = icmp sgt i32 %19, 0
  %114 = zext nneg i32 %107 to i64
  %115 = zext nneg i32 %108 to i64
  br label %116

116:                                              ; preds = %110, %233
  %117 = phi i64 [ %114, %110 ], [ %234, %233 ]
  %118 = phi i32 [ %54, %110 ], [ %206, %233 ]
  %119 = load i32, ptr %6, align 8
  %120 = icmp ult i32 %119, 41
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = load ptr, ptr %111, align 8
  %123 = getelementptr i8, ptr %122, i64 8
  store ptr %123, ptr %111, align 8
  %124 = load ptr, ptr %122, align 8
  br label %137

125:                                              ; preds = %116
  %126 = load ptr, ptr %112, align 8
  %127 = zext nneg i32 %119 to i64
  %128 = getelementptr i8, ptr %126, i64 %127
  %129 = add nuw nsw i32 %119, 8
  store i32 %129, ptr %6, align 8
  %130 = load ptr, ptr %128, align 8
  %131 = icmp ult i32 %119, 33
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load ptr, ptr %112, align 8
  %134 = zext nneg i32 %129 to i64
  %135 = getelementptr i8, ptr %133, i64 %134
  %136 = add nuw nsw i32 %119, 16
  store i32 %136, ptr %6, align 8
  br label %141

137:                                              ; preds = %121, %125
  %138 = phi ptr [ %124, %121 ], [ %130, %125 ]
  %139 = load ptr, ptr %111, align 8
  %140 = getelementptr i8, ptr %139, i64 8
  store ptr %140, ptr %111, align 8
  br label %141

141:                                              ; preds = %137, %132
  %142 = phi ptr [ %130, %132 ], [ %138, %137 ]
  %143 = phi ptr [ %135, %132 ], [ %139, %137 ]
  %144 = load i32, ptr %143, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %153, label %146

146:                                              ; preds = %141
  %147 = load i32, ptr %142, align 8
  %148 = lshr i32 %147, 16
  %149 = and i32 %148, 255
  %150 = icmp eq i32 %149, %144
  %151 = icmp eq i32 %149, 0
  %152 = or i1 %150, %151
  br i1 %152, label %155, label %153

153:                                              ; preds = %146, %141
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3449, ptr noundef nonnull @.str.1) #18
  %154 = load i32, ptr %142, align 8
  br label %155

155:                                              ; preds = %146, %153
  %156 = phi i32 [ %147, %146 ], [ %154, %153 ]
  %157 = trunc i32 %156 to i16
  switch i16 %157, label %158 [
    i16 37, label %169
    i16 43, label %169
  ]

158:                                              ; preds = %155
  %159 = and i32 %156, 65535
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !28
  %163 = icmp eq i32 %162, 9
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %142) #18
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164, %158
  %168 = call ptr @force_operand(ptr noundef nonnull %142, ptr noundef null) #18
  br label %169

169:                                              ; preds = %155, %155, %167, %164
  %170 = phi ptr [ %142, %155 ], [ %142, %164 ], [ %168, %167 ], [ %142, %155 ]
  %171 = call zeroext i8 @pass_by_reference(ptr noundef nonnull %9, i32 noundef %144, ptr noundef null, i8 noundef zeroext 1) #18
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %203, label %173

173:                                              ; preds = %169
  %174 = call zeroext i8 @reference_callee_copied(ptr noundef nonnull %9, i32 noundef %144, ptr noundef null, i8 noundef zeroext 1) #18
  %175 = icmp eq i8 %174, 0
  %176 = and i32 %118, 1
  %177 = icmp eq i32 %176, 0
  %178 = and i32 %118, -4
  %179 = or disjoint i32 %178, 2
  %180 = select i1 %177, i32 %118, i32 %179
  %181 = load i32, ptr %170, align 8
  %182 = and i32 %181, 65535
  %183 = icmp ne i32 %182, 43
  %184 = select i1 %183, i1 true, i1 %175
  br i1 %184, label %185, label %190

185:                                              ; preds = %173
  %186 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !142
  %187 = call ptr %186(i32 noundef %144, i32 noundef 0) #18
  %188 = call ptr @assign_temp(ptr noundef %187, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  %189 = call ptr @emit_move_insn(ptr noundef %188, ptr noundef nonnull %170) #18
  br label %190

190:                                              ; preds = %173, %185
  %191 = phi ptr [ %188, %185 ], [ %170, %173 ]
  %192 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %191) #18
  %193 = load ptr, ptr %10, align 8, !tbaa !26
  %194 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %192, ptr noundef %193) #18
  store ptr %194, ptr %10, align 8, !tbaa !26
  br i1 %175, label %195, label %199

195:                                              ; preds = %190
  %196 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %191) #18
  %197 = load ptr, ptr %10, align 8, !tbaa !26
  %198 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %196, ptr noundef %197) #18
  store ptr %198, ptr %10, align 8, !tbaa !26
  br label %199

199:                                              ; preds = %195, %190
  %200 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !23
  %202 = call ptr @force_operand(ptr noundef %201, ptr noundef null) #18
  br label %203

203:                                              ; preds = %199, %169
  %204 = phi i32 [ 16, %199 ], [ %144, %169 ]
  %205 = phi ptr [ %202, %199 ], [ %170, %169 ]
  %206 = phi i32 [ %180, %199 ], [ %118, %169 ]
  %207 = getelementptr inbounds %struct.arg, ptr %59, i64 %117
  store ptr %205, ptr %207, align 16, !tbaa !143
  %208 = getelementptr inbounds %struct.arg, ptr %59, i64 %117, i32 1
  store i32 %204, ptr %208, align 8, !tbaa !145
  %209 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef %204, ptr noundef null, i32 noundef 1) #18
  %210 = getelementptr inbounds %struct.arg, ptr %59, i64 %117, i32 2
  store ptr %209, ptr %210, align 16, !tbaa !147
  %211 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !106
  %212 = call i32 %211(ptr noundef nonnull %9, i32 noundef %204, ptr noundef null, i8 noundef zeroext 1) #18
  %213 = getelementptr inbounds %struct.arg, ptr %59, i64 %117, i32 3
  store i32 %212, ptr %213, align 8, !tbaa !146
  %214 = load ptr, ptr %210, align 16, !tbaa !147
  %215 = icmp ne ptr %214, null
  %216 = zext i1 %215 to i32
  %217 = getelementptr inbounds %struct.arg, ptr %59, i64 %117, i32 4
  call void @locate_and_pad_parm(i32 noundef %204, ptr noundef null, i32 noundef %216, i32 noundef %212, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %217) #18
  %218 = getelementptr inbounds %struct.args_size, ptr %217, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !149
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %203
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3509, ptr noundef nonnull @.str.1) #18
  br label %222

222:                                              ; preds = %203, %221
  %223 = load ptr, ptr %210, align 16, !tbaa !147
  %224 = icmp eq ptr %223, null
  br i1 %224, label %229, label %225

225:                                              ; preds = %222
  %226 = load i32, ptr %213, align 8, !tbaa !146
  %227 = icmp ne i32 %226, 0
  %228 = select i1 %227, i1 true, i1 %113
  br i1 %228, label %229, label %233

229:                                              ; preds = %225, %222
  %230 = load i64, ptr %217, align 16, !tbaa !148
  %231 = load i64, ptr %8, align 8, !tbaa !51
  %232 = add nsw i64 %231, %230
  store i64 %232, ptr %8, align 8, !tbaa !51
  br label %233

233:                                              ; preds = %225, %229
  call void @function_arg_advance(ptr noundef nonnull %9, i32 noundef %204, ptr noundef null, i32 noundef 1) #18
  %234 = add nuw nsw i64 %117, 1
  %235 = icmp eq i64 %234, %115
  br i1 %235, label %236, label %116, !llvm.loop !150

236:                                              ; preds = %233, %106
  %237 = phi i32 [ %54, %106 ], [ %206, %233 ]
  call void @assemble_external_libcall(ptr noundef %1) #18
  %238 = load i64, ptr %8, align 8
  %239 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %238, %240
  %242 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !28
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
  store i64 %252, ptr %8, align 8, !tbaa !51
  %253 = call i32 @ix86_function_type_abi(ptr noundef null) #18
  %254 = icmp eq i32 %253, 1
  %255 = load i64, ptr %8, align 8, !tbaa !51
  br i1 %254, label %258, label %256

256:                                              ; preds = %236
  %257 = sub nsw i64 %255, %251
  store i64 %257, ptr %8, align 8, !tbaa !51
  br label %258

258:                                              ; preds = %256, %236
  %259 = phi i64 [ %257, %256 ], [ %255, %236 ]
  %260 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !68
  %261 = sext i32 %260 to i64
  %262 = icmp sgt i64 %259, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %258
  %264 = trunc i64 %259 to i32
  store i32 %264, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !68
  br label %265

265:                                              ; preds = %263, %258
  %266 = load i32, ptr @target_flags, align 4, !tbaa !28
  %267 = and i32 %266, 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %265
  %270 = call i32 @ix86_cfun_abi() #18
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %303

272:                                              ; preds = %269
  %273 = load i64, ptr %8, align 8, !tbaa !51
  br label %274

274:                                              ; preds = %272, %265
  %275 = phi i64 [ %273, %272 ], [ %259, %265 ]
  %276 = trunc i64 %275 to i32
  %277 = call i32 @ix86_function_type_abi(ptr noundef null) #18
  %278 = icmp eq i32 %277, 1
  %279 = select i1 %278, i32 0, i32 %19
  %280 = add nsw i32 %279, %276
  %281 = call i32 @llvm.smax.i32(i32 %15, i32 %280)
  store i32 %281, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  %282 = sext i32 %281 to i64
  %283 = call ptr @xmalloc(i64 noundef %282) #18
  store ptr %283, ptr @stack_usage_map, align 8, !tbaa !26
  %284 = icmp eq i32 %15, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %274
  %286 = sext i32 %15 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %283, ptr align 1 %16, i64 %286, i1 false)
  br label %287

287:                                              ; preds = %285, %274
  %288 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  %289 = icmp eq i32 %15, %288
  br i1 %289, label %295, label %290

290:                                              ; preds = %287
  %291 = sext i32 %15 to i64
  %292 = getelementptr inbounds i8, ptr %283, i64 %291
  %293 = sub nsw i32 %288, %15
  %294 = sext i32 %293 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %292, i8 0, i64 %294, i1 false)
  br label %295

295:                                              ; preds = %290, %287
  %296 = load i32, ptr @virtuals_instantiated, align 4, !tbaa !28
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %295
  %299 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !26
  %300 = call ptr @plus_constant(ptr noundef %299, i64 noundef 0) #18
  br label %314

301:                                              ; preds = %295
  %302 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !26
  br label %314

303:                                              ; preds = %269
  %304 = load i32, ptr @target_flags, align 4, !tbaa !28
  %305 = and i32 %304, 8196
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = call i32 @ix86_cfun_abi() #18
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %318

310:                                              ; preds = %307, %303
  %311 = load i64, ptr %8, align 8, !tbaa !51
  %312 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %311) #18
  %313 = call ptr @push_block(ptr noundef %312, i32 noundef 0, i32 noundef 0) #18
  br label %314

314:                                              ; preds = %310, %298, %301
  %315 = phi ptr [ %283, %298 ], [ %283, %301 ], [ null, %310 ]
  %316 = phi ptr [ %300, %298 ], [ %302, %301 ], [ %313, %310 ]
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %323

318:                                              ; preds = %307, %314
  %319 = phi ptr [ %315, %314 ], [ null, %307 ]
  %320 = load i64, ptr %8, align 8, !tbaa !51
  %321 = sub nsw i64 %320, %238
  %322 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %321) #18
  call void @anti_adjust_stack(ptr noundef %322) #18
  br label %323

323:                                              ; preds = %318, %314
  %324 = phi i1 [ true, %318 ], [ false, %314 ]
  %325 = phi ptr [ null, %318 ], [ %316, %314 ]
  %326 = phi ptr [ %319, %318 ], [ %315, %314 ]
  %327 = load i32, ptr @target_flags, align 4, !tbaa !28
  %328 = and i32 %327, 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %333

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
  br i1 %337, label %340, label %338

338:                                              ; preds = %335
  %339 = call ptr @prepare_call_address(ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef nonnull %10, i32 noundef 0, i32 poison) #19
  br label %553

340:                                              ; preds = %335
  %341 = and i32 %237, 1
  %342 = icmp eq i32 %341, 0
  %343 = and i32 %237, 2
  %344 = icmp eq i32 %343, 0
  %345 = zext nneg i32 %108 to i64
  br label %346

346:                                              ; preds = %340, %487
  %347 = phi i64 [ %345, %340 ], [ %349, %487 ]
  %348 = phi i32 [ 0, %340 ], [ %488, %487 ]
  %349 = add nsw i64 %347, -1
  %350 = getelementptr inbounds %struct.arg, ptr %59, i64 %349
  %351 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 1
  %352 = load i32, ptr %351, align 8, !tbaa !145
  %353 = load ptr, ptr %350, align 16, !tbaa !143
  %354 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 2
  %355 = load ptr, ptr %354, align 16, !tbaa !147
  %356 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 3
  %357 = load i32, ptr %356, align 8, !tbaa !146
  %358 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4
  %359 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 5
  %360 = load i32, ptr %359, align 4, !tbaa !151
  %361 = icmp ne ptr %355, null
  %362 = icmp eq i32 %357, 0
  %363 = select i1 %361, i1 %362, i1 false
  br i1 %363, label %487, label %364

364:                                              ; preds = %346
  %365 = load i32, ptr @target_flags, align 4, !tbaa !28
  %366 = and i32 %365, 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %364
  %369 = call i32 @ix86_cfun_abi() #18
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %419

371:                                              ; preds = %368, %364
  %372 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 2
  %373 = load i64, ptr %372, align 16, !tbaa !152
  %374 = trunc i64 %373 to i32
  %375 = load i64, ptr %358, align 16, !tbaa !148
  %376 = add i64 %375, %373
  %377 = trunc i64 %376 to i32
  %378 = call i32 @llvm.smax.i32(i32 %19, i32 %374)
  %379 = icmp slt i32 %378, %377
  br i1 %379, label %380, label %419

380:                                              ; preds = %371
  %381 = load ptr, ptr @stack_usage_map, align 8, !tbaa !26
  %382 = shl i64 %373, 32
  %383 = ashr exact i64 %382, 32
  %384 = call i64 @llvm.smax.i64(i64 %251, i64 %383)
  %385 = trunc i64 %384 to i32
  %386 = add i32 %385, %377
  %387 = sub i32 %386, %378
  br label %392

388:                                              ; preds = %392
  %389 = add nsw i64 %393, 1
  %390 = trunc i64 %389 to i32
  %391 = icmp eq i32 %387, %390
  br i1 %391, label %419, label %392, !llvm.loop !153

392:                                              ; preds = %380, %388
  %393 = phi i64 [ %384, %380 ], [ %389, %388 ]
  %394 = getelementptr inbounds i8, ptr %381, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !23
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %388, label %397

397:                                              ; preds = %392
  %398 = trunc i64 %375 to i32
  %399 = shl i32 %398, 3
  %400 = call i32 @mode_for_size(i32 noundef %399, i32 noundef 2, i32 noundef 1) #18
  %401 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 1
  %402 = load i64, ptr %401, align 16, !tbaa !154
  %403 = call ptr @plus_constant(ptr noundef %325, i64 noundef %402) #18
  %404 = call ptr @memory_address_addr_space(i32 noundef %400, ptr noundef %403, i8 noundef zeroext 0) #18
  %405 = call ptr @gen_rtx_MEM(i32 noundef %400, ptr noundef %404) #18
  %406 = icmp eq i32 %400, 1
  br i1 %406, label %407, label %415

407:                                              ; preds = %397
  %408 = load i64, ptr %358, align 16, !tbaa !148
  %409 = call ptr @assign_stack_temp(i32 noundef 1, i64 noundef %408, i32 noundef 0) #18
  %410 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 5
  store ptr %409, ptr %410, align 8, !tbaa !155
  %411 = call ptr @validize_mem(ptr noundef %409) #18
  %412 = load i64, ptr %358, align 16, !tbaa !148
  %413 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %412) #18
  %414 = call ptr @emit_block_move(ptr noundef %411, ptr noundef %405, ptr noundef %413, i32 noundef 2) #18
  br label %419

415:                                              ; preds = %397
  %416 = call ptr @gen_reg_rtx(i32 noundef %400) #18
  %417 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 5
  store ptr %416, ptr %417, align 8, !tbaa !155
  %418 = call ptr @emit_move_insn(ptr noundef %416, ptr noundef %405) #18
  br label %419

419:                                              ; preds = %388, %371, %407, %415, %368
  %420 = phi i32 [ 0, %368 ], [ %374, %415 ], [ %374, %407 ], [ %374, %371 ], [ %374, %388 ]
  %421 = phi i32 [ 0, %368 ], [ %377, %415 ], [ %377, %407 ], [ %377, %371 ], [ %377, %388 ]
  %422 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 1
  %423 = load i64, ptr %422, align 16, !tbaa !154
  %424 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %423) #18
  %425 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 3
  %426 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 3, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !156
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %432

429:                                              ; preds = %419
  %430 = load i64, ptr %425, align 16, !tbaa !157
  %431 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %430) #18
  br label %439

432:                                              ; preds = %419
  %433 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !26
  %434 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %433, ptr noundef nonnull %427) #18
  %435 = load i64, ptr %425, align 16, !tbaa !157
  %436 = call ptr @size_int_kind(i64 noundef %435, i32 noundef 1) #18
  %437 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %434, ptr noundef %436) #18
  %438 = call fastcc ptr @expand_normal(ptr noundef %437) #19
  br label %439

439:                                              ; preds = %432, %429
  %440 = phi ptr [ %431, %429 ], [ %438, %432 ]
  call void @emit_push_insn(ptr noundef %353, i32 noundef %352, ptr noundef null, ptr noundef null, i32 noundef %360, i32 noundef %357, ptr noundef %355, i32 noundef 0, ptr noundef %325, ptr noundef %424, i32 noundef %19, ptr noundef %440) #18
  %441 = load i32, ptr @target_flags, align 4, !tbaa !28
  %442 = and i32 %441, 4
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %449

444:                                              ; preds = %439
  %445 = call i32 @ix86_cfun_abi() #18
  %446 = icmp eq i32 %445, 1
  %447 = icmp slt i32 %420, %421
  %448 = and i1 %446, %447
  br i1 %448, label %451, label %461

449:                                              ; preds = %439
  %450 = icmp slt i32 %420, %421
  br i1 %450, label %451, label %461

451:                                              ; preds = %444, %449
  %452 = load ptr, ptr @stack_usage_map, align 8, !tbaa !26
  %453 = sext i32 %420 to i64
  %454 = getelementptr i8, ptr %452, i64 %453
  %455 = add nsw i32 %420, 1
  %456 = call i32 @llvm.smax.i32(i32 %421, i32 %455)
  %457 = xor i32 %420, -1
  %458 = add i32 %456, %457
  %459 = zext i32 %458 to i64
  %460 = add nuw nsw i64 %459, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %454, i8 1, i64 %460, i1 false), !tbaa !23
  br label %461

461:                                              ; preds = %451, %449, %444
  %462 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %463 = add nsw i32 %462, 1
  store i32 %463, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  br i1 %342, label %464, label %472

464:                                              ; preds = %461
  br i1 %344, label %487, label %465

465:                                              ; preds = %464
  %466 = load i32, ptr @target_flags, align 4, !tbaa !28
  %467 = and i32 %466, 4
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %465
  %470 = call i32 @ix86_cfun_abi() #18
  %471 = icmp eq i32 %470, 1
  br i1 %471, label %472, label %487

472:                                              ; preds = %469, %465, %461
  br i1 %324, label %476, label %473

473:                                              ; preds = %472
  %474 = load i64, ptr %422, align 16, !tbaa !154
  %475 = call ptr @plus_constant(ptr noundef nonnull %325, i64 noundef %474) #18
  br label %480

476:                                              ; preds = %472
  %477 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !26
  %478 = call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef 16) #18
  %479 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %477, ptr noundef %478) #18
  br label %480

480:                                              ; preds = %476, %473
  %481 = phi ptr [ %475, %473 ], [ %479, %476 ]
  %482 = load i32, ptr %351, align 8, !tbaa !145
  %483 = call ptr @gen_rtx_MEM(i32 noundef %482, ptr noundef %481) #18
  %484 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %483) #18
  %485 = load ptr, ptr %10, align 8, !tbaa !26
  %486 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %484, ptr noundef %485) #18
  store ptr %486, ptr %10, align 8, !tbaa !26
  br label %487

487:                                              ; preds = %464, %469, %480, %346
  %488 = add nuw nsw i32 %348, 1
  %489 = icmp eq i32 %488, %108
  br i1 %489, label %490, label %346, !llvm.loop !158

490:                                              ; preds = %487
  %491 = call ptr @prepare_call_address(ptr noundef null, ptr noundef %1, ptr noundef null, ptr noundef nonnull %10, i32 noundef 0, i32 poison) #19
  br i1 %337, label %492, label %553

492:                                              ; preds = %490
  %493 = zext nneg i32 %108 to i64
  br label %497

494:                                              ; preds = %523
  br i1 %337, label %495, label %553

495:                                              ; preds = %494
  %496 = zext nneg i32 %108 to i64
  br label %528

497:                                              ; preds = %492, %523
  %498 = phi i64 [ %493, %492 ], [ %500, %523 ]
  %499 = phi i32 [ 0, %492 ], [ %526, %523 ]
  %500 = add nsw i64 %498, -1
  %501 = getelementptr inbounds %struct.arg, ptr %59, i64 %500
  %502 = getelementptr inbounds %struct.arg, ptr %59, i64 %500, i32 1
  %503 = load i32, ptr %502, align 8, !tbaa !145
  %504 = load ptr, ptr %501, align 16, !tbaa !143
  %505 = getelementptr inbounds %struct.arg, ptr %59, i64 %500, i32 2
  %506 = load ptr, ptr %505, align 16, !tbaa !147
  %507 = getelementptr inbounds %struct.arg, ptr %59, i64 %500, i32 3
  %508 = load i32, ptr %507, align 8, !tbaa !146
  %509 = icmp eq ptr %506, null
  br i1 %509, label %523, label %510

510:                                              ; preds = %497
  %511 = load i32, ptr %506, align 8
  %512 = and i32 %511, 65535
  %513 = icmp eq i32 %512, 15
  br i1 %513, label %514, label %519

514:                                              ; preds = %510
  %515 = zext i32 %503 to i64
  %516 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %515
  %517 = load i8, ptr %516, align 1, !tbaa !23
  %518 = zext i8 %517 to i32
  call void @emit_group_load(ptr noundef nonnull %506, ptr noundef %504, ptr noundef null, i32 noundef %518) #18
  br label %523

519:                                              ; preds = %510
  %520 = icmp eq i32 %508, 0
  br i1 %520, label %521, label %523

521:                                              ; preds = %519
  %522 = call ptr @emit_move_insn(ptr noundef nonnull %506, ptr noundef %504) #18
  br label %523

523:                                              ; preds = %497, %519, %521, %514
  %524 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %525 = add nsw i32 %524, 1
  store i32 %525, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %526 = add nuw nsw i32 %499, 1
  %527 = icmp eq i32 %526, %108
  br i1 %527, label %494, label %497, !llvm.loop !159

528:                                              ; preds = %495, %550
  %529 = phi i64 [ 0, %495 ], [ %551, %550 ]
  %530 = getelementptr inbounds %struct.arg, ptr %59, i64 %529, i32 2
  %531 = load ptr, ptr %530, align 16, !tbaa !147
  %532 = icmp eq ptr %531, null
  br i1 %532, label %550, label %533

533:                                              ; preds = %528
  %534 = load i32, ptr %531, align 8
  %535 = and i32 %534, 65535
  %536 = icmp eq i32 %535, 15
  br i1 %536, label %537, label %538

537:                                              ; preds = %533
  call void @use_group_regs(ptr noundef nonnull %10, ptr noundef nonnull %531) #18
  br label %550

538:                                              ; preds = %533
  %539 = getelementptr inbounds %struct.arg, ptr %59, i64 %529, i32 3
  %540 = load i32, ptr %539, align 8, !tbaa !146
  %541 = icmp eq i32 %540, 0
  br i1 %541, label %549, label %542

542:                                              ; preds = %538
  %543 = and i32 %540, 3
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %546, label %545

545:                                              ; preds = %542
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3780, ptr noundef nonnull @.str.1) #18
  br label %546

546:                                              ; preds = %542, %545
  %547 = sdiv i32 %540, 4
  %548 = call fastcc i32 @rhs_regno(ptr noundef nonnull %531) #19
  call void @use_regs(ptr noundef nonnull %10, i32 noundef %548, i32 noundef %547) #18
  br label %550

549:                                              ; preds = %538
  call void @use_reg(ptr noundef nonnull %10, ptr noundef nonnull %531) #18
  br label %550

550:                                              ; preds = %528, %546, %549, %537
  %551 = add nuw nsw i64 %529, 1
  %552 = icmp eq i64 %551, %496
  br i1 %552, label %553, label %528, !llvm.loop !160

553:                                              ; preds = %550, %490, %338, %494
  %554 = phi ptr [ %491, %494 ], [ %491, %490 ], [ %339, %338 ], [ %491, %550 ]
  %555 = icmp ne ptr %18, null
  %556 = select i1 %60, i1 %555, i1 false
  br i1 %556, label %557, label %570

557:                                              ; preds = %553
  %558 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !23
  %560 = call ptr @force_operand(ptr noundef %559, ptr noundef null) #18
  %561 = call ptr @force_reg(i32 noundef 16, ptr noundef %560) #18
  %562 = call ptr @emit_move_insn(ptr noundef nonnull %18, ptr noundef %561) #18
  %563 = load i32, ptr %18, align 8
  %564 = and i32 %563, 65535
  %565 = icmp eq i32 %564, 37
  br i1 %565, label %566, label %567

566:                                              ; preds = %557
  call void @use_reg(ptr noundef nonnull %10, ptr noundef nonnull %18) #18
  br label %567

567:                                              ; preds = %557, %566
  %568 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %569 = add nsw i32 %568, 1
  store i32 %569, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  br label %577

570:                                              ; preds = %553
  %571 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %572 = add nsw i32 %571, 1
  store i32 %572, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %573 = icmp eq ptr %55, null
  %574 = and i1 %33, %573
  br i1 %574, label %575, label %577

575:                                              ; preds = %570
  %576 = call ptr @hard_libcall_value(i32 noundef %4, ptr noundef %1) #18
  br label %577

577:                                              ; preds = %567, %570, %575
  %578 = phi ptr [ %576, %575 ], [ null, %570 ], [ null, %567 ]
  %579 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !66
  %580 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !28
  %581 = lshr i32 %580, 3
  %582 = add nsw i32 %581, -1
  %583 = and i32 %582, %579
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %586, label %585

585:                                              ; preds = %577
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3808, ptr noundef nonnull @.str.1) #18
  br label %586

586:                                              ; preds = %577, %585
  %587 = call ptr @get_last_insn() #18
  %588 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %589 = load ptr, ptr %588, align 8, !tbaa !23
  %590 = call ptr @get_identifier(ptr noundef %589) #18
  %591 = call ptr @build_function_type(ptr noundef %53, ptr noundef null) #18
  %592 = load i64, ptr %8, align 8, !tbaa !51
  %593 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !26
  %594 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef 0, ptr noundef %593, i32 noundef 1) #18
  %595 = add nsw i32 %14, 1
  %596 = load ptr, ptr %10, align 8, !tbaa !26
  call fastcc void @emit_call_1(ptr noundef %554, ptr noundef null, ptr noundef %590, ptr noundef %591, i64 noundef %238, i64 noundef %592, ptr noundef %594, ptr noundef %578, i32 noundef %595, ptr noundef %596, i32 noundef %237) #19
  %597 = and i32 %237, 8
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %617, label %599

599:                                              ; preds = %586
  %600 = call ptr @get_last_insn() #18
  %601 = load i32, ptr %600, align 8
  %602 = and i32 %601, 65535
  %603 = icmp eq i32 %602, 10
  br i1 %603, label %614, label %604

604:                                              ; preds = %599, %610
  %605 = phi ptr [ %607, %610 ], [ %600, %599 ]
  %606 = getelementptr inbounds %struct.rtx_def, ptr %605, i64 0, i32 1, i32 0, i32 0, i64 1
  %607 = load ptr, ptr %606, align 8, !tbaa !23
  %608 = icmp eq ptr %607, %587
  br i1 %608, label %609, label %610

609:                                              ; preds = %604
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3844, ptr noundef nonnull @.str.1) #18
  br label %610

610:                                              ; preds = %604, %609
  %611 = load i32, ptr %607, align 8
  %612 = and i32 %611, 65535
  %613 = icmp eq i32 %612, 10
  br i1 %613, label %614, label %604, !llvm.loop !161

614:                                              ; preds = %610, %599
  %615 = phi ptr [ %600, %599 ], [ %607, %610 ]
  %616 = call ptr @emit_barrier_after(ptr noundef nonnull %615) #18
  br label %617

617:                                              ; preds = %614, %586
  %618 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  %619 = add nsw i32 %618, -1
  store i32 %619, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !29
  call void @pop_temp_slots() #18
  %620 = icmp ne i32 %0, 0
  %621 = and i1 %620, %33
  br i1 %621, label %622, label %669

622:                                              ; preds = %617
  br i1 %60, label %623, label %629

623:                                              ; preds = %622
  %624 = icmp eq ptr %2, null
  %625 = select i1 %624, ptr %55, ptr %2
  %626 = icmp eq ptr %625, %55
  br i1 %626, label %669, label %627

627:                                              ; preds = %623
  %628 = call ptr @emit_move_insn(ptr noundef nonnull %625, ptr noundef nonnull %55) #18
  br label %669

629:                                              ; preds = %622
  %630 = load i32, ptr %578, align 8
  %631 = and i32 %630, 65535
  %632 = icmp eq i32 %631, 15
  br i1 %632, label %633, label %643

633:                                              ; preds = %629
  %634 = icmp eq ptr %2, null
  br i1 %634, label %635, label %637

635:                                              ; preds = %633
  %636 = call ptr @gen_reg_rtx(i32 noundef %4) #18
  br label %637

637:                                              ; preds = %635, %633
  %638 = phi ptr [ %636, %635 ], [ %2, %633 ]
  %639 = zext i32 %4 to i64
  %640 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %639
  %641 = load i8, ptr %640, align 1, !tbaa !23
  %642 = zext i8 %641 to i32
  call void @emit_group_store(ptr noundef %638, ptr noundef nonnull %578, ptr noundef null, i32 noundef %642) #18
  br label %669

643:                                              ; preds = %629
  %644 = lshr i32 %630, 16
  %645 = and i32 %644, 255
  %646 = icmp eq i32 %645, %4
  br i1 %646, label %664, label %647

647:                                              ; preds = %643
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #20
  %648 = load i64, ptr %53, align 8
  %649 = trunc i64 %648 to i32
  %650 = lshr i32 %649, 21
  %651 = and i32 %650, 1
  store i32 %651, ptr %13, align 4, !tbaa !28
  %652 = call i32 @promote_function_mode(ptr noundef nonnull %53, i32 noundef %4, ptr noundef nonnull %13, ptr noundef null, i32 noundef 1) #18
  %653 = load i32, ptr %578, align 8
  %654 = lshr i32 %653, 16
  %655 = and i32 %654, 255
  %656 = icmp eq i32 %652, %655
  br i1 %656, label %661, label %657

657:                                              ; preds = %647
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3880, ptr noundef nonnull @.str.1) #18
  %658 = load i32, ptr %578, align 8
  %659 = lshr i32 %658, 16
  %660 = and i32 %659, 255
  br label %661

661:                                              ; preds = %647, %657
  %662 = phi i32 [ %655, %647 ], [ %660, %657 ]
  %663 = call ptr @convert_modes(i32 noundef %4, i32 noundef %662, ptr noundef nonnull %578, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #20
  br label %664

664:                                              ; preds = %661, %643
  %665 = phi ptr [ %663, %661 ], [ %578, %643 ]
  %666 = icmp eq ptr %2, null
  br i1 %666, label %669, label %667

667:                                              ; preds = %664
  %668 = call ptr @emit_move_insn(ptr noundef nonnull %2, ptr noundef %665) #18
  br label %669

669:                                              ; preds = %664, %627, %623, %667, %637, %617
  %670 = phi ptr [ %625, %627 ], [ %55, %623 ], [ %638, %637 ], [ %2, %667 ], [ %2, %617 ], [ %665, %664 ]
  %671 = load i32, ptr @target_flags, align 4, !tbaa !28
  %672 = and i32 %671, 4
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %677

674:                                              ; preds = %669
  %675 = call i32 @ix86_cfun_abi() #18
  %676 = icmp eq i32 %675, 1
  br i1 %676, label %677, label %714

677:                                              ; preds = %674, %669
  %678 = icmp eq ptr %336, null
  br i1 %678, label %682, label %679

679:                                              ; preds = %677
  %680 = load i32, ptr %12, align 4, !tbaa !28
  %681 = load i32, ptr %11, align 4, !tbaa !28
  call fastcc void @restore_fixed_argument_area(ptr noundef nonnull %336, ptr noundef %325, i32 noundef %680, i32 noundef %681) #19
  br label %682

682:                                              ; preds = %679, %677
  br i1 %337, label %683, label %713

683:                                              ; preds = %682
  %684 = zext nneg i32 %108 to i64
  br label %685

685:                                              ; preds = %683, %710
  %686 = phi i64 [ 0, %683 ], [ %711, %710 ]
  %687 = getelementptr inbounds %struct.arg, ptr %59, i64 %686, i32 5
  %688 = load ptr, ptr %687, align 8, !tbaa !155
  %689 = icmp eq ptr %688, null
  br i1 %689, label %710, label %690

690:                                              ; preds = %685
  %691 = load i32, ptr %688, align 8
  %692 = lshr i32 %691, 16
  %693 = and i32 %692, 255
  %694 = getelementptr inbounds %struct.arg, ptr %59, i64 %686, i32 4, i32 1
  %695 = load i64, ptr %694, align 16, !tbaa !154
  %696 = call ptr @plus_constant(ptr noundef %325, i64 noundef %695) #18
  %697 = call ptr @memory_address_addr_space(i32 noundef %693, ptr noundef %696, i8 noundef zeroext 0) #18
  %698 = call ptr @gen_rtx_MEM(i32 noundef %693, ptr noundef %697) #18
  %699 = icmp eq i32 %693, 1
  br i1 %699, label %700, label %707

700:                                              ; preds = %690
  %701 = getelementptr inbounds %struct.arg, ptr %59, i64 %686, i32 4
  %702 = load ptr, ptr %687, align 8, !tbaa !155
  %703 = call ptr @validize_mem(ptr noundef %702) #18
  %704 = load i64, ptr %701, align 16, !tbaa !148
  %705 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %704) #18
  %706 = call ptr @emit_block_move(ptr noundef %698, ptr noundef %703, ptr noundef %705, i32 noundef 2) #18
  br label %710

707:                                              ; preds = %690
  %708 = load ptr, ptr %687, align 8, !tbaa !155
  %709 = call ptr @emit_move_insn(ptr noundef %698, ptr noundef %708) #18
  br label %710

710:                                              ; preds = %700, %707, %685
  %711 = add nuw nsw i64 %686, 1
  %712 = icmp eq i64 %711, %684
  br i1 %712, label %713, label %685, !llvm.loop !162

713:                                              ; preds = %710, %682
  store i32 %15, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !28
  store ptr %16, ptr @stack_usage_map, align 8, !tbaa !26
  br label %714

714:                                              ; preds = %713, %674
  %715 = icmp eq ptr %326, null
  br i1 %715, label %717, label %716

716:                                              ; preds = %714
  call void @free(ptr noundef nonnull %326) #19
  br label %717

717:                                              ; preds = %716, %714
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #20
  ret ptr %670
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
define dso_local ptr @emit_library_call_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ...) local_unnamed_addr #0 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.va_start(ptr nonnull %6)
  %7 = call fastcc ptr @emit_library_call_value_1(i32 noundef 1, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #19
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @must_pass_in_stack_var_size(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #16 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !23
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
define dso_local noundef zeroext i8 @must_pass_in_stack_var_size_or_pad(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 262144
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = icmp eq i32 %0, 1
  br i1 %15, label %16, label %18

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
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !9, i64 1640}
!7 = !{!"gcc_target", !8, i64 0, !13, i64 368, !14, i64 664, !15, i64 744, !9, i64 752, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !9, i64 792, !9, i64 800, !9, i64 808, !9, i64 816, !9, i64 824, !9, i64 832, !9, i64 840, !9, i64 848, !9, i64 856, !9, i64 864, !9, i64 872, !9, i64 880, !9, i64 888, !9, i64 896, !9, i64 904, !9, i64 912, !9, i64 920, !9, i64 928, !9, i64 936, !9, i64 944, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !9, i64 984, !9, i64 992, !9, i64 1000, !9, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !9, i64 1040, !9, i64 1048, !9, i64 1056, !16, i64 1064, !16, i64 1072, !9, i64 1080, !9, i64 1088, !9, i64 1096, !9, i64 1104, !9, i64 1112, !9, i64 1120, !9, i64 1128, !9, i64 1136, !9, i64 1144, !9, i64 1152, !9, i64 1160, !9, i64 1168, !17, i64 1176, !9, i64 1232, !9, i64 1240, !9, i64 1248, !9, i64 1256, !9, i64 1264, !9, i64 1272, !9, i64 1280, !9, i64 1288, !9, i64 1296, !9, i64 1304, !9, i64 1312, !9, i64 1320, !9, i64 1328, !9, i64 1336, !9, i64 1344, !9, i64 1352, !9, i64 1360, !9, i64 1368, !9, i64 1376, !9, i64 1384, !9, i64 1392, !9, i64 1400, !9, i64 1408, !9, i64 1416, !9, i64 1424, !9, i64 1432, !9, i64 1440, !9, i64 1448, !9, i64 1456, !16, i64 1464, !18, i64 1472, !9, i64 1664, !9, i64 1672, !9, i64 1680, !9, i64 1688, !9, i64 1696, !9, i64 1704, !9, i64 1712, !9, i64 1720, !9, i64 1728, !9, i64 1736, !9, i64 1744, !9, i64 1752, !9, i64 1760, !9, i64 1768, !9, i64 1776, !19, i64 1784, !20, i64 1792, !21, i64 1896, !22, i64 1968, !9, i64 2016, !10, i64 2024, !10, i64 2025, !10, i64 2026, !10, i64 2027, !10, i64 2028, !10, i64 2029, !10, i64 2030, !10, i64 2031, !10, i64 2032, !10, i64 2033, !10, i64 2034, !10, i64 2035}
!8 = !{!"asm_out", !9, i64 0, !9, i64 8, !9, i64 16, !12, i64 24, !12, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"asm_int_op", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!13 = !{!"sched", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288}
!14 = !{!"vectorize", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72}
!15 = !{!"int", !10, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!"addr_space", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!18 = !{!"calls", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184}
!19 = !{!"c", !9, i64 0}
!20 = !{!"cxx", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96}
!21 = !{!"emutls", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !10, i64 64, !10, i64 65}
!22 = !{!"target_option_hooks", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!23 = !{!10, !10, i64 0}
!24 = !{i8 0, i8 2}
!25 = !{i32 0, i32 256}
!26 = !{!9, !9, i64 0}
!27 = !{!16, !16, i64 0}
!28 = !{!15, !15, i64 0}
!29 = !{!30, !15, i64 4}
!30 = !{!"rtl_data", !31, i64 0, !32, i64 40, !33, i64 96, !34, i64 112, !36, i64 208, !37, i64 248, !15, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !9, i64 376, !9, i64 384, !9, i64 392, !16, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !15, i64 432, !15, i64 436, !15, i64 440, !15, i64 444, !15, i64 448, !15, i64 452, !9, i64 456, !10, i64 464, !10, i64 465, !10, i64 466, !10, i64 467, !10, i64 468, !10, i64 469, !10, i64 470, !10, i64 471, !10, i64 472, !10, i64 473, !10, i64 474, !10, i64 475, !10, i64 476, !10, i64 477, !10, i64 478, !10, i64 479, !10, i64 480, !10, i64 481, !10, i64 482, !10, i64 483, !10, i64 484, !10, i64 485}
!31 = !{!"expr_status", !15, i64 0, !15, i64 4, !15, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!32 = !{!"emit_status", !15, i64 0, !15, i64 4, !9, i64 8, !9, i64 16, !9, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !9, i64 48}
!33 = !{!"varasm_status", !9, i64 0, !15, i64 8}
!34 = !{!"incoming_args", !15, i64 0, !15, i64 4, !15, i64 8, !9, i64 16, !35, i64 24, !9, i64 88}
!35 = !{!"ix86_args", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60}
!36 = !{!"function_subsections", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!37 = !{!"rtl_eh", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !10, i64 48}
!38 = !{!7, !9, i64 1488}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = !{!43, !15, i64 0}
!43 = !{!"cgraph_rtl_info", !15, i64 0}
!44 = !{!7, !9, i64 1552}
!45 = distinct !{!45, !40}
!46 = !{!7, !9, i64 1536}
!47 = !{!7, !9, i64 1544}
!48 = !{!49, !9, i64 8}
!49 = !{!"args_size", !16, i64 0, !9, i64 8}
!50 = !{!7, !9, i64 1088}
!51 = !{!49, !16, i64 0}
!52 = !{!30, !15, i64 116}
!53 = !{!30, !15, i64 120}
!54 = !{!55, !9, i64 344}
!55 = !{!"lang_hooks", !9, i64 0, !16, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !56, i64 240, !57, i64 248, !58, i64 256, !59, i64 272, !60, i64 432, !61, i64 560, !9, i64 584, !9, i64 592, !9, i64 600, !9, i64 608, !9, i64 616, !9, i64 624, !9, i64 632, !9, i64 640, !9, i64 648, !9, i64 656, !9, i64 664, !10, i64 672}
!56 = !{!"lang_hooks_for_tree_inlining", !9, i64 0}
!57 = !{!"lang_hooks_for_callgraph", !9, i64 0}
!58 = !{!"lang_hooks_for_tree_dump", !9, i64 0, !9, i64 8}
!59 = !{!"lang_hooks_for_decls", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152}
!60 = !{!"lang_hooks_for_types", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !10, i64 120}
!61 = !{!"lang_hooks_for_lto", !9, i64 0, !9, i64 8, !9, i64 16}
!62 = !{!30, !15, i64 440}
!63 = distinct !{!63, !40}
!64 = !{!30, !15, i64 0}
!65 = !{i64 0, i64 8, !27, i64 8, i64 8, !26}
!66 = !{!30, !15, i64 8}
!67 = !{!30, !9, i64 200}
!68 = !{!30, !15, i64 312}
!69 = distinct !{!69, !40}
!70 = !{!71, !15, i64 64}
!71 = !{!"arg_data", !9, i64 0, !15, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !15, i64 56, !15, i64 60, !15, i64 64, !72, i64 72, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !15, i64 176}
!72 = !{!"locate_and_pad_arg_data", !49, i64 0, !49, i64 16, !49, i64 32, !49, i64 48, !15, i64 64, !15, i64 68}
!73 = !{!71, !9, i64 32}
!74 = !{i32 0, i32 2}
!75 = !{!71, !9, i64 144}
!76 = distinct !{!76, !40}
!77 = !{!71, !15, i64 60}
!78 = distinct !{!78, !40}
!79 = !{!7, !9, i64 1504}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = !{!71, !9, i64 160}
!83 = !{!71, !9, i64 152}
!84 = !{!71, !16, i64 72}
!85 = distinct !{!85, !40}
!86 = !{!87, !9, i64 64}
!87 = !{!"function", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124, !9, i64 128, !15, i64 136, !15, i64 137, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139}
!88 = !{!71, !9, i64 168}
!89 = distinct !{!89, !40}
!90 = !{!71, !9, i64 16}
!91 = distinct !{!91, !40}
!92 = !{!93, !9, i64 0}
!93 = !{!"simple_bitmap_def", !9, i64 0, !15, i64 8, !15, i64 12, !10, i64 16}
!94 = !{!30, !10, i64 475}
!95 = !{!96, !15, i64 12}
!96 = !{!"call_expr_arg_iterator_d", !9, i64 0, !15, i64 8, !15, i64 12}
!97 = !{!96, !15, i64 8}
!98 = !{!96, !9, i64 0}
!99 = distinct !{!99, !40}
!100 = distinct !{!100, !40}
!101 = !{!71, !9, i64 0}
!102 = distinct !{!102, !40}
!103 = !{!71, !15, i64 56}
!104 = !{!71, !15, i64 8}
!105 = !{!71, !9, i64 40}
!106 = !{!7, !9, i64 1576}
!107 = !{!7, !9, i64 1560}
!108 = !{!71, !9, i64 80}
!109 = distinct !{!109, !40}
!110 = distinct !{!110, !40}
!111 = !{!71, !9, i64 24}
!112 = distinct !{!112, !40}
!113 = !{!71, !9, i64 96}
!114 = !{!71, !16, i64 88}
!115 = !{!71, !9, i64 112}
!116 = !{!71, !16, i64 104}
!117 = !{!71, !15, i64 140}
!118 = !{!71, !15, i64 136}
!119 = distinct !{!119, !40}
!120 = !{!71, !9, i64 48}
!121 = distinct !{!121, !40}
!122 = distinct !{!122, !40}
!123 = distinct !{!123, !40}
!124 = distinct !{!124, !40}
!125 = !{!71, !15, i64 176}
!126 = !{!71, !9, i64 128}
!127 = !{!71, !16, i64 120}
!128 = distinct !{!128, !40}
!129 = distinct !{!129, !40}
!130 = distinct !{!130, !40}
!131 = distinct !{!131, !40}
!132 = !{!133, !9, i64 216}
!133 = !{!"gcc_debug_hooks", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !15, i64 248}
!134 = !{!30, !10, i64 481}
!135 = !{!93, !15, i64 8}
!136 = distinct !{!136, !40}
!137 = !{!138, !15, i64 0}
!138 = !{!"rtvec_def", !15, i64 0, !10, i64 8}
!139 = distinct !{!139, !40}
!140 = distinct !{!140, !40}
!141 = distinct !{!141, !40}
!142 = !{!55, !9, i64 448}
!143 = !{!144, !9, i64 0}
!144 = !{!"arg", !9, i64 0, !15, i64 8, !9, i64 16, !15, i64 24, !72, i64 32, !9, i64 104}
!145 = !{!144, !15, i64 8}
!146 = !{!144, !15, i64 24}
!147 = !{!144, !9, i64 16}
!148 = !{!144, !16, i64 32}
!149 = !{!144, !9, i64 40}
!150 = distinct !{!150, !40}
!151 = !{!144, !15, i64 100}
!152 = !{!144, !16, i64 64}
!153 = distinct !{!153, !40}
!154 = !{!144, !16, i64 48}
!155 = !{!144, !9, i64 104}
!156 = !{!144, !9, i64 88}
!157 = !{!144, !16, i64 80}
!158 = distinct !{!158, !40}
!159 = distinct !{!159, !40}
!160 = distinct !{!160, !40}
!161 = distinct !{!161, !40}
!162 = distinct !{!162, !40}
