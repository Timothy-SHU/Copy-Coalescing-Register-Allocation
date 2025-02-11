; ModuleID = 'tree-ssa-ccp.c'
source_filename = "tree-ssa-ccp.c"
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
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.real_value = type { i32, [3 x i64] }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.prop_value_d = type { i32, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimplify_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cfun = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"tree-ssa-ccp.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.4 = private unnamed_addr constant [4 x i8] c"ccp\00", align 1
@pass_ccp = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr @gate_ccp, ptr @do_ssa_ccp, ptr null, ptr null, i32 0, i32 65, i32 40, i32 0, i32 0, i32 0, i32 23 } }, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"fab\00", align 1
@pass_fold_builtins = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr null, ptr @execute_fold_all_builtins, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 2053 } }, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"%sUNINITIALIZED\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%sUNDEFINED\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%sVARYING\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%sCONSTANT \00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@const_val = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_tree_ccp = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [22 x i8] c"\0AVisiting statement:\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"No interesting values produced.  Marked VARYING.\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"which is likely \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"VARYING\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Lattice value changed to \00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c".  Adding SSA edges to worklist.\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"\0AVisiting PHI node: \00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"\0A    Argument #%d (%d -> %d %sexecutable)\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"\09Value: \00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"\0A    PHI node value: \00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.27 = private unnamed_addr constant [14 x i8] c"Simplified\0A  \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"to\0A  \00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@switch.table.likely_value = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 3, i32 1], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_lattice_value(i32 %0, ptr %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call fastcc void @dump_lattice_value(ptr noundef %3, ptr noundef nonnull @.str, i32 %0, ptr %1) #16
  %4 = load ptr, ptr @stderr, align 8, !tbaa !5
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_lattice_value(ptr noundef %0, ptr noundef %1, i32 %2, ptr %3) unnamed_addr #0 {
  switch i32 %2, label %14 [
    i32 0, label %5
    i32 1, label %7
    i32 3, label %9
    i32 2, label %11
  ]

5:                                                ; preds = %4
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1) #16
  br label %15

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %1) #16
  br label %15

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %1) #16
  br label %15

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %1) #16
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %3, i32 noundef %13) #17
  br label %15

14:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 255, ptr noundef nonnull @.str.3) #17
  br label %15

15:                                               ; preds = %14, %11, %9, %7, %5
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_symbol_constant_value(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %61, label %5

5:                                                ; preds = %1
  %6 = and i64 %2, 1048576
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 65535
  %9 = icmp eq i64 %8, 33
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %61

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %41, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %13) #17
  %17 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %16) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = load i64, ptr %16, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 121
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = tail call ptr @get_base_address(ptr noundef %25) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %61, label %28

28:                                               ; preds = %23
  %29 = load i64, ptr %26, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 32
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = or i64 %29, 262144
  store i64 %33, ptr %26, align 8
  %34 = load ptr, ptr @cfun, align 8, !tbaa !5
  %35 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %34) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %61, label %37

37:                                               ; preds = %32
  %38 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %26) #17
  br label %61

39:                                               ; preds = %15
  %40 = icmp eq ptr %16, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %11, %39
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 33554432
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !12
  %48 = tail call zeroext i8 %47(ptr noundef nonnull %0) #17
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !11
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 65534
  %56 = add nsw i32 %55, -6
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  %60 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %52, ptr noundef %59) #17
  br label %61

61:                                               ; preds = %19, %32, %37, %28, %23, %58, %1, %5, %50, %39, %41, %46
  %62 = phi ptr [ null, %46 ], [ null, %41 ], [ null, %39 ], [ null, %50 ], [ null, %5 ], [ null, %1 ], [ %16, %19 ], [ %16, %32 ], [ %16, %37 ], [ %16, %28 ], [ %16, %23 ], [ %60, %58 ]
  ret ptr %62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !27
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @may_propagate_address_into_dereference(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -47
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 121
  br i1 %11, label %13, label %12

12:                                               ; preds = %2, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 895, ptr noundef nonnull @.str.3) #17
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %61, label %21

21:                                               ; preds = %13
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  br label %44

27:                                               ; preds = %21
  %28 = load i64, ptr %1, align 8
  %29 = and i64 %28, 524288
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 524288
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31, %27
  %38 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  %40 = load ptr, ptr %14, align 8, !tbaa !11
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %39, ptr noundef %42) #17
  br label %61

44:                                               ; preds = %24, %31
  %45 = phi ptr [ %26, %24 ], [ %33, %31 ]
  %46 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !11
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !11
  %50 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %49, ptr noundef %45) #17
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = load ptr, ptr %14, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %54, ptr noundef %57) #17
  %59 = icmp ne i8 %58, 0
  %60 = zext i1 %59 to i8
  br label %61

61:                                               ; preds = %44, %52, %13, %37
  %62 = phi i8 [ %43, %37 ], [ 0, %13 ], [ 0, %44 ], [ %60, %52 ]
  ret i8 %62
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_const_aggregate_ref(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !9
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %10

7:                                                ; preds = %322, %1
  %8 = phi ptr [ %0, %1 ], [ %325, %322 ]
  %9 = tail call ptr @get_symbol_constant_value(ptr noundef nonnull %8) #16
  br label %331

10:                                               ; preds = %1, %322
  %11 = phi i64 [ %326, %322 ], [ %2, %1 ]
  %12 = phi ptr [ %325, %322 ], [ %0, %1 ]
  %13 = trunc i64 %11 to i16
  switch i16 %13, label %331 [
    i16 45, label %14
    i16 41, label %198
    i16 43, label %269
    i16 44, label %269
    i16 47, label %295
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %331 [
    i16 32, label %19
    i16 45, label %35
    i16 41, label %35
    i16 28, label %43
    i16 51, label %43
  ]

19:                                               ; preds = %14
  %20 = and i64 %17, 1048576
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %331, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 15
  br i1 %27, label %28, label %331

28:                                               ; preds = %22
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !12
  %30 = tail call zeroext i8 %29(ptr noundef nonnull %16) #17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %331, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !11
  br label %37

35:                                               ; preds = %14, %14
  %36 = tail call ptr @fold_const_aggregate_ref(ptr noundef nonnull %16) #16
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi ptr [ %36, %35 ], [ %34, %32 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %331, label %40

40:                                               ; preds = %37
  %41 = load i64, ptr %38, align 8
  %42 = trunc i64 %41 to i16
  br label %43

43:                                               ; preds = %40, %14, %14
  %44 = phi i16 [ %42, %40 ], [ %18, %14 ], [ %18, %14 ]
  %45 = phi i64 [ %41, %40 ], [ %17, %14 ], [ %17, %14 ]
  %46 = phi ptr [ %38, %40 ], [ %16, %14 ], [ %16, %14 ]
  switch i16 %44, label %331 [
    i16 51, label %47
    i16 28, label %47
  ]

47:                                               ; preds = %43, %43
  %48 = and i64 %45, 67108864
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %331, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !11
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i16
  switch i16 %54, label %331 [
    i16 141, label %55
    i16 23, label %69
  ]

55:                                               ; preds = %50
  %56 = tail call fastcc ptr @get_value(ptr noundef nonnull %52) #16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %331, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %56, align 8, !tbaa !31
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %331

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.prop_value_d, ptr %56, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !33
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 23
  br i1 %66, label %67, label %331

67:                                               ; preds = %61
  %68 = load i64, ptr %46, align 8
  br label %69

69:                                               ; preds = %67, %50
  %70 = phi i64 [ %45, %50 ], [ %68, %67 ]
  %71 = phi ptr [ %52, %50 ], [ %63, %67 ]
  %72 = and i64 %70, 65535
  %73 = icmp eq i64 %72, 28
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.tree_constructor, ptr %46, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !11
  %77 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %76) #16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %331, label %172

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !11
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 14
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #17
  br label %92

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = lshr i32 %89, 16
  %91 = and i32 %90, 255
  br label %92

92:                                               ; preds = %87, %85
  %93 = phi i32 [ %86, %85 ], [ %91, %87 ]
  %94 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !11
  %96 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !11
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 14
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = tail call i32 @vector_type_mode(ptr noundef nonnull %97) #17
  br label %108

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.tree_type, ptr %97, i64 0, i32 6
  %105 = load i32, ptr %104, align 4
  %106 = lshr i32 %105, 16
  %107 = and i32 %106, 255
  br label %108

108:                                              ; preds = %103, %101
  %109 = phi i32 [ %102, %101 ], [ %107, %103 ]
  %110 = icmp eq i32 %93, %109
  br i1 %110, label %111, label %331

111:                                              ; preds = %108
  %112 = load ptr, ptr %94, align 8, !tbaa !11
  %113 = getelementptr inbounds %struct.tree_common, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !11
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 14
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = tail call i32 @vector_type_mode(ptr noundef nonnull %114) #17
  br label %125

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.tree_type, ptr %114, i64 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  br label %125

125:                                              ; preds = %120, %118
  %126 = phi i32 [ %119, %118 ], [ %124, %120 ]
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !11
  %130 = icmp eq i8 %129, 2
  br i1 %130, label %131, label %331

131:                                              ; preds = %125
  %132 = load ptr, ptr %94, align 8, !tbaa !11
  %133 = getelementptr inbounds %struct.tree_common, ptr %132, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !11
  %135 = load i64, ptr %134, align 8
  %136 = and i64 %135, 65535
  %137 = icmp eq i64 %136, 14
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = tail call i32 @vector_type_mode(ptr noundef nonnull %134) #17
  br label %145

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.tree_type, ptr %134, i64 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = lshr i32 %142, 16
  %144 = and i32 %143, 255
  br label %145

145:                                              ; preds = %140, %138
  %146 = phi i32 [ %139, %138 ], [ %144, %140 ]
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !11
  %150 = icmp eq i8 %149, 1
  br i1 %150, label %151, label %331

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.tree_string, ptr %46, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !11
  %154 = sext i32 %153 to i64
  %155 = tail call i32 @compare_tree_int(ptr noundef nonnull %71, i64 noundef %154) #17
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %331

157:                                              ; preds = %151
  %158 = load ptr, ptr %80, align 8, !tbaa !11
  %159 = getelementptr inbounds %struct.tree_string, ptr %46, i64 0, i32 2
  %160 = getelementptr inbounds %struct.tree_int_cst, ptr %71, i64 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !11
  %162 = getelementptr inbounds i8, ptr %159, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !11
  %164 = sext i8 %163 to i64
  %165 = tail call ptr @build_int_cst_type(ptr noundef %158, i64 noundef %164) #17
  br label %331

166:                                              ; preds = %172
  %167 = add nuw nsw i64 %174, 1
  %168 = load ptr, ptr %75, align 8, !tbaa !11
  %169 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %168) #16
  %170 = zext i32 %169 to i64
  %171 = icmp ult i64 %167, %170
  br i1 %171, label %172, label %331, !llvm.loop !34

172:                                              ; preds = %74, %166
  %173 = phi ptr [ %168, %166 ], [ %76, %74 ]
  %174 = phi i64 [ %167, %166 ], [ 0, %74 ]
  %175 = trunc i64 %174 to i32
  %176 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %173, i32 noundef %175) #16
  %177 = getelementptr inbounds %struct.constructor_elt_d, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !36
  %179 = load ptr, ptr %176, align 8, !tbaa !38
  %180 = tail call i32 @tree_int_cst_equal(ptr noundef %179, ptr noundef nonnull %71) #17
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %166, label %182

182:                                              ; preds = %172
  %183 = tail call ptr @tree_strip_nop_conversions(ptr noundef %178) #17
  %184 = load i64, ptr %183, align 8
  %185 = and i64 %184, 65535
  %186 = icmp eq i64 %185, 121
  br i1 %186, label %187, label %331

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.tree_exp, ptr %183, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !11
  %190 = tail call ptr @get_base_address(ptr noundef %189) #17
  %191 = icmp eq ptr %190, null
  br i1 %191, label %331, label %192

192:                                              ; preds = %187
  %193 = load i64, ptr %190, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 32
  br i1 %195, label %196, label %331

196:                                              ; preds = %192
  %197 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %190) #17
  br label %331

198:                                              ; preds = %10
  %199 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !11
  %201 = load i64, ptr %200, align 8
  %202 = trunc i64 %201 to i16
  switch i16 %202, label %331 [
    i16 32, label %203
    i16 45, label %219
    i16 41, label %219
  ]

203:                                              ; preds = %198
  %204 = and i64 %201, 1048576
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %331, label %206

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.tree_common, ptr %200, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !11
  %209 = load i64, ptr %208, align 8
  %210 = and i64 %209, 65535
  %211 = icmp eq i64 %210, 16
  br i1 %211, label %212, label %331

212:                                              ; preds = %206
  %213 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !12
  %214 = tail call zeroext i8 %213(ptr noundef nonnull %200) #17
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %331, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.tree_decl_common, ptr %200, i64 0, i32 5
  %218 = load ptr, ptr %217, align 8, !tbaa !11
  br label %221

219:                                              ; preds = %198, %198
  %220 = tail call ptr @fold_const_aggregate_ref(ptr noundef nonnull %200) #16
  br label %221

221:                                              ; preds = %219, %216
  %222 = phi ptr [ %220, %219 ], [ %218, %216 ]
  %223 = icmp eq ptr %222, null
  br i1 %223, label %331, label %224

224:                                              ; preds = %221
  %225 = load i64, ptr %222, align 8
  %226 = and i64 %225, 67174399
  %227 = icmp eq i64 %226, 67108915
  br i1 %227, label %228, label %331

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %230 = load ptr, ptr %229, align 8, !tbaa !11
  %231 = getelementptr inbounds %struct.tree_constructor, ptr %222, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !11
  %233 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %232) #16
  %234 = zext i32 %233 to i64
  %235 = icmp eq i32 %233, 0
  br i1 %235, label %331, label %236

236:                                              ; preds = %228
  %237 = getelementptr inbounds %struct.tree_decl_common, ptr %230, i64 0, i32 2
  br label %238

238:                                              ; preds = %236, %266
  %239 = phi i64 [ %267, %266 ], [ 0, %236 ]
  %240 = trunc i64 %239 to i32
  %241 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %232, i32 noundef %240) #16
  %242 = load ptr, ptr %241, align 8, !tbaa !38
  %243 = icmp eq ptr %242, %230
  br i1 %243, label %244, label %266

244:                                              ; preds = %238
  %245 = load i64, ptr %237, align 8
  %246 = and i64 %245, 33554432
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %266

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.constructor_elt_d, ptr %241, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !36
  %251 = tail call ptr @tree_strip_nop_conversions(ptr noundef %250) #17
  %252 = load i64, ptr %251, align 8
  %253 = and i64 %252, 65535
  %254 = icmp eq i64 %253, 121
  br i1 %254, label %255, label %331

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.tree_exp, ptr %251, i64 0, i32 3
  %257 = load ptr, ptr %256, align 8, !tbaa !11
  %258 = tail call ptr @get_base_address(ptr noundef %257) #17
  %259 = icmp eq ptr %258, null
  br i1 %259, label %331, label %260

260:                                              ; preds = %255
  %261 = load i64, ptr %258, align 8
  %262 = and i64 %261, 65535
  %263 = icmp eq i64 %262, 32
  br i1 %263, label %264, label %331

264:                                              ; preds = %260
  %265 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %258) #17
  br label %331

266:                                              ; preds = %238, %244
  %267 = add nuw nsw i64 %239, 1
  %268 = icmp eq i64 %267, %234
  br i1 %268, label %331, label %238, !llvm.loop !39

269:                                              ; preds = %10, %10
  %270 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !11
  %272 = tail call ptr @fold_const_aggregate_ref(ptr noundef %271) #16
  %273 = icmp eq ptr %272, null
  br i1 %273, label %331, label %274

274:                                              ; preds = %269
  %275 = load i64, ptr %272, align 8
  %276 = and i64 %275, 65535
  %277 = icmp eq i64 %276, 26
  br i1 %277, label %278, label %331

278:                                              ; preds = %274
  %279 = load i64, ptr %12, align 8
  %280 = and i64 %279, 65535
  %281 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %280
  %282 = load i32, ptr %281, align 4, !tbaa !9
  %283 = add i32 %282, -4
  %284 = icmp ult i32 %283, 7
  br i1 %284, label %285, label %288

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 1
  %287 = load i32, ptr %286, align 8, !tbaa !11
  br label %288

288:                                              ; preds = %285, %278
  %289 = phi i32 [ %287, %285 ], [ 0, %278 ]
  %290 = trunc i64 %279 to i32
  %291 = and i32 %290, 65535
  %292 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !11
  %294 = tail call ptr @fold_build1_stat_loc(i32 noundef %289, i32 noundef %291, ptr noundef %293, ptr noundef nonnull %272) #17
  br label %331

295:                                              ; preds = %10
  %296 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !11
  %298 = load i64, ptr %297, align 8
  %299 = and i64 %298, 65535
  %300 = icmp eq i64 %299, 141
  br i1 %300, label %301, label %331

301:                                              ; preds = %295
  %302 = tail call fastcc ptr @get_value(ptr noundef nonnull %297) #16
  %303 = icmp eq ptr %302, null
  br i1 %303, label %331, label %304

304:                                              ; preds = %301
  %305 = load i32, ptr %302, align 8, !tbaa !31
  %306 = icmp eq i32 %305, 2
  br i1 %306, label %307, label %331

307:                                              ; preds = %304
  %308 = getelementptr inbounds %struct.prop_value_d, ptr %302, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !33
  %310 = load i64, ptr %309, align 8
  %311 = and i64 %310, 65535
  %312 = icmp eq i64 %311, 121
  br i1 %312, label %313, label %331

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !11
  %316 = getelementptr inbounds %struct.tree_common, ptr %309, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !11
  %318 = getelementptr inbounds %struct.tree_common, ptr %317, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !11
  %320 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %315, ptr noundef %319) #17
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %331, label %322

322:                                              ; preds = %313
  %323 = load ptr, ptr %308, align 8, !tbaa !33
  %324 = getelementptr inbounds %struct.tree_exp, ptr %323, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !11
  %326 = load i64, ptr %325, align 8
  %327 = and i64 %326, 65535
  %328 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !9
  %330 = icmp eq i32 %329, 3
  br i1 %330, label %7, label %10

331:                                              ; preds = %295, %301, %304, %307, %313, %10, %266, %166, %228, %74, %269, %274, %288, %248, %264, %260, %255, %221, %224, %198, %203, %206, %212, %182, %196, %192, %187, %108, %125, %145, %151, %50, %55, %58, %61, %37, %47, %43, %14, %19, %22, %28, %157, %7
  %332 = phi ptr [ %9, %7 ], [ %294, %288 ], [ %165, %157 ], [ null, %28 ], [ null, %22 ], [ null, %19 ], [ null, %14 ], [ null, %43 ], [ null, %47 ], [ null, %37 ], [ null, %61 ], [ null, %58 ], [ null, %55 ], [ null, %50 ], [ null, %151 ], [ null, %145 ], [ null, %125 ], [ null, %108 ], [ %183, %187 ], [ %183, %192 ], [ %183, %196 ], [ %183, %182 ], [ null, %212 ], [ null, %206 ], [ null, %203 ], [ null, %198 ], [ null, %224 ], [ null, %221 ], [ %251, %255 ], [ %251, %260 ], [ %251, %264 ], [ %251, %248 ], [ null, %274 ], [ null, %269 ], [ null, %74 ], [ null, %228 ], [ null, %166 ], [ null, %266 ], [ null, %10 ], [ null, %313 ], [ null, %307 ], [ null, %304 ], [ null, %301 ], [ null, %295 ]
  ret ptr %332
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_value(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @const_val, align 8, !tbaa !5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !11
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.prop_value_d, ptr %2, i64 %7
  %9 = load i32, ptr %8, align 8, !tbaa !31
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = tail call fastcc { i32, ptr } @get_default_value(ptr noundef nonnull %0) #16
  %13 = extractvalue { i32, ptr } %12, 0
  %14 = extractvalue { i32, ptr } %12, 1
  store i32 %13, ptr %8, align 8, !tbaa.struct !40
  %15 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %14, ptr %15, align 8, !tbaa.struct !41
  br label %16

16:                                               ; preds = %11, %4
  tail call fastcc void @canonicalize_float_value(ptr noundef nonnull %8) #16
  br label %17

17:                                               ; preds = %1, %16
  %18 = phi ptr [ %8, %16 ], [ null, %1 ]
  ret ptr %18
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !42
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_ccp() #7 {
  %1 = load i32, ptr @flag_tree_ccp, align 4, !tbaa !9
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @do_ssa_ccp() #0 {
  tail call fastcc void @ccp_initialize() #16
  tail call void @ssa_propagate(ptr noundef nonnull @ccp_visit_stmt, ptr noundef nonnull @ccp_visit_phi_node) #17
  %1 = tail call fastcc zeroext i8 @ccp_finalize() #16
  %2 = icmp eq i8 %1, 0
  %3 = select i1 %2, i32 0, i32 34848
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @maybe_fold_offset_to_reference(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #17
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 121
  br i1 %11, label %12, label %58

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %14) #16, !range !44
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %18 = call ptr @get_ref_base_and_extent(ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2075, ptr noundef nonnull @.str.3) #17
  br label %21

21:                                               ; preds = %17, %20
  %22 = load i64, ptr %6, align 8
  %23 = load i64, ptr %7, align 8, !tbaa !45
  %24 = icmp eq i64 %22, %23
  %25 = icmp ne i64 %22, -1
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load i64, ptr %5, align 8, !tbaa !45
  %29 = and i64 %28, 7
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = icmp eq i64 %28, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = ashr exact i64 %28, 3
  %37 = call ptr @build_int_cst(ptr noundef %35, i64 noundef %36) #17
  %38 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %2, ptr noundef %37, i32 noundef 1) #17
  br label %39

39:                                               ; preds = %31, %33, %27, %21
  %40 = phi ptr [ %2, %27 ], [ %38, %33 ], [ %2, %31 ], [ %2, %21 ]
  %41 = phi ptr [ %14, %27 ], [ %18, %33 ], [ %18, %31 ], [ %14, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %42

42:                                               ; preds = %39, %12
  %43 = phi ptr [ %40, %39 ], [ %2, %12 ]
  %44 = phi ptr [ %41, %39 ], [ %14, %12 ]
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !11
  %47 = call zeroext i8 @useless_type_conversion_p(ptr noundef %3, ptr noundef %46) #17
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = call i32 @integer_zerop(ptr noundef %43) #17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49, %42
  %53 = load ptr, ptr %45, align 8, !tbaa !11
  %54 = call fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef %53, ptr noundef nonnull %44, ptr noundef %43, ptr noundef %3) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef nonnull %44, ptr noundef %43, ptr noundef %3, i8 noundef zeroext 1) #16
  br label %58

58:                                               ; preds = %52, %56, %49, %4
  %59 = phi ptr [ null, %4 ], [ %44, %49 ], [ %54, %52 ], [ %57, %56 ]
  ret ptr %59
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %98, %5
  %7 = phi ptr [ %1, %5 ], [ %100, %98 ]
  %8 = phi ptr [ %2, %5 ], [ %103, %98 ]
  %9 = phi ptr [ %3, %5 ], [ %102, %98 ]
  %10 = load i64, ptr %7, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -16
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %110

15:                                               ; preds = %6
  %16 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %7, ptr noundef %4) #17
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %110

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %110, label %22

22:                                               ; preds = %18, %91
  %23 = phi ptr [ %94, %91 ], [ %20, %18 ]
  %24 = phi ptr [ %92, %91 ], [ null, %18 ]
  %25 = load i64, ptr %23, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 31
  br i1 %27, label %28, label %91

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %23, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 33554432
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tree_field_decl, ptr %23, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %91, label %37

37:                                               ; preds = %33
  %38 = tail call ptr @byte_position(ptr noundef nonnull %23) #17
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 23
  br i1 %41, label %42, label %91

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_decl_minimal, ptr %23, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %91, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %38, ptr noundef %9) #17
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %91, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = icmp eq i32 %47, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %4, ptr noundef %51) #17
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %51, ptr noundef %8, ptr noundef nonnull %23, ptr noundef null) #17
  br label %110

58:                                               ; preds = %53, %49
  %59 = load i64, ptr %51, align 8
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, 65535
  %62 = add nsw i32 %61, -15
  %63 = icmp ult i32 %62, 4
  br i1 %63, label %64, label %91

64:                                               ; preds = %58
  %65 = and i64 %59, 65535
  %66 = icmp eq i64 %65, 15
  %67 = select i1 %66, ptr %23, ptr null
  %68 = getelementptr inbounds %struct.tree_decl_common, ptr %23, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %91, label %71

71:                                               ; preds = %64
  %72 = load i64, ptr %69, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 23
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %9, ptr noundef nonnull %38, i32 noundef 1) #17
  %77 = load ptr, ptr %68, align 8, !tbaa !11
  %78 = tail call i32 @tree_int_cst_lt(ptr noundef %76, ptr noundef %77) #17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %75
  %81 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef nonnull %51, ptr noundef %8, ptr noundef nonnull %23, ptr noundef null) #17
  %82 = getelementptr inbounds %struct.tree_exp, ptr %81, i64 0, i32 1
  store i32 %0, ptr %82, align 8, !tbaa !11
  %83 = load ptr, ptr %19, align 8, !tbaa !11
  %84 = icmp eq ptr %23, %83
  %85 = zext i1 %84 to i8
  %86 = tail call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef %81, ptr noundef %76, ptr noundef %4, i8 noundef zeroext %85) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %110

88:                                               ; preds = %80
  %89 = tail call fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef nonnull %51, ptr noundef nonnull %81, ptr noundef %76, ptr noundef %4) #16
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %110

91:                                               ; preds = %88, %22, %28, %33, %37, %42, %46, %58, %71, %64, %75
  %92 = phi ptr [ %67, %75 ], [ %67, %64 ], [ %67, %71 ], [ null, %58 ], [ null, %46 ], [ %24, %42 ], [ %24, %37 ], [ %24, %33 ], [ %24, %28 ], [ %24, %22 ], [ %67, %88 ]
  %93 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !11
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %22, !llvm.loop !46

96:                                               ; preds = %91
  %97 = icmp eq ptr %92, null
  br i1 %97, label %110, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !11
  %101 = tail call ptr @byte_position(ptr noundef nonnull %92) #17
  %102 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %9, ptr noundef %101, i32 noundef 1) #17
  %103 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %100, ptr noundef %8, ptr noundef nonnull %92, ptr noundef null) #17
  %104 = getelementptr inbounds %struct.tree_exp, ptr %103, i64 0, i32 1
  store i32 %0, ptr %104, align 8, !tbaa !11
  %105 = load ptr, ptr %19, align 8, !tbaa !11
  %106 = icmp eq ptr %92, %105
  %107 = zext i1 %106 to i8
  %108 = tail call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef %103, ptr noundef %102, ptr noundef %4, i8 noundef zeroext %107) #16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %6, label %110

110:                                              ; preds = %18, %6, %98, %96, %15, %80, %88, %56
  %111 = phi ptr [ %57, %56 ], [ %89, %88 ], [ %86, %80 ], [ null, %18 ], [ %108, %98 ], [ null, %96 ], [ null, %15 ], [ null, %6 ]
  ret ptr %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 45
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %1) #17
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = load i64, ptr %15, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 23
  br i1 %21, label %22, label %166

22:                                               ; preds = %14
  %23 = load i64, ptr %18, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 23
  br i1 %25, label %26, label %166

26:                                               ; preds = %22
  %27 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef nonnull %18, ptr noundef nonnull %15, i32 noundef 0) #17
  %28 = load ptr, ptr %16, align 8, !tbaa !11
  br label %29

29:                                               ; preds = %26, %5
  %30 = phi ptr [ %27, %26 ], [ %10, %5 ]
  %31 = phi ptr [ %28, %26 ], [ %1, %5 ]
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 15
  br i1 %36, label %37, label %166

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  %40 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %3, ptr noundef %39) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %166, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !5
  %44 = tail call ptr @signed_type_for(ptr noundef %43) #17
  %45 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !11
  %47 = icmp eq ptr %46, null
  br i1 %47, label %166, label %48

48:                                               ; preds = %42
  %49 = tail call i32 @integer_zerop(ptr noundef %2) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %48
  %52 = load i64, ptr %46, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 23
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !11
  %58 = zext i32 %57 to i64
  %59 = tail call ptr @size_int_kind(i64 noundef %58, i32 noundef 0) #17
  br label %60

60:                                               ; preds = %55, %51
  %61 = tail call ptr @build_int_cst(ptr noundef %44, i64 noundef 0) #17
  br label %95

62:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %63 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %2) #17
  %64 = extractvalue { i64, i64 } %63, 0
  %65 = extractvalue { i64, i64 } %63, 1
  %66 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 1023
  %71 = tail call { i64, i64 } @double_int_sext(i64 %64, i64 %65, i32 noundef %70) #17
  %72 = load i64, ptr %46, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 23
  br i1 %74, label %75, label %90

75:                                               ; preds = %62
  %76 = extractvalue { i64, i64 } %71, 1
  %77 = extractvalue { i64, i64 } %71, 0
  %78 = getelementptr inbounds %struct.tree_int_cst, ptr %46, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !11
  %80 = getelementptr inbounds %struct.tree_int_cst, ptr %46, i64 0, i32 1, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !11
  %82 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 0, i64 noundef %77, i64 noundef %76, i64 noundef %79, i64 noundef %81, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #17
  %83 = icmp ne i32 %82, 0
  %84 = load i64, ptr %7, align 8
  %85 = icmp ne i64 %84, 0
  %86 = select i1 %83, i1 true, i1 %85
  %87 = load i64, ptr %9, align 8
  %88 = icmp ne i64 %87, 0
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %75, %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %166

91:                                               ; preds = %75
  %92 = load i64, ptr %6, align 8, !tbaa !45
  %93 = load i64, ptr %8, align 8, !tbaa !45
  %94 = call ptr @build_int_cst_wide(ptr noundef %44, i64 noundef %92, i64 noundef %93) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %95

95:                                               ; preds = %91, %60
  %96 = phi ptr [ %61, %60 ], [ %94, %91 ]
  %97 = call ptr @build_int_cst(ptr noundef %44, i64 noundef 0) #17
  %98 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !11
  %100 = icmp eq ptr %99, null
  br i1 %100, label %114, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 13
  %103 = load ptr, ptr %102, align 8, !tbaa !11
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %99, ptr noundef %97) #17
  br label %107

107:                                              ; preds = %101, %105
  %108 = phi ptr [ %106, %105 ], [ %103, %101 ]
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 23
  br i1 %111, label %112, label %166

112:                                              ; preds = %107
  %113 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %99, ptr noundef %30) #17
  br label %114

114:                                              ; preds = %112, %95
  %115 = phi ptr [ %113, %112 ], [ %30, %95 ]
  %116 = phi ptr [ %99, %112 ], [ %44, %95 ]
  %117 = phi ptr [ %108, %112 ], [ %97, %95 ]
  %118 = call i32 @integer_zerop(ptr noundef %117) #17
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %96, ptr noundef %117, i32 noundef 0) #17
  br label %122

122:                                              ; preds = %120, %114
  %123 = phi ptr [ %96, %114 ], [ %121, %120 ]
  %124 = call i32 @integer_zerop(ptr noundef %115) #17
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %123, ptr noundef %115, i32 noundef 0) #17
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi ptr [ %123, %122 ], [ %127, %126 ]
  %130 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %116, ptr noundef %129) #17
  br i1 %100, label %158, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 14
  %133 = load ptr, ptr %132, align 8, !tbaa !11
  %134 = icmp eq ptr %133, null
  br i1 %134, label %145, label %135

135:                                              ; preds = %131
  %136 = load i64, ptr %133, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 23
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = call i32 @tree_int_cst_lt(ptr noundef nonnull %133, ptr noundef %130) #17
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = call i32 @compare_tree_int(ptr noundef nonnull %133, i64 noundef 1) #17
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %166, label %145

145:                                              ; preds = %131, %135, %142, %139
  %146 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 13
  %147 = load ptr, ptr %146, align 8, !tbaa !11
  %148 = icmp eq ptr %147, null
  br i1 %148, label %158, label %149

149:                                              ; preds = %145
  %150 = icmp eq i8 %4, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %149
  %152 = load i64, ptr %147, align 8
  %153 = and i64 %152, 65535
  %154 = icmp eq i64 %153, 23
  br i1 %154, label %155, label %163

155:                                              ; preds = %151
  %156 = call i32 @tree_int_cst_lt(ptr noundef %130, ptr noundef nonnull %147) #17
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %166

158:                                              ; preds = %128, %145
  %159 = icmp eq i8 %4, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = call i32 @compare_tree_int(ptr noundef %130, i64 noundef 0) #17
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %158, %160, %149, %151, %155
  %164 = call ptr @build4_stat(i32 noundef 45, ptr noundef nonnull %39, ptr noundef nonnull %31, ptr noundef %130, ptr noundef null, ptr noundef null) #17
  %165 = getelementptr inbounds %struct.tree_exp, ptr %164, i64 0, i32 1
  store i32 %0, ptr %165, align 8, !tbaa !11
  br label %166

166:                                              ; preds = %14, %22, %90, %160, %155, %142, %107, %42, %37, %29, %163
  %167 = phi ptr [ %164, %163 ], [ null, %29 ], [ null, %37 ], [ null, %42 ], [ null, %107 ], [ null, %142 ], [ null, %155 ], [ null, %160 ], [ null, %90 ], [ null, %22 ], [ null, %14 ]
  ret ptr %167
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @maybe_fold_offset_to_address(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %12 [
    i16 10, label %9
    i16 12, label %9
  ]

9:                                                ; preds = %4, %4
  %10 = load i64, ptr %3, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 10, label %13
    i16 12, label %13
  ]

12:                                               ; preds = %9, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2113, ptr noundef nonnull @.str.3) #17
  br label %13

13:                                               ; preds = %9, %9, %12
  %14 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = tail call ptr @maybe_fold_offset_to_reference(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %15) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %67, label %18

18:                                               ; preds = %13
  %19 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #17
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 121
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = load i64, ptr %25, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i64 [ %26, %23 ], [ %20, %18 ]
  %29 = phi ptr [ %25, %23 ], [ %19, %18 ]
  %30 = trunc i64 %28 to i16
  switch i16 %30, label %59 [
    i16 45, label %39
    i16 41, label %31
  ]

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 15
  br i1 %38, label %39, label %59

39:                                               ; preds = %27, %31
  %40 = load i64, ptr %16, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %59 [
    i16 45, label %42
    i16 41, label %42
  ]

42:                                               ; preds = %39, %39
  %43 = and i64 %28, 65535
  %44 = icmp eq i64 %43, 45
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !11
  br label %48

48:                                               ; preds = %42, %45
  %49 = phi ptr [ %47, %45 ], [ %29, %42 ]
  %50 = and i64 %40, 65535
  %51 = icmp eq i64 %50, 45
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  br label %55

55:                                               ; preds = %48, %52
  %56 = phi ptr [ %54, %52 ], [ %16, %48 ]
  %57 = tail call i32 @operand_equal_p(ptr noundef %49, ptr noundef %56, i32 noundef 0) #17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %39, %27, %55, %31
  %60 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !11
  %62 = tail call ptr @build_pointer_type(ptr noundef %61) #17
  %63 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %3, ptr noundef %62) #17
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = tail call ptr @build_fold_addr_expr_with_type_loc(i32 noundef %0, ptr noundef nonnull %16, ptr noundef %62) #17
  br label %67

67:                                               ; preds = %13, %65, %55, %59
  %68 = phi ptr [ %66, %65 ], [ null, %55 ], [ null, %59 ], [ null, %13 ]
  ret ptr %68
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_with_type_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @maybe_fold_stmt_addition(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 121
  br i1 %7, label %8, label %163

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = load i64, ptr %3, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  %14 = load i64, ptr %10, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 45
  br i1 %13, label %17, label %18

17:                                               ; preds = %8
  br i1 %16, label %84, label %133

18:                                               ; preds = %8
  br i1 %16, label %19, label %163

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %21 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = tail call i32 @integer_zerop(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %163, label %25

25:                                               ; preds = %19
  %26 = load i64, ptr %3, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %163

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = tail call i32 @host_integerp(ptr noundef %33, i32 noundef 1) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %163, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !11
  %39 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %38) #16, !range !44
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %163, label %41

41:                                               ; preds = %36
  %42 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %38) #16, !range !47
  %43 = icmp eq i32 %42, 65
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %38) #16
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 23
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %38) #16
  %51 = load ptr, ptr %30, align 8, !tbaa !11
  %52 = getelementptr inbounds %struct.tree_type, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = tail call i32 @tree_int_cst_equal(ptr noundef %50, ptr noundef %53) #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %49
  %57 = load ptr, ptr %30, align 8, !tbaa !11
  %58 = load ptr, ptr %20, align 8, !tbaa !11
  %59 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %38) #16
  %60 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !11
  %62 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !11
  %64 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef %61, ptr noundef %63) #17
  %65 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %64) #17
  br label %163

66:                                               ; preds = %49, %44, %41
  %67 = load ptr, ptr %30, align 8, !tbaa !11
  %68 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !11
  %70 = tail call i32 @integer_onep(ptr noundef %69) #17
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %163, label %72

72:                                               ; preds = %66
  %73 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %38) #16, !range !47
  %74 = icmp eq i32 %73, 65
  br i1 %74, label %163, label %75

75:                                               ; preds = %72
  %76 = load ptr, ptr %30, align 8, !tbaa !11
  %77 = load ptr, ptr %20, align 8, !tbaa !11
  %78 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !11
  %80 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !11
  %82 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %76, ptr noundef %77, ptr noundef nonnull %3, ptr noundef %79, ptr noundef %81) #17
  %83 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %82) #17
  br label %163

84:                                               ; preds = %17, %124
  %85 = phi ptr [ %88, %124 ], [ %10, %17 ]
  %86 = phi ptr [ %129, %124 ], [ %3, %17 ]
  %87 = getelementptr inbounds %struct.tree_exp, ptr %85, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !11
  %89 = getelementptr inbounds %struct.tree_exp, ptr %85, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !11
  %91 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !11
  %93 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !11
  %95 = load i64, ptr %90, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 23
  br i1 %97, label %98, label %133

98:                                               ; preds = %84
  %99 = load i64, ptr %94, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 23
  br i1 %101, label %102, label %133

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !11
  %105 = getelementptr inbounds %struct.tree_type, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !11
  %107 = icmp eq ptr %106, null
  br i1 %107, label %124, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 13
  %110 = load ptr, ptr %109, align 8, !tbaa !11
  %111 = icmp eq ptr %110, null
  br i1 %111, label %124, label %112

112:                                              ; preds = %108
  %113 = load i64, ptr %110, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 23
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !11
  %119 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %118, ptr noundef nonnull %90) #17
  %120 = tail call i32 @integer_zerop(ptr noundef nonnull %110) #17
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %119, ptr noundef nonnull %110, i32 noundef 0) #17
  br label %124

124:                                              ; preds = %102, %116, %122, %108
  %125 = phi ptr [ %119, %116 ], [ %123, %122 ], [ %90, %108 ], [ %90, %102 ]
  %126 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %127 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %126, ptr noundef %125) #17
  %128 = tail call ptr @int_const_binop(i32 noundef 65, ptr noundef %127, ptr noundef nonnull %94, i32 noundef 0) #17
  %129 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %128, ptr noundef %86, i32 noundef 0) #17
  %130 = load i64, ptr %88, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 45
  br i1 %132, label %84, label %133

133:                                              ; preds = %124, %84, %98, %112, %17
  %134 = phi ptr [ %3, %17 ], [ %86, %112 ], [ %86, %98 ], [ %86, %84 ], [ %129, %124 ]
  %135 = phi ptr [ %10, %17 ], [ %85, %112 ], [ %85, %98 ], [ %85, %84 ], [ %88, %124 ]
  %136 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !11
  %138 = load i64, ptr %137, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 19
  br i1 %140, label %141, label %150

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.tree_common, ptr %135, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !11
  %144 = load i64, ptr %143, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 15
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.tree_common, ptr %143, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !11
  br label %150

150:                                              ; preds = %147, %141, %133
  %151 = phi ptr [ %149, %147 ], [ %137, %141 ], [ %137, %133 ]
  %152 = tail call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef nonnull %135, ptr noundef %134, ptr noundef %151, i8 noundef zeroext 1) #16
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.tree_common, ptr %135, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !11
  %157 = tail call fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef %156, ptr noundef nonnull %135, ptr noundef %134, ptr noundef %151) #16
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %150, %154
  %160 = phi ptr [ %157, %154 ], [ %152, %150 ]
  %161 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef nonnull %1, ptr noundef nonnull %160) #17
  %162 = getelementptr inbounds %struct.tree_exp, ptr %161, i64 0, i32 1
  store i32 %0, ptr %162, align 8, !tbaa !11
  br label %163

163:                                              ; preds = %36, %75, %56, %18, %19, %25, %29, %72, %66, %154, %159, %4
  %164 = phi ptr [ null, %4 ], [ %161, %159 ], [ null, %154 ], [ null, %66 ], [ null, %72 ], [ null, %29 ], [ null, %25 ], [ null, %19 ], [ null, %18 ], [ null, %36 ], [ %83, %75 ], [ %65, %56 ]
  ret ptr %164
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #16, !range !47
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #16, !range !48
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #16
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @fold_stmt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @fold_stmt_1(ptr noundef %0, i8 noundef zeroext 0) #16, !range !44
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @fold_stmt_1(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #16, !range !48
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %109 [
    i8 6, label %12
    i8 1, label %38
    i8 8, label %9
    i8 7, label %6
  ]

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %3) #16, !range !48
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %65, label %69

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %3) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %59, label %40

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @gimple_num_ops(ptr noundef %3) #16
  %14 = tail call fastcc ptr @fold_gimple_assign(ptr noundef %0) #16
  %15 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %3) #16
  %16 = icmp eq ptr %14, null
  br i1 %16, label %109, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %19, ptr noundef %21) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load ptr, ptr %18, align 8, !tbaa !11
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %25, ptr noundef nonnull %14) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %109, label %28

28:                                               ; preds = %17, %24
  %29 = phi ptr [ %26, %24 ], [ %14, %17 ]
  %30 = icmp eq i8 %1, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i64, ptr %29, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65535
  %35 = tail call i32 @get_gimple_rhs_num_ops(i32 noundef %34) #17
  %36 = icmp ult i32 %35, %13
  br i1 %36, label %37, label %109

37:                                               ; preds = %31, %28
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef nonnull %29) #17
  br label %109

38:                                               ; preds = %2
  %39 = tail call fastcc zeroext i8 @fold_gimple_cond(ptr noundef %3) #16, !range !44
  br label %109

40:                                               ; preds = %9, %54
  %41 = phi i8 [ %55, %54 ], [ 0, %9 ]
  %42 = phi i32 [ %56, %54 ], [ 0, %9 ]
  %43 = tail call fastcc ptr @gimple_call_arg(ptr noundef %3, i32 noundef %42) #16
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !9
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = tail call fastcc ptr @gimple_call_arg(ptr noundef %3, i32 noundef %42) #16
  %51 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %50, i8 noundef zeroext 0) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call fastcc void @gimple_call_set_arg(ptr noundef %3, i32 noundef %42, ptr noundef nonnull %51) #16
  br label %54

54:                                               ; preds = %49, %53, %40
  %55 = phi i8 [ %41, %40 ], [ 1, %53 ], [ %41, %49 ]
  %56 = add nuw i32 %42, 1
  %57 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %3) #16
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %40, label %59, !llvm.loop !49

59:                                               ; preds = %54, %9
  %60 = phi i8 [ 0, %9 ], [ %55, %54 ]
  %61 = icmp eq i8 %1, 0
  br i1 %61, label %62, label %109

62:                                               ; preds = %59
  %63 = tail call fastcc zeroext i8 @fold_gimple_call(ptr noundef %0) #16, !range !44
  %64 = or i8 %63, %60
  br label %109

65:                                               ; preds = %84, %6
  %66 = phi i8 [ 0, %6 ], [ %85, %84 ]
  %67 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %3) #16, !range !48
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %109, label %89

69:                                               ; preds = %6, %84
  %70 = phi i8 [ %85, %84 ], [ 0, %6 ]
  %71 = phi i32 [ %86, %84 ], [ 0, %6 ]
  %72 = tail call fastcc ptr @gimple_asm_output_op(ptr noundef %3, i32 noundef %71) #16
  %73 = getelementptr inbounds %struct.tree_list, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !11
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !9
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %74, i8 noundef zeroext 1) #16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store ptr %81, ptr %73, align 8, !tbaa !11
  br label %84

84:                                               ; preds = %83, %80, %69
  %85 = phi i8 [ 1, %83 ], [ %70, %80 ], [ %70, %69 ]
  %86 = add nuw nsw i32 %71, 1
  %87 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %3) #16, !range !48
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %69, label %65, !llvm.loop !50

89:                                               ; preds = %65, %104
  %90 = phi i8 [ %105, %104 ], [ %66, %65 ]
  %91 = phi i32 [ %106, %104 ], [ 0, %65 ]
  %92 = tail call fastcc ptr @gimple_asm_input_op(ptr noundef %3, i32 noundef %91) #16
  %93 = getelementptr inbounds %struct.tree_list, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !11
  %95 = load i64, ptr %94, align 8
  %96 = and i64 %95, 65535
  %97 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !9
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %94, i8 noundef zeroext 0) #16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store ptr %101, ptr %93, align 8, !tbaa !11
  br label %104

104:                                              ; preds = %103, %100, %89
  %105 = phi i8 [ 1, %103 ], [ %90, %100 ], [ %90, %89 ]
  %106 = add nuw nsw i32 %91, 1
  %107 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %3) #16, !range !48
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %89, label %109, !llvm.loop !51

109:                                              ; preds = %104, %65, %12, %24, %31, %37, %2, %59, %62, %38
  %110 = phi i8 [ 0, %2 ], [ %60, %59 ], [ %64, %62 ], [ %39, %38 ], [ 1, %37 ], [ 0, %31 ], [ 0, %24 ], [ 0, %12 ], [ %66, %65 ], [ %105, %104 ]
  %111 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %112 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %111) #16, !range !44
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %109
  %115 = tail call ptr @gimple_get_lhs(ptr noundef %111) #17
  %116 = icmp eq ptr %115, null
  br i1 %116, label %127, label %117

117:                                              ; preds = %114
  %118 = load i64, ptr %115, align 8
  %119 = and i64 %118, 65535
  %120 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !9
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %115, i8 noundef zeroext 1) #16
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  tail call void @gimple_set_lhs(ptr noundef %111, ptr noundef nonnull %124) #17
  br label %127

127:                                              ; preds = %114, %117, %126, %123, %109
  %128 = phi i8 [ %110, %109 ], [ %110, %117 ], [ %110, %114 ], [ 1, %126 ], [ %110, %123 ]
  ret i8 %128
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @fold_stmt_inplace(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #17
  %3 = call fastcc zeroext i8 @fold_stmt_1(ptr noundef nonnull %2, i8 noundef zeroext 1) #16, !range !44
  %4 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3178, ptr noundef nonnull @.str.3) #17
  br label %7

7:                                                ; preds = %1, %6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret i8 %3
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_fold_all_builtins() #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %127, label %12

12:                                               ; preds = %0, %111
  %13 = phi ptr [ %116, %111 ], [ %8, %0 ]
  %14 = phi i8 [ %114, %111 ], [ 0, %0 ]
  %15 = phi i32 [ %112, %111 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %13) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %16 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !44
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %111

18:                                               ; preds = %12, %106
  %19 = phi i8 [ %108, %106 ], [ %14, %12 ]
  %20 = phi i32 [ %107, %106 ], [ %15, %12 ]
  %21 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %22 = call fastcc i32 @gimple_code(ptr noundef %21) #16, !range !48
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %24, label %103, !llvm.loop !63

24:                                               ; preds = %18
  %25 = call fastcc ptr @gimple_call_fndecl(ptr noundef %21) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %103, label %27, !llvm.loop !63

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_function_decl, ptr %25, i64 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 6144
  %31 = icmp eq i32 %30, 6144
  br i1 %31, label %32, label %103, !llvm.loop !63

32:                                               ; preds = %27
  %33 = call fastcc ptr @ccp_fold_builtin(ptr noundef %21) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @cfun, align 8, !tbaa !5
  call void @gimple_remove_stmt_histograms(ptr noundef %36, ptr noundef %21) #17
  br label %48

37:                                               ; preds = %32
  %38 = load i32, ptr %28, align 8
  %39 = and i32 %38, 2047
  switch i32 %39, label %103 [
    i32 428, label %40
    i32 527, label %42
    i32 515, label %45
    i32 514, label %45
    i32 513, label %45
  ], !llvm.loop !63

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  br label %48

42:                                               ; preds = %37
  %43 = call fastcc ptr @optimize_stack_restore(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %103, label %48, !llvm.loop !63

45:                                               ; preds = %37, %37, %37
  %46 = call fastcc ptr @optimize_stdarg_builtin(ptr noundef %21) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %103, label %48, !llvm.loop !63

48:                                               ; preds = %35, %40, %42, %45
  %49 = phi ptr [ %33, %35 ], [ %46, %45 ], [ %43, %42 ], [ %41, %40 ]
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = call i64 @fwrite(ptr nonnull @.str.27, i64 13, i64 1, ptr nonnull %50)
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %59 = load i32, ptr @dump_flags, align 4, !tbaa !9
  call void @print_gimple_stmt(ptr noundef %58, ptr noundef %21, i32 noundef 0, i32 noundef %59) #17
  br label %60

60:                                               ; preds = %56, %52, %48
  %61 = call zeroext i8 @update_call_from_tree(ptr noundef nonnull %1, ptr noundef %49) #17
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  call fastcc void @gimplify_and_update_call_from_tree(ptr noundef nonnull %1, ptr noundef %49) #16
  %64 = or i32 %20, 2097152
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i32 [ %20, %60 ], [ %64, %63 ]
  %67 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  call fastcc void @update_stmt(ptr noundef %67) #16
  %68 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %21, ptr noundef %67) #17
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %13) #17
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i8 %19, i8 1
  br label %74

74:                                               ; preds = %70, %65
  %75 = phi i8 [ %19, %65 ], [ %73, %70 ]
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %77 = icmp eq ptr %76, null
  br i1 %77, label %88, label %78

78:                                               ; preds = %74
  %79 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = call i64 @fwrite(ptr nonnull @.str.28, i64 5, i64 1, ptr nonnull %76)
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %85 = load i32, ptr @dump_flags, align 4, !tbaa !9
  call void @print_gimple_stmt(ptr noundef %84, ptr noundef %67, i32 noundef 0, i32 noundef %85) #17
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %87 = call i32 @fputc(i32 10, ptr %86)
  br label %88

88:                                               ; preds = %82, %78, %74
  %89 = call fastcc i32 @gimple_code(ptr noundef %67) #16, !range !48
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %91, label %103, !llvm.loop !63

91:                                               ; preds = %88
  %92 = call fastcc ptr @gimple_call_fndecl(ptr noundef %67) #16
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.tree_function_decl, ptr %92, i64 0, i32 5
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 6144
  %98 = icmp eq i32 %97, 6144
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = xor i32 %96, %29
  %101 = and i32 %100, 2047
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91, %94, %99, %88, %37, %45, %42, %24, %27, %18
  %104 = phi i32 [ %20, %18 ], [ %20, %27 ], [ %20, %24 ], [ %20, %42 ], [ %20, %45 ], [ %20, %37 ], [ %66, %88 ], [ %66, %99 ], [ %66, %94 ], [ %66, %91 ]
  %105 = phi i8 [ %19, %18 ], [ %19, %27 ], [ %19, %24 ], [ %19, %42 ], [ %19, %45 ], [ %19, %37 ], [ %75, %88 ], [ %75, %99 ], [ %75, %94 ], [ %75, %91 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi i32 [ %66, %99 ], [ %104, %103 ]
  %108 = phi i8 [ %75, %99 ], [ %105, %103 ]
  %109 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !44
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %18, label %111

111:                                              ; preds = %106, %12
  %112 = phi i32 [ %15, %12 ], [ %107, %106 ]
  %113 = phi i8 [ %14, %12 ], [ %108, %106 ]
  %114 = freeze i8 %113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !59
  %117 = load ptr, ptr @cfun, align 8, !tbaa !5
  %118 = getelementptr inbounds %struct.function, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !56
  %120 = getelementptr inbounds %struct.control_flow_graph, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !61
  %122 = icmp eq ptr %116, %121
  br i1 %122, label %123, label %12, !llvm.loop !64

123:                                              ; preds = %111
  %124 = icmp eq i8 %114, 0
  %125 = or i32 %112, 32
  %126 = select i1 %124, i32 %112, i32 %125
  br label %127

127:                                              ; preds = %123, %0
  %128 = phi i32 [ 0, %0 ], [ %126, %123 ]
  ret i32 %128
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { i32, ptr } @get_default_value(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %5) #16, !range !44
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load i64, ptr %3, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 34
  br i1 %14, label %15, label %43

15:                                               ; preds = %11, %8
  br label %43

16:                                               ; preds = %1
  %17 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %5) #16, !range !44
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %5) #16, !range !44
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %5) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19
  %26 = tail call fastcc i32 @gimple_code(ptr noundef %5) #16, !range !48
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %43

28:                                               ; preds = %25, %22, %16
  %29 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %5) #17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !9
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %40 = tail call ptr @get_symbol_constant_value(ptr noundef %39) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %31, %28
  br label %43

43:                                               ; preds = %25, %42, %38, %11, %15
  %44 = phi ptr [ null, %15 ], [ null, %11 ], [ null, %42 ], [ %40, %38 ], [ null, %25 ]
  %45 = phi i32 [ 3, %15 ], [ 1, %11 ], [ 1, %42 ], [ 2, %38 ], [ 3, %25 ]
  %46 = insertvalue { i32, ptr } poison, i32 %45, 0
  %47 = insertvalue { i32, ptr } %46, ptr %44, 1
  ret { i32, ptr } %47
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canonicalize_float_value(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  %3 = load i32, ptr %0, align 8, !tbaa !31
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %81

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.prop_value_d, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 24
  br i1 %10, label %11, label %81

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_real_cst, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !65
  %14 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #17
  br label %26

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi i32 [ %20, %19 ], [ %25, %21 ]
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !11
  switch i8 %30, label %50 [
    i8 8, label %31
    i8 9, label %31
    i8 11, label %31
    i8 17, label %31
  ]

31:                                               ; preds = %26, %26, %26, %26
  %32 = and i8 %30, -2
  %33 = icmp eq i8 %32, 8
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %28
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = zext i8 %36 to i32
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %27, %31 ], [ %37, %34 ]
  %40 = add i32 %39, -38
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.real_format, ptr %43, i64 0, i32 14
  %45 = load i8, ptr %44, align 1, !tbaa !66
  %46 = icmp ne i8 %45, 0
  %47 = load i32, ptr @flag_signed_zeros, align 4
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %55, label %50

50:                                               ; preds = %26, %38
  %51 = call zeroext i8 @real_isnegzero(ptr noundef nonnull %2) #17
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = call ptr @build_real(ptr noundef nonnull %15, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #17
  br label %79

55:                                               ; preds = %38, %50
  switch i8 %30, label %75 [
    i8 8, label %56
    i8 9, label %56
    i8 11, label %56
    i8 17, label %56
  ]

56:                                               ; preds = %55, %55, %55, %55
  %57 = and i8 %30, -2
  %58 = icmp eq i8 %57, 8
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %28
  %61 = load i8, ptr %60, align 1, !tbaa !11
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %27, %56 ], [ %62, %59 ]
  %65 = add i32 %64, -38
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.real_format, ptr %68, i64 0, i32 11
  %70 = load i8, ptr %69, align 2, !tbaa !68
  %71 = icmp eq i8 %70, 0
  %72 = load i32, ptr @flag_finite_math_only, align 4
  %73 = icmp ne i32 %72, 0
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %55, %63
  %76 = call zeroext i8 @real_isnan(ptr noundef nonnull %2) #17
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  store i32 1, ptr %0, align 8, !tbaa !31
  br label %79

79:                                               ; preds = %53, %78
  %80 = phi ptr [ null, %78 ], [ %54, %53 ]
  store ptr %80, ptr %6, align 8, !tbaa !33
  br label %81

81:                                               ; preds = %79, %75, %63, %1, %5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !44
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !45
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !9
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @real_isnegzero(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @real_isnan(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccp_initialize() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #16
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 16) #17
  store ptr %11, ptr @const_val, align 8, !tbaa !5
  %12 = load ptr, ptr @cfun, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %82, label %21

21:                                               ; preds = %0, %47
  %22 = phi ptr [ %49, %47 ], [ %17, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %22) #16
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !44
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %21, %42
  %26 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %27 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %26) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = tail call fastcc zeroext i8 @surely_varying_stmt_p(ptr noundef %26) #16, !range !44
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  %33 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %26, i32 noundef 10) #16
  %34 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %38, %36 ], [ %33, %32 ]
  tail call fastcc void @set_value_varying(ptr noundef %37) #16
  %38 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #16
  %39 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %36, label %41, !llvm.loop !70

41:                                               ; preds = %36, %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  br label %42

42:                                               ; preds = %25, %41, %29
  %43 = phi i8 [ %30, %41 ], [ 0, %29 ], [ 0, %25 ]
  %44 = xor i8 %43, 1
  tail call fastcc void @prop_set_simulate_again(ptr noundef %26, i8 noundef zeroext %44) #16
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  %45 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !44
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %25, label %47, !llvm.loop !71

47:                                               ; preds = %42, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  %50 = load ptr, ptr @cfun, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !56
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !61
  %55 = icmp eq ptr %49, %54
  br i1 %55, label %56, label %21, !llvm.loop !72

56:                                               ; preds = %47
  %57 = load ptr, ptr %52, align 8, !tbaa !57
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !59
  %60 = icmp eq ptr %59, %49
  br i1 %60, label %82, label %61

61:                                               ; preds = %56, %73
  %62 = phi ptr [ %75, %73 ], [ %59, %56 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %62) #17
  %63 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !44
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61, %65
  %66 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  %67 = call fastcc ptr @gimple_phi_result(ptr noundef %66) #16
  %68 = call zeroext i8 @is_gimple_reg(ptr noundef %67) #17
  %69 = icmp ne i8 %68, 0
  %70 = zext i1 %69 to i8
  call fastcc void @prop_set_simulate_again(ptr noundef %66, i8 noundef zeroext %70) #16
  call fastcc void @gsi_next(ptr noundef nonnull %3) #16
  %71 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !44
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %65, label %73, !llvm.loop !73

73:                                               ; preds = %65, %61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !59
  %76 = load ptr, ptr @cfun, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !56
  %79 = getelementptr inbounds %struct.control_flow_graph, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !61
  %81 = icmp eq ptr %75, %80
  br i1 %81, label %82, label %61, !llvm.loop !74

82:                                               ; preds = %73, %0, %56
  ret void
}

; Function Attrs: optsize
declare void @ssa_propagate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ccp_visit_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 21, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !9
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef %14) #17
  br label %15

15:                                               ; preds = %11, %7, %3
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %17 = trunc i32 %16 to i8
  switch i8 %17, label %27 [
    i8 6, label %18
    i8 8, label %20
    i8 1, label %25
    i8 5, label %25
  ]

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @visit_assignment(ptr noundef %0, ptr noundef %2) #16, !range !75
  br label %46

20:                                               ; preds = %15
  %21 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @visit_assignment(ptr noundef %0, ptr noundef %2) #16, !range !75
  br label %46

25:                                               ; preds = %15, %15
  %26 = tail call fastcc i32 @visit_cond_stmt(ptr noundef %0, ptr noundef %1) #16, !range !76
  br label %46

27:                                               ; preds = %15, %20
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 49, i64 1, ptr nonnull %28)
  br label %36

36:                                               ; preds = %34, %30, %27
  %37 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 10) #16
  %38 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %43, %40 ], [ %37, %36 ]
  %42 = tail call fastcc zeroext i8 @set_lattice_value(ptr noundef %41, i32 3, ptr null) #16, !range !44
  %43 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #16
  %44 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %40, label %46, !llvm.loop !77

46:                                               ; preds = %40, %36, %25, %23, %18
  %47 = phi i32 [ %26, %25 ], [ %24, %23 ], [ %19, %18 ], [ 2, %36 ], [ 2, %40 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ccp_visit_phi_node(ptr noundef %0) #0 {
  %2 = alloca %struct.prop_value_d, align 8
  %3 = alloca %struct.prop_value_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 20, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !9
  tail call void @print_gimple_stmt(ptr noundef %12, ptr noundef %0, i32 noundef 0, i32 noundef %13) #17
  br label %14

14:                                               ; preds = %10, %6, %1
  %15 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #16
  %16 = tail call fastcc ptr @get_value(ptr noundef %15) #16
  %17 = load i32, ptr %16, align 8, !tbaa !31
  switch i32 %17, label %21 [
    i32 3, label %115
    i32 2, label %18
    i32 1, label %19
  ]

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !40
  br label %22

19:                                               ; preds = %14
  store i32 1, ptr %2, align 8, !tbaa !31
  %20 = getelementptr inbounds %struct.prop_value_d, ptr %2, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !33
  br label %22

21:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 823, ptr noundef nonnull @.str.3) #17
  br label %22

22:                                               ; preds = %21, %19, %18
  %23 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %90, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.prop_value_d, ptr %3, i64 0, i32 1
  br label %27

27:                                               ; preds = %25, %85
  %28 = phi i64 [ 0, %25 ], [ %86, %85 ]
  %29 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %28) #16
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %29, align 8, !tbaa !78
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !80
  %40 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !81
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 9
  %43 = load i32, ptr %42, align 8, !tbaa !80
  %44 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !82
  %46 = and i32 %45, 4096
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, ptr @.str.22, ptr @.str
  %49 = trunc i64 %28 to i32
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %30, ptr noundef nonnull @.str.21, i32 noundef %49, i32 noundef %39, i32 noundef %43, ptr noundef nonnull %48) #16
  br label %51

51:                                               ; preds = %36, %32, %27
  %52 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !82
  %54 = and i32 %53, 4096
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %51
  %57 = trunc i64 %28 to i32
  %58 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %57) #16
  %59 = getelementptr inbounds %struct.phi_arg_d, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %61 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %60) #17
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  store i32 2, ptr %3, align 8, !tbaa !31
  store ptr %60, ptr %26, align 8, !tbaa !33
  br label %66

64:                                               ; preds = %56
  %65 = tail call fastcc ptr @get_value(ptr noundef %60) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %65, i64 16, i1 false), !tbaa.struct !40
  br label %66

66:                                               ; preds = %64, %63
  call fastcc void @ccp_lattice_meet(ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %68 = icmp eq ptr %67, null
  br i1 %68, label %82, label %69

69:                                               ; preds = %66
  %70 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = tail call i32 @fputc(i32 9, ptr nonnull %67)
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %76 = load i32, ptr @dump_flags, align 4, !tbaa !9
  tail call void @print_generic_expr(ptr noundef %75, ptr noundef %60, i32 noundef %76) #17
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %78 = load i32, ptr %3, align 8
  %79 = load ptr, ptr %26, align 8
  tail call fastcc void @dump_lattice_value(ptr noundef %77, ptr noundef nonnull @.str.24, i32 %78, ptr %79) #16
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %81 = tail call i32 @fputc(i32 10, ptr %80)
  br label %82

82:                                               ; preds = %73, %69, %66
  %83 = load i32, ptr %2, align 8
  %84 = icmp eq i32 %83, 3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br i1 %84, label %90, label %85

85:                                               ; preds = %82, %51
  %86 = add nuw nsw i64 %28, 1
  %87 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #16
  %88 = zext i32 %87 to i64
  %89 = icmp ult i64 %86, %88
  br i1 %89, label %27, label %90, !llvm.loop !86

90:                                               ; preds = %85, %82, %22
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, ptr %2, align 8
  br label %105

95:                                               ; preds = %90
  %96 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %97 = and i32 %96, 8
  %98 = icmp eq i32 %97, 0
  %99 = load i32, ptr %2, align 8
  br i1 %98, label %105, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds { i32, ptr }, ptr %2, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8
  tail call fastcc void @dump_lattice_value(ptr noundef nonnull %91, ptr noundef nonnull @.str.25, i32 %99, ptr %102) #16
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %104 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 2, i64 1, ptr %103)
  br label %105

105:                                              ; preds = %93, %100, %95
  %106 = phi i32 [ %94, %93 ], [ %99, %100 ], [ %99, %95 ]
  %107 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #16
  %108 = getelementptr inbounds { i32, ptr }, ptr %2, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8
  %110 = tail call fastcc zeroext i8 @set_lattice_value(ptr noundef %107, i32 %106, ptr %109) #16, !range !44
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %105
  %113 = icmp eq i32 %106, 3
  %114 = select i1 %113, i32 2, i32 1
  br label %115

115:                                              ; preds = %105, %112, %14
  %116 = phi i32 [ 2, %14 ], [ %114, %112 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret i32 %116
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ccp_finalize() unnamed_addr #0 {
  tail call fastcc void @do_dbg_cnt() #16
  %1 = load ptr, ptr @const_val, align 8, !tbaa !5
  %2 = tail call zeroext i8 @substitute_and_fold(ptr noundef %1, ptr noundef nonnull @ccp_fold_stmt) #17
  %3 = load ptr, ptr @const_val, align 8, !tbaa !5
  tail call void @free(ptr noundef %3) #16
  store ptr null, ptr @const_val, align 8, !tbaa !5
  ret i8 %2
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !87
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @surely_varying_stmt_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #16, !range !44
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %31

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #16, !range !44
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_function_decl, ptr %11, i64 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 6144
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %21

18:                                               ; preds = %4
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %13, %10, %18
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %23 = trunc i32 %22 to i8
  %24 = add i8 %23, -1
  %25 = icmp ult i8 %24, 8
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = shl nuw nsw i8 %24, 3
  %28 = zext nneg i8 %27 to i64
  %29 = lshr i64 281474993553664, %28
  %30 = trunc i64 %29 to i8
  br label %31

31:                                               ; preds = %26, %21, %7, %13, %18, %1
  %32 = phi i8 [ 1, %1 ], [ 1, %18 ], [ 1, %13 ], [ 1, %7 ], [ 1, %21 ], [ %30, %26 ]
  ret i8 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !91
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i8, ptr %0, align 8, !tbaa !93
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_value_varying(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = load ptr, ptr @const_val, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !11
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.prop_value_d, ptr %2, i64 %5
  store i32 3, ptr %6, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct.prop_value_d, ptr %2, i64 %5, i32 1
  store ptr null, ptr %7, align 8, !tbaa !33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #16
  %8 = load ptr, ptr %3, align 8, !tbaa !95
  store ptr %8, ptr %2, align 8, !tbaa !94
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #16
  %17 = load ptr, ptr %11, align 8, !tbaa !100
  store ptr %17, ptr %10, align 8, !tbaa !97
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !93
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @prop_set_simulate_again(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #12 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0, i8 noundef zeroext %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  store ptr %4, ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !102
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !103
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !105
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !44
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 14
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !44
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  %8 = and i32 %2, 5
  %9 = icmp eq i32 %8, 4
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 747, ptr noundef nonnull @.str.3) #17
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !97
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #16
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !97
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #16
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !100
  store ptr %25, ptr %18, align 8, !tbaa !97
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !94
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #16
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !94
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #16
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !95
  store ptr %41, ptr %32, align 8, !tbaa !94
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !93
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !44
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !44
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !44
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !5
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #12 {
  %3 = load i32, ptr %0, align 8
  %4 = and i8 %1, 1
  %5 = zext nneg i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 9
  %7 = and i32 %3, -513
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @visit_assignment(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call ptr @gimple_get_lhs(ptr noundef %0) #17
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1604, ptr noundef nonnull @.str.3) #17
  br label %10

10:                                               ; preds = %2, %6, %9
  %11 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %0) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @get_value(ptr noundef nonnull %14) #16
  %20 = load i32, ptr %19, align 8, !tbaa.struct !40
  %21 = getelementptr inbounds i8, ptr %19, i64 8
  %22 = load ptr, ptr %21, align 8, !tbaa.struct !41
  br label %31

23:                                               ; preds = %13
  %24 = tail call fastcc { i32, ptr } @evaluate_stmt(ptr noundef %0) #16
  %25 = extractvalue { i32, ptr } %24, 0
  %26 = extractvalue { i32, ptr } %24, 1
  br label %31

27:                                               ; preds = %10
  %28 = tail call fastcc { i32, ptr } @evaluate_stmt(ptr noundef %0) #16
  %29 = extractvalue { i32, ptr } %28, 0
  %30 = extractvalue { i32, ptr } %28, 1
  br label %31

31:                                               ; preds = %18, %23, %27
  %32 = phi i32 [ %29, %27 ], [ %20, %18 ], [ %25, %23 ]
  %33 = phi ptr [ %30, %27 ], [ %22, %18 ], [ %26, %23 ]
  %34 = load i64, ptr %3, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = tail call fastcc zeroext i8 @set_lattice_value(ptr noundef nonnull %3, i32 %32, ptr %33) #16, !range !44
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  store ptr %3, ptr %1, align 8, !tbaa !5
  %41 = icmp eq i32 %32, 3
  %42 = select i1 %41, i32 2, i32 1
  br label %43

43:                                               ; preds = %40, %37, %31
  %44 = phi i32 [ 0, %37 ], [ 0, %31 ], [ %42, %40 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @visit_cond_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  %4 = tail call fastcc { i32, ptr } @evaluate_stmt(ptr noundef %0) #16
  %5 = extractvalue { i32, ptr } %4, 1
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @find_taken_edge(ptr noundef %3, ptr noundef nonnull %5) #17
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %8, %7 ], [ null, %2 ]
  store ptr %10, ptr %1, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, i32 2, i32 1
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @set_lattice_value(ptr nocapture noundef readonly %0, i32 %1, ptr %2) unnamed_addr #0 {
  %4 = alloca %struct.prop_value_d, align 8
  store i32 %1, ptr %4, align 8
  %5 = getelementptr inbounds { i32, ptr }, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8
  %6 = tail call fastcc ptr @get_value(ptr noundef %0) #16
  call fastcc void @canonicalize_float_value(ptr noundef nonnull %4) #16
  %7 = load i32, ptr %6, align 8, !tbaa !31
  %8 = load i32, ptr %4, align 8
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = icmp eq i32 %7, %8
  br i1 %11, label %12, label %22

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.prop_value_d, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = icmp ne ptr %14, null
  %16 = load ptr, ptr %5, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = tail call i32 @operand_equal_p(ptr noundef %14, ptr noundef %16, i32 noundef 0) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 478, ptr noundef nonnull @.str.3) #17
  br label %23

23:                                               ; preds = %3, %19, %12, %22
  %24 = load i32, ptr %6, align 8, !tbaa !31
  %25 = icmp eq i32 %24, %8
  br i1 %25, label %40, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %5, align 8
  tail call fastcc void @dump_lattice_value(ptr noundef nonnull %27, ptr noundef nonnull @.str.18, i32 %8, ptr %34) #16
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %36 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 33, i64 1, ptr %35)
  br label %37

37:                                               ; preds = %33, %29, %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !40
  %38 = icmp eq i32 %8, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 490, ptr noundef nonnull @.str.3) #17
  br label %40

40:                                               ; preds = %23, %39, %37
  %41 = phi i8 [ 1, %37 ], [ 1, %39 ], [ 0, %23 ]
  ret i8 %41
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { i32, ptr } @evaluate_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @likely_value(ptr noundef %0) #16, !range !108
  tail call void @fold_defer_overflow_warnings() #17
  switch i32 %2, label %24 [
    i32 2, label %3
    i32 3, label %5
  ]

3:                                                ; preds = %1
  %4 = tail call fastcc ptr @ccp_fold(ptr noundef %0) #16
  br label %17

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %16 [
    i8 6, label %8
    i8 5, label %14
    i8 8, label %24
    i8 1, label %24
  ]

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !47
  %10 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %9) #16, !range !48
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  br label %17

14:                                               ; preds = %5
  %15 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #16
  br label %17

16:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1434, ptr noundef nonnull @.str.3) #17
  br label %24

17:                                               ; preds = %14, %12, %3
  %18 = phi ptr [ %4, %3 ], [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %18) #17
  %22 = icmp ne i8 %21, 0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %5, %5, %8, %16, %1, %20, %17
  %25 = phi ptr [ null, %17 ], [ %18, %20 ], [ null, %1 ], [ null, %16 ], [ null, %8 ], [ null, %5 ], [ null, %5 ]
  %26 = phi i8 [ 0, %17 ], [ %23, %20 ], [ 0, %1 ], [ 0, %16 ], [ 0, %8 ], [ 0, %5 ], [ 0, %5 ]
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %26, ptr noundef %0, i32 noundef 0) #17
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29

29:                                               ; preds = %24
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 16, i64 1, ptr nonnull %27)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !5
  switch i32 %2, label %42 [
    i32 2, label %36
    i32 1, label %38
    i32 3, label %40
  ]

36:                                               ; preds = %33
  %37 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 8, i64 1, ptr %35)
  br label %43

38:                                               ; preds = %33
  %39 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 9, i64 1, ptr %35)
  br label %43

40:                                               ; preds = %33
  %41 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 7, i64 1, ptr %35)
  br label %43

42:                                               ; preds = %33
  unreachable

43:                                               ; preds = %40, %38, %36
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !5
  %45 = tail call i32 @fputc(i32 10, ptr %44)
  br label %46

46:                                               ; preds = %43, %29, %24
  %47 = icmp eq i8 %26, 0
  %48 = icmp eq i32 %2, 1
  %49 = select i1 %48, i32 1, i32 3
  %50 = select i1 %47, i32 %49, i32 2
  %51 = select i1 %47, ptr null, ptr %25
  %52 = insertvalue { i32, ptr } poison, i32 %50, 0
  %53 = insertvalue { i32, ptr } %52, ptr %51, 1
  ret { i32, ptr } %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @likely_value(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %4 = icmp eq i32 %3, 6
  %5 = trunc i32 %3 to i8
  switch i8 %5, label %6 [
    i8 8, label %7
    i8 6, label %7
    i8 5, label %7
    i8 1, label %7
  ]

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 524, ptr noundef nonnull @.str.3) #17
  br label %7

7:                                                ; preds = %1, %1, %1, %1, %6
  %8 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #16, !range !44
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %86

10:                                               ; preds = %7
  %11 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 1) #16
  %12 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %10, %14
  %15 = phi i8 [ %25, %14 ], [ 0, %10 ]
  %16 = phi i8 [ %23, %14 ], [ 0, %10 ]
  %17 = phi ptr [ %26, %14 ], [ %11, %10 ]
  %18 = phi i8 [ %22, %14 ], [ 1, %10 ]
  %19 = tail call fastcc ptr @get_value(ptr noundef %17) #16
  %20 = load i32, ptr %19, align 8, !tbaa !31
  %21 = icmp eq i32 %20, 1
  %22 = select i1 %21, i8 %18, i8 0
  %23 = select i1 %21, i8 1, i8 %16
  %24 = icmp eq i32 %20, 2
  %25 = select i1 %24, i8 1, i8 %15
  %26 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #16
  %27 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %14, label %29, !llvm.loop !109

29:                                               ; preds = %14
  %30 = icmp ne i8 %22, 0
  br label %31

31:                                               ; preds = %29, %10
  %32 = phi i1 [ true, %10 ], [ %30, %29 ]
  %33 = phi i8 [ 0, %10 ], [ %23, %29 ]
  %34 = phi i8 [ 0, %10 ], [ %25, %29 ]
  %35 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #16, !range !44
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i32 0, i32 2
  %38 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) #16, !range !44
  %39 = zext nneg i8 %38 to i32
  %40 = or disjoint i32 %37, %39
  %41 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %31, %56
  %44 = phi i8 [ %57, %56 ], [ %34, %31 ]
  %45 = phi i32 [ %58, %56 ], [ %40, %31 ]
  %46 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %45) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load i64, ptr %46, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 141
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %46) #17
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %54, i8 %44, i8 1
  br label %56

56:                                               ; preds = %43, %48, %52
  %57 = phi i8 [ %55, %52 ], [ %44, %48 ], [ %44, %43 ]
  %58 = add nuw i32 %45, 1
  %59 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %43, label %61, !llvm.loop !110

61:                                               ; preds = %56, %31
  %62 = phi i8 [ %34, %31 ], [ %57, %56 ]
  %63 = icmp eq i8 %62, 0
  %64 = icmp ne i8 %33, 0
  %65 = select i1 %64, i1 %63, i1 false
  %66 = select i1 %65, i1 %32, i1 false
  br i1 %66, label %86, label %67

67:                                               ; preds = %61
  %68 = and i1 %4, %64
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !47
  %71 = trunc i32 %70 to i16
  %72 = add i16 %71, -63
  %73 = icmp ult i16 %72, 4
  br i1 %73, label %82, label %86

74:                                               ; preds = %67
  %75 = icmp eq i8 %33, 0
  %76 = select i1 %75, i1 %63, i1 false
  %77 = select i1 %75, i32 2, i32 3
  br i1 %76, label %78, label %86

78:                                               ; preds = %74
  %79 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %0) #16, !range !44
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, i32 3, i32 2
  br label %86

82:                                               ; preds = %69
  %83 = zext nneg i16 %72 to i64
  %84 = getelementptr inbounds [4 x i32], ptr @switch.table.likely_value, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4
  br label %86

86:                                               ; preds = %69, %82, %74, %78, %61, %7
  %87 = phi i32 [ 3, %7 ], [ 1, %61 ], [ %77, %74 ], [ %81, %78 ], [ %85, %82 ], [ 3, %69 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  ret i32 %87
}

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ccp_fold(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %392 [
    i8 6, label %5
    i8 8, label %280
    i8 1, label %353
    i8 5, label %383
  ]

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !47
  %7 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %6) #16, !range !48
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %279 [
    i8 3, label %9
    i8 2, label %185
    i8 1, label %234
  ]

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %11 = zext nneg i32 %6 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !9
  %14 = load i64, ptr %10, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %115 [
    i16 141, label %16
    i16 121, label %20
    i16 51, label %57
  ]

16:                                               ; preds = %9
  %17 = tail call fastcc ptr @get_value(ptr noundef nonnull %10) #16
  %18 = getelementptr inbounds %struct.prop_value_d, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  br label %393

20:                                               ; preds = %9, %20
  %21 = phi ptr [ %23, %20 ], [ %10, %9 ]
  %22 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %23) #16, !range !44
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %20, !llvm.loop !111

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %28 = load i64, ptr %23, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 47
  br i1 %30, label %31, label %115

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %115

37:                                               ; preds = %31
  %38 = tail call fastcc ptr @get_value(ptr noundef nonnull %33) #16
  %39 = load i32, ptr %38, align 8, !tbaa !31
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %115

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.prop_value_d, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !33
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 121
  br i1 %46, label %47, label %115

47:                                               ; preds = %41
  %48 = load ptr, ptr %27, align 8, !tbaa !5
  %49 = tail call zeroext i8 @may_propagate_address_into_dereference(ptr noundef nonnull %43, ptr noundef %48) #16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %115, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %27, align 8, !tbaa !5
  %53 = load ptr, ptr %42, align 8, !tbaa !33
  %54 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !11
  store ptr %55, ptr %27, align 8, !tbaa !5
  %56 = tail call ptr @unshare_expr(ptr noundef %10) #17
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef %56) #17
  store ptr %52, ptr %27, align 8, !tbaa !5
  br label %393

57:                                               ; preds = %9
  %58 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 14
  br i1 %62, label %63, label %115

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.tree_constructor, ptr %10, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !11
  %66 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %65) #16
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.tree_type, ptr %59, i64 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 1023
  %71 = zext nneg i32 %70 to i64
  %72 = shl nuw i64 1, %71
  %73 = icmp eq i64 %72, %67
  br i1 %73, label %74, label %115

74:                                               ; preds = %63
  %75 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %65) #16
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %110, label %77

77:                                               ; preds = %74, %102
  %78 = phi ptr [ %105, %102 ], [ %65, %74 ]
  %79 = phi i32 [ %104, %102 ], [ 0, %74 ]
  %80 = phi ptr [ %103, %102 ], [ null, %74 ]
  %81 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %78, i32 noundef %79) #16
  %82 = getelementptr inbounds %struct.constructor_elt_d, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !36
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 141
  br i1 %86, label %87, label %95

87:                                               ; preds = %77
  %88 = tail call fastcc ptr @get_value(ptr noundef nonnull %83) #16
  %89 = load i32, ptr %88, align 8, !tbaa !31
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = tail call fastcc ptr @get_value(ptr noundef nonnull %83) #16
  %93 = getelementptr inbounds %struct.prop_value_d, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !33
  br label %95

95:                                               ; preds = %91, %87, %77
  %96 = phi ptr [ %94, %91 ], [ %83, %87 ], [ %83, %77 ]
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = and i32 %98, 65535
  %100 = add nsw i32 %99, -23
  %101 = icmp ult i32 %100, 3
  br i1 %101, label %102, label %393

102:                                              ; preds = %95
  %103 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %96, ptr noundef %80) #17
  %104 = add nuw i32 %79, 1
  %105 = load ptr, ptr %64, align 8, !tbaa !11
  %106 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %105) #16
  %107 = icmp ult i32 %104, %106
  br i1 %107, label %77, label %108, !llvm.loop !112

108:                                              ; preds = %102
  %109 = load ptr, ptr %58, align 8, !tbaa !11
  br label %110

110:                                              ; preds = %108, %74
  %111 = phi ptr [ %59, %74 ], [ %109, %108 ]
  %112 = phi ptr [ null, %74 ], [ %103, %108 ]
  %113 = tail call ptr @nreverse(ptr noundef %112) #17
  %114 = tail call ptr @build_vector(ptr noundef %111, ptr noundef %113) #17
  br label %393

115:                                              ; preds = %37, %41, %47, %26, %31, %9, %63, %57
  switch i32 %13, label %393 [
    i32 4, label %116
    i32 3, label %183
  ]

116:                                              ; preds = %115
  %117 = load i64, ptr %10, align 8
  %118 = trunc i64 %117 to i16
  switch i16 %118, label %148 [
    i16 118, label %119
    i16 43, label %119
    i16 44, label %119
  ]

119:                                              ; preds = %116, %116, %116
  %120 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !11
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 141
  br i1 %124, label %125, label %148

125:                                              ; preds = %119
  %126 = tail call fastcc ptr @get_value(ptr noundef nonnull %121) #16
  %127 = load i32, ptr %126, align 8, !tbaa !31
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %180

129:                                              ; preds = %125
  %130 = load i64, ptr %10, align 8
  %131 = and i64 %130, 65535
  %132 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !9
  %134 = add i32 %133, -4
  %135 = icmp ult i32 %134, 7
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !11
  br label %139

139:                                              ; preds = %136, %129
  %140 = phi i32 [ %138, %136 ], [ 0, %129 ]
  %141 = trunc i64 %130 to i32
  %142 = and i32 %141, 65535
  %143 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !11
  %145 = getelementptr inbounds %struct.prop_value_d, ptr %126, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !33
  %147 = tail call ptr @fold_unary_loc(i32 noundef %140, i32 noundef %142, ptr noundef %144, ptr noundef %146) #17
  br label %393

148:                                              ; preds = %116, %119
  %149 = and i64 %117, 65535
  %150 = icmp eq i64 %149, 47
  br i1 %150, label %151, label %180

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !11
  %154 = load i64, ptr %153, align 8
  %155 = and i64 %154, 65535
  %156 = icmp eq i64 %155, 141
  br i1 %156, label %157, label %180

157:                                              ; preds = %151
  %158 = tail call fastcc ptr @get_value(ptr noundef nonnull %153) #16
  %159 = load i32, ptr %158, align 8, !tbaa !31
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %180

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.prop_value_d, ptr %158, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !33
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 121
  br i1 %166, label %167, label %180

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !11
  %170 = getelementptr inbounds %struct.tree_common, ptr %163, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !11
  %172 = getelementptr inbounds %struct.tree_common, ptr %171, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !11
  %174 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %169, ptr noundef %173) #17
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %167
  %177 = load ptr, ptr %162, align 8, !tbaa !33
  %178 = getelementptr inbounds %struct.tree_exp, ptr %177, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !11
  br label %180

180:                                              ; preds = %125, %157, %161, %167, %176, %148, %151
  %181 = phi ptr [ %10, %151 ], [ %10, %148 ], [ %179, %176 ], [ %10, %167 ], [ %10, %161 ], [ %10, %157 ], [ %10, %125 ]
  %182 = tail call ptr @fold_const_aggregate_ref(ptr noundef %181) #16
  br label %393

183:                                              ; preds = %115
  %184 = tail call ptr @get_symbol_constant_value(ptr noundef %10) #16
  br label %393

185:                                              ; preds = %5
  %186 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #16
  %187 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %188 = load i64, ptr %187, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 141
  br i1 %190, label %191, label %199

191:                                              ; preds = %185
  %192 = tail call fastcc ptr @get_value(ptr noundef nonnull %187) #16
  %193 = load i32, ptr %192, align 8, !tbaa !31
  %194 = icmp eq i32 %193, 2
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = tail call fastcc ptr @get_value(ptr noundef nonnull %187) #16
  %197 = getelementptr inbounds %struct.prop_value_d, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !33
  br label %199

199:                                              ; preds = %191, %195, %185
  %200 = phi ptr [ %187, %185 ], [ %198, %195 ], [ %187, %191 ]
  %201 = trunc i32 %6 to i16
  switch i16 %201, label %231 [
    i16 116, label %202
    i16 113, label %202
  ]

202:                                              ; preds = %199, %199
  %203 = getelementptr inbounds %struct.tree_common, ptr %186, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !11
  %205 = load i64, ptr %204, align 8
  %206 = trunc i64 %205 to i16
  switch i16 %206, label %231 [
    i16 10, label %207
    i16 12, label %207
  ]

207:                                              ; preds = %202, %202
  %208 = getelementptr inbounds %struct.tree_common, ptr %200, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !11
  %210 = load i64, ptr %209, align 8
  %211 = trunc i64 %210 to i16
  switch i16 %211, label %231 [
    i16 10, label %212
    i16 12, label %212
  ]

212:                                              ; preds = %207, %207
  %213 = getelementptr inbounds %struct.tree_common, ptr %204, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !11
  %215 = load i64, ptr %214, align 8
  %216 = getelementptr inbounds %struct.tree_common, ptr %209, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !11
  %218 = load i64, ptr %217, align 8
  %219 = xor i64 %218, %215
  %220 = and i64 %219, 524288
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %212
  %223 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %204, ptr noundef nonnull %209) #17
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  %227 = load ptr, ptr %203, align 8, !tbaa !11
  %228 = tail call ptr @maybe_fold_offset_to_address(i32 noundef %2, ptr noundef nonnull %200, ptr noundef %226, ptr noundef %227) #16
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %393

230:                                              ; preds = %225, %222
  br label %393

231:                                              ; preds = %207, %202, %199, %212
  %232 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #16
  %233 = tail call ptr @fold_unary_ignore_overflow_loc(i32 noundef %2, i32 noundef %6, ptr noundef %232, ptr noundef %200) #17
  br label %393

234:                                              ; preds = %5
  %235 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %236 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %237 = load i64, ptr %235, align 8
  %238 = and i64 %237, 65535
  %239 = icmp eq i64 %238, 141
  br i1 %239, label %240, label %247

240:                                              ; preds = %234
  %241 = tail call fastcc ptr @get_value(ptr noundef nonnull %235) #16
  %242 = load i32, ptr %241, align 8, !tbaa !31
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %247

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.prop_value_d, ptr %241, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !33
  br label %247

247:                                              ; preds = %240, %244, %234
  %248 = phi ptr [ %235, %234 ], [ %246, %244 ], [ %235, %240 ]
  %249 = load i64, ptr %236, align 8
  %250 = and i64 %249, 65535
  %251 = icmp eq i64 %250, 141
  br i1 %251, label %252, label %259

252:                                              ; preds = %247
  %253 = tail call fastcc ptr @get_value(ptr noundef nonnull %236) #16
  %254 = load i32, ptr %253, align 8, !tbaa !31
  %255 = icmp eq i32 %254, 2
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.prop_value_d, ptr %253, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !33
  br label %259

259:                                              ; preds = %252, %256, %247
  %260 = phi ptr [ %236, %247 ], [ %258, %256 ], [ %236, %252 ]
  %261 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !47
  %262 = icmp eq i32 %261, 66
  br i1 %262, label %263, label %276

263:                                              ; preds = %259
  %264 = load i64, ptr %248, align 8
  %265 = and i64 %264, 65535
  %266 = icmp eq i64 %265, 121
  br i1 %266, label %267, label %276

267:                                              ; preds = %263
  %268 = load i64, ptr %260, align 8
  %269 = and i64 %268, 65535
  %270 = icmp eq i64 %269, 23
  br i1 %270, label %271, label %276

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.tree_common, ptr %248, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !11
  %274 = tail call ptr @maybe_fold_offset_to_address(i32 noundef %2, ptr noundef nonnull %248, ptr noundef nonnull %260, ptr noundef %273) #16
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %393

276:                                              ; preds = %271, %267, %263, %259
  %277 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #16
  %278 = tail call ptr @fold_binary_loc(i32 noundef %2, i32 noundef %6, ptr noundef %277, ptr noundef %248, ptr noundef %260) #17
  br label %393

279:                                              ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1119, ptr noundef nonnull @.str.3) #17
  br label %393

280:                                              ; preds = %1
  %281 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %282 = load i64, ptr %281, align 8
  %283 = and i64 %282, 65535
  %284 = icmp eq i64 %283, 141
  br i1 %284, label %285, label %292

285:                                              ; preds = %280
  %286 = tail call fastcc ptr @get_value(ptr noundef nonnull %281) #16
  %287 = load i32, ptr %286, align 8, !tbaa !31
  %288 = icmp eq i32 %287, 2
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.prop_value_d, ptr %286, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !33
  br label %292

292:                                              ; preds = %285, %289, %280
  %293 = phi ptr [ %291, %289 ], [ %281, %285 ], [ %281, %280 ]
  %294 = load i64, ptr %293, align 8
  %295 = and i64 %294, 65535
  %296 = icmp eq i64 %295, 121
  br i1 %296, label %297, label %393

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.tree_exp, ptr %293, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !11
  %300 = load i64, ptr %299, align 8
  %301 = and i64 %300, 65535
  %302 = icmp eq i64 %301, 29
  br i1 %302, label %303, label %393

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.tree_function_decl, ptr %299, i64 0, i32 5
  %305 = load i32, ptr %304, align 8
  %306 = and i32 %305, 6144
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %393, label %308

308:                                              ; preds = %303
  %309 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %310 = zext i32 %309 to i64
  %311 = shl nuw nsw i64 %310, 3
  %312 = alloca i8, i64 %311, align 16
  %313 = icmp eq i32 %309, 0
  br i1 %313, label %334, label %314

314:                                              ; preds = %308, %329
  %315 = phi i64 [ %330, %329 ], [ 0, %308 ]
  %316 = trunc i64 %315 to i32
  %317 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %316) #16
  %318 = getelementptr inbounds ptr, ptr %312, i64 %315
  store ptr %317, ptr %318, align 8, !tbaa !5
  %319 = load i64, ptr %317, align 8
  %320 = and i64 %319, 65535
  %321 = icmp eq i64 %320, 141
  br i1 %321, label %322, label %329

322:                                              ; preds = %314
  %323 = tail call fastcc ptr @get_value(ptr noundef nonnull %317) #16
  %324 = load i32, ptr %323, align 8, !tbaa !31
  %325 = icmp eq i32 %324, 2
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.prop_value_d, ptr %323, i64 0, i32 1
  %328 = load ptr, ptr %327, align 8, !tbaa !33
  store ptr %328, ptr %318, align 8, !tbaa !5
  br label %329

329:                                              ; preds = %314, %326, %322
  %330 = add nuw nsw i64 %315, 1
  %331 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %332 = zext i32 %331 to i64
  %333 = icmp ult i64 %330, %332
  br i1 %333, label %314, label %334, !llvm.loop !113

334:                                              ; preds = %329, %308
  %335 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #16
  %336 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %337 = call ptr @build_call_array_loc(i32 noundef %2, ptr noundef %335, ptr noundef nonnull %293, i32 noundef %336, ptr noundef nonnull %312) #17
  %338 = load i64, ptr %337, align 8
  %339 = and i64 %338, 65535
  %340 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa !9
  %342 = add i32 %341, -4
  %343 = icmp ult i32 %342, 7
  br i1 %343, label %344, label %347

344:                                              ; preds = %334
  %345 = getelementptr inbounds %struct.tree_exp, ptr %337, i64 0, i32 1
  %346 = load i32, ptr %345, align 8, !tbaa !11
  br label %347

347:                                              ; preds = %334, %344
  %348 = phi i32 [ %346, %344 ], [ 0, %334 ]
  %349 = call ptr @fold_call_expr(i32 noundef %348, ptr noundef nonnull %337, i8 noundef zeroext 0) #17
  %350 = icmp eq ptr %349, null
  br i1 %350, label %393, label %351

351:                                              ; preds = %347
  %352 = call ptr @tree_strip_nop_conversions(ptr noundef nonnull %349) #17
  br label %393

353:                                              ; preds = %1
  %354 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %355 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %356 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #16, !range !47
  %357 = load i64, ptr %354, align 8
  %358 = and i64 %357, 65535
  %359 = icmp eq i64 %358, 141
  br i1 %359, label %360, label %367

360:                                              ; preds = %353
  %361 = tail call fastcc ptr @get_value(ptr noundef nonnull %354) #16
  %362 = load i32, ptr %361, align 8, !tbaa !31
  %363 = icmp eq i32 %362, 2
  br i1 %363, label %364, label %367

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.prop_value_d, ptr %361, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !33
  br label %367

367:                                              ; preds = %360, %364, %353
  %368 = phi ptr [ %354, %353 ], [ %366, %364 ], [ %354, %360 ]
  %369 = load i64, ptr %355, align 8
  %370 = and i64 %369, 65535
  %371 = icmp eq i64 %370, 141
  br i1 %371, label %372, label %379

372:                                              ; preds = %367
  %373 = tail call fastcc ptr @get_value(ptr noundef nonnull %355) #16
  %374 = load i32, ptr %373, align 8, !tbaa !31
  %375 = icmp eq i32 %374, 2
  br i1 %375, label %376, label %379

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.prop_value_d, ptr %373, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !33
  br label %379

379:                                              ; preds = %372, %376, %367
  %380 = phi ptr [ %355, %367 ], [ %378, %376 ], [ %355, %372 ]
  %381 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !5
  %382 = tail call ptr @fold_binary_loc(i32 noundef %2, i32 noundef %356, ptr noundef %381, ptr noundef %368, ptr noundef %380) #17
  br label %393

383:                                              ; preds = %1
  %384 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #16
  %385 = load i64, ptr %384, align 8
  %386 = and i64 %385, 65535
  %387 = icmp eq i64 %386, 141
  br i1 %387, label %388, label %393

388:                                              ; preds = %383
  %389 = tail call fastcc ptr @get_value(ptr noundef nonnull %384) #16
  %390 = getelementptr inbounds %struct.prop_value_d, ptr %389, i64 0, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !33
  br label %393

392:                                              ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1204, ptr noundef nonnull @.str.3) #17
  br label %393

393:                                              ; preds = %95, %139, %276, %271, %231, %225, %230, %16, %180, %183, %51, %110, %115, %392, %279, %388, %383, %351, %347, %303, %297, %292, %379
  %394 = phi ptr [ %382, %379 ], [ %352, %351 ], [ null, %347 ], [ null, %303 ], [ null, %297 ], [ null, %292 ], [ %391, %388 ], [ %384, %383 ], [ null, %279 ], [ null, %392 ], [ %147, %139 ], [ %274, %271 ], [ %278, %276 ], [ %228, %225 ], [ %200, %230 ], [ %233, %231 ], [ %10, %115 ], [ %114, %110 ], [ %56, %51 ], [ %184, %183 ], [ %182, %180 ], [ %19, %16 ], [ null, %95 ]
  ret ptr %394
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #6 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: optsize
declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #16, !range !44
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #16, !range !44
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #16
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %7, %1
  %12 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !11
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !44
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #16
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !11
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @fold_unary_ignore_overflow_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #16
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !47
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #17
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !5
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !5
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #16
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @fold_call_expr(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !11
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #16
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !11
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 3103, ptr noundef nonnull @.str.3) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccp_lattice_meet(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !31
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !40
  br label %29

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !31
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %29, label %9

9:                                                ; preds = %6
  %10 = icmp eq i32 %3, 3
  %11 = icmp eq i32 %7, 3
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  store i32 3, ptr %0, align 8, !tbaa !31
  %14 = getelementptr inbounds %struct.prop_value_d, ptr %0, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !33
  br label %29

15:                                               ; preds = %9
  %16 = icmp eq i32 %3, 2
  %17 = icmp eq i32 %7, 2
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.prop_value_d, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  %22 = getelementptr inbounds %struct.prop_value_d, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !33
  %24 = tail call i32 @simple_cst_equal(ptr noundef %21, ptr noundef %23) #17
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 2, ptr %0, align 8, !tbaa !31
  br label %29

27:                                               ; preds = %19, %15
  store i32 3, ptr %0, align 8, !tbaa !31
  %28 = getelementptr inbounds %struct.prop_value_d, ptr %0, i64 0, i32 1
  store ptr null, ptr %28, align 8, !tbaa !33
  br label %29

29:                                               ; preds = %6, %26, %27, %13, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_dbg_cnt() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %0, %16
  %9 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %10 = tail call zeroext i8 @dbg_cnt(i32 noundef 1) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load ptr, ptr @const_val, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.prop_value_d, ptr %13, i64 %9
  store i32 3, ptr %14, align 8, !tbaa !31
  %15 = getelementptr inbounds %struct.prop_value_d, ptr %13, i64 %9, i32 1
  store ptr null, ptr %15, align 8, !tbaa !33
  br label %16

16:                                               ; preds = %8, %12
  %17 = add nuw nsw i64 %9, 1
  %18 = load ptr, ptr @cfun, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.gimple_df, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #16
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %17, %24
  br i1 %25, label %8, label %26, !llvm.loop !115

26:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @substitute_and_fold(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @ccp_fold_stmt(ptr noundef %0) #0 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %2) #16, !range !48
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %130 [
    i8 1, label %5
    i8 8, label %19
    i8 6, label %101
  ]

5:                                                ; preds = %1
  %6 = tail call fastcc { i32, ptr } @evaluate_stmt(ptr noundef %2) #16
  %7 = extractvalue { i32, ptr } %6, 0
  %8 = extractvalue { i32, ptr } %6, 1
  %9 = icmp eq i32 %7, 2
  br i1 %9, label %10, label %130

10:                                               ; preds = %5
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  br i1 %13, label %14, label %130

14:                                               ; preds = %10
  %15 = tail call i32 @integer_zerop(ptr noundef nonnull %8) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call fastcc void @gimple_cond_make_false(ptr noundef %2) #16
  br label %130

18:                                               ; preds = %14
  tail call fastcc void @gimple_cond_make_true(ptr noundef %2) #16
  br label %130

19:                                               ; preds = %1
  %20 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %2) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22

22:                                               ; preds = %19
  %23 = load i64, ptr %20, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @get_value(ptr noundef nonnull %20) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %27, align 8, !tbaa !31
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.prop_value_d, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !33
  %35 = tail call ptr @unshare_expr(ptr noundef %34) #17
  %36 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  %40 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %37, ptr noundef %39) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load ptr, ptr %36, align 8, !tbaa !11
  %44 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %43, ptr noundef nonnull %35) #17
  br label %45

45:                                               ; preds = %42, %32
  %46 = phi ptr [ %35, %32 ], [ %44, %42 ]
  %47 = tail call zeroext i8 @update_call_from_tree(ptr noundef %0, ptr noundef %46) #17
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %130

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1533, ptr noundef nonnull @.str.3) #17
  br label %130

50:                                               ; preds = %29, %26, %22, %19
  %51 = tail call fastcc ptr @gimple_call_fn(ptr noundef %2) #16
  %52 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %2) #16
  %59 = icmp ne i32 %58, 0
  %60 = icmp ne ptr %57, null
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %130

62:                                               ; preds = %50, %92
  %63 = phi ptr [ %96, %92 ], [ %57, %50 ]
  %64 = phi i32 [ %94, %92 ], [ 0, %50 ]
  %65 = phi i8 [ %93, %92 ], [ 0, %50 ]
  %66 = tail call fastcc ptr @gimple_call_arg(ptr noundef %2, i32 noundef %64) #16
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  br i1 %69, label %70, label %92

70:                                               ; preds = %62
  %71 = tail call fastcc ptr @get_value(ptr noundef nonnull %66) #16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %92, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr %71, align 8, !tbaa !31
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tree_list, ptr %63, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !11
  %79 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 16
  %80 = load ptr, ptr %79, align 8, !tbaa !11
  %81 = getelementptr inbounds %struct.prop_value_d, ptr %71, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !33
  %83 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !11
  %85 = getelementptr inbounds %struct.tree_type, ptr %84, i64 0, i32 16
  %86 = load ptr, ptr %85, align 8, !tbaa !11
  %87 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %80, ptr noundef %86) #17
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %76
  %90 = load ptr, ptr %81, align 8, !tbaa !33
  %91 = tail call ptr @unshare_expr(ptr noundef %90) #17
  tail call fastcc void @gimple_call_set_arg(ptr noundef %2, i32 noundef %64, ptr noundef %91) #16
  br label %92

92:                                               ; preds = %89, %76, %73, %70, %62
  %93 = phi i8 [ 1, %89 ], [ %65, %76 ], [ %65, %73 ], [ %65, %70 ], [ %65, %62 ]
  %94 = add nuw i32 %64, 1
  %95 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !11
  %97 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %2) #16
  %98 = icmp ult i32 %94, %97
  %99 = icmp ne ptr %96, null
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %62, label %130, !llvm.loop !116

101:                                              ; preds = %1
  %102 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #16
  %103 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %2) #17
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %130, label %105

105:                                              ; preds = %101
  %106 = load i64, ptr %102, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 141
  br i1 %108, label %109, label %130

109:                                              ; preds = %105
  %110 = tail call fastcc ptr @get_value(ptr noundef nonnull %102) #16
  %111 = icmp eq ptr %110, null
  br i1 %111, label %130, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr %110, align 8, !tbaa !31
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %130

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.prop_value_d, ptr %110, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !33
  %118 = tail call ptr @unshare_expr(ptr noundef %117) #17
  %119 = getelementptr inbounds %struct.tree_common, ptr %102, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !11
  %121 = getelementptr inbounds %struct.tree_common, ptr %118, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !11
  %123 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %120, ptr noundef %122) #17
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = load ptr, ptr %119, align 8, !tbaa !11
  %127 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %126, ptr noundef nonnull %118) #17
  br label %128

128:                                              ; preds = %125, %115
  %129 = phi ptr [ %118, %115 ], [ %127, %125 ]
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %129) #17
  br label %130

130:                                              ; preds = %92, %50, %1, %128, %112, %109, %105, %101, %45, %49, %10, %5, %18, %17
  %131 = phi i8 [ 0, %10 ], [ 0, %5 ], [ 1, %18 ], [ 1, %17 ], [ 1, %45 ], [ 1, %49 ], [ 1, %128 ], [ 0, %112 ], [ 0, %109 ], [ 0, %105 ], [ 0, %101 ], [ 0, %1 ], [ 0, %50 ], [ %93, %92 ]
  ret i8 %131
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_false(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !5
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #16
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !5
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #16
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_true(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !5
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #16
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !5
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #16
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @update_call_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_arg(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = add i32 %1, 3
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %4, ptr noundef %2) #16
  ret void
}

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !44
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1665, ptr noundef nonnull @.str.3) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare ptr @byte_position(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare { i64, i64 } @double_int_sext(i64, i64, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1446, ptr noundef nonnull @.str.3) #17
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #16, !range !47
  %4 = tail call fastcc i32 @gimple_location(ptr noundef %2) #16
  %5 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %3) #16, !range !48
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %248 [
    i8 3, label %7
    i8 2, label %131
    i8 1, label %187
    i8 0, label %247
  ]

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %61 [
    i16 56, label %11
    i16 152, label %59
  ]

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 56), align 4, !tbaa !9
  %15 = add i32 %14, -4
  %16 = icmp ult i32 %15, 7
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !11
  br label %20

20:                                               ; preds = %11, %17
  %21 = phi i32 [ %19, %17 ], [ 0, %11 ]
  %22 = load i64, ptr %13, align 8
  %23 = and i64 %22, 65535
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !9
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  tail call void @fold_defer_overflow_warnings() #17
  %28 = load i64, ptr %13, align 8
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 65535
  %31 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !11
  %37 = tail call ptr @fold_binary_loc(i32 noundef %21, i32 noundef %30, ptr noundef %32, ptr noundef %34, ptr noundef %36) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %27
  %40 = tail call zeroext i8 @is_gimple_condexpr(ptr noundef nonnull %37) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %46

42:                                               ; preds = %20
  %43 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %13) #17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %248, label %50

45:                                               ; preds = %39, %27
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext 0, ptr noundef %2, i32 noundef 0) #17
  br label %121

46:                                               ; preds = %39
  %47 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef nonnull %37) #17
  %48 = icmp ne i8 %47, 0
  %49 = zext i1 %48 to i8
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %49, ptr noundef %2, i32 noundef 0) #17
  br i1 %48, label %50, label %121

50:                                               ; preds = %42, %46
  %51 = phi ptr [ %37, %46 ], [ %13, %42 ]
  %52 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = tail call ptr @fold_build3_stat_loc(i32 noundef %21, i32 noundef 56, ptr noundef %53, ptr noundef nonnull %51, ptr noundef %55, ptr noundef %57) #17
  br label %118

59:                                               ; preds = %7
  %60 = tail call ptr @maybe_fold_tmr(ptr noundef nonnull %8) #17
  br label %248

61:                                               ; preds = %7
  %62 = and i64 %9, 65535
  %63 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !9
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %8, i8 noundef zeroext 0) #16
  br label %248

68:                                               ; preds = %61
  switch i16 %10, label %113 [
    i16 121, label %69
    i16 51, label %79
  ]

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !11
  %72 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %71, i8 noundef zeroext 1) #16
  %73 = icmp eq ptr %72, null
  br i1 %73, label %121, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !11
  %77 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %4, ptr noundef nonnull %72) #17
  %78 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %76, ptr noundef %77) #17
  br label %118

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !11
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 14
  br i1 %84, label %85, label %113

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.tree_constructor, ptr %8, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !11
  %88 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %87) #16
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 1023
  %93 = zext nneg i32 %92 to i64
  %94 = shl nuw i64 1, %93
  %95 = icmp eq i64 %94, %89
  br i1 %95, label %96, label %113

96:                                               ; preds = %85
  %97 = icmp eq i32 %88, 0
  br i1 %97, label %111, label %101

98:                                               ; preds = %101
  %99 = add nuw i32 %102, 1
  %100 = icmp eq i32 %99, %88
  br i1 %100, label %111, label %101, !llvm.loop !117

101:                                              ; preds = %96, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %96 ]
  %103 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %87, i32 noundef %102) #16
  %104 = getelementptr inbounds %struct.constructor_elt_d, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !36
  %106 = load i64, ptr %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = and i32 %107, 65535
  %109 = add nsw i32 %108, -23
  %110 = icmp ult i32 %109, 3
  br i1 %110, label %98, label %248

111:                                              ; preds = %98, %96
  %112 = tail call ptr @build_vector_from_ctor(ptr noundef nonnull %81, ptr noundef %87) #17
  br label %248

113:                                              ; preds = %68, %85, %79
  %114 = icmp eq i32 %64, 3
  br i1 %114, label %115, label %121

115:                                              ; preds = %113
  %116 = tail call ptr @get_symbol_constant_value(ptr noundef nonnull %8) #16
  %117 = tail call ptr @unshare_expr(ptr noundef %116) #17
  br label %248

118:                                              ; preds = %50, %74
  %119 = phi ptr [ %78, %74 ], [ %58, %50 ]
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %46, %45, %69, %113, %118
  %122 = tail call ptr @fold(ptr noundef nonnull %8) #17
  br label %123

123:                                              ; preds = %121, %118
  %124 = phi ptr [ %122, %121 ], [ %119, %118 ]
  %125 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %124) #17
  %126 = icmp eq ptr %125, %8
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %125) #17
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %248

130:                                              ; preds = %127, %123
  br label %248

131:                                              ; preds = %1
  %132 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %133 = tail call fastcc ptr @gimple_expr_type(ptr noundef %2) #16
  %134 = tail call ptr @fold_unary_loc(i32 noundef %4, i32 noundef %3, ptr noundef %133, ptr noundef %132) #17
  %135 = icmp eq ptr %134, null
  %136 = trunc i32 %3 to i16
  br i1 %135, label %154, label %137

137:                                              ; preds = %131
  switch i16 %136, label %150 [
    i16 116, label %138
    i16 113, label %138
  ]

138:                                              ; preds = %137, %137
  %139 = load i64, ptr %134, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 23
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load i64, ptr %132, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 23
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = and i64 %143, 134217728
  %148 = and i64 %139, -134283241
  %149 = or disjoint i64 %147, %148
  store i64 %149, ptr %134, align 8
  br label %150

150:                                              ; preds = %137, %146, %142, %138
  %151 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %134) #17
  %152 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %151) #17
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %248, label %185

154:                                              ; preds = %131
  switch i16 %136, label %248 [
    i16 116, label %155
    i16 113, label %155
  ]

155:                                              ; preds = %154, %154
  %156 = tail call fastcc ptr @gimple_expr_type(ptr noundef %2) #16
  %157 = load i64, ptr %156, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 10
  br i1 %159, label %165, label %160

160:                                              ; preds = %155
  %161 = tail call fastcc ptr @gimple_expr_type(ptr noundef %2) #16
  %162 = load i64, ptr %161, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 12
  br i1 %164, label %165, label %248

165:                                              ; preds = %160, %155
  %166 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %167 = getelementptr inbounds %struct.tree_common, ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !11
  %169 = load i64, ptr %168, align 8
  %170 = and i64 %169, 65535
  %171 = icmp eq i64 %170, 10
  br i1 %171, label %179, label %172

172:                                              ; preds = %165
  %173 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %174 = getelementptr inbounds %struct.tree_common, ptr %173, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !11
  %176 = load i64, ptr %175, align 8
  %177 = and i64 %176, 65535
  %178 = icmp eq i64 %177, 12
  br i1 %178, label %179, label %248

179:                                              ; preds = %172, %165
  %180 = tail call fastcc ptr @gimple_expr_type(ptr noundef %2) #16
  %181 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %182 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  %183 = tail call ptr @maybe_fold_offset_to_address(i32 noundef %4, ptr noundef %181, ptr noundef %182, ptr noundef %180) #16
  %184 = icmp eq ptr %183, null
  br i1 %184, label %248, label %185

185:                                              ; preds = %179, %150
  %186 = phi ptr [ %151, %150 ], [ %183, %179 ]
  br label %248

187:                                              ; preds = %1
  %188 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #16, !range !47
  %189 = icmp eq i32 %188, 66
  br i1 %189, label %190, label %219

190:                                              ; preds = %187
  %191 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %192 = getelementptr inbounds %struct.tree_common, ptr %191, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !11
  %194 = getelementptr inbounds %struct.tree_common, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !11
  %196 = load i64, ptr %195, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 15
  br i1 %198, label %199, label %212

199:                                              ; preds = %190
  %200 = getelementptr inbounds %struct.tree_common, ptr %195, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !11
  %202 = tail call ptr @build_pointer_type(ptr noundef %201) #17
  %203 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #16
  %204 = getelementptr inbounds %struct.tree_common, ptr %203, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !11
  %206 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %205, ptr noundef %202) #17
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %199
  %209 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %210 = getelementptr inbounds %struct.tree_common, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !11
  br label %212

212:                                              ; preds = %190, %208, %199
  %213 = phi ptr [ %202, %199 ], [ %211, %208 ], [ %193, %190 ]
  %214 = tail call fastcc i32 @gimple_location(ptr noundef %2) #16
  %215 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %216 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #16
  %217 = tail call ptr @maybe_fold_stmt_addition(i32 noundef %214, ptr noundef %213, ptr noundef %215, ptr noundef %216) #16
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %227

219:                                              ; preds = %187, %212
  %220 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #16
  %221 = getelementptr inbounds %struct.tree_common, ptr %220, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !11
  %223 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %224 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #16
  %225 = tail call ptr @fold_binary_loc(i32 noundef %4, i32 noundef %3, ptr noundef %222, ptr noundef %223, ptr noundef %224) #17
  %226 = icmp eq ptr %225, null
  br i1 %226, label %248, label %227

227:                                              ; preds = %212, %219
  %228 = phi ptr [ %225, %219 ], [ %217, %212 ]
  %229 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %228) #17
  %230 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %229) #17
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %248

232:                                              ; preds = %227
  %233 = tail call zeroext i8 @commutative_tree_code(i32 noundef %3) #17
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %232
  %236 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %237 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #16
  %238 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %236, ptr noundef %237, i8 noundef zeroext 0) #17
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %235
  %241 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #16
  %242 = getelementptr inbounds %struct.tree_common, ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !11
  %244 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #16
  %245 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %246 = tail call ptr @build2_stat(i32 noundef %3, ptr noundef %243, ptr noundef %244, ptr noundef %245) #17
  br label %248

247:                                              ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2954, ptr noundef nonnull @.str.3) #17
  br label %248

248:                                              ; preds = %101, %1, %247, %232, %235, %219, %150, %179, %172, %160, %154, %185, %42, %227, %59, %66, %115, %130, %111, %127, %240
  %249 = phi ptr [ %246, %240 ], [ null, %130 ], [ %60, %59 ], [ %67, %66 ], [ %117, %115 ], [ %112, %111 ], [ %125, %127 ], [ %229, %227 ], [ null, %42 ], [ %186, %185 ], [ null, %154 ], [ null, %160 ], [ null, %172 ], [ null, %179 ], [ null, %150 ], [ null, %219 ], [ null, %235 ], [ null, %232 ], [ null, %247 ], [ null, %1 ], [ null, %101 ]
  ret ptr %249
}

; Function Attrs: optsize
declare i32 @get_gimple_rhs_num_ops(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fold_gimple_cond(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  %3 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #16, !range !47
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !5
  %5 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %6 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %7 = tail call ptr @fold_binary_loc(i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %7) #17
  %11 = tail call zeroext i8 @is_gimple_condexpr(ptr noundef %10) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %10) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @gimple_cond_set_condition_from_tree(ptr noundef %0, ptr noundef %10) #17
  br label %17

17:                                               ; preds = %1, %13, %9, %16
  %18 = phi i8 [ 1, %16 ], [ 0, %9 ], [ 0, %13 ], [ 0, %1 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_fold_reference(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !5
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp ne i64 %5, 45
  %7 = icmp ne i8 %1, 0
  %8 = or i1 %7, %6
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @fold_read_from_constant_string(ptr noundef nonnull %0) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %62

12:                                               ; preds = %9, %2
  %13 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #16, !range !44
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !9
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = tail call ptr @fold(ptr noundef nonnull %0) #17
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %62

26:                                               ; preds = %23, %15, %12
  br label %27

27:                                               ; preds = %26, %27
  %28 = phi ptr [ %32, %27 ], [ %3, %26 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %29) #16, !range !44
  %31 = icmp eq i8 %30, 0
  %32 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  br i1 %31, label %33, label %27, !llvm.loop !118

33:                                               ; preds = %27
  %34 = load i64, ptr %29, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 47
  br i1 %36, label %37, label %70

37:                                               ; preds = %33
  %38 = load ptr, ptr %32, align 8, !tbaa !11
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  %40 = tail call fastcc ptr @maybe_fold_stmt_indirect(ptr noundef nonnull %29, ptr noundef %38, ptr noundef %39) #16
  %41 = icmp ne ptr %40, null
  %42 = select i1 %7, i1 %41, i1 false
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i64, ptr %40, align 8
  %45 = and i64 %44, 65535
  %46 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !9
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %51, label %64

49:                                               ; preds = %37
  %50 = icmp eq ptr %40, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %43, %49
  %52 = load ptr, ptr %28, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.tree_exp, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 121
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tree_exp, ptr %54, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !11
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %71, %70, %58, %51, %78, %75, %9, %23, %86, %64
  %63 = phi ptr [ %69, %64 ], [ %91, %86 ], [ %24, %23 ], [ %10, %9 ], [ null, %75 ], [ null, %78 ], [ null, %51 ], [ null, %58 ], [ null, %70 ], [ null, %71 ]
  ret ptr %63

64:                                               ; preds = %43, %49, %58
  %65 = phi ptr [ %60, %58 ], [ %40, %49 ], [ %40, %43 ]
  store ptr %65, ptr %28, align 8, !tbaa !5
  %66 = load ptr, ptr %3, align 8
  %67 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %66, i8 noundef zeroext %1) #16
  %68 = icmp eq ptr %67, null
  %69 = select i1 %68, ptr %66, ptr %67
  br label %62

70:                                               ; preds = %33
  br i1 %7, label %62, label %71

71:                                               ; preds = %70
  %72 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %73 = load i32, ptr %72, align 4, !tbaa !9
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %62

75:                                               ; preds = %71
  %76 = tail call ptr @get_symbol_constant_value(ptr noundef nonnull %29) #16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %62, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %28, align 8, !tbaa !5
  %80 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !11
  %82 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !11
  %84 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %81, ptr noundef %83) #17
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %62, label %86

86:                                               ; preds = %78
  %87 = tail call ptr @unshare_expr(ptr noundef nonnull %76) #17
  store ptr %87, ptr %28, align 8, !tbaa !5
  %88 = load ptr, ptr %3, align 8
  %89 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %88, i8 noundef zeroext 0) #16
  %90 = icmp eq ptr %89, null
  %91 = select i1 %90, ptr %88, ptr %89
  br label %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fold_gimple_call(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %3 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %2) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 6144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @ccp_fold_builtin(ptr noundef %2) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %47, label %13

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @update_call_from_tree(ptr noundef %0, ptr noundef nonnull %11) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  tail call fastcc void @gimplify_and_update_call_from_tree(ptr noundef %0, ptr noundef nonnull %11) #16
  br label %47

17:                                               ; preds = %5, %1
  %18 = tail call fastcc ptr @gimple_call_fn(ptr noundef %2) #16
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 50
  %22 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 40), align 8
  %23 = icmp ne ptr %22, null
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %47

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 121
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !9
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !11
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  %44 = tail call ptr %22(ptr noundef nonnull %18, ptr noundef %43) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  tail call fastcc void @gimple_call_set_fn(ptr noundef %2, ptr noundef nonnull %44) #16
  br label %47

47:                                               ; preds = %31, %25, %17, %10, %39, %16, %13, %46
  %48 = phi i8 [ 1, %46 ], [ 1, %13 ], [ 1, %16 ], [ 0, %39 ], [ 0, %10 ], [ 0, %17 ], [ 0, %25 ], [ 0, %31 ]
  ret i8 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 2655, ptr noundef nonnull @.str.3) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !11
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #16
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !11
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !11
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 2622, ptr noundef nonnull @.str.3) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #16
  ret ptr %9
}

; Function Attrs: optsize
declare void @gimple_set_lhs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @valid_gimple_rhs_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @maybe_fold_tmr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_vector_from_ctor(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_cond_set_condition_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_read_from_constant_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_fold_stmt_indirect(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 524288
  %6 = and i64 %4, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !9
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !11
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %3 ]
  %16 = tail call ptr @fold(ptr noundef %1) #17
  %17 = load ptr, ptr @global_trees, align 16
  br label %18

18:                                               ; preds = %26, %14
  %19 = phi ptr [ %16, %14 ], [ %24, %26 ]
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %32 [
    i16 116, label %22
    i16 113, label %22
    i16 117, label %22
  ]

22:                                               ; preds = %18, %18, %18
  %23 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = icmp eq ptr %24, %17
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %18, label %32, !llvm.loop !119

32:                                               ; preds = %18, %22, %26
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  store ptr %19, ptr %33, align 8, !tbaa !11
  %34 = tail call ptr @fold_read_from_constant_string(ptr noundef nonnull %0) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %115

36:                                               ; preds = %32
  %37 = load i64, ptr %19, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 66
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 23
  br i1 %45, label %46, label %115

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = load ptr, ptr @sizetype_tab, align 16, !tbaa !5
  %50 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %2, ptr noundef nonnull %42, i32 noundef 1) #17
  %51 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %49, ptr noundef %50) #17
  %52 = load i64, ptr %48, align 8
  br label %53

53:                                               ; preds = %46, %36
  %54 = phi i64 [ %37, %36 ], [ %52, %46 ]
  %55 = phi ptr [ %2, %36 ], [ %51, %46 ]
  %56 = phi ptr [ %19, %36 ], [ %48, %46 ]
  %57 = and i64 %54, 65535
  %58 = icmp eq i64 %57, 121
  br i1 %58, label %59, label %91

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !11
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 33
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_decl_common, ptr %61, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %67) #17
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %66, align 8, !tbaa !11
  br label %115

72:                                               ; preds = %65, %59
  %73 = tail call i32 @integer_zerop(ptr noundef %55) #17
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %115

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !11
  %78 = tail call ptr @maybe_fold_offset_to_reference(i32 noundef %15, ptr noundef nonnull %56, ptr noundef %55, ptr noundef %77) #16
  %79 = icmp eq ptr %78, null
  br i1 %79, label %114, label %80

80:                                               ; preds = %75
  %81 = load i64, ptr %78, align 8
  %82 = trunc i64 %81 to i16
  switch i16 %82, label %88 [
    i16 32, label %115
    i16 34, label %115
    i16 36, label %115
    i16 141, label %83
  ]

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.tree_ssa_name, ptr %78, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !11
  %86 = load i64, ptr %85, align 8
  %87 = trunc i64 %86 to i16
  switch i16 %87, label %88 [
    i16 32, label %115
    i16 34, label %115
    i16 36, label %115
  ]

88:                                               ; preds = %83, %80
  %89 = and i64 %81, -524289
  %90 = or disjoint i64 %89, %5
  store i64 %90, ptr %78, align 8
  br label %115

91:                                               ; preds = %53
  %92 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %56) #17
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 121
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.tree_exp, ptr %92, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !11
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 28
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  br label %115

104:                                              ; preds = %96, %91
  %105 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !11
  %107 = load i64, ptr %106, align 8
  %108 = trunc i64 %107 to i16
  switch i16 %108, label %114 [
    i16 10, label %109
    i16 12, label %109
  ]

109:                                              ; preds = %104, %104
  %110 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !11
  %112 = tail call ptr @maybe_fold_offset_to_reference(i32 noundef %15, ptr noundef nonnull %56, ptr noundef %55, ptr noundef %111) #16
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %75, %104, %109
  br label %115

115:                                              ; preds = %88, %80, %80, %80, %83, %83, %83, %72, %70, %40, %109, %32, %114, %102
  %116 = phi ptr [ null, %114 ], [ %103, %102 ], [ %34, %32 ], [ %112, %109 ], [ null, %40 ], [ %78, %88 ], [ %78, %80 ], [ %78, %80 ], [ %78, %80 ], [ %78, %83 ], [ %78, %83 ], [ %78, %83 ], [ %61, %72 ], [ %71, %70 ]
  ret ptr %116
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ccp_fold_builtin(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  %4 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #16, !range !44
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2593, ptr noundef nonnull @.str.3) #17
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #16
  %9 = icmp eq ptr %8, null
  %10 = zext i1 %9 to i8
  %11 = tail call ptr @fold_call_stmt(ptr noundef %0, i8 noundef zeroext %10) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  br i1 %9, label %14, label %181

14:                                               ; preds = %13
  %15 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %11) #17
  br label %181

16:                                               ; preds = %7
  %17 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #16
  %18 = getelementptr inbounds %struct.tree_function_decl, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 6144
  %21 = icmp eq i32 %20, 4096
  br i1 %21, label %181, label %22

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %181, label %25

25:                                               ; preds = %22
  %26 = and i32 %19, 2047
  switch i32 %26, label %181 [
    i32 345, label %31
    i32 360, label %31
    i32 361, label %31
    i32 341, label %27
    i32 349, label %27
    i32 529, label %28
    i32 531, label %28
    i32 530, label %28
    i32 532, label %28
    i32 537, label %28
    i32 535, label %29
    i32 533, label %29
    i32 538, label %30
    i32 540, label %30
  ]

27:                                               ; preds = %25, %25
  br label %31

28:                                               ; preds = %25, %25, %25, %25, %25
  br label %31

29:                                               ; preds = %25, %25
  br label %31

30:                                               ; preds = %25, %25
  br label %31

31:                                               ; preds = %25, %25, %25, %30, %29, %28, %27
  %32 = phi i32 [ 2, %30 ], [ 1, %29 ], [ 2, %28 ], [ 0, %27 ], [ 0, %25 ], [ 0, %25 ], [ 0, %25 ]
  %33 = phi i32 [ 1, %30 ], [ 1, %29 ], [ 2, %28 ], [ 1, %27 ], [ 0, %25 ], [ 0, %25 ], [ 0, %25 ]
  %34 = icmp slt i32 %33, %23
  br i1 %34, label %35, label %181

35:                                               ; preds = %31
  %36 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  tail call void @bitmap_clear(ptr noundef %36) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %37 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %33) #16
  %38 = zext nneg i32 %33 to i64
  %39 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 %38
  %40 = call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %37, ptr noundef nonnull %39, ptr noundef %36, i32 noundef %32) #16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store ptr null, ptr %39, align 8, !tbaa !5
  br label %43

43:                                               ; preds = %42, %35
  call void @bitmap_obstack_free(ptr noundef %36) #17
  %44 = load i32, ptr %18, align 8
  %45 = and i32 %44, 2047
  switch i32 %45, label %173 [
    i32 345, label %46
    i32 341, label %67
    i32 349, label %81
    i32 360, label %96
    i32 361, label %103
    i32 529, label %110
    i32 531, label %110
    i32 530, label %110
    i32 532, label %110
    i32 535, label %128
    i32 533, label %128
    i32 537, label %145
    i32 538, label %161
    i32 540, label %161
  ]

46:                                               ; preds = %43
  %47 = load ptr, ptr %2, align 16, !tbaa !5
  %48 = icmp ne ptr %47, null
  %49 = icmp eq i32 %23, 1
  %50 = and i1 %49, %48
  br i1 %50, label %51, label %174

51:                                               ; preds = %46
  %52 = call fastcc ptr @gimple_call_lhs(ptr noundef %0) #16
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = load ptr, ptr %2, align 16, !tbaa !5
  %56 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef %55) #17
  %57 = call zeroext i8 @is_gimple_val(ptr noundef %56) #17
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %181

59:                                               ; preds = %51
  %60 = call zeroext i8 @is_gimple_cast(ptr noundef %56) #17
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %174, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !11
  %65 = call zeroext i8 @is_gimple_val(ptr noundef %64) #17
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %174, label %181

67:                                               ; preds = %43
  %68 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %174, label %71

71:                                               ; preds = %67
  %72 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %69) #17
  %73 = icmp ne i8 %72, 0
  %74 = icmp eq i32 %23, 2
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %174

76:                                               ; preds = %71
  %77 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %78 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %79 = load ptr, ptr %68, align 8, !tbaa !5
  %80 = call ptr @fold_builtin_strcpy(i32 noundef %3, ptr noundef nonnull %17, ptr noundef %77, ptr noundef %78, ptr noundef %79) #17
  br label %175

81:                                               ; preds = %43
  %82 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = icmp eq ptr %83, null
  br i1 %84, label %174, label %85

85:                                               ; preds = %81
  %86 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %83) #17
  %87 = icmp ne i8 %86, 0
  %88 = icmp eq i32 %23, 3
  %89 = and i1 %88, %87
  br i1 %89, label %90, label %174

90:                                               ; preds = %85
  %91 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %92 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %93 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #16
  %94 = load ptr, ptr %82, align 8, !tbaa !5
  %95 = call ptr @fold_builtin_strncpy(i32 noundef %3, ptr noundef nonnull %17, ptr noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef %94) #17
  br label %175

96:                                               ; preds = %43
  %97 = icmp eq i32 %23, 2
  br i1 %97, label %98, label %174

98:                                               ; preds = %96
  %99 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %100 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %101 = load ptr, ptr %2, align 16, !tbaa !5
  %102 = call ptr @fold_builtin_fputs(i32 noundef %3, ptr noundef %99, ptr noundef %100, i8 noundef zeroext %10, i8 noundef zeroext 0, ptr noundef %101) #17
  br label %175

103:                                              ; preds = %43
  %104 = icmp eq i32 %23, 2
  br i1 %104, label %105, label %174

105:                                              ; preds = %103
  %106 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %107 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %108 = load ptr, ptr %2, align 16, !tbaa !5
  %109 = call ptr @fold_builtin_fputs(i32 noundef %3, ptr noundef %106, ptr noundef %107, i8 noundef zeroext %10, i8 noundef zeroext 1, ptr noundef %108) #17
  br label %175

110:                                              ; preds = %43, %43, %43, %43
  %111 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 2
  %112 = load ptr, ptr %111, align 16, !tbaa !5
  %113 = icmp eq ptr %112, null
  br i1 %113, label %174, label %114

114:                                              ; preds = %110
  %115 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %112) #17
  %116 = icmp ne i8 %115, 0
  %117 = icmp eq i32 %23, 4
  %118 = and i1 %117, %116
  br i1 %118, label %119, label %174

119:                                              ; preds = %114
  %120 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %121 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %122 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #16
  %123 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 3) #16
  %124 = load ptr, ptr %111, align 16, !tbaa !5
  %125 = load i32, ptr %18, align 8
  %126 = and i32 %125, 2047
  %127 = call ptr @fold_builtin_memory_chk(i32 noundef %3, ptr noundef nonnull %17, ptr noundef %120, ptr noundef %121, ptr noundef %122, ptr noundef %123, ptr noundef %124, i8 noundef zeroext %10, i32 noundef %126) #17
  br label %175

128:                                              ; preds = %43, %43
  %129 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !5
  %131 = icmp eq ptr %130, null
  br i1 %131, label %174, label %132

132:                                              ; preds = %128
  %133 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %130) #17
  %134 = icmp ne i8 %133, 0
  %135 = icmp eq i32 %23, 3
  %136 = and i1 %135, %134
  br i1 %136, label %137, label %174

137:                                              ; preds = %132
  %138 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %139 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %140 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #16
  %141 = load ptr, ptr %129, align 8, !tbaa !5
  %142 = load i32, ptr %18, align 8
  %143 = and i32 %142, 2047
  %144 = call ptr @fold_builtin_stxcpy_chk(i32 noundef %3, ptr noundef nonnull %17, ptr noundef %138, ptr noundef %139, ptr noundef %140, ptr noundef %141, i8 noundef zeroext %10, i32 noundef %143) #17
  br label %175

145:                                              ; preds = %43
  %146 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 2
  %147 = load ptr, ptr %146, align 16, !tbaa !5
  %148 = icmp eq ptr %147, null
  br i1 %148, label %174, label %149

149:                                              ; preds = %145
  %150 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %147) #17
  %151 = icmp ne i8 %150, 0
  %152 = icmp eq i32 %23, 4
  %153 = and i1 %152, %151
  br i1 %153, label %154, label %174

154:                                              ; preds = %149
  %155 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %156 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %157 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #16
  %158 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 3) #16
  %159 = load ptr, ptr %146, align 16, !tbaa !5
  %160 = call ptr @fold_builtin_strncpy_chk(i32 noundef %3, ptr noundef %155, ptr noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %159) #17
  br label %175

161:                                              ; preds = %43, %43
  %162 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !5
  %164 = icmp eq ptr %163, null
  br i1 %164, label %174, label %165

165:                                              ; preds = %161
  %166 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %163) #17
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %162, align 8, !tbaa !5
  %170 = load i32, ptr %18, align 8
  %171 = and i32 %170, 2047
  %172 = call ptr @gimple_fold_builtin_snprintf_chk(ptr noundef %0, ptr noundef %169, i32 noundef %171) #17
  br label %175

173:                                              ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 2759, ptr noundef nonnull @.str.3) #17
  br label %174

174:                                              ; preds = %173, %165, %161, %149, %145, %132, %128, %114, %110, %103, %96, %85, %81, %71, %67, %46, %62, %59
  br label %181

175:                                              ; preds = %168, %154, %137, %119, %105, %98, %90, %76
  %176 = phi ptr [ %172, %168 ], [ %160, %154 ], [ %144, %137 ], [ %127, %119 ], [ %109, %105 ], [ %102, %98 ], [ %95, %90 ], [ %80, %76 ]
  %177 = icmp ne ptr %176, null
  %178 = and i1 %9, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = call ptr @fold_ignored_result(ptr noundef nonnull %176) #17
  br label %181

181:                                              ; preds = %174, %175, %179, %62, %51, %31, %25, %22, %16, %13, %14
  %182 = phi ptr [ %15, %14 ], [ %11, %13 ], [ null, %16 ], [ null, %22 ], [ null, %25 ], [ null, %31 ], [ %56, %51 ], [ %56, %62 ], [ %180, %179 ], [ %176, %175 ], [ null, %174 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret ptr %182
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_and_update_call_from_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %6 = tail call ptr @gimple_seq_alloc() #17
  store ptr %6, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #18
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %8 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %7) #16, !range !44
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3366, ptr noundef nonnull @.str.3) #17
  br label %11

11:                                               ; preds = %2, %10
  %12 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %7) #16
  call void @push_gimplify_context(ptr noundef nonnull %5) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @gimplify_and_add(ptr noundef %1, ptr noundef nonnull %4) #17
  br label %17

15:                                               ; preds = %11
  %16 = call ptr @get_initialized_tmp_var(ptr noundef %1, ptr noundef nonnull %4, ptr noundef null) #17
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi ptr [ null, %14 ], [ %16, %15 ]
  call void @pop_gimplify_context(ptr noundef null) #17
  %19 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %7) #16, !range !44
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8, !tbaa !5
  %23 = call fastcc i32 @gimple_location(ptr noundef %7) #16
  call void @annotate_all_with_location(ptr noundef %22, i32 noundef %23) #17
  br label %24

24:                                               ; preds = %21, %17
  %25 = load ptr, ptr %4, align 8, !tbaa !5
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %25) #16
  %26 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !44
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %28
  %29 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  call void @find_new_referenced_vars(ptr noundef %29) #17
  call void @gsi_insert_before(ptr noundef %0, ptr noundef %29, i32 noundef 0) #17
  call void @mark_symbols_for_renaming(ptr noundef %29) #17
  call fastcc void @gsi_next(ptr noundef %0) #16
  call fastcc void @gsi_next(ptr noundef nonnull %3) #16
  %30 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !44
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %28, label %32, !llvm.loop !120

32:                                               ; preds = %28, %24
  br i1 %13, label %33, label %35

33:                                               ; preds = %32
  %34 = call ptr @gimple_build_nop() #17
  call void @unlink_stmt_vdef(ptr noundef %7) #17
  call void @release_defs(ptr noundef %7) #17
  br label %39

35:                                               ; preds = %32
  %36 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %12, ptr noundef %18) #17
  %37 = call fastcc ptr @gimple_vuse(ptr noundef %7) #16
  call fastcc void @gimple_set_vuse(ptr noundef %36, ptr noundef %37) #16
  %38 = call fastcc ptr @gimple_vdef(ptr noundef %7) #16
  call fastcc void @gimple_set_vdef(ptr noundef %36, ptr noundef %38) #16
  call void @move_ssa_defining_stmt_for_defs(ptr noundef %36, ptr noundef %7) #17
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi ptr [ %34, %33 ], [ %36, %35 ]
  %41 = call fastcc i32 @gimple_location(ptr noundef %7) #16
  call fastcc void @gimple_set_location(ptr noundef %40, i32 noundef %41) #16
  call void @gsi_replace(ptr noundef %0, ptr noundef %40, i8 noundef zeroext 0) #17
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_fn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare ptr @fold_call_stmt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @get_maxval_strlen(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  br label %5

5:                                                ; preds = %108, %4
  %6 = phi ptr [ %0, %4 ], [ %109, %108 ]
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %46 [
    i16 141, label %85
    i16 56, label %9
    i16 121, label %22
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = tail call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %80, %76, %79, %66, %72, %55, %48, %52, %9, %83, %97, %120, %117, %90, %103, %85, %16
  %15 = phi i8 [ %21, %16 ], [ 1, %83 ], [ 0, %9 ], [ 0, %52 ], [ 0, %48 ], [ 0, %55 ], [ 0, %72 ], [ 0, %66 ], [ 1, %79 ], [ 1, %76 ], [ 0, %80 ], [ 1, %97 ], [ 0, %117 ], [ 1, %120 ], [ 0, %90 ], [ 0, %103 ], [ 1, %85 ]
  ret i8 %15

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = tail call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %18, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i8
  br label %14

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 45
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = tail call i32 @integer_zerop(ptr noundef %30) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %23, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !11
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 47
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %108, label %46

46:                                               ; preds = %33, %40, %5, %22, %28
  %47 = icmp eq i32 %3, 2
  br i1 %47, label %48, label %55

48:                                               ; preds = %46
  %49 = load i64, ptr %6, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 23
  br i1 %51, label %52, label %14

52:                                               ; preds = %48
  %53 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %6) #17
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %14, label %61

55:                                               ; preds = %46
  %56 = tail call ptr @c_strlen(ptr noundef nonnull %6, i32 noundef 1) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %14, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %1, align 8, !tbaa !5
  %60 = icmp eq ptr %59, null
  br i1 %60, label %83, label %64

61:                                               ; preds = %52
  %62 = load ptr, ptr %1, align 8, !tbaa !5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %83, label %66

64:                                               ; preds = %58
  %65 = icmp sgt i32 %3, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61, %64
  %67 = phi ptr [ %56, %64 ], [ %6, %61 ]
  %68 = phi ptr [ %59, %64 ], [ %62, %61 ]
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 23
  br i1 %71, label %72, label %14

72:                                               ; preds = %66
  %73 = load i64, ptr %67, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 23
  br i1 %75, label %76, label %14

76:                                               ; preds = %72
  %77 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %68, ptr noundef nonnull %67) #17
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %14, label %79

79:                                               ; preds = %76
  store ptr %67, ptr %1, align 8, !tbaa !5
  br label %14

80:                                               ; preds = %64
  %81 = tail call i32 @simple_cst_equal(ptr noundef nonnull %56, ptr noundef nonnull %59) #17
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %14

83:                                               ; preds = %61, %80, %58
  %84 = phi ptr [ %6, %61 ], [ %56, %80 ], [ %56, %58 ]
  store ptr %84, ptr %1, align 8, !tbaa !5
  br label %14

85:                                               ; preds = %5
  %86 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !11
  %88 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %87) #17
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %14

90:                                               ; preds = %85
  %91 = load i32, ptr %86, align 8, !tbaa !11
  %92 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %91) #17
  %93 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !11
  %95 = tail call fastcc i32 @gimple_code(ptr noundef %94) #16, !range !48
  %96 = trunc i32 %95 to i8
  switch i8 %96, label %14 [
    i8 6, label %100
    i8 16, label %97
  ]

97:                                               ; preds = %90
  %98 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %94) #16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %14, label %110

100:                                              ; preds = %90
  %101 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %94) #17
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = tail call zeroext i8 @gimple_assign_unary_nop_p(ptr noundef %94) #17
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %14, label %106

106:                                              ; preds = %103, %100
  %107 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %94) #16
  br label %108

108:                                              ; preds = %106, %40
  %109 = phi ptr [ %107, %106 ], [ %42, %40 ]
  br label %5

110:                                              ; preds = %97, %120
  %111 = phi i32 [ %121, %120 ], [ 0, %97 ]
  %112 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %94, i32 noundef %111) #16
  %113 = getelementptr inbounds %struct.phi_arg_d, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !83
  %115 = tail call fastcc ptr @gimple_phi_result(ptr noundef %94) #16
  %116 = icmp eq ptr %114, %115
  br i1 %116, label %120, label %117

117:                                              ; preds = %110
  %118 = tail call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %114, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %14, label %120

120:                                              ; preds = %110, %117
  %121 = add nuw i32 %111, 1
  %122 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %94) #16
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %110, label %14, !llvm.loop !121
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_cast(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_builtin_strcpy(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_builtin_strncpy(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_builtin_fputs(i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_builtin_memory_chk(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_builtin_stxcpy_chk(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_builtin_strncpy_chk(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_fold_builtin_snprintf_chk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_ignored_result(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @c_strlen(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_unary_nop_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #3

; Function Attrs: optsize
declare void @push_gimplify_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_initialized_tmp_var(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pop_gimplify_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @annotate_all_with_location(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #16
  store ptr %3, ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !89
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #16
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !90
  ret void
}

; Function Attrs: optsize
declare void @find_new_referenced_vars(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #3

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !44
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1407, ptr noundef nonnull @.str.3) #17
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vdef(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !44
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1416, ptr noundef nonnull @.str.3) #17
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare void @move_ssa_defining_stmt_for_defs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_remove_stmt_histograms(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @optimize_stack_restore(ptr nocapture noundef byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %4) #16, !range !48
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %89

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %4) #16
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %89

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %89

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 10
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = tail call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 12
  br i1 %28, label %29, label %89

29:                                               ; preds = %22, %15
  call fastcc void @gsi_next(ptr noundef nonnull %0) #16
  %30 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16, !range !44
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %29, %46
  %33 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %34 = tail call fastcc i32 @gimple_code(ptr noundef %33) #16, !range !48
  %35 = trunc i32 %34 to i8
  switch i8 %35, label %46 [
    i8 7, label %89
    i8 8, label %36
  ]

36:                                               ; preds = %32
  %37 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %33) #16
  %38 = icmp eq ptr %37, null
  br i1 %38, label %89, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.tree_function_decl, ptr %37, i64 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 6144
  %43 = icmp eq i32 %42, 6144
  br i1 %43, label %44, label %89

44:                                               ; preds = %39
  %45 = and i32 %41, 2047
  switch i32 %45, label %46 [
    i32 415, label %89
    i32 527, label %63
  ]

46:                                               ; preds = %32, %44
  call fastcc void @gsi_next(ptr noundef nonnull %0) #16
  %47 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16, !range !44
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %32, label %49, !llvm.loop !122

49:                                               ; preds = %46, %29
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !123
  %52 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %51) #16
  switch i32 %52, label %89 [
    i32 0, label %63
    i32 1, label %53
  ]

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %3) #16
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !81
  %57 = load ptr, ptr @cfun, align 8, !tbaa !5
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !56
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !61
  %62 = icmp eq ptr %56, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %44, %49, %53
  %64 = tail call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %65 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %64) #16
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %63
  %68 = tail call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %69 = getelementptr inbounds %struct.tree_ssa_name, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !11
  %71 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %70) #16, !range !44
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %67
  %74 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %70) #16
  %75 = icmp eq ptr %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tree_function_decl, ptr %74, i64 0, i32 5
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 8191
  %80 = icmp eq i32 %79, 6670
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %70) #17
  %82 = call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %83 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !11
  %85 = call ptr @build_int_cst(ptr noundef %84, i64 noundef 0) #17
  %86 = call zeroext i8 @update_call_from_tree(ptr noundef nonnull %2, ptr noundef %85) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %87

87:                                               ; preds = %67, %81, %76, %73, %63
  %88 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  br label %89

89:                                               ; preds = %32, %44, %36, %39, %49, %53, %1, %7, %10, %22, %87
  %90 = phi ptr [ %88, %87 ], [ null, %22 ], [ null, %10 ], [ null, %7 ], [ null, %1 ], [ null, %53 ], [ null, %49 ], [ null, %39 ], [ null, %36 ], [ null, %44 ], [ null, %32 ]
  ret ptr %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @optimize_stdarg_builtin(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %94

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #16
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 70), align 8, !tbaa !124
  %8 = tail call ptr %7(ptr noundef %6) #17
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %19 [
    i16 10, label %11
    i16 12, label %11
  ]

11:                                               ; preds = %5, %5
  %12 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !5
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @integer_types, align 16, !tbaa !5
  %18 = icmp ne ptr %13, %17
  br label %19

19:                                               ; preds = %5, %11, %16
  %20 = phi i1 [ false, %11 ], [ %18, %16 ], [ true, %5 ]
  %21 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %22 = load i32, ptr %21, align 8
  %23 = and i32 %22, 2047
  switch i32 %23, label %93 [
    i32 515, label %24
    i32 513, label %58
    i32 514, label %91
  ]

24:                                               ; preds = %19
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 72), align 8
  %26 = icmp ne ptr %25, null
  %27 = select i1 %20, i1 true, i1 %26
  %28 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 492), align 16
  %29 = icmp eq ptr %28, null
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %94, label %31

31:                                               ; preds = %24
  %32 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %94

34:                                               ; preds = %31
  %35 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %36 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %94 [
    i16 10, label %40
    i16 12, label %40
  ]

40:                                               ; preds = %34, %34
  %41 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 16
  %46 = load ptr, ptr %45, align 8, !tbaa !11
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %40
  %49 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %2, ptr noundef nonnull %35) #17
  %50 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 492), align 16, !tbaa !5
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  %52 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %2, ptr noundef %50, i32 noundef 1, ptr noundef %51) #17
  %53 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = tail call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %54, ptr noundef %52) #17
  %56 = load ptr, ptr %53, align 8, !tbaa !11
  %57 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %56, ptr noundef %49, ptr noundef %55) #17
  br label %94

58:                                               ; preds = %19
  br i1 %20, label %94, label %59

59:                                               ; preds = %58
  %60 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %94

62:                                               ; preds = %59
  %63 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %64 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !11
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i16
  switch i16 %67, label %94 [
    i16 10, label %68
    i16 12, label %68
  ]

68:                                               ; preds = %62, %62
  %69 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !11
  %71 = getelementptr inbounds %struct.tree_type, ptr %70, i64 0, i32 16
  %72 = load ptr, ptr %71, align 8, !tbaa !11
  %73 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 16
  %74 = load ptr, ptr %73, align 8, !tbaa !11
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %68
  %77 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %2, ptr noundef nonnull %63) #17
  %78 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %79 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !11
  %81 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 16
  %82 = load ptr, ptr %81, align 8, !tbaa !11
  %83 = load ptr, ptr %73, align 8, !tbaa !11
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !11
  %88 = tail call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %87, ptr noundef nonnull %78) #17
  %89 = load ptr, ptr %86, align 8, !tbaa !11
  %90 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %89, ptr noundef %77, ptr noundef %88) #17
  br label %94

91:                                               ; preds = %19
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !5
  br label %94

93:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3339, ptr noundef nonnull @.str.3) #17
  br label %94

94:                                               ; preds = %76, %68, %62, %59, %58, %40, %34, %31, %24, %1, %93, %91, %85, %48
  %95 = phi ptr [ null, %93 ], [ %92, %91 ], [ %90, %85 ], [ %57, %48 ], [ null, %1 ], [ null, %24 ], [ null, %31 ], [ null, %34 ], [ null, %40 ], [ null, %58 ], [ null, %59 ], [ null, %62 ], [ null, %68 ], [ null, %76 ]
  ret ptr %95
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !44
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !125
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !44
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 645, ptr noundef nonnull @.str.3) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !123
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #16
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #16, !range !44
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #17
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !48
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !6, i64 1112}
!13 = !{!"gcc_target", !14, i64 0, !16, i64 368, !17, i64 664, !10, i64 744, !6, i64 752, !6, i64 760, !6, i64 768, !6, i64 776, !6, i64 784, !6, i64 792, !6, i64 800, !6, i64 808, !6, i64 816, !6, i64 824, !6, i64 832, !6, i64 840, !6, i64 848, !6, i64 856, !6, i64 864, !6, i64 872, !6, i64 880, !6, i64 888, !6, i64 896, !6, i64 904, !6, i64 912, !6, i64 920, !6, i64 928, !6, i64 936, !6, i64 944, !6, i64 952, !6, i64 960, !6, i64 968, !6, i64 976, !6, i64 984, !6, i64 992, !6, i64 1000, !6, i64 1008, !6, i64 1016, !6, i64 1024, !6, i64 1032, !6, i64 1040, !6, i64 1048, !6, i64 1056, !18, i64 1064, !18, i64 1072, !6, i64 1080, !6, i64 1088, !6, i64 1096, !6, i64 1104, !6, i64 1112, !6, i64 1120, !6, i64 1128, !6, i64 1136, !6, i64 1144, !6, i64 1152, !6, i64 1160, !6, i64 1168, !19, i64 1176, !6, i64 1232, !6, i64 1240, !6, i64 1248, !6, i64 1256, !6, i64 1264, !6, i64 1272, !6, i64 1280, !6, i64 1288, !6, i64 1296, !6, i64 1304, !6, i64 1312, !6, i64 1320, !6, i64 1328, !6, i64 1336, !6, i64 1344, !6, i64 1352, !6, i64 1360, !6, i64 1368, !6, i64 1376, !6, i64 1384, !6, i64 1392, !6, i64 1400, !6, i64 1408, !6, i64 1416, !6, i64 1424, !6, i64 1432, !6, i64 1440, !6, i64 1448, !6, i64 1456, !18, i64 1464, !20, i64 1472, !6, i64 1664, !6, i64 1672, !6, i64 1680, !6, i64 1688, !6, i64 1696, !6, i64 1704, !6, i64 1712, !6, i64 1720, !6, i64 1728, !6, i64 1736, !6, i64 1744, !6, i64 1752, !6, i64 1760, !6, i64 1768, !6, i64 1776, !21, i64 1784, !22, i64 1792, !23, i64 1896, !24, i64 1968, !6, i64 2016, !7, i64 2024, !7, i64 2025, !7, i64 2026, !7, i64 2027, !7, i64 2028, !7, i64 2029, !7, i64 2030, !7, i64 2031, !7, i64 2032, !7, i64 2033, !7, i64 2034, !7, i64 2035}
!14 = !{!"asm_out", !6, i64 0, !6, i64 8, !6, i64 16, !15, i64 24, !15, i64 56, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !6, i64 336, !6, i64 344, !6, i64 352, !6, i64 360}
!15 = !{!"asm_int_op", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!16 = !{!"sched", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!17 = !{!"vectorize", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!18 = !{!"long", !7, i64 0}
!19 = !{!"addr_space", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!20 = !{!"calls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184}
!21 = !{!"c", !6, i64 0}
!22 = !{!"cxx", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96}
!23 = !{!"emutls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !7, i64 64, !7, i64 65}
!24 = !{!"target_option_hooks", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40}
!25 = !{!26, !6, i64 24}
!26 = !{!"function", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !6, i64 128, !10, i64 136, !10, i64 137, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139}
!27 = !{!28, !6, i64 0}
!28 = !{!"gimple_df", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !29, i64 32, !29, i64 48, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !10, i64 96, !30, i64 104}
!29 = !{!"pt_solution", !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !10, i64 0, !6, i64 8}
!30 = !{!"ssa_operands", !6, i64 0, !10, i64 8, !10, i64 12, !7, i64 16, !6, i64 24, !6, i64 32}
!31 = !{!32, !10, i64 0}
!32 = !{!"prop_value_d", !10, i64 0, !6, i64 8}
!33 = !{!32, !6, i64 8}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!37, !6, i64 8}
!37 = !{!"constructor_elt_d", !6, i64 0, !6, i64 8}
!38 = !{!37, !6, i64 0}
!39 = distinct !{!39, !35}
!40 = !{i64 0, i64 4, !9, i64 8, i64 8, !5}
!41 = !{i64 0, i64 8, !5}
!42 = !{!43, !10, i64 0}
!43 = !{!"VEC_constructor_elt_base", !10, i64 0, !10, i64 4, !7, i64 8}
!44 = !{i8 0, i8 2}
!45 = !{!18, !18, i64 0}
!46 = distinct !{!46, !35}
!47 = !{i32 0, i32 65536}
!48 = !{i32 0, i32 256}
!49 = distinct !{!49, !35}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35}
!52 = !{!53, !6, i64 0}
!53 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!54 = !{!55, !6, i64 0}
!55 = !{!"gimple_seq_node_d", !6, i64 0, !6, i64 8, !6, i64 16}
!56 = !{!26, !6, i64 8}
!57 = !{!58, !6, i64 0}
!58 = !{!"control_flow_graph", !6, i64 0, !6, i64 8, !6, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !6, i64 40, !10, i64 48, !7, i64 52, !7, i64 60, !10, i64 68, !10, i64 72}
!59 = !{!60, !6, i64 56}
!60 = !{!"basic_block_def", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !6, i64 48, !6, i64 56, !7, i64 64, !18, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96}
!61 = !{!58, !6, i64 8}
!62 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5}
!63 = distinct !{!63, !35}
!64 = distinct !{!64, !35}
!65 = !{i64 0, i64 4, !9, i64 0, i64 4, !9, i64 0, i64 4, !9, i64 0, i64 4, !9, i64 0, i64 4, !9, i64 0, i64 4, !9, i64 8, i64 24, !11}
!66 = !{!67, !7, i64 49}
!67 = !{!"real_format", !6, i64 0, !6, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !7, i64 44, !7, i64 45, !7, i64 46, !7, i64 47, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51}
!68 = !{!67, !7, i64 46}
!69 = !{!28, !6, i64 16}
!70 = distinct !{!70, !35}
!71 = distinct !{!71, !35}
!72 = distinct !{!72, !35}
!73 = distinct !{!73, !35}
!74 = distinct !{!74, !35}
!75 = !{i32 0, i32 3}
!76 = !{i32 1, i32 3}
!77 = distinct !{!77, !35}
!78 = !{!79, !6, i64 0}
!79 = !{!"edge_def", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24, !6, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !18, i64 56}
!80 = !{!60, !10, i64 80}
!81 = !{!79, !6, i64 8}
!82 = !{!79, !10, i64 48}
!83 = !{!84, !6, i64 32}
!84 = !{!"phi_arg_d", !85, i64 0, !6, i64 32, !10, i64 40}
!85 = !{!"ssa_use_operand_d", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 24}
!86 = distinct !{!86, !35}
!87 = !{!88, !10, i64 0}
!88 = !{!"VEC_tree_base", !10, i64 0, !10, i64 4, !7, i64 8}
!89 = !{!53, !6, i64 8}
!90 = !{!53, !6, i64 16}
!91 = !{!92, !10, i64 4}
!92 = !{!"ssa_operand_iterator_d", !7, i64 0, !10, i64 4, !6, i64 8, !6, i64 16, !10, i64 24, !10, i64 28, !6, i64 32}
!93 = !{!92, !7, i64 0}
!94 = !{!92, !6, i64 16}
!95 = !{!96, !6, i64 0}
!96 = !{!"use_optype_d", !6, i64 0, !85, i64 8}
!97 = !{!92, !6, i64 8}
!98 = !{!99, !6, i64 8}
!99 = !{!"def_optype_d", !6, i64 0, !6, i64 8}
!100 = !{!99, !6, i64 0}
!101 = !{!55, !6, i64 16}
!102 = !{!60, !10, i64 96}
!103 = !{!104, !6, i64 0}
!104 = !{!"gimple_bb_info", !6, i64 0, !6, i64 8}
!105 = !{!106, !6, i64 0}
!106 = !{!"gimple_seq_d", !6, i64 0, !6, i64 8, !6, i64 16}
!107 = !{!85, !6, i64 24}
!108 = !{i32 1, i32 4}
!109 = distinct !{!109, !35}
!110 = distinct !{!110, !35}
!111 = distinct !{!111, !35}
!112 = distinct !{!112, !35}
!113 = distinct !{!113, !35}
!114 = !{!60, !6, i64 0}
!115 = distinct !{!115, !35}
!116 = distinct !{!116, !35}
!117 = distinct !{!117, !35}
!118 = distinct !{!118, !35}
!119 = distinct !{!119, !35}
!120 = distinct !{!120, !35}
!121 = distinct !{!121, !35}
!122 = distinct !{!122, !35}
!123 = !{!60, !6, i64 8}
!124 = !{!13, !6, i64 1328}
!125 = !{!126, !10, i64 0}
!126 = !{!"VEC_edge_base", !10, i64 0, !10, i64 4, !7, i64 8}
!127 = !{!85, !6, i64 8}
