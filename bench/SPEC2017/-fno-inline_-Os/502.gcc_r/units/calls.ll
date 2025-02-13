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
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.arg = type { ptr, i32, ptr, i32, %struct.locate_and_pad_arg_data, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }

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
define dso_local ptr @prepare_call_address(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 %5) local_unnamed_addr #0 !prof !249 {
  %7 = load i32, ptr %1, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 45
  br i1 %9, label %15, label %10, !prof !250

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
  br i1 %17, label %30, label %18, !prof !250

18:                                               ; preds = %15
  %19 = icmp eq ptr %0, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #18
  br label %21

21:                                               ; preds = %18, %20
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !251
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
define dso_local i32 @setjmp_call_p(ptr noundef %0) local_unnamed_addr #3 !prof !268 {
  %2 = tail call fastcc i32 @special_function_p(ptr noundef %0, i32 noundef 0) #19
  %3 = and i32 %2, 128
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @special_function_p(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !269 !PGOFuncName !270 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %129, label %4, !prof !271

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !272
  %7 = icmp eq ptr %6, null
  br i1 %7, label %129, label %8, !prof !271

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_identifier, ptr %6, i64 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !272
  %11 = icmp ult i32 %10, 18
  br i1 %11, label %12, label %129, !prof !273

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !272
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !274

16:                                               ; preds = %12
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 40
  br i1 %19, label %20, label %129

20:                                               ; preds = %16, %12
  %21 = load i64, ptr %0, align 8
  %22 = and i64 %21, 134217728
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %129, label %24, !prof !275

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %6, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !272
  %27 = load i8, ptr %26, align 1, !tbaa !272
  switch i32 %10, label %41 [
    i32 6, label %28
    i32 16, label %33
  ], !prof !276

28:                                               ; preds = %24
  %29 = icmp eq i8 %27, 97
  br i1 %29, label %30, label %41, !prof !277

30:                                               ; preds = %28
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(7) @.str.3) #19
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %129

33:                                               ; preds = %24
  %34 = icmp eq i8 %27, 95
  br i1 %34, label %35, label %67, !prof !278

35:                                               ; preds = %33
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(17) @.str.4) #19
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45, !prof !279

38:                                               ; preds = %35, %30
  %39 = phi i8 [ 95, %35 ], [ 97, %30 ]
  %40 = or i32 %1, 32
  br label %41

41:                                               ; preds = %24, %38, %28
  %42 = phi i8 [ %27, %28 ], [ %39, %38 ], [ %27, %24 ]
  %43 = phi i32 [ %1, %28 ], [ %40, %38 ], [ %1, %24 ]
  %44 = icmp eq i8 %42, 95
  br i1 %44, label %45, label %67, !prof !280

45:                                               ; preds = %35, %41
  %46 = phi i32 [ %43, %41 ], [ %1, %35 ]
  %47 = getelementptr inbounds i8, ptr %26, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !272
  %49 = icmp eq i8 %48, 95
  br i1 %49, label %50, label %61, !prof !281

50:                                               ; preds = %45
  %51 = getelementptr inbounds i8, ptr %26, i64 2
  %52 = load i8, ptr %51, align 1, !tbaa !272
  switch i8 %52, label %61 [
    i8 98, label %53
    i8 120, label %59
  ], !prof !282

53:                                               ; preds = %50
  %54 = getelementptr inbounds i8, ptr %26, i64 3
  %55 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(8) @.str.5, i64 noundef 7) #19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61, !prof !283

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %26, i64 10
  br label %64

59:                                               ; preds = %50
  %60 = getelementptr inbounds i8, ptr %26, i64 3
  br label %64

61:                                               ; preds = %50, %53, %45
  %62 = getelementptr inbounds i8, ptr %26, i64 2
  %63 = select i1 %49, ptr %62, ptr %47, !prof !284
  br label %64

64:                                               ; preds = %59, %57, %61
  %65 = phi ptr [ %63, %61 ], [ %58, %57 ], [ %60, %59 ]
  %66 = load i8, ptr %65, align 1, !tbaa !272
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
  ], !prof !285

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %70, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !272
  switch i8 %73, label %88 [
    i8 101, label %74
    i8 105, label %80
    i8 97, label %83
  ], !prof !286

74:                                               ; preds = %71
  %75 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(7) @.str.6) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(15) @.str.7) #19
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %129

80:                                               ; preds = %71
  %81 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(10) @.str.8) #19
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %91

83:                                               ; preds = %71
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(8) @.str.9) #19
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %129

86:                                               ; preds = %83, %80, %77, %74
  %87 = or i32 %69, 128
  br label %88

88:                                               ; preds = %71, %86
  %89 = phi i32 [ %87, %86 ], [ %69, %71 ]
  %90 = icmp eq i8 %73, 105
  br i1 %90, label %91, label %129, !prof !287

91:                                               ; preds = %80, %88
  %92 = phi i32 [ %89, %88 ], [ %69, %80 ]
  %93 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(11) @.str.10) #19
  %94 = icmp eq i32 %93, 0
  %95 = or i32 %92, 8
  %96 = select i1 %94, i32 %95, i32 %92
  br label %129

97:                                               ; preds = %67
  %98 = getelementptr inbounds i8, ptr %70, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !272
  %100 = icmp eq i8 %99, 115
  br i1 %100, label %101, label %129, !prof !288

101:                                              ; preds = %97
  %102 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(8) @.str.11) #19
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %118, label %129

104:                                              ; preds = %67
  %105 = getelementptr inbounds i8, ptr %70, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !272
  %107 = icmp eq i8 %106, 102
  br i1 %107, label %108, label %129, !prof !289

108:                                              ; preds = %104
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(6) @.str.12) #19
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %118, label %129, !prof !290

111:                                              ; preds = %67
  %112 = getelementptr inbounds i8, ptr %70, i64 1
  %113 = load i8, ptr %112, align 1, !tbaa !272
  %114 = icmp eq i8 %113, 101
  br i1 %114, label %115, label %129, !prof !291

115:                                              ; preds = %111
  %116 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(11) @.str.13) #19
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %129, !prof !292

118:                                              ; preds = %115, %108, %101
  %119 = or i32 %69, 128
  br label %129

120:                                              ; preds = %67
  %121 = getelementptr inbounds i8, ptr %70, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !272
  %123 = icmp eq i8 %122, 111
  br i1 %123, label %124, label %129, !prof !293

124:                                              ; preds = %120
  %125 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(8) @.str.14) #19
  %126 = icmp eq i32 %125, 0
  %127 = or i32 %69, 8
  %128 = select i1 %126, i32 %127, i32 %69
  br label %129

129:                                              ; preds = %67, %77, %30, %97, %101, %104, %108, %111, %115, %83, %124, %91, %88, %120, %118, %20, %16, %8, %4, %2
  %130 = phi i32 [ %1, %20 ], [ %1, %16 ], [ %1, %8 ], [ %1, %4 ], [ %1, %2 ], [ %89, %88 ], [ %69, %120 ], [ %119, %118 ], [ %96, %91 ], [ %128, %124 ], [ %69, %83 ], [ %69, %111 ], [ %69, %115 ], [ %69, %104 ], [ %69, %108 ], [ %69, %101 ], [ %69, %97 ], [ %1, %30 ], [ %69, %77 ], [ %69, %67 ]
  ret i32 %130
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_alloca_call_p(ptr noundef %0) local_unnamed_addr #0 !prof !294 {
  %2 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #19, !range !295
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %12, label %4, !prof !296

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !296

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @special_function_p(ptr noundef nonnull %5, i32 noundef 0) #19
  %9 = and i32 %8, 32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12, !prof !297

11:                                               ; preds = %7, %4
  br label %12

12:                                               ; preds = %7, %1, %11
  %13 = phi i8 [ 0, %11 ], [ 0, %1 ], [ 1, %7 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !294 !PGOFuncName !298 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !299
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !294 !PGOFuncName !300 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !297

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !272
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @alloca_call_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 !prof !301 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 59
  br i1 %4, label %5, label %21, !prof !302

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !272
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 121
  br i1 %10, label %11, label %21, !prof !303

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !272
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 29
  br i1 %16, label %17, label %21, !prof !304

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @special_function_p(ptr noundef nonnull %13, i32 noundef 0) #19
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22, !prof !304

21:                                               ; preds = %17, %11, %5, %1
  br label %22

22:                                               ; preds = %17, %21
  %23 = phi i8 [ 0, %21 ], [ 1, %17 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @flags_from_decl_or_type(ptr noundef %0) local_unnamed_addr #3 !prof !305 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !306
  switch i32 %5, label %56 [
    i32 3, label %6
    i32 2, label %52
  ], !prof !307

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 524288
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !308

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i32 [ 16, %11 ], [ 0, %6 ]
  %14 = and i32 %8, 262144
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !308

16:                                               ; preds = %12
  %17 = or disjoint i32 %13, 128
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %17, %16 ], [ %13, %12 ]
  %20 = and i64 %2, 1048576
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %27, label %22, !prof !309

22:                                               ; preds = %18
  %23 = and i64 %2, 524288
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = or i32 %19, %25
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i32 [ %19, %18 ], [ %26, %22 ]
  %29 = and i32 %8, 134217728
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31, !prof !310

31:                                               ; preds = %27
  %32 = or i32 %28, 2
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i32 [ %32, %31 ], [ %28, %27 ]
  %35 = and i32 %8, 268435456
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37, !prof !308

37:                                               ; preds = %33
  %38 = or i32 %34, 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi i32 [ %38, %37 ], [ %34, %33 ]
  %41 = and i32 %8, 131072
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !308

43:                                               ; preds = %39
  %44 = or i32 %40, 512
  br label %45

45:                                               ; preds = %43, %39
  %46 = phi i32 [ %44, %43 ], [ %40, %39 ]
  %47 = trunc i64 %2 to i32
  %48 = lshr i32 %47, 19
  %49 = and i32 %48, 64
  %50 = or i32 %46, %49
  %51 = tail call fastcc i32 @special_function_p(ptr noundef nonnull %0, i32 noundef %50) #19
  br label %56

52:                                               ; preds = %1
  %53 = and i64 %2, 1572864
  %54 = icmp eq i64 %53, 1048576
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %52, %1, %45
  %57 = phi i32 [ %51, %45 ], [ 0, %1 ], [ %55, %52 ]
  %58 = and i64 %2, 524288
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %62, label %60, !prof !311

60:                                               ; preds = %56
  %61 = or i32 %57, 8
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi i32 [ %61, %60 ], [ %57, %56 ]
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @call_expr_flags(ptr noundef %0) local_unnamed_addr #0 !prof !312 {
  %2 = tail call ptr @get_callee_fndecl(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !313

4:                                                ; preds = %1
  %5 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %2) #19
  br label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !272
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !272
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12, !prof !314

12:                                               ; preds = %6
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 10
  br i1 %15, label %16, label %20, !prof !315

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !272
  %19 = tail call i32 @flags_from_decl_or_type(ptr noundef %18) #19
  br label %20

20:                                               ; preds = %6, %12, %16, %4
  %21 = phi i32 [ %5, %4 ], [ %19, %16 ], [ 0, %12 ], [ 0, %6 ]
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @shift_return_value(i32 noundef %0, i8 noundef zeroext %1, ptr noundef %2) local_unnamed_addr #0 !prof !316 {
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
  %18 = load i8, ptr %17, align 1, !tbaa !272
  %19 = zext i32 %0 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !272
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
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !317 !PGOFuncName !318 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !272
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @force_expand_binop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_call(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !249 {
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
  store i8 %25, ptr %4, align 1, !tbaa !272
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  %26 = load i32, ptr @target_flags, align 4, !tbaa !306
  %27 = and i32 %26, 8196
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33, !prof !319

29:                                               ; preds = %3
  %30 = tail call i32 @ix86_cfun_abi() #18
  %31 = icmp eq i32 %30, 1
  %32 = load i64, ptr %0, align 8
  br label %33

33:                                               ; preds = %29, %3
  %34 = phi i64 [ %22, %3 ], [ %32, %29 ]
  %35 = phi i1 [ true, %3 ], [ %31, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, ptr %9, align 4, !tbaa !306
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  %37 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  %38 = load ptr, ptr @stack_usage_map, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #20
  store ptr null, ptr %13, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #20
  store i32 0, ptr %14, align 4, !tbaa !306
  %39 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #20
  %40 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %41 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !272
  %43 = trunc i64 %34 to i32
  %44 = lshr i32 %43, 19
  %45 = and i32 %44, 64
  %46 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %0) #18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48, !prof !330

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !272
  %51 = tail call i32 @flags_from_decl_or_type(ptr noundef nonnull %46) #19
  br label %58

52:                                               ; preds = %33
  %53 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !272
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !272
  %57 = tail call i32 @flags_from_decl_or_type(ptr noundef %56) #19
  br label %58

58:                                               ; preds = %52, %48
  %59 = phi ptr [ %56, %52 ], [ %46, %48 ]
  %60 = phi i32 [ %57, %52 ], [ %51, %48 ]
  %61 = phi ptr [ %56, %52 ], [ %50, %48 ]
  %62 = or i32 %45, %60
  store i32 %62, ptr %10, align 4, !tbaa !306
  %63 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !272
  %65 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !331
  %66 = tail call ptr %65(ptr noundef %61, i32 noundef 0) #18
  %67 = load i64, ptr %64, align 8
  %68 = trunc i64 %67 to i32
  %69 = and i32 %68, 65535
  %70 = add nsw i32 %69, -15
  %71 = icmp ult i32 %70, 4
  br i1 %71, label %72, label %74, !prof !332

72:                                               ; preds = %58
  %73 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 34, ptr noundef nonnull @.str.2) #18
  br label %74

74:                                               ; preds = %58, %72
  %75 = and i32 %60, 3
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %122, label %77, !prof !250

77:                                               ; preds = %74
  %78 = and i32 %60, 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %122

80:                                               ; preds = %77
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
  br i1 %110, label %111, label %102, !llvm.loop !333

111:                                              ; preds = %108, %99
  %112 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %0, ptr noundef nonnull %16) #19
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %111, %114
  %115 = phi ptr [ %118, %114 ], [ %112, %111 ]
  %116 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %117 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %115, ptr noundef %116, i32 noundef 0, i32 noundef 0) #19
  %118 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %16) #19
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %114, !llvm.loop !335

120:                                              ; preds = %114, %111
  %121 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #20
  br label %1371

122:                                              ; preds = %107, %96, %77, %74
  %123 = tail call i32 @ix86_reg_parm_stack_space(ptr noundef %59) #18
  br i1 %47, label %127, label %124, !prof !330

124:                                              ; preds = %122
  %125 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !272
  br label %127

127:                                              ; preds = %122, %124
  %128 = phi ptr [ %126, %124 ], [ %61, %122 ]
  %129 = tail call i32 @ix86_function_type_abi(ptr noundef %128) #18
  %130 = icmp ne i32 %129, 1
  %131 = icmp sgt i32 %123, 0
  %132 = select i1 %130, i1 %131, i1 false
  br i1 %132, label %133, label %141, !prof !319

133:                                              ; preds = %127
  %134 = load i32, ptr @target_flags, align 4, !tbaa !306
  %135 = and i32 %134, 8196
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = tail call i32 @ix86_cfun_abi() #18
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  store i32 1, ptr %9, align 4, !tbaa !306
  br label %141

141:                                              ; preds = %140, %137, %133, %127
  %142 = tail call i32 @aggregate_value_p(ptr noundef nonnull %0, ptr noundef %59) #18
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %163, label %144, !prof !250

144:                                              ; preds = %141
  %145 = and i32 %62, -8
  store i32 %145, ptr %10, align 4, !tbaa !306
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
  %162 = load ptr, ptr %161, align 8, !tbaa !272
  br label %163

163:                                              ; preds = %158, %141
  %164 = phi i32 [ %62, %141 ], [ %145, %158 ]
  %165 = phi ptr [ null, %141 ], [ %162, %158 ]
  %166 = phi ptr [ %1, %141 ], [ %160, %158 ]
  %167 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !306
  br i1 %47, label %177, label %168, !prof !330

168:                                              ; preds = %163
  %169 = tail call ptr @cgraph_rtl_info(ptr noundef nonnull %46) #18
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %171, !prof !336

171:                                              ; preds = %168
  %172 = load i32, ptr %169, align 4, !tbaa !337
  %173 = icmp ne i32 %172, 0
  %174 = icmp ult i32 %172, %167
  %175 = select i1 %173, i1 %174, i1 false
  br i1 %175, label %176, label %177, !prof !339

176:                                              ; preds = %171
  br label %177

177:                                              ; preds = %168, %171, %176, %163
  %178 = phi i32 [ %167, %163 ], [ %172, %176 ], [ %167, %171 ], [ %167, %168 ]
  %179 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !272
  %181 = load i64, ptr %180, align 8
  %182 = trunc i64 %181 to i16
  switch i16 %182, label %183 [
    i16 10, label %184
    i16 12, label %184
  ], !prof !340

183:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2140, ptr noundef nonnull @.str.1) #18
  br label %184

184:                                              ; preds = %177, %177, %183
  %185 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !272
  %187 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !341
  %188 = icmp eq ptr %187, null
  br i1 %188, label %217, label %189, !prof !250

189:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #20
  %190 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %0, ptr noundef nonnull %17) #19
  %191 = icmp eq ptr %190, null
  br i1 %191, label %212, label %192

192:                                              ; preds = %189, %208
  %193 = phi i32 [ %209, %208 ], [ 0, %189 ]
  %194 = phi ptr [ %210, %208 ], [ %190, %189 ]
  %195 = getelementptr inbounds %struct.tree_common, ptr %194, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !272
  %197 = icmp eq ptr %196, null
  br i1 %197, label %208, label %198

198:                                              ; preds = %192
  %199 = load i64, ptr %196, align 8
  %200 = and i64 %199, 65535
  %201 = icmp eq i64 %200, 13
  br i1 %201, label %202, label %208

202:                                              ; preds = %198
  %203 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !341
  %204 = tail call zeroext i8 %203(ptr noundef nonnull %196) #18
  %205 = icmp ne i8 %204, 0
  %206 = zext i1 %205 to i32
  %207 = add nsw i32 %193, %206
  br label %208

208:                                              ; preds = %202, %198, %192
  %209 = phi i32 [ %193, %198 ], [ %193, %192 ], [ %207, %202 ]
  %210 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %17) #19
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %192, !llvm.loop !342

212:                                              ; preds = %208, %189
  %213 = phi i32 [ 0, %189 ], [ %209, %208 ]
  %214 = getelementptr inbounds %struct.tree_type, ptr %186, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !272
  %216 = tail call fastcc ptr @split_complex_types(ptr noundef %215) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #20
  br label %220

217:                                              ; preds = %184
  %218 = getelementptr inbounds %struct.tree_type, ptr %186, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !272
  br label %220

220:                                              ; preds = %217, %212
  %221 = phi i32 [ %213, %212 ], [ 0, %217 ]
  %222 = phi ptr [ %216, %212 ], [ %219, %217 ]
  %223 = and i32 %164, 32
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %230, label %225, !prof !250

225:                                              ; preds = %220
  %226 = load ptr, ptr @cfun, align 8, !tbaa !320
  %227 = getelementptr inbounds %struct.function, ptr %226, i64 0, i32 20
  %228 = load i32, ptr %227, align 8
  %229 = or i32 %228, 524288
  store i32 %229, ptr %227, align 8
  br label %230

230:                                              ; preds = %225, %220
  %231 = icmp eq ptr %165, null
  br i1 %231, label %263, label %232, !prof !250

232:                                              ; preds = %230
  %233 = icmp eq ptr %66, null
  br i1 %233, label %234, label %263

234:                                              ; preds = %232
  %235 = load i32, ptr %165, align 8
  %236 = and i32 %235, 65535
  %237 = icmp eq i32 %236, 37
  br i1 %237, label %238, label %254

238:                                              ; preds = %234
  %239 = load i32, ptr @target_flags, align 4, !tbaa !306
  %240 = and i32 %239, 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %238
  %243 = tail call i32 @ix86_cfun_abi() #18
  %244 = icmp eq i32 %243, 1
  %245 = load i32, ptr @stack_arg_under_construction, align 4
  %246 = icmp ne i32 %245, 0
  %247 = select i1 %244, i1 %246, i1 false
  br i1 %247, label %251, label %257

248:                                              ; preds = %238
  %249 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !306
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %242, %248
  %252 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !320
  %253 = icmp eq ptr %165, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %251, %234
  %255 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %165, i8 noundef zeroext 0) #18
  %256 = tail call ptr @copy_addr_to_reg(ptr noundef %255) #18
  br label %257

257:                                              ; preds = %242, %248, %251, %254
  %258 = phi ptr [ %256, %254 ], [ %165, %251 ], [ %165, %248 ], [ %165, %242 ]
  %259 = getelementptr inbounds %struct.tree_common, ptr %186, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !272
  %261 = tail call ptr @build_pointer_type(ptr noundef %260) #18
  %262 = tail call ptr @make_tree(ptr noundef %261, ptr noundef %258) #18
  br label %263

263:                                              ; preds = %257, %232, %230
  %264 = phi ptr [ %262, %257 ], [ null, %232 ], [ null, %230 ]
  %265 = phi i1 [ false, %257 ], [ true, %232 ], [ true, %230 ]
  %266 = phi i32 [ 1, %257 ], [ 0, %232 ], [ 0, %230 ]
  %267 = load ptr, ptr %40, align 8, !tbaa !272
  %268 = getelementptr inbounds %struct.tree_int_cst, ptr %267, i64 0, i32 1
  %269 = load i64, ptr %268, align 8, !tbaa !272
  %270 = trunc i64 %269 to i32
  %271 = add i32 %221, -3
  %272 = add i32 %271, %266
  %273 = add i32 %272, %270
  %274 = icmp eq ptr %222, null
  br i1 %274, label %275, label %276, !prof !330

275:                                              ; preds = %263
  call void @init_cumulative_args(ptr noundef nonnull %7, ptr noundef nonnull %186, ptr noundef null, ptr noundef %46) #18
  br label %288

276:                                              ; preds = %263
  %277 = tail call i32 @list_length(ptr noundef nonnull %222) #18
  %278 = add nsw i32 %277, %266
  call void @init_cumulative_args(ptr noundef nonnull %7, ptr noundef nonnull %186, ptr noundef null, ptr noundef %46) #18
  %279 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 8), align 8, !tbaa !343
  %280 = call zeroext i8 %279(ptr noundef nonnull %7) #18
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %282, label %288, !prof !330

282:                                              ; preds = %276
  %283 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 9), align 8, !tbaa !344
  %284 = call zeroext i8 %283(ptr noundef nonnull %7) #18
  %285 = icmp eq i8 %284, 0
  %286 = add nsw i32 %278, -1
  %287 = select i1 %285, i32 %286, i32 %273
  br label %288

288:                                              ; preds = %275, %282, %276
  %289 = phi i32 [ %278, %276 ], [ %287, %282 ], [ %273, %275 ]
  %290 = sext i32 %273 to i64
  %291 = mul nsw i64 %290, 184
  %292 = alloca i8, i64 %291, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %292, i8 0, i64 %291, i1 false)
  %293 = load i64, ptr %0, align 8
  %294 = trunc i64 %293 to i32
  %295 = lshr i32 %294, 29
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  call fastcc void @initialize_argument_information(i32 noundef %273, ptr noundef nonnull %292, ptr noundef nonnull %5, i32 noundef %289, ptr noundef nonnull %0, ptr noundef %264, ptr noundef %46, ptr noundef %61, ptr noundef nonnull %7, i32 noundef %123, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %4, i8 noundef zeroext %297) #19
  %298 = getelementptr inbounds %struct.args_size, ptr %5, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !345
  %300 = icmp eq ptr %299, null
  %301 = load i32, ptr %9, align 4
  %302 = select i1 %300, i32 %301, i32 1, !prof !250
  %303 = call fastcc i32 @finalize_must_preallocate(i32 noundef %302, i32 noundef %273, ptr noundef nonnull %292, ptr noundef nonnull %5) #19
  store i32 %303, ptr %9, align 4, !tbaa !306
  br i1 %231, label %327, label %304, !prof !250

304:                                              ; preds = %288
  %305 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 8), align 16, !tbaa !320
  %306 = call i32 @reg_mentioned_p(ptr noundef %305, ptr noundef nonnull %165) #18
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %304
  %309 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !320
  %310 = call i32 @reg_mentioned_p(ptr noundef %309, ptr noundef nonnull %165) #18
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %327, label %312

312:                                              ; preds = %308, %304
  %313 = load ptr, ptr %298, align 8, !tbaa !345
  %314 = icmp eq ptr %313, null
  br i1 %314, label %315, label %325

315:                                              ; preds = %312
  %316 = load i32, ptr @target_flags, align 4, !tbaa !306
  %317 = and i32 %316, 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %315
  %320 = call i32 @ix86_cfun_abi() #18
  %321 = icmp ne i32 %320, 1
  %322 = load i64, ptr %5, align 8
  %323 = icmp ne i64 %322, 0
  %324 = select i1 %321, i1 %323, i1 false
  br i1 %324, label %325, label %327

325:                                              ; preds = %319, %312
  %326 = call ptr @copy_to_reg(ptr noundef nonnull %165) #18
  br label %327

327:                                              ; preds = %325, %319, %315, %308, %288
  %328 = phi ptr [ %326, %325 ], [ %165, %315 ], [ %165, %319 ], [ %165, %308 ], [ null, %288 ]
  %329 = load i32, ptr @expand_call.currently_expanding_call, align 4, !tbaa !306
  %330 = add nsw i32 %329, 1
  store i32 %330, ptr @expand_call.currently_expanding_call, align 4, !tbaa !306
  %331 = icmp ne i32 %329, 0
  %332 = load i32, ptr @flag_optimize_sibling_calls, align 4
  %333 = icmp eq i32 %332, 0
  %334 = select i1 %331, i1 true, i1 %333
  %335 = load ptr, ptr %298, align 8
  %336 = icmp ne ptr %335, null
  %337 = select i1 %334, i1 true, i1 %336
  br i1 %337, label %398, label %338, !prof !347

338:                                              ; preds = %327
  %339 = call zeroext i8 @dbg_cnt(i32 noundef 37) #18
  %340 = icmp eq i8 %339, 0
  %341 = load i8, ptr %4, align 1
  %342 = icmp eq i8 %341, 0
  %343 = select i1 %340, i1 true, i1 %342
  br i1 %343, label %398, label %344, !prof !348

344:                                              ; preds = %338
  %345 = icmp eq ptr %328, null
  br i1 %345, label %346, label %398, !prof !349

346:                                              ; preds = %344
  %347 = call i32 @ix86_function_type_abi(ptr noundef nonnull %186) #18
  %348 = icmp eq i32 %347, 1
  %349 = load ptr, ptr @current_function_decl, align 8, !tbaa !320
  %350 = getelementptr inbounds %struct.tree_common, ptr %349, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !272
  %352 = call i32 @ix86_function_type_abi(ptr noundef %351) #18
  %353 = icmp ne i32 %352, 1
  %354 = xor i1 %348, %353
  br i1 %354, label %355, label %398, !prof !349

355:                                              ; preds = %346
  %356 = call i32 @ix86_reg_parm_stack_space(ptr noundef %46) #18
  %357 = icmp eq i32 %123, %356
  br i1 %357, label %358, label %398, !prof !349

358:                                              ; preds = %355
  %359 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 46), align 8, !tbaa !350
  %360 = call zeroext i8 %359(ptr noundef %46, ptr noundef nonnull %0) #18
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %398, label %362, !prof !351

362:                                              ; preds = %358
  %363 = load i32, ptr %10, align 4, !tbaa !306
  %364 = and i32 %363, 136
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %398, !prof !349

366:                                              ; preds = %362
  %367 = load ptr, ptr %179, align 8, !tbaa !272
  %368 = getelementptr inbounds %struct.tree_common, ptr %367, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !272
  %370 = load i64, ptr %369, align 8
  %371 = and i64 %370, 524288
  %372 = icmp eq i64 %371, 0
  br i1 %372, label %373, label %398, !prof !349

373:                                              ; preds = %366
  br i1 %47, label %378, label %374, !prof !351

374:                                              ; preds = %373
  %375 = call ptr @decl_function_context(ptr noundef nonnull %46) #18
  %376 = load ptr, ptr @current_function_decl, align 8, !tbaa !320
  %377 = icmp eq ptr %375, %376
  br i1 %377, label %398, label %378, !prof !351

378:                                              ; preds = %374, %373
  %379 = load i64, ptr %5, align 8, !tbaa !352
  %380 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !353
  %381 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !354
  %382 = sub nsw i32 %380, %381
  %383 = sext i32 %382 to i64
  %384 = icmp sgt i64 %379, %383
  br i1 %384, label %398, label %385, !prof !355

385:                                              ; preds = %378
  %386 = trunc i64 %379 to i32
  %387 = call i32 @ix86_return_pops_args(ptr noundef %46, ptr noundef nonnull %186, i32 noundef %386) #18
  %388 = load ptr, ptr @current_function_decl, align 8, !tbaa !320
  %389 = getelementptr inbounds %struct.tree_common, ptr %388, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !272
  %391 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 1), align 4, !tbaa !353
  %392 = call i32 @ix86_return_pops_args(ptr noundef %388, ptr noundef %390, i32 noundef %391) #18
  %393 = icmp eq i32 %387, %392
  br i1 %393, label %394, label %398, !prof !356

394:                                              ; preds = %385
  %395 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 9), align 8, !tbaa !357
  %396 = call zeroext i8 %395(ptr noundef %46) #18
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %398, label %399, !prof !365

398:                                              ; preds = %338, %327, %344, %346, %355, %358, %362, %366, %374, %378, %385, %394
  store i8 0, ptr %4, align 1, !tbaa !272
  br label %461

399:                                              ; preds = %394
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #20
  %400 = load ptr, ptr @current_function_decl, align 8, !tbaa !320
  %401 = getelementptr inbounds %struct.tree_decl_non_common, ptr %400, i64 0, i32 3
  %402 = load ptr, ptr %401, align 8, !tbaa !272
  %403 = getelementptr inbounds %struct.tree_common, ptr %402, i64 0, i32 2
  %404 = load ptr, ptr %403, align 8, !tbaa !272
  %405 = load i64, ptr %404, align 8
  %406 = trunc i64 %405 to i32
  %407 = lshr i32 %406, 21
  %408 = and i32 %407, 1
  store i32 %408, ptr %18, align 4, !tbaa !306
  %409 = getelementptr inbounds %struct.tree_decl_common, ptr %402, i64 0, i32 2
  %410 = load i64, ptr %409, align 8
  %411 = trunc i64 %410 to i32
  %412 = and i32 %411, 255
  %413 = getelementptr inbounds %struct.tree_common, ptr %186, i64 0, i32 2
  %414 = load ptr, ptr %413, align 8, !tbaa !272
  %415 = load i64, ptr %414, align 8
  %416 = trunc i64 %415 to i32
  %417 = lshr i32 %416, 21
  %418 = and i32 %417, 1
  store i32 %418, ptr %19, align 4, !tbaa !306
  %419 = and i64 %415, 65535
  %420 = icmp eq i64 %419, 14
  br i1 %420, label %421, label %425, !prof !365

421:                                              ; preds = %399
  %422 = call i32 @vector_type_mode(ptr noundef nonnull %414) #18
  %423 = load ptr, ptr %403, align 8, !tbaa !272
  %424 = load ptr, ptr @current_function_decl, align 8, !tbaa !320
  br label %430

425:                                              ; preds = %399
  %426 = getelementptr inbounds %struct.tree_type, ptr %414, i64 0, i32 6
  %427 = load i32, ptr %426, align 4
  %428 = lshr i32 %427, 16
  %429 = and i32 %428, 255
  br label %430

430:                                              ; preds = %425, %421
  %431 = phi ptr [ %424, %421 ], [ %400, %425 ]
  %432 = phi ptr [ %423, %421 ], [ %404, %425 ]
  %433 = phi i32 [ %422, %421 ], [ %429, %425 ]
  %434 = getelementptr inbounds %struct.tree_common, ptr %431, i64 0, i32 2
  %435 = load ptr, ptr %434, align 8, !tbaa !272
  %436 = call i32 @promote_function_mode(ptr noundef %432, i32 noundef %412, ptr noundef nonnull %18, ptr noundef %435, i32 noundef 1) #18
  %437 = load ptr, ptr %413, align 8, !tbaa !272
  %438 = call i32 @promote_function_mode(ptr noundef %437, i32 noundef %433, ptr noundef nonnull %19, ptr noundef nonnull %186, i32 noundef 1) #18
  %439 = icmp eq i32 %412, 0
  br i1 %439, label %459, label %440, !prof !365

440:                                              ; preds = %430
  %441 = icmp eq i32 %436, %438
  br i1 %441, label %442, label %458, !prof !356

442:                                              ; preds = %440
  %443 = icmp eq i32 %412, %436
  %444 = icmp eq i32 %433, %436
  %445 = select i1 %443, i1 %444, i1 false
  br i1 %445, label %459, label %446, !prof !366

446:                                              ; preds = %442
  %447 = load i32, ptr %18, align 4, !tbaa !306
  %448 = load i32, ptr %19, align 4, !tbaa !306
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %458

450:                                              ; preds = %446
  %451 = and i64 %410, 255
  %452 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %451
  %453 = load i8, ptr %452, align 1, !tbaa !272
  %454 = zext i32 %433 to i64
  %455 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %454
  %456 = load i8, ptr %455, align 1, !tbaa !272
  %457 = icmp ult i8 %453, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %450, %446, %440
  store i8 0, ptr %4, align 1, !tbaa !272
  br label %459

459:                                              ; preds = %442, %458, %450, %430
  %460 = phi i32 [ 0, %442 ], [ 1, %458 ], [ 0, %450 ], [ 0, %430 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #20
  br label %461

461:                                              ; preds = %398, %459
  %462 = phi i32 [ 1, %398 ], [ %460, %459 ]
  %463 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !367
  %464 = icmp ugt i32 %178, %463
  br i1 %464, label %465, label %466, !prof !368

465:                                              ; preds = %461
  store i32 %178, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !367
  br label %466

466:                                              ; preds = %461, %465
  %467 = phi i32 [ %178, %465 ], [ %463, %461 ]
  %468 = lshr i32 %467, 3
  %469 = zext nneg i32 %468 to i64
  %470 = getelementptr inbounds %struct.args_size, ptr %6, i64 0, i32 1
  %471 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %472 = icmp eq i32 %37, 0
  %473 = sext i32 %37 to i64
  %474 = icmp sgt i32 %273, 0
  %475 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %476 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %477 = icmp ne i32 %2, 0
  %478 = zext nneg i32 %273 to i64
  %479 = zext nneg i32 %273 to i64
  %480 = zext nneg i32 %273 to i64
  %481 = zext nneg i32 %273 to i64
  br label %483

482:                                              ; preds = %1355
  br i1 %492, label %483, label %1364, !prof !369, !llvm.loop !370

483:                                              ; preds = %466, %482
  %484 = phi ptr [ %166, %466 ], [ %1261, %482 ]
  %485 = phi ptr [ null, %466 ], [ %1357, %482 ]
  %486 = phi i32 [ %462, %466 ], [ 1, %482 ]
  %487 = phi ptr [ %328, %466 ], [ %883, %482 ]
  %488 = phi ptr [ null, %466 ], [ %768, %482 ]
  %489 = phi ptr [ null, %466 ], [ %690, %482 ]
  %490 = phi i32 [ 0, %466 ], [ %689, %482 ]
  %491 = phi i32 [ 0, %466 ], [ %688, %482 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #20
  store i32 0, ptr %20, align 4, !tbaa !306
  %492 = icmp eq i32 %486, 0
  br i1 %492, label %496, label %493, !prof !371

493:                                              ; preds = %483
  %494 = load i32, ptr %10, align 4, !tbaa !306
  %495 = and i32 %494, -257
  br label %501

496:                                              ; preds = %483
  %497 = load i32, ptr @x_rtl, align 8, !tbaa !372
  %498 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %499 = load i32, ptr %10, align 4, !tbaa !306
  %500 = or i32 %499, 256
  br label %501

501:                                              ; preds = %496, %493
  %502 = phi i32 [ %498, %496 ], [ 0, %493 ]
  %503 = phi i32 [ %497, %496 ], [ 0, %493 ]
  %504 = phi i32 [ %500, %496 ], [ %495, %493 ]
  %505 = xor i1 %492, true
  store i32 %504, ptr %10, align 4, !tbaa !306
  store ptr null, ptr %15, align 8, !tbaa !320
  call void @start_sequence() #18
  %506 = load i32, ptr @x_rtl, align 8, !tbaa !372
  %507 = icmp sgt i32 %506, 31
  br i1 %507, label %522, label %508, !prof !330

508:                                              ; preds = %501
  %509 = icmp sgt i32 %506, 0
  br i1 %509, label %510, label %520, !prof !330

510:                                              ; preds = %508
  %511 = and i32 %504, 32
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %522

513:                                              ; preds = %510
  %514 = load i32, ptr @flag_exceptions, align 4, !tbaa !306
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %520, label %516

516:                                              ; preds = %513
  %517 = and i32 %504, 64
  %518 = icmp eq i32 %517, 0
  %519 = or i1 %492, %518
  br i1 %519, label %522, label %523, !prof !374

520:                                              ; preds = %508, %513
  br i1 %492, label %521, label %523, !prof !371

521:                                              ; preds = %520
  call void @do_pending_stack_adjust() #18
  br label %527

522:                                              ; preds = %501, %510, %516
  call void @do_pending_stack_adjust() #18
  br i1 %492, label %527, label %523, !prof !375

523:                                              ; preds = %516, %520, %522
  call fastcc void @precompute_arguments(i32 noundef %273, ptr noundef nonnull %292) #19
  %524 = and i32 %504, 16
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %531, label %526, !prof !376

526:                                              ; preds = %523
  call void @start_sequence() #18
  br label %531

527:                                              ; preds = %521, %522
  %528 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !377
  %529 = icmp eq ptr %528, null
  br i1 %529, label %531, label %530, !prof !356

530:                                              ; preds = %527
  call void @stack_protect_epilogue() #18
  br label %531

531:                                              ; preds = %523, %526, %530, %527
  %532 = phi i32 [ 0, %530 ], [ 0, %527 ], [ %467, %526 ], [ %467, %523 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !378
  %533 = call fastcc i32 @compute_argument_block_size(i32 noundef %123, ptr noundef nonnull %6, ptr noundef %46, ptr noundef %61, i32 noundef %532) #19
  %534 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %535 = load i32, ptr @x_rtl, align 8, !tbaa !372
  %536 = sub nsw i32 %534, %535
  br i1 %492, label %537, label %545, !prof !371

537:                                              ; preds = %531
  %538 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !380
  %539 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !354
  %540 = sext i32 %539 to i64
  %541 = call ptr @plus_constant(ptr noundef %538, i64 noundef %540) #18
  %542 = load i64, ptr %5, align 8, !tbaa !352
  %543 = trunc i64 %542 to i32
  %544 = call ptr @sbitmap_alloc(i32 noundef %543) #18
  store ptr %544, ptr @stored_args_map, align 8, !tbaa !320
  call void @sbitmap_zero(ptr noundef %544) #18
  br label %630

545:                                              ; preds = %531
  %546 = load ptr, ptr %470, align 8, !tbaa !345
  %547 = icmp eq ptr %546, null
  br i1 %547, label %565, label %548, !prof !376

548:                                              ; preds = %545
  %549 = load ptr, ptr %13, align 8, !tbaa !320
  %550 = icmp eq ptr %549, null
  br i1 %550, label %551, label %555

551:                                              ; preds = %548
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %13, ptr noundef null) #18
  %552 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %553 = load i32, ptr @x_rtl, align 8, !tbaa !372
  store i32 %553, ptr %14, align 4, !tbaa !306
  store i32 0, ptr @x_rtl, align 8, !tbaa !372
  %554 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !306
  store i32 0, ptr @stack_arg_under_construction, align 4, !tbaa !306
  br label %555

555:                                              ; preds = %551, %548
  %556 = phi i32 [ %552, %551 ], [ %491, %548 ]
  %557 = phi i32 [ %554, %551 ], [ %490, %548 ]
  %558 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !320
  %559 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %558, ptr noundef nonnull %546) #18
  %560 = load i64, ptr %6, align 8, !tbaa !352
  %561 = call ptr @size_int_kind(i64 noundef %560, i32 noundef 1) #18
  %562 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %559, ptr noundef %561) #18
  %563 = call fastcc ptr @expand_normal(ptr noundef %562) #19
  %564 = call ptr @push_block(ptr noundef %563, i32 noundef 0, i32 noundef 0) #18
  br label %630

565:                                              ; preds = %545
  %566 = load i64, ptr %6, align 8, !tbaa !352
  %567 = trunc i64 %566 to i32
  %568 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !381
  %569 = icmp slt i32 %568, %567
  br i1 %569, label %570, label %571, !prof !382

570:                                              ; preds = %565
  store i32 %567, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !381
  br label %571

571:                                              ; preds = %570, %565
  %572 = load i32, ptr %9, align 4, !tbaa !306
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %630, label %574, !prof !383

574:                                              ; preds = %571
  %575 = load i32, ptr @target_flags, align 4, !tbaa !306
  %576 = and i32 %575, 4
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %581, !prof !383

578:                                              ; preds = %574
  %579 = call i32 @ix86_cfun_abi() #18
  %580 = icmp eq i32 %579, 1
  br i1 %580, label %581, label %608

581:                                              ; preds = %578, %574
  br i1 %47, label %584, label %582, !prof !383

582:                                              ; preds = %581
  %583 = load ptr, ptr %471, align 8, !tbaa !272
  br label %584

584:                                              ; preds = %581, %582
  %585 = phi ptr [ %583, %582 ], [ %61, %581 ]
  %586 = call i32 @ix86_function_type_abi(ptr noundef %585) #18
  %587 = icmp eq i32 %586, 1
  %588 = select i1 %587, i32 0, i32 %123, !prof !383
  %589 = add nsw i32 %588, %567
  %590 = call i32 @llvm.smax.i32(i32 %37, i32 %589)
  store i32 %590, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  %591 = icmp eq ptr %489, null
  br i1 %591, label %594, label %592, !prof !376

592:                                              ; preds = %584
  call void @free(ptr noundef nonnull %489) #19
  %593 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  br label %594

594:                                              ; preds = %592, %584
  %595 = phi i32 [ %593, %592 ], [ %590, %584 ]
  %596 = sext i32 %595 to i64
  %597 = call ptr @xmalloc(i64 noundef %596) #18
  store ptr %597, ptr @stack_usage_map, align 8, !tbaa !320
  br i1 %472, label %599, label %598, !prof !376

598:                                              ; preds = %594
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %597, ptr align 1 %38, i64 %473, i1 false)
  br label %599

599:                                              ; preds = %598, %594
  %600 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  %601 = icmp eq i32 %37, %600
  br i1 %601, label %606, label %602, !prof !383

602:                                              ; preds = %599
  %603 = getelementptr inbounds i8, ptr %597, i64 %473
  %604 = sub nsw i32 %600, %37
  %605 = sext i32 %604 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %603, i8 0, i64 %605, i1 false)
  br label %606

606:                                              ; preds = %602, %599
  %607 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !320
  br label %630

608:                                              ; preds = %578
  %609 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %618

611:                                              ; preds = %608
  %612 = call fastcc i32 @combine_pending_stack_adjustment_and_call(i32 noundef %533, ptr noundef nonnull %6, i32 noundef %468) #19
  %613 = sub nsw i32 %533, %612
  %614 = icmp slt i32 %613, 0
  br i1 %614, label %615, label %617

615:                                              ; preds = %611
  %616 = sub nsw i32 0, %613
  store i32 %616, ptr @x_rtl, align 8, !tbaa !372
  call void @do_pending_stack_adjust() #18
  br label %621

617:                                              ; preds = %611
  store i32 0, ptr @x_rtl, align 8, !tbaa !372
  br label %618

618:                                              ; preds = %617, %608
  %619 = phi i32 [ %613, %617 ], [ %567, %608 ]
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %623

621:                                              ; preds = %615, %618
  %622 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !320
  br label %627

623:                                              ; preds = %618
  %624 = sext i32 %619 to i64
  %625 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %624) #18
  %626 = call ptr @push_block(ptr noundef %625, i32 noundef 0, i32 noundef 0) #18
  br label %627

627:                                              ; preds = %623, %621
  %628 = phi ptr [ %622, %621 ], [ %626, %623 ]
  %629 = call ptr @copy_to_reg(ptr noundef %628) #18
  br label %630

630:                                              ; preds = %571, %627, %606, %555, %537
  %631 = phi i32 [ %491, %537 ], [ %556, %555 ], [ %491, %606 ], [ %491, %627 ], [ %491, %571 ]
  %632 = phi i32 [ %490, %537 ], [ %557, %555 ], [ %490, %606 ], [ %490, %627 ], [ %490, %571 ]
  %633 = phi ptr [ %489, %537 ], [ %489, %555 ], [ %597, %606 ], [ %489, %627 ], [ %489, %571 ]
  %634 = phi ptr [ %541, %537 ], [ %564, %555 ], [ %607, %606 ], [ %629, %627 ], [ null, %571 ]
  %635 = load i32, ptr @target_flags, align 4, !tbaa !306
  %636 = and i32 %635, 4
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %641, !prof !330

638:                                              ; preds = %630
  %639 = call i32 @ix86_cfun_abi() #18
  %640 = icmp eq i32 %639, 1
  br i1 %640, label %641, label %687

641:                                              ; preds = %638, %630
  %642 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !306
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %673, label %644, !prof !250

644:                                              ; preds = %641
  %645 = load i64, ptr %6, align 8, !tbaa !352
  br i1 %47, label %648, label %646

646:                                              ; preds = %644
  %647 = load ptr, ptr %471, align 8, !tbaa !272
  br label %648

648:                                              ; preds = %644, %646
  %649 = phi ptr [ %647, %646 ], [ %61, %644 ]
  %650 = call i32 @ix86_function_type_abi(ptr noundef %649) #18
  %651 = icmp eq i32 %650, 1
  %652 = select i1 %651, i32 0, i32 %123
  %653 = sext i32 %652 to i64
  %654 = add nsw i64 %645, %653
  %655 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %654) #18
  %656 = load ptr, ptr %13, align 8, !tbaa !320
  %657 = icmp eq ptr %656, null
  br i1 %657, label %658, label %668

658:                                              ; preds = %648
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %13, ptr noundef null) #18
  %659 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %660 = load i32, ptr @x_rtl, align 8, !tbaa !372
  store i32 %660, ptr %14, align 4, !tbaa !306
  store i32 0, ptr @x_rtl, align 8, !tbaa !372
  %661 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !306
  store i32 0, ptr @stack_arg_under_construction, align 4, !tbaa !306
  %662 = icmp eq ptr %633, null
  br i1 %662, label %664, label %663

663:                                              ; preds = %658
  call void @free(ptr noundef nonnull %633) #19
  br label %664

664:                                              ; preds = %663, %658
  %665 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  %666 = sext i32 %665 to i64
  %667 = call ptr @xcalloc(i64 noundef %666, i64 noundef 1) #18
  store ptr %667, ptr @stack_usage_map, align 8, !tbaa !320
  store i32 0, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  br label %668

668:                                              ; preds = %664, %648
  %669 = phi i32 [ %659, %664 ], [ %631, %648 ]
  %670 = phi i32 [ %661, %664 ], [ %632, %648 ]
  %671 = phi ptr [ %667, %664 ], [ %633, %648 ]
  %672 = call ptr @allocate_dynamic_stack_space(ptr noundef %655, ptr noundef null, i32 noundef 8) #18
  br label %673

673:                                              ; preds = %668, %641
  %674 = phi i32 [ %669, %668 ], [ %631, %641 ]
  %675 = phi i32 [ %670, %668 ], [ %632, %641 ]
  %676 = phi ptr [ %671, %668 ], [ %633, %641 ]
  br i1 %474, label %680, label %687, !prof !369

677:                                              ; preds = %680
  %678 = add nuw nsw i64 %681, 1
  %679 = icmp eq i64 %678, %478
  br i1 %679, label %687, label %680, !prof !384, !llvm.loop !385

680:                                              ; preds = %673, %677
  %681 = phi i64 [ %678, %677 ], [ 0, %673 ]
  %682 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %681, i32 9
  %683 = load i32, ptr %682, align 8, !tbaa !386
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %677, label %685, !prof !389

685:                                              ; preds = %680
  %686 = call ptr @copy_addr_to_reg(ptr noundef %634) #18
  br label %687

687:                                              ; preds = %677, %673, %685, %638
  %688 = phi i32 [ %674, %685 ], [ %631, %638 ], [ %674, %673 ], [ %674, %677 ]
  %689 = phi i32 [ %675, %685 ], [ %632, %638 ], [ %675, %673 ], [ %675, %677 ]
  %690 = phi ptr [ %676, %685 ], [ %633, %638 ], [ %676, %673 ], [ %676, %677 ]
  %691 = phi ptr [ %686, %685 ], [ %634, %638 ], [ %634, %673 ], [ %634, %677 ]
  call fastcc void @compute_argument_addresses(ptr noundef nonnull %292, ptr noundef %691, i32 noundef %273) #19
  %692 = icmp eq ptr %691, null
  br i1 %692, label %693, label %708, !prof !330

693:                                              ; preds = %687
  %694 = load i64, ptr %6, align 8, !tbaa !352
  %695 = sext i32 %533 to i64
  %696 = icmp eq i64 %694, %695
  br i1 %696, label %708, label %697

697:                                              ; preds = %693
  %698 = load i32, ptr @x_rtl, align 8, !tbaa !372
  %699 = icmp eq i32 %698, 0
  %700 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4
  %701 = icmp ne i32 %700, 0
  %702 = select i1 %699, i1 true, i1 %701
  br i1 %702, label %705, label %703

703:                                              ; preds = %697
  %704 = call fastcc i32 @combine_pending_stack_adjustment_and_call(i32 noundef %533, ptr noundef nonnull %6, i32 noundef %468) #19
  store i32 %704, ptr @x_rtl, align 8, !tbaa !372
  call void @do_pending_stack_adjust() #18
  br label %708

705:                                              ; preds = %697
  %706 = sub nsw i64 %694, %695
  %707 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %706) #18
  call void @anti_adjust_stack(ptr noundef %707) #18
  br label %708

708:                                              ; preds = %703, %705, %693, %687
  %709 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %710 = add nsw i32 %709, 1
  store i32 %710, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %711 = call fastcc ptr @rtx_for_function_call(ptr noundef %46, ptr noundef %42) #19
  %712 = load i64, ptr %64, align 8
  %713 = and i64 %712, 65535
  %714 = icmp eq i64 %713, 14
  br i1 %714, label %715, label %717, !prof !330

715:                                              ; preds = %708
  %716 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %721

717:                                              ; preds = %708
  %718 = load i32, ptr %475, align 4
  %719 = lshr i32 %718, 16
  %720 = and i32 %719, 255
  br label %721

721:                                              ; preds = %717, %715
  %722 = phi i32 [ %716, %715 ], [ %720, %717 ]
  %723 = icmp eq i32 %722, 0
  %724 = icmp ne ptr %487, null
  %725 = select i1 %723, i1 true, i1 %724
  br i1 %725, label %749, label %726, !prof !390

726:                                              ; preds = %721
  %727 = xor i32 %486, 1
  %728 = call ptr @hard_function_value(ptr noundef nonnull %64, ptr noundef %46, ptr noundef %61, i32 noundef %727) #18
  %729 = load i32, ptr %728, align 8
  %730 = and i32 %729, 65535
  %731 = icmp eq i32 %730, 15
  br i1 %731, label %732, label %749, !prof !391

732:                                              ; preds = %726
  %733 = getelementptr inbounds %struct.rtx_def, ptr %728, i64 0, i32 1
  %734 = load ptr, ptr %733, align 8, !tbaa !272
  %735 = getelementptr inbounds %struct.rtvec_def, ptr %734, i64 0, i32 1
  %736 = load ptr, ptr %735, align 8, !tbaa !320
  %737 = getelementptr inbounds %struct.rtx_def, ptr %736, i64 0, i32 1, i32 0, i32 0, i64 1
  %738 = load ptr, ptr %737, align 8, !tbaa !272
  %739 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  %740 = icmp eq ptr %738, %739
  br i1 %740, label %741, label %749

741:                                              ; preds = %732
  %742 = getelementptr inbounds %struct.rtx_def, ptr %736, i64 0, i32 1
  %743 = load ptr, ptr %742, align 8, !tbaa !272
  %744 = load i32, ptr %743, align 8
  %745 = xor i32 %744, %729
  %746 = and i32 %745, 16711680
  %747 = icmp eq i32 %746, 0
  %748 = select i1 %747, ptr %743, ptr %728
  br label %749

749:                                              ; preds = %741, %732, %726, %721
  %750 = phi ptr [ null, %721 ], [ %728, %726 ], [ %728, %732 ], [ %748, %741 ]
  call fastcc void @precompute_register_parameters(i32 noundef %273, ptr noundef nonnull %292, ptr noundef nonnull %8) #19
  %751 = load ptr, ptr %476, align 8, !tbaa !272
  %752 = icmp eq ptr %751, null
  br i1 %752, label %755, label %753, !prof !250

753:                                              ; preds = %749
  %754 = call fastcc ptr @expand_normal(ptr noundef nonnull %751) #19
  br label %755

755:                                              ; preds = %749, %753
  %756 = phi ptr [ %754, %753 ], [ null, %749 ]
  %757 = load i32, ptr @target_flags, align 4, !tbaa !306
  %758 = and i32 %757, 4
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %764, !prof !330

760:                                              ; preds = %755
  %761 = call i32 @ix86_cfun_abi() #18
  %762 = icmp ne i32 %761, 1
  %763 = or i1 %492, %762
  br i1 %763, label %767, label %765, !prof !374

764:                                              ; preds = %755
  br i1 %492, label %767, label %765, !prof !371

765:                                              ; preds = %760, %764
  %766 = call fastcc ptr @save_fixed_argument_area(i32 noundef %123, ptr noundef %691, ptr noundef nonnull %11, ptr noundef nonnull %12) #19
  br label %767

767:                                              ; preds = %765, %764, %760
  %768 = phi ptr [ %766, %765 ], [ %488, %764 ], [ %488, %760 ]
  br i1 %474, label %769, label %849, !prof !369

769:                                              ; preds = %767, %814
  %770 = phi i64 [ %815, %814 ], [ 0, %767 ]
  %771 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %770
  %772 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %770, i32 4
  %773 = load ptr, ptr %772, align 8, !tbaa !392
  %774 = icmp eq ptr %773, null
  br i1 %774, label %779, label %775, !prof !389

775:                                              ; preds = %769
  %776 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %770, i32 9
  %777 = load i32, ptr %776, align 8, !tbaa !386
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %792, label %779

779:                                              ; preds = %775, %769
  %780 = call ptr @get_last_insn() #18
  %781 = load i32, ptr %10, align 4, !tbaa !306
  %782 = load ptr, ptr %470, align 8, !tbaa !345
  %783 = icmp ne ptr %782, null
  %784 = zext i1 %783 to i32
  %785 = call fastcc i32 @store_one_arg(ptr noundef nonnull %771, ptr noundef %691, i32 noundef %781, i32 noundef %784, i32 noundef %123) #19
  %786 = icmp eq i32 %785, 0
  br i1 %786, label %787, label %791, !prof !389

787:                                              ; preds = %779
  br i1 %492, label %788, label %792, !prof !393

788:                                              ; preds = %787
  %789 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %780, ptr noundef nonnull %771, i32 noundef 1) #19, !range !394
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %792, label %791, !prof !356

791:                                              ; preds = %788, %779
  store i32 1, ptr %20, align 4, !tbaa !306
  br label %792

792:                                              ; preds = %787, %788, %791, %775
  %793 = load i32, ptr %10, align 4, !tbaa !306
  %794 = and i32 %793, 1
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %796, label %806, !prof !389

796:                                              ; preds = %792
  %797 = and i32 %793, 2
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %814, label %799, !prof !389

799:                                              ; preds = %796
  %800 = load i32, ptr @target_flags, align 4, !tbaa !306
  %801 = and i32 %800, 4
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %806

803:                                              ; preds = %799
  %804 = call i32 @ix86_cfun_abi() #18
  %805 = icmp eq i32 %804, 1
  br i1 %805, label %806, label %814

806:                                              ; preds = %803, %799, %792
  %807 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %770, i32 11
  %808 = load ptr, ptr %807, align 8, !tbaa !395
  %809 = icmp eq ptr %808, null
  br i1 %809, label %814, label %810

810:                                              ; preds = %806
  %811 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef nonnull %808) #18
  %812 = load ptr, ptr %15, align 8, !tbaa !320
  %813 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %811, ptr noundef %812) #18
  store ptr %813, ptr %15, align 8, !tbaa !320
  br label %814

814:                                              ; preds = %796, %803, %806, %810
  %815 = add nuw nsw i64 %770, 1
  %816 = icmp eq i64 %815, %479
  br i1 %816, label %817, label %769, !prof !384, !llvm.loop !396

817:                                              ; preds = %814
  %818 = load i32, ptr %8, align 4, !tbaa !306
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %849, label %820, !prof !250

820:                                              ; preds = %817
  br i1 %474, label %821, label %849

821:                                              ; preds = %820
  %822 = zext nneg i32 %273 to i64
  br label %823

823:                                              ; preds = %821, %846
  %824 = phi i64 [ %847, %846 ], [ 0, %821 ]
  %825 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %824
  %826 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %824, i32 8
  %827 = load i32, ptr %826, align 4, !tbaa !397
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %846, label %829

829:                                              ; preds = %823
  %830 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %824, i32 9
  %831 = load i32, ptr %830, align 8, !tbaa !386
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %833, label %846

833:                                              ; preds = %829
  %834 = call ptr @get_last_insn() #18
  %835 = load i32, ptr %10, align 4, !tbaa !306
  %836 = load ptr, ptr %470, align 8, !tbaa !345
  %837 = icmp ne ptr %836, null
  %838 = zext i1 %837 to i32
  %839 = call fastcc i32 @store_one_arg(ptr noundef nonnull %825, ptr noundef %691, i32 noundef %835, i32 noundef %838, i32 noundef %123) #19
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %841, label %845

841:                                              ; preds = %833
  br i1 %492, label %842, label %846

842:                                              ; preds = %841
  %843 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %834, ptr noundef nonnull %825, i32 noundef 1) #19, !range !394
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %846, label %845

845:                                              ; preds = %842, %833
  store i32 1, ptr %20, align 4, !tbaa !306
  br label %846

846:                                              ; preds = %841, %842, %845, %823, %829
  %847 = add nuw nsw i64 %824, 1
  %848 = icmp eq i64 %847, %822
  br i1 %848, label %849, label %823, !llvm.loop !398

849:                                              ; preds = %846, %767, %820, %817
  br i1 %47, label %852, label %850, !prof !330

850:                                              ; preds = %849
  %851 = load ptr, ptr %471, align 8, !tbaa !272
  br label %852

852:                                              ; preds = %849, %850
  %853 = phi ptr [ %851, %850 ], [ %61, %849 ]
  %854 = call i32 @ix86_function_type_abi(ptr noundef %853) #18
  %855 = icmp eq i32 %854, 1
  br i1 %855, label %856, label %870, !prof !330

856:                                              ; preds = %852
  %857 = load i32, ptr @target_flags, align 4, !tbaa !306
  %858 = and i32 %857, 4
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %870

860:                                              ; preds = %856
  %861 = call i32 @ix86_cfun_abi() #18
  %862 = icmp ne i32 %861, 1
  %863 = load i32, ptr %9, align 4
  %864 = icmp eq i32 %863, 0
  %865 = select i1 %862, i1 %864, i1 false
  %866 = select i1 %865, i1 %131, i1 false
  br i1 %866, label %867, label %870

867:                                              ; preds = %860
  %868 = zext nneg i32 %123 to i64
  %869 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %868) #18
  call void @anti_adjust_stack(ptr noundef %869) #18
  br label %870

870:                                              ; preds = %867, %860, %856, %852
  %871 = select i1 %505, i1 %724, i1 false
  br i1 %871, label %872, label %882, !prof !399

872:                                              ; preds = %870
  br i1 %265, label %873, label %882

873:                                              ; preds = %872
  %874 = call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef nonnull %487, i8 noundef zeroext 0) #18
  %875 = call ptr @force_operand(ptr noundef %874, ptr noundef null) #18
  %876 = call ptr @force_reg(i32 noundef 16, ptr noundef %875) #18
  %877 = call ptr @emit_move_insn(ptr noundef %66, ptr noundef %876) #18
  %878 = load i32, ptr %66, align 8
  %879 = and i32 %878, 65535
  %880 = icmp eq i32 %879, 37
  br i1 %880, label %881, label %882

881:                                              ; preds = %873
  call void @use_reg(ptr noundef nonnull %15, ptr noundef nonnull %66) #18
  br label %882

882:                                              ; preds = %873, %881, %872, %870
  %883 = phi ptr [ %487, %872 ], [ %874, %881 ], [ %874, %873 ], [ %487, %870 ]
  %884 = call ptr @get_last_insn() #18
  %885 = load i32, ptr %8, align 4, !tbaa !306
  %886 = xor i32 %486, 1
  %887 = call ptr @prepare_call_address(ptr noundef %46, ptr noundef %711, ptr noundef %756, ptr noundef nonnull %15, i32 noundef %885, i32 poison) #19
  %888 = load i32, ptr %10, align 4, !tbaa !306
  call fastcc void @load_register_parameters(ptr noundef nonnull %292, i32 noundef %273, ptr noundef nonnull %15, i32 noundef %888, i32 noundef %886, ptr noundef nonnull %20) #19
  %889 = call ptr @get_last_insn() #18
  %890 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !320
  %891 = call ptr @function_arg(ptr noundef nonnull %7, i32 noundef 0, ptr noundef %890, i32 noundef 1) #18
  br i1 %492, label %902, label %892, !prof !371

892:                                              ; preds = %882
  %893 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %894 = sext i32 %893 to i64
  %895 = urem i64 %894, %469
  %896 = icmp eq i64 %895, 0
  br i1 %896, label %898, label %897, !prof !376

897:                                              ; preds = %892
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2840, ptr noundef nonnull @.str.1) #18
  br label %898

898:                                              ; preds = %892, %897
  %899 = sext i32 %533 to i64
  %900 = load i64, ptr %6, align 8, !tbaa !352
  %901 = load ptr, ptr %15, align 8, !tbaa !320
  call fastcc void @emit_call_1(ptr noundef %887, ptr noundef nonnull %0, ptr noundef %46, ptr noundef %186, i64 noundef %899, i64 noundef %900, ptr noundef %891, ptr noundef %750, i32 noundef %39, ptr noundef %901, i32 noundef %888) #19
  br i1 %492, label %906, label %910, !prof !371

902:                                              ; preds = %882
  %903 = sext i32 %533 to i64
  %904 = load i64, ptr %6, align 8, !tbaa !352
  %905 = load ptr, ptr %15, align 8, !tbaa !320
  call fastcc void @emit_call_1(ptr noundef %887, ptr noundef nonnull %0, ptr noundef %46, ptr noundef %186, i64 noundef %903, i64 noundef %904, ptr noundef %891, ptr noundef %750, i32 noundef %39, ptr noundef %905, i32 noundef %888) #19
  br label %906

906:                                              ; preds = %902, %898
  %907 = call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %884, ptr noundef null, i32 noundef 0) #19, !range !394
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %910, label %909, !prof !356

909:                                              ; preds = %906
  store i32 1, ptr %20, align 4, !tbaa !306
  br label %910

910:                                              ; preds = %909, %906, %898
  %911 = icmp eq ptr %883, null
  br i1 %911, label %912, label %958, !prof !400

912:                                              ; preds = %910
  %913 = load i64, ptr %64, align 8
  %914 = and i64 %913, 65535
  %915 = icmp eq i64 %914, 14
  br i1 %915, label %916, label %918, !prof !330

916:                                              ; preds = %912
  %917 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %922

918:                                              ; preds = %912
  %919 = load i32, ptr %475, align 4
  %920 = lshr i32 %919, 16
  %921 = and i32 %920, 255
  br label %922

922:                                              ; preds = %918, %916
  %923 = phi i32 [ %917, %916 ], [ %921, %918 ]
  %924 = icmp eq i32 %923, 1
  br i1 %924, label %958, label %925, !prof !330

925:                                              ; preds = %922
  %926 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 4), align 8, !tbaa !401
  %927 = call zeroext i8 %926(ptr noundef nonnull %64) #18
  %928 = icmp eq i8 %927, 0
  br i1 %928, label %958, label %929, !prof !250

929:                                              ; preds = %925
  %930 = load i64, ptr %64, align 8
  %931 = and i64 %930, 65535
  %932 = icmp eq i64 %931, 14
  br i1 %932, label %933, label %935

933:                                              ; preds = %929
  %934 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %939

935:                                              ; preds = %929
  %936 = load i32, ptr %475, align 4
  %937 = lshr i32 %936, 16
  %938 = and i32 %937, 255
  br label %939

939:                                              ; preds = %935, %933
  %940 = phi i32 [ %934, %933 ], [ %938, %935 ]
  %941 = call zeroext i8 @shift_return_value(i32 noundef %940, i8 noundef zeroext 0, ptr noundef %750) #19, !range !295
  %942 = icmp eq i8 %941, 0
  br i1 %942, label %944, label %943

943:                                              ; preds = %939
  store i32 1, ptr %20, align 4, !tbaa !306
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
  %951 = load i32, ptr %475, align 4
  %952 = lshr i32 %951, 16
  %953 = and i32 %952, 255
  br label %954

954:                                              ; preds = %950, %948
  %955 = phi i32 [ %949, %948 ], [ %953, %950 ]
  %956 = call fastcc i32 @rhs_regno(ptr noundef %750) #19
  %957 = call ptr @gen_rtx_REG(i32 noundef %955, i32 noundef %956) #18
  br label %958

958:                                              ; preds = %954, %925, %922, %910
  %959 = phi ptr [ %750, %910 ], [ %957, %954 ], [ %750, %925 ], [ %750, %922 ]
  %960 = and i32 %888, 16
  %961 = icmp eq i32 %960, 0
  %962 = or i1 %961, %492
  br i1 %962, label %982, label %963, !prof !402

963:                                              ; preds = %958
  %964 = load i32, ptr %959, align 8
  %965 = lshr i32 %964, 16
  %966 = and i32 %965, 255
  %967 = call ptr @gen_reg_rtx(i32 noundef %966) #18
  %968 = load i64, ptr %64, align 8
  %969 = and i64 %968, 65535
  %970 = icmp eq i64 %969, 10
  br i1 %970, label %971, label %976

971:                                              ; preds = %963
  %972 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !306
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
  %981 = load i32, ptr %10, align 4, !tbaa !306
  br label %982

982:                                              ; preds = %976, %958
  %983 = phi i32 [ %981, %976 ], [ %888, %958 ]
  %984 = phi ptr [ %967, %976 ], [ %959, %958 ]
  %985 = and i32 %983, 8
  %986 = icmp ne i32 %985, 0
  %987 = or i1 %492, %986
  br i1 %987, label %988, label %1009, !prof !403

988:                                              ; preds = %982
  %989 = call ptr @get_last_insn() #18
  %990 = load i32, ptr %989, align 8
  %991 = and i32 %990, 65535
  %992 = icmp eq i32 %991, 10
  br i1 %992, label %1003, label %993, !prof !404

993:                                              ; preds = %988, %999
  %994 = phi ptr [ %996, %999 ], [ %989, %988 ]
  %995 = getelementptr inbounds %struct.rtx_def, ptr %994, i64 0, i32 1, i32 0, i32 0, i64 1
  %996 = load ptr, ptr %995, align 8, !tbaa !272
  %997 = icmp eq ptr %996, %889
  br i1 %997, label %998, label %999

998:                                              ; preds = %993
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2908, ptr noundef nonnull @.str.1) #18
  br label %999

999:                                              ; preds = %993, %998
  %1000 = load i32, ptr %996, align 8
  %1001 = and i32 %1000, 65535
  %1002 = icmp eq i32 %1001, 10
  br i1 %1002, label %1003, label %993, !prof !405, !llvm.loop !406

1003:                                             ; preds = %999, %988
  %1004 = phi ptr [ %989, %988 ], [ %996, %999 ]
  %1005 = call ptr @emit_barrier_after(ptr noundef nonnull %1004) #18
  %1006 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %1009, !prof !407

1008:                                             ; preds = %1003
  store i32 %536, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  store i32 0, ptr @x_rtl, align 8, !tbaa !372
  br label %1009

1009:                                             ; preds = %1003, %1008, %982
  %1010 = load i64, ptr %64, align 8
  %1011 = and i64 %1010, 65535
  %1012 = icmp eq i64 %1011, 14
  br i1 %1012, label %1013, label %1015, !prof !330

1013:                                             ; preds = %1009
  %1014 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1019

1015:                                             ; preds = %1009
  %1016 = load i32, ptr %475, align 4
  %1017 = lshr i32 %1016, 16
  %1018 = and i32 %1017, 255
  br label %1019

1019:                                             ; preds = %1015, %1013
  %1020 = phi i32 [ %1014, %1013 ], [ %1018, %1015 ]
  %1021 = icmp eq i32 %1020, 0
  %1022 = or i1 %477, %1021
  br i1 %1022, label %1023, label %1025, !prof !408

1023:                                             ; preds = %1019
  %1024 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  br label %1177

1025:                                             ; preds = %1019
  br i1 %911, label %1058, label %1026, !prof !409

1026:                                             ; preds = %1025
  %1027 = icmp eq ptr %484, null
  br i1 %1027, label %1032, label %1028

1028:                                             ; preds = %1026
  %1029 = load i32, ptr %484, align 8
  %1030 = and i32 %1029, 65535
  %1031 = icmp eq i32 %1030, 43
  br i1 %1031, label %1177, label %1032

1032:                                             ; preds = %1028, %1026
  %1033 = load i64, ptr %64, align 8
  %1034 = and i64 %1033, 65535
  %1035 = icmp eq i64 %1034, 14
  br i1 %1035, label %1036, label %1039

1036:                                             ; preds = %1032
  %1037 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  %1038 = load i64, ptr %64, align 8
  br label %1043

1039:                                             ; preds = %1032
  %1040 = load i32, ptr %475, align 4
  %1041 = lshr i32 %1040, 16
  %1042 = and i32 %1041, 255
  br label %1043

1043:                                             ; preds = %1039, %1036
  %1044 = phi i64 [ %1038, %1036 ], [ %1033, %1039 ]
  %1045 = phi i32 [ %1037, %1036 ], [ %1042, %1039 ]
  %1046 = and i64 %1044, 65535
  %1047 = icmp eq i64 %1046, 14
  br i1 %1047, label %1048, label %1050

1048:                                             ; preds = %1043
  %1049 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1054

1050:                                             ; preds = %1043
  %1051 = load i32, ptr %475, align 4
  %1052 = lshr i32 %1051, 16
  %1053 = and i32 %1052, 255
  br label %1054

1054:                                             ; preds = %1050, %1048
  %1055 = phi i32 [ %1049, %1048 ], [ %1053, %1050 ]
  %1056 = call ptr @memory_address_addr_space(i32 noundef %1055, ptr noundef nonnull %883, i8 noundef zeroext 0) #18
  %1057 = call ptr @gen_rtx_MEM(i32 noundef %1045, ptr noundef %1056) #18
  call void @set_mem_attributes(ptr noundef %1057, ptr noundef nonnull %64, i32 noundef 1) #18
  br label %1177

1058:                                             ; preds = %1025
  %1059 = load i32, ptr %984, align 8
  %1060 = and i32 %1059, 65535
  %1061 = icmp eq i32 %1060, 15
  %1062 = icmp eq ptr %484, null
  br i1 %1061, label %1063, label %1088, !prof !410

1063:                                             ; preds = %1058
  br i1 %1062, label %1064, label %1080

1064:                                             ; preds = %1063
  %1065 = load i64, ptr %64, align 8
  %1066 = trunc i64 %1065 to i32
  %1067 = lshr i32 %1066, 18
  %1068 = and i32 %1067, 2
  %1069 = load i32, ptr %475, align 4
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
  %1081 = phi ptr [ %1079, %1064 ], [ %484, %1063 ]
  %1082 = call i32 @rtx_equal_p(ptr noundef %1081, ptr noundef nonnull %984) #18
  %1083 = icmp eq i32 %1082, 0
  br i1 %1083, label %1084, label %1087

1084:                                             ; preds = %1080
  %1085 = call i64 @int_size_in_bytes(ptr noundef nonnull %64) #18
  %1086 = trunc i64 %1085 to i32
  call void @emit_group_store(ptr noundef %1081, ptr noundef nonnull %984, ptr noundef nonnull %64, i32 noundef %1086) #18
  br label %1087

1087:                                             ; preds = %1084, %1080
  store i32 1, ptr %20, align 4, !tbaa !306
  br label %1177

1088:                                             ; preds = %1058
  br i1 %1062, label %1152, label %1089, !prof !410

1089:                                             ; preds = %1088
  %1090 = load i32, ptr %484, align 8
  %1091 = lshr i32 %1090, 16
  %1092 = and i32 %1091, 255
  %1093 = load i64, ptr %64, align 8
  %1094 = and i64 %1093, 65535
  %1095 = icmp eq i64 %1094, 14
  br i1 %1095, label %1096, label %1098, !prof !410

1096:                                             ; preds = %1089
  %1097 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1102

1098:                                             ; preds = %1089
  %1099 = load i32, ptr %475, align 4
  %1100 = lshr i32 %1099, 16
  %1101 = and i32 %1100, 255
  br label %1102

1102:                                             ; preds = %1098, %1096
  %1103 = phi i32 [ %1097, %1096 ], [ %1101, %1098 ]
  %1104 = icmp eq i32 %1092, %1103
  br i1 %1104, label %1105, label %1152, !prof !409

1105:                                             ; preds = %1102
  %1106 = load i32, ptr %484, align 8
  %1107 = load i32, ptr %984, align 8
  %1108 = xor i32 %1107, %1106
  %1109 = and i32 %1108, 16711680
  %1110 = icmp eq i32 %1109, 0
  br i1 %1110, label %1111, label %1152, !prof !409

1111:                                             ; preds = %1105
  %1112 = and i32 %1106, 65535
  %1113 = icmp eq i32 %1112, 37
  br i1 %1113, label %1114, label %1117, !prof !409

1114:                                             ; preds = %1111
  %1115 = call fastcc i32 @rhs_regno(ptr noundef nonnull %484) #19
  %1116 = icmp ult i32 %1115, 53
  br i1 %1116, label %1117, label %1119, !prof !410

1117:                                             ; preds = %1114, %1111
  %1118 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %984) #19
  br label %1119

1119:                                             ; preds = %1117, %1114
  %1120 = phi ptr [ %1118, %1117 ], [ %984, %1114 ]
  %1121 = load i32, ptr @target_flags, align 4, !tbaa !306
  %1122 = and i32 %1121, 4
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1124, label %1128, !prof !410

1124:                                             ; preds = %1119
  %1125 = call i32 @ix86_cfun_abi() #18
  %1126 = icmp ne i32 %1125, 1
  %1127 = or i1 %1126, %492
  br i1 %1127, label %1146, label %1129, !prof !411

1128:                                             ; preds = %1119
  br i1 %492, label %1146, label %1129, !prof !412

1129:                                             ; preds = %1124, %1128
  %1130 = load i32, ptr %484, align 8
  %1131 = and i32 %1130, 65535
  %1132 = icmp eq i32 %1131, 43
  br i1 %1132, label %1133, label %1146, !prof !413

1133:                                             ; preds = %1129
  br i1 %474, label %1134, label %1146

1134:                                             ; preds = %1133
  %1135 = zext nneg i32 %273 to i64
  br label %1139

1136:                                             ; preds = %1139
  %1137 = add nuw nsw i64 %1140, 1
  %1138 = icmp eq i64 %1137, %1135
  br i1 %1138, label %1146, label %1139, !llvm.loop !414

1139:                                             ; preds = %1134, %1136
  %1140 = phi i64 [ %1137, %1136 ], [ 0, %1134 ]
  %1141 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %1140, i32 13
  %1142 = load ptr, ptr %1141, align 8, !tbaa !415
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %1136, label %1144

1144:                                             ; preds = %1139
  %1145 = call ptr @copy_to_reg(ptr noundef %1120) #18
  br label %1177

1146:                                             ; preds = %1136, %1133, %1129, %1128, %1124
  %1147 = call ptr @emit_move_insn(ptr noundef nonnull %484, ptr noundef %1120) #18
  %1148 = load i32, ptr %484, align 8
  %1149 = and i32 %1148, 65535
  %1150 = icmp eq i32 %1149, 43
  br i1 %1150, label %1151, label %1177, !prof !410

1151:                                             ; preds = %1146
  store i32 1, ptr %20, align 4, !tbaa !306
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
  %1159 = load i32, ptr %475, align 4
  %1160 = lshr i32 %1159, 16
  %1161 = and i32 %1160, 255
  br label %1162

1162:                                             ; preds = %1158, %1156
  %1163 = phi i32 [ %1157, %1156 ], [ %1161, %1158 ]
  %1164 = icmp eq i32 %1163, 1
  br i1 %1164, label %1165, label %1174

1165:                                             ; preds = %1162
  %1166 = load i32, ptr %984, align 8
  %1167 = and i32 %1166, 16711680
  %1168 = icmp eq i32 %1167, 65536
  br i1 %1168, label %1171, label %1169

1169:                                             ; preds = %1165
  %1170 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %984) #19
  br label %1171

1171:                                             ; preds = %1169, %1165
  %1172 = phi ptr [ %1170, %1169 ], [ %984, %1165 ]
  %1173 = call ptr @copy_blkmode_from_reg(ptr noundef %484, ptr noundef %1172, ptr noundef nonnull %64) #18
  store i32 1, ptr %20, align 4, !tbaa !306
  br label %1177

1174:                                             ; preds = %1162
  %1175 = call fastcc ptr @avoid_likely_spilled_reg(ptr noundef nonnull %984) #19
  %1176 = call ptr @copy_to_reg(ptr noundef %1175) #18
  br label %1177

1177:                                             ; preds = %1144, %1151, %1146, %1054, %1028, %1087, %1171, %1174, %1023
  %1178 = phi ptr [ %1024, %1023 ], [ %1057, %1054 ], [ %484, %1028 ], [ %1081, %1087 ], [ %1173, %1171 ], [ %1176, %1174 ], [ %1145, %1144 ], [ %484, %1151 ], [ %484, %1146 ]
  %1179 = load i32, ptr %1178, align 8
  %1180 = and i32 %1179, 65535
  %1181 = icmp eq i32 %1180, 37
  br i1 %1181, label %1182, label %1260, !prof !416

1182:                                             ; preds = %1177
  %1183 = load i64, ptr %64, align 8
  %1184 = and i64 %1183, 65535
  %1185 = icmp eq i64 %1184, 14
  br i1 %1185, label %1186, label %1188, !prof !410

1186:                                             ; preds = %1182
  %1187 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1192

1188:                                             ; preds = %1182
  %1189 = load i32, ptr %475, align 4
  %1190 = lshr i32 %1189, 16
  %1191 = and i32 %1190, 255
  br label %1192

1192:                                             ; preds = %1188, %1186
  %1193 = phi i32 [ %1187, %1186 ], [ %1191, %1188 ]
  %1194 = icmp eq i32 %1193, 1
  br i1 %1194, label %1260, label %1195, !prof !410

1195:                                             ; preds = %1192
  %1196 = load i32, ptr %1178, align 8
  %1197 = lshr i32 %1196, 16
  %1198 = and i32 %1197, 255
  %1199 = load i64, ptr %64, align 8
  %1200 = and i64 %1199, 65535
  %1201 = icmp eq i64 %1200, 14
  br i1 %1201, label %1202, label %1204, !prof !410

1202:                                             ; preds = %1195
  %1203 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1208

1204:                                             ; preds = %1195
  %1205 = load i32, ptr %475, align 4
  %1206 = lshr i32 %1205, 16
  %1207 = and i32 %1206, 255
  br label %1208

1208:                                             ; preds = %1204, %1202
  %1209 = phi i32 [ %1203, %1202 ], [ %1207, %1204 ]
  %1210 = icmp eq i32 %1198, %1209
  br i1 %1210, label %1260, label %1211, !prof !409

1211:                                             ; preds = %1208
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #20
  %1212 = load i64, ptr %64, align 8
  %1213 = trunc i64 %1212 to i32
  %1214 = lshr i32 %1213, 21
  %1215 = and i32 %1214, 1
  store i32 %1215, ptr %21, align 4, !tbaa !306
  %1216 = and i64 %1212, 65535
  %1217 = icmp eq i64 %1216, 14
  br i1 %1217, label %1218, label %1220

1218:                                             ; preds = %1211
  %1219 = call i32 @vector_type_mode(ptr noundef nonnull %64) #18
  br label %1224

1220:                                             ; preds = %1211
  %1221 = load i32, ptr %475, align 4
  %1222 = lshr i32 %1221, 16
  %1223 = and i32 %1222, 255
  br label %1224

1224:                                             ; preds = %1220, %1218
  %1225 = phi i32 [ %1219, %1218 ], [ %1223, %1220 ]
  %1226 = call i32 @promote_function_mode(ptr noundef nonnull %64, i32 noundef %1225, ptr noundef nonnull %21, ptr noundef %186, i32 noundef 1) #18
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
  %1239 = load i32, ptr %475, align 4
  %1240 = lshr i32 %1239, 16
  %1241 = and i32 %1240, 255
  br label %1242

1242:                                             ; preds = %1238, %1236
  %1243 = phi i32 [ %1237, %1236 ], [ %1241, %1238 ]
  %1244 = call ptr @gen_rtx_SUBREG(i32 noundef %1243, ptr noundef nonnull %1178, i32 noundef 0) #18
  %1245 = load i32, ptr %1244, align 8
  %1246 = or i32 %1245, 268435456
  store i32 %1246, ptr %1244, align 8
  %1247 = load i32, ptr %21, align 4, !tbaa !306
  %1248 = icmp slt i32 %1247, 0
  br i1 %1248, label %1249, label %1251

1249:                                             ; preds = %1242
  %1250 = or i32 %1245, 402653184
  br label %1258

1251:                                             ; preds = %1242
  %1252 = and i32 %1246, -134217729
  store i32 %1252, ptr %1244, align 8
  %1253 = load i32, ptr %21, align 4, !tbaa !306
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
  %1262 = load ptr, ptr %13, align 8, !tbaa !320
  %1263 = icmp eq ptr %1262, null
  br i1 %1263, label %1267, label %1264, !prof !250

1264:                                             ; preds = %1260
  call void @emit_stack_restore(i32 noundef 0, ptr noundef nonnull %1262, ptr noundef null) #18
  store i32 %688, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %1265 = load i32, ptr %14, align 4, !tbaa !306
  store i32 %1265, ptr @x_rtl, align 8, !tbaa !372
  %1266 = sub nsw i32 %688, %1265
  store i32 %689, ptr @stack_arg_under_construction, align 4, !tbaa !306
  store i32 %37, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  store ptr %38, ptr @stack_usage_map, align 8, !tbaa !320
  store i32 1, ptr %20, align 4, !tbaa !306
  br label %1310

1267:                                             ; preds = %1260
  %1268 = load i32, ptr @target_flags, align 4, !tbaa !306
  %1269 = and i32 %1268, 4
  %1270 = icmp eq i32 %1269, 0
  br i1 %1270, label %1271, label %1275, !prof !330

1271:                                             ; preds = %1267
  %1272 = call i32 @ix86_cfun_abi() #18
  %1273 = icmp ne i32 %1272, 1
  %1274 = or i1 %1273, %492
  br i1 %1274, label %1310, label %1276, !prof !374

1275:                                             ; preds = %1267
  br i1 %492, label %1310, label %1276, !prof !371

1276:                                             ; preds = %1271, %1275
  %1277 = icmp eq ptr %768, null
  br i1 %1277, label %1281, label %1278, !prof !376

1278:                                             ; preds = %1276
  %1279 = load i32, ptr %12, align 4, !tbaa !306
  %1280 = load i32, ptr %11, align 4, !tbaa !306
  call fastcc void @restore_fixed_argument_area(ptr noundef nonnull %768, ptr noundef %691, i32 noundef %1279, i32 noundef %1280) #19
  br label %1281

1281:                                             ; preds = %1278, %1276
  br i1 %474, label %1282, label %1309, !prof !417

1282:                                             ; preds = %1281, %1306
  %1283 = phi i64 [ %1307, %1306 ], [ 0, %1281 ]
  %1284 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %1283, i32 13
  %1285 = load ptr, ptr %1284, align 8, !tbaa !415
  %1286 = icmp eq ptr %1285, null
  br i1 %1286, label %1306, label %1287, !prof !418

1287:                                             ; preds = %1282
  %1288 = load i32, ptr %1285, align 8
  %1289 = lshr i32 %1288, 16
  %1290 = and i32 %1289, 255
  %1291 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %1283, i32 12
  %1292 = load ptr, ptr %1291, align 8, !tbaa !419
  %1293 = getelementptr inbounds %struct.rtx_def, ptr %1292, i64 0, i32 1
  %1294 = load ptr, ptr %1293, align 8, !tbaa !272
  %1295 = call ptr @memory_address_addr_space(i32 noundef %1290, ptr noundef %1294, i8 noundef zeroext 0) #18
  %1296 = call ptr @gen_rtx_MEM(i32 noundef %1290, ptr noundef %1295) #18
  %1297 = icmp eq i32 %1290, 1
  %1298 = load ptr, ptr %1284, align 8, !tbaa !415
  br i1 %1297, label %1301, label %1299

1299:                                             ; preds = %1287
  %1300 = call ptr @emit_move_insn(ptr noundef %1296, ptr noundef %1298) #18
  br label %1306

1301:                                             ; preds = %1287
  %1302 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %1283, i32 10
  %1303 = load i64, ptr %1302, align 8, !tbaa !420
  %1304 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %1303) #18
  %1305 = call ptr @emit_block_move(ptr noundef %1296, ptr noundef %1298, ptr noundef %1304, i32 noundef 2) #18
  br label %1306

1306:                                             ; preds = %1299, %1301, %1282
  %1307 = add nuw nsw i64 %1283, 1
  %1308 = icmp eq i64 %1307, %480
  br i1 %1308, label %1309, label %1282, !prof !421, !llvm.loop !422

1309:                                             ; preds = %1306, %1281
  store i32 %37, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  store ptr %38, ptr @stack_usage_map, align 8, !tbaa !320
  br label %1310

1310:                                             ; preds = %1271, %1275, %1309, %1264
  %1311 = phi i32 [ %1266, %1264 ], [ %536, %1309 ], [ %536, %1275 ], [ %536, %1271 ]
  %1312 = load i32, ptr %10, align 4, !tbaa !306
  %1313 = and i32 %1312, 32
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1321, label %1315, !prof !250

1315:                                             ; preds = %1310
  %1316 = load ptr, ptr @cfun, align 8, !tbaa !320
  %1317 = getelementptr inbounds %struct.function, ptr %1316, i64 0, i32 8
  %1318 = load ptr, ptr %1317, align 8, !tbaa !423
  %1319 = icmp eq ptr %1318, null
  br i1 %1319, label %1321, label %1320

1320:                                             ; preds = %1315
  call void @update_nonlocal_goto_save_area() #18
  br label %1321

1321:                                             ; preds = %1320, %1315, %1310
  br i1 %474, label %1322, label %1331, !prof !369

1322:                                             ; preds = %1321, %1328
  %1323 = phi i64 [ %1329, %1328 ], [ 0, %1321 ]
  %1324 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %1323, i32 14
  %1325 = load ptr, ptr %1324, align 8, !tbaa !425
  %1326 = icmp eq ptr %1325, null
  br i1 %1326, label %1328, label %1327, !prof !389

1327:                                             ; preds = %1322
  call void @free(ptr noundef nonnull %1325) #19
  br label %1328

1328:                                             ; preds = %1322, %1327
  %1329 = add nuw nsw i64 %1323, 1
  %1330 = icmp eq i64 %1329, %481
  br i1 %1330, label %1331, label %1322, !prof !384, !llvm.loop !426

1331:                                             ; preds = %1328, %1321
  %1332 = call ptr @get_insns() #18
  call void @end_sequence() #18
  br i1 %492, label %1333, label %1346, !prof !371

1333:                                             ; preds = %1331
  store i32 %503, ptr @x_rtl, align 8, !tbaa !372
  store i32 %502, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  br i1 %474, label %1334, label %1343, !prof !427

1334:                                             ; preds = %1333
  %1335 = zext nneg i32 %273 to i64
  br label %1336

1336:                                             ; preds = %1334, %1336
  %1337 = phi i64 [ %1341, %1336 ], [ 0, %1334 ]
  %1338 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %1337, i32 2
  store ptr null, ptr %1338, align 8, !tbaa !428
  %1339 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %1337, i32 14
  store ptr null, ptr %1339, align 8, !tbaa !425
  %1340 = getelementptr inbounds %struct.arg_data, ptr %292, i64 %1337, i32 11
  store ptr null, ptr %1340, align 8, !tbaa !395
  %1341 = add nuw nsw i64 %1337, 1
  %1342 = icmp eq i64 %1341, %1335
  br i1 %1342, label %1343, label %1336, !prof !427, !llvm.loop !429

1343:                                             ; preds = %1336, %1333
  %1344 = load ptr, ptr @stored_args_map, align 8, !tbaa !320
  %1345 = load ptr, ptr %1344, align 8, !tbaa !430
  call void @free(ptr noundef %1345) #19
  call void @free(ptr noundef %1344) #19
  br label %1355

1346:                                             ; preds = %1331
  %1347 = and i32 %1312, 8
  %1348 = icmp eq i32 %1347, 0
  br i1 %1348, label %1349, label %1355, !prof !432

1349:                                             ; preds = %1346
  %1350 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %1351 = load i32, ptr @x_rtl, align 8, !tbaa !372
  %1352 = sub nsw i32 %1350, %1351
  %1353 = icmp eq i32 %1311, %1352
  br i1 %1353, label %1355, label %1354, !prof !433

1354:                                             ; preds = %1349
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3147, ptr noundef nonnull @.str.1) #18
  br label %1355

1355:                                             ; preds = %1354, %1349, %1346, %1343
  %1356 = phi ptr [ %1332, %1343 ], [ null, %1346 ], [ null, %1349 ], [ null, %1354 ]
  %1357 = phi ptr [ %485, %1343 ], [ %1332, %1346 ], [ %1332, %1349 ], [ %1332, %1354 ]
  %1358 = load i32, ptr %20, align 4, !tbaa !306
  %1359 = icmp eq i32 %1358, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #20
  br i1 %1359, label %1360, label %482

1360:                                             ; preds = %1355
  %1361 = icmp eq ptr %1356, null
  br i1 %1361, label %1364, label %1362, !prof !434

1362:                                             ; preds = %1360
  %1363 = call ptr @emit_insn(ptr noundef nonnull %1356) #18
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 39), align 1, !tbaa !435
  br label %1366

1364:                                             ; preds = %482, %1360
  %1365 = call ptr @emit_insn(ptr noundef %1357) #18
  br label %1366

1366:                                             ; preds = %1364, %1362
  %1367 = load i32, ptr @expand_call.currently_expanding_call, align 4, !tbaa !306
  %1368 = add nsw i32 %1367, -1
  store i32 %1368, ptr @expand_call.currently_expanding_call, align 4, !tbaa !306
  %1369 = icmp eq ptr %690, null
  br i1 %1369, label %1371, label %1370, !prof !371

1370:                                             ; preds = %1366
  call void @free(ptr noundef nonnull %690) #19
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
define internal fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !prof !249 !PGOFuncName !436 {
  tail call fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr noundef %1) #19
  %3 = tail call fastcc ptr @next_call_expr_arg(ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #5 !prof !437 !PGOFuncName !438 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !439
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !441
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14, !prof !442

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !443
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !272
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !439
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !444 !PGOFuncName !445 {
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
define internal fastcc ptr @split_complex_types(ptr noundef %0) unnamed_addr #0 !prof !316 !PGOFuncName !446 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1, %14
  %4 = phi ptr [ %16, %14 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !272
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 13
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !341
  %12 = tail call zeroext i8 %11(ptr noundef nonnull %6) #18
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3, %10
  %15 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !272
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %3, !llvm.loop !447

18:                                               ; preds = %10
  %19 = tail call ptr @copy_list(ptr noundef nonnull %0) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %18, %40
  %22 = phi ptr [ %43, %40 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.tree_list, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !272
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 13
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !341
  %30 = tail call zeroext i8 %29(ptr noundef nonnull %24) #18
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !272
  store ptr %34, ptr %23, align 8, !tbaa !272
  %35 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !272
  %37 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %34) #18
  store ptr %37, ptr %35, align 8, !tbaa !272
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 1
  store ptr %36, ptr %38, align 8, !tbaa !272
  %39 = load ptr, ptr %35, align 8, !tbaa !272
  br label %40

40:                                               ; preds = %32, %28, %21
  %41 = phi ptr [ %39, %32 ], [ %22, %28 ], [ %22, %21 ]
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !272
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %21, !llvm.loop !448

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
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_argument_information(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12, ptr nocapture noundef %13, ptr nocapture noundef writeonly %14, i8 noundef zeroext %15) unnamed_addr #0 !prof !249 !PGOFuncName !449 {
  %17 = alloca %struct.call_expr_arg_iterator_d, align 8
  %18 = alloca i32, align 4
  %19 = load i64, ptr %4, align 8
  %20 = and i64 %19, 65535
  %21 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !306
  %23 = add i32 %22, -4
  %24 = icmp ult i32 %23, 7
  br i1 %24, label %25, label %28, !prof !400

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !272
  br label %28

28:                                               ; preds = %16, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %16 ]
  %30 = getelementptr inbounds %struct.args_size, ptr %2, i64 0, i32 1
  %31 = add nsw i32 %0, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #20
  %32 = icmp eq ptr %5, null
  br i1 %32, label %37, label %33, !prof !250

33:                                               ; preds = %28
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %34
  store ptr %5, ptr %35, align 8, !tbaa !450
  %36 = add nsw i32 %0, -2
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i32 [ %36, %33 ], [ %31, %28 ]
  %39 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %4, ptr noundef nonnull %17) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %73, label %41, !prof !451

41:                                               ; preds = %37, %65
  %42 = phi i32 [ %70, %65 ], [ %38, %37 ]
  %43 = phi ptr [ %71, %65 ], [ %39, %37 ]
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !272
  %46 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 10), align 8, !tbaa !341
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48, !prof !389

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
  %59 = load ptr, ptr %58, align 8, !tbaa !272
  %60 = tail call ptr @build1_stat(i32 noundef 43, ptr noundef %59, ptr noundef nonnull %43) #18
  %61 = sext i32 %42 to i64
  %62 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %61
  store ptr %60, ptr %62, align 8, !tbaa !450
  %63 = add nsw i32 %42, -1
  %64 = tail call ptr @build1_stat(i32 noundef 44, ptr noundef %59, ptr noundef nonnull %43) #18
  br label %65

65:                                               ; preds = %41, %48, %50, %54, %57
  %66 = phi i32 [ %63, %57 ], [ %42, %54 ], [ %42, %50 ], [ %42, %48 ], [ %42, %41 ]
  %67 = phi ptr [ %64, %57 ], [ %43, %54 ], [ %43, %50 ], [ %43, %48 ], [ %43, %41 ]
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %68
  store ptr %67, ptr %69, align 8, !tbaa !450
  %70 = add nsw i32 %66, -1
  %71 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %17) #19
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %41, !prof !384, !llvm.loop !452

73:                                               ; preds = %65, %37
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #20
  %74 = icmp sgt i32 %0, 0
  br i1 %74, label %75, label %368, !prof !369

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
  %84 = load ptr, ptr %83, align 8, !tbaa !450
  %85 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !272
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #20
  %87 = load ptr, ptr @global_trees, align 16, !tbaa !320
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %93, label %89, !prof !453

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.tree_type, ptr %86, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !272
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %96, !prof !453

93:                                               ; preds = %89, %79
  %94 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !320
  store ptr %94, ptr %83, align 8, !tbaa !450
  %95 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !320
  br label %96

96:                                               ; preds = %93, %89
  %97 = phi ptr [ %95, %93 ], [ %86, %89 ]
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65534
  %100 = icmp eq i64 %99, 16
  br i1 %100, label %101, label %111, !prof !454

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.tree_type, ptr %97, i64 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, 4096
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = call ptr @first_field(ptr noundef nonnull %97) #18
  %108 = getelementptr inbounds %struct.tree_common, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !272
  %110 = load i64, ptr %109, align 8
  br label %111

111:                                              ; preds = %96, %106, %101
  %112 = phi i64 [ %110, %106 ], [ %98, %101 ], [ %98, %96 ]
  %113 = phi ptr [ %109, %106 ], [ %97, %101 ], [ %97, %96 ]
  %114 = and i64 %112, 65535
  %115 = icmp eq i64 %114, 14
  br i1 %115, label %116, label %118, !prof !453

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
  br i1 %129, label %246, label %130, !prof !389

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
  %152 = load ptr, ptr %83, align 8, !tbaa !450
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
  %161 = load i32, ptr %160, align 4, !tbaa !306
  %162 = icmp eq i32 %161, 3
  br i1 %162, label %163, label %184

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %153, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !272
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  call void @make_decl_rtl(ptr noundef nonnull %153) #18
  %168 = load ptr, ptr %164, align 8, !tbaa !272
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
  %178 = load i32, ptr %177, align 4, !tbaa !306
  %179 = icmp eq i32 %178, 3
  %180 = and i64 %175, 67108864
  %181 = icmp eq i64 %180, 0
  %182 = and i1 %179, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  store i8 0, ptr %14, align 1, !tbaa !272
  br label %184

184:                                              ; preds = %159, %141, %183, %174
  %185 = load ptr, ptr %83, align 8, !tbaa !450
  %186 = call ptr @build_fold_addr_expr_loc(i32 noundef %29, ptr noundef %185) #18
  store ptr %186, ptr %83, align 8, !tbaa !450
  %187 = getelementptr inbounds %struct.tree_common, ptr %186, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !272
  %189 = load i32, ptr %13, align 4, !tbaa !306
  %190 = and i32 %189, 1
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %246, label %192

192:                                              ; preds = %184
  %193 = and i32 %189, -6
  store i32 %193, ptr %13, align 4, !tbaa !306
  br label %246

194:                                              ; preds = %169, %155, %151, %147, %145
  %195 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !272
  %197 = icmp eq ptr %196, null
  br i1 %197, label %210, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !272
  %201 = load i64, ptr %200, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 23
  br i1 %203, label %204, label %210

204:                                              ; preds = %198
  %205 = load i32, ptr @flag_stack_check, align 4, !tbaa !306
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %222

207:                                              ; preds = %204
  %208 = call i32 @compare_tree_int(ptr noundef nonnull %200, i64 noundef 40) #18
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %207, %198, %194
  %211 = load ptr, ptr %83, align 8, !tbaa !450
  %212 = call ptr @expr_size(ptr noundef %211) #18
  %213 = load ptr, ptr %10, align 8, !tbaa !320
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  call void @emit_stack_save(i32 noundef 0, ptr noundef nonnull %10, ptr noundef null) #18
  %216 = load i32, ptr @x_rtl, align 8, !tbaa !372
  store i32 %216, ptr %11, align 4, !tbaa !306
  store i32 0, ptr @x_rtl, align 8, !tbaa !372
  br label %217

217:                                              ; preds = %215, %210
  %218 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 7
  %219 = load i32, ptr %218, align 8, !tbaa !272
  %220 = call ptr @allocate_dynamic_stack_space(ptr noundef %212, ptr noundef null, i32 noundef %219) #18
  %221 = call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %220) #18
  call void @set_mem_attributes(ptr noundef %221, ptr noundef nonnull %113, i32 noundef 1) #18
  br label %224

222:                                              ; preds = %207, %204
  %223 = call ptr @assign_temp(ptr noundef nonnull %113, i32 noundef 0, i32 noundef 1, i32 noundef 0) #18
  br label %224

224:                                              ; preds = %222, %217
  %225 = phi ptr [ %221, %217 ], [ %223, %222 ]
  %226 = load ptr, ptr %83, align 8, !tbaa !450
  %227 = call ptr @store_expr(ptr noundef %226, ptr noundef %225, i32 noundef 0, i8 noundef zeroext 0) #18
  %228 = load i32, ptr %13, align 4, !tbaa !306
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
  store i32 %240, ptr %13, align 4, !tbaa !306
  br label %241

241:                                              ; preds = %224, %238
  %242 = call ptr @make_tree(ptr noundef nonnull %113, ptr noundef %225) #18
  %243 = call ptr @build_fold_addr_expr_loc(i32 noundef %29, ptr noundef %242) #18
  store ptr %243, ptr %83, align 8, !tbaa !450
  %244 = getelementptr inbounds %struct.tree_common, ptr %243, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !272
  store i8 0, ptr %14, align 1, !tbaa !272
  br label %246

246:                                              ; preds = %241, %192, %184, %123
  %247 = phi ptr [ %113, %123 ], [ %188, %192 ], [ %188, %184 ], [ %245, %241 ]
  %248 = load i64, ptr %247, align 8
  %249 = trunc i64 %248 to i32
  %250 = lshr i32 %249, 21
  %251 = and i32 %250, 1
  store i32 %251, ptr %18, align 4, !tbaa !306
  %252 = and i64 %248, 65535
  %253 = icmp eq i64 %252, 14
  br i1 %253, label %254, label %256, !prof !453

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
  br i1 %76, label %265, label %263, !prof !453

263:                                              ; preds = %261
  %264 = load ptr, ptr %77, align 8, !tbaa !272
  br label %265

265:                                              ; preds = %261, %263
  %266 = phi ptr [ %264, %263 ], [ %7, %261 ]
  %267 = call i32 @promote_function_mode(ptr noundef nonnull %247, i32 noundef %262, ptr noundef nonnull %18, ptr noundef %266, i32 noundef 0) #18
  %268 = load i32, ptr %18, align 4, !tbaa !306
  %269 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 7
  store i32 %268, ptr %269, align 8, !tbaa !455
  %270 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 1
  store i32 %267, ptr %270, align 8, !tbaa !456
  %271 = call ptr @function_arg(ptr noundef %8, i32 noundef %267, ptr noundef nonnull %247, i32 noundef %126) #18
  %272 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 4
  store ptr %271, ptr %272, align 8, !tbaa !392
  %273 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 5
  store ptr %271, ptr %273, align 8, !tbaa !457
  %274 = icmp eq ptr %271, null
  br i1 %274, label %279, label %275, !prof !389

275:                                              ; preds = %265
  %276 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !458
  %277 = call i32 %276(ptr noundef %8, i32 noundef %267, ptr noundef nonnull %247, i8 noundef zeroext %127) #18
  %278 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 8
  store i32 %277, ptr %278, align 4, !tbaa !397
  br label %279

279:                                              ; preds = %275, %265
  %280 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 11), align 8, !tbaa !459
  %281 = call zeroext i8 %280(i32 noundef %267, ptr noundef nonnull %247) #18
  %282 = zext i8 %281 to i32
  %283 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 9
  store i32 %282, ptr %283, align 8, !tbaa !386
  %284 = load ptr, ptr %272, align 8, !tbaa !392
  %285 = icmp eq ptr %284, null
  br i1 %285, label %298, label %286, !prof !389

286:                                              ; preds = %279
  %287 = load i32, ptr %284, align 8
  %288 = and i32 %287, 65535
  %289 = icmp eq i32 %288, 15
  br i1 %289, label %290, label %298

290:                                              ; preds = %286
  %291 = getelementptr inbounds %struct.rtx_def, ptr %284, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !272
  %293 = getelementptr inbounds %struct.rtvec_def, ptr %292, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !320
  %295 = getelementptr inbounds %struct.rtx_def, ptr %294, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !272
  %297 = icmp eq ptr %296, null
  br i1 %297, label %302, label %298

298:                                              ; preds = %290, %286, %279
  %299 = load i64, ptr %247, align 8
  %300 = and i64 %299, 262144
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %303, label %306, !prof !389

302:                                              ; preds = %290
  store i32 1, ptr %283, align 8, !tbaa !386
  br label %306

303:                                              ; preds = %298
  %304 = icmp eq i8 %281, 0
  br i1 %304, label %307, label %305, !prof !460

305:                                              ; preds = %303
  br i1 %285, label %325, label %306

306:                                              ; preds = %302, %305, %298
  store i32 1, ptr %12, align 4, !tbaa !306
  br label %307

307:                                              ; preds = %306, %303
  br i1 %285, label %308, label %310, !prof !461

308:                                              ; preds = %307
  %309 = load i32, ptr %283, align 8, !tbaa !386
  br label %319

310:                                              ; preds = %307
  %311 = icmp sgt i32 %9, 0
  %312 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 8
  %313 = load i32, ptr %312, align 4, !tbaa !397
  %314 = icmp ne i32 %313, 0
  %315 = or i1 %311, %314
  %316 = load i32, ptr %283, align 8, !tbaa !386
  br i1 %315, label %319, label %317

317:                                              ; preds = %310
  %318 = icmp eq i32 %316, 0
  br i1 %318, label %330, label %325

319:                                              ; preds = %308, %310
  %320 = phi i32 [ %309, %308 ], [ %316, %310 ]
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %325, !prof !462

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %82, i32 8
  %324 = load i32, ptr %323, align 4, !tbaa !397
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
  %332 = load i64, ptr %331, align 8, !tbaa !420
  %333 = load i64, ptr %2, align 8, !tbaa !352
  %334 = add nsw i64 %333, %332
  store i64 %334, ptr %2, align 8, !tbaa !352
  %335 = getelementptr inbounds %struct.args_size, ptr %331, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !463
  %337 = icmp eq ptr %336, null
  br i1 %337, label %353, label %338, !prof !389

338:                                              ; preds = %330
  %339 = call i32 @host_integerp(ptr noundef nonnull %336, i32 noundef 0) #18
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %338
  %342 = call i64 @tree_low_cst(ptr noundef nonnull %336, i32 noundef 0) #18
  %343 = load i64, ptr %2, align 8, !tbaa !352
  %344 = add nsw i64 %343, %342
  store i64 %344, ptr %2, align 8, !tbaa !352
  br label %353

345:                                              ; preds = %338
  %346 = load ptr, ptr %30, align 8, !tbaa !345
  %347 = icmp eq ptr %346, null
  %348 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !320
  %349 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %348, ptr noundef nonnull %336) #18
  br i1 %347, label %350, label %351

350:                                              ; preds = %345
  store ptr %349, ptr %30, align 8, !tbaa !345
  br label %353

351:                                              ; preds = %345
  %352 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %346, ptr noundef %349) #18
  store ptr %352, ptr %30, align 8, !tbaa !345
  br label %353

353:                                              ; preds = %341, %351, %350, %330
  %354 = load i64, ptr %247, align 8
  %355 = and i64 %354, 65535
  %356 = icmp eq i64 %355, 14
  br i1 %356, label %357, label %359, !prof !453

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
  br i1 %367, label %368, label %79, !prof !384, !llvm.loop !464

368:                                              ; preds = %364, %73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @finalize_must_preallocate(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !249 !PGOFuncName !465 {
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %81, !prof !330

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
  %16 = load i32, ptr %15, align 4, !tbaa !397
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.arg_data, ptr %2, i64 %11, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !386
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18, %10
  %23 = icmp eq i32 %13, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.arg_data, ptr %2, i64 %11, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !392
  %27 = icmp eq ptr %26, null
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %24, %18, %22
  %30 = phi i32 [ 0, %22 ], [ 0, %18 ], [ %28, %24 ]
  %31 = phi i32 [ 0, %22 ], [ 1, %18 ], [ 1, %24 ]
  %32 = load ptr, ptr %14, align 8, !tbaa !450
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !272
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
  %49 = load ptr, ptr %14, align 8, !tbaa !450
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %52 [
    i16 59, label %58
    i16 55, label %58
    i16 56, label %58
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !272
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 262144
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %48, %48, %48, %52
  %59 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !272
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
  br i1 %69, label %10, label %70, !llvm.loop !466

70:                                               ; preds = %64
  %71 = shl nsw i32 %65, 1
  %72 = sext i32 %71 to i64
  br label %73

73:                                               ; preds = %70, %6
  %74 = phi i32 [ 0, %6 ], [ %30, %70 ]
  %75 = phi i64 [ 0, %6 ], [ %72, %70 ]
  %76 = load i64, ptr %3, align 8, !tbaa !352
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
define internal fastcc void @precompute_arguments(i32 noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !467 !PGOFuncName !468 {
  %3 = alloca i32, align 4
  %4 = load i32, ptr @target_flags, align 4, !tbaa !306
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12, !prof !383

7:                                                ; preds = %2
  %8 = tail call i32 @ix86_cfun_abi() #18
  %9 = icmp eq i32 %8, 1
  %10 = icmp sgt i32 %0, 0
  %11 = and i1 %9, %10
  br i1 %11, label %14, label %93, !prof !469

12:                                               ; preds = %2
  %13 = icmp sgt i32 %0, 0
  br i1 %13, label %14, label %93, !prof !417

14:                                               ; preds = %12, %7
  %15 = zext nneg i32 %0 to i64
  br label %16

16:                                               ; preds = %14, %90
  %17 = phi i64 [ 0, %14 ], [ %91, %90 ]
  %18 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !450
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 59
  br i1 %22, label %23, label %90, !prof !470

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !272
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 262144
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1308, ptr noundef nonnull @.str.1) #18
  %30 = load ptr, ptr %18, align 8, !tbaa !450
  br label %31

31:                                               ; preds = %23, %29
  %32 = phi ptr [ %19, %23 ], [ %30, %29 ]
  %33 = call fastcc ptr @expand_normal(ptr noundef %32) #19
  %34 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !428
  %35 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17, i32 3
  store ptr %33, ptr %35, align 8, !tbaa !471
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
  %49 = load i32, ptr %48, align 8, !tbaa !456
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %90, label %51

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %52 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %17, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !455
  store i32 %53, ptr %3, align 4, !tbaa !306
  %54 = load ptr, ptr %34, align 8, !tbaa !428
  %55 = call ptr @convert_modes(i32 noundef %49, i32 noundef %47, ptr noundef %54, i32 noundef %53) #18
  store ptr %55, ptr %34, align 8, !tbaa !428
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 65535
  %58 = icmp eq i32 %57, 37
  br i1 %58, label %59, label %89

59:                                               ; preds = %51
  %60 = load i32, ptr %48, align 8, !tbaa !456
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !272
  %64 = icmp eq i8 %63, 2
  br i1 %64, label %65, label %89

65:                                               ; preds = %59
  %66 = call i32 @promote_mode(ptr noundef nonnull %25, i32 noundef %47, ptr noundef nonnull %3) #18
  %67 = load i32, ptr %48, align 8, !tbaa !456
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %34, align 8, !tbaa !428
  %71 = call ptr @gen_lowpart_SUBREG(i32 noundef %47, ptr noundef %70) #18
  store ptr %71, ptr %35, align 8, !tbaa !471
  %72 = load i32, ptr %71, align 8
  %73 = or i32 %72, 268435456
  store i32 %73, ptr %71, align 8
  %74 = load ptr, ptr %35, align 8, !tbaa !471
  %75 = load i32, ptr %52, align 8, !tbaa !455
  %76 = icmp slt i32 %75, 0
  %77 = load i32, ptr %74, align 8
  br i1 %76, label %78, label %80

78:                                               ; preds = %69
  %79 = or i32 %77, 134217728
  br label %87

80:                                               ; preds = %69
  %81 = and i32 %77, -134217729
  store i32 %81, ptr %74, align 8
  %82 = load i32, ptr %52, align 8, !tbaa !455
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
  br i1 %92, label %93, label %16, !prof !421, !llvm.loop !472

93:                                               ; preds = %90, %12, %7
  ret void
}

; Function Attrs: optsize
declare void @stack_protect_epilogue() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compute_argument_block_size(i32 noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !249 !PGOFuncName !473 {
  %6 = load i64, ptr %1, align 8, !tbaa !352
  %7 = load i32, ptr @target_flags, align 4, !tbaa !306
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15, !prof !330

10:                                               ; preds = %5
  %11 = tail call i32 @ix86_cfun_abi() #18
  %12 = icmp eq i32 %11, 1
  %13 = icmp sgt i32 %4, 32
  %14 = and i1 %13, %12
  br i1 %14, label %21, label %17, !prof !474

15:                                               ; preds = %5
  %16 = icmp sgt i32 %4, 32
  br i1 %16, label %21, label %17, !prof !475

17:                                               ; preds = %15, %10
  %18 = getelementptr inbounds %struct.args_size, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !345
  %20 = icmp eq ptr %19, null
  br i1 %20, label %65, label %25, !prof !250

21:                                               ; preds = %15, %10
  %22 = getelementptr inbounds %struct.args_size, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !345
  %24 = icmp eq ptr %23, null
  br i1 %24, label %70, label %25, !prof !250

25:                                               ; preds = %21, %17
  %26 = phi ptr [ %23, %21 ], [ %19, %17 ]
  %27 = phi ptr [ %22, %21 ], [ %18, %17 ]
  %28 = phi i32 [ 32, %21 ], [ %4, %17 ]
  %29 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !320
  %30 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %29, ptr noundef nonnull %26) #18
  %31 = load i64, ptr %1, align 8, !tbaa !352
  %32 = tail call ptr @size_int_kind(i64 noundef %31, i32 noundef 1) #18
  %33 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %30, ptr noundef %32) #18
  store ptr %33, ptr %27, align 8, !tbaa !345
  store i64 0, ptr %1, align 8, !tbaa !352
  %34 = sdiv i32 %28, 8
  %35 = icmp sgt i32 %28, 15
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %38 = add nsw i32 %34, -1
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1231, ptr noundef nonnull @.str.1) #18
  %42 = load ptr, ptr %27, align 8, !tbaa !345
  br label %43

43:                                               ; preds = %36, %41
  %44 = phi ptr [ %33, %36 ], [ %42, %41 ]
  %45 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %44, i32 noundef %34) #18
  store ptr %45, ptr %27, align 8, !tbaa !345
  br label %46

46:                                               ; preds = %43, %25
  %47 = phi ptr [ %45, %43 ], [ %33, %25 ]
  %48 = icmp sgt i32 %0, 0
  br i1 %48, label %49, label %95

49:                                               ; preds = %46
  %50 = zext nneg i32 %0 to i64
  %51 = tail call ptr @size_int_kind(i64 noundef %50, i32 noundef 1) #18
  %52 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 81, ptr noundef %47, ptr noundef %51) #18
  store ptr %52, ptr %27, align 8, !tbaa !345
  %53 = icmp eq ptr %2, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !272
  br label %57

57:                                               ; preds = %49, %54
  %58 = phi ptr [ %56, %54 ], [ %3, %49 ]
  %59 = tail call i32 @ix86_function_type_abi(ptr noundef %58) #18
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %95, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %27, align 8, !tbaa !345
  %63 = tail call ptr @size_int_kind(i64 noundef %50, i32 noundef 1) #18
  %64 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 64, ptr noundef %62, ptr noundef %63) #18
  store ptr %64, ptr %27, align 8, !tbaa !345
  br label %95

65:                                               ; preds = %17
  %66 = lshr i32 %4, 3
  %67 = icmp slt i32 %4, 8
  %68 = select i1 %67, i32 1, i32 %66, !prof !476
  %69 = zext nneg i32 %68 to i64
  br label %70

70:                                               ; preds = %65, %21
  %71 = phi i64 [ 4, %21 ], [ %69, %65 ]
  %72 = load i64, ptr %1, align 8, !tbaa !352
  %73 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %74 = sext i32 %73 to i64
  %75 = add i64 %72, %71
  %76 = add i64 %75, %74
  %77 = freeze i64 %76
  %78 = add i64 %77, -1
  %79 = srem i64 %78, %71
  %80 = add nsw i64 %79, %74
  %81 = sub i64 %78, %80
  %82 = sext i32 %0 to i64
  %83 = tail call i64 @llvm.smax.i64(i64 %81, i64 %82)
  store i64 %83, ptr %1, align 8, !tbaa !352
  %84 = icmp eq ptr %2, null
  br i1 %84, label %88, label %85, !prof !330

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !272
  br label %88

88:                                               ; preds = %70, %85
  %89 = phi ptr [ %87, %85 ], [ %3, %70 ]
  %90 = tail call i32 @ix86_function_type_abi(ptr noundef %89) #18
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %95, label %92, !prof !330

92:                                               ; preds = %88
  %93 = load i64, ptr %1, align 8, !tbaa !352
  %94 = sub nsw i64 %93, %82
  store i64 %94, ptr %1, align 8, !tbaa !352
  br label %95

95:                                               ; preds = %88, %92, %46, %61, %57
  %96 = trunc i64 %6 to i32
  ret i32 %96
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
define internal fastcc ptr @expand_normal(ptr noundef %0) unnamed_addr #0 !prof !316 !PGOFuncName !477 {
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
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc i32 @combine_pending_stack_adjustment_and_call(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #9 !prof !316 !PGOFuncName !478 {
  %4 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %5 = add nsw i32 %4, %0
  %6 = urem i32 %5, %2
  %7 = zext nneg i32 %6 to i64
  %8 = load i32, ptr @x_rtl, align 8, !tbaa !372
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
  store i64 %19, ptr %1, align 8, !tbaa !352
  %20 = trunc i64 %17 to i32
  %21 = sub i32 %8, %20
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @allocate_dynamic_stack_space(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_argument_addresses(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !249 !PGOFuncName !479 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %164, label %5, !prof !330

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 49
  br i1 %8, label %9, label %18, !prof !330

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !272
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !272
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !272
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi i64 [ %17, %9 ], [ 0, %5 ]
  %20 = phi ptr [ %11, %9 ], [ %1, %5 ]
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %164, !prof !369

22:                                               ; preds = %18
  %23 = zext nneg i32 %2 to i64
  br label %24

24:                                               ; preds = %22, %161
  %25 = phi i64 [ 0, %22 ], [ %162, %161 ]
  %26 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25
  %27 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10
  %28 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 1
  %29 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !480
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35, !prof !389

32:                                               ; preds = %24
  %33 = load i64, ptr %28, align 8, !tbaa !481
  %34 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %33) #18
  br label %42

35:                                               ; preds = %24
  %36 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !320
  %37 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %36, ptr noundef nonnull %30) #18
  %38 = load i64, ptr %28, align 8, !tbaa !481
  %39 = tail call ptr @size_int_kind(i64 noundef %38, i32 noundef 1) #18
  %40 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %37, ptr noundef %39) #18
  %41 = tail call fastcc ptr @expand_normal(ptr noundef %40) #19
  br label %42

42:                                               ; preds = %35, %32
  %43 = phi ptr [ %34, %32 ], [ %41, %35 ]
  %44 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 2
  %45 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 2, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !482
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51, !prof !389

48:                                               ; preds = %42
  %49 = load i64, ptr %44, align 8, !tbaa !483
  %50 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %49) #18
  br label %58

51:                                               ; preds = %42
  %52 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !320
  %53 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %52, ptr noundef nonnull %46) #18
  %54 = load i64, ptr %44, align 8, !tbaa !483
  %55 = tail call ptr @size_int_kind(i64 noundef %54, i32 noundef 1) #18
  %56 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %53, ptr noundef %55) #18
  %57 = tail call fastcc ptr @expand_normal(ptr noundef %56) #19
  br label %58

58:                                               ; preds = %51, %48
  %59 = phi ptr [ %50, %48 ], [ %57, %51 ]
  %60 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !386
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71, !prof !389

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !392
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67, !prof !389

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 8
  %69 = load i32, ptr %68, align 4, !tbaa !397
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %161, label %71

71:                                               ; preds = %67, %63, %58
  %72 = load i32, ptr %43, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 30
  br i1 %74, label %75, label %79, !prof !389

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !272
  %78 = tail call ptr @plus_constant(ptr noundef %20, i64 noundef %77) #18
  br label %81

79:                                               ; preds = %71
  %80 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %20, ptr noundef nonnull %43) #18
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi ptr [ %78, %75 ], [ %80, %79 ]
  %83 = tail call ptr @plus_constant(ptr noundef %82, i64 noundef %19) #18
  %84 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 8
  %85 = load i32, ptr %84, align 4, !tbaa !397
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %96, label %87, !prof !389

87:                                               ; preds = %81
  %88 = load i64, ptr %27, align 8, !tbaa !420
  %89 = trunc i64 %88 to i32
  %90 = shl i32 %89, 3
  %91 = tail call i32 @mode_for_size(i32 noundef %90, i32 noundef 2, i32 noundef 1) #18
  %92 = tail call ptr @gen_rtx_MEM(i32 noundef %91, ptr noundef %83) #18
  %93 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 11
  store ptr %92, ptr %93, align 8, !tbaa !395
  %94 = and i64 %88, 4294967295
  %95 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %94) #18
  tail call void @set_mem_size(ptr noundef %92, ptr noundef %95) #18
  br label %104

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !456
  %99 = tail call ptr @gen_rtx_MEM(i32 noundef %98, ptr noundef %83) #18
  %100 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 11
  store ptr %99, ptr %100, align 8, !tbaa !395
  %101 = load ptr, ptr %26, align 8, !tbaa !450
  %102 = getelementptr inbounds %struct.tree_common, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !272
  tail call void @set_mem_attributes(ptr noundef %99, ptr noundef %103, i32 noundef 1) #18
  br label %104

104:                                              ; preds = %96, %87
  %105 = phi i64 [ %88, %87 ], [ 0, %96 ]
  %106 = phi i32 [ %91, %87 ], [ 0, %96 ]
  %107 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 5
  %108 = load i32, ptr %107, align 4, !tbaa !484
  %109 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 10, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !485
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %124, !prof !453

112:                                              ; preds = %104
  %113 = load i32, ptr %43, align 8
  %114 = and i32 %113, 65535
  %115 = icmp eq i32 %114, 30
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %118 = load i64, ptr %117, align 8, !tbaa !272
  %119 = trunc i64 %118 to i32
  %120 = shl i32 %119, 3
  %121 = or i32 %120, %108
  %122 = sub i32 0, %121
  %123 = and i32 %121, %122
  br label %124

124:                                              ; preds = %104, %112, %116
  %125 = phi i32 [ %123, %116 ], [ 8, %112 ], [ %108, %104 ]
  %126 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 11
  %127 = load ptr, ptr %126, align 8, !tbaa !395
  tail call void @set_mem_align(ptr noundef %127, i32 noundef %125) #18
  %128 = load i32, ptr %59, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 30
  br i1 %130, label %131, label %135, !prof !389

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !272
  %134 = tail call ptr @plus_constant(ptr noundef %20, i64 noundef %133) #18
  br label %137

135:                                              ; preds = %124
  %136 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %20, ptr noundef nonnull %59) #18
  br label %137

137:                                              ; preds = %135, %131
  %138 = phi ptr [ %134, %131 ], [ %136, %135 ]
  %139 = tail call ptr @plus_constant(ptr noundef %138, i64 noundef %19) #18
  %140 = load i32, ptr %84, align 4, !tbaa !397
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %147, label %142, !prof !389

142:                                              ; preds = %137
  %143 = tail call ptr @gen_rtx_MEM(i32 noundef %106, ptr noundef %139) #18
  %144 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 12
  store ptr %143, ptr %144, align 8, !tbaa !419
  %145 = and i64 %105, 4294967295
  %146 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %145) #18
  tail call void @set_mem_size(ptr noundef %143, ptr noundef %146) #18
  br label %155

147:                                              ; preds = %137
  %148 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !456
  %150 = tail call ptr @gen_rtx_MEM(i32 noundef %149, ptr noundef %139) #18
  %151 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 12
  store ptr %150, ptr %151, align 8, !tbaa !419
  %152 = load ptr, ptr %26, align 8, !tbaa !450
  %153 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !272
  tail call void @set_mem_attributes(ptr noundef %150, ptr noundef %154, i32 noundef 1) #18
  br label %155

155:                                              ; preds = %147, %142
  %156 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %25, i32 12
  %157 = load ptr, ptr %156, align 8, !tbaa !419
  %158 = load i32, ptr %107, align 4, !tbaa !484
  tail call void @set_mem_align(ptr noundef %157, i32 noundef %158) #18
  %159 = load ptr, ptr %126, align 8, !tbaa !395
  tail call void @set_mem_alias_set(ptr noundef %159, i32 noundef 0) #18
  %160 = load ptr, ptr %156, align 8, !tbaa !419
  tail call void @set_mem_alias_set(ptr noundef %160, i32 noundef 0) #18
  br label %161

161:                                              ; preds = %67, %155
  %162 = add nuw nsw i64 %25, 1
  %163 = icmp eq i64 %162, %23
  br i1 %163, label %164, label %24, !prof !384, !llvm.loop !486

164:                                              ; preds = %161, %18, %3
  ret void
}

; Function Attrs: optsize
declare void @anti_adjust_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rtx_for_function_call(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !249 !PGOFuncName !487 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4, !prof !330

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 16777216
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %14, !prof !330

8:                                                ; preds = %4
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !320
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  tail call void @assemble_external(ptr noundef nonnull %0) #18
  %12 = load i64, ptr %0, align 8
  %13 = or i64 %12, 16777216
  store i64 %13, ptr %0, align 8
  br label %14

14:                                               ; preds = %11, %8, %4
  %15 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !272
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20, !prof !488

18:                                               ; preds = %14
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #18
  %19 = load ptr, ptr %15, align 8, !tbaa !272
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi ptr [ %19, %18 ], [ %16, %14 ]
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !272
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
define internal fastcc void @precompute_register_parameters(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !249 !PGOFuncName !489 {
  store i32 0, ptr %2, align 4, !tbaa !306
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %5, label %125, !prof !369

5:                                                ; preds = %3
  %6 = zext nneg i32 %0 to i64
  br label %7

7:                                                ; preds = %5, %122
  %8 = phi i64 [ 0, %5 ], [ %123, %122 ]
  %9 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8
  %10 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !392
  %12 = icmp eq ptr %11, null
  br i1 %12, label %122, label %13, !prof !389

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !386
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %122

17:                                               ; preds = %13
  store i32 1, ptr %2, align 4, !tbaa !306
  %18 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !428
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  tail call void @push_temp_slots() #18
  %22 = load ptr, ptr %9, align 8, !tbaa !450
  %23 = tail call fastcc ptr @expand_normal(ptr noundef %22) #19
  store ptr %23, ptr %18, align 8, !tbaa !428
  tail call void @preserve_temp_slots(ptr noundef %23) #18
  tail call void @pop_temp_slots() #18
  %24 = load ptr, ptr %18, align 8, !tbaa !428
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi ptr [ %24, %21 ], [ %19, %17 ]
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 65535
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !306
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = tail call zeroext i8 @legitimate_constant_p(ptr noundef nonnull %26) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !456
  %39 = load ptr, ptr %18, align 8, !tbaa !428
  %40 = tail call ptr @force_reg(i32 noundef %38, ptr noundef %39) #18
  store ptr %40, ptr %18, align 8, !tbaa !428
  br label %41

41:                                               ; preds = %36, %33, %25
  %42 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !456
  %44 = load ptr, ptr %9, align 8, !tbaa !450
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !272
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
  %61 = load i32, ptr %42, align 8, !tbaa !456
  %62 = load ptr, ptr %9, align 8, !tbaa !450
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !272
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
  %77 = load ptr, ptr %18, align 8, !tbaa !428
  %78 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 7
  %79 = load i32, ptr %78, align 8, !tbaa !455
  %80 = tail call ptr @convert_modes(i32 noundef %61, i32 noundef %76, ptr noundef %77, i32 noundef %79) #18
  store ptr %80, ptr %18, align 8, !tbaa !428
  br label %81

81:                                               ; preds = %75, %57
  %82 = load ptr, ptr %10, align 8, !tbaa !392
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 65535
  %85 = icmp eq i32 %84, 15
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load ptr, ptr %9, align 8, !tbaa !450
  %88 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !272
  %90 = load ptr, ptr %18, align 8, !tbaa !428
  %91 = tail call i64 @int_size_in_bytes(ptr noundef %89) #18
  %92 = trunc i64 %91 to i32
  %93 = tail call ptr @emit_group_load_into_temps(ptr noundef nonnull %82, ptr noundef %90, ptr noundef %89, i32 noundef %92) #18
  %94 = getelementptr inbounds %struct.arg_data, ptr %1, i64 %8, i32 6
  store ptr %93, ptr %94, align 8, !tbaa !490
  br label %122

95:                                               ; preds = %81
  %96 = load ptr, ptr %18, align 8, !tbaa !428
  %97 = load i32, ptr %96, align 8
  %98 = trunc i32 %97 to i16
  switch i16 %98, label %105 [
    i16 37, label %122
    i16 39, label %99
  ]

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.rtx_def, ptr %96, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !272
  %102 = load i32, ptr %101, align 8
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %103, 37
  br i1 %104, label %122, label %105

105:                                              ; preds = %95, %99
  %106 = load i32, ptr %42, align 8, !tbaa !456
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %122, label %108

108:                                              ; preds = %105
  %109 = tail call zeroext i8 @optimize_insn_for_speed_p() #18
  %110 = tail call i32 @rtx_cost(ptr noundef nonnull %96, i32 noundef 23, i8 noundef zeroext %109) #18
  %111 = icmp sgt i32 %110, 4
  br i1 %111, label %112, label %122

112:                                              ; preds = %108
  %113 = load i32, ptr %2, align 4, !tbaa !306
  %114 = icmp ne i32 %113, 0
  %115 = load i32, ptr @optimize, align 4
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, ptr %42, align 8, !tbaa !456
  %120 = load ptr, ptr %18, align 8, !tbaa !428
  %121 = tail call ptr @copy_to_mode_reg(i32 noundef %119, ptr noundef %120) #18
  store ptr %121, ptr %18, align 8, !tbaa !428
  br label %122

122:                                              ; preds = %95, %7, %13, %99, %105, %108, %118, %112, %86
  %123 = add nuw nsw i64 %8, 1
  %124 = icmp eq i64 %123, %6
  br i1 %124, label %125, label %7, !prof !384, !llvm.loop !491

125:                                              ; preds = %122, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @save_fixed_argument_area(i32 noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !467 !PGOFuncName !492 {
  %5 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  %6 = icmp slt i32 %5, %0
  br i1 %6, label %7, label %8, !prof !383

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %4
  %9 = phi i32 [ %5, %7 ], [ %0, %4 ]
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %64, !prof !493

11:                                               ; preds = %8
  %12 = load ptr, ptr @stack_usage_map, align 8, !tbaa !320
  br label %13

13:                                               ; preds = %11, %60
  %14 = phi i64 [ 0, %11 ], [ %62, %60 ]
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !272
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
  %25 = load i8, ptr %24, align 1, !tbaa !272
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %21, label %27, !llvm.loop !494

27:                                               ; preds = %21
  %28 = trunc i64 %14 to i32
  %29 = trunc i64 %23 to i32
  store i32 %28, ptr %2, align 4, !tbaa !306
  store i32 %29, ptr %3, align 4, !tbaa !306
  %30 = sub nsw i32 %29, %28
  %31 = add nsw i32 %30, 1
  %32 = shl nsw i32 %31, 3
  %33 = tail call i32 @mode_for_size(i32 noundef %32, i32 noundef 2, i32 noundef 1) #18
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !272
  %37 = zext i8 %36 to i32
  %38 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !306
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
  br i1 %63, label %64, label %13, !prof !405, !llvm.loop !495

64:                                               ; preds = %60, %8, %51, %57
  %65 = phi ptr [ %53, %51 ], [ %58, %57 ], [ null, %8 ], [ null, %60 ]
  ret ptr %65
}

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @store_one_arg(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !prof !444 !PGOFuncName !496 {
  %6 = load ptr, ptr %0, align 8, !tbaa !450
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %481, label %10, !prof !453

10:                                               ; preds = %5
  tail call void @push_temp_slots() #18
  %11 = load i32, ptr @target_flags, align 4, !tbaa !306
  %12 = and i32 %11, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20, !prof !453

14:                                               ; preds = %10
  %15 = tail call i32 @ix86_cfun_abi() #18
  %16 = icmp eq i32 %15, 1
  %17 = and i32 %2, 256
  %18 = icmp eq i32 %17, 0
  %19 = and i1 %18, %16
  br i1 %19, label %23, label %110, !prof !497

20:                                               ; preds = %10
  %21 = and i32 %2, 256
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %110, !prof !498

23:                                               ; preds = %14, %20
  %24 = icmp eq ptr %1, null
  %25 = icmp ne i32 %3, 0
  %26 = or i1 %24, %25
  br i1 %26, label %110, label %27, !prof !499

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !395
  %30 = icmp eq ptr %29, null
  br i1 %30, label %110, label %31, !prof !470

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !419
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !272
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 49
  br i1 %38, label %39, label %45, !prof !500

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.rtx_def, ptr %35, i64 0, i32 1, i32 0, i32 0, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !272
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !272
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %31, %39
  %46 = phi i32 [ %44, %39 ], [ 0, %31 ]
  %47 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %48 = load i64, ptr %47, align 8, !tbaa !420
  %49 = trunc i64 %48 to i32
  %50 = add i32 %46, %49
  %51 = icmp slt i32 %46, %4
  br i1 %51, label %52, label %53, !prof !470

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %45
  %54 = phi i32 [ %4, %52 ], [ %46, %45 ]
  %55 = icmp slt i32 %54, %50
  br i1 %55, label %56, label %110, !prof !501

56:                                               ; preds = %53
  %57 = load ptr, ptr @stack_usage_map, align 8, !tbaa !320
  %58 = tail call i32 @llvm.smax.i32(i32 %46, i32 %4)
  %59 = sext i32 %58 to i64
  %60 = add i32 %50, %58
  %61 = sub i32 %60, %54
  br label %66

62:                                               ; preds = %66
  %63 = add nsw i64 %67, 1
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %110, label %66, !prof !502, !llvm.loop !503

66:                                               ; preds = %56, %62
  %67 = phi i64 [ %59, %56 ], [ %63, %62 ]
  %68 = getelementptr inbounds i8, ptr %57, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !272
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %62, label %71, !prof !504

71:                                               ; preds = %66
  %72 = shl i32 %49, 3
  %73 = tail call i32 @mode_for_size(i32 noundef %72, i32 noundef 2, i32 noundef 1) #18
  %74 = load ptr, ptr %32, align 8, !tbaa !419
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !272
  %77 = tail call ptr @memory_address_addr_space(i32 noundef %73, ptr noundef %76, i8 noundef zeroext 0) #18
  %78 = tail call ptr @gen_rtx_MEM(i32 noundef %73, ptr noundef %77) #18
  %79 = icmp eq i32 %73, 1
  br i1 %79, label %80, label %106

80:                                               ; preds = %71
  %81 = load ptr, ptr %0, align 8, !tbaa !450
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !272
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
  store ptr %99, ptr %100, align 8, !tbaa !415
  tail call void @preserve_temp_slots(ptr noundef %99) #18
  %101 = load ptr, ptr %100, align 8, !tbaa !415
  %102 = tail call ptr @validize_mem(ptr noundef %101) #18
  %103 = load i64, ptr %47, align 8, !tbaa !420
  %104 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %103) #18
  %105 = tail call ptr @emit_block_move(ptr noundef %102, ptr noundef %78, ptr noundef %104, i32 noundef 2) #18
  br label %110

106:                                              ; preds = %71
  %107 = tail call ptr @gen_reg_rtx(i32 noundef %73) #18
  %108 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 13
  store ptr %107, ptr %108, align 8, !tbaa !415
  %109 = tail call ptr @emit_move_insn(ptr noundef %107, ptr noundef %78) #18
  br label %110

110:                                              ; preds = %62, %53, %80, %106, %23, %27, %20, %14
  %111 = phi i32 [ 0, %20 ], [ 0, %23 ], [ 0, %27 ], [ 0, %14 ], [ %50, %106 ], [ %50, %80 ], [ %50, %53 ], [ %50, %62 ]
  %112 = phi i32 [ 0, %20 ], [ 0, %23 ], [ 0, %27 ], [ 0, %14 ], [ %46, %106 ], [ %46, %80 ], [ %46, %53 ], [ %46, %62 ]
  %113 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 9
  %114 = load i32, ptr %113, align 8, !tbaa !386
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %132, !prof !389

116:                                              ; preds = %110
  %117 = and i32 %2, 256
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119, !prof !498

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 5
  br label %123

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 4
  br label %123

123:                                              ; preds = %119, %121
  %124 = phi ptr [ %120, %119 ], [ %122, %121 ]
  %125 = load ptr, ptr %124, align 8, !tbaa !320
  %126 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 8
  %127 = load i32, ptr %126, align 4, !tbaa !397
  %128 = icmp eq ptr %125, null
  br i1 %128, label %132, label %129, !prof !461

129:                                              ; preds = %123
  %130 = icmp eq i32 %127, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %129
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4085, ptr noundef nonnull @.str.1) #18
  br label %132

132:                                              ; preds = %110, %123, %129, %131
  %133 = phi ptr [ null, %123 ], [ %125, %129 ], [ %125, %131 ], [ null, %110 ]
  %134 = phi i32 [ %127, %123 ], [ %127, %129 ], [ 0, %131 ], [ 0, %110 ]
  %135 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 15
  %136 = load i32, ptr %135, align 8, !tbaa !505
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %139, label %138, !prof !389

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %138, %132
  %140 = phi ptr [ null, %138 ], [ %133, %132 ]
  %141 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !428
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %218, !prof !389

144:                                              ; preds = %139
  %145 = load i32, ptr %113, align 8, !tbaa !386
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %150, label %147, !prof !389

147:                                              ; preds = %144
  %148 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !306
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr @stack_arg_under_construction, align 4, !tbaa !306
  br label %150

150:                                              ; preds = %147, %144
  %151 = icmp eq i32 %134, 0
  br i1 %151, label %152, label %173, !prof !389

152:                                              ; preds = %150
  %153 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !272
  %155 = load i64, ptr %154, align 8
  %156 = and i64 %155, 65535
  %157 = icmp eq i64 %156, 14
  br i1 %157, label %158, label %160, !prof !453

158:                                              ; preds = %152
  %159 = tail call i32 @vector_type_mode(ptr noundef nonnull %154) #18
  br label %165

160:                                              ; preds = %152
  %161 = getelementptr inbounds %struct.tree_type, ptr %154, i64 0, i32 6
  %162 = load i32, ptr %161, align 4
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  br label %165

165:                                              ; preds = %160, %158
  %166 = phi i32 [ %159, %158 ], [ %164, %160 ]
  %167 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %168 = load i32, ptr %167, align 8, !tbaa !456
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %173, !prof !389

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %172 = load ptr, ptr %171, align 8, !tbaa !395
  br label %173

173:                                              ; preds = %150, %165, %170
  %174 = phi ptr [ %172, %170 ], [ null, %165 ], [ null, %150 ]
  %175 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %6, ptr noundef %174, i32 noundef 0, i32 noundef 1) #19
  store ptr %175, ptr %141, align 8, !tbaa !428
  %176 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !456
  %178 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !272
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 65535
  %182 = icmp eq i64 %181, 14
  br i1 %182, label %183, label %185, !prof !453

183:                                              ; preds = %173
  %184 = tail call i32 @vector_type_mode(ptr noundef nonnull %179) #18
  br label %190

185:                                              ; preds = %173
  %186 = getelementptr inbounds %struct.tree_type, ptr %179, i64 0, i32 6
  %187 = load i32, ptr %186, align 4
  %188 = lshr i32 %187, 16
  %189 = and i32 %188, 255
  br label %190

190:                                              ; preds = %185, %183
  %191 = phi i32 [ %184, %183 ], [ %189, %185 ]
  %192 = icmp eq i32 %177, %191
  br i1 %192, label %212, label %193, !prof !389

193:                                              ; preds = %190
  %194 = load i32, ptr %176, align 8, !tbaa !456
  %195 = load ptr, ptr %178, align 8, !tbaa !272
  %196 = load i64, ptr %195, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 14
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = tail call i32 @vector_type_mode(ptr noundef nonnull %195) #18
  br label %206

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.tree_type, ptr %195, i64 0, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = lshr i32 %203, 16
  %205 = and i32 %204, 255
  br label %206

206:                                              ; preds = %201, %199
  %207 = phi i32 [ %200, %199 ], [ %205, %201 ]
  %208 = load ptr, ptr %141, align 8, !tbaa !428
  %209 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 7
  %210 = load i32, ptr %209, align 8, !tbaa !455
  %211 = tail call ptr @convert_modes(i32 noundef %194, i32 noundef %207, ptr noundef %208, i32 noundef %210) #18
  store ptr %211, ptr %141, align 8, !tbaa !428
  br label %212

212:                                              ; preds = %206, %190
  %213 = load i32, ptr %113, align 8, !tbaa !386
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %218, label %215, !prof !389

215:                                              ; preds = %212
  %216 = load i32, ptr @stack_arg_under_construction, align 4, !tbaa !306
  %217 = add nsw i32 %216, -1
  store i32 %217, ptr @stack_arg_under_construction, align 4, !tbaa !306
  br label %218

218:                                              ; preds = %212, %215, %139
  %219 = and i32 %2, 256
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %233, label %221, !prof !498

221:                                              ; preds = %218
  %222 = load ptr, ptr %141, align 8, !tbaa !428
  %223 = load i32, ptr %222, align 8
  %224 = and i32 %223, 65535
  %225 = icmp eq i32 %224, 43
  br i1 %225, label %226, label %233, !prof !506

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.rtx_def, ptr %222, i64 0, i32 1
  %228 = load ptr, ptr %227, align 8, !tbaa !272
  %229 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %230 = load i64, ptr %229, align 8, !tbaa !420
  %231 = tail call fastcc zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef %228, i64 noundef %230) #19, !range !295
  %232 = zext nneg i8 %231 to i32
  br label %233

233:                                              ; preds = %226, %221, %218
  %234 = phi i32 [ 0, %221 ], [ 0, %218 ], [ %232, %226 ]
  %235 = and i32 %2, 32
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %238, label %237, !prof !389

237:                                              ; preds = %233
  tail call void @do_pending_stack_adjust() #18
  br label %238

238:                                              ; preds = %237, %233
  %239 = load ptr, ptr %141, align 8, !tbaa !428
  %240 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 11
  %241 = load ptr, ptr %240, align 8, !tbaa !395
  %242 = icmp eq ptr %239, %241
  br i1 %242, label %435, label %243, !prof !453

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 1
  %245 = load i32, ptr %244, align 8, !tbaa !456
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %285, label %247, !prof !453

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 5
  %249 = load i32, ptr %248, align 4, !tbaa !484
  %250 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !272
  %252 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %253 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !480
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %259, !prof !389

256:                                              ; preds = %247
  %257 = load i64, ptr %252, align 8, !tbaa !481
  %258 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %257) #18
  br label %266

259:                                              ; preds = %247
  %260 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !320
  %261 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %260, ptr noundef nonnull %254) #18
  %262 = load i64, ptr %252, align 8, !tbaa !481
  %263 = tail call ptr @size_int_kind(i64 noundef %262, i32 noundef 1) #18
  %264 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %261, ptr noundef %263) #18
  %265 = tail call fastcc ptr @expand_normal(ptr noundef %264) #19
  br label %266

266:                                              ; preds = %259, %256
  %267 = phi ptr [ %258, %256 ], [ %265, %259 ]
  %268 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3
  %269 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !507
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %275, !prof !389

272:                                              ; preds = %266
  %273 = load i64, ptr %268, align 8, !tbaa !508
  %274 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %273) #18
  br label %282

275:                                              ; preds = %266
  %276 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !320
  %277 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %276, ptr noundef nonnull %270) #18
  %278 = load i64, ptr %268, align 8, !tbaa !508
  %279 = tail call ptr @size_int_kind(i64 noundef %278, i32 noundef 1) #18
  %280 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %277, ptr noundef %279) #18
  %281 = tail call fastcc ptr @expand_normal(ptr noundef %280) #19
  br label %282

282:                                              ; preds = %275, %272
  %283 = phi ptr [ %274, %272 ], [ %281, %275 ]
  tail call void @emit_push_insn(ptr noundef %239, i32 noundef %245, ptr noundef %251, ptr noundef null, i32 noundef %249, i32 noundef %134, ptr noundef %140, i32 noundef 0, ptr noundef %1, ptr noundef %267, i32 noundef %4, ptr noundef %283) #18
  %284 = icmp eq i32 %134, 0
  br i1 %284, label %431, label %435, !prof !389

285:                                              ; preds = %243
  %286 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10
  %287 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !463
  %289 = icmp eq ptr %288, null
  br i1 %289, label %297, label %290

290:                                              ; preds = %285
  %291 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !320
  %292 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %291, ptr noundef nonnull %288) #18
  %293 = load i64, ptr %286, align 8, !tbaa !420
  %294 = tail call ptr @size_int_kind(i64 noundef %293, i32 noundef 1) #18
  %295 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %292, ptr noundef %294) #18
  %296 = tail call fastcc ptr @expand_normal(ptr noundef %295) #19
  br label %321

297:                                              ; preds = %285
  %298 = load i64, ptr %286, align 8, !tbaa !420
  %299 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %300 = load ptr, ptr %299, align 8, !tbaa !272
  %301 = tail call i64 @int_size_in_bytes(ptr noundef %300) #18
  %302 = sub nsw i64 %298, %301
  %303 = trunc i64 %302 to i32
  %304 = add i32 %134, %303
  %305 = load ptr, ptr %299, align 8, !tbaa !272
  %306 = tail call ptr @size_in_bytes(ptr noundef %305) #18
  %307 = load ptr, ptr @sizetype_tab, align 16, !tbaa !320
  %308 = load i64, ptr %307, align 8
  %309 = and i64 %308, 65535
  %310 = icmp eq i64 %309, 14
  br i1 %310, label %311, label %313

311:                                              ; preds = %297
  %312 = tail call i32 @vector_type_mode(ptr noundef nonnull %307) #18
  br label %318

313:                                              ; preds = %297
  %314 = getelementptr inbounds %struct.tree_type, ptr %307, i64 0, i32 6
  %315 = load i32, ptr %314, align 4
  %316 = lshr i32 %315, 16
  %317 = and i32 %316, 255
  br label %318

318:                                              ; preds = %313, %311
  %319 = phi i32 [ %312, %311 ], [ %317, %313 ]
  %320 = tail call fastcc ptr @expand_expr(ptr noundef %306, ptr noundef null, i32 noundef %319, i32 noundef 0) #19
  br label %321

321:                                              ; preds = %318, %290
  %322 = phi i32 [ 0, %290 ], [ %304, %318 ]
  %323 = phi ptr [ %296, %290 ], [ %320, %318 ]
  %324 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 5
  %325 = load i32, ptr %324, align 4, !tbaa !484
  br i1 %220, label %390, label %326

326:                                              ; preds = %321
  %327 = load ptr, ptr %141, align 8, !tbaa !428
  %328 = load i32, ptr %327, align 8
  %329 = and i32 %328, 65535
  %330 = icmp eq i32 %329, 43
  br i1 %330, label %331, label %390

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.rtx_def, ptr %327, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !272
  %334 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !380
  %335 = icmp eq ptr %333, %334
  br i1 %335, label %355, label %336

336:                                              ; preds = %331
  %337 = load i32, ptr %333, align 8
  %338 = and i32 %337, 65535
  %339 = icmp eq i32 %338, 49
  br i1 %339, label %340, label %390

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.rtx_def, ptr %333, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !272
  %343 = icmp eq ptr %342, %334
  br i1 %343, label %344, label %390

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.rtx_def, ptr %333, i64 0, i32 1, i32 0, i32 0, i64 1
  %346 = load ptr, ptr %345, align 8, !tbaa !272
  %347 = load i32, ptr %346, align 8
  %348 = and i32 %347, 65535
  %349 = icmp eq i32 %348, 30
  br i1 %349, label %350, label %390

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.rtx_def, ptr %346, i64 0, i32 1
  %352 = load i64, ptr %351, align 8, !tbaa !272
  %353 = shl i64 %352, 32
  %354 = ashr exact i64 %353, 32
  br label %355

355:                                              ; preds = %331, %350
  %356 = phi i64 [ %354, %350 ], [ 0, %331 ]
  %357 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %358 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !480
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %368

361:                                              ; preds = %355
  %362 = load ptr, ptr %287, align 8, !tbaa !463
  %363 = icmp eq ptr %362, null
  br i1 %363, label %364, label %368

364:                                              ; preds = %361
  %365 = load i32, ptr %323, align 8
  %366 = and i32 %365, 65535
  %367 = icmp eq i32 %366, 30
  br i1 %367, label %369, label %368

368:                                              ; preds = %364, %361, %355
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4270, ptr noundef nonnull @.str.1) #18
  br label %369

369:                                              ; preds = %364, %368
  %370 = load i64, ptr %357, align 8, !tbaa !481
  %371 = icmp sgt i64 %370, %356
  br i1 %371, label %372, label %378

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.rtx_def, ptr %323, i64 0, i32 1
  %374 = load i64, ptr %373, align 8, !tbaa !272
  %375 = add nsw i64 %374, %356
  %376 = icmp slt i64 %370, %375
  %377 = select i1 %376, i32 1, i32 %234
  br label %390

378:                                              ; preds = %369
  %379 = icmp slt i64 %370, %356
  %380 = load i64, ptr %286, align 8, !tbaa !420
  br i1 %379, label %381, label %385

381:                                              ; preds = %378
  %382 = add nsw i64 %380, %370
  %383 = icmp slt i64 %356, %382
  %384 = select i1 %383, i32 1, i32 %234
  br label %390

385:                                              ; preds = %378
  %386 = getelementptr inbounds %struct.rtx_def, ptr %323, i64 0, i32 1
  %387 = load i64, ptr %386, align 8, !tbaa !272
  %388 = icmp eq i64 %380, %387
  %389 = select i1 %388, i32 %234, i32 1
  br label %390

390:                                              ; preds = %385, %381, %372, %336, %340, %344, %326, %321
  %391 = phi i32 [ %234, %326 ], [ %234, %321 ], [ %234, %344 ], [ %234, %340 ], [ %234, %336 ], [ %377, %372 ], [ %384, %381 ], [ %389, %385 ]
  %392 = load ptr, ptr %141, align 8, !tbaa !428
  %393 = load i32, ptr %244, align 8, !tbaa !456
  %394 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %395 = load ptr, ptr %394, align 8, !tbaa !272
  %396 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1
  %397 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 1, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !480
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %403

400:                                              ; preds = %390
  %401 = load i64, ptr %396, align 8, !tbaa !481
  %402 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %401) #18
  br label %410

403:                                              ; preds = %390
  %404 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !320
  %405 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %404, ptr noundef nonnull %398) #18
  %406 = load i64, ptr %396, align 8, !tbaa !481
  %407 = tail call ptr @size_int_kind(i64 noundef %406, i32 noundef 1) #18
  %408 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %405, ptr noundef %407) #18
  %409 = tail call fastcc ptr @expand_normal(ptr noundef %408) #19
  br label %410

410:                                              ; preds = %403, %400
  %411 = phi ptr [ %402, %400 ], [ %409, %403 ]
  %412 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3
  %413 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 10, i32 3, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !507
  %415 = icmp eq ptr %414, null
  br i1 %415, label %416, label %419

416:                                              ; preds = %410
  %417 = load i64, ptr %412, align 8, !tbaa !508
  %418 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %417) #18
  br label %426

419:                                              ; preds = %410
  %420 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !320
  %421 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %420, ptr noundef nonnull %414) #18
  %422 = load i64, ptr %412, align 8, !tbaa !508
  %423 = tail call ptr @size_int_kind(i64 noundef %422, i32 noundef 1) #18
  %424 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %421, ptr noundef %423) #18
  %425 = tail call fastcc ptr @expand_normal(ptr noundef %424) #19
  br label %426

426:                                              ; preds = %419, %416
  %427 = phi ptr [ %418, %416 ], [ %425, %419 ]
  tail call void @emit_push_insn(ptr noundef %392, i32 noundef %393, ptr noundef %395, ptr noundef %323, i32 noundef %325, i32 noundef %134, ptr noundef %140, i32 noundef %322, ptr noundef %1, ptr noundef %411, i32 noundef %4, ptr noundef %427) #18
  %428 = icmp eq i32 %134, 0
  br i1 %428, label %429, label %435

429:                                              ; preds = %426
  %430 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 12
  br label %431

431:                                              ; preds = %282, %429
  %432 = phi ptr [ %430, %429 ], [ %240, %282 ]
  %433 = phi i32 [ %391, %429 ], [ %234, %282 ]
  %434 = load ptr, ptr %432, align 8, !tbaa !320
  store ptr %434, ptr %141, align 8, !tbaa !428
  br label %435

435:                                              ; preds = %431, %426, %282, %238
  %436 = phi i32 [ %234, %238 ], [ %234, %282 ], [ %391, %426 ], [ %433, %431 ]
  %437 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 4
  %438 = load ptr, ptr %437, align 8, !tbaa !392
  %439 = icmp eq ptr %438, null
  br i1 %439, label %453, label %440, !prof !389

440:                                              ; preds = %435
  %441 = load i32, ptr %438, align 8
  %442 = and i32 %441, 65535
  %443 = icmp eq i32 %442, 15
  br i1 %443, label %444, label %453

444:                                              ; preds = %440
  %445 = load ptr, ptr %0, align 8, !tbaa !450
  %446 = getelementptr inbounds %struct.tree_common, ptr %445, i64 0, i32 2
  %447 = load ptr, ptr %446, align 8, !tbaa !272
  %448 = load ptr, ptr %141, align 8, !tbaa !428
  %449 = tail call i64 @int_size_in_bytes(ptr noundef %447) #18
  %450 = trunc i64 %449 to i32
  %451 = tail call ptr @emit_group_load_into_temps(ptr noundef nonnull %438, ptr noundef %448, ptr noundef %447, i32 noundef %450) #18
  %452 = getelementptr inbounds %struct.arg_data, ptr %0, i64 0, i32 6
  store ptr %451, ptr %452, align 8, !tbaa !490
  br label %453

453:                                              ; preds = %444, %440, %435
  %454 = load i32, ptr @target_flags, align 4, !tbaa !306
  %455 = and i32 %454, 4
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %460, !prof !453

457:                                              ; preds = %453
  %458 = tail call i32 @ix86_cfun_abi() #18
  %459 = icmp eq i32 %458, 1
  br i1 %459, label %460, label %478

460:                                              ; preds = %457, %453
  %461 = icmp eq ptr %1, null
  %462 = or i32 %219, %3
  %463 = icmp ne i32 %462, 0
  %464 = or i1 %461, %463
  br i1 %464, label %478, label %465, !prof !509

465:                                              ; preds = %460
  %466 = load ptr, ptr %240, align 8, !tbaa !395
  %467 = icmp ne ptr %466, null
  %468 = icmp slt i32 %112, %111
  %469 = select i1 %467, i1 %468, i1 false
  br i1 %469, label %470, label %478, !prof !510

470:                                              ; preds = %465
  %471 = load ptr, ptr @stack_usage_map, align 8, !tbaa !320
  %472 = sext i32 %112 to i64
  %473 = getelementptr i8, ptr %471, i64 %472
  %474 = xor i32 %112, -1
  %475 = add i32 %111, %474
  %476 = zext i32 %475 to i64
  %477 = add nuw nsw i64 %476, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %473, i8 1, i64 %477, i1 false), !tbaa !272
  br label %478

478:                                              ; preds = %470, %465, %460, %457
  %479 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %480 = add nsw i32 %479, 1
  store i32 %480, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  tail call void @preserve_temp_slots(ptr noundef null) #18
  tail call void @free_temp_slots() #18
  tail call void @pop_temp_slots() #18
  br label %481

481:                                              ; preds = %5, %478
  %482 = phi i32 [ %436, %478 ], [ 1, %5 ]
  ret i32 %482
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @check_sibcall_argument_overlap(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !511 !PGOFuncName !512 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7, !prof !513

5:                                                ; preds = %3
  %6 = tail call ptr @get_insns() #18
  br label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !272
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi ptr [ %6, %5 ], [ %9, %7 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13, !prof !514

13:                                               ; preds = %10, %24
  %14 = phi ptr [ %26, %24 ], [ %11, %10 ]
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -7
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %24, !prof !515

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !272
  %22 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %21) #19, !range !394
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28, !prof !516

24:                                               ; preds = %13, %19
  %25 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !272
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !prof !517, !llvm.loop !518

28:                                               ; preds = %24, %19, %10
  %29 = phi i32 [ 0, %10 ], [ 1, %19 ], [ 0, %24 ]
  %30 = icmp eq i32 %2, 0
  br i1 %30, label %45, label %31, !prof !513

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.arg_data, ptr %1, i64 0, i32 10
  %33 = getelementptr inbounds %struct.arg_data, ptr %1, i64 0, i32 10, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !483
  %35 = trunc i64 %34 to i32
  %36 = load i64, ptr %32, align 8, !tbaa !420
  %37 = add i64 %36, %34
  %38 = trunc i64 %37 to i32
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %45, !prof !427

40:                                               ; preds = %31, %40
  %41 = phi i32 [ %43, %40 ], [ %35, %31 ]
  %42 = load ptr, ptr @stored_args_map, align 8, !tbaa !320
  tail call fastcc void @SET_BIT(ptr noundef %42, i32 noundef %41) #19
  %43 = add nsw i32 %41, 1
  %44 = icmp eq i32 %43, %38
  br i1 %44, label %45, label %40, !prof !519, !llvm.loop !520

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
define internal fastcc void @load_register_parameters(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !prof !249 !PGOFuncName !521 {
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %152, !prof !369

8:                                                ; preds = %6
  %9 = and i32 %3, 256
  %10 = icmp eq i32 %9, 0
  %11 = zext nneg i32 %1 to i64
  br label %12

12:                                               ; preds = %8, %149
  %13 = phi i64 [ 0, %8 ], [ %150, %149 ]
  br i1 %10, label %16, label %14, !prof !498

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 5
  br label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !320
  %21 = icmp eq ptr %20, null
  br i1 %21, label %149, label %22, !prof !389

22:                                               ; preds = %18
  %23 = icmp eq i32 %4, 0
  %24 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13
  %25 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 8
  %26 = load i32, ptr %25, align 4, !tbaa !397
  %27 = tail call ptr @get_last_insn() #18
  %28 = load i32, ptr %20, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 15
  br i1 %30, label %71, label %31

31:                                               ; preds = %22
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %31
  %34 = and i32 %26, 3
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1608, ptr noundef nonnull @.str.1) #18
  br label %37

37:                                               ; preds = %33, %36
  %38 = sdiv i32 %26, 4
  br label %71

39:                                               ; preds = %31
  %40 = load ptr, ptr %24, align 8, !tbaa !450
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !272
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 14
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = tail call i32 @vector_type_mode(ptr noundef nonnull %42) #18
  br label %53

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi i32 [ %47, %46 ], [ %52, %48 ]
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load ptr, ptr %24, align 8, !tbaa !450
  %58 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !272
  %60 = tail call i64 @int_size_in_bytes(ptr noundef %59) #18
  %61 = trunc i64 %60 to i32
  %62 = add nsw i32 %61, 3
  %63 = sdiv i32 %62, 4
  br label %71

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !456
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !272
  %70 = zext i8 %69 to i64
  br label %71

71:                                               ; preds = %37, %64, %56, %22
  %72 = phi i32 [ -1, %22 ], [ %38, %37 ], [ %63, %56 ], [ -1, %64 ]
  %73 = phi i64 [ 0, %22 ], [ 0, %37 ], [ %60, %56 ], [ %70, %64 ]
  %74 = load i32, ptr %20, align 8
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %75, 15
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 6
  %79 = load ptr, ptr %78, align 8, !tbaa !490
  tail call void @emit_group_move(ptr noundef nonnull %20, ptr noundef %79) #18
  br label %132

80:                                               ; preds = %71
  %81 = icmp eq i32 %72, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !428
  %85 = tail call ptr @emit_move_insn(ptr noundef nonnull %20, ptr noundef %84) #18
  br label %132

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 15
  %88 = load i32, ptr %87, align 8, !tbaa !505
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %86
  %91 = icmp sgt i32 %88, 0
  br i1 %91, label %92, label %132

92:                                               ; preds = %90
  %93 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 14
  br label %94

94:                                               ; preds = %92, %94
  %95 = phi i64 [ 0, %92 ], [ %105, %94 ]
  %96 = load i32, ptr @word_mode, align 4, !tbaa !306
  %97 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #19
  %98 = trunc i64 %95 to i32
  %99 = add i32 %97, %98
  %100 = tail call ptr @gen_rtx_REG(i32 noundef %96, i32 noundef %99) #18
  %101 = load ptr, ptr %93, align 8, !tbaa !425
  %102 = getelementptr inbounds ptr, ptr %101, i64 %95
  %103 = load ptr, ptr %102, align 8, !tbaa !320
  %104 = tail call ptr @emit_move_insn(ptr noundef %100, ptr noundef %103) #18
  %105 = add nuw nsw i64 %95, 1
  %106 = load i32, ptr %87, align 8, !tbaa !505
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %94, label %132, !llvm.loop !522

109:                                              ; preds = %86
  %110 = icmp eq i32 %26, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 9
  %113 = load i32, ptr %112, align 8, !tbaa !386
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %132, label %115

115:                                              ; preds = %111, %109
  %116 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !428
  %118 = tail call ptr @validize_mem(ptr noundef %117) #18
  br i1 %23, label %128, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %116, align 8, !tbaa !428
  %121 = getelementptr inbounds %struct.rtx_def, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !272
  %123 = shl i64 %73, 32
  %124 = ashr exact i64 %123, 32
  %125 = tail call fastcc zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef %122, i64 noundef %124) #19, !range !295
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %119
  store i32 1, ptr %5, align 4, !tbaa !306
  br label %128

128:                                              ; preds = %127, %119, %115
  %129 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #19
  %130 = getelementptr inbounds %struct.arg_data, ptr %0, i64 %13, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !456
  tail call void @move_block_to_reg(i32 noundef %129, ptr noundef %118, i32 noundef %72, i32 noundef %131) #18
  br label %132

132:                                              ; preds = %94, %90, %82, %111, %128, %77
  br i1 %23, label %137, label %133

133:                                              ; preds = %132
  %134 = tail call fastcc i32 @check_sibcall_argument_overlap(ptr noundef %27, ptr noundef nonnull %24, i32 noundef 0) #19, !range !394
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  store i32 1, ptr %5, align 4, !tbaa !306
  br label %137

137:                                              ; preds = %136, %133, %132
  %138 = load i32, ptr %20, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 15
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  tail call void @use_group_regs(ptr noundef %2, ptr noundef nonnull %20) #18
  br label %149

142:                                              ; preds = %137
  %143 = icmp eq i32 %72, -1
  br i1 %143, label %144, label %145

144:                                              ; preds = %142
  tail call void @use_reg(ptr noundef %2, ptr noundef nonnull %20) #18
  br label %149

145:                                              ; preds = %142
  %146 = icmp sgt i32 %72, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %145
  %148 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #19
  tail call void @use_regs(ptr noundef %2, i32 noundef %148, i32 noundef %72) #18
  br label %149

149:                                              ; preds = %141, %145, %147, %144, %18
  %150 = add nuw nsw i64 %13, 1
  %151 = icmp eq i64 %150, %11
  br i1 %151, label %152, label %12, !prof !384, !llvm.loop !523

152:                                              ; preds = %149, %6
  ret void
}

; Function Attrs: optsize
declare ptr @function_arg(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_call_1(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10) unnamed_addr #0 !prof !249 !PGOFuncName !524 {
  %12 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %5) #18
  %13 = trunc i64 %4 to i32
  %14 = tail call i32 @ix86_return_pops_args(ptr noundef %2, ptr noundef %3, i32 noundef %13) #18
  %15 = sext i32 %14 to i64
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %21, label %19, !prof !250

19:                                               ; preds = %11
  %20 = tail call ptr @memory_address_addr_space(i32 noundef 14, ptr noundef nonnull %0, i8 noundef zeroext 0) #18
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi ptr [ %20, %19 ], [ %0, %11 ]
  %23 = icmp slt i32 %14, 1
  br i1 %23, label %32, label %24, !prof !250

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
  br i1 %34, label %42, label %37, !prof !475

37:                                               ; preds = %32
  br i1 %35, label %40, label %38, !prof !365

38:                                               ; preds = %37
  %39 = tail call ptr @gen_sibcall_value(ptr noundef nonnull %7, ptr noundef %36, ptr noundef %12, ptr noundef %6) #18
  br label %47

40:                                               ; preds = %37
  %41 = tail call ptr @gen_sibcall(ptr noundef %36, ptr noundef %12, ptr noundef %6) #18
  br label %47

42:                                               ; preds = %32
  br i1 %35, label %45, label %43, !prof !525

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
  br i1 %52, label %56, label %53, !prof !250

53:                                               ; preds = %47
  %54 = load i32, ptr %50, align 8
  %55 = or i32 %54, 67108864
  store i32 %55, ptr %50, align 8
  br label %56

56:                                               ; preds = %53, %47
  %57 = and i32 %10, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59, !prof !250

59:                                               ; preds = %56
  %60 = load i32, ptr %50, align 8
  %61 = or i32 %60, -2147483648
  store i32 %61, ptr %50, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = and i32 %10, 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65, !prof !250

65:                                               ; preds = %62
  %66 = load i32, ptr %50, align 8
  %67 = or i32 %66, 33554432
  store i32 %67, ptr %50, align 8
  br label %68

68:                                               ; preds = %65, %62
  tail call void @make_reg_eh_region_note(ptr noundef %50, i32 noundef %10, i32 noundef 0) #18
  %69 = and i32 %10, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71, !prof !526

71:                                               ; preds = %68
  %72 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call void @add_reg_note(ptr noundef %50, i32 noundef 27, ptr noundef %72) #18
  br label %73

73:                                               ; preds = %71, %68
  %74 = and i32 %10, 128
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76, !prof !250

76:                                               ; preds = %73
  %77 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !320
  tail call void @add_reg_note(ptr noundef %50, i32 noundef 30, ptr noundef %77) #18
  %78 = load ptr, ptr @cfun, align 8, !tbaa !320
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
  %88 = load i32, ptr @flag_enable_icf_debug, align 4, !tbaa !306
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90, !prof !250

90:                                               ; preds = %82
  %91 = icmp eq ptr %2, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %90
  %93 = load ptr, ptr @debug_hooks, align 8, !tbaa !320
  %94 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %93, i64 0, i32 27
  %95 = load ptr, ptr %94, align 8, !tbaa !527
  %96 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !272
  %98 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !272
  tail call void %95(ptr noundef %97, i32 noundef %99) #18
  br label %100

100:                                              ; preds = %92, %90, %82
  store i32 %8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  br i1 %23, label %106, label %101, !prof !250

101:                                              ; preds = %100
  %102 = sub nsw i64 %5, %15
  %103 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %102) #18
  %104 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %105 = sub i32 %104, %14
  store i32 %105, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1, !tbaa !529
  br label %106

106:                                              ; preds = %101, %100
  %107 = phi ptr [ %103, %101 ], [ %12, %100 ]
  %108 = phi i64 [ %102, %101 ], [ %5, %100 ]
  %109 = load i32, ptr @target_flags, align 4, !tbaa !306
  %110 = and i32 %109, 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %135, !prof !330

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
  %119 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %120 = trunc i64 %108 to i32
  %121 = sub i32 %119, %120
  store i32 %121, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  br label %139

122:                                              ; preds = %117
  %123 = load i32, ptr @flag_defer_pop, align 4, !tbaa !306
  %124 = icmp ne i32 %123, 0
  %125 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4
  %126 = and i32 %10, 3
  %127 = or i32 %125, %126
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %124, i1 %128, i1 false
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i32, ptr @x_rtl, align 8, !tbaa !372
  %132 = trunc i64 %108 to i32
  %133 = add i32 %131, %132
  store i32 %133, ptr @x_rtl, align 8, !tbaa !372
  br label %139

134:                                              ; preds = %122
  tail call void @adjust_stack(ptr noundef %107) #18
  br label %139

135:                                              ; preds = %112, %106
  %136 = icmp eq i32 %14, 0
  br i1 %136, label %139, label %137, !prof !250

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
define internal fastcc noundef ptr @avoid_likely_spilled_reg(ptr noundef %0) unnamed_addr #0 !prof !316 !PGOFuncName !530 {
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
  %11 = load i32, ptr %10, align 4, !tbaa !306
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
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !306
  %13 = load i32, ptr %0, align 8
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  %16 = tail call ptr @gen_reg_rtx(i32 noundef %15) #18
  store i32 1, ptr @generating_concat_p, align 4, !tbaa !306
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
define internal fastcc void @restore_fixed_argument_area(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !316 !PGOFuncName !531 {
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fixup_tail_calls() local_unnamed_addr #0 !prof !532 {
  %1 = tail call ptr @get_insns() #18
  %2 = icmp eq ptr %1, null
  br i1 %2, label %24, label %3, !prof !533

3:                                                ; preds = %0, %20
  %4 = phi ptr [ %22, %20 ], [ %1, %0 ]
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 13
  br i1 %7, label %8, label %12, !prof !534

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !272
  %11 = icmp eq i32 %10, 4
  br i1 %11, label %24, label %12, !prof !535

12:                                               ; preds = %8, %3
  %13 = tail call ptr @find_reg_note(ptr noundef nonnull %4, i32 noundef 3, ptr noundef null) #18
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !536

15:                                               ; preds = %12
  tail call void @remove_note(ptr noundef nonnull %4, ptr noundef nonnull %13) #18
  br label %16

16:                                               ; preds = %15, %12
  %17 = tail call ptr @find_reg_note(ptr noundef nonnull %4, i32 noundef 3, ptr noundef null) #18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !537

19:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3207, ptr noundef nonnull @.str.1) #18
  br label %20

20:                                               ; preds = %16, %19
  %21 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %22 = load ptr, ptr %21, align 8, !tbaa !272
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %3, !prof !538, !llvm.loop !539

24:                                               ; preds = %20, %8, %0
  ret void
}

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_library_call(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ...) local_unnamed_addr #0 !prof !316 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  call void @llvm.va_start(ptr nonnull %5)
  %6 = call fastcc ptr @emit_library_call_value_1(i32 noundef 0, ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5) #19
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_library_call_value_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #0 !prof !316 !PGOFuncName !540 {
  %8 = alloca %struct.args_size, align 8
  %9 = alloca %struct.ix86_args, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #20
  %14 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  store ptr null, ptr %10, align 8, !tbaa !320
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #20
  store i32 0, ptr %11, align 4, !tbaa !306
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #20
  store i32 0, ptr %12, align 4, !tbaa !306
  %15 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  %16 = load ptr, ptr @stack_usage_map, align 8, !tbaa !320
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !331
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
  %28 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !367
  %29 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !306
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 %29, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !367
  br label %32

32:                                               ; preds = %31, %26
  %33 = icmp ne i32 %4, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %32
  %35 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !541
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
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !320
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
  %65 = load ptr, ptr %64, align 8, !tbaa !272
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
  %72 = load i32, ptr %71, align 4, !tbaa !306
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
  store ptr %80, ptr %59, align 16, !tbaa !542
  %81 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 1
  store i32 16, ptr %81, align 8, !tbaa !544
  %82 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 3
  store i32 0, ptr %82, align 8, !tbaa !545
  %83 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef 16, ptr noundef null, i32 noundef 1) #18
  %84 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 2
  store ptr %83, ptr %84, align 16, !tbaa !546
  %85 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !458
  %86 = call i32 %85(ptr noundef nonnull %9, i32 noundef 16, ptr noundef null, i8 noundef zeroext 1) #18
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3422, ptr noundef nonnull @.str.1) #18
  br label %89

89:                                               ; preds = %79, %88
  %90 = load ptr, ptr %84, align 16, !tbaa !546
  %91 = icmp ne ptr %90, null
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds %struct.arg, ptr %59, i64 0, i32 4
  call void @locate_and_pad_parm(i32 noundef 16, ptr noundef null, i32 noundef %92, i32 noundef 0, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %93) #18
  %94 = load ptr, ptr %84, align 16, !tbaa !546
  %95 = icmp eq ptr %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load i32, ptr %82, align 8, !tbaa !545
  %98 = icmp ne i32 %97, 0
  %99 = icmp sgt i32 %19, 0
  %100 = select i1 %98, i1 true, i1 %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %96, %89
  %102 = load i64, ptr %93, align 16, !tbaa !547
  %103 = load i64, ptr %8, align 8, !tbaa !352
  %104 = add nsw i64 %103, %102
  store i64 %104, ptr %8, align 8, !tbaa !352
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
  %162 = load i32, ptr %161, align 4, !tbaa !306
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
  %186 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !541
  %187 = call ptr %186(i32 noundef %144, i32 noundef 0) #18
  %188 = call ptr @assign_temp(ptr noundef %187, i32 noundef 0, i32 noundef 1, i32 noundef 1) #18
  %189 = call ptr @emit_move_insn(ptr noundef %188, ptr noundef nonnull %170) #18
  br label %190

190:                                              ; preds = %173, %185
  %191 = phi ptr [ %188, %185 ], [ %170, %173 ]
  %192 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %191) #18
  %193 = load ptr, ptr %10, align 8, !tbaa !320
  %194 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %192, ptr noundef %193) #18
  store ptr %194, ptr %10, align 8, !tbaa !320
  br i1 %175, label %195, label %199

195:                                              ; preds = %190
  %196 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %191) #18
  %197 = load ptr, ptr %10, align 8, !tbaa !320
  %198 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %196, ptr noundef %197) #18
  store ptr %198, ptr %10, align 8, !tbaa !320
  br label %199

199:                                              ; preds = %195, %190
  %200 = getelementptr inbounds %struct.rtx_def, ptr %191, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !272
  %202 = call ptr @force_operand(ptr noundef %201, ptr noundef null) #18
  br label %203

203:                                              ; preds = %199, %169
  %204 = phi i32 [ 16, %199 ], [ %144, %169 ]
  %205 = phi ptr [ %202, %199 ], [ %170, %169 ]
  %206 = phi i32 [ %180, %199 ], [ %118, %169 ]
  %207 = getelementptr inbounds %struct.arg, ptr %59, i64 %117
  store ptr %205, ptr %207, align 16, !tbaa !542
  %208 = getelementptr inbounds %struct.arg, ptr %59, i64 %117, i32 1
  store i32 %204, ptr %208, align 8, !tbaa !544
  %209 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef %204, ptr noundef null, i32 noundef 1) #18
  %210 = getelementptr inbounds %struct.arg, ptr %59, i64 %117, i32 2
  store ptr %209, ptr %210, align 16, !tbaa !546
  %211 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 13), align 8, !tbaa !458
  %212 = call i32 %211(ptr noundef nonnull %9, i32 noundef %204, ptr noundef null, i8 noundef zeroext 1) #18
  %213 = getelementptr inbounds %struct.arg, ptr %59, i64 %117, i32 3
  store i32 %212, ptr %213, align 8, !tbaa !545
  %214 = load ptr, ptr %210, align 16, !tbaa !546
  %215 = icmp ne ptr %214, null
  %216 = zext i1 %215 to i32
  %217 = getelementptr inbounds %struct.arg, ptr %59, i64 %117, i32 4
  call void @locate_and_pad_parm(i32 noundef %204, ptr noundef null, i32 noundef %216, i32 noundef %212, ptr noundef null, ptr noundef nonnull %8, ptr noundef nonnull %217) #18
  %218 = getelementptr inbounds %struct.args_size, ptr %217, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !548
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %203
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3509, ptr noundef nonnull @.str.1) #18
  br label %222

222:                                              ; preds = %203, %221
  %223 = load ptr, ptr %210, align 16, !tbaa !546
  %224 = icmp eq ptr %223, null
  br i1 %224, label %229, label %225

225:                                              ; preds = %222
  %226 = load i32, ptr %213, align 8, !tbaa !545
  %227 = icmp ne i32 %226, 0
  %228 = select i1 %227, i1 true, i1 %113
  br i1 %228, label %229, label %233

229:                                              ; preds = %225, %222
  %230 = load i64, ptr %217, align 16, !tbaa !547
  %231 = load i64, ptr %8, align 8, !tbaa !352
  %232 = add nsw i64 %231, %230
  store i64 %232, ptr %8, align 8, !tbaa !352
  br label %233

233:                                              ; preds = %225, %229
  call void @function_arg_advance(ptr noundef nonnull %9, i32 noundef %204, ptr noundef null, i32 noundef 1) #18
  %234 = add nuw nsw i64 %117, 1
  %235 = icmp eq i64 %234, %115
  br i1 %235, label %236, label %116, !llvm.loop !549

236:                                              ; preds = %233, %106
  %237 = phi i32 [ %54, %106 ], [ %206, %233 ]
  call void @assemble_external_libcall(ptr noundef %1) #18
  %238 = load i64, ptr %8, align 8
  %239 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %238, %240
  %242 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !306
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
  store i64 %252, ptr %8, align 8, !tbaa !352
  %253 = call i32 @ix86_function_type_abi(ptr noundef null) #18
  %254 = icmp eq i32 %253, 1
  %255 = load i64, ptr %8, align 8, !tbaa !352
  br i1 %254, label %258, label %256

256:                                              ; preds = %236
  %257 = sub nsw i64 %255, %251
  store i64 %257, ptr %8, align 8, !tbaa !352
  br label %258

258:                                              ; preds = %256, %236
  %259 = phi i64 [ %257, %256 ], [ %255, %236 ]
  %260 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !381
  %261 = sext i32 %260 to i64
  %262 = icmp sgt i64 %259, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %258
  %264 = trunc i64 %259 to i32
  store i32 %264, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 6), align 8, !tbaa !381
  br label %265

265:                                              ; preds = %263, %258
  %266 = load i32, ptr @target_flags, align 4, !tbaa !306
  %267 = and i32 %266, 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %265
  %270 = call i32 @ix86_cfun_abi() #18
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %303

272:                                              ; preds = %269
  %273 = load i64, ptr %8, align 8, !tbaa !352
  br label %274

274:                                              ; preds = %272, %265
  %275 = phi i64 [ %273, %272 ], [ %259, %265 ]
  %276 = trunc i64 %275 to i32
  %277 = call i32 @ix86_function_type_abi(ptr noundef null) #18
  %278 = icmp eq i32 %277, 1
  %279 = select i1 %278, i32 0, i32 %19
  %280 = add nsw i32 %279, %276
  %281 = call i32 @llvm.smax.i32(i32 %15, i32 %280)
  store i32 %281, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  %282 = sext i32 %281 to i64
  %283 = call ptr @xmalloc(i64 noundef %282) #18
  store ptr %283, ptr @stack_usage_map, align 8, !tbaa !320
  %284 = icmp eq i32 %15, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %274
  %286 = sext i32 %15 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %283, ptr align 1 %16, i64 %286, i1 false)
  br label %287

287:                                              ; preds = %285, %274
  %288 = load i32, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
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
  %296 = load i32, ptr @virtuals_instantiated, align 4, !tbaa !306
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %295
  %299 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !320
  %300 = call ptr @plus_constant(ptr noundef %299, i64 noundef 0) #18
  br label %314

301:                                              ; preds = %295
  %302 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !320
  br label %314

303:                                              ; preds = %269
  %304 = load i32, ptr @target_flags, align 4, !tbaa !306
  %305 = and i32 %304, 8196
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = call i32 @ix86_cfun_abi() #18
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %318

310:                                              ; preds = %307, %303
  %311 = load i64, ptr %8, align 8, !tbaa !352
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
  %320 = load i64, ptr %8, align 8, !tbaa !352
  %321 = sub nsw i64 %320, %238
  %322 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %321) #18
  call void @anti_adjust_stack(ptr noundef %322) #18
  br label %323

323:                                              ; preds = %318, %314
  %324 = phi i1 [ true, %318 ], [ false, %314 ]
  %325 = phi ptr [ null, %318 ], [ %316, %314 ]
  %326 = phi ptr [ %319, %318 ], [ %315, %314 ]
  %327 = load i32, ptr @target_flags, align 4, !tbaa !306
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
  %352 = load i32, ptr %351, align 8, !tbaa !544
  %353 = load ptr, ptr %350, align 16, !tbaa !542
  %354 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 2
  %355 = load ptr, ptr %354, align 16, !tbaa !546
  %356 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 3
  %357 = load i32, ptr %356, align 8, !tbaa !545
  %358 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4
  %359 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 5
  %360 = load i32, ptr %359, align 4, !tbaa !550
  %361 = icmp ne ptr %355, null
  %362 = icmp eq i32 %357, 0
  %363 = select i1 %361, i1 %362, i1 false
  br i1 %363, label %487, label %364

364:                                              ; preds = %346
  %365 = load i32, ptr @target_flags, align 4, !tbaa !306
  %366 = and i32 %365, 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %364
  %369 = call i32 @ix86_cfun_abi() #18
  %370 = icmp eq i32 %369, 1
  br i1 %370, label %371, label %419

371:                                              ; preds = %368, %364
  %372 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 2
  %373 = load i64, ptr %372, align 16, !tbaa !551
  %374 = trunc i64 %373 to i32
  %375 = load i64, ptr %358, align 16, !tbaa !547
  %376 = add i64 %375, %373
  %377 = trunc i64 %376 to i32
  %378 = call i32 @llvm.smax.i32(i32 %19, i32 %374)
  %379 = icmp slt i32 %378, %377
  br i1 %379, label %380, label %419

380:                                              ; preds = %371
  %381 = load ptr, ptr @stack_usage_map, align 8, !tbaa !320
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
  br i1 %391, label %419, label %392, !llvm.loop !552

392:                                              ; preds = %380, %388
  %393 = phi i64 [ %384, %380 ], [ %389, %388 ]
  %394 = getelementptr inbounds i8, ptr %381, i64 %393
  %395 = load i8, ptr %394, align 1, !tbaa !272
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %388, label %397

397:                                              ; preds = %392
  %398 = trunc i64 %375 to i32
  %399 = shl i32 %398, 3
  %400 = call i32 @mode_for_size(i32 noundef %399, i32 noundef 2, i32 noundef 1) #18
  %401 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 1
  %402 = load i64, ptr %401, align 16, !tbaa !553
  %403 = call ptr @plus_constant(ptr noundef %325, i64 noundef %402) #18
  %404 = call ptr @memory_address_addr_space(i32 noundef %400, ptr noundef %403, i8 noundef zeroext 0) #18
  %405 = call ptr @gen_rtx_MEM(i32 noundef %400, ptr noundef %404) #18
  %406 = icmp eq i32 %400, 1
  br i1 %406, label %407, label %415

407:                                              ; preds = %397
  %408 = load i64, ptr %358, align 16, !tbaa !547
  %409 = call ptr @assign_stack_temp(i32 noundef 1, i64 noundef %408, i32 noundef 0) #18
  %410 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 5
  store ptr %409, ptr %410, align 8, !tbaa !554
  %411 = call ptr @validize_mem(ptr noundef %409) #18
  %412 = load i64, ptr %358, align 16, !tbaa !547
  %413 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %412) #18
  %414 = call ptr @emit_block_move(ptr noundef %411, ptr noundef %405, ptr noundef %413, i32 noundef 2) #18
  br label %419

415:                                              ; preds = %397
  %416 = call ptr @gen_reg_rtx(i32 noundef %400) #18
  %417 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 5
  store ptr %416, ptr %417, align 8, !tbaa !554
  %418 = call ptr @emit_move_insn(ptr noundef %416, ptr noundef %405) #18
  br label %419

419:                                              ; preds = %388, %371, %407, %415, %368
  %420 = phi i32 [ 0, %368 ], [ %374, %415 ], [ %374, %407 ], [ %374, %371 ], [ %374, %388 ]
  %421 = phi i32 [ 0, %368 ], [ %377, %415 ], [ %377, %407 ], [ %377, %371 ], [ %377, %388 ]
  %422 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 1
  %423 = load i64, ptr %422, align 16, !tbaa !553
  %424 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %423) #18
  %425 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 3
  %426 = getelementptr inbounds %struct.arg, ptr %59, i64 %349, i32 4, i32 3, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !555
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %432

429:                                              ; preds = %419
  %430 = load i64, ptr %425, align 16, !tbaa !556
  %431 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %430) #18
  br label %439

432:                                              ; preds = %419
  %433 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !320
  %434 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %433, ptr noundef nonnull %427) #18
  %435 = load i64, ptr %425, align 16, !tbaa !556
  %436 = call ptr @size_int_kind(i64 noundef %435, i32 noundef 1) #18
  %437 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %434, ptr noundef %436) #18
  %438 = call fastcc ptr @expand_normal(ptr noundef %437) #19
  br label %439

439:                                              ; preds = %432, %429
  %440 = phi ptr [ %431, %429 ], [ %438, %432 ]
  call void @emit_push_insn(ptr noundef %353, i32 noundef %352, ptr noundef null, ptr noundef null, i32 noundef %360, i32 noundef %357, ptr noundef %355, i32 noundef 0, ptr noundef %325, ptr noundef %424, i32 noundef %19, ptr noundef %440) #18
  %441 = load i32, ptr @target_flags, align 4, !tbaa !306
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
  %452 = load ptr, ptr @stack_usage_map, align 8, !tbaa !320
  %453 = sext i32 %420 to i64
  %454 = getelementptr i8, ptr %452, i64 %453
  %455 = add nsw i32 %420, 1
  %456 = call i32 @llvm.smax.i32(i32 %421, i32 %455)
  %457 = xor i32 %420, -1
  %458 = add i32 %456, %457
  %459 = zext i32 %458 to i64
  %460 = add nuw nsw i64 %459, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %454, i8 1, i64 %460, i1 false), !tbaa !272
  br label %461

461:                                              ; preds = %451, %449, %444
  %462 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %463 = add nsw i32 %462, 1
  store i32 %463, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  br i1 %342, label %464, label %472

464:                                              ; preds = %461
  br i1 %344, label %487, label %465

465:                                              ; preds = %464
  %466 = load i32, ptr @target_flags, align 4, !tbaa !306
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
  %474 = load i64, ptr %422, align 16, !tbaa !553
  %475 = call ptr @plus_constant(ptr noundef nonnull %325, i64 noundef %474) #18
  br label %480

476:                                              ; preds = %472
  %477 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 9), align 8, !tbaa !320
  %478 = call ptr @gen_rtx_fmt_0_stat(i32 noundef 38, i32 noundef 16) #18
  %479 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef 16, ptr noundef %477, ptr noundef %478) #18
  br label %480

480:                                              ; preds = %476, %473
  %481 = phi ptr [ %475, %473 ], [ %479, %476 ]
  %482 = load i32, ptr %351, align 8, !tbaa !544
  %483 = call ptr @gen_rtx_MEM(i32 noundef %482, ptr noundef %481) #18
  %484 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 24, i32 noundef 0, ptr noundef %483) #18
  %485 = load ptr, ptr %10, align 8, !tbaa !320
  %486 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %484, ptr noundef %485) #18
  store ptr %486, ptr %10, align 8, !tbaa !320
  br label %487

487:                                              ; preds = %464, %469, %480, %346
  %488 = add nuw nsw i32 %348, 1
  %489 = icmp eq i32 %488, %108
  br i1 %489, label %490, label %346, !llvm.loop !557

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
  %503 = load i32, ptr %502, align 8, !tbaa !544
  %504 = load ptr, ptr %501, align 16, !tbaa !542
  %505 = getelementptr inbounds %struct.arg, ptr %59, i64 %500, i32 2
  %506 = load ptr, ptr %505, align 16, !tbaa !546
  %507 = getelementptr inbounds %struct.arg, ptr %59, i64 %500, i32 3
  %508 = load i32, ptr %507, align 8, !tbaa !545
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
  %517 = load i8, ptr %516, align 1, !tbaa !272
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
  %524 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %525 = add nsw i32 %524, 1
  store i32 %525, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %526 = add nuw nsw i32 %499, 1
  %527 = icmp eq i32 %526, %108
  br i1 %527, label %494, label %497, !llvm.loop !558

528:                                              ; preds = %495, %550
  %529 = phi i64 [ 0, %495 ], [ %551, %550 ]
  %530 = getelementptr inbounds %struct.arg, ptr %59, i64 %529, i32 2
  %531 = load ptr, ptr %530, align 16, !tbaa !546
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
  %540 = load i32, ptr %539, align 8, !tbaa !545
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
  br i1 %552, label %553, label %528, !llvm.loop !559

553:                                              ; preds = %550, %490, %338, %494
  %554 = phi ptr [ %491, %494 ], [ %491, %490 ], [ %339, %338 ], [ %491, %550 ]
  %555 = icmp ne ptr %18, null
  %556 = select i1 %60, i1 %555, i1 false
  br i1 %556, label %557, label %570

557:                                              ; preds = %553
  %558 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !272
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
  %568 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %569 = add nsw i32 %568, 1
  store i32 %569, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  br label %577

570:                                              ; preds = %553
  %571 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %572 = add nsw i32 %571, 1
  store i32 %572, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %573 = icmp eq ptr %55, null
  %574 = and i1 %33, %573
  br i1 %574, label %575, label %577

575:                                              ; preds = %570
  %576 = call ptr @hard_libcall_value(i32 noundef %4, ptr noundef %1) #18
  br label %577

577:                                              ; preds = %567, %570, %575
  %578 = phi ptr [ %576, %575 ], [ null, %570 ], [ null, %567 ]
  %579 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 2), align 8, !tbaa !373
  %580 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !306
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
  %589 = load ptr, ptr %588, align 8, !tbaa !272
  %590 = call ptr @get_identifier(ptr noundef %589) #18
  %591 = call ptr @build_function_type(ptr noundef %53, ptr noundef null) #18
  %592 = load i64, ptr %8, align 8, !tbaa !352
  %593 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !320
  %594 = call ptr @function_arg(ptr noundef nonnull %9, i32 noundef 0, ptr noundef %593, i32 noundef 1) #18
  %595 = add nsw i32 %14, 1
  %596 = load ptr, ptr %10, align 8, !tbaa !320
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
  %607 = load ptr, ptr %606, align 8, !tbaa !272
  %608 = icmp eq ptr %607, %587
  br i1 %608, label %609, label %610

609:                                              ; preds = %604
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3844, ptr noundef nonnull @.str.1) #18
  br label %610

610:                                              ; preds = %604, %609
  %611 = load i32, ptr %607, align 8
  %612 = and i32 %611, 65535
  %613 = icmp eq i32 %612, 10
  br i1 %613, label %614, label %604, !llvm.loop !560

614:                                              ; preds = %610, %599
  %615 = phi ptr [ %600, %599 ], [ %607, %610 ]
  %616 = call ptr @emit_barrier_after(ptr noundef nonnull %615) #18
  br label %617

617:                                              ; preds = %614, %586
  %618 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
  %619 = add nsw i32 %618, -1
  store i32 %619, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 1), align 4, !tbaa !321
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
  %641 = load i8, ptr %640, align 1, !tbaa !272
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
  store i32 %651, ptr %13, align 4, !tbaa !306
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
  %671 = load i32, ptr @target_flags, align 4, !tbaa !306
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
  %680 = load i32, ptr %12, align 4, !tbaa !306
  %681 = load i32, ptr %11, align 4, !tbaa !306
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
  %688 = load ptr, ptr %687, align 8, !tbaa !554
  %689 = icmp eq ptr %688, null
  br i1 %689, label %710, label %690

690:                                              ; preds = %685
  %691 = load i32, ptr %688, align 8
  %692 = lshr i32 %691, 16
  %693 = and i32 %692, 255
  %694 = getelementptr inbounds %struct.arg, ptr %59, i64 %686, i32 4, i32 1
  %695 = load i64, ptr %694, align 16, !tbaa !553
  %696 = call ptr @plus_constant(ptr noundef %325, i64 noundef %695) #18
  %697 = call ptr @memory_address_addr_space(i32 noundef %693, ptr noundef %696, i8 noundef zeroext 0) #18
  %698 = call ptr @gen_rtx_MEM(i32 noundef %693, ptr noundef %697) #18
  %699 = icmp eq i32 %693, 1
  br i1 %699, label %700, label %707

700:                                              ; preds = %690
  %701 = getelementptr inbounds %struct.arg, ptr %59, i64 %686, i32 4
  %702 = load ptr, ptr %687, align 8, !tbaa !554
  %703 = call ptr @validize_mem(ptr noundef %702) #18
  %704 = load i64, ptr %701, align 16, !tbaa !547
  %705 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %704) #18
  %706 = call ptr @emit_block_move(ptr noundef %698, ptr noundef %703, ptr noundef %705, i32 noundef 2) #18
  br label %710

707:                                              ; preds = %690
  %708 = load ptr, ptr %687, align 8, !tbaa !554
  %709 = call ptr @emit_move_insn(ptr noundef %698, ptr noundef %708) #18
  br label %710

710:                                              ; preds = %700, %707, %685
  %711 = add nuw nsw i64 %686, 1
  %712 = icmp eq i64 %711, %684
  br i1 %712, label %713, label %685, !llvm.loop !561

713:                                              ; preds = %710, %682
  store i32 %15, ptr @highest_outgoing_arg_in_use, align 4, !tbaa !306
  store ptr %16, ptr @stack_usage_map, align 8, !tbaa !320
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
declare void @llvm.va_end(ptr) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @emit_library_call_value(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ...) local_unnamed_addr #0 !prof !316 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.va_start(ptr nonnull %6)
  %7 = call fastcc ptr @emit_library_call_value_1(i32 noundef 1, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6) #19
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @must_pass_in_stack_var_size(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #11 !prof !316 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !272
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
define dso_local noundef zeroext i8 @must_pass_in_stack_var_size_or_pad(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !562 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4, !prof !563

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !272
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %18, !prof !564

10:                                               ; preds = %4
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 262144
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18, !prof !564

14:                                               ; preds = %10
  %15 = icmp eq i32 %0, 1
  br i1 %15, label %16, label %18, !prof !563

16:                                               ; preds = %14
  %17 = tail call i64 @int_size_in_bytes(ptr noundef nonnull %1) #18
  br label %18

18:                                               ; preds = %14, %16, %10, %4, %2
  %19 = phi i8 [ 0, %2 ], [ 1, %4 ], [ 1, %10 ], [ 0, %16 ], [ 0, %14 ]
  ret i8 %19
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !565 !PGOFuncName !566 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !294 !PGOFuncName !567 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 !prof !294 !PGOFuncName !568 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !295
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !296

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !320
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !294 !PGOFuncName !569 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !299
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !294 !PGOFuncName !570 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !379
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !296

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !294 !PGOFuncName !571 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !299
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #13 !prof !294 !PGOFuncName !572 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !306
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !prof !249 !PGOFuncName !573 {
  store ptr %0, ptr %1, align 8, !tbaa !443
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !272
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !272
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !441
  %10 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !439
  ret void
}

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef readonly %0) unnamed_addr #14 !prof !574 !PGOFuncName !575 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %57, label %3, !prof !576

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %18, !prof !577

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !272
  %10 = lshr i32 %4, 16
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !272
  %15 = zext i8 %14 to i64
  %16 = tail call fastcc zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef %9, i64 noundef %15) #19, !range !295
  %17 = zext nneg i8 %16 to i32
  br label %57

18:                                               ; preds = %3
  %19 = zext nneg i32 %5 to i64
  %20 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !272
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %57, label %23, !prof !578

23:                                               ; preds = %18
  %24 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %19
  %25 = load ptr, ptr %24, align 8, !tbaa !320
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %27 = zext i8 %21 to i64
  br label %28

28:                                               ; preds = %23, %53
  %29 = phi i64 [ 0, %23 ], [ %54, %53 ]
  %30 = phi ptr [ %25, %23 ], [ %55, %53 ]
  %31 = load i8, ptr %30, align 1, !tbaa !272
  switch i8 %31, label %53 [
    i8 101, label %39
    i8 69, label %32
  ], !prof !579

32:                                               ; preds = %28
  %33 = getelementptr inbounds [1 x %union.rtunion_def], ptr %26, i64 0, i64 %29
  %34 = load ptr, ptr %33, align 8, !tbaa !272
  %35 = load i32, ptr %34, align 8, !tbaa !580
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = zext nneg i32 %35 to i64
  br label %47

39:                                               ; preds = %28
  %40 = getelementptr inbounds [1 x %union.rtunion_def], ptr %26, i64 0, i64 %29
  %41 = load ptr, ptr %40, align 8, !tbaa !272
  %42 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %41) #19, !range !394
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %53, label %57, !prof !582

44:                                               ; preds = %47
  %45 = add nuw nsw i64 %48, 1
  %46 = icmp eq i64 %45, %38
  br i1 %46, label %53, label %47, !llvm.loop !583

47:                                               ; preds = %37, %44
  %48 = phi i64 [ 0, %37 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.rtvec_def, ptr %34, i64 0, i32 1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !320
  %51 = tail call fastcc i32 @check_sibcall_argument_overlap_1(ptr noundef %50) #19, !range !394
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %44, label %57

53:                                               ; preds = %44, %32, %28, %39
  %54 = add nuw nsw i64 %29, 1
  %55 = getelementptr inbounds i8, ptr %30, i64 1
  %56 = icmp eq i64 %54, %27
  br i1 %56, label %57, label %28, !prof !584, !llvm.loop !585

57:                                               ; preds = %39, %53, %47, %18, %1, %7
  %58 = phi i32 [ %17, %7 ], [ 0, %1 ], [ 0, %18 ], [ 1, %47 ], [ 1, %39 ], [ 0, %53 ]
  ret i32 %58
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 !prof !586 !PGOFuncName !587 {
  %3 = load ptr, ptr %0, align 8, !tbaa !430
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !588

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
  %15 = load i64, ptr %14, align 8, !tbaa !379
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !272
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !272
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !379
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !379
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @mem_overlaps_already_clobbered_arg_p(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #16 !prof !589 !PGOFuncName !590 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !380
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %25, label %5, !prof !591

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 49
  br i1 %8, label %9, label %24, !prof !592

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !272
  %12 = icmp eq ptr %11, %3
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !272
  br i1 %12, label %15, label %22

15:                                               ; preds = %9
  %16 = load i32, ptr %14, align 8
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %17, 30
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !272
  br label %25

22:                                               ; preds = %9
  %23 = icmp eq ptr %14, %3
  br i1 %23, label %48, label %24

24:                                               ; preds = %5, %22
  br label %48

25:                                               ; preds = %2, %19
  %26 = phi i64 [ %21, %19 ], [ 0, %2 ]
  %27 = icmp eq i64 %1, 0
  br i1 %27, label %48, label %28, !prof !365

28:                                               ; preds = %25
  %29 = load ptr, ptr @stored_args_map, align 8, !tbaa !320
  %30 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !593
  %32 = zext i32 %31 to i64
  br label %33

33:                                               ; preds = %28, %45
  %34 = phi i64 [ 0, %28 ], [ %46, %45 ]
  %35 = add i64 %34, %26
  %36 = icmp ult i64 %35, %32
  br i1 %36, label %37, label %45, !prof !588

37:                                               ; preds = %33
  %38 = lshr i64 %35, 6
  %39 = getelementptr inbounds %struct.simple_bitmap_def, ptr %29, i64 0, i32 3, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !379
  %41 = and i64 %35, 63
  %42 = shl nuw i64 1, %41
  %43 = and i64 %40, %42
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %48, !prof !588

45:                                               ; preds = %33, %37
  %46 = add nuw i64 %34, 1
  %47 = icmp eq i64 %46, %1
  br i1 %47, label %48, label %33, !prof !594, !llvm.loop !595

48:                                               ; preds = %45, %37, %15, %25, %22, %24
  %49 = phi i8 [ 0, %24 ], [ 1, %22 ], [ 0, %25 ], [ 1, %15 ], [ 0, %45 ], [ 1, %37 ]
  ret i8 %49
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

; Function Attrs: optsize
declare ptr @copy_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_tree_list_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @assemble_external_libcall(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @emit_push_insn(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: optsize
declare ptr @size_in_bytes(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_temp_slots() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!248}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247}
!35 = !{ptr @prepare_call_address, ptr @memory_address_addr_space, i64 1}
!36 = !{ptr @prepare_call_address, ptr @force_not_mem, i64 1}
!37 = !{ptr @prepare_call_address, ptr @convert_memory_address_addr_space, i64 1}
!38 = !{ptr @prepare_call_address, ptr @emit_move_insn, i64 1}
!39 = !{ptr @setjmp_call_p, ptr @special_function_p, i64 414604}
!40 = !{ptr @special_function_p, ptr @strcmp, i64 3601727}
!41 = !{ptr @special_function_p, ptr @strncmp, i64 20}
!42 = !{ptr @gimple_alloca_call_p, ptr @is_gimple_call, i64 207390}
!43 = !{ptr @gimple_alloca_call_p, ptr @gimple_call_fndecl, i64 207389}
!44 = !{ptr @gimple_alloca_call_p, ptr @special_function_p, i64 207388}
!45 = !{ptr @is_gimple_call, ptr @gimple_code, i64 207390}
!46 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 207390}
!47 = !{ptr @alloca_call_p, ptr @special_function_p, i64 24850}
!48 = !{ptr @flags_from_decl_or_type, ptr @special_function_p, i64 4225302}
!49 = !{ptr @call_expr_flags, ptr @get_callee_fndecl, i64 292642}
!50 = !{ptr @call_expr_flags, ptr @flags_from_decl_or_type, i64 292640}
!51 = !{ptr @expand_call, ptr @ix86_cfun_abi, i64 193}
!52 = !{ptr @expand_call, ptr @get_callee_fndecl, i64 68958}
!53 = !{ptr @expand_call, ptr @flags_from_decl_or_type, i64 68958}
!54 = !{ptr @expand_call, ptr @warning, i64 4}
!55 = !{ptr @expand_call, ptr @next_call_expr_arg, i64 28}
!56 = !{ptr @expand_call, ptr @expand_expr, i64 5}
!57 = !{ptr @expand_call, ptr @ix86_reg_parm_stack_space, i64 69082}
!58 = !{ptr @expand_call, ptr @ix86_function_type_abi, i64 4479834}
!59 = !{ptr @expand_call, ptr @aggregate_value_p, i64 68958}
!60 = !{ptr @expand_call, ptr @int_size_in_bytes, i64 13}
!61 = !{ptr @expand_call, ptr @assign_temp, i64 13}
!62 = !{ptr @expand_call, ptr @mark_temp_addr_taken, i64 1}
!63 = !{ptr @expand_call, ptr @cgraph_rtl_info, i64 68957}
!64 = !{ptr @expand_call, ptr @first_call_expr_arg, i64 1}
!65 = !{ptr @expand_call, ptr @split_complex_types, i64 1}
!66 = !{ptr @expand_call, ptr @init_cumulative_args, i64 68958}
!67 = !{ptr @expand_call, ptr @list_length, i64 68957}
!68 = !{ptr @expand_call, ptr @initialize_argument_information, i64 68958}
!69 = !{ptr @expand_call, ptr @finalize_must_preallocate, i64 68958}
!70 = !{ptr @expand_call, ptr @reg_mentioned_p, i64 1}
!71 = !{ptr @expand_call, ptr @copy_to_reg, i64 75}
!72 = !{ptr @expand_call, ptr @dbg_cnt, i64 68955}
!73 = !{ptr @expand_call, ptr @decl_function_context, i64 119}
!74 = !{ptr @expand_call, ptr @ix86_return_pops_args, i64 38}
!75 = !{ptr @expand_call, ptr @vector_type_mode, i64 327}
!76 = !{ptr @expand_call, ptr @promote_function_mode, i64 66}
!77 = !{ptr @expand_call, ptr @start_sequence, i64 2205689}
!78 = !{ptr @expand_call, ptr @do_pending_stack_adjust, i64 703}
!79 = !{ptr @expand_call, ptr @precompute_arguments, i64 2205017}
!80 = !{ptr @expand_call, ptr @stack_protect_epilogue, i64 30}
!81 = !{ptr @expand_call, ptr @compute_argument_block_size, i64 2205657}
!82 = !{ptr @expand_call, ptr @plus_constant, i64 640}
!83 = !{ptr @expand_call, ptr @sbitmap_alloc, i64 640}
!84 = !{ptr @expand_call, ptr @sbitmap_zero, i64 640}
!85 = !{ptr @expand_call, ptr @emit_stack_save, i64 24}
!86 = !{ptr @expand_call, ptr @fold_convert_loc, i64 32}
!87 = !{ptr @expand_call, ptr @size_int_kind, i64 32}
!88 = !{ptr @expand_call, ptr @size_binop_loc, i64 32}
!89 = !{ptr @expand_call, ptr @expand_normal, i64 64}
!90 = !{ptr @expand_call, ptr @push_block, i64 41}
!91 = !{ptr @expand_call, ptr @free, i64 70289}
!92 = !{ptr @expand_call, ptr @xmalloc, i64 2204937}
!93 = !{ptr @expand_call, ptr @combine_pending_stack_adjustment_and_call, i64 14}
!94 = !{ptr @expand_call, ptr @gen_rtx_CONST_INT, i64 73}
!95 = !{ptr @expand_call, ptr @xcalloc, i64 12}
!96 = !{ptr @expand_call, ptr @allocate_dynamic_stack_space, i64 32}
!97 = !{ptr @expand_call, ptr @copy_addr_to_reg, i64 32}
!98 = !{ptr @expand_call, ptr @compute_argument_addresses, i64 2205657}
!99 = !{ptr @expand_call, ptr @anti_adjust_stack, i64 16}
!100 = !{ptr @expand_call, ptr @rtx_for_function_call, i64 2205657}
!101 = !{ptr @expand_call, ptr @hard_function_value, i64 2135227}
!102 = !{ptr @expand_call, ptr @precompute_register_parameters, i64 2205657}
!103 = !{ptr @expand_call, ptr @save_fixed_argument_area, i64 2205001}
!104 = !{ptr @expand_call, ptr @get_last_insn, i64 7026358}
!105 = !{ptr @expand_call, ptr @store_one_arg, i64 2612325}
!106 = !{ptr @expand_call, ptr @check_sibcall_argument_overlap, i64 1940}
!107 = !{ptr @expand_call, ptr @gen_rtx_fmt_e_stat, i64 35}
!108 = !{ptr @expand_call, ptr @gen_rtx_fmt_ee_stat, i64 35}
!109 = !{ptr @expand_call, ptr @convert_memory_address_addr_space, i64 16}
!110 = !{ptr @expand_call, ptr @force_operand, i64 16}
!111 = !{ptr @expand_call, ptr @force_reg, i64 16}
!112 = !{ptr @expand_call, ptr @emit_move_insn, i64 2132754}
!113 = !{ptr @expand_call, ptr @use_reg, i64 8}
!114 = !{ptr @expand_call, ptr @prepare_call_address, i64 2205657}
!115 = !{ptr @expand_call, ptr @load_register_parameters, i64 2205657}
!116 = !{ptr @expand_call, ptr @function_arg, i64 2205657}
!117 = !{ptr @expand_call, ptr @fancy_abort, i64 92}
!118 = !{ptr @expand_call, ptr @emit_call_1, i64 2205657}
!119 = !{ptr @expand_call, ptr @shift_return_value, i64 32}
!120 = !{ptr @expand_call, ptr @rhs_regno, i64 2132700}
!121 = !{ptr @expand_call, ptr @gen_rtx_REG, i64 32}
!122 = !{ptr @expand_call, ptr @gen_reg_rtx, i64 32}
!123 = !{ptr @expand_call, ptr @mark_reg_pointer, i64 16}
!124 = !{ptr @expand_call, ptr @add_reg_note, i64 32}
!125 = !{ptr @expand_call, ptr @get_insns, i64 2205689}
!126 = !{ptr @expand_call, ptr @end_sequence, i64 2205689}
!127 = !{ptr @expand_call, ptr @emit_insn, i64 68990}
!128 = !{ptr @expand_call, ptr @emit_barrier_after, i64 2687}
!129 = !{ptr @expand_call, ptr @memory_address_addr_space, i64 54}
!130 = !{ptr @expand_call, ptr @gen_rtx_MEM, i64 54}
!131 = !{ptr @expand_call, ptr @set_mem_attributes, i64 22}
!132 = !{ptr @expand_call, ptr @build_qualified_type, i64 12}
!133 = !{ptr @expand_call, ptr @rtx_equal_p, i64 32}
!134 = !{ptr @expand_call, ptr @emit_group_store, i64 12}
!135 = !{ptr @expand_call, ptr @avoid_likely_spilled_reg, i64 136}
!136 = !{ptr @expand_call, ptr @copy_blkmode_from_reg, i64 48}
!137 = !{ptr @expand_call, ptr @gen_rtx_SUBREG, i64 32}
!138 = !{ptr @expand_call, ptr @emit_stack_restore, i64 32}
!139 = !{ptr @expand_call, ptr @restore_fixed_argument_area, i64 32}
!140 = !{ptr @expand_call, ptr @emit_block_move, i64 16}
!141 = !{ptr @expand_call, ptr @update_nonlocal_goto_save_area, i64 20}
!142 = !{ptr @first_call_expr_arg, ptr @init_call_expr_arg_iterator, i64 68958}
!143 = !{ptr @first_call_expr_arg, ptr @next_call_expr_arg, i64 68958}
!144 = !{ptr @expand_expr, ptr @expand_expr_real, i64 81668}
!145 = !{ptr @initialize_argument_information, ptr @first_call_expr_arg, i64 68958}
!146 = !{ptr @initialize_argument_information, ptr @next_call_expr_arg, i64 81668}
!147 = !{ptr @initialize_argument_information, ptr @first_field, i64 1}
!148 = !{ptr @initialize_argument_information, ptr @vector_type_mode, i64 3}
!149 = !{ptr @initialize_argument_information, ptr @pass_by_reference, i64 81668}
!150 = !{ptr @initialize_argument_information, ptr @reference_callee_copied, i64 1}
!151 = !{ptr @initialize_argument_information, ptr @build_fold_addr_expr_loc, i64 1}
!152 = !{ptr @initialize_argument_information, ptr @promote_function_mode, i64 81668}
!153 = !{ptr @initialize_argument_information, ptr @function_arg, i64 81668}
!154 = !{ptr @initialize_argument_information, ptr @locate_and_pad_parm, i64 81668}
!155 = !{ptr @initialize_argument_information, ptr @host_integerp, i64 1}
!156 = !{ptr @initialize_argument_information, ptr @tree_low_cst, i64 1}
!157 = !{ptr @initialize_argument_information, ptr @function_arg_advance, i64 81668}
!158 = !{ptr @finalize_must_preallocate, ptr @vector_type_mode, i64 10}
!159 = !{ptr @finalize_must_preallocate, ptr @int_size_in_bytes, i64 9}
!160 = !{ptr @precompute_arguments, ptr @ix86_cfun_abi, i64 1}
!161 = !{ptr @precompute_arguments, ptr @expand_normal, i64 1}
!162 = !{ptr @compute_argument_block_size, ptr @ix86_cfun_abi, i64 1}
!163 = !{ptr @compute_argument_block_size, ptr @fold_convert_loc, i64 1}
!164 = !{ptr @compute_argument_block_size, ptr @size_int_kind, i64 2}
!165 = !{ptr @compute_argument_block_size, ptr @size_binop_loc, i64 2}
!166 = !{ptr @compute_argument_block_size, ptr @ix86_function_type_abi, i64 68958}
!167 = !{ptr @compute_argument_addresses, ptr @gen_rtx_CONST_INT, i64 163334}
!168 = !{ptr @compute_argument_addresses, ptr @fold_convert_loc, i64 2}
!169 = !{ptr @compute_argument_addresses, ptr @size_int_kind, i64 2}
!170 = !{ptr @compute_argument_addresses, ptr @size_binop_loc, i64 2}
!171 = !{ptr @compute_argument_addresses, ptr @expand_normal, i64 2}
!172 = !{ptr @compute_argument_addresses, ptr @plus_constant, i64 326662}
!173 = !{ptr @compute_argument_addresses, ptr @gen_rtx_fmt_ee_stat, i64 2}
!174 = !{ptr @compute_argument_addresses, ptr @mode_for_size, i64 1}
!175 = !{ptr @compute_argument_addresses, ptr @gen_rtx_MEM, i64 163332}
!176 = !{ptr @compute_argument_addresses, ptr @set_mem_size, i64 2}
!177 = !{ptr @compute_argument_addresses, ptr @set_mem_attributes, i64 163330}
!178 = !{ptr @compute_argument_addresses, ptr @set_mem_align, i64 163332}
!179 = !{ptr @compute_argument_addresses, ptr @set_mem_alias_set, i64 163332}
!180 = !{ptr @rtx_for_function_call, ptr @assemble_external, i64 1}
!181 = !{ptr @rtx_for_function_call, ptr @make_decl_rtl, i64 36}
!182 = !{ptr @rtx_for_function_call, ptr @push_temp_slots, i64 1}
!183 = !{ptr @rtx_for_function_call, ptr @expand_normal, i64 1}
!184 = !{ptr @rtx_for_function_call, ptr @pop_temp_slots, i64 1}
!185 = !{ptr @store_one_arg, ptr @push_temp_slots, i64 81667}
!186 = !{ptr @store_one_arg, ptr @ix86_cfun_abi, i64 2}
!187 = !{ptr @store_one_arg, ptr @mode_for_size, i64 40822}
!188 = !{ptr @store_one_arg, ptr @memory_address_addr_space, i64 40822}
!189 = !{ptr @store_one_arg, ptr @gen_rtx_MEM, i64 40822}
!190 = !{ptr @store_one_arg, ptr @build_qualified_type, i64 20411}
!191 = !{ptr @store_one_arg, ptr @assign_temp, i64 20411}
!192 = !{ptr @store_one_arg, ptr @preserve_temp_slots, i64 102078}
!193 = !{ptr @store_one_arg, ptr @validize_mem, i64 20411}
!194 = !{ptr @store_one_arg, ptr @gen_rtx_CONST_INT, i64 183739}
!195 = !{ptr @store_one_arg, ptr @emit_block_move, i64 20411}
!196 = !{ptr @store_one_arg, ptr @gen_reg_rtx, i64 20411}
!197 = !{ptr @store_one_arg, ptr @emit_move_insn, i64 20411}
!198 = !{ptr @store_one_arg, ptr @vector_type_mode, i64 2}
!199 = !{ptr @store_one_arg, ptr @expand_expr, i64 81666}
!200 = !{ptr @store_one_arg, ptr @convert_modes, i64 1}
!201 = !{ptr @store_one_arg, ptr @mem_overlaps_already_clobbered_arg_p, i64 3}
!202 = !{ptr @store_one_arg, ptr @do_pending_stack_adjust, i64 1}
!203 = !{ptr @store_one_arg, ptr @fold_convert_loc, i64 5}
!204 = !{ptr @store_one_arg, ptr @size_int_kind, i64 5}
!205 = !{ptr @store_one_arg, ptr @size_binop_loc, i64 5}
!206 = !{ptr @store_one_arg, ptr @expand_normal, i64 5}
!207 = !{ptr @store_one_arg, ptr @emit_push_insn, i64 81666}
!208 = !{ptr @store_one_arg, ptr @free_temp_slots, i64 81667}
!209 = !{ptr @store_one_arg, ptr @pop_temp_slots, i64 81667}
!210 = !{ptr @check_sibcall_argument_overlap, ptr @get_insns, i64 19}
!211 = !{ptr @check_sibcall_argument_overlap, ptr @check_sibcall_argument_overlap_1, i64 41}
!212 = !{ptr @check_sibcall_argument_overlap, ptr @SET_BIT, i64 73}
!213 = !{ptr @load_register_parameters, ptr @get_last_insn, i64 1}
!214 = !{ptr @load_register_parameters, ptr @rhs_regno, i64 4}
!215 = !{ptr @load_register_parameters, ptr @gen_rtx_REG, i64 4}
!216 = !{ptr @load_register_parameters, ptr @emit_move_insn, i64 4}
!217 = !{ptr @load_register_parameters, ptr @check_sibcall_argument_overlap, i64 1}
!218 = !{ptr @emit_call_1, ptr @gen_rtx_CONST_INT, i64 68961}
!219 = !{ptr @emit_call_1, ptr @ix86_return_pops_args, i64 68958}
!220 = !{ptr @emit_call_1, ptr @memory_address_addr_space, i64 1}
!221 = !{ptr @emit_call_1, ptr @gen_rtx_MEM, i64 68958}
!222 = !{ptr @emit_call_1, ptr @gen_call_value_pop, i64 1}
!223 = !{ptr @emit_call_1, ptr @gen_sibcall_value, i64 19}
!224 = !{ptr @emit_call_1, ptr @gen_sibcall, i64 1}
!225 = !{ptr @emit_call_1, ptr @gen_call_value, i64 66736}
!226 = !{ptr @emit_call_1, ptr @gen_call, i64 2201}
!227 = !{ptr @emit_call_1, ptr @emit_call_insn, i64 68958}
!228 = !{ptr @emit_call_1, ptr @last_call_insn, i64 68958}
!229 = !{ptr @emit_call_1, ptr @add_function_usage_to, i64 68958}
!230 = !{ptr @emit_call_1, ptr @make_reg_eh_region_note, i64 68958}
!231 = !{ptr @emit_call_1, ptr @add_reg_note, i64 65}
!232 = !{ptr @emit_call_1, ptr @ix86_cfun_abi, i64 1}
!233 = !{ptr @emit_call_1, ptr @anti_adjust_stack, i64 1}
!234 = !{ptr @fixup_tail_calls, ptr @get_insns, i64 1}
!235 = !{ptr @fixup_tail_calls, ptr @find_reg_note, i64 4}
!236 = !{ptr @fixup_tail_calls, ptr @remove_note, i64 1}
!237 = !{ptr @must_pass_in_stack_var_size_or_pad, ptr @int_size_in_bytes, i64 1}
!238 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 207390}
!239 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 207390}
!240 = !{ptr @gimple_op, ptr @gimple_ops, i64 207389}
!241 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 207390}
!242 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 207390}
!243 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!244 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 207390}
!245 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 207390}
!246 = !{ptr @check_sibcall_argument_overlap_1, ptr @mem_overlaps_already_clobbered_arg_p, i64 40}
!247 = !{ptr @check_sibcall_argument_overlap_1, ptr @check_sibcall_argument_overlap_1, i64 130}
!248 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!249 = !{!"function_entry_count", i64 68958}
!250 = !{!"branch_weights", i32 68959, i32 1}
!251 = !{!252, !254, i64 1640}
!252 = !{!"gcc_target", !253, i64 0, !258, i64 368, !259, i64 664, !260, i64 744, !254, i64 752, !254, i64 760, !254, i64 768, !254, i64 776, !254, i64 784, !254, i64 792, !254, i64 800, !254, i64 808, !254, i64 816, !254, i64 824, !254, i64 832, !254, i64 840, !254, i64 848, !254, i64 856, !254, i64 864, !254, i64 872, !254, i64 880, !254, i64 888, !254, i64 896, !254, i64 904, !254, i64 912, !254, i64 920, !254, i64 928, !254, i64 936, !254, i64 944, !254, i64 952, !254, i64 960, !254, i64 968, !254, i64 976, !254, i64 984, !254, i64 992, !254, i64 1000, !254, i64 1008, !254, i64 1016, !254, i64 1024, !254, i64 1032, !254, i64 1040, !254, i64 1048, !254, i64 1056, !261, i64 1064, !261, i64 1072, !254, i64 1080, !254, i64 1088, !254, i64 1096, !254, i64 1104, !254, i64 1112, !254, i64 1120, !254, i64 1128, !254, i64 1136, !254, i64 1144, !254, i64 1152, !254, i64 1160, !254, i64 1168, !262, i64 1176, !254, i64 1232, !254, i64 1240, !254, i64 1248, !254, i64 1256, !254, i64 1264, !254, i64 1272, !254, i64 1280, !254, i64 1288, !254, i64 1296, !254, i64 1304, !254, i64 1312, !254, i64 1320, !254, i64 1328, !254, i64 1336, !254, i64 1344, !254, i64 1352, !254, i64 1360, !254, i64 1368, !254, i64 1376, !254, i64 1384, !254, i64 1392, !254, i64 1400, !254, i64 1408, !254, i64 1416, !254, i64 1424, !254, i64 1432, !254, i64 1440, !254, i64 1448, !254, i64 1456, !261, i64 1464, !263, i64 1472, !254, i64 1664, !254, i64 1672, !254, i64 1680, !254, i64 1688, !254, i64 1696, !254, i64 1704, !254, i64 1712, !254, i64 1720, !254, i64 1728, !254, i64 1736, !254, i64 1744, !254, i64 1752, !254, i64 1760, !254, i64 1768, !254, i64 1776, !264, i64 1784, !265, i64 1792, !266, i64 1896, !267, i64 1968, !254, i64 2016, !255, i64 2024, !255, i64 2025, !255, i64 2026, !255, i64 2027, !255, i64 2028, !255, i64 2029, !255, i64 2030, !255, i64 2031, !255, i64 2032, !255, i64 2033, !255, i64 2034, !255, i64 2035}
!253 = !{!"asm_out", !254, i64 0, !254, i64 8, !254, i64 16, !257, i64 24, !257, i64 56, !254, i64 88, !254, i64 96, !254, i64 104, !254, i64 112, !254, i64 120, !254, i64 128, !254, i64 136, !254, i64 144, !254, i64 152, !254, i64 160, !254, i64 168, !254, i64 176, !254, i64 184, !254, i64 192, !254, i64 200, !254, i64 208, !254, i64 216, !254, i64 224, !254, i64 232, !254, i64 240, !254, i64 248, !254, i64 256, !254, i64 264, !254, i64 272, !254, i64 280, !254, i64 288, !254, i64 296, !254, i64 304, !254, i64 312, !254, i64 320, !254, i64 328, !254, i64 336, !254, i64 344, !254, i64 352, !254, i64 360}
!254 = !{!"any pointer", !255, i64 0}
!255 = !{!"omnipotent char", !256, i64 0}
!256 = !{!"Simple C/C++ TBAA"}
!257 = !{!"asm_int_op", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24}
!258 = !{!"sched", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48, !254, i64 56, !254, i64 64, !254, i64 72, !254, i64 80, !254, i64 88, !254, i64 96, !254, i64 104, !254, i64 112, !254, i64 120, !254, i64 128, !254, i64 136, !254, i64 144, !254, i64 152, !254, i64 160, !254, i64 168, !254, i64 176, !254, i64 184, !254, i64 192, !254, i64 200, !254, i64 208, !254, i64 216, !254, i64 224, !254, i64 232, !254, i64 240, !254, i64 248, !254, i64 256, !254, i64 264, !254, i64 272, !254, i64 280, !254, i64 288}
!259 = !{!"vectorize", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48, !254, i64 56, !254, i64 64, !254, i64 72}
!260 = !{!"int", !255, i64 0}
!261 = !{!"long", !255, i64 0}
!262 = !{!"addr_space", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48}
!263 = !{!"calls", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48, !254, i64 56, !254, i64 64, !254, i64 72, !254, i64 80, !254, i64 88, !254, i64 96, !254, i64 104, !254, i64 112, !254, i64 120, !254, i64 128, !254, i64 136, !254, i64 144, !254, i64 152, !254, i64 160, !254, i64 168, !254, i64 176, !254, i64 184}
!264 = !{!"c", !254, i64 0}
!265 = !{!"cxx", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48, !254, i64 56, !254, i64 64, !254, i64 72, !254, i64 80, !254, i64 88, !254, i64 96}
!266 = !{!"emutls", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48, !254, i64 56, !255, i64 64, !255, i64 65}
!267 = !{!"target_option_hooks", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40}
!268 = !{!"function_entry_count", i64 414604}
!269 = !{!"function_entry_count", i64 4872150}
!270 = !{!"calls.c:special_function_p"}
!271 = !{!"branch_weights", i32 1, i32 4872151}
!272 = !{!255, !255, i64 0}
!273 = !{!"branch_weights", i32 4425956, i32 446196}
!274 = !{!"branch_weights", i32 4425956, i32 1}
!275 = !{!"branch_weights", i32 1206, i32 4424751}
!276 = !{!"branch_weights", i32 -127032290, i32 41984, i32 362969057}
!277 = !{!"branch_weights", i32 1, i32 41}
!278 = !{!"branch_weights", i32 19, i32 354444}
!279 = !{!"branch_weights", i32 1, i32 19}
!280 = !{!"branch_weights", i32 17912, i32 2147465736}
!281 = !{!"branch_weights", i32 50, i32 3}
!282 = !{!"branch_weights", i32 -938540096, i32 -1476395008, i32 670104639}
!283 = !{!"branch_weights", i32 21, i32 1}
!284 = !{!"branch_weights", i32 26, i32 3}
!285 = !{!"branch_weights", i32 798721469, i32 7766, i32 144626, i32 10677, i32 -798887452, i32 2911}
!286 = !{!"branch_weights", i32 -980185541, i32 536870912, i32 500520276, i32 479665264}
!287 = !{!"branch_weights", i32 119998433, i32 2027485215}
!288 = !{!"branch_weights", i32 1, i32 149}
!289 = !{!"branch_weights", i32 2, i32 10}
!290 = !{!"branch_weights", i32 1, i32 2}
!291 = !{!"branch_weights", i32 3601706, i32 20}
!292 = !{!"branch_weights", i32 1, i32 3601706}
!293 = !{!"branch_weights", i32 1, i32 3}
!294 = !{!"function_entry_count", i64 207390}
!295 = !{i8 0, i8 2}
!296 = !{!"branch_weights", i32 1, i32 207391}
!297 = !{!"branch_weights", i32 207391, i32 1}
!298 = !{!"calls.c:is_gimple_call"}
!299 = !{i32 0, i32 256}
!300 = !{!"calls.c:gimple_call_fndecl"}
!301 = !{!"function_entry_count", i64 24866}
!302 = !{!"branch_weights", i32 24867, i32 1}
!303 = !{!"branch_weights", i32 24854, i32 14}
!304 = !{!"branch_weights", i32 24854, i32 1}
!305 = !{!"function_entry_count", i64 4225316}
!306 = !{!260, !260, i64 0}
!307 = !{!"branch_weights", i32 14, i32 63379560, i32 196}
!308 = !{!"branch_weights", i32 4225304, i32 1}
!309 = !{!"branch_weights", i32 4225261, i32 44}
!310 = !{!"branch_weights", i32 4225302, i32 3}
!311 = !{!"branch_weights", i32 4220011, i32 5307}
!312 = !{!"function_entry_count", i64 292642}
!313 = !{!"branch_weights", i32 14, i32 292630}
!314 = !{!"branch_weights", i32 1, i32 14}
!315 = !{!"branch_weights", i32 14, i32 1}
!316 = !{!"function_entry_count", i64 0}
!317 = !{!"function_entry_count", i64 66684}
!318 = !{!"calls.c:rhs_regno"}
!319 = !{!"branch_weights", i32 34479, i32 -1917260976}
!320 = !{!254, !254, i64 0}
!321 = !{!322, !260, i64 4}
!322 = !{!"rtl_data", !323, i64 0, !324, i64 40, !325, i64 96, !326, i64 112, !328, i64 208, !329, i64 248, !260, i64 312, !254, i64 320, !254, i64 328, !254, i64 336, !254, i64 344, !254, i64 352, !254, i64 360, !254, i64 368, !254, i64 376, !254, i64 384, !254, i64 392, !261, i64 400, !254, i64 408, !254, i64 416, !254, i64 424, !260, i64 432, !260, i64 436, !260, i64 440, !260, i64 444, !260, i64 448, !260, i64 452, !254, i64 456, !255, i64 464, !255, i64 465, !255, i64 466, !255, i64 467, !255, i64 468, !255, i64 469, !255, i64 470, !255, i64 471, !255, i64 472, !255, i64 473, !255, i64 474, !255, i64 475, !255, i64 476, !255, i64 477, !255, i64 478, !255, i64 479, !255, i64 480, !255, i64 481, !255, i64 482, !255, i64 483, !255, i64 484, !255, i64 485}
!323 = !{!"expr_status", !260, i64 0, !260, i64 4, !260, i64 8, !254, i64 16, !254, i64 24, !254, i64 32}
!324 = !{!"emit_status", !260, i64 0, !260, i64 4, !254, i64 8, !254, i64 16, !254, i64 24, !260, i64 32, !260, i64 36, !260, i64 40, !260, i64 44, !254, i64 48}
!325 = !{!"varasm_status", !254, i64 0, !260, i64 8}
!326 = !{!"incoming_args", !260, i64 0, !260, i64 4, !260, i64 8, !254, i64 16, !327, i64 24, !254, i64 88}
!327 = !{!"ix86_args", !260, i64 0, !260, i64 4, !260, i64 8, !260, i64 12, !260, i64 16, !260, i64 20, !260, i64 24, !260, i64 28, !260, i64 32, !260, i64 36, !260, i64 40, !260, i64 44, !260, i64 48, !260, i64 52, !260, i64 56, !260, i64 60}
!328 = !{!"function_subsections", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32}
!329 = !{!"rtl_eh", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !255, i64 48}
!330 = !{!"branch_weights", i32 1, i32 68959}
!331 = !{!252, !254, i64 1488}
!332 = !{!"branch_weights", i32 152701, i32 -1662433454}
!333 = distinct !{!333, !334}
!334 = !{!"llvm.loop.mustprogress"}
!335 = distinct !{!335, !334}
!336 = !{!"branch_weights", i32 16388, i32 52572}
!337 = !{!338, !260, i64 0}
!338 = !{!"cgraph_rtl_info", !260, i64 0}
!339 = !{!"branch_weights", i32 52572, i32 -1531099539}
!340 = !{!"branch_weights", i32 1, i32 137918, i32 1}
!341 = !{!252, !254, i64 1552}
!342 = distinct !{!342, !334}
!343 = !{!252, !254, i64 1536}
!344 = !{!252, !254, i64 1544}
!345 = !{!346, !254, i64 8}
!346 = !{!"args_size", !261, i64 0, !254, i64 8}
!347 = !{!"branch_weights", i32 108842, i32 -1793107671}
!348 = !{!"branch_weights", i32 -2039414964, i32 4128947}
!349 = !{!"branch_weights", i32 126, i32 1}
!350 = !{!252, !254, i64 1088}
!351 = !{!"branch_weights", i32 1, i32 126}
!352 = !{!346, !261, i64 0}
!353 = !{!322, !260, i64 116}
!354 = !{!322, !260, i64 120}
!355 = !{!"branch_weights", i32 107, i32 20}
!356 = !{!"branch_weights", i32 20, i32 1}
!357 = !{!358, !254, i64 344}
!358 = !{!"lang_hooks", !254, i64 0, !261, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48, !254, i64 56, !254, i64 64, !254, i64 72, !254, i64 80, !254, i64 88, !254, i64 96, !254, i64 104, !254, i64 112, !254, i64 120, !254, i64 128, !254, i64 136, !254, i64 144, !254, i64 152, !254, i64 160, !254, i64 168, !254, i64 176, !254, i64 184, !254, i64 192, !254, i64 200, !254, i64 208, !254, i64 216, !254, i64 224, !254, i64 232, !359, i64 240, !360, i64 248, !361, i64 256, !362, i64 272, !363, i64 432, !364, i64 560, !254, i64 584, !254, i64 592, !254, i64 600, !254, i64 608, !254, i64 616, !254, i64 624, !254, i64 632, !254, i64 640, !254, i64 648, !254, i64 656, !254, i64 664, !255, i64 672}
!359 = !{!"lang_hooks_for_tree_inlining", !254, i64 0}
!360 = !{!"lang_hooks_for_callgraph", !254, i64 0}
!361 = !{!"lang_hooks_for_tree_dump", !254, i64 0, !254, i64 8}
!362 = !{!"lang_hooks_for_decls", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48, !254, i64 56, !254, i64 64, !254, i64 72, !254, i64 80, !254, i64 88, !254, i64 96, !254, i64 104, !254, i64 112, !254, i64 120, !254, i64 128, !254, i64 136, !254, i64 144, !254, i64 152}
!363 = !{!"lang_hooks_for_types", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48, !254, i64 56, !254, i64 64, !254, i64 72, !254, i64 80, !254, i64 88, !254, i64 96, !254, i64 104, !254, i64 112, !255, i64 120}
!364 = !{!"lang_hooks_for_lto", !254, i64 0, !254, i64 8, !254, i64 16}
!365 = !{!"branch_weights", i32 1, i32 20}
!366 = !{!"branch_weights", i32 400, i32 41}
!367 = !{!322, !260, i64 440}
!368 = !{!"branch_weights", i32 39, i32 68921}
!369 = !{!"branch_weights", i32 68958, i32 1}
!370 = distinct !{!370, !334}
!371 = !{!"branch_weights", i32 20, i32 68940}
!372 = !{!322, !260, i64 0}
!373 = !{!322, !260, i64 8}
!374 = !{!"branch_weights", i32 68980, i32 68940}
!375 = !{!"branch_weights", i32 0, i32 -2147483648}
!376 = !{!"branch_weights", i32 68940, i32 1}
!377 = !{!322, !254, i64 336}
!378 = !{i64 0, i64 8, !379, i64 8, i64 8, !320}
!379 = !{!261, !261, i64 0}
!380 = !{!322, !254, i64 200}
!381 = !{!322, !260, i64 312}
!382 = !{!"branch_weights", i32 77, i32 68864}
!383 = !{!"branch_weights", i32 1, i32 68940}
!384 = !{!"branch_weights", i32 68958, i32 12711}
!385 = distinct !{!385, !334}
!386 = !{!387, !260, i64 64}
!387 = !{!"arg_data", !254, i64 0, !260, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48, !260, i64 56, !260, i64 60, !260, i64 64, !388, i64 72, !254, i64 144, !254, i64 152, !254, i64 160, !254, i64 168, !260, i64 176}
!388 = !{!"locate_and_pad_arg_data", !346, i64 0, !346, i64 16, !346, i64 32, !346, i64 48, !260, i64 64, !260, i64 68}
!389 = !{!"branch_weights", i32 81669, i32 1}
!390 = !{!"branch_weights", i32 73502759, i32 -2066585256}
!391 = !{!"branch_weights", i32 1, i32 66759}
!392 = !{!387, !254, i64 32}
!393 = !{!"branch_weights", i32 20, i32 81650}
!394 = !{i32 0, i32 2}
!395 = !{!387, !254, i64 144}
!396 = distinct !{!396, !334}
!397 = !{!387, !260, i64 60}
!398 = distinct !{!398, !334}
!399 = !{!"branch_weights", i32 34470, i32 -1917916086}
!400 = !{!"branch_weights", i32 -1917295456, i32 68959}
!401 = !{!252, !254, i64 1504}
!402 = !{!"branch_weights", i32 -1917916086, i32 34470}
!403 = !{!"branch_weights", i32 2893664, i32 -1922292400}
!404 = !{!"branch_weights", i32 82, i32 1}
!405 = !{!"branch_weights", i32 1, i32 0}
!406 = distinct !{!406, !334}
!407 = !{!"branch_weights", i32 83, i32 1}
!408 = !{!"branch_weights", i32 75972842, i32 -2069055339}
!409 = !{!"branch_weights", i32 66685, i32 1}
!410 = !{!"branch_weights", i32 1, i32 66685}
!411 = !{!"branch_weights", i32 66706, i32 66666}
!412 = !{!"branch_weights", i32 20, i32 66666}
!413 = !{!"branch_weights", i32 1, i32 66666}
!414 = distinct !{!414, !334}
!415 = !{!387, !254, i64 160}
!416 = !{!"branch_weights", i32 66685, i32 2275}
!417 = !{!"branch_weights", i32 68939, i32 1}
!418 = !{!"branch_weights", i32 81650, i32 1}
!419 = !{!387, !254, i64 152}
!420 = !{!387, !261, i64 72}
!421 = !{!"branch_weights", i32 68939, i32 12711}
!422 = distinct !{!422, !334}
!423 = !{!424, !254, i64 64}
!424 = !{!"function", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48, !254, i64 56, !254, i64 64, !254, i64 72, !254, i64 80, !254, i64 88, !254, i64 96, !260, i64 104, !260, i64 108, !260, i64 112, !260, i64 116, !260, i64 120, !260, i64 124, !254, i64 128, !260, i64 136, !260, i64 137, !260, i64 138, !260, i64 138, !260, i64 138, !260, i64 138, !260, i64 138, !260, i64 138, !260, i64 138, !260, i64 139, !260, i64 139, !260, i64 139, !260, i64 139, !260, i64 139, !260, i64 139, !260, i64 139}
!425 = !{!387, !254, i64 168}
!426 = distinct !{!426, !334}
!427 = !{!"branch_weights", i32 159, i32 1}
!428 = !{!387, !254, i64 16}
!429 = distinct !{!429, !334}
!430 = !{!431, !254, i64 0}
!431 = !{!"simple_bitmap_def", !254, i64 0, !260, i64 8, !260, i64 12, !255, i64 16}
!432 = !{!"branch_weights", i32 68877, i32 64}
!433 = !{!"branch_weights", i32 68877, i32 1}
!434 = !{!"branch_weights", i32 2146860548, i32 623100}
!435 = !{!322, !255, i64 475}
!436 = !{!"calls.c:first_call_expr_arg"}
!437 = !{!"function_entry_count", i64 150626}
!438 = !{!"calls.c:next_call_expr_arg"}
!439 = !{!440, !260, i64 12}
!440 = !{!"call_expr_arg_iterator_d", !254, i64 0, !260, i64 8, !260, i64 12}
!441 = !{!440, !260, i64 8}
!442 = !{!"branch_weights", i32 81669, i32 68959}
!443 = !{!440, !254, i64 0}
!444 = !{!"function_entry_count", i64 81668}
!445 = !{!"calls.c:expand_expr"}
!446 = !{!"calls.c:split_complex_types"}
!447 = distinct !{!447, !334}
!448 = distinct !{!448, !334}
!449 = !{!"calls.c:initialize_argument_information"}
!450 = !{!387, !254, i64 0}
!451 = !{!"branch_weights", i32 1, i32 68958}
!452 = distinct !{!452, !334}
!453 = !{!"branch_weights", i32 1, i32 81669}
!454 = !{!"branch_weights", i32 81669, i32 -960054516}
!455 = !{!387, !260, i64 56}
!456 = !{!387, !260, i64 8}
!457 = !{!387, !254, i64 40}
!458 = !{!252, !254, i64 1576}
!459 = !{!252, !254, i64 1560}
!460 = !{!"branch_weights", i32 2147462283, i32 21365}
!461 = !{!"branch_weights", i32 2147457353, i32 26295}
!462 = !{!"branch_weights", i32 2147475431, i32 8217}
!463 = !{!387, !254, i64 80}
!464 = distinct !{!464, !334}
!465 = !{!"calls.c:finalize_must_preallocate"}
!466 = distinct !{!466, !334}
!467 = !{!"function_entry_count", i64 68939}
!468 = !{!"calls.c:precompute_arguments"}
!469 = !{!"branch_weights", i32 68939, i32 68941}
!470 = !{!"branch_weights", i32 1, i32 81650}
!471 = !{!387, !254, i64 24}
!472 = distinct !{!472, !334}
!473 = !{!"calls.c:compute_argument_block_size"}
!474 = !{!"branch_weights", i32 68940, i32 68980}
!475 = !{!"branch_weights", i32 68940, i32 20}
!476 = !{!"branch_weights", i32 2095120819, i32 52362829}
!477 = !{!"calls.c:expand_normal"}
!478 = !{!"calls.c:combine_pending_stack_adjustment_and_call"}
!479 = !{!"calls.c:compute_argument_addresses"}
!480 = !{!387, !254, i64 96}
!481 = !{!387, !261, i64 88}
!482 = !{!387, !254, i64 112}
!483 = !{!387, !261, i64 104}
!484 = !{!387, !260, i64 140}
!485 = !{!387, !260, i64 136}
!486 = distinct !{!486, !334}
!487 = !{!"calls.c:rtx_for_function_call"}
!488 = !{!"branch_weights", i32 36, i32 68924}
!489 = !{!"calls.c:precompute_register_parameters"}
!490 = !{!387, !254, i64 48}
!491 = distinct !{!491, !334}
!492 = !{!"calls.c:save_fixed_argument_area"}
!493 = !{!"branch_weights", i32 1, i32 68939}
!494 = distinct !{!494, !334}
!495 = distinct !{!495, !334}
!496 = !{!"calls.c:store_one_arg"}
!497 = !{!"branch_weights", i32 81650, i32 81690}
!498 = !{!"branch_weights", i32 81650, i32 20}
!499 = !{!"branch_weights", i32 81650, i32 -961606046}
!500 = !{!"branch_weights", i32 12711, i32 68940}
!501 = !{!"branch_weights", i32 81649, i32 1}
!502 = !{!"branch_weights", i32 81649, i32 244948}
!503 = distinct !{!503, !334}
!504 = !{!"branch_weights", i32 326597, i32 81650}
!505 = !{!387, !260, i64 176}
!506 = !{!"branch_weights", i32 3, i32 18}
!507 = !{!387, !254, i64 128}
!508 = !{!387, !261, i64 120}
!509 = !{!"branch_weights", i32 1119012, i32 -141998759}
!510 = !{!"branch_weights", i32 -961646871, i32 81650}
!511 = !{!"function_entry_count", i64 38}
!512 = !{!"calls.c:check_sibcall_argument_overlap"}
!513 = !{!"branch_weights", i32 20, i32 20}
!514 = !{!"branch_weights", i32 1, i32 155}
!515 = !{!"branch_weights", i32 399484, i32 8000}
!516 = !{!"branch_weights", i32 43, i32 1}
!517 = !{!"branch_weights", i32 155, i32 17}
!518 = distinct !{!518, !334}
!519 = !{!"branch_weights", i32 159, i32 457}
!520 = distinct !{!520, !334}
!521 = !{!"calls.c:load_register_parameters"}
!522 = distinct !{!522, !334}
!523 = distinct !{!523, !334}
!524 = !{!"calls.c:emit_call_1"}
!525 = !{!"branch_weights", i32 2201, i32 66740}
!526 = !{!"branch_weights", i32 68896, i32 64}
!527 = !{!528, !254, i64 216}
!528 = !{!"gcc_debug_hooks", !254, i64 0, !254, i64 8, !254, i64 16, !254, i64 24, !254, i64 32, !254, i64 40, !254, i64 48, !254, i64 56, !254, i64 64, !254, i64 72, !254, i64 80, !254, i64 88, !254, i64 96, !254, i64 104, !254, i64 112, !254, i64 120, !254, i64 128, !254, i64 136, !254, i64 144, !254, i64 152, !254, i64 160, !254, i64 168, !254, i64 176, !254, i64 184, !254, i64 192, !254, i64 200, !254, i64 208, !254, i64 216, !254, i64 224, !254, i64 232, !254, i64 240, !260, i64 248}
!529 = !{!322, !255, i64 481}
!530 = !{!"calls.c:avoid_likely_spilled_reg"}
!531 = !{!"calls.c:restore_fixed_argument_area"}
!532 = !{!"function_entry_count", i64 1}
!533 = !{!"branch_weights", i32 1, i32 127}
!534 = !{!"branch_weights", i32 4, i32 2}
!535 = !{!"branch_weights", i32 2, i32 3}
!536 = !{!"branch_weights", i32 3, i32 2}
!537 = !{!"branch_weights", i32 4, i32 1}
!538 = !{!"branch_weights", i32 127, i32 513}
!539 = distinct !{!539, !334}
!540 = !{!"calls.c:emit_library_call_value_1"}
!541 = !{!358, !254, i64 448}
!542 = !{!543, !254, i64 0}
!543 = !{!"arg", !254, i64 0, !260, i64 8, !254, i64 16, !260, i64 24, !388, i64 32, !254, i64 104}
!544 = !{!543, !260, i64 8}
!545 = !{!543, !260, i64 24}
!546 = !{!543, !254, i64 16}
!547 = !{!543, !261, i64 32}
!548 = !{!543, !254, i64 40}
!549 = distinct !{!549, !334}
!550 = !{!543, !260, i64 100}
!551 = !{!543, !261, i64 64}
!552 = distinct !{!552, !334}
!553 = !{!543, !261, i64 48}
!554 = !{!543, !254, i64 104}
!555 = !{!543, !254, i64 88}
!556 = !{!543, !261, i64 80}
!557 = distinct !{!557, !334}
!558 = distinct !{!558, !334}
!559 = distinct !{!559, !334}
!560 = distinct !{!560, !334}
!561 = distinct !{!561, !334}
!562 = !{!"function_entry_count", i64 81706}
!563 = !{!"branch_weights", i32 1, i32 81707}
!564 = !{!"branch_weights", i32 81707, i32 1}
!565 = !{!"function_entry_count", i64 829560}
!566 = !{!"calls.c:gimple_code"}
!567 = !{!"calls.c:gimple_call_fn"}
!568 = !{!"calls.c:gimple_op"}
!569 = !{!"calls.c:gimple_has_ops"}
!570 = !{!"calls.c:gimple_ops"}
!571 = !{!"calls.c:gimple_statement_structure"}
!572 = !{!"calls.c:gss_for_code"}
!573 = !{!"calls.c:init_call_expr_arg_iterator"}
!574 = !{!"function_entry_count", i64 164}
!575 = !{!"calls.c:check_sibcall_argument_overlap_1"}
!576 = !{!"branch_weights", i32 1, i32 165}
!577 = !{!"branch_weights", i32 41, i32 125}
!578 = !{!"branch_weights", i32 1, i32 249}
!579 = !{!"branch_weights", i32 23104, i32 18819, i32 152}
!580 = !{!581, !260, i64 0}
!581 = !{!"rtvec_def", !260, i64 0, !255, i64 8}
!582 = !{!"branch_weights", i32 123, i32 1}
!583 = distinct !{!583, !334}
!584 = !{!"branch_weights", i32 249, i32 299}
!585 = distinct !{!585, !334}
!586 = !{!"function_entry_count", i64 76}
!587 = !{!"calls.c:SET_BIT"}
!588 = !{!"branch_weights", i32 77, i32 1}
!589 = !{!"function_entry_count", i64 42}
!590 = !{!"calls.c:mem_overlaps_already_clobbered_arg_p"}
!591 = !{!"branch_weights", i32 20, i32 24}
!592 = !{!"branch_weights", i32 1, i32 24}
!593 = !{!431, !260, i64 8}
!594 = !{!"branch_weights", i32 20, i32 57}
!595 = distinct !{!595, !334}
