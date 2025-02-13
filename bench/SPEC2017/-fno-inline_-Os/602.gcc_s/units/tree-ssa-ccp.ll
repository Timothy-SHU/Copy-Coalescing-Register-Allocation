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
%struct.real_value = type { i32, [3 x i64] }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimplify_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%sUNINITIALIZED\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%sUNDEFINED\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%sVARYING\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%sCONSTANT \00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"tree-ssa-ccp.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@const_val = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@pass_ccp = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.9, ptr @gate_ccp, ptr @do_ssa_ccp, ptr null, ptr null, i32 0, i32 65, i32 40, i32 0, i32 0, i32 0, i32 23 } }, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"ccp\00", align 1
@flag_tree_ccp = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"\0AVisiting statement:\0A\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"No interesting values produced.  Marked VARYING.\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"which is likely \00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"VARYING\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Lattice value changed to \00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c".  Adding SSA edges to worklist.\0A\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"\0AVisiting PHI node: \00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"\0A    Argument #%d (%d -> %d %sexecutable)\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"\09Value: \00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"\0A    PHI node value: \00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@pass_fold_builtins = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.26, ptr null, ptr @execute_fold_all_builtins, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 2053 } }, align 8
@.str.26 = private unnamed_addr constant [4 x i8] c"fab\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Simplified\0A  \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"to\0A  \00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@switch.table.likely_value = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 3, i32 1], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_lattice_value(i32 %0, ptr %1) local_unnamed_addr #0 !prof !552 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !553
  tail call fastcc void @dump_lattice_value(ptr noundef %3, ptr noundef nonnull @.str, i32 %0, ptr %1) #16
  %4 = load ptr, ptr @stderr, align 8, !tbaa !553
  %5 = tail call i32 @fputc(i32 10, ptr %4)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_lattice_value(ptr noundef %0, ptr noundef %1, i32 %2, ptr %3) unnamed_addr #0 !prof !552 !PGOFuncName !557 {
  switch i32 %2, label %14 [
    i32 0, label %5
    i32 1, label %7
    i32 3, label %9
    i32 2, label %11
  ]

5:                                                ; preds = %4
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %1) #16
  br label %15

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %1) #16
  br label %15

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1) #16
  br label %15

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %1) #16
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !558
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %3, i32 noundef %13) #17
  br label %15

14:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 255, ptr noundef nonnull @.str.7) #17
  br label %15

15:                                               ; preds = %14, %11, %9, %7, %5
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_symbol_constant_value(ptr noundef %0) local_unnamed_addr #0 !prof !560 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %61, label %5, !prof !561

5:                                                ; preds = %1
  %6 = and i64 %2, 1048576
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 65535
  %9 = icmp eq i64 %8, 33
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %61, !prof !562

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !563
  %14 = icmp eq ptr %13, null
  br i1 %14, label %41, label %15, !prof !564

15:                                               ; preds = %11
  %16 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %13) #17
  %17 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %16) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %39, label %19, !prof !565

19:                                               ; preds = %15
  %20 = load i64, ptr %16, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 121
  br i1 %22, label %23, label %61, !prof !566

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !563
  %26 = tail call ptr @get_base_address(ptr noundef %25) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %61, label %28, !prof !567

28:                                               ; preds = %23
  %29 = load i64, ptr %26, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 32
  br i1 %31, label %32, label %61, !prof !567

32:                                               ; preds = %28
  %33 = or i64 %29, 262144
  store i64 %33, ptr %26, align 8
  %34 = load ptr, ptr @cfun, align 8, !tbaa !553
  %35 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %34) #16
  %36 = icmp eq ptr %35, null
  br i1 %36, label %61, label %37

37:                                               ; preds = %32
  %38 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %26) #17
  br label %61

39:                                               ; preds = %15
  %40 = icmp eq ptr %16, null
  br i1 %40, label %41, label %61, !prof !568

41:                                               ; preds = %11, %39
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 33554432
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %61, !prof !569

46:                                               ; preds = %41
  %47 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !570
  %48 = tail call zeroext i8 %47(ptr noundef nonnull %0) #17
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %61, label %50, !prof !583

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !563
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 65534
  %56 = add nsw i32 %55, -6
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %58, label %61, !prof !584

58:                                               ; preds = %50
  %59 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !553
  %60 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %52, ptr noundef %59) #17
  br label %61

61:                                               ; preds = %19, %32, %37, %28, %23, %58, %1, %5, %50, %39, %41, %46
  %62 = phi ptr [ null, %46 ], [ null, %41 ], [ null, %39 ], [ null, %50 ], [ null, %5 ], [ null, %1 ], [ %16, %19 ], [ %16, %32 ], [ %16, %37 ], [ %16, %28 ], [ %16, %23 ], [ %60, %58 ]
  ret ptr %62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !552 !PGOFuncName !585 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !586
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !588
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @may_propagate_address_into_dereference(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !592 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -47
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %8, label %12, !prof !593

8:                                                ; preds = %2
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 121
  br i1 %11, label %13, label %12, !prof !594

12:                                               ; preds = %2, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 895, ptr noundef nonnull @.str.7) #17
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !563
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !563
  %18 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !563
  %20 = icmp eq ptr %19, null
  br i1 %20, label %61, label %21, !prof !595

21:                                               ; preds = %13
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27, !prof !596

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !563
  br label %44

27:                                               ; preds = %21
  %28 = load i64, ptr %1, align 8
  %29 = and i64 %28, 524288
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %37, label %31, !prof !597

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !563
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 524288
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %31, %27
  %38 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !563
  %40 = load ptr, ptr %14, align 8, !tbaa !563
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !563
  %43 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %39, ptr noundef %42) #17
  br label %61

44:                                               ; preds = %24, %31
  %45 = phi ptr [ %26, %24 ], [ %33, %31 ]
  %46 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !563
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !563
  %50 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %49, ptr noundef %45) #17
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %61, label %52, !prof !598

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !563
  %55 = load ptr, ptr %14, align 8, !tbaa !563
  %56 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !563
  %58 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %54, ptr noundef %57) #17
  %59 = icmp ne i8 %58, 0
  %60 = zext i1 %59 to i8
  br label %61

61:                                               ; preds = %44, %52, %13, %37
  %62 = phi i8 [ %43, %37 ], [ 0, %13 ], [ 0, %44 ], [ %60, %52 ]
  ret i8 %62
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_const_aggregate_ref(ptr noundef %0) local_unnamed_addr #0 !prof !599 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !558
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %10, !prof !600

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
  ], !prof !601

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !563
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %331 [
    i16 32, label %19
    i16 45, label %35
    i16 41, label %35
    i16 28, label %43
    i16 51, label %43
  ], !prof !602

19:                                               ; preds = %14
  %20 = and i64 %17, 1048576
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %331, label %22, !prof !603

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !563
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 15
  br i1 %27, label %28, label %331, !prof !604

28:                                               ; preds = %22
  %29 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !570
  %30 = tail call zeroext i8 %29(ptr noundef nonnull %16) #17
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %331, label %32, !prof !605

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !563
  br label %37

35:                                               ; preds = %14, %14
  %36 = tail call ptr @fold_const_aggregate_ref(ptr noundef nonnull %16) #16
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi ptr [ %36, %35 ], [ %34, %32 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %331, label %40, !prof !606

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
  ], !prof !607

47:                                               ; preds = %43, %43
  %48 = and i64 %45, 67108864
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %331, label %50, !prof !608

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !563
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i16
  switch i16 %54, label %331 [
    i16 141, label %55
    i16 23, label %69
  ], !prof !609

55:                                               ; preds = %50
  %56 = tail call fastcc ptr @get_value(ptr noundef nonnull %52) #16
  %57 = icmp eq ptr %56, null
  br i1 %57, label %331, label %58, !prof !610

58:                                               ; preds = %55
  %59 = load i32, ptr %56, align 8, !tbaa !611
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %331, !prof !613

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.prop_value_d, ptr %56, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !614
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 23
  br i1 %66, label %67, label %331, !prof !615

67:                                               ; preds = %61
  %68 = load i64, ptr %46, align 8
  br label %69

69:                                               ; preds = %67, %50
  %70 = phi i64 [ %45, %50 ], [ %68, %67 ]
  %71 = phi ptr [ %52, %50 ], [ %63, %67 ]
  %72 = and i64 %70, 65535
  %73 = icmp eq i64 %72, 28
  br i1 %73, label %79, label %74, !prof !616

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.tree_constructor, ptr %46, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !563
  %77 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %76) #16
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %331, label %172, !prof !617

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !563
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 14
  br i1 %84, label %85, label %87, !prof !618

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
  %95 = load ptr, ptr %94, align 8, !tbaa !563
  %96 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !563
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 65535
  %100 = icmp eq i64 %99, 14
  br i1 %100, label %101, label %103, !prof !618

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
  br i1 %110, label %111, label %331, !prof !619

111:                                              ; preds = %108
  %112 = load ptr, ptr %94, align 8, !tbaa !563
  %113 = getelementptr inbounds %struct.tree_common, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !563
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 14
  br i1 %117, label %118, label %120, !prof !618

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
  %129 = load i8, ptr %128, align 1, !tbaa !563
  %130 = icmp eq i8 %129, 2
  br i1 %130, label %131, label %331, !prof !619

131:                                              ; preds = %125
  %132 = load ptr, ptr %94, align 8, !tbaa !563
  %133 = getelementptr inbounds %struct.tree_common, ptr %132, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !563
  %135 = load i64, ptr %134, align 8
  %136 = and i64 %135, 65535
  %137 = icmp eq i64 %136, 14
  br i1 %137, label %138, label %140, !prof !618

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
  %149 = load i8, ptr %148, align 1, !tbaa !563
  %150 = icmp eq i8 %149, 1
  br i1 %150, label %151, label %331, !prof !619

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.tree_string, ptr %46, i64 0, i32 1
  %153 = load i32, ptr %152, align 8, !tbaa !563
  %154 = sext i32 %153 to i64
  %155 = tail call i32 @compare_tree_int(ptr noundef nonnull %71, i64 noundef %154) #17
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %331, !prof !619

157:                                              ; preds = %151
  %158 = load ptr, ptr %80, align 8, !tbaa !563
  %159 = getelementptr inbounds %struct.tree_string, ptr %46, i64 0, i32 2
  %160 = getelementptr inbounds %struct.tree_int_cst, ptr %71, i64 0, i32 1
  %161 = load i64, ptr %160, align 8, !tbaa !563
  %162 = getelementptr inbounds i8, ptr %159, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !563
  %164 = sext i8 %163 to i64
  %165 = tail call ptr @build_int_cst_type(ptr noundef %158, i64 noundef %164) #17
  br label %331

166:                                              ; preds = %172
  %167 = add nuw nsw i64 %174, 1
  %168 = load ptr, ptr %75, align 8, !tbaa !563
  %169 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %168) #16
  %170 = zext i32 %169 to i64
  %171 = icmp ult i64 %167, %170
  br i1 %171, label %172, label %331, !prof !620, !llvm.loop !621

172:                                              ; preds = %74, %166
  %173 = phi ptr [ %168, %166 ], [ %76, %74 ]
  %174 = phi i64 [ %167, %166 ], [ 0, %74 ]
  %175 = trunc i64 %174 to i32
  %176 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %173, i32 noundef %175) #16
  %177 = getelementptr inbounds %struct.constructor_elt_d, ptr %176, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !623
  %179 = load ptr, ptr %176, align 8, !tbaa !625
  %180 = tail call i32 @tree_int_cst_equal(ptr noundef %179, ptr noundef nonnull %71) #17
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %166, label %182, !prof !626

182:                                              ; preds = %172
  %183 = tail call ptr @tree_strip_nop_conversions(ptr noundef %178) #17
  %184 = load i64, ptr %183, align 8
  %185 = and i64 %184, 65535
  %186 = icmp eq i64 %185, 121
  br i1 %186, label %187, label %331, !prof !627

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.tree_exp, ptr %183, i64 0, i32 3
  %189 = load ptr, ptr %188, align 8, !tbaa !563
  %190 = tail call ptr @get_base_address(ptr noundef %189) #17
  %191 = icmp eq ptr %190, null
  br i1 %191, label %331, label %192, !prof !617

192:                                              ; preds = %187
  %193 = load i64, ptr %190, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 32
  br i1 %195, label %196, label %331, !prof !628

196:                                              ; preds = %192
  %197 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %190) #17
  br label %331

198:                                              ; preds = %10
  %199 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !563
  %201 = load i64, ptr %200, align 8
  %202 = trunc i64 %201 to i16
  switch i16 %202, label %331 [
    i16 32, label %203
    i16 45, label %219
    i16 41, label %219
  ], !prof !629

203:                                              ; preds = %198
  %204 = and i64 %201, 1048576
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %331, label %206, !prof !630

206:                                              ; preds = %203
  %207 = getelementptr inbounds %struct.tree_common, ptr %200, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !563
  %209 = load i64, ptr %208, align 8
  %210 = and i64 %209, 65535
  %211 = icmp eq i64 %210, 16
  br i1 %211, label %212, label %331, !prof !631

212:                                              ; preds = %206
  %213 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !570
  %214 = tail call zeroext i8 %213(ptr noundef nonnull %200) #17
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %331, label %216, !prof !632

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.tree_decl_common, ptr %200, i64 0, i32 5
  %218 = load ptr, ptr %217, align 8, !tbaa !563
  br label %221

219:                                              ; preds = %198, %198
  %220 = tail call ptr @fold_const_aggregate_ref(ptr noundef nonnull %200) #16
  br label %221

221:                                              ; preds = %219, %216
  %222 = phi ptr [ %220, %219 ], [ %218, %216 ]
  %223 = icmp eq ptr %222, null
  br i1 %223, label %331, label %224, !prof !633

224:                                              ; preds = %221
  %225 = load i64, ptr %222, align 8
  %226 = and i64 %225, 67174399
  %227 = icmp eq i64 %226, 67108915
  br i1 %227, label %228, label %331, !prof !634

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %230 = load ptr, ptr %229, align 8, !tbaa !563
  %231 = getelementptr inbounds %struct.tree_constructor, ptr %222, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !563
  %233 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %232) #16
  %234 = zext i32 %233 to i64
  %235 = icmp eq i32 %233, 0
  br i1 %235, label %331, label %236, !prof !617

236:                                              ; preds = %228
  %237 = getelementptr inbounds %struct.tree_decl_common, ptr %230, i64 0, i32 2
  br label %238

238:                                              ; preds = %236, %266
  %239 = phi i64 [ %267, %266 ], [ 0, %236 ]
  %240 = trunc i64 %239 to i32
  %241 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %232, i32 noundef %240) #16
  %242 = load ptr, ptr %241, align 8, !tbaa !625
  %243 = icmp eq ptr %242, %230
  br i1 %243, label %244, label %266, !prof !635

244:                                              ; preds = %238
  %245 = load i64, ptr %237, align 8
  %246 = and i64 %245, 33554432
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %266, !prof !636

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.constructor_elt_d, ptr %241, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !623
  %251 = tail call ptr @tree_strip_nop_conversions(ptr noundef %250) #17
  %252 = load i64, ptr %251, align 8
  %253 = and i64 %252, 65535
  %254 = icmp eq i64 %253, 121
  br i1 %254, label %255, label %331, !prof !637

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.tree_exp, ptr %251, i64 0, i32 3
  %257 = load ptr, ptr %256, align 8, !tbaa !563
  %258 = tail call ptr @get_base_address(ptr noundef %257) #17
  %259 = icmp eq ptr %258, null
  br i1 %259, label %331, label %260, !prof !638

260:                                              ; preds = %255
  %261 = load i64, ptr %258, align 8
  %262 = and i64 %261, 65535
  %263 = icmp eq i64 %262, 32
  br i1 %263, label %264, label %331, !prof !639

264:                                              ; preds = %260
  %265 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %258) #17
  br label %331

266:                                              ; preds = %238, %244
  %267 = add nuw nsw i64 %239, 1
  %268 = icmp eq i64 %267, %234
  br i1 %268, label %331, label %238, !prof !640, !llvm.loop !641

269:                                              ; preds = %10, %10
  %270 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !563
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
  %282 = load i32, ptr %281, align 4, !tbaa !558
  %283 = add i32 %282, -4
  %284 = icmp ult i32 %283, 7
  br i1 %284, label %285, label %288

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 1
  %287 = load i32, ptr %286, align 8, !tbaa !563
  br label %288

288:                                              ; preds = %285, %278
  %289 = phi i32 [ %287, %285 ], [ 0, %278 ]
  %290 = trunc i64 %279 to i32
  %291 = and i32 %290, 65535
  %292 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !563
  %294 = tail call ptr @fold_build1_stat_loc(i32 noundef %289, i32 noundef %291, ptr noundef %293, ptr noundef nonnull %272) #17
  br label %331

295:                                              ; preds = %10
  %296 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !563
  %298 = load i64, ptr %297, align 8
  %299 = and i64 %298, 65535
  %300 = icmp eq i64 %299, 141
  br i1 %300, label %301, label %331, !prof !642

301:                                              ; preds = %295
  %302 = tail call fastcc ptr @get_value(ptr noundef nonnull %297) #16
  %303 = icmp eq ptr %302, null
  br i1 %303, label %331, label %304, !prof !643

304:                                              ; preds = %301
  %305 = load i32, ptr %302, align 8, !tbaa !611
  %306 = icmp eq i32 %305, 2
  br i1 %306, label %307, label %331, !prof !644

307:                                              ; preds = %304
  %308 = getelementptr inbounds %struct.prop_value_d, ptr %302, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !614
  %310 = load i64, ptr %309, align 8
  %311 = and i64 %310, 65535
  %312 = icmp eq i64 %311, 121
  br i1 %312, label %313, label %331, !prof !645

313:                                              ; preds = %307
  %314 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !563
  %316 = getelementptr inbounds %struct.tree_common, ptr %309, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !563
  %318 = getelementptr inbounds %struct.tree_common, ptr %317, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !563
  %320 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %315, ptr noundef %319) #17
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %331, label %322, !prof !646

322:                                              ; preds = %313
  %323 = load ptr, ptr %308, align 8, !tbaa !614
  %324 = getelementptr inbounds %struct.tree_exp, ptr %323, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !563
  %326 = load i64, ptr %325, align 8
  %327 = and i64 %326, 65535
  %328 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !558
  %330 = icmp eq i32 %329, 3
  br i1 %330, label %7, label %10, !prof !647

331:                                              ; preds = %295, %301, %304, %307, %313, %10, %266, %166, %228, %74, %269, %274, %288, %248, %264, %260, %255, %221, %224, %198, %203, %206, %212, %182, %196, %192, %187, %108, %125, %145, %151, %50, %55, %58, %61, %37, %47, %43, %14, %19, %22, %28, %157, %7
  %332 = phi ptr [ %9, %7 ], [ %294, %288 ], [ %165, %157 ], [ null, %28 ], [ null, %22 ], [ null, %19 ], [ null, %14 ], [ null, %43 ], [ null, %47 ], [ null, %37 ], [ null, %61 ], [ null, %58 ], [ null, %55 ], [ null, %50 ], [ null, %151 ], [ null, %145 ], [ null, %125 ], [ null, %108 ], [ %183, %187 ], [ %183, %192 ], [ %183, %196 ], [ %183, %182 ], [ null, %212 ], [ null, %206 ], [ null, %203 ], [ null, %198 ], [ null, %224 ], [ null, %221 ], [ %251, %255 ], [ %251, %260 ], [ %251, %264 ], [ %251, %248 ], [ null, %274 ], [ null, %269 ], [ null, %74 ], [ null, %228 ], [ null, %166 ], [ null, %266 ], [ null, %10 ], [ null, %313 ], [ null, %307 ], [ null, %304 ], [ null, %301 ], [ null, %295 ]
  ret ptr %332
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_value(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !648 !PGOFuncName !649 {
  %2 = load ptr, ptr @const_val, align 8, !tbaa !553
  %3 = icmp eq ptr %2, null
  br i1 %3, label %17, label %4, !prof !650

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !563
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.prop_value_d, ptr %2, i64 %7
  %9 = load i32, ptr %8, align 8, !tbaa !611
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16, !prof !651

11:                                               ; preds = %4
  %12 = tail call fastcc { i32, ptr } @get_default_value(ptr noundef nonnull %0) #16
  %13 = extractvalue { i32, ptr } %12, 0
  %14 = extractvalue { i32, ptr } %12, 1
  store i32 %13, ptr %8, align 8, !tbaa.struct !652
  %15 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %14, ptr %15, align 8, !tbaa.struct !653
  br label %16

16:                                               ; preds = %11, %4
  tail call fastcc void @canonicalize_float_value(ptr noundef nonnull %8) #16
  br label %17

17:                                               ; preds = %1, %16
  %18 = phi ptr [ %8, %16 ], [ null, %1 ]
  ret ptr %18
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !654 !PGOFuncName !655 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !656

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !657
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #6 !prof !659 !PGOFuncName !660 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { i32, ptr } @get_default_value(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !661 !PGOFuncName !662 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !563
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !563
  %6 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %5) #16, !range !663
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8, !prof !664

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11, !prof !665

11:                                               ; preds = %8
  %12 = load i64, ptr %3, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 34
  br i1 %14, label %15, label %43, !prof !666

15:                                               ; preds = %11, %8
  br label %43

16:                                               ; preds = %1
  %17 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %5) #16, !range !663
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %28, !prof !667

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %5) #16, !range !663
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22, !prof !668

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %5) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28, !prof !669

25:                                               ; preds = %22, %19
  %26 = tail call fastcc i32 @gimple_code(ptr noundef %5) #16, !range !670
  %27 = icmp eq i32 %26, 16
  br i1 %27, label %28, label %43, !prof !671

28:                                               ; preds = %25, %22, %16
  %29 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %5) #17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %42, label %31, !prof !672

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !558
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %42, !prof !673

38:                                               ; preds = %31
  %39 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %5) #16
  %40 = tail call ptr @get_symbol_constant_value(ptr noundef %39) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43, !prof !674

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canonicalize_float_value(ptr nocapture noundef %0) unnamed_addr #0 !prof !675 !PGOFuncName !676 {
  %2 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  %3 = load i32, ptr %0, align 8, !tbaa !611
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %81, !prof !677

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.prop_value_d, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !614
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 24
  br i1 %10, label %11, label %81, !prof !678

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_real_cst, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !679
  %14 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !563
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %21, !prof !680

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
  %30 = load i8, ptr %29, align 1, !tbaa !563
  switch i8 %30, label %50 [
    i8 8, label %31
    i8 9, label %31
    i8 11, label %31
    i8 17, label %31
  ], !prof !681

31:                                               ; preds = %26, %26, %26, %26
  %32 = and i8 %30, -2
  %33 = icmp eq i8 %32, 8
  br i1 %33, label %38, label %34, !prof !682

34:                                               ; preds = %31
  %35 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %28
  %36 = load i8, ptr %35, align 1, !tbaa !563
  %37 = zext i8 %36 to i32
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %27, %31 ], [ %37, %34 ]
  %40 = add i32 %39, -38
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !553
  %44 = getelementptr inbounds %struct.real_format, ptr %43, i64 0, i32 14
  %45 = load i8, ptr %44, align 1, !tbaa !683
  %46 = icmp ne i8 %45, 0
  %47 = load i32, ptr @flag_signed_zeros, align 4
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %55, label %50, !prof !685

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
  ], !prof !681

56:                                               ; preds = %55, %55, %55, %55
  %57 = and i8 %30, -2
  %58 = icmp eq i8 %57, 8
  br i1 %58, label %63, label %59, !prof !682

59:                                               ; preds = %56
  %60 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %28
  %61 = load i8, ptr %60, align 1, !tbaa !563
  %62 = zext i8 %61 to i32
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %27, %56 ], [ %62, %59 ]
  %65 = add i32 %64, -38
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !553
  %69 = getelementptr inbounds %struct.real_format, ptr %68, i64 0, i32 11
  %70 = load i8, ptr %69, align 2, !tbaa !686
  %71 = icmp eq i8 %70, 0
  %72 = load i32, ptr @flag_finite_math_only, align 4
  %73 = icmp ne i32 %72, 0
  %74 = select i1 %71, i1 true, i1 %73
  br i1 %74, label %75, label %81, !prof !687

75:                                               ; preds = %55, %63
  %76 = call zeroext i8 @real_isnan(ptr noundef nonnull %2) #17
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  store i32 1, ptr %0, align 8, !tbaa !611
  br label %79

79:                                               ; preds = %53, %78
  %80 = phi ptr [ null, %78 ], [ %54, %53 ]
  store ptr %80, ptr %6, align 8, !tbaa !614
  br label %81

81:                                               ; preds = %79, %75, %63, %1, %5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !661 !PGOFuncName !688 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !689 !PGOFuncName !690 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !691 !PGOFuncName !692 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !693 !PGOFuncName !694 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !695 !PGOFuncName !696 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !698 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !699 !PGOFuncName !700 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !663
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !701

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !553
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !702 !PGOFuncName !703 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !704 !PGOFuncName !705 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !706
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !707

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.7) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !704 !PGOFuncName !708 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !704 !PGOFuncName !709 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !558
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @real_isnegzero(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @real_isnan(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_ccp() #9 !prof !710 !PGOFuncName !711 {
  %1 = load i32, ptr @flag_tree_ccp, align 4, !tbaa !558
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @do_ssa_ccp() #0 !prof !710 !PGOFuncName !712 {
  tail call fastcc void @ccp_initialize() #16
  tail call void @ssa_propagate(ptr noundef nonnull @ccp_visit_stmt, ptr noundef nonnull @ccp_visit_phi_node) #17
  %1 = tail call fastcc zeroext i8 @ccp_finalize() #16
  %2 = icmp eq i8 %1, 0
  %3 = select i1 %2, i32 0, i32 34848, !prof !713
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccp_initialize() unnamed_addr #0 !prof !710 !PGOFuncName !714 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !553
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !586
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !715
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #16
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 16) #17
  store ptr %11, ptr @const_val, align 8, !tbaa !553
  %12 = load ptr, ptr @cfun, align 8, !tbaa !553
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !716
  %15 = load ptr, ptr %14, align 8, !tbaa !717
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !719
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !721
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %82, label %21, !prof !722

21:                                               ; preds = %0, %47
  %22 = phi ptr [ %49, %47 ], [ %17, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %22) #16
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !663
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %47, !prof !723

25:                                               ; preds = %21, %42
  %26 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %27 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %26) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %42, !prof !724

29:                                               ; preds = %25
  %30 = tail call fastcc zeroext i8 @surely_varying_stmt_p(ptr noundef %26) #16, !range !663
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %42, label %32, !prof !725

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  %33 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %26, i32 noundef 10) #16
  %34 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %41, !prof !726

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %38, %36 ], [ %33, %32 ]
  tail call fastcc void @set_value_varying(ptr noundef %37) #16
  %38 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #16
  %39 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %36, label %41, !prof !727, !llvm.loop !728

41:                                               ; preds = %36, %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  br label %42

42:                                               ; preds = %25, %41, %29
  %43 = phi i8 [ %30, %41 ], [ 0, %29 ], [ 0, %25 ]
  %44 = xor i8 %43, 1
  tail call fastcc void @prop_set_simulate_again(ptr noundef %26, i8 noundef zeroext %44) #16
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  %45 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !663
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %25, label %47, !prof !729, !llvm.loop !730

47:                                               ; preds = %42, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !719
  %50 = load ptr, ptr @cfun, align 8, !tbaa !553
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !716
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !721
  %55 = icmp eq ptr %49, %54
  br i1 %55, label %56, label %21, !prof !731, !llvm.loop !732

56:                                               ; preds = %47
  %57 = load ptr, ptr %52, align 8, !tbaa !717
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !719
  %60 = icmp eq ptr %59, %49
  br i1 %60, label %82, label %61, !prof !568

61:                                               ; preds = %56, %73
  %62 = phi ptr [ %75, %73 ], [ %59, %56 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %62) #17
  %63 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !663
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %73, !prof !733

65:                                               ; preds = %61, %65
  %66 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  %67 = call fastcc ptr @gimple_phi_result(ptr noundef %66) #16
  %68 = call zeroext i8 @is_gimple_reg(ptr noundef %67) #17
  %69 = icmp ne i8 %68, 0
  %70 = zext i1 %69 to i8
  call fastcc void @prop_set_simulate_again(ptr noundef %66, i8 noundef zeroext %70) #16
  call fastcc void @gsi_next(ptr noundef nonnull %3) #16
  %71 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !663
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %65, label %73, !prof !734, !llvm.loop !735

73:                                               ; preds = %65, %61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !719
  %76 = load ptr, ptr @cfun, align 8, !tbaa !553
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !716
  %79 = getelementptr inbounds %struct.control_flow_graph, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !721
  %81 = icmp eq ptr %75, %80
  br i1 %81, label %82, label %61, !prof !731, !llvm.loop !736

82:                                               ; preds = %73, %0, %56
  ret void
}

; Function Attrs: optsize
declare void @ssa_propagate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ccp_visit_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 !prof !737 !PGOFuncName !738 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !739

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !558
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 21, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !558
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef %14) #17
  br label %15

15:                                               ; preds = %11, %7, %3
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %17 = trunc i32 %16 to i8
  switch i8 %17, label %27 [
    i8 6, label %18
    i8 8, label %20
    i8 1, label %25
    i8 5, label %25
  ], !prof !740

18:                                               ; preds = %15
  %19 = tail call fastcc i32 @visit_assignment(ptr noundef %0, ptr noundef %2) #16, !range !741
  br label %46

20:                                               ; preds = %15
  %21 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !742

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @visit_assignment(ptr noundef %0, ptr noundef %2) #16, !range !741
  br label %46

25:                                               ; preds = %15, %15
  %26 = tail call fastcc i32 @visit_cond_stmt(ptr noundef %0, ptr noundef %1) #16, !range !743
  br label %46

27:                                               ; preds = %15, %20
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %29 = icmp eq ptr %28, null
  br i1 %29, label %36, label %30, !prof !744

30:                                               ; preds = %27
  %31 = load i32, ptr @dump_flags, align 4, !tbaa !558
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 49, i64 1, ptr nonnull %28)
  br label %36

36:                                               ; preds = %34, %30, %27
  %37 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 10) #16
  %38 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46, !prof !745

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %43, %40 ], [ %37, %36 ]
  %42 = tail call fastcc zeroext i8 @set_lattice_value(ptr noundef %41, i32 3, ptr null) #16, !range !663
  %43 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #16
  %44 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %40, label %46, !prof !746, !llvm.loop !747

46:                                               ; preds = %40, %36, %25, %23, %18
  %47 = phi i32 [ %26, %25 ], [ %24, %23 ], [ %19, %18 ], [ 2, %36 ], [ 2, %40 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ccp_visit_phi_node(ptr noundef %0) #0 !prof !748 !PGOFuncName !749 {
  %2 = alloca %struct.prop_value_d, align 8
  %3 = alloca %struct.prop_value_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !750

6:                                                ; preds = %1
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !558
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 20, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !558
  tail call void @print_gimple_stmt(ptr noundef %12, ptr noundef %0, i32 noundef 0, i32 noundef %13) #17
  br label %14

14:                                               ; preds = %10, %6, %1
  %15 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #16
  %16 = tail call fastcc ptr @get_value(ptr noundef %15) #16
  %17 = load i32, ptr %16, align 8, !tbaa !611
  switch i32 %17, label %21 [
    i32 3, label %115
    i32 2, label %18
    i32 1, label %19
  ], !prof !751

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 16, i1 false), !tbaa.struct !652
  br label %22

19:                                               ; preds = %14
  store i32 1, ptr %2, align 8, !tbaa !611
  %20 = getelementptr inbounds %struct.prop_value_d, ptr %2, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !614
  br label %22

21:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 823, ptr noundef nonnull @.str.7) #17
  br label %22

22:                                               ; preds = %21, %19, %18
  %23 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %90, label %25, !prof !752

25:                                               ; preds = %22, %85
  %26 = phi i64 [ %86, %85 ], [ 0, %22 ]
  %27 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %26) #16
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30, !prof !753

30:                                               ; preds = %25
  %31 = load i32, ptr @dump_flags, align 4, !tbaa !558
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %27, align 8, !tbaa !754
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 9
  %37 = load i32, ptr %36, align 8, !tbaa !756
  %38 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !757
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 9
  %41 = load i32, ptr %40, align 8, !tbaa !756
  %42 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !758
  %44 = and i32 %43, 4096
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, ptr @.str.21, ptr @.str
  %47 = trunc i64 %26 to i32
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.20, i32 noundef %47, i32 noundef %37, i32 noundef %41, ptr noundef nonnull %46) #16
  br label %49

49:                                               ; preds = %34, %30, %25
  %50 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !758
  %52 = and i32 %51, 4096
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %85, label %54, !prof !759

54:                                               ; preds = %49
  %55 = trunc i64 %26 to i32
  %56 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %55) #16
  %57 = getelementptr inbounds %struct.phi_arg_d, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !760
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %59 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %58) #17
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61, !prof !763

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.prop_value_d, ptr %3, i64 0, i32 1
  store i32 2, ptr %3, align 8, !tbaa !611
  store ptr %58, ptr %62, align 8, !tbaa !614
  br label %65

63:                                               ; preds = %54
  %64 = tail call fastcc ptr @get_value(ptr noundef %58) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %64, i64 16, i1 false), !tbaa.struct !652
  br label %65

65:                                               ; preds = %63, %61
  call fastcc void @ccp_lattice_meet(ptr noundef nonnull %2, ptr noundef nonnull %3) #16
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %67 = icmp eq ptr %66, null
  br i1 %67, label %82, label %68, !prof !764

68:                                               ; preds = %65
  %69 = load i32, ptr @dump_flags, align 4, !tbaa !558
  %70 = and i32 %69, 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.prop_value_d, ptr %3, i64 0, i32 1
  %74 = tail call i32 @fputc(i32 9, ptr nonnull %66)
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %76 = load i32, ptr @dump_flags, align 4, !tbaa !558
  tail call void @print_generic_expr(ptr noundef %75, ptr noundef %58, i32 noundef %76) #17
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %78 = load i32, ptr %3, align 8
  %79 = load ptr, ptr %73, align 8
  tail call fastcc void @dump_lattice_value(ptr noundef %77, ptr noundef nonnull @.str.23, i32 %78, ptr %79) #16
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %81 = tail call i32 @fputc(i32 10, ptr %80)
  br label %82

82:                                               ; preds = %72, %68, %65
  %83 = load i32, ptr %2, align 8
  %84 = icmp eq i32 %83, 3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br i1 %84, label %90, label %85

85:                                               ; preds = %82, %49
  %86 = add nuw nsw i64 %26, 1
  %87 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #16
  %88 = zext i32 %87 to i64
  %89 = icmp ult i64 %86, %88
  br i1 %89, label %25, label %90, !prof !765, !llvm.loop !766

90:                                               ; preds = %85, %82, %22
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %95, !prof !750

93:                                               ; preds = %90
  %94 = load i32, ptr %2, align 8
  br label %105

95:                                               ; preds = %90
  %96 = load i32, ptr @dump_flags, align 4, !tbaa !558
  %97 = and i32 %96, 8
  %98 = icmp eq i32 %97, 0
  %99 = load i32, ptr %2, align 8
  br i1 %98, label %105, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds { i32, ptr }, ptr %2, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8
  tail call fastcc void @dump_lattice_value(ptr noundef nonnull %91, ptr noundef nonnull @.str.24, i32 %99, ptr %102) #16
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %104 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %103)
  br label %105

105:                                              ; preds = %93, %100, %95
  %106 = phi i32 [ %94, %93 ], [ %99, %100 ], [ %99, %95 ]
  %107 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #16
  %108 = getelementptr inbounds { i32, ptr }, ptr %2, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8
  %110 = tail call fastcc zeroext i8 @set_lattice_value(ptr noundef %107, i32 %106, ptr %109) #16, !range !663
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112, !prof !767

112:                                              ; preds = %105
  %113 = icmp eq i32 %106, 3
  %114 = select i1 %113, i32 2, i32 1, !prof !768
  br label %115

115:                                              ; preds = %105, %112, %14
  %116 = phi i32 [ 2, %14 ], [ %114, %112 ], [ 0, %105 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret i32 %116
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ccp_finalize() unnamed_addr #0 !prof !710 !PGOFuncName !769 {
  tail call fastcc void @do_dbg_cnt() #16
  %1 = load ptr, ptr @const_val, align 8, !tbaa !553
  %2 = tail call zeroext i8 @substitute_and_fold(ptr noundef %1, ptr noundef nonnull @ccp_fold_stmt) #17
  %3 = load ptr, ptr @const_val, align 8, !tbaa !553
  tail call void @free(ptr noundef %3) #16
  store ptr null, ptr @const_val, align 8, !tbaa !553
  ret i8 %2
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !770 !PGOFuncName !771 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !772

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !773
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !775 !PGOFuncName !776 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !777
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !779
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !780
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !781 !PGOFuncName !782 {
  %2 = load ptr, ptr %0, align 8, !tbaa !777
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !783 !PGOFuncName !784 {
  %2 = load ptr, ptr %0, align 8, !tbaa !777
  %3 = load ptr, ptr %2, align 8, !tbaa !785
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @surely_varying_stmt_p(ptr noundef %0) unnamed_addr #0 !prof !787 !PGOFuncName !788 {
  %2 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #16, !range !663
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %31, !prof !789

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #16, !range !663
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7, !prof !790

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #16
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10, !prof !791

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13, !prof !792

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_function_decl, ptr %11, i64 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 6144
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %21, !prof !793

18:                                               ; preds = %4
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #16
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %31, !prof !794

21:                                               ; preds = %13, %10, %18
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
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
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !795 !PGOFuncName !796 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #16
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !797
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !799 !PGOFuncName !800 {
  %2 = load i8, ptr %0, align 8, !tbaa !801
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_value_varying(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !802 !PGOFuncName !803 {
  %2 = load ptr, ptr @const_val, align 8, !tbaa !553
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !563
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.prop_value_d, ptr %2, i64 %5
  store i32 3, ptr %6, align 8, !tbaa !611
  %7 = getelementptr inbounds %struct.prop_value_d, ptr %2, i64 %5, i32 1
  store ptr null, ptr %7, align 8, !tbaa !614
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #10 !prof !799 !PGOFuncName !804 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !805
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !806

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #16
  %8 = load ptr, ptr %3, align 8, !tbaa !807
  store ptr %8, ptr %2, align 8, !tbaa !805
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !809
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !810

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !811
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #16
  %17 = load ptr, ptr %11, align 8, !tbaa !813
  store ptr %17, ptr %10, align 8, !tbaa !809
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !801
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @prop_set_simulate_again(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #12 !prof !814 !PGOFuncName !815 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0, i8 noundef zeroext %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 !prof !816 !PGOFuncName !817 {
  %2 = load ptr, ptr %0, align 8, !tbaa !777
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !818
  store ptr %4, ptr %0, align 8, !tbaa !777
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !819 !PGOFuncName !820 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !563
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !775 !PGOFuncName !821 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !822
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !823

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !563
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !824

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !825
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !827 !PGOFuncName !828 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !829

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !830
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !832 !PGOFuncName !833 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !663
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !834

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
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !835 !PGOFuncName !836 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !837

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !563
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !838 !PGOFuncName !839 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !663
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !840

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !563
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !841 !PGOFuncName !842 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !843 !PGOFuncName !844 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !795 !PGOFuncName !845 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %14, label %8, !prof !846

8:                                                ; preds = %3
  %9 = and i32 %2, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !847

11:                                               ; preds = %8
  %12 = and i32 %2, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 747, ptr noundef nonnull @.str.7) #17
  br label %15

15:                                               ; preds = %8, %11, %14
  %16 = icmp eq i32 %6, 0
  br i1 %16, label %17, label %19, !prof !848

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %18, align 8, !tbaa !809
  br label %29

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #16
  %21 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !809
  %22 = icmp eq ptr %20, null
  %23 = select i1 %5, i1 true, i1 %22
  br i1 %23, label %29, label %24, !prof !849

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %20, align 8, !tbaa !813
  store ptr %28, ptr %21, align 8, !tbaa !809
  br label %29

29:                                               ; preds = %17, %27, %24, %19
  %30 = and i32 %2, 5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34, !prof !850

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %33, align 8, !tbaa !805
  br label %46

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #16
  %36 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %35, ptr %36, align 8, !tbaa !805
  %37 = and i32 %2, 4
  %38 = icmp ne i32 %37, 0
  %39 = icmp eq ptr %35, null
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %46, label %41, !prof !851

41:                                               ; preds = %34
  %42 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #16
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !852

44:                                               ; preds = %41
  %45 = load ptr, ptr %35, align 8, !tbaa !807
  store ptr %45, ptr %36, align 8, !tbaa !805
  br label %46

46:                                               ; preds = %32, %44, %41, %34
  store i8 0, ptr %0, align 8, !tbaa !801
  %47 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !853 !PGOFuncName !854 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !663
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !855

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !563
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !856 !PGOFuncName !857 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !663
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !858

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !563
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !859 !PGOFuncName !860 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !663
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !861

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !563
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !862 !PGOFuncName !863 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !864
  %4 = load ptr, ptr %3, align 8, !tbaa !553
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !802 !PGOFuncName !865 {
  %2 = load ptr, ptr %0, align 8, !tbaa !553
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #12 !prof !814 !PGOFuncName !866 {
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
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @visit_assignment(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !867 !PGOFuncName !868 {
  %3 = tail call ptr @gimple_get_lhs(ptr noundef %0) #17
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %6, label %10, !prof !869

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !870

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1604, ptr noundef nonnull @.str.7) #17
  br label %10

10:                                               ; preds = %2, %6, %9
  %11 = tail call zeroext i8 @gimple_assign_copy_p(ptr noundef %0) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %27, label %13, !prof !871

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %23, !prof !872

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @get_value(ptr noundef nonnull %14) #16
  %20 = load i32, ptr %19, align 8, !tbaa.struct !652
  %21 = getelementptr inbounds i8, ptr %19, i64 8
  %22 = load ptr, ptr %21, align 8, !tbaa.struct !653
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
  br i1 %36, label %37, label %43, !prof !873

37:                                               ; preds = %31
  %38 = tail call fastcc zeroext i8 @set_lattice_value(ptr noundef nonnull %3, i32 %32, ptr %33) #16, !range !663
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40, !prof !874

40:                                               ; preds = %37
  store ptr %3, ptr %1, align 8, !tbaa !553
  %41 = icmp eq i32 %32, 3
  %42 = select i1 %41, i32 2, i32 1, !prof !875
  br label %43

43:                                               ; preds = %40, %37, %31
  %44 = phi i32 [ 0, %37 ], [ 0, %31 ], [ %42, %40 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @visit_cond_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !876 !PGOFuncName !877 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  %4 = tail call fastcc { i32, ptr } @evaluate_stmt(ptr noundef %0) #16
  %5 = extractvalue { i32, ptr } %4, 1
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !878

7:                                                ; preds = %2
  %8 = tail call ptr @find_taken_edge(ptr noundef %3, ptr noundef nonnull %5) #17
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi ptr [ %8, %7 ], [ null, %2 ]
  store ptr %10, ptr %1, align 8, !tbaa !553
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, i32 2, i32 1, !prof !878
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @set_lattice_value(ptr nocapture noundef readonly %0, i32 %1, ptr %2) unnamed_addr #0 !prof !879 !PGOFuncName !880 {
  %4 = alloca %struct.prop_value_d, align 8
  store i32 %1, ptr %4, align 8
  %5 = getelementptr inbounds { i32, ptr }, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8
  %6 = tail call fastcc ptr @get_value(ptr noundef %0) #16
  call fastcc void @canonicalize_float_value(ptr noundef nonnull %4) #16
  %7 = load i32, ptr %6, align 8, !tbaa !611
  %8 = load i32, ptr %4, align 8
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %23, label %10, !prof !881

10:                                               ; preds = %3
  %11 = icmp eq i32 %7, %8
  br i1 %11, label %12, label %22, !prof !882

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.prop_value_d, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !614
  %15 = icmp ne ptr %14, null
  %16 = load ptr, ptr %5, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %23, !prof !883

19:                                               ; preds = %12
  %20 = tail call i32 @operand_equal_p(ptr noundef %14, ptr noundef %16, i32 noundef 0) #17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23, !prof !884

22:                                               ; preds = %19, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 478, ptr noundef nonnull @.str.7) #17
  br label %23

23:                                               ; preds = %3, %19, %12, %22
  %24 = load i32, ptr %6, align 8, !tbaa !611
  %25 = icmp eq i32 %24, %8
  br i1 %25, label %40, label %26, !prof !885

26:                                               ; preds = %23
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29, !prof !886

29:                                               ; preds = %26
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !558
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %5, align 8
  tail call fastcc void @dump_lattice_value(ptr noundef nonnull %27, ptr noundef nonnull @.str.17, i32 %8, ptr %34) #16
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %36 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 33, i64 1, ptr %35)
  br label %37

37:                                               ; preds = %33, %29, %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !652
  %38 = icmp eq i32 %8, 1
  br i1 %38, label %39, label %40, !prof !887

39:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 490, ptr noundef nonnull @.str.7) #17
  br label %40

40:                                               ; preds = %23, %39, %37
  %41 = phi i8 [ 1, %37 ], [ 1, %39 ], [ 0, %23 ]
  ret i8 %41
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_copy_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc { i32, ptr } @evaluate_stmt(ptr noundef %0) unnamed_addr #0 !prof !856 !PGOFuncName !888 {
  %2 = tail call fastcc i32 @likely_value(ptr noundef %0) #16, !range !889
  tail call void @fold_defer_overflow_warnings() #17
  switch i32 %2, label %24 [
    i32 2, label %3
    i32 3, label %5
  ], !prof !890

3:                                                ; preds = %1
  %4 = tail call fastcc ptr @ccp_fold(ptr noundef %0) #16
  br label %17

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %16 [
    i8 6, label %8
    i8 5, label %14
    i8 8, label %24
    i8 1, label %24
  ], !prof !891

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !892
  %10 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %9) #16, !range !670
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %24, !prof !893

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  br label %17

14:                                               ; preds = %5
  %15 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #16
  br label %17

16:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1434, ptr noundef nonnull @.str.7) #17
  br label %24

17:                                               ; preds = %14, %12, %3
  %18 = phi ptr [ %4, %3 ], [ %15, %14 ], [ %13, %12 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !894

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %18) #17
  %22 = icmp ne i8 %21, 0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %5, %5, %8, %16, %1, %20, %17
  %25 = phi ptr [ null, %17 ], [ %18, %20 ], [ null, %1 ], [ null, %16 ], [ null, %8 ], [ null, %5 ], [ null, %5 ]
  %26 = phi i8 [ 0, %17 ], [ %23, %20 ], [ 0, %1 ], [ 0, %16 ], [ 0, %8 ], [ 0, %5 ], [ 0, %5 ]
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %26, ptr noundef %0, i32 noundef 0) #17
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %28 = icmp eq ptr %27, null
  br i1 %28, label %46, label %29, !prof !895

29:                                               ; preds = %24
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !558
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 16, i64 1, ptr nonnull %27)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !553
  switch i32 %2, label %42 [
    i32 2, label %36
    i32 1, label %38
    i32 3, label %40
  ]

36:                                               ; preds = %33
  %37 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 8, i64 1, ptr %35)
  br label %43

38:                                               ; preds = %33
  %39 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 9, i64 1, ptr %35)
  br label %43

40:                                               ; preds = %33
  %41 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 7, i64 1, ptr %35)
  br label %43

42:                                               ; preds = %33
  unreachable

43:                                               ; preds = %40, %38, %36
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %45 = tail call i32 @fputc(i32 10, ptr %44)
  br label %46

46:                                               ; preds = %43, %29, %24
  %47 = icmp eq i8 %26, 0
  %48 = icmp eq i32 %2, 1
  %49 = select i1 %48, i32 1, i32 3
  %50 = select i1 %47, i32 %49, i32 2, !prof !896
  %51 = select i1 %47, ptr null, ptr %25, !prof !896
  %52 = insertvalue { i32, ptr } poison, i32 %50, 0
  %53 = insertvalue { i32, ptr } %52, ptr %51, 1
  ret { i32, ptr } %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @likely_value(ptr noundef %0) unnamed_addr #0 !prof !856 !PGOFuncName !897 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %4 = icmp eq i32 %3, 6
  %5 = trunc i32 %3 to i8
  switch i8 %5, label %6 [
    i8 8, label %7
    i8 6, label %7
    i8 1, label %7
    i8 5, label %7
  ], !prof !898

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 524, ptr noundef nonnull @.str.7) #17
  br label %7

7:                                                ; preds = %1, %1, %1, %1, %6
  %8 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #16, !range !663
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %83, !prof !895

10:                                               ; preds = %7
  %11 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 1) #16
  %12 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %32, !prof !899

14:                                               ; preds = %10, %14
  %15 = phi i8 [ %25, %14 ], [ 0, %10 ]
  %16 = phi i8 [ %23, %14 ], [ 0, %10 ]
  %17 = phi ptr [ %26, %14 ], [ %11, %10 ]
  %18 = phi i8 [ %22, %14 ], [ 1, %10 ]
  %19 = tail call fastcc ptr @get_value(ptr noundef %17) #16
  %20 = load i32, ptr %19, align 8, !tbaa !611
  %21 = icmp eq i32 %20, 1
  %22 = select i1 %21, i8 %18, i8 0, !prof !900
  %23 = select i1 %21, i8 1, i8 %16, !prof !900
  %24 = icmp eq i32 %20, 2
  %25 = select i1 %24, i8 1, i8 %15, !prof !901
  %26 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #16
  %27 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #16
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %14, label %29, !prof !902, !llvm.loop !903

29:                                               ; preds = %14
  %30 = icmp eq i8 %23, 0
  %31 = icmp eq i8 %22, 0
  br label %32

32:                                               ; preds = %29, %10
  %33 = phi i1 [ false, %10 ], [ %31, %29 ]
  %34 = phi i1 [ true, %10 ], [ %30, %29 ]
  %35 = phi i8 [ 0, %10 ], [ %25, %29 ]
  %36 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #16, !range !663
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 0, i32 2
  %39 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) #16, !range !663
  %40 = zext nneg i8 %39 to i32
  %41 = or disjoint i32 %38, %40
  %42 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %62, !prof !904

44:                                               ; preds = %32, %57
  %45 = phi i8 [ %58, %57 ], [ %35, %32 ]
  %46 = phi i32 [ %59, %57 ], [ %41, %32 ]
  %47 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %46) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %57, label %49, !prof !905

49:                                               ; preds = %44
  %50 = load i64, ptr %47, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %57, label %53, !prof !906

53:                                               ; preds = %49
  %54 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %47) #17
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %55, i8 %45, i8 1, !prof !907
  br label %57

57:                                               ; preds = %44, %49, %53
  %58 = phi i8 [ %56, %53 ], [ %45, %49 ], [ %45, %44 ]
  %59 = add nuw i32 %46, 1
  %60 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %44, label %62, !prof !908, !llvm.loop !909

62:                                               ; preds = %57, %32
  %63 = phi i8 [ %35, %32 ], [ %58, %57 ]
  %64 = icmp ne i8 %63, 0
  br i1 %34, label %74, label %65, !prof !910

65:                                               ; preds = %62
  %66 = select i1 %64, i1 true, i1 %33
  %67 = and i1 %4, %66
  %68 = select i1 %66, i32 3, i32 1, !prof !911
  br i1 %67, label %69, label %83, !prof !912

69:                                               ; preds = %65
  %70 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !892
  %71 = trunc i32 %70 to i16
  %72 = add i16 %71, -63
  %73 = icmp ult i16 %72, 4
  br i1 %73, label %79, label %83

74:                                               ; preds = %62
  br i1 %64, label %83, label %75, !prof !913

75:                                               ; preds = %74
  %76 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %0) #16, !range !663
  %77 = icmp eq i8 %76, 0
  %78 = select i1 %77, i32 3, i32 2, !prof !914
  br label %83

79:                                               ; preds = %69
  %80 = zext nneg i16 %72 to i64
  %81 = getelementptr inbounds [4 x i32], ptr @switch.table.likely_value, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4
  br label %83

83:                                               ; preds = %65, %69, %79, %75, %74, %7
  %84 = phi i32 [ 3, %7 ], [ %68, %65 ], [ 2, %74 ], [ %78, %75 ], [ %82, %79 ], [ 3, %69 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  ret i32 %84
}

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ccp_fold(ptr noundef %0) unnamed_addr #0 !prof !915 !PGOFuncName !916 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %392 [
    i8 6, label %5
    i8 8, label %280
    i8 1, label %353
    i8 5, label %383
  ], !prof !917

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !892
  %7 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %6) #16, !range !670
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %279 [
    i8 3, label %9
    i8 2, label %185
    i8 1, label %234
  ], !prof !918

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %11 = zext nneg i32 %6 to i64
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !558
  %14 = load i64, ptr %10, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %115 [
    i16 141, label %16
    i16 121, label %20
    i16 51, label %57
  ], !prof !919

16:                                               ; preds = %9
  %17 = tail call fastcc ptr @get_value(ptr noundef nonnull %10) #16
  %18 = getelementptr inbounds %struct.prop_value_d, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !614
  br label %393

20:                                               ; preds = %9, %20
  %21 = phi ptr [ %23, %20 ], [ %10, %9 ]
  %22 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !553
  %24 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %23) #16, !range !663
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %20, !prof !920, !llvm.loop !921

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %28 = load i64, ptr %23, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 47
  br i1 %30, label %31, label %115, !prof !922

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !563
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %115, !prof !923

37:                                               ; preds = %31
  %38 = tail call fastcc ptr @get_value(ptr noundef nonnull %33) #16
  %39 = load i32, ptr %38, align 8, !tbaa !611
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %115, !prof !924

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.prop_value_d, ptr %38, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !614
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 121
  br i1 %46, label %47, label %115, !prof !925

47:                                               ; preds = %41
  %48 = load ptr, ptr %27, align 8, !tbaa !553
  %49 = tail call zeroext i8 @may_propagate_address_into_dereference(ptr noundef nonnull %43, ptr noundef %48) #16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %115, label %51, !prof !926

51:                                               ; preds = %47
  %52 = load ptr, ptr %27, align 8, !tbaa !553
  %53 = load ptr, ptr %42, align 8, !tbaa !614
  %54 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !563
  store ptr %55, ptr %27, align 8, !tbaa !553
  %56 = tail call ptr @unshare_expr(ptr noundef %10) #17
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef %56) #17
  store ptr %52, ptr %27, align 8, !tbaa !553
  br label %393

57:                                               ; preds = %9
  %58 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !563
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 14
  br i1 %62, label %63, label %115

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.tree_constructor, ptr %10, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !563
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
  %83 = load ptr, ptr %82, align 8, !tbaa !623
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 141
  br i1 %86, label %87, label %95

87:                                               ; preds = %77
  %88 = tail call fastcc ptr @get_value(ptr noundef nonnull %83) #16
  %89 = load i32, ptr %88, align 8, !tbaa !611
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = tail call fastcc ptr @get_value(ptr noundef nonnull %83) #16
  %93 = getelementptr inbounds %struct.prop_value_d, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !614
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
  %105 = load ptr, ptr %64, align 8, !tbaa !563
  %106 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %105) #16
  %107 = icmp ult i32 %104, %106
  br i1 %107, label %77, label %108, !llvm.loop !927

108:                                              ; preds = %102
  %109 = load ptr, ptr %58, align 8, !tbaa !563
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
  ], !prof !928

116:                                              ; preds = %115
  %117 = load i64, ptr %10, align 8
  %118 = trunc i64 %117 to i16
  switch i16 %118, label %148 [
    i16 118, label %119
    i16 43, label %119
    i16 44, label %119
  ], !prof !929

119:                                              ; preds = %116, %116, %116
  %120 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !563
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 141
  br i1 %124, label %125, label %148

125:                                              ; preds = %119
  %126 = tail call fastcc ptr @get_value(ptr noundef nonnull %121) #16
  %127 = load i32, ptr %126, align 8, !tbaa !611
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %180

129:                                              ; preds = %125
  %130 = load i64, ptr %10, align 8
  %131 = and i64 %130, 65535
  %132 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !558
  %134 = add i32 %133, -4
  %135 = icmp ult i32 %134, 7
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !563
  br label %139

139:                                              ; preds = %136, %129
  %140 = phi i32 [ %138, %136 ], [ 0, %129 ]
  %141 = trunc i64 %130 to i32
  %142 = and i32 %141, 65535
  %143 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !563
  %145 = getelementptr inbounds %struct.prop_value_d, ptr %126, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !614
  %147 = tail call ptr @fold_unary_loc(i32 noundef %140, i32 noundef %142, ptr noundef %144, ptr noundef %146) #17
  br label %393

148:                                              ; preds = %116, %119
  %149 = and i64 %117, 65535
  %150 = icmp eq i64 %149, 47
  br i1 %150, label %151, label %180, !prof !930

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !563
  %154 = load i64, ptr %153, align 8
  %155 = and i64 %154, 65535
  %156 = icmp eq i64 %155, 141
  br i1 %156, label %157, label %180, !prof !931

157:                                              ; preds = %151
  %158 = tail call fastcc ptr @get_value(ptr noundef nonnull %153) #16
  %159 = load i32, ptr %158, align 8, !tbaa !611
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %180, !prof !932

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.prop_value_d, ptr %158, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !614
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 121
  br i1 %166, label %167, label %180, !prof !933

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !563
  %170 = getelementptr inbounds %struct.tree_common, ptr %163, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !563
  %172 = getelementptr inbounds %struct.tree_common, ptr %171, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !563
  %174 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %169, ptr noundef %173) #17
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %180, label %176, !prof !934

176:                                              ; preds = %167
  %177 = load ptr, ptr %162, align 8, !tbaa !614
  %178 = getelementptr inbounds %struct.tree_exp, ptr %177, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !563
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
  br i1 %190, label %191, label %199, !prof !935

191:                                              ; preds = %185
  %192 = tail call fastcc ptr @get_value(ptr noundef nonnull %187) #16
  %193 = load i32, ptr %192, align 8, !tbaa !611
  %194 = icmp eq i32 %193, 2
  br i1 %194, label %195, label %199, !prof !936

195:                                              ; preds = %191
  %196 = tail call fastcc ptr @get_value(ptr noundef nonnull %187) #16
  %197 = getelementptr inbounds %struct.prop_value_d, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !614
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
  %204 = load ptr, ptr %203, align 8, !tbaa !563
  %205 = load i64, ptr %204, align 8
  %206 = trunc i64 %205 to i16
  switch i16 %206, label %231 [
    i16 10, label %207
    i16 12, label %207
  ], !prof !937

207:                                              ; preds = %202, %202
  %208 = getelementptr inbounds %struct.tree_common, ptr %200, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !563
  %210 = load i64, ptr %209, align 8
  %211 = trunc i64 %210 to i16
  switch i16 %211, label %231 [
    i16 10, label %212
    i16 12, label %212
  ], !prof !938

212:                                              ; preds = %207, %207
  %213 = getelementptr inbounds %struct.tree_common, ptr %204, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !563
  %215 = load i64, ptr %214, align 8
  %216 = getelementptr inbounds %struct.tree_common, ptr %209, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !563
  %218 = load i64, ptr %217, align 8
  %219 = xor i64 %218, %215
  %220 = and i64 %219, 524288
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %231, !prof !939

222:                                              ; preds = %212
  %223 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %204, ptr noundef nonnull %209) #17
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %230, !prof !939

225:                                              ; preds = %222
  %226 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !553
  %227 = load ptr, ptr %203, align 8, !tbaa !563
  %228 = tail call ptr @maybe_fold_offset_to_address(i32 noundef %2, ptr noundef nonnull %200, ptr noundef %226, ptr noundef %227) #16
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %393, !prof !940

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
  br i1 %239, label %240, label %247, !prof !941

240:                                              ; preds = %234
  %241 = tail call fastcc ptr @get_value(ptr noundef nonnull %235) #16
  %242 = load i32, ptr %241, align 8, !tbaa !611
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %247, !prof !942

244:                                              ; preds = %240
  %245 = getelementptr inbounds %struct.prop_value_d, ptr %241, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !614
  br label %247

247:                                              ; preds = %240, %244, %234
  %248 = phi ptr [ %235, %234 ], [ %246, %244 ], [ %235, %240 ]
  %249 = load i64, ptr %236, align 8
  %250 = and i64 %249, 65535
  %251 = icmp eq i64 %250, 141
  br i1 %251, label %252, label %259, !prof !943

252:                                              ; preds = %247
  %253 = tail call fastcc ptr @get_value(ptr noundef nonnull %236) #16
  %254 = load i32, ptr %253, align 8, !tbaa !611
  %255 = icmp eq i32 %254, 2
  br i1 %255, label %256, label %259, !prof !944

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.prop_value_d, ptr %253, i64 0, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !614
  br label %259

259:                                              ; preds = %252, %256, %247
  %260 = phi ptr [ %236, %247 ], [ %258, %256 ], [ %236, %252 ]
  %261 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !892
  %262 = icmp eq i32 %261, 66
  br i1 %262, label %263, label %276, !prof !945

263:                                              ; preds = %259
  %264 = load i64, ptr %248, align 8
  %265 = and i64 %264, 65535
  %266 = icmp eq i64 %265, 121
  br i1 %266, label %267, label %276, !prof !946

267:                                              ; preds = %263
  %268 = load i64, ptr %260, align 8
  %269 = and i64 %268, 65535
  %270 = icmp eq i64 %269, 23
  br i1 %270, label %271, label %276, !prof !947

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.tree_common, ptr %248, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !563
  %274 = tail call ptr @maybe_fold_offset_to_address(i32 noundef %2, ptr noundef nonnull %248, ptr noundef nonnull %260, ptr noundef %273) #16
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %393

276:                                              ; preds = %271, %267, %263, %259
  %277 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #16
  %278 = tail call ptr @fold_binary_loc(i32 noundef %2, i32 noundef %6, ptr noundef %277, ptr noundef %248, ptr noundef %260) #17
  br label %393

279:                                              ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1119, ptr noundef nonnull @.str.7) #17
  br label %393

280:                                              ; preds = %1
  %281 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %282 = load i64, ptr %281, align 8
  %283 = and i64 %282, 65535
  %284 = icmp eq i64 %283, 141
  br i1 %284, label %285, label %292, !prof !948

285:                                              ; preds = %280
  %286 = tail call fastcc ptr @get_value(ptr noundef nonnull %281) #16
  %287 = load i32, ptr %286, align 8, !tbaa !611
  %288 = icmp eq i32 %287, 2
  br i1 %288, label %289, label %292, !prof !949

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.prop_value_d, ptr %286, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !614
  br label %292

292:                                              ; preds = %285, %289, %280
  %293 = phi ptr [ %291, %289 ], [ %281, %285 ], [ %281, %280 ]
  %294 = load i64, ptr %293, align 8
  %295 = and i64 %294, 65535
  %296 = icmp eq i64 %295, 121
  br i1 %296, label %297, label %393, !prof !950

297:                                              ; preds = %292
  %298 = getelementptr inbounds %struct.tree_exp, ptr %293, i64 0, i32 3
  %299 = load ptr, ptr %298, align 8, !tbaa !563
  %300 = load i64, ptr %299, align 8
  %301 = and i64 %300, 65535
  %302 = icmp eq i64 %301, 29
  br i1 %302, label %303, label %393, !prof !951

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.tree_function_decl, ptr %299, i64 0, i32 5
  %305 = load i32, ptr %304, align 8
  %306 = and i32 %305, 6144
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %393, label %308, !prof !952

308:                                              ; preds = %303
  %309 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %310 = zext i32 %309 to i64
  %311 = shl nuw nsw i64 %310, 3
  %312 = alloca i8, i64 %311, align 16
  %313 = icmp eq i32 %309, 0
  br i1 %313, label %334, label %314, !prof !953

314:                                              ; preds = %308, %329
  %315 = phi i64 [ %330, %329 ], [ 0, %308 ]
  %316 = trunc i64 %315 to i32
  %317 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %316) #16
  %318 = getelementptr inbounds ptr, ptr %312, i64 %315
  store ptr %317, ptr %318, align 8, !tbaa !553
  %319 = load i64, ptr %317, align 8
  %320 = and i64 %319, 65535
  %321 = icmp eq i64 %320, 141
  br i1 %321, label %322, label %329, !prof !954

322:                                              ; preds = %314
  %323 = tail call fastcc ptr @get_value(ptr noundef nonnull %317) #16
  %324 = load i32, ptr %323, align 8, !tbaa !611
  %325 = icmp eq i32 %324, 2
  br i1 %325, label %326, label %329, !prof !955

326:                                              ; preds = %322
  %327 = getelementptr inbounds %struct.prop_value_d, ptr %323, i64 0, i32 1
  %328 = load ptr, ptr %327, align 8, !tbaa !614
  store ptr %328, ptr %318, align 8, !tbaa !553
  br label %329

329:                                              ; preds = %314, %326, %322
  %330 = add nuw nsw i64 %315, 1
  %331 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %332 = zext i32 %331 to i64
  %333 = icmp ult i64 %330, %332
  br i1 %333, label %314, label %334, !prof !956, !llvm.loop !957

334:                                              ; preds = %329, %308
  %335 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #16
  %336 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %337 = call ptr @build_call_array_loc(i32 noundef %2, ptr noundef %335, ptr noundef nonnull %293, i32 noundef %336, ptr noundef nonnull %312) #17
  %338 = load i64, ptr %337, align 8
  %339 = and i64 %338, 65535
  %340 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa !558
  %342 = add i32 %341, -4
  %343 = icmp ult i32 %342, 7
  br i1 %343, label %344, label %347, !prof !958

344:                                              ; preds = %334
  %345 = getelementptr inbounds %struct.tree_exp, ptr %337, i64 0, i32 1
  %346 = load i32, ptr %345, align 8, !tbaa !563
  br label %347

347:                                              ; preds = %334, %344
  %348 = phi i32 [ %346, %344 ], [ 0, %334 ]
  %349 = call ptr @fold_call_expr(i32 noundef %348, ptr noundef nonnull %337, i8 noundef zeroext 0) #17
  %350 = icmp eq ptr %349, null
  br i1 %350, label %393, label %351, !prof !959

351:                                              ; preds = %347
  %352 = call ptr @tree_strip_nop_conversions(ptr noundef nonnull %349) #17
  br label %393

353:                                              ; preds = %1
  %354 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %355 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %356 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #16, !range !892
  %357 = load i64, ptr %354, align 8
  %358 = and i64 %357, 65535
  %359 = icmp eq i64 %358, 141
  br i1 %359, label %360, label %367, !prof !960

360:                                              ; preds = %353
  %361 = tail call fastcc ptr @get_value(ptr noundef nonnull %354) #16
  %362 = load i32, ptr %361, align 8, !tbaa !611
  %363 = icmp eq i32 %362, 2
  br i1 %363, label %364, label %367, !prof !961

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.prop_value_d, ptr %361, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !614
  br label %367

367:                                              ; preds = %360, %364, %353
  %368 = phi ptr [ %354, %353 ], [ %366, %364 ], [ %354, %360 ]
  %369 = load i64, ptr %355, align 8
  %370 = and i64 %369, 65535
  %371 = icmp eq i64 %370, 141
  br i1 %371, label %372, label %379, !prof !962

372:                                              ; preds = %367
  %373 = tail call fastcc ptr @get_value(ptr noundef nonnull %355) #16
  %374 = load i32, ptr %373, align 8, !tbaa !611
  %375 = icmp eq i32 %374, 2
  br i1 %375, label %376, label %379, !prof !963

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.prop_value_d, ptr %373, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !614
  br label %379

379:                                              ; preds = %372, %376, %367
  %380 = phi ptr [ %355, %367 ], [ %378, %376 ], [ %355, %372 ]
  %381 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !553
  %382 = tail call ptr @fold_binary_loc(i32 noundef %2, i32 noundef %356, ptr noundef %381, ptr noundef %368, ptr noundef %380) #17
  br label %393

383:                                              ; preds = %1
  %384 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #16
  %385 = load i64, ptr %384, align 8
  %386 = and i64 %385, 65535
  %387 = icmp eq i64 %386, 141
  br i1 %387, label %388, label %393, !prof !964

388:                                              ; preds = %383
  %389 = tail call fastcc ptr @get_value(ptr noundef nonnull %384) #16
  %390 = getelementptr inbounds %struct.prop_value_d, ptr %389, i64 0, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !614
  br label %393

392:                                              ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1204, ptr noundef nonnull @.str.7) #17
  br label %393

393:                                              ; preds = %95, %139, %276, %271, %231, %225, %230, %16, %180, %183, %51, %110, %115, %392, %279, %388, %383, %351, %347, %303, %297, %292, %379
  %394 = phi ptr [ %382, %379 ], [ %352, %351 ], [ null, %347 ], [ null, %303 ], [ null, %297 ], [ null, %292 ], [ %391, %388 ], [ %384, %383 ], [ null, %279 ], [ null, %392 ], [ %147, %139 ], [ %274, %271 ], [ %278, %276 ], [ %228, %225 ], [ %200, %230 ], [ %233, %231 ], [ %10, %115 ], [ %114, %110 ], [ %56, %51 ], [ %184, %183 ], [ %182, %180 ], [ %19, %16 ], [ null, %95 ]
  ret ptr %394
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !965 !PGOFuncName !966 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #16, !range !892
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #16, !range !670
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !967

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #6 !prof !968 !PGOFuncName !969 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !563
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 !prof !970 !PGOFuncName !971 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: optsize
declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 !prof !972 !PGOFuncName !973 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #16, !range !663
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !974

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #16, !range !663
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !975

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
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !976 !PGOFuncName !977 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !563
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !978 !PGOFuncName !979 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !663
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !980

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
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !981 !PGOFuncName !982 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !563
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !983 !PGOFuncName !984 {
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
  ], !prof !985

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_vector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !986 !PGOFuncName !987 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @maybe_fold_offset_to_address(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !988 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !563
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %12 [
    i16 10, label %9
    i16 12, label %9
  ], !prof !989

9:                                                ; preds = %4, %4
  %10 = load i64, ptr %3, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 10, label %13
    i16 12, label %13
  ], !prof !989

12:                                               ; preds = %9, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2113, ptr noundef nonnull @.str.7) #17
  br label %13

13:                                               ; preds = %9, %9, %12
  %14 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !563
  %16 = tail call ptr @maybe_fold_offset_to_reference(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %15) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %67, label %18, !prof !990

18:                                               ; preds = %13
  %19 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #17
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 121
  br i1 %22, label %23, label %27, !prof !991

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !563
  %26 = load i64, ptr %25, align 8
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i64 [ %26, %23 ], [ %20, %18 ]
  %29 = phi ptr [ %25, %23 ], [ %19, %18 ]
  %30 = trunc i64 %28 to i16
  switch i16 %30, label %59 [
    i16 45, label %39
    i16 41, label %31
  ], !prof !992

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !563
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !563
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 15
  br i1 %38, label %39, label %59, !prof !993

39:                                               ; preds = %27, %31
  %40 = load i64, ptr %16, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %59 [
    i16 45, label %42
    i16 41, label %42
  ], !prof !994

42:                                               ; preds = %39, %39
  %43 = and i64 %28, 65535
  %44 = icmp eq i64 %43, 45
  br i1 %44, label %45, label %48, !prof !995

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !563
  br label %48

48:                                               ; preds = %42, %45
  %49 = phi ptr [ %47, %45 ], [ %29, %42 ]
  %50 = and i64 %40, 65535
  %51 = icmp eq i64 %50, 45
  br i1 %51, label %52, label %55, !prof !996

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !563
  br label %55

55:                                               ; preds = %48, %52
  %56 = phi ptr [ %54, %52 ], [ %16, %48 ]
  %57 = tail call i32 @operand_equal_p(ptr noundef %49, ptr noundef %56, i32 noundef 0) #17
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59, !prof !997

59:                                               ; preds = %39, %27, %55, %31
  %60 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !563
  %62 = tail call ptr @build_pointer_type(ptr noundef %61) #17
  %63 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %3, ptr noundef %62) #17
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %65, !prof !998

65:                                               ; preds = %59
  %66 = tail call ptr @build_fold_addr_expr_with_type_loc(i32 noundef %0, ptr noundef nonnull %16, ptr noundef %62) #17
  br label %67

67:                                               ; preds = %13, %65, %55, %59
  %68 = phi ptr [ %66, %65 ], [ null, %55 ], [ null, %59 ], [ null, %13 ]
  ret ptr %68
}

; Function Attrs: optsize
declare ptr @fold_unary_ignore_overflow_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !999 !PGOFuncName !1000 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !1001

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #16
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !892
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !1002

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !563
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #17
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !563
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !553
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !553
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !1003 !PGOFuncName !1004 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1005

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #16
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1006 !PGOFuncName !1007 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1008 !PGOFuncName !1009 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #16
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !1010 !PGOFuncName !1011 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !563
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !563
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !563
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @fold_call_expr(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !1012 !PGOFuncName !1013 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !1012 !PGOFuncName !1014 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1012 !PGOFuncName !1015 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !965 !PGOFuncName !1016 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1017

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1446, ptr noundef nonnull @.str.7) #17
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1018 !PGOFuncName !1019 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !563
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1020 !PGOFuncName !1021 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !563
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #4 !prof !1022 !PGOFuncName !1023 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !1024
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #16
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1025 !PGOFuncName !1026 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !563
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1027

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.7) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ccp_lattice_meet(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1028 !PGOFuncName !1029 {
  %3 = load i32, ptr %0, align 8, !tbaa !611
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %6, !prof !1030

5:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !652
  br label %29

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !611
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %29, label %9, !prof !1031

9:                                                ; preds = %6
  %10 = icmp eq i32 %3, 3
  %11 = icmp eq i32 %7, 3
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %15, !prof !1032

13:                                               ; preds = %9
  store i32 3, ptr %0, align 8, !tbaa !611
  %14 = getelementptr inbounds %struct.prop_value_d, ptr %0, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !614
  br label %29

15:                                               ; preds = %9
  %16 = icmp eq i32 %3, 2
  %17 = icmp eq i32 %7, 2
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %27, !prof !1033

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.prop_value_d, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !614
  %22 = getelementptr inbounds %struct.prop_value_d, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !614
  %24 = tail call i32 @simple_cst_equal(ptr noundef %21, ptr noundef %23) #17
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27, !prof !1034

26:                                               ; preds = %19
  store i32 2, ptr %0, align 8, !tbaa !611
  br label %29

27:                                               ; preds = %19, %15
  store i32 3, ptr %0, align 8, !tbaa !611
  %28 = getelementptr inbounds %struct.prop_value_d, ptr %0, i64 0, i32 1
  store ptr null, ptr %28, align 8, !tbaa !614
  br label %29

29:                                               ; preds = %6, %26, %27, %13, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1035 !PGOFuncName !1036 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !553
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_dbg_cnt() unnamed_addr #0 !prof !710 !PGOFuncName !1037 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !553
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !586
  %4 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !715
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8, !prof !722

8:                                                ; preds = %0, %16
  %9 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %10 = tail call zeroext i8 @dbg_cnt(i32 noundef 1) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16, !prof !1038

12:                                               ; preds = %8
  %13 = load ptr, ptr @const_val, align 8, !tbaa !553
  %14 = getelementptr inbounds %struct.prop_value_d, ptr %13, i64 %9
  store i32 3, ptr %14, align 8, !tbaa !611
  %15 = getelementptr inbounds %struct.prop_value_d, ptr %13, i64 %9, i32 1
  store ptr null, ptr %15, align 8, !tbaa !614
  br label %16

16:                                               ; preds = %8, %12
  %17 = add nuw nsw i64 %9, 1
  %18 = load ptr, ptr @cfun, align 8, !tbaa !553
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !586
  %21 = getelementptr inbounds %struct.gimple_df, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !715
  %23 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #16
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %17, %24
  br i1 %25, label %8, label %26, !prof !1039, !llvm.loop !1040

26:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @substitute_and_fold(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @ccp_fold_stmt(ptr noundef %0) #0 !prof !1041 !PGOFuncName !1042 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %2) #16, !range !670
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %130 [
    i8 1, label %5
    i8 8, label %19
    i8 6, label %101
  ], !prof !1043

5:                                                ; preds = %1
  %6 = tail call fastcc { i32, ptr } @evaluate_stmt(ptr noundef %2) #16
  %7 = extractvalue { i32, ptr } %6, 0
  %8 = extractvalue { i32, ptr } %6, 1
  %9 = icmp eq i32 %7, 2
  br i1 %9, label %10, label %130, !prof !1044

10:                                               ; preds = %5
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  br i1 %13, label %14, label %130, !prof !1045

14:                                               ; preds = %10
  %15 = tail call i32 @integer_zerop(ptr noundef nonnull %8) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !1046

17:                                               ; preds = %14
  tail call fastcc void @gimple_cond_make_false(ptr noundef %2) #16
  br label %130

18:                                               ; preds = %14
  tail call fastcc void @gimple_cond_make_true(ptr noundef %2) #16
  br label %130

19:                                               ; preds = %1
  %20 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %2) #16
  %21 = icmp eq ptr %20, null
  br i1 %21, label %50, label %22, !prof !1047

22:                                               ; preds = %19
  %23 = load i64, ptr %20, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 141
  br i1 %25, label %26, label %50, !prof !1048

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @get_value(ptr noundef nonnull %20) #16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %50, label %29, !prof !1049

29:                                               ; preds = %26
  %30 = load i32, ptr %27, align 8, !tbaa !611
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %50, !prof !1049

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.prop_value_d, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !614
  %35 = tail call ptr @unshare_expr(ptr noundef %34) #17
  %36 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !563
  %38 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !563
  %40 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %37, ptr noundef %39) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load ptr, ptr %36, align 8, !tbaa !563
  %44 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %43, ptr noundef nonnull %35) #17
  br label %45

45:                                               ; preds = %42, %32
  %46 = phi ptr [ %35, %32 ], [ %44, %42 ]
  %47 = tail call zeroext i8 @update_call_from_tree(ptr noundef %0, ptr noundef %46) #17
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %130

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1533, ptr noundef nonnull @.str.7) #17
  br label %130

50:                                               ; preds = %29, %26, %22, %19
  %51 = tail call fastcc ptr @gimple_call_fn(ptr noundef %2) #16
  %52 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !563
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !563
  %56 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !563
  %58 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %2) #16
  %59 = icmp ne i32 %58, 0
  %60 = icmp ne ptr %57, null
  %61 = select i1 %59, i1 %60, i1 false, !prof !1050
  br i1 %61, label %62, label %130, !prof !1051

62:                                               ; preds = %50, %92
  %63 = phi ptr [ %96, %92 ], [ %57, %50 ]
  %64 = phi i32 [ %94, %92 ], [ 0, %50 ]
  %65 = phi i8 [ %93, %92 ], [ 0, %50 ]
  %66 = tail call fastcc ptr @gimple_call_arg(ptr noundef %2, i32 noundef %64) #16
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 141
  br i1 %69, label %70, label %92, !prof !1052

70:                                               ; preds = %62
  %71 = tail call fastcc ptr @get_value(ptr noundef nonnull %66) #16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %92, label %73, !prof !1053

73:                                               ; preds = %70
  %74 = load i32, ptr %71, align 8, !tbaa !611
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %92, !prof !1054

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tree_list, ptr %63, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !563
  %79 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 16
  %80 = load ptr, ptr %79, align 8, !tbaa !563
  %81 = getelementptr inbounds %struct.prop_value_d, ptr %71, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !614
  %83 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !563
  %85 = getelementptr inbounds %struct.tree_type, ptr %84, i64 0, i32 16
  %86 = load ptr, ptr %85, align 8, !tbaa !563
  %87 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %80, ptr noundef %86) #17
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %92, label %89, !prof !1055

89:                                               ; preds = %76
  %90 = load ptr, ptr %81, align 8, !tbaa !614
  %91 = tail call ptr @unshare_expr(ptr noundef %90) #17
  tail call fastcc void @gimple_call_set_arg(ptr noundef %2, i32 noundef %64, ptr noundef %91) #16
  br label %92

92:                                               ; preds = %89, %76, %73, %70, %62
  %93 = phi i8 [ 1, %89 ], [ %65, %76 ], [ %65, %73 ], [ %65, %70 ], [ %65, %62 ]
  %94 = add nuw i32 %64, 1
  %95 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !563
  %97 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %2) #16
  %98 = icmp ult i32 %94, %97
  %99 = icmp ne ptr %96, null
  %100 = select i1 %98, i1 %99, i1 false, !prof !1050
  br i1 %100, label %62, label %130, !prof !1056, !llvm.loop !1057

101:                                              ; preds = %1
  %102 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #16
  %103 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %2) #17
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %130, label %105, !prof !1058

105:                                              ; preds = %101
  %106 = load i64, ptr %102, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 141
  br i1 %108, label %109, label %130, !prof !1059

109:                                              ; preds = %105
  %110 = tail call fastcc ptr @get_value(ptr noundef nonnull %102) #16
  %111 = icmp eq ptr %110, null
  br i1 %111, label %130, label %112, !prof !1060

112:                                              ; preds = %109
  %113 = load i32, ptr %110, align 8, !tbaa !611
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %130, !prof !1061

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.prop_value_d, ptr %110, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !614
  %118 = tail call ptr @unshare_expr(ptr noundef %117) #17
  %119 = getelementptr inbounds %struct.tree_common, ptr %102, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !563
  %121 = getelementptr inbounds %struct.tree_common, ptr %118, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !563
  %123 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %120, ptr noundef %122) #17
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %128, !prof !1062

125:                                              ; preds = %115
  %126 = load ptr, ptr %119, align 8, !tbaa !563
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
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_false(ptr noundef %0) unnamed_addr #0 !prof !1063 !PGOFuncName !1064 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !553
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #16
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !553
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #16
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_true(ptr noundef %0) unnamed_addr #0 !prof !1065 !PGOFuncName !1066 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !553
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #16
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !553
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #16
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @update_call_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_arg(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1067 !PGOFuncName !1068 {
  %4 = add i32 %1, 3
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %4, ptr noundef %2) #16
  ret void
}

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1069 !PGOFuncName !1070 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1069 !PGOFuncName !1071 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1072 !PGOFuncName !1073 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !663
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !1074

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !1075

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1665, ptr noundef nonnull @.str.7) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !553
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @maybe_fold_offset_to_reference(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !1076 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #17
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 121
  br i1 %11, label %12, label %58, !prof !1077

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !563
  %15 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %14) #16, !range !663
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %42, label %17, !prof !1078

17:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %18 = call ptr @get_ref_base_and_extent(ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21, !prof !1079

20:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2075, ptr noundef nonnull @.str.7) #17
  br label %21

21:                                               ; preds = %17, %20
  %22 = load i64, ptr %6, align 8
  %23 = load i64, ptr %7, align 8, !tbaa !706
  %24 = icmp eq i64 %22, %23
  %25 = icmp ne i64 %22, -1
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %39, !prof !1080

27:                                               ; preds = %21
  %28 = load i64, ptr %5, align 8, !tbaa !706
  %29 = and i64 %28, 7
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %39, !prof !1081

31:                                               ; preds = %27
  %32 = icmp eq i64 %28, 0
  br i1 %32, label %39, label %33, !prof !1082

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !563
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
  %46 = load ptr, ptr %45, align 8, !tbaa !563
  %47 = call zeroext i8 @useless_type_conversion_p(ptr noundef %3, ptr noundef %46) #17
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49, !prof !1083

49:                                               ; preds = %42
  %50 = call i32 @integer_zerop(ptr noundef %43) #17
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %58, !prof !1084

52:                                               ; preds = %49, %42
  %53 = load ptr, ptr %45, align 8, !tbaa !563
  %54 = call fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef %53, ptr noundef nonnull %44, ptr noundef %43, ptr noundef %3) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58, !prof !1085

56:                                               ; preds = %52
  %57 = call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef nonnull %44, ptr noundef %43, ptr noundef %3, i8 noundef zeroext 1) #16
  br label %58

58:                                               ; preds = %52, %56, %49, %4
  %59 = phi ptr [ null, %4 ], [ %44, %49 ], [ %54, %52 ], [ %57, %56 ]
  ret ptr %59
}

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1086 !PGOFuncName !1087 {
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
  br i1 %14, label %15, label %110, !prof !1088

15:                                               ; preds = %6
  %16 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %7, ptr noundef %4) #17
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %110, !prof !1089

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !563
  %21 = icmp eq ptr %20, null
  br i1 %21, label %110, label %22, !prof !1090

22:                                               ; preds = %18, %91
  %23 = phi ptr [ %94, %91 ], [ %20, %18 ]
  %24 = phi ptr [ %92, %91 ], [ null, %18 ]
  %25 = load i64, ptr %23, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 31
  br i1 %27, label %28, label %91, !prof !1091

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %23, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 33554432
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %91, !prof !1092

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tree_field_decl, ptr %23, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !563
  %36 = icmp eq ptr %35, null
  br i1 %36, label %91, label %37, !prof !1093

37:                                               ; preds = %33
  %38 = tail call ptr @byte_position(ptr noundef nonnull %23) #17
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 23
  br i1 %41, label %42, label %91, !prof !1094

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_decl_minimal, ptr %23, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !563
  %45 = icmp eq ptr %44, null
  br i1 %45, label %91, label %46, !prof !1093

46:                                               ; preds = %42
  %47 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %38, ptr noundef %9) #17
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %91, label %49, !prof !1095

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !563
  %52 = icmp eq i32 %47, 0
  br i1 %52, label %53, label %58, !prof !1096

53:                                               ; preds = %49
  %54 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %4, ptr noundef %51) #17
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56, !prof !1097

56:                                               ; preds = %53
  %57 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %51, ptr noundef %8, ptr noundef nonnull %23, ptr noundef null) #17
  br label %110

58:                                               ; preds = %53, %49
  %59 = load i64, ptr %51, align 8
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, 65535
  %62 = add nsw i32 %61, -15
  %63 = icmp ult i32 %62, 4
  br i1 %63, label %64, label %91, !prof !1098

64:                                               ; preds = %58
  %65 = and i64 %59, 65535
  %66 = icmp eq i64 %65, 15
  %67 = select i1 %66, ptr %23, ptr null, !prof !1099
  %68 = getelementptr inbounds %struct.tree_decl_common, ptr %23, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !563
  %70 = icmp eq ptr %69, null
  br i1 %70, label %91, label %71, !prof !1100

71:                                               ; preds = %64
  %72 = load i64, ptr %69, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 23
  br i1 %74, label %75, label %91, !prof !1101

75:                                               ; preds = %71
  %76 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %9, ptr noundef nonnull %38, i32 noundef 1) #17
  %77 = load ptr, ptr %68, align 8, !tbaa !563
  %78 = tail call i32 @tree_int_cst_lt(ptr noundef %76, ptr noundef %77) #17
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %91, label %80, !prof !1102

80:                                               ; preds = %75
  %81 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef nonnull %51, ptr noundef %8, ptr noundef nonnull %23, ptr noundef null) #17
  %82 = getelementptr inbounds %struct.tree_exp, ptr %81, i64 0, i32 1
  store i32 %0, ptr %82, align 8, !tbaa !563
  %83 = load ptr, ptr %19, align 8, !tbaa !563
  %84 = icmp eq ptr %23, %83
  %85 = zext i1 %84 to i8
  %86 = tail call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef %81, ptr noundef %76, ptr noundef %4, i8 noundef zeroext %85) #16
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %110, !prof !1103

88:                                               ; preds = %80
  %89 = tail call fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef nonnull %51, ptr noundef nonnull %81, ptr noundef %76, ptr noundef %4) #16
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %110, !prof !1104

91:                                               ; preds = %88, %22, %28, %33, %37, %42, %46, %58, %71, %64, %75
  %92 = phi ptr [ %67, %75 ], [ %67, %64 ], [ %67, %71 ], [ null, %58 ], [ null, %46 ], [ %24, %42 ], [ %24, %37 ], [ %24, %33 ], [ %24, %28 ], [ %24, %22 ], [ %67, %88 ]
  %93 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !563
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %22, !prof !1105, !llvm.loop !1106

96:                                               ; preds = %91
  %97 = icmp eq ptr %92, null
  br i1 %97, label %110, label %98, !prof !1107

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !563
  %101 = tail call ptr @byte_position(ptr noundef nonnull %92) #17
  %102 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %9, ptr noundef %101, i32 noundef 1) #17
  %103 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %100, ptr noundef %8, ptr noundef nonnull %92, ptr noundef null) #17
  %104 = getelementptr inbounds %struct.tree_exp, ptr %103, i64 0, i32 1
  store i32 %0, ptr %104, align 8, !tbaa !563
  %105 = load ptr, ptr %19, align 8, !tbaa !563
  %106 = icmp eq ptr %92, %105
  %107 = zext i1 %106 to i8
  %108 = tail call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef %103, ptr noundef %102, ptr noundef %4, i8 noundef zeroext %107) #16
  %109 = icmp eq ptr %108, null
  br i1 %109, label %6, label %110, !prof !1108

110:                                              ; preds = %18, %6, %98, %96, %15, %80, %88, %56
  %111 = phi ptr [ %57, %56 ], [ %89, %88 ], [ %86, %80 ], [ null, %18 ], [ %108, %98 ], [ null, %96 ], [ null, %15 ], [ null, %6 ]
  ret ptr %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !1109 !PGOFuncName !1110 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !553
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 45
  br i1 %13, label %14, label %29, !prof !1111

14:                                               ; preds = %5
  %15 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %1) #17
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !563
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
  %28 = load ptr, ptr %16, align 8, !tbaa !563
  br label %29

29:                                               ; preds = %26, %5
  %30 = phi ptr [ %27, %26 ], [ %10, %5 ]
  %31 = phi ptr [ %28, %26 ], [ %1, %5 ]
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !563
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 15
  br i1 %36, label %37, label %166, !prof !1112

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !563
  %40 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %3, ptr noundef %39) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %166, label %42, !prof !1113

42:                                               ; preds = %37
  %43 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !553
  %44 = tail call ptr @signed_type_for(ptr noundef %43) #17
  %45 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !563
  %47 = icmp eq ptr %46, null
  br i1 %47, label %166, label %48, !prof !1114

48:                                               ; preds = %42
  %49 = tail call i32 @integer_zerop(ptr noundef %2) #17
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51, !prof !1115

51:                                               ; preds = %48
  %52 = load i64, ptr %46, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 23
  br i1 %54, label %60, label %55, !prof !1116

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !563
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
  %67 = load ptr, ptr %66, align 8, !tbaa !563
  %68 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, 1023
  %71 = tail call { i64, i64 } @double_int_sext(i64 %64, i64 %65, i32 noundef %70) #17
  %72 = load i64, ptr %46, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 23
  br i1 %74, label %75, label %90, !prof !1117

75:                                               ; preds = %62
  %76 = extractvalue { i64, i64 } %71, 1
  %77 = extractvalue { i64, i64 } %71, 0
  %78 = getelementptr inbounds %struct.tree_int_cst, ptr %46, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !563
  %80 = getelementptr inbounds %struct.tree_int_cst, ptr %46, i64 0, i32 1, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !563
  %82 = call i32 @div_and_round_double(i32 noundef 67, i32 noundef 0, i64 noundef %77, i64 noundef %76, i64 noundef %79, i64 noundef %81, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #17
  %83 = icmp ne i32 %82, 0
  %84 = load i64, ptr %7, align 8
  %85 = icmp ne i64 %84, 0
  %86 = select i1 %83, i1 true, i1 %85
  %87 = load i64, ptr %9, align 8
  %88 = icmp ne i64 %87, 0
  %89 = select i1 %86, i1 true, i1 %88
  br i1 %89, label %90, label %91, !prof !1118

90:                                               ; preds = %75, %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %166

91:                                               ; preds = %75
  %92 = load i64, ptr %6, align 8, !tbaa !706
  %93 = load i64, ptr %8, align 8, !tbaa !706
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
  %99 = load ptr, ptr %98, align 8, !tbaa !563
  %100 = icmp eq ptr %99, null
  br i1 %100, label %114, label %101, !prof !1114

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 13
  %103 = load ptr, ptr %102, align 8, !tbaa !563
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %107, !prof !1114

105:                                              ; preds = %101
  %106 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %99, ptr noundef %97) #17
  br label %107

107:                                              ; preds = %101, %105
  %108 = phi ptr [ %106, %105 ], [ %103, %101 ]
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 23
  br i1 %111, label %112, label %166, !prof !1119

112:                                              ; preds = %107
  %113 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %99, ptr noundef %30) #17
  br label %114

114:                                              ; preds = %112, %95
  %115 = phi ptr [ %113, %112 ], [ %30, %95 ]
  %116 = phi ptr [ %99, %112 ], [ %44, %95 ]
  %117 = phi ptr [ %108, %112 ], [ %97, %95 ]
  %118 = call i32 @integer_zerop(ptr noundef %117) #17
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122, !prof !1114

120:                                              ; preds = %114
  %121 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %96, ptr noundef %117, i32 noundef 0) #17
  br label %122

122:                                              ; preds = %120, %114
  %123 = phi ptr [ %96, %114 ], [ %121, %120 ]
  %124 = call i32 @integer_zerop(ptr noundef %115) #17
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128, !prof !1114

126:                                              ; preds = %122
  %127 = call ptr @int_const_binop(i32 noundef 63, ptr noundef %123, ptr noundef %115, i32 noundef 0) #17
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi ptr [ %123, %122 ], [ %127, %126 ]
  %130 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %116, ptr noundef %129) #17
  br i1 %100, label %158, label %131, !prof !1114

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 14
  %133 = load ptr, ptr %132, align 8, !tbaa !563
  %134 = icmp eq ptr %133, null
  br i1 %134, label %145, label %135, !prof !1114

135:                                              ; preds = %131
  %136 = load i64, ptr %133, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 23
  br i1 %138, label %139, label %145, !prof !1120

139:                                              ; preds = %135
  %140 = call i32 @tree_int_cst_lt(ptr noundef nonnull %133, ptr noundef %130) #17
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142, !prof !1121

142:                                              ; preds = %139
  %143 = call i32 @compare_tree_int(ptr noundef nonnull %133, i64 noundef 1) #17
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %166, label %145, !prof !1122

145:                                              ; preds = %131, %135, %142, %139
  %146 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 13
  %147 = load ptr, ptr %146, align 8, !tbaa !563
  %148 = icmp eq ptr %147, null
  br i1 %148, label %158, label %149, !prof !1123

149:                                              ; preds = %145
  %150 = icmp eq i8 %4, 0
  br i1 %150, label %151, label %163, !prof !1124

151:                                              ; preds = %149
  %152 = load i64, ptr %147, align 8
  %153 = and i64 %152, 65535
  %154 = icmp eq i64 %153, 23
  br i1 %154, label %155, label %163, !prof !1125

155:                                              ; preds = %151
  %156 = call i32 @tree_int_cst_lt(ptr noundef %130, ptr noundef nonnull %147) #17
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %166, !prof !1125

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
  store i32 %0, ptr %165, align 8, !tbaa !563
  br label %166

166:                                              ; preds = %14, %22, %90, %160, %155, %142, %107, %42, %37, %29, %163
  %167 = phi ptr [ %164, %163 ], [ null, %29 ], [ null, %37 ], [ null, %42 ], [ null, %107 ], [ null, %142 ], [ null, %155 ], [ null, %160 ], [ null, %90 ], [ null, %22 ], [ null, %14 ]
  ret ptr %167
}

; Function Attrs: optsize
declare ptr @byte_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @double_int_sext(i64, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @div_and_round_double(i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_with_type_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @maybe_fold_stmt_addition(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 !prof !1126 {
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 121
  br i1 %7, label %8, label %163, !prof !1127

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !563
  %11 = load i64, ptr %3, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  %14 = load i64, ptr %10, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 45
  br i1 %13, label %17, label %18, !prof !1128

17:                                               ; preds = %8
  br i1 %16, label %84, label %133, !prof !1129

18:                                               ; preds = %8
  br i1 %16, label %19, label %163, !prof !1130

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %21 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !563
  %23 = tail call i32 @integer_zerop(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %163, label %25, !prof !1131

25:                                               ; preds = %19
  %26 = load i64, ptr %3, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %163, !prof !1132

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !563
  %32 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !563
  %34 = tail call i32 @host_integerp(ptr noundef %33, i32 noundef 1) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %163, label %36, !prof !1131

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !563
  %39 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %38) #16, !range !663
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %163, label %41, !prof !1133

41:                                               ; preds = %36
  %42 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %38) #16, !range !892
  %43 = icmp eq i32 %42, 65
  br i1 %43, label %44, label %66, !prof !1134

44:                                               ; preds = %41
  %45 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %38) #16
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 23
  br i1 %48, label %49, label %66, !prof !1135

49:                                               ; preds = %44
  %50 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %38) #16
  %51 = load ptr, ptr %30, align 8, !tbaa !563
  %52 = getelementptr inbounds %struct.tree_type, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !563
  %54 = tail call i32 @tree_int_cst_equal(ptr noundef %50, ptr noundef %53) #17
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56, !prof !1136

56:                                               ; preds = %49
  %57 = load ptr, ptr %30, align 8, !tbaa !563
  %58 = load ptr, ptr %20, align 8, !tbaa !563
  %59 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %38) #16
  %60 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !563
  %62 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !563
  %64 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %57, ptr noundef %58, ptr noundef %59, ptr noundef %61, ptr noundef %63) #17
  %65 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %64) #17
  br label %163

66:                                               ; preds = %49, %44, %41
  %67 = load ptr, ptr %30, align 8, !tbaa !563
  %68 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !563
  %70 = tail call i32 @integer_onep(ptr noundef %69) #17
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %163, label %72, !prof !1137

72:                                               ; preds = %66
  %73 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %38) #16, !range !892
  %74 = icmp eq i32 %73, 65
  br i1 %74, label %163, label %75, !prof !1138

75:                                               ; preds = %72
  %76 = load ptr, ptr %30, align 8, !tbaa !563
  %77 = load ptr, ptr %20, align 8, !tbaa !563
  %78 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !563
  %80 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !563
  %82 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %76, ptr noundef %77, ptr noundef nonnull %3, ptr noundef %79, ptr noundef %81) #17
  %83 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %82) #17
  br label %163

84:                                               ; preds = %17, %124
  %85 = phi ptr [ %88, %124 ], [ %10, %17 ]
  %86 = phi ptr [ %129, %124 ], [ %3, %17 ]
  %87 = getelementptr inbounds %struct.tree_exp, ptr %85, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !563
  %89 = getelementptr inbounds %struct.tree_exp, ptr %85, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !563
  %91 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !563
  %93 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !563
  %95 = load i64, ptr %90, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 23
  br i1 %97, label %98, label %133, !prof !1139

98:                                               ; preds = %84
  %99 = load i64, ptr %94, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 23
  br i1 %101, label %102, label %133, !prof !1139

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !563
  %105 = getelementptr inbounds %struct.tree_type, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !563
  %107 = icmp eq ptr %106, null
  br i1 %107, label %124, label %108, !prof !1140

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 13
  %110 = load ptr, ptr %109, align 8, !tbaa !563
  %111 = icmp eq ptr %110, null
  br i1 %111, label %124, label %112, !prof !1140

112:                                              ; preds = %108
  %113 = load i64, ptr %110, align 8
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 23
  br i1 %115, label %116, label %133, !prof !1139

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !563
  %119 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %118, ptr noundef nonnull %90) #17
  %120 = tail call i32 @integer_zerop(ptr noundef nonnull %110) #17
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124, !prof !1140

122:                                              ; preds = %116
  %123 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %119, ptr noundef nonnull %110, i32 noundef 0) #17
  br label %124

124:                                              ; preds = %102, %116, %122, %108
  %125 = phi ptr [ %119, %116 ], [ %123, %122 ], [ %90, %108 ], [ %90, %102 ]
  %126 = load ptr, ptr @sizetype_tab, align 16, !tbaa !553
  %127 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %126, ptr noundef %125) #17
  %128 = tail call ptr @int_const_binop(i32 noundef 65, ptr noundef %127, ptr noundef nonnull %94, i32 noundef 0) #17
  %129 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %128, ptr noundef %86, i32 noundef 0) #17
  %130 = load i64, ptr %88, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 45
  br i1 %132, label %84, label %133, !prof !1141

133:                                              ; preds = %124, %84, %98, %112, %17
  %134 = phi ptr [ %3, %17 ], [ %86, %112 ], [ %86, %98 ], [ %86, %84 ], [ %129, %124 ]
  %135 = phi ptr [ %10, %17 ], [ %85, %112 ], [ %85, %98 ], [ %85, %84 ], [ %88, %124 ]
  %136 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !563
  %138 = load i64, ptr %137, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 19
  br i1 %140, label %141, label %150, !prof !1142

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.tree_common, ptr %135, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !563
  %144 = load i64, ptr %143, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 15
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.tree_common, ptr %143, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !563
  br label %150

150:                                              ; preds = %147, %141, %133
  %151 = phi ptr [ %149, %147 ], [ %137, %141 ], [ %137, %133 ]
  %152 = tail call fastcc ptr @maybe_fold_offset_to_array_ref(i32 noundef %0, ptr noundef nonnull %135, ptr noundef %134, ptr noundef %151, i8 noundef zeroext 1) #16
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %159, !prof !1143

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.tree_common, ptr %135, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !563
  %157 = tail call fastcc ptr @maybe_fold_offset_to_component_ref(i32 noundef %0, ptr noundef %156, ptr noundef nonnull %135, ptr noundef %134, ptr noundef %151) #16
  %158 = icmp eq ptr %157, null
  br i1 %158, label %163, label %159, !prof !1144

159:                                              ; preds = %150, %154
  %160 = phi ptr [ %157, %154 ], [ %152, %150 ]
  %161 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef nonnull %1, ptr noundef nonnull %160) #17
  %162 = getelementptr inbounds %struct.tree_exp, ptr %161, i64 0, i32 1
  store i32 %0, ptr %162, align 8, !tbaa !563
  br label %163

163:                                              ; preds = %36, %75, %56, %18, %19, %25, %29, %72, %66, %154, %159, %4
  %164 = phi ptr [ null, %4 ], [ %161, %159 ], [ null, %154 ], [ null, %66 ], [ null, %72 ], [ null, %29 ], [ null, %25 ], [ null, %19 ], [ null, %18 ], [ null, %36 ], [ %83, %75 ], [ %65, %56 ]
  ret ptr %164
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @fold_stmt(ptr noundef %0) local_unnamed_addr #0 !prof !1145 {
  %2 = tail call fastcc zeroext i8 @fold_stmt_1(ptr noundef %0, i8 noundef zeroext 0) #16, !range !663
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @fold_stmt_1(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1146 !PGOFuncName !1147 {
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #16, !range !670
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %109 [
    i8 6, label %12
    i8 1, label %38
    i8 8, label %9
    i8 7, label %6
  ], !prof !1148

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %3) #16, !range !670
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %65, label %69

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %3) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %59, label %40, !prof !1149

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @gimple_num_ops(ptr noundef %3) #16
  %14 = tail call fastcc ptr @fold_gimple_assign(ptr noundef %0) #16
  %15 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %3) #16
  %16 = icmp eq ptr %14, null
  br i1 %16, label %109, label %17, !prof !1150

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !563
  %20 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !563
  %22 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %19, ptr noundef %21) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %28, !prof !1151

24:                                               ; preds = %17
  %25 = load ptr, ptr %18, align 8, !tbaa !563
  %26 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %25, ptr noundef nonnull %14) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %109, label %28, !prof !568

28:                                               ; preds = %17, %24
  %29 = phi ptr [ %26, %24 ], [ %14, %17 ]
  %30 = icmp eq i8 %1, 0
  br i1 %30, label %37, label %31, !prof !1152

31:                                               ; preds = %28
  %32 = load i64, ptr %29, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65535
  %35 = tail call i32 @get_gimple_rhs_num_ops(i32 noundef %34) #17
  %36 = icmp ult i32 %35, %13
  br i1 %36, label %37, label %109, !prof !1153

37:                                               ; preds = %31, %28
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef nonnull %29) #17
  br label %109

38:                                               ; preds = %2
  %39 = tail call fastcc zeroext i8 @fold_gimple_cond(ptr noundef %3) #16, !range !663
  br label %109

40:                                               ; preds = %9, %54
  %41 = phi i8 [ %55, %54 ], [ 0, %9 ]
  %42 = phi i32 [ %56, %54 ], [ 0, %9 ]
  %43 = tail call fastcc ptr @gimple_call_arg(ptr noundef %3, i32 noundef %42) #16
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !558
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %49, label %54, !prof !1154

49:                                               ; preds = %40
  %50 = tail call fastcc ptr @gimple_call_arg(ptr noundef %3, i32 noundef %42) #16
  %51 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %50, i8 noundef zeroext 0) #16
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53, !prof !1155

53:                                               ; preds = %49
  tail call fastcc void @gimple_call_set_arg(ptr noundef %3, i32 noundef %42, ptr noundef nonnull %51) #16
  br label %54

54:                                               ; preds = %49, %53, %40
  %55 = phi i8 [ %41, %40 ], [ 1, %53 ], [ %41, %49 ]
  %56 = add nuw i32 %42, 1
  %57 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %3) #16
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %40, label %59, !prof !1156, !llvm.loop !1157

59:                                               ; preds = %54, %9
  %60 = phi i8 [ 0, %9 ], [ %55, %54 ]
  %61 = icmp eq i8 %1, 0
  br i1 %61, label %62, label %109, !prof !1158

62:                                               ; preds = %59
  %63 = tail call fastcc zeroext i8 @fold_gimple_call(ptr noundef %0) #16, !range !663
  %64 = or i8 %63, %60
  br label %109

65:                                               ; preds = %84, %6
  %66 = phi i8 [ 0, %6 ], [ %85, %84 ]
  %67 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %3) #16, !range !670
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %109, label %89

69:                                               ; preds = %6, %84
  %70 = phi i8 [ %85, %84 ], [ 0, %6 ]
  %71 = phi i32 [ %86, %84 ], [ 0, %6 ]
  %72 = tail call fastcc ptr @gimple_asm_output_op(ptr noundef %3, i32 noundef %71) #16
  %73 = getelementptr inbounds %struct.tree_list, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !563
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 65535
  %77 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !558
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %74, i8 noundef zeroext 1) #16
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store ptr %81, ptr %73, align 8, !tbaa !563
  br label %84

84:                                               ; preds = %83, %80, %69
  %85 = phi i8 [ 1, %83 ], [ %70, %80 ], [ %70, %69 ]
  %86 = add nuw nsw i32 %71, 1
  %87 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %3) #16, !range !670
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %69, label %65, !llvm.loop !1159

89:                                               ; preds = %65, %104
  %90 = phi i8 [ %105, %104 ], [ %66, %65 ]
  %91 = phi i32 [ %106, %104 ], [ 0, %65 ]
  %92 = tail call fastcc ptr @gimple_asm_input_op(ptr noundef %3, i32 noundef %91) #16
  %93 = getelementptr inbounds %struct.tree_list, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !563
  %95 = load i64, ptr %94, align 8
  %96 = and i64 %95, 65535
  %97 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !558
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %94, i8 noundef zeroext 0) #16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store ptr %101, ptr %93, align 8, !tbaa !563
  br label %104

104:                                              ; preds = %103, %100, %89
  %105 = phi i8 [ 1, %103 ], [ %90, %100 ], [ %90, %89 ]
  %106 = add nuw nsw i32 %91, 1
  %107 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %3) #16, !range !670
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %89, label %109, !llvm.loop !1160

109:                                              ; preds = %104, %65, %12, %24, %31, %37, %2, %59, %62, %38
  %110 = phi i8 [ 0, %2 ], [ %60, %59 ], [ %64, %62 ], [ %39, %38 ], [ 1, %37 ], [ 0, %31 ], [ 0, %24 ], [ 0, %12 ], [ %66, %65 ], [ %105, %104 ]
  %111 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %112 = tail call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %111) #16, !range !663
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %127, label %114, !prof !1161

114:                                              ; preds = %109
  %115 = tail call ptr @gimple_get_lhs(ptr noundef %111) #17
  %116 = icmp eq ptr %115, null
  br i1 %116, label %127, label %117, !prof !1162

117:                                              ; preds = %114
  %118 = load i64, ptr %115, align 8
  %119 = and i64 %118, 65535
  %120 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !558
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %123, label %127, !prof !1163

123:                                              ; preds = %117
  %124 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %115, i8 noundef zeroext 1) #16
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126, !prof !1164

126:                                              ; preds = %123
  tail call void @gimple_set_lhs(ptr noundef %111, ptr noundef nonnull %124) #17
  br label %127

127:                                              ; preds = %114, %117, %126, %123, %109
  %128 = phi i8 [ %110, %109 ], [ %110, %117 ], [ %110, %114 ], [ 1, %126 ], [ %110, %123 ]
  ret i8 %128
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1165 !PGOFuncName !1166 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #16, !range !892
  %4 = tail call fastcc i32 @gimple_location(ptr noundef %2) #16
  %5 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %3) #16, !range !670
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %248 [
    i8 3, label %7
    i8 2, label %131
    i8 1, label %187
    i8 0, label %247
  ], !prof !1167

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %61 [
    i16 56, label %11
    i16 152, label %59
  ], !prof !1168

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !563
  %14 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 56), align 4, !tbaa !558
  %15 = add i32 %14, -4
  %16 = icmp ult i32 %15, 7
  br i1 %16, label %17, label %20, !prof !1169

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !563
  br label %20

20:                                               ; preds = %11, %17
  %21 = phi i32 [ %19, %17 ], [ 0, %11 ]
  %22 = load i64, ptr %13, align 8
  %23 = and i64 %22, 65535
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !558
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %42, !prof !1170

27:                                               ; preds = %20
  tail call void @fold_defer_overflow_warnings() #17
  %28 = load i64, ptr %13, align 8
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 65535
  %31 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !563
  %33 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !563
  %35 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !563
  %37 = tail call ptr @fold_binary_loc(i32 noundef %21, i32 noundef %30, ptr noundef %32, ptr noundef %34, ptr noundef %36) #17
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39, !prof !1171

39:                                               ; preds = %27
  %40 = tail call zeroext i8 @is_gimple_condexpr(ptr noundef nonnull %37) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %46, !prof !1138

42:                                               ; preds = %20
  %43 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %13) #17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %248, label %50, !prof !1172

45:                                               ; preds = %39, %27
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext 0, ptr noundef %2, i32 noundef 0) #17
  br label %121

46:                                               ; preds = %39
  %47 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef nonnull %37) #17
  %48 = icmp ne i8 %47, 0
  %49 = zext i1 %48 to i8
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %49, ptr noundef %2, i32 noundef 0) #17
  br i1 %48, label %50, label %121, !prof !1144

50:                                               ; preds = %42, %46
  %51 = phi ptr [ %37, %46 ], [ %13, %42 ]
  %52 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !563
  %54 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !563
  %56 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !563
  %58 = tail call ptr @fold_build3_stat_loc(i32 noundef %21, i32 noundef 56, ptr noundef %53, ptr noundef nonnull %51, ptr noundef %55, ptr noundef %57) #17
  br label %118

59:                                               ; preds = %7
  %60 = tail call ptr @maybe_fold_tmr(ptr noundef nonnull %8) #17
  br label %248

61:                                               ; preds = %7
  %62 = and i64 %9, 65535
  %63 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !558
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %66, label %68, !prof !1173

66:                                               ; preds = %61
  %67 = tail call fastcc ptr @maybe_fold_reference(ptr noundef nonnull %8, i8 noundef zeroext 0) #16
  br label %248

68:                                               ; preds = %61
  switch i16 %10, label %113 [
    i16 121, label %69
    i16 51, label %79
  ], !prof !1174

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !563
  %72 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %71, i8 noundef zeroext 1) #16
  %73 = icmp eq ptr %72, null
  br i1 %73, label %121, label %74, !prof !1175

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !563
  %77 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %4, ptr noundef nonnull %72) #17
  %78 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %76, ptr noundef %77) #17
  br label %118

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !563
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 14
  br i1 %84, label %85, label %113

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.tree_constructor, ptr %8, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !563
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
  br i1 %100, label %111, label %101, !llvm.loop !1176

101:                                              ; preds = %96, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %96 ]
  %103 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %87, i32 noundef %102) #16
  %104 = getelementptr inbounds %struct.constructor_elt_d, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !623
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
  br i1 %114, label %115, label %121, !prof !1177

115:                                              ; preds = %113
  %116 = tail call ptr @get_symbol_constant_value(ptr noundef nonnull %8) #16
  %117 = tail call ptr @unshare_expr(ptr noundef %116) #17
  br label %248

118:                                              ; preds = %50, %74
  %119 = phi ptr [ %78, %74 ], [ %58, %50 ]
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %123, !prof !568

121:                                              ; preds = %46, %45, %69, %113, %118
  %122 = tail call ptr @fold(ptr noundef nonnull %8) #17
  br label %123

123:                                              ; preds = %121, %118
  %124 = phi ptr [ %122, %121 ], [ %119, %118 ]
  %125 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %124) #17
  %126 = icmp eq ptr %125, %8
  br i1 %126, label %130, label %127, !prof !1178

127:                                              ; preds = %123
  %128 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %125) #17
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %248, !prof !1179

130:                                              ; preds = %127, %123
  br label %248

131:                                              ; preds = %1
  %132 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %133 = tail call fastcc ptr @gimple_expr_type(ptr noundef %2) #16
  %134 = tail call ptr @fold_unary_loc(i32 noundef %4, i32 noundef %3, ptr noundef %133, ptr noundef %132) #17
  %135 = icmp eq ptr %134, null
  %136 = trunc i32 %3 to i16
  br i1 %135, label %154, label %137, !prof !1180

137:                                              ; preds = %131
  switch i16 %136, label %150 [
    i16 116, label %138
    i16 113, label %138
  ]

138:                                              ; preds = %137, %137
  %139 = load i64, ptr %134, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 23
  br i1 %141, label %142, label %150, !prof !1181

142:                                              ; preds = %138
  %143 = load i64, ptr %132, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 23
  br i1 %145, label %146, label %150, !prof !1182

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
  br i1 %153, label %248, label %185, !prof !1183

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
  br i1 %159, label %165, label %160, !prof !1184

160:                                              ; preds = %155
  %161 = tail call fastcc ptr @gimple_expr_type(ptr noundef %2) #16
  %162 = load i64, ptr %161, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 12
  br i1 %164, label %165, label %248, !prof !1185

165:                                              ; preds = %160, %155
  %166 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %167 = getelementptr inbounds %struct.tree_common, ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !563
  %169 = load i64, ptr %168, align 8
  %170 = and i64 %169, 65535
  %171 = icmp eq i64 %170, 10
  br i1 %171, label %179, label %172, !prof !1186

172:                                              ; preds = %165
  %173 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %174 = getelementptr inbounds %struct.tree_common, ptr %173, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !563
  %176 = load i64, ptr %175, align 8
  %177 = and i64 %176, 65535
  %178 = icmp eq i64 %177, 12
  br i1 %178, label %179, label %248, !prof !1187

179:                                              ; preds = %172, %165
  %180 = tail call fastcc ptr @gimple_expr_type(ptr noundef %2) #16
  %181 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %182 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !553
  %183 = tail call ptr @maybe_fold_offset_to_address(i32 noundef %4, ptr noundef %181, ptr noundef %182, ptr noundef %180) #16
  %184 = icmp eq ptr %183, null
  br i1 %184, label %248, label %185

185:                                              ; preds = %179, %150
  %186 = phi ptr [ %151, %150 ], [ %183, %179 ]
  br label %248

187:                                              ; preds = %1
  %188 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #16, !range !892
  %189 = icmp eq i32 %188, 66
  br i1 %189, label %190, label %219, !prof !1188

190:                                              ; preds = %187
  %191 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %192 = getelementptr inbounds %struct.tree_common, ptr %191, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !563
  %194 = getelementptr inbounds %struct.tree_common, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !563
  %196 = load i64, ptr %195, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 15
  br i1 %198, label %199, label %212, !prof !1189

199:                                              ; preds = %190
  %200 = getelementptr inbounds %struct.tree_common, ptr %195, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !563
  %202 = tail call ptr @build_pointer_type(ptr noundef %201) #17
  %203 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #16
  %204 = getelementptr inbounds %struct.tree_common, ptr %203, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !563
  %206 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %205, ptr noundef %202) #17
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %212, !prof !1190

208:                                              ; preds = %199
  %209 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %210 = getelementptr inbounds %struct.tree_common, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !563
  br label %212

212:                                              ; preds = %190, %208, %199
  %213 = phi ptr [ %202, %199 ], [ %211, %208 ], [ %193, %190 ]
  %214 = tail call fastcc i32 @gimple_location(ptr noundef %2) #16
  %215 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %216 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #16
  %217 = tail call ptr @maybe_fold_stmt_addition(i32 noundef %214, ptr noundef %213, ptr noundef %215, ptr noundef %216) #16
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %227, !prof !1191

219:                                              ; preds = %187, %212
  %220 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #16
  %221 = getelementptr inbounds %struct.tree_common, ptr %220, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !563
  %223 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %224 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #16
  %225 = tail call ptr @fold_binary_loc(i32 noundef %4, i32 noundef %3, ptr noundef %222, ptr noundef %223, ptr noundef %224) #17
  %226 = icmp eq ptr %225, null
  br i1 %226, label %248, label %227, !prof !1192

227:                                              ; preds = %212, %219
  %228 = phi ptr [ %225, %219 ], [ %217, %212 ]
  %229 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %228) #17
  %230 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %229) #17
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %232, label %248, !prof !1193

232:                                              ; preds = %227
  %233 = tail call zeroext i8 @commutative_tree_code(i32 noundef %3) #17
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %248, label %235, !prof !1194

235:                                              ; preds = %232
  %236 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %237 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #16
  %238 = tail call zeroext i8 @tree_swap_operands_p(ptr noundef %236, ptr noundef %237, i8 noundef zeroext 0) #17
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %235
  %241 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #16
  %242 = getelementptr inbounds %struct.tree_common, ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !563
  %244 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #16
  %245 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #16
  %246 = tail call ptr @build2_stat(i32 noundef %3, ptr noundef %243, ptr noundef %244, ptr noundef %245) #17
  br label %248

247:                                              ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2954, ptr noundef nonnull @.str.7) #17
  br label %248

248:                                              ; preds = %101, %1, %247, %232, %235, %219, %150, %179, %172, %160, %154, %185, %42, %227, %59, %66, %115, %130, %111, %127, %240
  %249 = phi ptr [ %246, %240 ], [ null, %130 ], [ %60, %59 ], [ %67, %66 ], [ %117, %115 ], [ %112, %111 ], [ %125, %127 ], [ %229, %227 ], [ null, %42 ], [ %186, %185 ], [ null, %154 ], [ null, %160 ], [ null, %172 ], [ null, %179 ], [ null, %150 ], [ null, %219 ], [ null, %235 ], [ null, %232 ], [ null, %247 ], [ null, %1 ], [ null, %101 ]
  ret ptr %249
}

; Function Attrs: optsize
declare i32 @get_gimple_rhs_num_ops(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fold_gimple_cond(ptr noundef %0) unnamed_addr #0 !prof !1195 !PGOFuncName !1196 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  %3 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #16, !range !892
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !553
  %5 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #16
  %6 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #16
  %7 = tail call ptr @fold_binary_loc(i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !1197

9:                                                ; preds = %1
  %10 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %7) #17
  %11 = tail call zeroext i8 @is_gimple_condexpr(ptr noundef %10) #17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13, !prof !1198

13:                                               ; preds = %9
  %14 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %10) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16, !prof !1199

16:                                               ; preds = %13
  tail call void @gimple_cond_set_condition_from_tree(ptr noundef %0, ptr noundef %10) #17
  br label %17

17:                                               ; preds = %1, %13, %9, %16
  %18 = phi i8 [ 1, %16 ], [ 0, %9 ], [ 0, %13 ], [ 0, %1 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_fold_reference(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !1200 !PGOFuncName !1201 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !553
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp ne i64 %5, 45
  %7 = icmp ne i8 %1, 0
  %8 = or i1 %7, %6
  br i1 %8, label %12, label %9, !prof !1202

9:                                                ; preds = %2
  %10 = tail call ptr @fold_read_from_constant_string(ptr noundef nonnull %0) #17
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %62

12:                                               ; preds = %9, %2
  %13 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %0) #16, !range !663
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %15, !prof !1203

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !563
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !558
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26, !prof !1204

23:                                               ; preds = %15
  %24 = tail call ptr @fold(ptr noundef nonnull %0) #17
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %62

26:                                               ; preds = %23, %15, %12
  br label %27

27:                                               ; preds = %26, %27
  %28 = phi ptr [ %32, %27 ], [ %3, %26 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !553
  %30 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %29) #16, !range !663
  %31 = icmp eq i8 %30, 0
  %32 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  br i1 %31, label %33, label %27, !prof !1205, !llvm.loop !1206

33:                                               ; preds = %27
  %34 = load i64, ptr %29, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 47
  br i1 %36, label %37, label %70, !prof !1207

37:                                               ; preds = %33
  %38 = load ptr, ptr %32, align 8, !tbaa !563
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !553
  %40 = tail call fastcc ptr @maybe_fold_stmt_indirect(ptr noundef nonnull %29, ptr noundef %38, ptr noundef %39) #16
  %41 = icmp ne ptr %40, null
  %42 = select i1 %7, i1 %41, i1 false
  br i1 %42, label %43, label %49, !prof !1208

43:                                               ; preds = %37
  %44 = load i64, ptr %40, align 8
  %45 = and i64 %44, 65535
  %46 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !558
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %51, label %64, !prof !1209

49:                                               ; preds = %37
  %50 = icmp eq ptr %40, null
  br i1 %50, label %51, label %64, !prof !1210

51:                                               ; preds = %43, %49
  %52 = load ptr, ptr %28, align 8, !tbaa !553
  %53 = getelementptr inbounds %struct.tree_exp, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !563
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 121
  br i1 %57, label %58, label %62, !prof !1211

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tree_exp, ptr %54, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !563
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64, !prof !1144

62:                                               ; preds = %71, %70, %58, %51, %78, %75, %9, %23, %86, %64
  %63 = phi ptr [ %69, %64 ], [ %91, %86 ], [ %24, %23 ], [ %10, %9 ], [ null, %75 ], [ null, %78 ], [ null, %51 ], [ null, %58 ], [ null, %70 ], [ null, %71 ]
  ret ptr %63

64:                                               ; preds = %43, %49, %58
  %65 = phi ptr [ %60, %58 ], [ %40, %49 ], [ %40, %43 ]
  store ptr %65, ptr %28, align 8, !tbaa !553
  %66 = load ptr, ptr %3, align 8
  %67 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %66, i8 noundef zeroext %1) #16
  %68 = icmp eq ptr %67, null
  %69 = select i1 %68, ptr %66, ptr %67, !prof !1212
  br label %62

70:                                               ; preds = %33
  br i1 %7, label %62, label %71, !prof !1213

71:                                               ; preds = %70
  %72 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %73 = load i32, ptr %72, align 4, !tbaa !558
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %62, !prof !1214

75:                                               ; preds = %71
  %76 = tail call ptr @get_symbol_constant_value(ptr noundef nonnull %29) #16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %62, label %78, !prof !1215

78:                                               ; preds = %75
  %79 = load ptr, ptr %28, align 8, !tbaa !553
  %80 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !563
  %82 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !563
  %84 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %81, ptr noundef %83) #17
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %62, label %86, !prof !567

86:                                               ; preds = %78
  %87 = tail call ptr @unshare_expr(ptr noundef nonnull %76) #17
  store ptr %87, ptr %28, align 8, !tbaa !553
  %88 = load ptr, ptr %3, align 8
  %89 = tail call fastcc ptr @maybe_fold_reference(ptr noundef %88, i8 noundef zeroext 0) #16
  %90 = icmp eq ptr %89, null
  %91 = select i1 %90, ptr %88, ptr %89, !prof !1216
  br label %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fold_gimple_call(ptr noundef %0) unnamed_addr #0 !prof !1217 !PGOFuncName !1218 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %3 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %2) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5, !prof !1219

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 6144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10, !prof !1220

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @ccp_fold_builtin(ptr noundef %2) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %47, label %13, !prof !1221

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @update_call_from_tree(ptr noundef %0, ptr noundef nonnull %11) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %47, !prof !1222

16:                                               ; preds = %13
  tail call fastcc void @gimplify_and_update_call_from_tree(ptr noundef %0, ptr noundef nonnull %11) #16
  br label %47

17:                                               ; preds = %5, %1
  %18 = tail call fastcc ptr @gimple_call_fn(ptr noundef %2) #16
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 50
  br i1 %21, label %22, label %47, !prof !1223

22:                                               ; preds = %17
  %23 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 40), align 8, !tbaa !1224
  %24 = icmp eq ptr %23, null
  br i1 %24, label %47, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !563
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 121
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !563
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !558
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !563
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !563
  %44 = tail call ptr %23(ptr noundef nonnull %18, ptr noundef %43) #17
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  tail call fastcc void @gimple_call_set_fn(ptr noundef %2, ptr noundef nonnull %44) #16
  br label %47

47:                                               ; preds = %31, %25, %22, %17, %10, %39, %16, %13, %46
  %48 = phi i8 [ 1, %46 ], [ 1, %13 ], [ 1, %16 ], [ 0, %39 ], [ 0, %10 ], [ 0, %17 ], [ 0, %22 ], [ 0, %25 ], [ 0, %31 ]
  ret i8 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !552 !PGOFuncName !1232 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !563
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !552 !PGOFuncName !1233 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !563
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2655, ptr noundef nonnull @.str.7) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !563
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #16
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !552 !PGOFuncName !1234 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !563
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !552 !PGOFuncName !1235 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !563
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 2622, ptr noundef nonnull @.str.7) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #16
  ret ptr %9
}

; Function Attrs: optsize
declare void @gimple_set_lhs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @valid_gimple_rhs_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @maybe_fold_tmr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_vector_from_ctor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @commutative_tree_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_swap_operands_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_cond_set_condition_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_read_from_constant_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_fold_stmt_indirect(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1236 !PGOFuncName !1237 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 524288
  %6 = and i64 %4, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !558
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14, !prof !1238

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !563
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %3 ]
  %16 = tail call ptr @fold(ptr noundef %1) #17
  br label %17

17:                                               ; preds = %26, %14
  %18 = phi ptr [ %16, %14 ], [ %24, %26 ]
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %32 [
    i16 116, label %21
    i16 113, label %21
    i16 117, label %21
  ], !prof !1239

21:                                               ; preds = %17, %17, %17
  %22 = load ptr, ptr @global_trees, align 16
  %23 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !563
  %25 = icmp eq ptr %24, %22
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !563
  %29 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !563
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %17, label %32, !prof !1240, !llvm.loop !1241

32:                                               ; preds = %17, %21, %26
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  store ptr %18, ptr %33, align 8, !tbaa !563
  %34 = tail call ptr @fold_read_from_constant_string(ptr noundef nonnull %0) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %115, !prof !1242

36:                                               ; preds = %32
  %37 = load i64, ptr %18, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 66
  br i1 %39, label %40, label %53, !prof !1243

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !563
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 23
  br i1 %45, label %46, label %115

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !563
  %49 = load ptr, ptr @sizetype_tab, align 16, !tbaa !553
  %50 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %2, ptr noundef nonnull %42, i32 noundef 1) #17
  %51 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %49, ptr noundef %50) #17
  %52 = load i64, ptr %48, align 8
  br label %53

53:                                               ; preds = %46, %36
  %54 = phi i64 [ %37, %36 ], [ %52, %46 ]
  %55 = phi ptr [ %2, %36 ], [ %51, %46 ]
  %56 = phi ptr [ %18, %36 ], [ %48, %46 ]
  %57 = and i64 %54, 65535
  %58 = icmp eq i64 %57, 121
  br i1 %58, label %59, label %91, !prof !1244

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.tree_exp, ptr %56, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !563
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 33
  br i1 %64, label %65, label %72, !prof !1245

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_decl_common, ptr %61, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !563
  %68 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %67) #17
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %66, align 8, !tbaa !563
  br label %115

72:                                               ; preds = %65, %59
  %73 = tail call i32 @integer_zerop(ptr noundef %55) #17
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %115, !prof !1245

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !563
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
  %85 = load ptr, ptr %84, align 8, !tbaa !563
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
  br i1 %95, label %96, label %104, !prof !1211

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.tree_exp, ptr %92, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !563
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 28
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !553
  br label %115

104:                                              ; preds = %96, %91
  %105 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !563
  %107 = load i64, ptr %106, align 8
  %108 = trunc i64 %107 to i16
  switch i16 %108, label %114 [
    i16 10, label %109
    i16 12, label %109
  ], !prof !1246

109:                                              ; preds = %104, %104
  %110 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !563
  %112 = tail call ptr @maybe_fold_offset_to_reference(i32 noundef %15, ptr noundef nonnull %56, ptr noundef %55, ptr noundef %111) #16
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115, !prof !1247

114:                                              ; preds = %75, %104, %109
  br label %115

115:                                              ; preds = %88, %80, %80, %80, %83, %83, %83, %72, %70, %40, %109, %32, %114, %102
  %116 = phi ptr [ null, %114 ], [ %103, %102 ], [ %34, %32 ], [ %112, %109 ], [ null, %40 ], [ %78, %88 ], [ %78, %80 ], [ %78, %80 ], [ %78, %80 ], [ %78, %83 ], [ %78, %83 ], [ %78, %83 ], [ %61, %72 ], [ %71, %70 ]
  ret ptr %116
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ccp_fold_builtin(ptr noundef %0) unnamed_addr #0 !prof !1248 !PGOFuncName !1249 {
  %2 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  %4 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #16, !range !663
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !1250

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2593, ptr noundef nonnull @.str.7) #17
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #16
  %9 = icmp eq ptr %8, null
  %10 = zext i1 %9 to i8
  %11 = tail call ptr @fold_call_stmt(ptr noundef %0, i8 noundef zeroext %10) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !1251

13:                                               ; preds = %7
  br i1 %9, label %14, label %181, !prof !1252

14:                                               ; preds = %13
  %15 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %11) #17
  br label %181

16:                                               ; preds = %7
  %17 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #16
  %18 = getelementptr inbounds %struct.tree_function_decl, ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 6144
  %21 = icmp eq i32 %20, 4096
  br i1 %21, label %181, label %22, !prof !1253

22:                                               ; preds = %16
  %23 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %181, label %25, !prof !1254

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
  ], !prof !1255

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
  br i1 %34, label %35, label %181, !prof !1256

35:                                               ; preds = %31
  %36 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  tail call void @bitmap_clear(ptr noundef %36) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %37 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %33) #16
  %38 = zext nneg i32 %33 to i64
  %39 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 %38
  %40 = call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %37, ptr noundef nonnull %39, ptr noundef %36, i32 noundef %32) #16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43, !prof !1257

42:                                               ; preds = %35
  store ptr null, ptr %39, align 8, !tbaa !553
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
  ], !prof !1258

46:                                               ; preds = %43
  %47 = load ptr, ptr %2, align 16, !tbaa !553
  %48 = icmp eq ptr %47, null
  br i1 %48, label %174, label %49, !prof !1259

49:                                               ; preds = %46
  %50 = icmp eq i32 %23, 1
  br i1 %50, label %51, label %174

51:                                               ; preds = %49
  %52 = call fastcc ptr @gimple_call_lhs(ptr noundef %0) #16
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !563
  %55 = load ptr, ptr %2, align 16, !tbaa !553
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
  %64 = load ptr, ptr %63, align 8, !tbaa !563
  %65 = call zeroext i8 @is_gimple_val(ptr noundef %64) #17
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %174, label %181

67:                                               ; preds = %43
  %68 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !553
  %70 = icmp eq ptr %69, null
  br i1 %70, label %174, label %71, !prof !1170

71:                                               ; preds = %67
  %72 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %69) #17
  %73 = icmp ne i8 %72, 0
  %74 = icmp eq i32 %23, 2
  %75 = and i1 %74, %73
  br i1 %75, label %76, label %174, !prof !1260

76:                                               ; preds = %71
  %77 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %78 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %79 = load ptr, ptr %68, align 8, !tbaa !553
  %80 = call ptr @fold_builtin_strcpy(i32 noundef %3, ptr noundef nonnull %17, ptr noundef %77, ptr noundef %78, ptr noundef %79) #17
  br label %175

81:                                               ; preds = %43
  %82 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !553
  %84 = icmp eq ptr %83, null
  br i1 %84, label %174, label %85, !prof !1261

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
  %94 = load ptr, ptr %82, align 8, !tbaa !553
  %95 = call ptr @fold_builtin_strncpy(i32 noundef %3, ptr noundef nonnull %17, ptr noundef %91, ptr noundef %92, ptr noundef %93, ptr noundef %94) #17
  br label %175

96:                                               ; preds = %43
  %97 = icmp eq i32 %23, 2
  br i1 %97, label %98, label %174, !prof !1262

98:                                               ; preds = %96
  %99 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %100 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %101 = load ptr, ptr %2, align 16, !tbaa !553
  %102 = call ptr @fold_builtin_fputs(i32 noundef %3, ptr noundef %99, ptr noundef %100, i8 noundef zeroext %10, i8 noundef zeroext 0, ptr noundef %101) #17
  br label %175

103:                                              ; preds = %43
  %104 = icmp eq i32 %23, 2
  br i1 %104, label %105, label %174, !prof !1263

105:                                              ; preds = %103
  %106 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %107 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %108 = load ptr, ptr %2, align 16, !tbaa !553
  %109 = call ptr @fold_builtin_fputs(i32 noundef %3, ptr noundef %106, ptr noundef %107, i8 noundef zeroext %10, i8 noundef zeroext 1, ptr noundef %108) #17
  br label %175

110:                                              ; preds = %43, %43, %43, %43
  %111 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 2
  %112 = load ptr, ptr %111, align 16, !tbaa !553
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
  %124 = load ptr, ptr %111, align 16, !tbaa !553
  %125 = load i32, ptr %18, align 8
  %126 = and i32 %125, 2047
  %127 = call ptr @fold_builtin_memory_chk(i32 noundef %3, ptr noundef nonnull %17, ptr noundef %120, ptr noundef %121, ptr noundef %122, ptr noundef %123, ptr noundef %124, i8 noundef zeroext %10, i32 noundef %126) #17
  br label %175

128:                                              ; preds = %43, %43
  %129 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !553
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
  %141 = load ptr, ptr %129, align 8, !tbaa !553
  %142 = load i32, ptr %18, align 8
  %143 = and i32 %142, 2047
  %144 = call ptr @fold_builtin_stxcpy_chk(i32 noundef %3, ptr noundef nonnull %17, ptr noundef %138, ptr noundef %139, ptr noundef %140, ptr noundef %141, i8 noundef zeroext %10, i32 noundef %143) #17
  br label %175

145:                                              ; preds = %43
  %146 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 2
  %147 = load ptr, ptr %146, align 16, !tbaa !553
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
  %159 = load ptr, ptr %146, align 16, !tbaa !553
  %160 = call ptr @fold_builtin_strncpy_chk(i32 noundef %3, ptr noundef %155, ptr noundef %156, ptr noundef %157, ptr noundef %158, ptr noundef %159) #17
  br label %175

161:                                              ; preds = %43, %43
  %162 = getelementptr inbounds [3 x ptr], ptr %2, i64 0, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !553
  %164 = icmp eq ptr %163, null
  br i1 %164, label %174, label %165

165:                                              ; preds = %161
  %166 = call zeroext i8 @is_gimple_val(ptr noundef nonnull %163) #17
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %162, align 8, !tbaa !553
  %170 = load i32, ptr %18, align 8
  %171 = and i32 %170, 2047
  %172 = call ptr @gimple_fold_builtin_snprintf_chk(ptr noundef %0, ptr noundef %169, i32 noundef %171) #17
  br label %175

173:                                              ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2759, ptr noundef nonnull @.str.7) #17
  br label %174

174:                                              ; preds = %173, %165, %161, %149, %145, %132, %128, %114, %110, %103, %96, %85, %81, %71, %67, %49, %46, %62, %59
  br label %181

175:                                              ; preds = %168, %154, %137, %119, %105, %98, %90, %76
  %176 = phi ptr [ %172, %168 ], [ %160, %154 ], [ %144, %137 ], [ %127, %119 ], [ %109, %105 ], [ %102, %98 ], [ %95, %90 ], [ %80, %76 ]
  %177 = icmp eq ptr %176, null
  br i1 %177, label %181, label %178, !prof !1264

178:                                              ; preds = %175
  br i1 %9, label %179, label %181, !prof !1172

179:                                              ; preds = %178
  %180 = call ptr @fold_ignored_result(ptr noundef nonnull %176) #17
  br label %181

181:                                              ; preds = %174, %175, %178, %179, %62, %51, %31, %25, %22, %16, %13, %14
  %182 = phi ptr [ %15, %14 ], [ %11, %13 ], [ null, %16 ], [ null, %22 ], [ null, %25 ], [ null, %31 ], [ %56, %51 ], [ %56, %62 ], [ %180, %179 ], [ %176, %178 ], [ null, %175 ], [ null, %174 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret ptr %182
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_and_update_call_from_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1265 !PGOFuncName !1266 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %6 = tail call ptr @gimple_seq_alloc() #17
  store ptr %6, ptr %4, align 8, !tbaa !553
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #18
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %8 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %7) #16, !range !663
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !1267

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3366, ptr noundef nonnull @.str.7) #17
  br label %11

11:                                               ; preds = %2, %10
  %12 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %7) #16
  call void @push_gimplify_context(ptr noundef nonnull %5) #17
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !1268

14:                                               ; preds = %11
  call void @gimplify_and_add(ptr noundef %1, ptr noundef nonnull %4) #17
  br label %17

15:                                               ; preds = %11
  %16 = call ptr @get_initialized_tmp_var(ptr noundef %1, ptr noundef nonnull %4, ptr noundef null) #17
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi ptr [ null, %14 ], [ %16, %15 ]
  call void @pop_gimplify_context(ptr noundef null) #17
  %19 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %7) #16, !range !663
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21, !prof !1267

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8, !tbaa !553
  %23 = call fastcc i32 @gimple_location(ptr noundef %7) #16
  call void @annotate_all_with_location(ptr noundef %22, i32 noundef %23) #17
  br label %24

24:                                               ; preds = %21, %17
  %25 = load ptr, ptr %4, align 8, !tbaa !553
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %25) #16
  %26 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !663
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32, !prof !1269

28:                                               ; preds = %24, %28
  %29 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  call void @find_new_referenced_vars(ptr noundef %29) #17
  call void @gsi_insert_before(ptr noundef %0, ptr noundef %29, i32 noundef 0) #17
  call void @mark_symbols_for_renaming(ptr noundef %29) #17
  call fastcc void @gsi_next(ptr noundef %0) #16
  call fastcc void @gsi_next(ptr noundef nonnull %3) #16
  %30 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !663
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %28, label %32, !prof !1270, !llvm.loop !1271

32:                                               ; preds = %28, %24
  br i1 %13, label %33, label %35, !prof !1268

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
define internal fastcc void @gimple_call_set_fn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !552 !PGOFuncName !1272 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare ptr @fold_call_stmt(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @get_maxval_strlen(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !1273 !PGOFuncName !1274 {
  br label %5

5:                                                ; preds = %108, %4
  %6 = phi ptr [ %0, %4 ], [ %109, %108 ]
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %46 [
    i16 141, label %85
    i16 56, label %9
    i16 121, label %22
  ], !prof !1275

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !563
  %12 = tail call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %11, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %80, %76, %79, %66, %72, %55, %48, %52, %9, %83, %97, %120, %117, %90, %103, %85, %16
  %15 = phi i8 [ %21, %16 ], [ 1, %83 ], [ 0, %9 ], [ 0, %52 ], [ 0, %48 ], [ 0, %55 ], [ 0, %72 ], [ 0, %66 ], [ 1, %79 ], [ 1, %76 ], [ 0, %80 ], [ 1, %97 ], [ 0, %117 ], [ 1, %120 ], [ 0, %90 ], [ 0, %103 ], [ 1, %85 ]
  ret i8 %15

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !563
  %19 = tail call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %18, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i8
  br label %14

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !563
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 45
  br i1 %27, label %28, label %46, !prof !1276

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !563
  %31 = tail call i32 @integer_zerop(ptr noundef %30) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33, !prof !1277

33:                                               ; preds = %28
  %34 = load ptr, ptr %23, align 8, !tbaa !563
  %35 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !563
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 47
  br i1 %39, label %40, label %46, !prof !1277

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !563
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %108, label %46

46:                                               ; preds = %33, %40, %5, %22, %28
  %47 = icmp eq i32 %3, 2
  br i1 %47, label %48, label %55, !prof !1278

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
  br i1 %57, label %14, label %58, !prof !1279

58:                                               ; preds = %55
  %59 = load ptr, ptr %1, align 8, !tbaa !553
  %60 = icmp eq ptr %59, null
  br i1 %60, label %83, label %64, !prof !1280

61:                                               ; preds = %52
  %62 = load ptr, ptr %1, align 8, !tbaa !553
  %63 = icmp eq ptr %62, null
  br i1 %63, label %83, label %66, !prof !1280

64:                                               ; preds = %58
  %65 = icmp sgt i32 %3, 0
  br i1 %65, label %66, label %80, !prof !1281

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
  store ptr %67, ptr %1, align 8, !tbaa !553
  br label %14

80:                                               ; preds = %64
  %81 = tail call i32 @simple_cst_equal(ptr noundef nonnull %56, ptr noundef nonnull %59) #17
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %14, !prof !1282

83:                                               ; preds = %61, %80, %58
  %84 = phi ptr [ %6, %61 ], [ %56, %80 ], [ %56, %58 ]
  store ptr %84, ptr %1, align 8, !tbaa !553
  br label %14

85:                                               ; preds = %5
  %86 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %87 = load i32, ptr %86, align 8, !tbaa !563
  %88 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %87) #17
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %14, !prof !1283

90:                                               ; preds = %85
  %91 = load i32, ptr %86, align 8, !tbaa !563
  %92 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %91) #17
  %93 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !563
  %95 = tail call fastcc i32 @gimple_code(ptr noundef %94) #16, !range !670
  %96 = trunc i32 %95 to i8
  switch i8 %96, label %14 [
    i8 6, label %100
    i8 16, label %97
  ], !prof !1284

97:                                               ; preds = %90
  %98 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %94) #16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %14, label %110, !prof !617

100:                                              ; preds = %90
  %101 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %94) #17
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %106, !prof !1285

103:                                              ; preds = %100
  %104 = tail call zeroext i8 @gimple_assign_unary_nop_p(ptr noundef %94) #17
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %14, label %106, !prof !1286

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
  %114 = load ptr, ptr %113, align 8, !tbaa !760
  %115 = tail call fastcc ptr @gimple_phi_result(ptr noundef %94) #16
  %116 = icmp eq ptr %114, %115
  br i1 %116, label %120, label %117, !prof !1287

117:                                              ; preds = %110
  %118 = tail call fastcc zeroext i8 @get_maxval_strlen(ptr noundef %114, ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %14, label %120, !prof !1288

120:                                              ; preds = %110, %117
  %121 = add nuw i32 %111, 1
  %122 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %94) #16
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %110, label %14, !prof !1289, !llvm.loop !1290
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_cast(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_builtin_strcpy(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_builtin_strncpy(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_builtin_fputs(i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_builtin_memory_chk(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_builtin_stxcpy_chk(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_builtin_strncpy_chk(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_fold_builtin_snprintf_chk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_ignored_result(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_strlen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_unary_nop_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #2

; Function Attrs: optsize
declare void @push_gimplify_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_initialized_tmp_var(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pop_gimplify_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1265 !PGOFuncName !1291 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @annotate_all_with_location(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !1265 !PGOFuncName !1292 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #16
  store ptr %3, ptr %0, align 8, !tbaa !777
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !779
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !1267

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !785
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !1267

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #16
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !780
  ret void
}

; Function Attrs: optsize
declare void @find_new_referenced_vars(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #2

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1293 !PGOFuncName !1294 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !663
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !1295

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1407, ptr noundef nonnull @.str.7) #17
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !563
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vdef(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1293 !PGOFuncName !1296 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !663
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !1295

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1416, ptr noundef nonnull @.str.7) #17
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !563
  ret void
}

; Function Attrs: optsize
declare void @move_ssa_defining_stmt_for_defs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #14 !prof !1265 !PGOFuncName !1297 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !563
  ret void
}

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @fold_stmt_inplace(ptr noundef %0) local_unnamed_addr #0 !prof !1298 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #17
  %3 = call fastcc zeroext i8 @fold_stmt_1(ptr noundef nonnull %2, i8 noundef zeroext 1) #16, !range !663
  %4 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %7, label %6, !prof !1299

6:                                                ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3178, ptr noundef nonnull @.str.7) #17
  br label %7

7:                                                ; preds = %1, %6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret i8 %3
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_fold_all_builtins() #0 !prof !1300 !PGOFuncName !1301 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !553
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !716
  %6 = load ptr, ptr %5, align 8, !tbaa !717
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !719
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !721
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %126, label %12, !prof !1302

12:                                               ; preds = %0, %111
  %13 = phi ptr [ %115, %111 ], [ %8, %0 ]
  %14 = phi i8 [ %113, %111 ], [ 0, %0 ]
  %15 = phi i32 [ %112, %111 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %13) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1303
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %16 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !663
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %111, !prof !1304

18:                                               ; preds = %12, %106
  %19 = phi i8 [ %108, %106 ], [ %14, %12 ]
  %20 = phi i32 [ %107, %106 ], [ %15, %12 ]
  %21 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %22 = call fastcc i32 @gimple_code(ptr noundef %21) #16, !range !670
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %24, label %103, !prof !1305, !llvm.loop !1306

24:                                               ; preds = %18
  %25 = call fastcc ptr @gimple_call_fndecl(ptr noundef %21) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %103, label %27, !prof !1307, !llvm.loop !1306

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_function_decl, ptr %25, i64 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 6144
  %31 = icmp eq i32 %30, 6144
  br i1 %31, label %32, label %103, !prof !1308, !llvm.loop !1306

32:                                               ; preds = %27
  %33 = call fastcc ptr @ccp_fold_builtin(ptr noundef %21) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !1309

35:                                               ; preds = %32
  %36 = load ptr, ptr @cfun, align 8, !tbaa !553
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
  ], !prof !1310, !llvm.loop !1306

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !553
  br label %48

42:                                               ; preds = %37
  %43 = call fastcc ptr @optimize_stack_restore(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %103, label %48, !prof !1311, !llvm.loop !1306

45:                                               ; preds = %37, %37, %37
  %46 = call fastcc ptr @optimize_stdarg_builtin(ptr noundef %21) #16
  %47 = icmp eq ptr %46, null
  br i1 %47, label %103, label %48, !prof !1312, !llvm.loop !1306

48:                                               ; preds = %35, %40, %42, %45
  %49 = phi ptr [ %33, %35 ], [ %46, %45 ], [ %43, %42 ], [ %41, %40 ]
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52, !prof !1313

52:                                               ; preds = %48
  %53 = load i32, ptr @dump_flags, align 4, !tbaa !558
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = call i64 @fwrite(ptr nonnull @.str.27, i64 13, i64 1, ptr nonnull %50)
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %59 = load i32, ptr @dump_flags, align 4, !tbaa !558
  call void @print_gimple_stmt(ptr noundef %58, ptr noundef %21, i32 noundef 0, i32 noundef %59) #17
  br label %60

60:                                               ; preds = %56, %52, %48
  %61 = call zeroext i8 @update_call_from_tree(ptr noundef nonnull %1, ptr noundef %49) #17
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %65, !prof !1314

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
  br i1 %69, label %74, label %70, !prof !1313

70:                                               ; preds = %65
  %71 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %13) #17
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i8 %19, i8 1
  br label %74

74:                                               ; preds = %70, %65
  %75 = phi i8 [ %19, %65 ], [ %73, %70 ]
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %77 = icmp eq ptr %76, null
  br i1 %77, label %88, label %78, !prof !1313

78:                                               ; preds = %74
  %79 = load i32, ptr @dump_flags, align 4, !tbaa !558
  %80 = and i32 %79, 8
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = call i64 @fwrite(ptr nonnull @.str.28, i64 5, i64 1, ptr nonnull %76)
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %85 = load i32, ptr @dump_flags, align 4, !tbaa !558
  call void @print_gimple_stmt(ptr noundef %84, ptr noundef %67, i32 noundef 0, i32 noundef %85) #17
  %86 = load ptr, ptr @dump_file, align 8, !tbaa !553
  %87 = call i32 @fputc(i32 10, ptr %86)
  br label %88

88:                                               ; preds = %82, %78, %74
  %89 = call fastcc i32 @gimple_code(ptr noundef %67) #16, !range !670
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %91, label %103, !prof !1315, !llvm.loop !1306

91:                                               ; preds = %88
  %92 = call fastcc ptr @gimple_call_fndecl(ptr noundef %67) #16
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94, !prof !1316

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.tree_function_decl, ptr %92, i64 0, i32 5
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, 6144
  %98 = icmp eq i32 %97, 6144
  br i1 %98, label %99, label %103, !prof !1317

99:                                               ; preds = %94
  %100 = xor i32 %96, %29
  %101 = and i32 %100, 2047
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106, !prof !1316

103:                                              ; preds = %91, %94, %99, %88, %37, %45, %42, %24, %27, %18
  %104 = phi i32 [ %20, %18 ], [ %20, %27 ], [ %20, %24 ], [ %20, %42 ], [ %20, %45 ], [ %20, %37 ], [ %66, %88 ], [ %66, %99 ], [ %66, %94 ], [ %66, %91 ]
  %105 = phi i8 [ %19, %18 ], [ %19, %27 ], [ %19, %24 ], [ %19, %42 ], [ %19, %45 ], [ %19, %37 ], [ %75, %88 ], [ %75, %99 ], [ %75, %94 ], [ %75, %91 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #16
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi i32 [ %66, %99 ], [ %104, %103 ]
  %108 = phi i8 [ %75, %99 ], [ %105, %103 ]
  %109 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16, !range !663
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %18, label %111, !prof !1318

111:                                              ; preds = %106, %12
  %112 = phi i32 [ %15, %12 ], [ %107, %106 ]
  %113 = phi i8 [ %14, %12 ], [ %108, %106 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !719
  %116 = load ptr, ptr @cfun, align 8, !tbaa !553
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !716
  %119 = getelementptr inbounds %struct.control_flow_graph, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !721
  %121 = icmp eq ptr %115, %120
  br i1 %121, label %122, label %12, !prof !1319, !llvm.loop !1320

122:                                              ; preds = %111
  %123 = icmp eq i8 %113, 0
  br i1 %123, label %126, label %124, !prof !1321

124:                                              ; preds = %122
  %125 = or i32 %112, 32
  br label %126

126:                                              ; preds = %0, %124, %122
  %127 = phi i32 [ %125, %124 ], [ %112, %122 ], [ 0, %0 ]
  ret i32 %127
}

; Function Attrs: optsize
declare void @gimple_remove_stmt_histograms(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @optimize_stack_restore(ptr nocapture noundef byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !1293 !PGOFuncName !1322 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %4) #16, !range !670
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %89, !prof !1172

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %4) #16
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %89, !prof !1172

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %89, !prof !1172

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !563
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 10
  br i1 %21, label %29, label %22, !prof !1172

22:                                               ; preds = %15
  %23 = tail call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !563
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 12
  br i1 %28, label %29, label %89

29:                                               ; preds = %22, %15
  call fastcc void @gsi_next(ptr noundef nonnull %0) #16
  %30 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16, !range !663
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %49, !prof !1323

32:                                               ; preds = %29, %46
  %33 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %34 = tail call fastcc i32 @gimple_code(ptr noundef %33) #16, !range !670
  %35 = trunc i32 %34 to i8
  switch i8 %35, label %46 [
    i8 7, label %89
    i8 8, label %36
  ], !prof !1324

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
  %47 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16, !range !663
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %32, label %49, !prof !1325, !llvm.loop !1326

49:                                               ; preds = %46, %29
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !1327
  %52 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %51) #16
  switch i32 %52, label %89 [
    i32 0, label %63
    i32 1, label %53
  ], !prof !1328

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %3) #16
  %55 = getelementptr inbounds %struct.edge_def, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !757
  %57 = load ptr, ptr @cfun, align 8, !tbaa !553
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !716
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !721
  %62 = icmp eq ptr %56, %61
  br i1 %62, label %63, label %89, !prof !1311

63:                                               ; preds = %44, %49, %53
  %64 = tail call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %65 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %64) #16
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %87, label %67, !prof !1329

67:                                               ; preds = %63
  %68 = tail call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %69 = getelementptr inbounds %struct.tree_ssa_name, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !563
  %71 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %70) #16, !range !663
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %87, label %73, !prof !1329

73:                                               ; preds = %67
  %74 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %70) #16
  %75 = icmp eq ptr %74, null
  br i1 %75, label %87, label %76, !prof !1329

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tree_function_decl, ptr %74, i64 0, i32 5
  %78 = load i32, ptr %77, align 8
  %79 = and i32 %78, 8191
  %80 = icmp eq i32 %79, 6670
  br i1 %80, label %81, label %87, !prof !1330

81:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %70) #17
  %82 = call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef 0) #16
  %83 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !563
  %85 = call ptr @build_int_cst(ptr noundef %84, i64 noundef 0) #17
  %86 = call zeroext i8 @update_call_from_tree(ptr noundef nonnull %2, ptr noundef %85) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  br label %87

87:                                               ; preds = %67, %81, %76, %73, %63
  %88 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !553
  br label %89

89:                                               ; preds = %32, %44, %36, %39, %49, %53, %1, %7, %10, %22, %87
  %90 = phi ptr [ %88, %87 ], [ null, %22 ], [ null, %10 ], [ null, %7 ], [ null, %1 ], [ null, %53 ], [ null, %49 ], [ null, %39 ], [ null, %36 ], [ null, %44 ], [ null, %32 ]
  ret ptr %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @optimize_stdarg_builtin(ptr noundef %0) unnamed_addr #0 !prof !1331 !PGOFuncName !1332 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #16
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %94, !prof !1333

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #16
  %7 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 70), align 8, !tbaa !1334
  %8 = tail call ptr %7(ptr noundef %6) #17
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %19 [
    i16 10, label %11
    i16 12, label %11
  ], !prof !1335

11:                                               ; preds = %5, %5
  %12 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !563
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !553
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %19, label %16, !prof !1312

16:                                               ; preds = %11
  %17 = load ptr, ptr @integer_types, align 16, !tbaa !553
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
  ], !prof !1336

24:                                               ; preds = %19
  %25 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 72), align 8
  %26 = icmp ne ptr %25, null
  %27 = select i1 %20, i1 true, i1 %26
  %28 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 492), align 16
  %29 = icmp eq ptr %28, null
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %94, label %31, !prof !1337

31:                                               ; preds = %24
  %32 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #16
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %94, !prof !1338

34:                                               ; preds = %31
  %35 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #16
  %36 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !563
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %94 [
    i16 10, label %40
    i16 12, label %40
  ], !prof !1339

40:                                               ; preds = %34, %34
  %41 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !563
  %43 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !563
  %45 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 16
  %46 = load ptr, ptr %45, align 8, !tbaa !563
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %48, label %94, !prof !1338

48:                                               ; preds = %40
  %49 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %2, ptr noundef nonnull %35) #17
  %50 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 492), align 16, !tbaa !553
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !553
  %52 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %2, ptr noundef %50, i32 noundef 1, ptr noundef %51) #17
  %53 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !563
  %55 = tail call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %54, ptr noundef %52) #17
  %56 = load ptr, ptr %53, align 8, !tbaa !563
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
  %65 = load ptr, ptr %64, align 8, !tbaa !563
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i16
  switch i16 %67, label %94 [
    i16 10, label %68
    i16 12, label %68
  ]

68:                                               ; preds = %62, %62
  %69 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !563
  %71 = getelementptr inbounds %struct.tree_type, ptr %70, i64 0, i32 16
  %72 = load ptr, ptr %71, align 8, !tbaa !563
  %73 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 16
  %74 = load ptr, ptr %73, align 8, !tbaa !563
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %68
  %77 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %2, ptr noundef nonnull %63) #17
  %78 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #16
  %79 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !563
  %81 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 16
  %82 = load ptr, ptr %81, align 8, !tbaa !563
  %83 = load ptr, ptr %73, align 8, !tbaa !563
  %84 = icmp eq ptr %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !563
  %88 = tail call ptr @fold_convert_loc(i32 noundef %2, ptr noundef %87, ptr noundef nonnull %78) #17
  %89 = load ptr, ptr %86, align 8, !tbaa !563
  %90 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %89, ptr noundef %77, ptr noundef %88) #17
  br label %94

91:                                               ; preds = %19
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !553
  br label %94

93:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3339, ptr noundef nonnull @.str.7) #17
  br label %94

94:                                               ; preds = %76, %68, %62, %59, %58, %40, %34, %31, %24, %1, %93, %91, %85, %48
  %95 = phi ptr [ null, %93 ], [ %92, %91 ], [ %90, %85 ], [ %57, %48 ], [ null, %1 ], [ null, %24 ], [ null, %31 ], [ null, %34 ], [ null, %40 ], [ null, %58 ], [ null, %59 ], [ null, %62 ], [ null, %68 ], [ null, %76 ]
  ret ptr %95
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !1340 !PGOFuncName !1341 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !663
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !1342

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !1293 !PGOFuncName !1343 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !780
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !1344 !PGOFuncName !1345 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !583

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1346
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1293 !PGOFuncName !1348 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !663
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1295

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 645, ptr noundef nonnull @.str.7) #17
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1327
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #16
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #0 !prof !1349 !PGOFuncName !1350 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1351
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6, !prof !1329

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1351
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15, !prof !1323

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !563
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #16, !range !663
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !558
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
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1293 !PGOFuncName !1352 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1327
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1349 !PGOFuncName !1353 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !670
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!551}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550}
!36 = !{ptr @get_symbol_constant_value, ptr @tree_strip_nop_conversions, i64 9549}
!37 = !{ptr @get_symbol_constant_value, ptr @is_gimple_min_invariant, i64 9549}
!38 = !{ptr @get_symbol_constant_value, ptr @get_base_address, i64 9}
!39 = !{ptr @get_symbol_constant_value, ptr @gimple_referenced_vars, i64 1}
!40 = !{ptr @get_symbol_constant_value, ptr @add_referenced_var, i64 1}
!41 = !{ptr @get_symbol_constant_value, ptr @fold_convert_loc, i64 3}
!42 = !{ptr @may_propagate_address_into_dereference, ptr @fancy_abort, i64 1}
!43 = !{ptr @may_propagate_address_into_dereference, ptr @is_gimple_min_invariant, i64 10000}
!44 = !{ptr @may_propagate_address_into_dereference, ptr @useless_type_conversion_p, i64 19400}
!45 = !{ptr @fold_const_aggregate_ref, ptr @get_symbol_constant_value, i64 7280}
!46 = !{ptr @fold_const_aggregate_ref, ptr @fold_const_aggregate_ref, i64 1041207}
!47 = !{ptr @fold_const_aggregate_ref, ptr @get_value, i64 116888}
!48 = !{ptr @fold_const_aggregate_ref, ptr @VEC_constructor_elt_base_length, i64 278796}
!49 = !{ptr @fold_const_aggregate_ref, ptr @vector_type_mode, i64 4}
!50 = !{ptr @fold_const_aggregate_ref, ptr @compare_tree_int, i64 179}
!51 = !{ptr @fold_const_aggregate_ref, ptr @build_int_cst_type, i64 178}
!52 = !{ptr @fold_const_aggregate_ref, ptr @VEC_constructor_elt_base_index, i64 290917}
!53 = !{ptr @fold_const_aggregate_ref, ptr @tree_int_cst_equal, i64 277650}
!54 = !{ptr @fold_const_aggregate_ref, ptr @tree_strip_nop_conversions, i64 3498}
!55 = !{ptr @fold_const_aggregate_ref, ptr @get_base_address, i64 615}
!56 = !{ptr @fold_const_aggregate_ref, ptr @add_referenced_var, i64 88}
!57 = !{ptr @fold_const_aggregate_ref, ptr @fold_build1_stat_loc, i64 1}
!58 = !{ptr @fold_const_aggregate_ref, ptr @useless_type_conversion_p, i64 189}
!59 = !{ptr @get_value, ptr @get_default_value, i64 1475322}
!60 = !{ptr @get_value, ptr @canonicalize_float_value, i64 6783774}
!61 = !{ptr @get_default_value, ptr @gimple_nop_p, i64 1475322}
!62 = !{ptr @get_default_value, ptr @is_gimple_reg, i64 38080}
!63 = !{ptr @get_default_value, ptr @is_gimple_assign, i64 1437242}
!64 = !{ptr @get_default_value, ptr @is_gimple_call, i64 152711}
!65 = !{ptr @get_default_value, ptr @gimple_call_lhs, i64 7485}
!66 = !{ptr @get_default_value, ptr @gimple_code, i64 145227}
!67 = !{ptr @get_default_value, ptr @gimple_assign_single_p, i64 1437241}
!68 = !{ptr @get_default_value, ptr @gimple_assign_rhs1, i64 992124}
!69 = !{ptr @get_default_value, ptr @get_symbol_constant_value, i64 127527}
!70 = !{ptr @canonicalize_float_value, ptr @vector_type_mode, i64 1}
!71 = !{ptr @canonicalize_float_value, ptr @real_isnegzero, i64 2}
!72 = !{ptr @canonicalize_float_value, ptr @build_real, i64 1}
!73 = !{ptr @canonicalize_float_value, ptr @real_isnan, i64 2}
!74 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 1475322}
!75 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 4416852}
!76 = !{ptr @is_gimple_call, ptr @gimple_code, i64 5257232}
!77 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 695872}
!78 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 4023714}
!79 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 15593117}
!80 = !{ptr @gimple_op, ptr @gimple_ops, i64 15593116}
!81 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 18274725}
!82 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 15597950}
!83 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!84 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 15597950}
!85 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 15597950}
!86 = !{ptr @do_ssa_ccp, ptr @ccp_initialize, i64 22268}
!87 = !{ptr @do_ssa_ccp, ptr @ssa_propagate, i64 22268}
!88 = !{ptr @do_ssa_ccp, ptr @ccp_finalize, i64 22268}
!89 = !{ptr @ccp_initialize, ptr @VEC_tree_base_length, i64 22268}
!90 = !{ptr @ccp_initialize, ptr @xcalloc, i64 22268}
!91 = !{ptr @ccp_initialize, ptr @gsi_start_bb, i64 737392}
!92 = !{ptr @ccp_initialize, ptr @gsi_end_p, i64 4002403}
!93 = !{ptr @ccp_initialize, ptr @gsi_stmt, i64 2527619}
!94 = !{ptr @ccp_initialize, ptr @stmt_ends_bb_p, i64 2254437}
!95 = !{ptr @ccp_initialize, ptr @surely_varying_stmt_p, i64 1790493}
!96 = !{ptr @ccp_initialize, ptr @op_iter_init_tree, i64 498181}
!97 = !{ptr @ccp_initialize, ptr @op_iter_done, i64 1062831}
!98 = !{ptr @ccp_initialize, ptr @set_value_varying, i64 564650}
!99 = !{ptr @ccp_initialize, ptr @op_iter_next_tree, i64 564650}
!100 = !{ptr @ccp_initialize, ptr @prop_set_simulate_again, i64 2527619}
!101 = !{ptr @ccp_initialize, ptr @gsi_next, i64 2527619}
!102 = !{ptr @ccp_initialize, ptr @gsi_start_phis, i64 737392}
!103 = !{ptr @ccp_initialize, ptr @gimple_phi_result, i64 273182}
!104 = !{ptr @ccp_initialize, ptr @is_gimple_reg, i64 273182}
!105 = !{ptr @ccp_visit_stmt, ptr @gimple_code, i64 1804263}
!106 = !{ptr @ccp_visit_stmt, ptr @visit_assignment, i64 1330572}
!107 = !{ptr @ccp_visit_stmt, ptr @gimple_call_lhs, i64 17254}
!108 = !{ptr @ccp_visit_stmt, ptr @visit_cond_stmt, i64 441784}
!109 = !{ptr @ccp_visit_stmt, ptr @op_iter_init_tree, i64 31907}
!110 = !{ptr @ccp_visit_stmt, ptr @op_iter_done, i64 31908}
!111 = !{ptr @ccp_visit_stmt, ptr @set_lattice_value, i64 1}
!112 = !{ptr @ccp_visit_stmt, ptr @op_iter_next_tree, i64 1}
!113 = !{ptr @ccp_visit_phi_node, ptr @fwrite, i64 2}
!114 = !{ptr @ccp_visit_phi_node, ptr @print_gimple_stmt, i64 1}
!115 = !{ptr @ccp_visit_phi_node, ptr @gimple_phi_result, i64 511075}
!116 = !{ptr @ccp_visit_phi_node, ptr @get_value, i64 714272}
!117 = !{ptr @ccp_visit_phi_node, ptr @fancy_abort, i64 1}
!118 = !{ptr @ccp_visit_phi_node, ptr @gimple_phi_num_args, i64 1572972}
!119 = !{ptr @ccp_visit_phi_node, ptr @gimple_phi_arg_edge, i64 1337601}
!120 = !{ptr @ccp_visit_phi_node, ptr @fprintf, i64 1}
!121 = !{ptr @ccp_visit_phi_node, ptr @gimple_phi_arg, i64 645300}
!122 = !{ptr @ccp_visit_phi_node, ptr @is_gimple_min_invariant, i64 645300}
!123 = !{ptr @ccp_visit_phi_node, ptr @ccp_lattice_meet, i64 645300}
!124 = !{ptr @ccp_visit_phi_node, ptr @fputc, i64 2}
!125 = !{ptr @ccp_visit_phi_node, ptr @print_generic_expr, i64 1}
!126 = !{ptr @ccp_visit_phi_node, ptr @dump_lattice_value, i64 2}
!127 = !{ptr @ccp_visit_phi_node, ptr @set_lattice_value, i64 255537}
!128 = !{ptr @ccp_finalize, ptr @do_dbg_cnt, i64 22268}
!129 = !{ptr @ccp_finalize, ptr @substitute_and_fold, i64 22268}
!130 = !{ptr @ccp_finalize, ptr @free, i64 22268}
!131 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 978070}
!132 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 978070}
!133 = !{ptr @surely_varying_stmt_p, ptr @gimple_has_volatile_ops, i64 1790573}
!134 = !{ptr @surely_varying_stmt_p, ptr @is_gimple_call, i64 1790547}
!135 = !{ptr @surely_varying_stmt_p, ptr @gimple_call_lhs, i64 267414}
!136 = !{ptr @surely_varying_stmt_p, ptr @gimple_call_fndecl, i64 162550}
!137 = !{ptr @surely_varying_stmt_p, ptr @gimple_vdef, i64 1523133}
!138 = !{ptr @surely_varying_stmt_p, ptr @gimple_code, i64 1367623}
!139 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 2676665}
!140 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 2676665}
!141 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 2139930}
!142 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 564676}
!143 = !{ptr @prop_set_simulate_again, ptr @gimple_set_visited, i64 2527730}
!144 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 3937129}
!145 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 366009}
!146 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 1523137}
!147 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 9628620}
!148 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 726965}
!149 = !{ptr @op_iter_init, ptr @fancy_abort, i64 1}
!150 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 530110}
!151 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!152 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 2146555}
!153 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 2106520}
!154 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 530109}
!155 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 2146556}
!156 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 3082566}
!157 = !{ptr @visit_assignment, ptr @gimple_get_lhs, i64 1330574}
!158 = !{ptr @visit_assignment, ptr @gimple_code, i64 1330574}
!159 = !{ptr @visit_assignment, ptr @gimple_call_lhs, i64 7544}
!160 = !{ptr @visit_assignment, ptr @fancy_abort, i64 1}
!161 = !{ptr @visit_assignment, ptr @gimple_assign_copy_p, i64 1330574}
!162 = !{ptr @visit_assignment, ptr @gimple_assign_rhs1, i64 87286}
!163 = !{ptr @visit_assignment, ptr @get_value, i64 49902}
!164 = !{ptr @visit_assignment, ptr @evaluate_stmt, i64 1280672}
!165 = !{ptr @visit_assignment, ptr @set_lattice_value, i64 1330573}
!166 = !{ptr @visit_cond_stmt, ptr @gimple_bb, i64 441783}
!167 = !{ptr @visit_cond_stmt, ptr @evaluate_stmt, i64 441783}
!168 = !{ptr @visit_cond_stmt, ptr @find_taken_edge, i64 10563}
!169 = !{ptr @set_lattice_value, ptr @get_value, i64 1586112}
!170 = !{ptr @set_lattice_value, ptr @canonicalize_float_value, i64 1586112}
!171 = !{ptr @set_lattice_value, ptr @operand_equal_p, i64 30167}
!172 = !{ptr @set_lattice_value, ptr @fancy_abort, i64 3}
!173 = !{ptr @set_lattice_value, ptr @dump_lattice_value, i64 1}
!174 = !{ptr @set_lattice_value, ptr @fwrite, i64 1}
!175 = !{ptr @evaluate_stmt, ptr @likely_value, i64 2146556}
!176 = !{ptr @evaluate_stmt, ptr @fold_defer_overflow_warnings, i64 2146556}
!177 = !{ptr @evaluate_stmt, ptr @ccp_fold, i64 1811324}
!178 = !{ptr @evaluate_stmt, ptr @gimple_code, i64 335159}
!179 = !{ptr @evaluate_stmt, ptr @gimple_assign_rhs_code, i64 224991}
!180 = !{ptr @evaluate_stmt, ptr @get_gimple_rhs_class, i64 224991}
!181 = !{ptr @evaluate_stmt, ptr @gimple_assign_rhs1, i64 19780}
!182 = !{ptr @evaluate_stmt, ptr @gimple_switch_index, i64 7909}
!183 = !{ptr @evaluate_stmt, ptr @fancy_abort, i64 34086}
!184 = !{ptr @evaluate_stmt, ptr @is_gimple_min_invariant, i64 183003}
!185 = !{ptr @evaluate_stmt, ptr @fold_undefer_overflow_warnings, i64 2146556}
!186 = !{ptr @likely_value, ptr @gimple_code, i64 2146556}
!187 = !{ptr @likely_value, ptr @fancy_abort, i64 68}
!188 = !{ptr @likely_value, ptr @gimple_has_volatile_ops, i64 2146556}
!189 = !{ptr @likely_value, ptr @op_iter_init_tree, i64 2146555}
!190 = !{ptr @likely_value, ptr @op_iter_done, i64 4286484}
!191 = !{ptr @likely_value, ptr @get_value, i64 2139929}
!192 = !{ptr @likely_value, ptr @op_iter_next_tree, i64 2139929}
!193 = !{ptr @likely_value, ptr @is_gimple_call, i64 2146555}
!194 = !{ptr @likely_value, ptr @gimple_has_lhs, i64 2146555}
!195 = !{ptr @likely_value, ptr @gimple_num_ops, i64 7241960}
!196 = !{ptr @likely_value, ptr @gimple_op, i64 5095405}
!197 = !{ptr @likely_value, ptr @is_gimple_min_invariant, i64 1855892}
!198 = !{ptr @likely_value, ptr @gimple_assign_rhs_code, i64 30}
!199 = !{ptr @likely_value, ptr @gimple_references_memory_p, i64 1085783}
!200 = !{ptr @ccp_fold, ptr @gimple_location, i64 1811325}
!201 = !{ptr @ccp_fold, ptr @gimple_code, i64 1811325}
!202 = !{ptr @ccp_fold, ptr @gimple_assign_rhs_code, i64 1283579}
!203 = !{ptr @ccp_fold, ptr @get_gimple_rhs_class, i64 1048080}
!204 = !{ptr @ccp_fold, ptr @gimple_assign_rhs1, i64 1048079}
!205 = !{ptr @ccp_fold, ptr @get_value, i64 1092182}
!206 = !{ptr @ccp_fold, ptr @handled_component_p, i64 16891}
!207 = !{ptr @ccp_fold, ptr @may_propagate_address_into_dereference, i64 6}
!208 = !{ptr @ccp_fold, ptr @unshare_expr, i64 6}
!209 = !{ptr @ccp_fold, ptr @recompute_tree_invariant_for_addr_expr, i64 6}
!210 = !{ptr @ccp_fold, ptr @VEC_constructor_elt_base_index, i64 3}
!211 = !{ptr @ccp_fold, ptr @tree_cons_stat, i64 2}
!212 = !{ptr @ccp_fold, ptr @VEC_constructor_elt_base_length, i64 2}
!213 = !{ptr @ccp_fold, ptr @fold_unary_loc, i64 1}
!214 = !{ptr @ccp_fold, ptr @useless_type_conversion_p, i64 4875}
!215 = !{ptr @ccp_fold, ptr @fold_const_aggregate_ref, i64 635196}
!216 = !{ptr @ccp_fold, ptr @get_symbol_constant_value, i64 127471}
!217 = !{ptr @ccp_fold, ptr @gimple_assign_lhs, i64 12069}
!218 = !{ptr @ccp_fold, ptr @maybe_fold_offset_to_address, i64 4640}
!219 = !{ptr @ccp_fold, ptr @gimple_expr_type, i64 243932}
!220 = !{ptr @ccp_fold, ptr @fold_unary_ignore_overflow_loc, i64 10106}
!221 = !{ptr @ccp_fold, ptr @gimple_assign_rhs2, i64 235499}
!222 = !{ptr @ccp_fold, ptr @fold_binary_loc, i64 989762}
!223 = !{ptr @ccp_fold, ptr @fancy_abort, i64 2}
!224 = !{ptr @ccp_fold, ptr @gimple_call_fn, i64 7275}
!225 = !{ptr @ccp_fold, ptr @gimple_call_num_args, i64 14138}
!226 = !{ptr @ccp_fold, ptr @gimple_call_arg, i64 6504}
!227 = !{ptr @ccp_fold, ptr @gimple_call_return_type, i64 3817}
!228 = !{ptr @ccp_fold, ptr @build_call_array_loc, i64 3817}
!229 = !{ptr @ccp_fold, ptr @fold_call_expr, i64 3817}
!230 = !{ptr @ccp_fold, ptr @tree_strip_nop_conversions, i64 118}
!231 = !{ptr @ccp_fold, ptr @gimple_cond_lhs, i64 755936}
!232 = !{ptr @ccp_fold, ptr @gimple_cond_rhs, i64 755936}
!233 = !{ptr @ccp_fold, ptr @gimple_cond_code, i64 755936}
!234 = !{ptr @ccp_fold, ptr @gimple_switch_index, i64 33}
!235 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 2551223}
!236 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 2551223}
!237 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 1234652}
!238 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 7940}
!239 = !{ptr @gimple_has_lhs, ptr @is_gimple_assign, i64 2979455}
!240 = !{ptr @gimple_has_lhs, ptr @is_gimple_call, i64 1142688}
!241 = !{ptr @gimple_has_lhs, ptr @gimple_call_lhs, i64 94329}
!242 = !{ptr @gimple_references_memory_p, ptr @gimple_has_mem_ops, i64 1085784}
!243 = !{ptr @gimple_references_memory_p, ptr @gimple_vuse, i64 976042}
!244 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 2104608}
!245 = !{ptr @maybe_fold_offset_to_address, ptr @fancy_abort, i64 1}
!246 = !{ptr @maybe_fold_offset_to_address, ptr @maybe_fold_offset_to_reference, i64 61947}
!247 = !{ptr @maybe_fold_offset_to_address, ptr @tree_strip_nop_conversions, i64 28057}
!248 = !{ptr @maybe_fold_offset_to_address, ptr @operand_equal_p, i64 14471}
!249 = !{ptr @maybe_fold_offset_to_address, ptr @build_pointer_type, i64 27722}
!250 = !{ptr @maybe_fold_offset_to_address, ptr @useless_type_conversion_p, i64 27722}
!251 = !{ptr @maybe_fold_offset_to_address, ptr @build_fold_addr_expr_with_type_loc, i64 17926}
!252 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 377148}
!253 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 377147}
!254 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 23222}
!255 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 353925}
!256 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 355207}
!257 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 355206}
!258 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 1163423}
!259 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 765610}
!260 = !{ptr @gimple_call_return_type, ptr @gimple_call_fn, i64 3818}
!261 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 908896}
!262 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 908896}
!263 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 2551223}
!264 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 639565}
!265 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 639565}
!266 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!267 = !{ptr @ccp_lattice_meet, ptr @simple_cst_equal, i64 136118}
!268 = !{ptr @do_dbg_cnt, ptr @VEC_tree_base_length, i64 2578357}
!269 = !{ptr @do_dbg_cnt, ptr @dbg_cnt, i64 2556089}
!270 = !{ptr @ccp_fold_stmt, ptr @gsi_stmt, i64 2233964}
!271 = !{ptr @ccp_fold_stmt, ptr @gimple_code, i64 2233964}
!272 = !{ptr @ccp_fold_stmt, ptr @evaluate_stmt, i64 424101}
!273 = !{ptr @ccp_fold_stmt, ptr @integer_zerop, i64 604}
!274 = !{ptr @ccp_fold_stmt, ptr @gimple_cond_make_false, i64 432}
!275 = !{ptr @ccp_fold_stmt, ptr @gimple_cond_make_true, i64 172}
!276 = !{ptr @ccp_fold_stmt, ptr @gimple_call_lhs, i64 277123}
!277 = !{ptr @ccp_fold_stmt, ptr @get_value, i64 1378868}
!278 = !{ptr @ccp_fold_stmt, ptr @unshare_expr, i64 33267}
!279 = !{ptr @ccp_fold_stmt, ptr @useless_type_conversion_p, i64 33638}
!280 = !{ptr @ccp_fold_stmt, ptr @update_call_from_tree, i64 1}
!281 = !{ptr @ccp_fold_stmt, ptr @gimple_call_fn, i64 277122}
!282 = !{ptr @ccp_fold_stmt, ptr @gimple_call_num_args, i64 838660}
!283 = !{ptr @ccp_fold_stmt, ptr @gimple_call_arg, i64 561538}
!284 = !{ptr @ccp_fold_stmt, ptr @gimple_call_set_arg, i64 3625}
!285 = !{ptr @ccp_fold_stmt, ptr @gimple_assign_lhs, i64 1427381}
!286 = !{ptr @ccp_fold_stmt, ptr @gimple_assign_single_p, i64 1427381}
!287 = !{ptr @ccp_fold_stmt, ptr @fold_convert_loc, i64 38}
!288 = !{ptr @ccp_fold_stmt, ptr @gimple_assign_set_rhs_from_tree, i64 29641}
!289 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_lhs, i64 432}
!290 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_rhs, i64 432}
!291 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_lhs, i64 172}
!292 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_rhs, i64 172}
!293 = !{ptr @gimple_call_set_arg, ptr @gimple_set_op, i64 3625}
!294 = !{ptr @gimple_cond_set_lhs, ptr @gimple_set_op, i64 604}
!295 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 604}
!296 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 4833}
!297 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 4832}
!298 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!299 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 4833}
!300 = !{ptr @maybe_fold_offset_to_reference, ptr @tree_strip_nop_conversions, i64 332273}
!301 = !{ptr @maybe_fold_offset_to_reference, ptr @handled_component_p, i64 29709}
!302 = !{ptr @maybe_fold_offset_to_reference, ptr @get_ref_base_and_extent, i64 14763}
!303 = !{ptr @maybe_fold_offset_to_reference, ptr @fancy_abort, i64 1}
!304 = !{ptr @maybe_fold_offset_to_reference, ptr @build_int_cst, i64 1507}
!305 = !{ptr @maybe_fold_offset_to_reference, ptr @int_const_binop, i64 1507}
!306 = !{ptr @maybe_fold_offset_to_reference, ptr @useless_type_conversion_p, i64 29709}
!307 = !{ptr @maybe_fold_offset_to_reference, ptr @integer_zerop, i64 321}
!308 = !{ptr @maybe_fold_offset_to_reference, ptr @maybe_fold_offset_to_component_ref, i64 29597}
!309 = !{ptr @maybe_fold_offset_to_reference, ptr @maybe_fold_offset_to_array_ref, i64 24580}
!310 = !{ptr @maybe_fold_offset_to_component_ref, ptr @useless_type_conversion_p, i64 9448}
!311 = !{ptr @maybe_fold_offset_to_component_ref, ptr @byte_position, i64 33377}
!312 = !{ptr @maybe_fold_offset_to_component_ref, ptr @tree_int_cst_compare, i64 33043}
!313 = !{ptr @maybe_fold_offset_to_component_ref, ptr @build3_stat, i64 7852}
!314 = !{ptr @maybe_fold_offset_to_component_ref, ptr @int_const_binop, i64 14915}
!315 = !{ptr @maybe_fold_offset_to_component_ref, ptr @tree_int_cst_lt, i64 14583}
!316 = !{ptr @maybe_fold_offset_to_component_ref, ptr @maybe_fold_offset_to_array_ref, i64 7498}
!317 = !{ptr @maybe_fold_offset_to_component_ref, ptr @maybe_fold_offset_to_component_ref, i64 2346}
!318 = !{ptr @maybe_fold_offset_to_array_ref, ptr @array_ref_low_bound, i64 1}
!319 = !{ptr @maybe_fold_offset_to_array_ref, ptr @useless_type_conversion_p, i64 29836}
!320 = !{ptr @maybe_fold_offset_to_array_ref, ptr @signed_type_for, i64 28110}
!321 = !{ptr @maybe_fold_offset_to_array_ref, ptr @integer_zerop, i64 84317}
!322 = !{ptr @maybe_fold_offset_to_array_ref, ptr @size_int_kind, i64 1}
!323 = !{ptr @maybe_fold_offset_to_array_ref, ptr @build_int_cst, i64 48983}
!324 = !{ptr @maybe_fold_offset_to_array_ref, ptr @tree_to_double_int, i64 7231}
!325 = !{ptr @maybe_fold_offset_to_array_ref, ptr @double_int_sext, i64 7231}
!326 = !{ptr @maybe_fold_offset_to_array_ref, ptr @div_and_round_double, i64 7230}
!327 = !{ptr @maybe_fold_offset_to_array_ref, ptr @build_int_cst_wide, i64 7227}
!328 = !{ptr @maybe_fold_offset_to_array_ref, ptr @fold_convert_loc, i64 56208}
!329 = !{ptr @maybe_fold_offset_to_array_ref, ptr @int_const_binop, i64 2}
!330 = !{ptr @maybe_fold_offset_to_array_ref, ptr @tree_int_cst_lt, i64 28895}
!331 = !{ptr @maybe_fold_offset_to_array_ref, ptr @compare_tree_int, i64 198}
!332 = !{ptr @maybe_fold_offset_to_array_ref, ptr @build4_stat, i64 28079}
!333 = !{ptr @maybe_fold_stmt_addition, ptr @integer_zerop, i64 633}
!334 = !{ptr @maybe_fold_stmt_addition, ptr @host_integerp, i64 152}
!335 = !{ptr @maybe_fold_stmt_addition, ptr @is_gimple_assign, i64 151}
!336 = !{ptr @maybe_fold_stmt_addition, ptr @gimple_assign_rhs_code, i64 143}
!337 = !{ptr @maybe_fold_stmt_addition, ptr @gimple_assign_rhs2, i64 253}
!338 = !{ptr @maybe_fold_stmt_addition, ptr @tree_int_cst_equal, i64 126}
!339 = !{ptr @maybe_fold_stmt_addition, ptr @gimple_assign_rhs1, i64 125}
!340 = !{ptr @maybe_fold_stmt_addition, ptr @build4_stat, i64 130}
!341 = !{ptr @maybe_fold_stmt_addition, ptr @build_fold_addr_expr_loc, i64 130}
!342 = !{ptr @maybe_fold_stmt_addition, ptr @integer_onep, i64 12}
!343 = !{ptr @maybe_fold_stmt_addition, ptr @fold_convert_loc, i64 960}
!344 = !{ptr @maybe_fold_stmt_addition, ptr @int_const_binop, i64 963}
!345 = !{ptr @maybe_fold_stmt_addition, ptr @maybe_fold_offset_to_array_ref, i64 486}
!346 = !{ptr @maybe_fold_stmt_addition, ptr @maybe_fold_offset_to_component_ref, i64 3}
!347 = !{ptr @maybe_fold_stmt_addition, ptr @build1_stat, i64 483}
!348 = !{ptr @fold_stmt, ptr @fold_stmt_1, i64 788449}
!349 = !{ptr @fold_stmt_1, ptr @gsi_stmt, i64 1665798}
!350 = !{ptr @fold_stmt_1, ptr @gimple_code, i64 832899}
!351 = !{ptr @fold_stmt_1, ptr @gimple_asm_noutputs, i64 21}
!352 = !{ptr @fold_stmt_1, ptr @gimple_call_num_args, i64 282172}
!353 = !{ptr @fold_stmt_1, ptr @gimple_num_ops, i64 563602}
!354 = !{ptr @fold_stmt_1, ptr @fold_gimple_assign, i64 563602}
!355 = !{ptr @fold_stmt_1, ptr @gimple_assign_lhs, i64 563602}
!356 = !{ptr @fold_stmt_1, ptr @useless_type_conversion_p, i64 14187}
!357 = !{ptr @fold_stmt_1, ptr @fold_convert_loc, i64 1}
!358 = !{ptr @fold_stmt_1, ptr @get_gimple_rhs_num_ops, i64 2492}
!359 = !{ptr @fold_stmt_1, ptr @gimple_assign_set_rhs_from_tree, i64 14186}
!360 = !{ptr @fold_stmt_1, ptr @fold_gimple_cond, i64 152959}
!361 = !{ptr @fold_stmt_1, ptr @gimple_call_arg, i64 195348}
!362 = !{ptr @fold_stmt_1, ptr @maybe_fold_reference, i64 72819}
!363 = !{ptr @fold_stmt_1, ptr @gimple_call_set_arg, i64 1}
!364 = !{ptr @fold_stmt_1, ptr @fold_gimple_call, i64 85933}
!365 = !{ptr @fold_stmt_1, ptr @gimple_asm_ninputs, i64 21}
!366 = !{ptr @fold_stmt_1, ptr @gimple_asm_output_op, i64 20}
!367 = !{ptr @fold_stmt_1, ptr @gimple_asm_input_op, i64 20}
!368 = !{ptr @fold_stmt_1, ptr @gimple_has_lhs, i64 832899}
!369 = !{ptr @fold_stmt_1, ptr @gimple_get_lhs, i64 607880}
!370 = !{ptr @fold_stmt_1, ptr @gimple_set_lhs, i64 4527}
!371 = !{ptr @fold_gimple_assign, ptr @gsi_stmt, i64 563604}
!372 = !{ptr @fold_gimple_assign, ptr @gimple_assign_rhs_code, i64 665328}
!373 = !{ptr @fold_gimple_assign, ptr @gimple_location, i64 581651}
!374 = !{ptr @fold_gimple_assign, ptr @get_gimple_rhs_class, i64 563604}
!375 = !{ptr @fold_gimple_assign, ptr @gimple_assign_rhs1, i64 611854}
!376 = !{ptr @fold_gimple_assign, ptr @fold_defer_overflow_warnings, i64 53}
!377 = !{ptr @fold_gimple_assign, ptr @fold_binary_loc, i64 101452}
!378 = !{ptr @fold_gimple_assign, ptr @is_gimple_condexpr, i64 6}
!379 = !{ptr @fold_gimple_assign, ptr @is_gimple_min_invariant, i64 3}
!380 = !{ptr @fold_gimple_assign, ptr @fold_undefer_overflow_warnings, i64 53}
!381 = !{ptr @fold_gimple_assign, ptr @valid_gimple_rhs_p, i64 10943}
!382 = !{ptr @fold_gimple_assign, ptr @fold_build3_stat_loc, i64 6}
!383 = !{ptr @fold_gimple_assign, ptr @maybe_fold_tmr, i64 1982}
!384 = !{ptr @fold_gimple_assign, ptr @maybe_fold_reference, i64 255192}
!385 = !{ptr @fold_gimple_assign, ptr @build_fold_addr_expr_loc, i64 1}
!386 = !{ptr @fold_gimple_assign, ptr @fold_convert_loc, i64 1}
!387 = !{ptr @fold_gimple_assign, ptr @VEC_constructor_elt_base_index, i64 3}
!388 = !{ptr @fold_gimple_assign, ptr @get_symbol_constant_value, i64 25198}
!389 = !{ptr @fold_gimple_assign, ptr @unshare_expr, i64 25198}
!390 = !{ptr @fold_gimple_assign, ptr @fold, i64 143468}
!391 = !{ptr @fold_gimple_assign, ptr @tree_ssa_strip_useless_type_conversions, i64 154384}
!392 = !{ptr @fold_gimple_assign, ptr @gimple_expr_type, i64 107572}
!393 = !{ptr @fold_gimple_assign, ptr @fold_unary_loc, i64 47523}
!394 = !{ptr @fold_gimple_assign, ptr @maybe_fold_offset_to_address, i64 6095}
!395 = !{ptr @fold_gimple_assign, ptr @build_pointer_type, i64 154}
!396 = !{ptr @fold_gimple_assign, ptr @gimple_assign_lhs, i64 101554}
!397 = !{ptr @fold_gimple_assign, ptr @useless_type_conversion_p, i64 154}
!398 = !{ptr @fold_gimple_assign, ptr @gimple_assign_rhs2, i64 119448}
!399 = !{ptr @fold_gimple_assign, ptr @maybe_fold_stmt_addition, i64 18047}
!400 = !{ptr @fold_gimple_assign, ptr @commutative_tree_code, i64 16}
!401 = !{ptr @fold_gimple_assign, ptr @tree_swap_operands_p, i64 1}
!402 = !{ptr @fold_gimple_assign, ptr @build2_stat, i64 1}
!403 = !{ptr @fold_gimple_assign, ptr @fancy_abort, i64 1}
!404 = !{ptr @fold_gimple_cond, ptr @gimple_location, i64 152959}
!405 = !{ptr @fold_gimple_cond, ptr @gimple_cond_code, i64 152959}
!406 = !{ptr @fold_gimple_cond, ptr @gimple_cond_lhs, i64 152959}
!407 = !{ptr @fold_gimple_cond, ptr @gimple_cond_rhs, i64 152959}
!408 = !{ptr @fold_gimple_cond, ptr @fold_binary_loc, i64 152959}
!409 = !{ptr @fold_gimple_cond, ptr @tree_ssa_strip_useless_type_conversions, i64 19829}
!410 = !{ptr @fold_gimple_cond, ptr @is_gimple_condexpr, i64 19829}
!411 = !{ptr @fold_gimple_cond, ptr @valid_gimple_rhs_p, i64 19826}
!412 = !{ptr @fold_gimple_cond, ptr @gimple_cond_set_condition_from_tree, i64 19825}
!413 = !{ptr @maybe_fold_reference, ptr @fold_read_from_constant_string, i64 39988}
!414 = !{ptr @maybe_fold_reference, ptr @handled_component_p, i64 1131053}
!415 = !{ptr @maybe_fold_reference, ptr @fold, i64 1425}
!416 = !{ptr @maybe_fold_reference, ptr @maybe_fold_stmt_indirect, i64 256624}
!417 = !{ptr @maybe_fold_reference, ptr @maybe_fold_reference, i64 7110}
!418 = !{ptr @maybe_fold_reference, ptr @get_symbol_constant_value, i64 30580}
!419 = !{ptr @maybe_fold_reference, ptr @useless_type_conversion_p, i64 8}
!420 = !{ptr @maybe_fold_reference, ptr @unshare_expr, i64 7}
!421 = !{ptr @fold_gimple_call, ptr @gsi_stmt, i64 85934}
!422 = !{ptr @fold_gimple_call, ptr @gimple_call_fndecl, i64 85934}
!423 = !{ptr @fold_gimple_call, ptr @ccp_fold_builtin, i64 13193}
!424 = !{ptr @fold_gimple_call, ptr @update_call_from_tree, i64 82}
!425 = !{ptr @fold_gimple_call, ptr @gimplify_and_update_call_from_tree, i64 17}
!426 = !{ptr @fold_gimple_call, ptr @gimple_call_fn, i64 72741}
!427 = !{ptr @maybe_fold_stmt_indirect, ptr @fold, i64 278020}
!428 = !{ptr @maybe_fold_stmt_indirect, ptr @fold_read_from_constant_string, i64 278020}
!429 = !{ptr @maybe_fold_stmt_indirect, ptr @is_gimple_min_invariant, i64 1}
!430 = !{ptr @maybe_fold_stmt_indirect, ptr @integer_zerop, i64 7649}
!431 = !{ptr @maybe_fold_stmt_indirect, ptr @maybe_fold_offset_to_reference, i64 270324}
!432 = !{ptr @maybe_fold_stmt_indirect, ptr @tree_strip_nop_conversions, i64 270324}
!433 = !{ptr @ccp_fold_builtin, ptr @gimple_location, i64 24663}
!434 = !{ptr @ccp_fold_builtin, ptr @is_gimple_call, i64 24663}
!435 = !{ptr @ccp_fold_builtin, ptr @fancy_abort, i64 2}
!436 = !{ptr @ccp_fold_builtin, ptr @gimple_call_lhs, i64 24663}
!437 = !{ptr @ccp_fold_builtin, ptr @fold_call_stmt, i64 24663}
!438 = !{ptr @ccp_fold_builtin, ptr @tree_strip_nop_conversions, i64 53}
!439 = !{ptr @ccp_fold_builtin, ptr @gimple_call_fndecl, i64 24575}
!440 = !{ptr @ccp_fold_builtin, ptr @gimple_call_num_args, i64 24574}
!441 = !{ptr @ccp_fold_builtin, ptr @bitmap_obstack_alloc_stat, i64 1353}
!442 = !{ptr @ccp_fold_builtin, ptr @bitmap_clear, i64 1353}
!443 = !{ptr @ccp_fold_builtin, ptr @gimple_call_arg, i64 2176}
!444 = !{ptr @ccp_fold_builtin, ptr @get_maxval_strlen, i64 1353}
!445 = !{ptr @ccp_fold_builtin, ptr @bitmap_obstack_free, i64 1353}
!446 = !{ptr @ccp_fold_builtin, ptr @is_gimple_val, i64 9}
!447 = !{ptr @ccp_fold_builtin, ptr @fold_builtin_strcpy, i64 2}
!448 = !{ptr @ccp_fold_builtin, ptr @fold_builtin_fputs, i64 406}
!449 = !{ptr @ccp_fold_builtin, ptr @fold_builtin_memory_chk, i64 1}
!450 = !{ptr @ccp_fold_builtin, ptr @fold_builtin_stxcpy_chk, i64 1}
!451 = !{ptr @ccp_fold_builtin, ptr @gimple_fold_builtin_snprintf_chk, i64 1}
!452 = !{ptr @ccp_fold_builtin, ptr @fold_ignored_result, i64 2}
!453 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimple_seq_alloc, i64 66}
!454 = !{ptr @gimplify_and_update_call_from_tree, ptr @gsi_stmt, i64 246}
!455 = !{ptr @gimplify_and_update_call_from_tree, ptr @is_gimple_call, i64 66}
!456 = !{ptr @gimplify_and_update_call_from_tree, ptr @fancy_abort, i64 1}
!457 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimple_call_lhs, i64 66}
!458 = !{ptr @gimplify_and_update_call_from_tree, ptr @push_gimplify_context, i64 66}
!459 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimplify_and_add, i64 63}
!460 = !{ptr @gimplify_and_update_call_from_tree, ptr @get_initialized_tmp_var, i64 3}
!461 = !{ptr @gimplify_and_update_call_from_tree, ptr @pop_gimplify_context, i64 66}
!462 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimple_has_location, i64 66}
!463 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimple_location, i64 131}
!464 = !{ptr @gimplify_and_update_call_from_tree, ptr @annotate_all_with_location, i64 65}
!465 = !{ptr @gimplify_and_update_call_from_tree, ptr @gsi_start, i64 66}
!466 = !{ptr @gimplify_and_update_call_from_tree, ptr @gsi_end_p, i64 246}
!467 = !{ptr @gimplify_and_update_call_from_tree, ptr @find_new_referenced_vars, i64 180}
!468 = !{ptr @gimplify_and_update_call_from_tree, ptr @gsi_insert_before, i64 180}
!469 = !{ptr @gimplify_and_update_call_from_tree, ptr @mark_symbols_for_renaming, i64 180}
!470 = !{ptr @gimplify_and_update_call_from_tree, ptr @gsi_next, i64 360}
!471 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimple_build_nop, i64 63}
!472 = !{ptr @gimplify_and_update_call_from_tree, ptr @unlink_stmt_vdef, i64 63}
!473 = !{ptr @gimplify_and_update_call_from_tree, ptr @release_defs, i64 63}
!474 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimple_build_assign_stat, i64 3}
!475 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimple_vuse, i64 3}
!476 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimple_set_vuse, i64 3}
!477 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimple_vdef, i64 3}
!478 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimple_set_vdef, i64 3}
!479 = !{ptr @gimplify_and_update_call_from_tree, ptr @move_ssa_defining_stmt_for_defs, i64 3}
!480 = !{ptr @gimplify_and_update_call_from_tree, ptr @gimple_set_location, i64 66}
!481 = !{ptr @gimplify_and_update_call_from_tree, ptr @gsi_replace, i64 66}
!482 = !{ptr @get_maxval_strlen, ptr @get_maxval_strlen, i64 419}
!483 = !{ptr @get_maxval_strlen, ptr @integer_zerop, i64 282}
!484 = !{ptr @get_maxval_strlen, ptr @tree_int_cst_sgn, i64 1}
!485 = !{ptr @get_maxval_strlen, ptr @c_strlen, i64 1658}
!486 = !{ptr @get_maxval_strlen, ptr @simple_cst_equal, i64 69}
!487 = !{ptr @get_maxval_strlen, ptr @bitmap_bit_p, i64 2390}
!488 = !{ptr @get_maxval_strlen, ptr @bitmap_set_bit, i64 2377}
!489 = !{ptr @get_maxval_strlen, ptr @gimple_code, i64 2377}
!490 = !{ptr @get_maxval_strlen, ptr @gimple_phi_num_args, i64 421}
!491 = !{ptr @get_maxval_strlen, ptr @gimple_assign_single_p, i64 1539}
!492 = !{ptr @get_maxval_strlen, ptr @gimple_assign_unary_nop_p, i64 190}
!493 = !{ptr @get_maxval_strlen, ptr @gimple_assign_rhs1, i64 1501}
!494 = !{ptr @get_maxval_strlen, ptr @gimple_phi_arg, i64 418}
!495 = !{ptr @get_maxval_strlen, ptr @gimple_phi_result, i64 418}
!496 = !{ptr @gimple_has_location, ptr @gimple_location, i64 66}
!497 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 66}
!498 = !{ptr @gsi_start, ptr @gimple_bb, i64 64}
!499 = !{ptr @gimple_set_vuse, ptr @gimple_has_mem_ops, i64 2}
!500 = !{ptr @gimple_set_vuse, ptr @fancy_abort, i64 1}
!501 = !{ptr @gimple_set_vdef, ptr @gimple_has_mem_ops, i64 2}
!502 = !{ptr @gimple_set_vdef, ptr @fancy_abort, i64 1}
!503 = !{ptr @fold_stmt_inplace, ptr @gsi_for_stmt, i64 44450}
!504 = !{ptr @fold_stmt_inplace, ptr @fold_stmt_1, i64 44450}
!505 = !{ptr @fold_stmt_inplace, ptr @gsi_stmt, i64 44450}
!506 = !{ptr @fold_stmt_inplace, ptr @fancy_abort, i64 1}
!507 = !{ptr @execute_fold_all_builtins, ptr @gsi_start_bb, i64 240611}
!508 = !{ptr @execute_fold_all_builtins, ptr @gsi_end_p, i64 923703}
!509 = !{ptr @execute_fold_all_builtins, ptr @gsi_stmt, i64 683206}
!510 = !{ptr @execute_fold_all_builtins, ptr @gimple_code, i64 683206}
!511 = !{ptr @execute_fold_all_builtins, ptr @gimple_call_fndecl, i64 92835}
!512 = !{ptr @execute_fold_all_builtins, ptr @ccp_fold_builtin, i64 11470}
!513 = !{ptr @execute_fold_all_builtins, ptr @gimple_remove_stmt_histograms, i64 9}
!514 = !{ptr @execute_fold_all_builtins, ptr @optimize_stack_restore, i64 3}
!515 = !{ptr @execute_fold_all_builtins, ptr @optimize_stdarg_builtin, i64 104}
!516 = !{ptr @execute_fold_all_builtins, ptr @fwrite, i64 2}
!517 = !{ptr @execute_fold_all_builtins, ptr @print_gimple_stmt, i64 2}
!518 = !{ptr @execute_fold_all_builtins, ptr @update_call_from_tree, i64 114}
!519 = !{ptr @execute_fold_all_builtins, ptr @gimplify_and_update_call_from_tree, i64 52}
!520 = !{ptr @execute_fold_all_builtins, ptr @update_stmt, i64 114}
!521 = !{ptr @execute_fold_all_builtins, ptr @maybe_clean_or_replace_eh_stmt, i64 114}
!522 = !{ptr @execute_fold_all_builtins, ptr @gimple_purge_dead_eh_edges, i64 1}
!523 = !{ptr @execute_fold_all_builtins, ptr @fputc, i64 1}
!524 = !{ptr @execute_fold_all_builtins, ptr @gsi_next, i64 683087}
!525 = !{ptr @optimize_stack_restore, ptr @gsi_bb, i64 2}
!526 = !{ptr @optimize_stack_restore, ptr @gsi_stmt, i64 2}
!527 = !{ptr @optimize_stack_restore, ptr @gimple_code, i64 2}
!528 = !{ptr @optimize_stack_restore, ptr @gimple_call_num_args, i64 2}
!529 = !{ptr @optimize_stack_restore, ptr @gimple_call_arg, i64 2}
!530 = !{ptr @optimize_stack_restore, ptr @gsi_next, i64 1}
!531 = !{ptr @optimize_stack_restore, ptr @gsi_end_p, i64 1}
!532 = !{ptr @optimize_stack_restore, ptr @VEC_edge_base_length, i64 1}
!533 = !{ptr @optimize_stdarg_builtin, ptr @gimple_location, i64 101}
!534 = !{ptr @optimize_stdarg_builtin, ptr @gimple_code, i64 101}
!535 = !{ptr @optimize_stdarg_builtin, ptr @gimple_call_fndecl, i64 100}
!536 = !{ptr @optimize_stdarg_builtin, ptr @gimple_call_num_args, i64 46}
!537 = !{ptr @optimize_stdarg_builtin, ptr @gimple_call_arg, i64 45}
!538 = !{ptr @optimize_stdarg_builtin, ptr @build_fold_indirect_ref_loc, i64 44}
!539 = !{ptr @optimize_stdarg_builtin, ptr @build_call_expr_loc, i64 44}
!540 = !{ptr @optimize_stdarg_builtin, ptr @fold_convert_loc, i64 44}
!541 = !{ptr @optimize_stdarg_builtin, ptr @build2_stat, i64 44}
!542 = !{ptr @optimize_stdarg_builtin, ptr @fancy_abort, i64 1}
!543 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 110}
!544 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 8}
!545 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 8}
!546 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 2}
!547 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!548 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 2}
!549 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 2}
!550 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 1}
!551 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!552 = !{!"function_entry_count", i64 0}
!553 = !{!554, !554, i64 0}
!554 = !{!"any pointer", !555, i64 0}
!555 = !{!"omnipotent char", !556, i64 0}
!556 = !{!"Simple C/C++ TBAA"}
!557 = !{!"tree-ssa-ccp.c:dump_lattice_value"}
!558 = !{!559, !559, i64 0}
!559 = !{!"int", !555, i64 0}
!560 = !{!"function_entry_count", i64 423319}
!561 = !{!"branch_weights", i32 43724, i32 379597}
!562 = !{!"branch_weights", i32 110481858, i32 -15801608}
!563 = !{!555, !555, i64 0}
!564 = !{!"branch_weights", i32 5, i32 9549}
!565 = !{!"branch_weights", i32 6854, i32 2696}
!566 = !{!"branch_weights", i32 9, i32 2688}
!567 = !{!"branch_weights", i32 1, i32 9}
!568 = !{!"branch_weights", i32 0, i32 -2147483648}
!569 = !{!"branch_weights", i32 5, i32 1}
!570 = !{!571, !554, i64 1112}
!571 = !{!"gcc_target", !572, i64 0, !574, i64 368, !575, i64 664, !559, i64 744, !554, i64 752, !554, i64 760, !554, i64 768, !554, i64 776, !554, i64 784, !554, i64 792, !554, i64 800, !554, i64 808, !554, i64 816, !554, i64 824, !554, i64 832, !554, i64 840, !554, i64 848, !554, i64 856, !554, i64 864, !554, i64 872, !554, i64 880, !554, i64 888, !554, i64 896, !554, i64 904, !554, i64 912, !554, i64 920, !554, i64 928, !554, i64 936, !554, i64 944, !554, i64 952, !554, i64 960, !554, i64 968, !554, i64 976, !554, i64 984, !554, i64 992, !554, i64 1000, !554, i64 1008, !554, i64 1016, !554, i64 1024, !554, i64 1032, !554, i64 1040, !554, i64 1048, !554, i64 1056, !576, i64 1064, !576, i64 1072, !554, i64 1080, !554, i64 1088, !554, i64 1096, !554, i64 1104, !554, i64 1112, !554, i64 1120, !554, i64 1128, !554, i64 1136, !554, i64 1144, !554, i64 1152, !554, i64 1160, !554, i64 1168, !577, i64 1176, !554, i64 1232, !554, i64 1240, !554, i64 1248, !554, i64 1256, !554, i64 1264, !554, i64 1272, !554, i64 1280, !554, i64 1288, !554, i64 1296, !554, i64 1304, !554, i64 1312, !554, i64 1320, !554, i64 1328, !554, i64 1336, !554, i64 1344, !554, i64 1352, !554, i64 1360, !554, i64 1368, !554, i64 1376, !554, i64 1384, !554, i64 1392, !554, i64 1400, !554, i64 1408, !554, i64 1416, !554, i64 1424, !554, i64 1432, !554, i64 1440, !554, i64 1448, !554, i64 1456, !576, i64 1464, !578, i64 1472, !554, i64 1664, !554, i64 1672, !554, i64 1680, !554, i64 1688, !554, i64 1696, !554, i64 1704, !554, i64 1712, !554, i64 1720, !554, i64 1728, !554, i64 1736, !554, i64 1744, !554, i64 1752, !554, i64 1760, !554, i64 1768, !554, i64 1776, !579, i64 1784, !580, i64 1792, !581, i64 1896, !582, i64 1968, !554, i64 2016, !555, i64 2024, !555, i64 2025, !555, i64 2026, !555, i64 2027, !555, i64 2028, !555, i64 2029, !555, i64 2030, !555, i64 2031, !555, i64 2032, !555, i64 2033, !555, i64 2034, !555, i64 2035}
!572 = !{!"asm_out", !554, i64 0, !554, i64 8, !554, i64 16, !573, i64 24, !573, i64 56, !554, i64 88, !554, i64 96, !554, i64 104, !554, i64 112, !554, i64 120, !554, i64 128, !554, i64 136, !554, i64 144, !554, i64 152, !554, i64 160, !554, i64 168, !554, i64 176, !554, i64 184, !554, i64 192, !554, i64 200, !554, i64 208, !554, i64 216, !554, i64 224, !554, i64 232, !554, i64 240, !554, i64 248, !554, i64 256, !554, i64 264, !554, i64 272, !554, i64 280, !554, i64 288, !554, i64 296, !554, i64 304, !554, i64 312, !554, i64 320, !554, i64 328, !554, i64 336, !554, i64 344, !554, i64 352, !554, i64 360}
!573 = !{!"asm_int_op", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24}
!574 = !{!"sched", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !554, i64 32, !554, i64 40, !554, i64 48, !554, i64 56, !554, i64 64, !554, i64 72, !554, i64 80, !554, i64 88, !554, i64 96, !554, i64 104, !554, i64 112, !554, i64 120, !554, i64 128, !554, i64 136, !554, i64 144, !554, i64 152, !554, i64 160, !554, i64 168, !554, i64 176, !554, i64 184, !554, i64 192, !554, i64 200, !554, i64 208, !554, i64 216, !554, i64 224, !554, i64 232, !554, i64 240, !554, i64 248, !554, i64 256, !554, i64 264, !554, i64 272, !554, i64 280, !554, i64 288}
!575 = !{!"vectorize", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !554, i64 32, !554, i64 40, !554, i64 48, !554, i64 56, !554, i64 64, !554, i64 72}
!576 = !{!"long", !555, i64 0}
!577 = !{!"addr_space", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !554, i64 32, !554, i64 40, !554, i64 48}
!578 = !{!"calls", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !554, i64 32, !554, i64 40, !554, i64 48, !554, i64 56, !554, i64 64, !554, i64 72, !554, i64 80, !554, i64 88, !554, i64 96, !554, i64 104, !554, i64 112, !554, i64 120, !554, i64 128, !554, i64 136, !554, i64 144, !554, i64 152, !554, i64 160, !554, i64 168, !554, i64 176, !554, i64 184}
!579 = !{!"c", !554, i64 0}
!580 = !{!"cxx", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !554, i64 32, !554, i64 40, !554, i64 48, !554, i64 56, !554, i64 64, !554, i64 72, !554, i64 80, !554, i64 88, !554, i64 96}
!581 = !{!"emutls", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !554, i64 32, !554, i64 40, !554, i64 48, !554, i64 56, !555, i64 64, !555, i64 65}
!582 = !{!"target_option_hooks", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !554, i64 32, !554, i64 40}
!583 = !{!"branch_weights", i32 1, i32 5}
!584 = !{!"branch_weights", i32 639, i32 225}
!585 = !{!"tree-ssa-ccp.c:gimple_referenced_vars"}
!586 = !{!587, !554, i64 24}
!587 = !{!"function", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !554, i64 32, !554, i64 40, !554, i64 48, !554, i64 56, !554, i64 64, !554, i64 72, !554, i64 80, !554, i64 88, !554, i64 96, !559, i64 104, !559, i64 108, !559, i64 112, !559, i64 116, !559, i64 120, !559, i64 124, !554, i64 128, !559, i64 136, !559, i64 137, !559, i64 138, !559, i64 138, !559, i64 138, !559, i64 138, !559, i64 138, !559, i64 138, !559, i64 138, !559, i64 139, !559, i64 139, !559, i64 139, !559, i64 139, !559, i64 139, !559, i64 139, !559, i64 139}
!588 = !{!589, !554, i64 0}
!589 = !{!"gimple_df", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !590, i64 32, !590, i64 48, !554, i64 64, !554, i64 72, !554, i64 80, !554, i64 88, !559, i64 96, !591, i64 104}
!590 = !{!"pt_solution", !559, i64 0, !559, i64 0, !559, i64 0, !559, i64 0, !559, i64 0, !559, i64 0, !554, i64 8}
!591 = !{!"ssa_operands", !554, i64 0, !559, i64 8, !559, i64 12, !555, i64 16, !554, i64 24, !554, i64 32}
!592 = !{!"function_entry_count", i64 10001}
!593 = !{!"branch_weights", i32 40011, i32 1}
!594 = !{!"branch_weights", i32 10002, i32 1}
!595 = !{!"branch_weights", i32 1, i32 10002}
!596 = !{!"branch_weights", i32 9823, i32 180}
!597 = !{!"branch_weights", i32 180, i32 1}
!598 = !{!"branch_weights", i32 421, i32 9403}
!599 = !{!"function_entry_count", i64 2329658}
!600 = !{!"branch_weights", i32 1, i32 319}
!601 = !{!"branch_weights", i32 28799, i32 461625, i32 1754632, i32 1, i32 1, i32 84287}
!602 = !{!"branch_weights", i32 286, i32 119340, i32 5881, i32 335794, i32 328, i32 1}
!603 = !{!"branch_weights", i32 85021, i32 34320}
!604 = !{!"branch_weights", i32 34320, i32 1}
!605 = !{!"branch_weights", i32 1, i32 34320}
!606 = !{!"branch_weights", i32 1953150671, i32 194332977}
!607 = !{!"branch_weights", i32 403, i32 13837404, i32 162409}
!608 = !{!"branch_weights", i32 169, i32 34485}
!609 = !{!"branch_weights", i32 1, i32 33250, i32 1236}
!610 = !{!"branch_weights", i32 15430, i32 17821}
!611 = !{!612, !559, i64 0}
!612 = !{!"prop_value_d", !559, i64 0, !554, i64 8}
!613 = !{!"branch_weights", i32 1378, i32 16444}
!614 = !{!612, !554, i64 8}
!615 = !{!"branch_weights", i32 1378, i32 1}
!616 = !{!"branch_weights", i32 184, i32 2430}
!617 = !{!"branch_weights", i32 1, i32 127}
!618 = !{!"branch_weights", i32 1, i32 184}
!619 = !{!"branch_weights", i32 184, i32 1}
!620 = !{!"branch_weights", i32 36273793, i32 127}
!621 = distinct !{!621, !622}
!622 = !{!"llvm.loop.mustprogress"}
!623 = !{!624, !554, i64 8}
!624 = !{!"constructor_elt_d", !554, i64 0, !554, i64 8}
!625 = !{!624, !554, i64 0}
!626 = !{!"branch_weights", i32 280961, i32 2430}
!627 = !{!"branch_weights", i32 127, i32 2304}
!628 = !{!"branch_weights", i32 60, i32 68}
!629 = !{!"branch_weights", i32 983433, i32 68543, i32 239872, i32 462787}
!630 = !{!"branch_weights", i32 68237, i32 307}
!631 = !{!"branch_weights", i32 307, i32 1}
!632 = !{!"branch_weights", i32 1, i32 307}
!633 = !{!"branch_weights", i32 701833, i32 1132}
!634 = !{!"branch_weights", i32 1281424, i32 2265}
!635 = !{!"branch_weights", i32 1132, i32 12302}
!636 = !{!"branch_weights", i32 1132, i32 1}
!637 = !{!"branch_weights", i32 498, i32 635}
!638 = !{!"branch_weights", i32 285, i32 214}
!639 = !{!"branch_weights", i32 31, i32 184}
!640 = !{!"branch_weights", i32 127, i32 1719297}
!641 = distinct !{!641, !622}
!642 = !{!"branch_weights", i32 84281, i32 7}
!643 = !{!"branch_weights", i32 40205, i32 44077}
!644 = !{!"branch_weights", i32 194, i32 43884}
!645 = !{!"branch_weights", i32 191, i32 4}
!646 = !{!"branch_weights", i32 191, i32 1}
!647 = !{!"branch_weights", i32 319, i32 2329021}
!648 = !{!"function_entry_count", i64 6839408}
!649 = !{!"tree-ssa-ccp.c:get_value"}
!650 = !{!"branch_weights", i32 55634, i32 6783776}
!651 = !{!"branch_weights", i32 1475323, i32 5308454}
!652 = !{i64 0, i64 4, !558, i64 8, i64 8, !553}
!653 = !{i64 0, i64 8, !553}
!654 = !{!"function_entry_count", i64 296821}
!655 = !{!"tree-ssa-ccp.c:VEC_constructor_elt_base_length"}
!656 = !{!"branch_weights", i32 1, i32 296822}
!657 = !{!658, !559, i64 0}
!658 = !{!"VEC_constructor_elt_base", !559, i64 0, !559, i64 4, !555, i64 8}
!659 = !{!"function_entry_count", i64 593642}
!660 = !{!"tree-ssa-ccp.c:VEC_constructor_elt_base_index"}
!661 = !{!"function_entry_count", i64 1475322}
!662 = !{!"tree-ssa-ccp.c:get_default_value"}
!663 = !{i8 0, i8 2}
!664 = !{!"branch_weights", i32 1437244, i32 38080}
!665 = !{!"branch_weights", i32 1, i32 38080}
!666 = !{!"branch_weights", i32 38017, i32 64}
!667 = !{!"branch_weights", i32 152711, i32 1284534}
!668 = !{!"branch_weights", i32 145227, i32 7485}
!669 = !{!"branch_weights", i32 1, i32 7485}
!670 = !{i32 0, i32 256}
!671 = !{!"branch_weights", i32 145227, i32 1}
!672 = !{!"branch_weights", i32 572646, i32 864599}
!673 = !{!"branch_weights", i32 127527, i32 737073}
!674 = !{!"branch_weights", i32 126185, i32 1343}
!675 = !{!"function_entry_count", i64 8369887}
!676 = !{!"tree-ssa-ccp.c:canonicalize_float_value"}
!677 = !{!"branch_weights", i32 658422, i32 7711467}
!678 = !{!"branch_weights", i32 219, i32 658204}
!679 = !{i64 0, i64 4, !558, i64 0, i64 4, !558, i64 0, i64 4, !558, i64 0, i64 4, !558, i64 0, i64 4, !558, i64 0, i64 4, !558, i64 8, i64 24, !563}
!680 = !{!"branch_weights", i32 1, i32 219}
!681 = !{!"branch_weights", i32 1, i32 1752, i32 4, i32 2, i32 1}
!682 = !{!"branch_weights", i32 439, i32 1}
!683 = !{!684, !555, i64 49}
!684 = !{!"real_format", !554, i64 0, !554, i64 8, !559, i64 16, !559, i64 20, !559, i64 24, !559, i64 28, !559, i64 32, !559, i64 36, !559, i64 40, !555, i64 44, !555, i64 45, !555, i64 46, !555, i64 47, !555, i64 48, !555, i64 49, !555, i64 50, !555, i64 51}
!685 = !{!"branch_weights", i32 47961, i32 439}
!686 = !{!684, !555, i64 46}
!687 = !{!"branch_weights", i32 439, i32 47961}
!688 = !{!"tree-ssa-ccp.c:gimple_nop_p"}
!689 = !{!"function_entry_count", i64 4416852}
!690 = !{!"tree-ssa-ccp.c:is_gimple_assign"}
!691 = !{!"function_entry_count", i64 5257232}
!692 = !{!"tree-ssa-ccp.c:is_gimple_call"}
!693 = !{!"function_entry_count", i64 695872}
!694 = !{!"tree-ssa-ccp.c:gimple_call_lhs"}
!695 = !{!"function_entry_count", i64 96434653}
!696 = !{!"tree-ssa-ccp.c:gimple_code"}
!697 = !{!"function_entry_count", i64 4023714}
!698 = !{!"tree-ssa-ccp.c:gimple_assign_rhs1"}
!699 = !{!"function_entry_count", i64 15593117}
!700 = !{!"tree-ssa-ccp.c:gimple_op"}
!701 = !{!"branch_weights", i32 1, i32 15593118}
!702 = !{!"function_entry_count", i64 18274725}
!703 = !{!"tree-ssa-ccp.c:gimple_has_ops"}
!704 = !{!"function_entry_count", i64 15597950}
!705 = !{!"tree-ssa-ccp.c:gimple_ops"}
!706 = !{!576, !576, i64 0}
!707 = !{!"branch_weights", i32 1, i32 15597951}
!708 = !{!"tree-ssa-ccp.c:gimple_statement_structure"}
!709 = !{!"tree-ssa-ccp.c:gss_for_code"}
!710 = !{!"function_entry_count", i64 22268}
!711 = !{!"tree-ssa-ccp.c:gate_ccp"}
!712 = !{!"tree-ssa-ccp.c:do_ssa_ccp"}
!713 = !{!"branch_weights", i32 16686, i32 5584}
!714 = !{!"tree-ssa-ccp.c:ccp_initialize"}
!715 = !{!589, !554, i64 16}
!716 = !{!587, !554, i64 8}
!717 = !{!718, !554, i64 0}
!718 = !{!"control_flow_graph", !554, i64 0, !554, i64 8, !554, i64 16, !559, i64 24, !559, i64 28, !559, i64 32, !554, i64 40, !559, i64 48, !555, i64 52, !555, i64 60, !559, i64 68, !559, i64 72}
!719 = !{!720, !554, i64 56}
!720 = !{!"basic_block_def", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !555, i64 32, !554, i64 48, !554, i64 56, !555, i64 64, !576, i64 72, !559, i64 80, !559, i64 84, !559, i64 88, !559, i64 92, !559, i64 96}
!721 = !{!718, !554, i64 8}
!722 = !{!"branch_weights", i32 1, i32 22268}
!723 = !{!"branch_weights", i32 737424, i32 1}
!724 = !{!"branch_weights", i32 1790574, i32 463965}
!725 = !{!"branch_weights", i32 1549974165, i32 597509483}
!726 = !{!"branch_weights", i32 498203, i32 1}
!727 = !{!"branch_weights", i32 66473, i32 498203}
!728 = distinct !{!728, !622}
!729 = !{!"branch_weights", i32 1517114, i32 737424}
!730 = distinct !{!730, !622}
!731 = !{!"branch_weights", i32 22268, i32 715157}
!732 = distinct !{!732, !622}
!733 = !{!"branch_weights", i32 273194, i32 464231}
!734 = !{!"branch_weights", i32 0, i32 273194}
!735 = distinct !{!735, !622}
!736 = distinct !{!736, !622}
!737 = !{!"function_entry_count", i64 1804263}
!738 = !{!"tree-ssa-ccp.c:ccp_visit_stmt"}
!739 = !{!"branch_weights", i32 1804264, i32 1}
!740 = !{!"branch_weights", i32 22197, i32 1323032, i32 17254, i32 433844, i32 7941}
!741 = !{i32 0, i32 3}
!742 = !{!"branch_weights", i32 9711, i32 7544}
!743 = !{i32 1, i32 3}
!744 = !{!"branch_weights", i32 31907, i32 1}
!745 = !{!"branch_weights", i32 1, i32 31906}
!746 = !{!"branch_weights", i32 0, i32 1}
!747 = distinct !{!747, !622}
!748 = !{!"function_entry_count", i64 255538}
!749 = !{!"tree-ssa-ccp.c:ccp_visit_phi_node"}
!750 = !{!"branch_weights", i32 255539, i32 1}
!751 = !{!"branch_weights", i32 1, i32 1, i32 68001, i32 187539}
!752 = !{!"branch_weights", i32 1, i32 114263}
!753 = !{!"branch_weights", i32 639566, i32 1}
!754 = !{!755, !554, i64 0}
!755 = !{!"edge_def", !554, i64 0, !554, i64 8, !555, i64 16, !554, i64 24, !554, i64 32, !559, i64 40, !559, i64 44, !559, i64 48, !559, i64 52, !576, i64 56}
!756 = !{!720, !559, i64 80}
!757 = !{!755, !554, i64 8}
!758 = !{!755, !559, i64 48}
!759 = !{!"branch_weights", i32 331020, i32 308547}
!760 = !{!761, !554, i64 32}
!761 = !{!"phi_arg_d", !762, i64 0, !554, i64 32, !559, i64 40}
!762 = !{!"ssa_use_operand_d", !554, i64 0, !554, i64 8, !555, i64 16, !554, i64 24}
!763 = !{!"branch_weights", i32 219342, i32 89206}
!764 = !{!"branch_weights", i32 308547, i32 1}
!765 = !{!"branch_weights", i32 525303, i32 114263}
!766 = distinct !{!766, !622}
!767 = !{!"branch_weights", i32 71112, i32 184428}
!768 = !{!"branch_weights", i32 141276, i32 43153}
!769 = !{!"tree-ssa-ccp.c:ccp_finalize"}
!770 = !{!"function_entry_count", i64 2600739}
!771 = !{!"tree-ssa-ccp.c:VEC_tree_base_length"}
!772 = !{!"branch_weights", i32 1, i32 2600740}
!773 = !{!774, !559, i64 0}
!774 = !{!"VEC_tree_base", !559, i64 0, !559, i64 4, !555, i64 8}
!775 = !{!"function_entry_count", i64 978070}
!776 = !{!"tree-ssa-ccp.c:gsi_start_bb"}
!777 = !{!778, !554, i64 0}
!778 = !{!"", !554, i64 0, !554, i64 8, !554, i64 16}
!779 = !{!778, !554, i64 8}
!780 = !{!778, !554, i64 16}
!781 = !{!"function_entry_count", i64 4926671}
!782 = !{!"tree-ssa-ccp.c:gsi_end_p"}
!783 = !{!"function_entry_count", i64 7805035}
!784 = !{!"tree-ssa-ccp.c:gsi_stmt"}
!785 = !{!786, !554, i64 0}
!786 = !{!"gimple_seq_node_d", !554, i64 0, !554, i64 8, !554, i64 16}
!787 = !{!"function_entry_count", i64 1790573}
!788 = !{!"tree-ssa-ccp.c:surely_varying_stmt_p"}
!789 = !{!"branch_weights", i32 1790549, i32 26}
!790 = !{!"branch_weights", i32 1523136, i32 267414}
!791 = !{!"branch_weights", i32 104864, i32 162551}
!792 = !{!"branch_weights", i32 3460, i32 159092}
!793 = !{!"branch_weights", i32 155067, i32 4026}
!794 = !{!"branch_weights", i32 1360140, i32 162997}
!795 = !{!"function_entry_count", i64 2676665}
!796 = !{!"tree-ssa-ccp.c:op_iter_init_tree"}
!797 = !{!798, !559, i64 4}
!798 = !{!"ssa_operand_iterator_d", !555, i64 0, !559, i64 4, !554, i64 8, !554, i64 16, !559, i64 24, !559, i64 28, !554, i64 32}
!799 = !{!"function_entry_count", i64 5381270}
!800 = !{!"tree-ssa-ccp.c:op_iter_done"}
!801 = !{!798, !555, i64 0}
!802 = !{!"function_entry_count", i64 564675}
!803 = !{!"tree-ssa-ccp.c:set_value_varying"}
!804 = !{!"tree-ssa-ccp.c:op_iter_next_tree"}
!805 = !{!798, !554, i64 16}
!806 = !{!"branch_weights", i32 3241341, i32 2139931}
!807 = !{!808, !554, i64 0}
!808 = !{!"use_optype_d", !554, i64 0, !762, i64 8}
!809 = !{!798, !554, i64 8}
!810 = !{!"branch_weights", i32 2676666, i32 564676}
!811 = !{!812, !554, i64 8}
!812 = !{!"def_optype_d", !554, i64 0, !554, i64 8}
!813 = !{!812, !554, i64 0}
!814 = !{!"function_entry_count", i64 2527730}
!815 = !{!"tree-ssa-ccp.c:prop_set_simulate_again"}
!816 = !{!"function_entry_count", i64 3211284}
!817 = !{!"tree-ssa-ccp.c:gsi_next"}
!818 = !{!786, !554, i64 16}
!819 = !{!"function_entry_count", i64 784531}
!820 = !{!"tree-ssa-ccp.c:gimple_phi_result"}
!821 = !{!"tree-ssa-ccp.c:bb_seq"}
!822 = !{!720, !559, i64 96}
!823 = !{!"branch_weights", i32 978071, i32 1}
!824 = !{!"branch_weights", i32 1, i32 978071}
!825 = !{!826, !554, i64 0}
!826 = !{!"gimple_bb_info", !554, i64 0, !554, i64 8}
!827 = !{!"function_entry_count", i64 978136}
!828 = !{!"tree-ssa-ccp.c:gimple_seq_first"}
!829 = !{!"branch_weights", i32 1, i32 978137}
!830 = !{!831, !554, i64 0}
!831 = !{!"gimple_seq_d", !554, i64 0, !554, i64 8, !554, i64 16}
!832 = !{!"function_entry_count", i64 3937129}
!833 = !{!"tree-ssa-ccp.c:gimple_has_volatile_ops"}
!834 = !{!"branch_weights", i32 941138, i32 2995993}
!835 = !{!"function_entry_count", i64 366009}
!836 = !{!"tree-ssa-ccp.c:gimple_call_fndecl"}
!837 = !{!"branch_weights", i32 356378, i32 9633}
!838 = !{!"function_entry_count", i64 1523137}
!839 = !{!"tree-ssa-ccp.c:gimple_vdef"}
!840 = !{!"branch_weights", i32 75254, i32 1447885}
!841 = !{!"function_entry_count", i64 9628620}
!842 = !{!"tree-ssa-ccp.c:gimple_has_mem_ops"}
!843 = !{!"function_entry_count", i64 726965}
!844 = !{!"tree-ssa-ccp.c:gimple_call_fn"}
!845 = !{!"tree-ssa-ccp.c:op_iter_init"}
!846 = !{!"branch_weights", i32 1035, i32 -1523619465}
!847 = !{!"branch_weights", i32 2676666, i32 1}
!848 = !{!"branch_weights", i32 2146557, i32 530110}
!849 = !{!"branch_weights", i32 2147479598, i32 4050}
!850 = !{!"branch_weights", i32 530110, i32 2146557}
!851 = !{!"branch_weights", i32 40053071, i32 2107430577}
!852 = !{!"branch_weights", i32 1336564, i32 769959}
!853 = !{!"function_entry_count", i64 530109}
!854 = !{!"tree-ssa-ccp.c:gimple_def_ops"}
!855 = !{!"branch_weights", i32 1760, i32 528351}
!856 = !{!"function_entry_count", i64 2146556}
!857 = !{!"tree-ssa-ccp.c:gimple_use_ops"}
!858 = !{!"branch_weights", i32 1, i32 2146557}
!859 = !{!"function_entry_count", i64 3082566}
!860 = !{!"tree-ssa-ccp.c:gimple_vuse"}
!861 = !{!"branch_weights", i32 865859, i32 2216709}
!862 = !{!"function_entry_count", i64 2139930}
!863 = !{!"tree-ssa-ccp.c:get_use_from_ptr"}
!864 = !{!762, !554, i64 24}
!865 = !{!"tree-ssa-ccp.c:get_def_from_ptr"}
!866 = !{!"tree-ssa-ccp.c:gimple_set_visited"}
!867 = !{!"function_entry_count", i64 1330574}
!868 = !{!"tree-ssa-ccp.c:visit_assignment"}
!869 = !{!"branch_weights", i32 7544, i32 1323032}
!870 = !{!"branch_weights", i32 1, i32 7544}
!871 = !{!"branch_weights", i32 1243290, i32 87286}
!872 = !{!"branch_weights", i32 49903, i32 37384}
!873 = !{!"branch_weights", i32 1330575, i32 1}
!874 = !{!"branch_weights", i32 1448, i32 1329128}
!875 = !{!"branch_weights", i32 1244520, i32 84609}
!876 = !{!"function_entry_count", i64 441783}
!877 = !{!"tree-ssa-ccp.c:visit_cond_stmt"}
!878 = !{!"branch_weights", i32 431222, i32 10563}
!879 = !{!"function_entry_count", i64 1586112}
!880 = !{!"tree-ssa-ccp.c:set_lattice_value"}
!881 = !{!"branch_weights", i32 1513555, i32 72559}
!882 = !{!"branch_weights", i32 72559, i32 1}
!883 = !{!"branch_weights", i32 1278942191, i32 1797166449}
!884 = !{!"branch_weights", i32 1, i32 30167}
!885 = !{!"branch_weights", i32 72559, i32 1513555}
!886 = !{!"branch_weights", i32 1513555, i32 1}
!887 = !{!"branch_weights", i32 1, i32 1513555}
!888 = !{!"tree-ssa-ccp.c:evaluate_stmt"}
!889 = !{i32 1, i32 4}
!890 = !{!"branch_weights", i32 95593, i32 -1923028824, i32 438892020}
!891 = !{!"branch_weights", i32 352055615, i32 -1971162251, i32 81686129, i32 352055615, i32 352055615}
!892 = !{i32 0, i32 65536}
!893 = !{!"branch_weights", i32 19780, i32 205214}
!894 = !{!"branch_weights", i32 1933784548, i32 213699100}
!895 = !{!"branch_weights", i32 2146557, i32 1}
!896 = !{!"branch_weights", i32 2054739, i32 91819}
!897 = !{!"tree-ssa-ccp.c:likely_value"}
!898 = !{!"branch_weights", i32 1, i32 7942, i32 7942, i32 7942, i32 7941}
!899 = !{!"branch_weights", i32 2139931, i32 6626}
!900 = !{!"branch_weights", i32 262, i32 2139670}
!901 = !{!"branch_weights", i32 91091, i32 2048841}
!902 = !{!"branch_weights", i32 0, i32 2139931}
!903 = distinct !{!903, !622}
!904 = !{!"branch_weights", i32 2146556, i32 1}
!905 = !{!"branch_weights", i32 1715889, i32 3379522}
!906 = !{!"branch_weights", i32 1523628, i32 1855895}
!907 = !{!"branch_weights", i32 848009, i32 1007887}
!908 = !{!"branch_weights", i32 2948854, i32 2146556}
!909 = distinct !{!909, !622}
!910 = !{!"branch_weights", i32 2146313, i32 245}
!911 = !{!"branch_weights", i32 -1662985247, i32 989855744}
!912 = !{!"branch_weights", i32 505357342, i32 -673129503}
!913 = !{!"branch_weights", i32 1060529, i32 1085785}
!914 = !{!"branch_weights", i32 334988, i32 750798}
!915 = !{!"function_entry_count", i64 1811325}
!916 = !{!"tree-ssa-ccp.c:ccp_fold"}
!917 = !{!"branch_weights", i32 1, i32 1048083, i32 7275, i32 755938, i32 33}
!918 = !{!"branch_weights", i32 1, i32 800516, i32 12069, i32 235500}
!919 = !{!"branch_weights", i32 -533980791, i32 4736, i32 30430187, i32 4736}
!920 = !{!"branch_weights", i32 6425, i32 10466}
!921 = distinct !{!921, !622}
!922 = !{!"branch_weights", i32 390, i32 6036}
!923 = !{!"branch_weights", i32 390, i32 1}
!924 = !{!"branch_weights", i32 12, i32 379}
!925 = !{!"branch_weights", i32 7, i32 6}
!926 = !{!"branch_weights", i32 1, i32 7}
!927 = distinct !{!927, !622}
!928 = !{!"branch_weights", i32 195462394, i32 -1013553465, i32 658513567}
!929 = !{!"branch_weights", i32 -475914316, i32 6011, i32 6011, i32 6012}
!930 = !{!"branch_weights", i32 46802, i32 588401}
!931 = !{!"branch_weights", i32 46799, i32 4}
!932 = !{!"branch_weights", i32 2916, i32 43884}
!933 = !{!"branch_weights", i32 2913, i32 4}
!934 = !{!"branch_weights", i32 191, i32 2723}
!935 = !{!"branch_weights", i32 9456, i32 2614}
!936 = !{!"branch_weights", i32 9456, i32 1}
!937 = !{!"branch_weights", i32 75203584, i32 24371130, i32 8672}
!938 = !{!"branch_weights", i32 81, i32 28020, i32 9}
!939 = !{!"branch_weights", i32 2802, i32 1}
!940 = !{!"branch_weights", i32 2627, i32 176}
!941 = !{!"branch_weights", i32 223493, i32 12008}
!942 = !{!"branch_weights", i32 30721, i32 192773}
!943 = !{!"branch_weights", i32 28367, i32 207134}
!944 = !{!"branch_weights", i32 12390, i32 15978}
!945 = !{!"branch_weights", i32 25690, i32 209811}
!946 = !{!"branch_weights", i32 3031, i32 22660}
!947 = !{!"branch_weights", i32 2678, i32 354}
!948 = !{!"branch_weights", i32 3457, i32 3819}
!949 = !{!"branch_weights", i32 290, i32 3168}
!950 = !{!"branch_weights", i32 4108, i32 3168}
!951 = !{!"branch_weights", i32 4108, i32 1}
!952 = !{!"branch_weights", i32 290, i32 3819}
!953 = !{!"branch_weights", i32 1, i32 3818}
!954 = !{!"branch_weights", i32 4622, i32 1887}
!955 = !{!"branch_weights", i32 250, i32 4373}
!956 = !{!"branch_weights", i32 2690, i32 3818}
!957 = distinct !{!957, !622}
!958 = !{!"branch_weights", i32 14584761, i32 7639}
!959 = !{!"branch_weights", i32 3702, i32 118}
!960 = !{!"branch_weights", i32 755844, i32 95}
!961 = !{!"branch_weights", i32 15344, i32 740501}
!962 = !{!"branch_weights", i32 10277, i32 745662}
!963 = !{!"branch_weights", i32 5689, i32 4589}
!964 = !{!"branch_weights", i32 33, i32 1}
!965 = !{!"function_entry_count", i64 2551223}
!966 = !{!"tree-ssa-ccp.c:gimple_assign_rhs_code"}
!967 = !{!"branch_weights", i32 1234653, i32 1316572}
!968 = !{!"function_entry_count", i64 4387901}
!969 = !{!"tree-ssa-ccp.c:get_gimple_rhs_class"}
!970 = !{!"function_entry_count", i64 7940}
!971 = !{!"tree-ssa-ccp.c:gimple_switch_index"}
!972 = !{!"function_entry_count", i64 2979455}
!973 = !{!"tree-ssa-ccp.c:gimple_has_lhs"}
!974 = !{!"branch_weights", i32 1142689, i32 1836768}
!975 = !{!"branch_weights", i32 1048361, i32 94329}
!976 = !{!"function_entry_count", i64 9329032}
!977 = !{!"tree-ssa-ccp.c:gimple_num_ops"}
!978 = !{!"function_entry_count", i64 1085784}
!979 = !{!"tree-ssa-ccp.c:gimple_references_memory_p"}
!980 = !{!"branch_weights", i32 109742, i32 976044}
!981 = !{!"function_entry_count", i64 2570896}
!982 = !{!"tree-ssa-ccp.c:gimple_location"}
!983 = !{!"function_entry_count", i64 1271012}
!984 = !{!"tree-ssa-ccp.c:handled_component_p"}
!985 = !{!"branch_weights", i32 391091, i32 12985, i32 676209, i32 190705, i32 1, i32 27, i32 1, i32 1}
!986 = !{!"function_entry_count", i64 2104608}
!987 = !{!"tree-ssa-ccp.c:gimple_assign_lhs"}
!988 = !{!"function_entry_count", i64 61947}
!989 = !{!"branch_weights", i32 1, i32 123896, i32 1}
!990 = !{!"branch_weights", i32 33891, i32 28058}
!991 = !{!"branch_weights", i32 28058, i32 1}
!992 = !{!"branch_weights", i32 242778941, i32 182018400, i32 76897579}
!993 = !{!"branch_weights", i32 4294, i32 8}
!994 = !{!"branch_weights", i32 335, i32 4750704, i32 112225}
!995 = !{!"branch_weights", i32 10180, i32 4294}
!996 = !{!"branch_weights", i32 14139, i32 335}
!997 = !{!"branch_weights", i32 335, i32 14139}
!998 = !{!"branch_weights", i32 9797, i32 17928}
!999 = !{!"function_entry_count", i64 377148}
!1000 = !{!"tree-ssa-ccp.c:gimple_expr_type"}
!1001 = !{!"branch_weights", i32 1, i32 2, i32 1508596, i32 1}
!1002 = !{!"branch_weights", i32 23222, i32 353928}
!1003 = !{!"function_entry_count", i64 355207}
!1004 = !{!"tree-ssa-ccp.c:gimple_assign_rhs2"}
!1005 = !{!"branch_weights", i32 355208, i32 1}
!1006 = !{!"function_entry_count", i64 1163423}
!1007 = !{!"tree-ssa-ccp.c:gimple_call_num_args"}
!1008 = !{!"function_entry_count", i64 765610}
!1009 = !{!"tree-ssa-ccp.c:gimple_call_arg"}
!1010 = !{!"function_entry_count", i64 3818}
!1011 = !{!"tree-ssa-ccp.c:gimple_call_return_type"}
!1012 = !{!"function_entry_count", i64 908896}
!1013 = !{!"tree-ssa-ccp.c:gimple_cond_lhs"}
!1014 = !{!"tree-ssa-ccp.c:gimple_cond_rhs"}
!1015 = !{!"tree-ssa-ccp.c:gimple_cond_code"}
!1016 = !{!"tree-ssa-ccp.c:gimple_expr_code"}
!1017 = !{!"branch_weights", i32 1, i32 10204896, i32 2, i32 1}
!1018 = !{!"function_entry_count", i64 1720979}
!1019 = !{!"tree-ssa-ccp.c:gimple_bb"}
!1020 = !{!"function_entry_count", i64 754091}
!1021 = !{!"tree-ssa-ccp.c:gimple_phi_num_args"}
!1022 = !{!"function_entry_count", i64 639565}
!1023 = !{!"tree-ssa-ccp.c:gimple_phi_arg_edge"}
!1024 = !{!720, !554, i64 0}
!1025 = !{!"function_entry_count", i64 308808}
!1026 = !{!"tree-ssa-ccp.c:gimple_phi_arg"}
!1027 = !{!"branch_weights", i32 1, i32 308809}
!1028 = !{!"function_entry_count", i64 308546}
!1029 = !{!"tree-ssa-ccp.c:ccp_lattice_meet"}
!1030 = !{!"branch_weights", i32 146351, i32 162197}
!1031 = !{!"branch_weights", i32 54, i32 162144}
!1032 = !{!"branch_weights", i32 527434164, i32 -1536026332}
!1033 = !{!"branch_weights", i32 -1978783405, i32 34030}
!1034 = !{!"branch_weights", i32 107250, i32 28874}
!1035 = !{!"function_entry_count", i64 639567}
!1036 = !{!"tree-ssa-ccp.c:VEC_edge_base_index"}
!1037 = !{!"tree-ssa-ccp.c:do_dbg_cnt"}
!1038 = !{!"branch_weights", i32 1, i32 2556204}
!1039 = !{!"branch_weights", i32 2533936, i32 22268}
!1040 = distinct !{!1040, !622}
!1041 = !{!"function_entry_count", i64 2233964}
!1042 = !{!"tree-ssa-ccp.c:ccp_fold_stmt"}
!1043 = !{!"branch_weights", i32 105359, i32 424102, i32 277123, i32 1427384}
!1044 = !{!"branch_weights", i32 605, i32 423498}
!1045 = !{!"branch_weights", i32 605, i32 1}
!1046 = !{!"branch_weights", i32 173, i32 433}
!1047 = !{!"branch_weights", i32 114622, i32 162502}
!1048 = !{!"branch_weights", i32 162328, i32 175}
!1049 = !{!"branch_weights", i32 1, i32 162328}
!1050 = !{!"branch_weights", i32 574050, i32 264614}
!1051 = !{!"branch_weights", i32 277122, i32 1}
!1052 = !{!"branch_weights", i32 365851, i32 195691}
!1053 = !{!"branch_weights", i32 1, i32 365851}
!1054 = !{!"branch_weights", i32 3996, i32 361856}
!1055 = !{!"branch_weights", i32 371, i32 3626}
!1056 = !{!"branch_weights", i32 284419, i32 277122}
!1057 = distinct !{!1057, !622}
!1058 = !{!"branch_weights", i32 413680, i32 1013705}
!1059 = !{!"branch_weights", i32 850697, i32 163009}
!1060 = !{!"branch_weights", i32 1, i32 850697}
!1061 = !{!"branch_weights", i32 29641, i32 821057}
!1062 = !{!"branch_weights", i32 38, i32 29604}
!1063 = !{!"function_entry_count", i64 432}
!1064 = !{!"tree-ssa-ccp.c:gimple_cond_make_false"}
!1065 = !{!"function_entry_count", i64 172}
!1066 = !{!"tree-ssa-ccp.c:gimple_cond_make_true"}
!1067 = !{!"function_entry_count", i64 3625}
!1068 = !{!"tree-ssa-ccp.c:gimple_call_set_arg"}
!1069 = !{!"function_entry_count", i64 604}
!1070 = !{!"tree-ssa-ccp.c:gimple_cond_set_lhs"}
!1071 = !{!"tree-ssa-ccp.c:gimple_cond_set_rhs"}
!1072 = !{!"function_entry_count", i64 4833}
!1073 = !{!"tree-ssa-ccp.c:gimple_set_op"}
!1074 = !{!"branch_weights", i32 1, i32 4834}
!1075 = !{!"branch_weights", i32 4834, i32 1}
!1076 = !{!"function_entry_count", i64 332273}
!1077 = !{!"branch_weights", i32 29709, i32 302566}
!1078 = !{!"branch_weights", i32 14946, i32 14764}
!1079 = !{!"branch_weights", i32 1, i32 14764}
!1080 = !{!"branch_weights", i32 217975696, i32 29529}
!1081 = !{!"branch_weights", i32 14764, i32 1}
!1082 = !{!"branch_weights", i32 13258, i32 1507}
!1083 = !{!"branch_weights", i32 29389, i32 321}
!1084 = !{!"branch_weights", i32 210, i32 112}
!1085 = !{!"branch_weights", i32 24582, i32 5017}
!1086 = !{!"function_entry_count", i64 32201}
!1087 = !{!"tree-ssa-ccp.c:maybe_fold_offset_to_component_ref"}
!1088 = !{!"branch_weights", i32 1108290837, i32 -292948954}
!1089 = !{!"branch_weights", i32 6982, i32 1}
!1090 = !{!"branch_weights", i32 1, i32 1643}
!1091 = !{!"branch_weights", i32 48943, i32 1}
!1092 = !{!"branch_weights", i32 31905, i32 17039}
!1093 = !{!"branch_weights", i32 1, i32 31905}
!1094 = !{!"branch_weights", i32 31905, i32 1}
!1095 = !{!"branch_weights", i32 9191, i32 22715}
!1096 = !{!"branch_weights", i32 2315, i32 20401}
!1097 = !{!"branch_weights", i32 1974, i32 342}
!1098 = !{!"branch_weights", i32 -407294081, i32 -2006577379}
!1099 = !{!"branch_weights", i32 5683, i32 8400}
!1100 = !{!"branch_weights", i32 1, i32 14082}
!1101 = !{!"branch_weights", i32 14082, i32 1}
!1102 = !{!"branch_weights", i32 7163, i32 6920}
!1103 = !{!"branch_weights", i32 2266, i32 4655}
!1104 = !{!"branch_weights", i32 1923, i32 344}
!1105 = !{!"branch_weights", i32 1643, i32 47300}
!1106 = distinct !{!1106, !622}
!1107 = !{!"branch_weights", i32 1677497532, i32 469986116}
!1108 = !{!"branch_weights", i32 338, i32 22}
!1109 = !{!"function_entry_count", i64 32344}
!1110 = !{!"tree-ssa-ccp.c:maybe_fold_offset_to_array_ref"}
!1111 = !{!"branch_weights", i32 1, i32 32345}
!1112 = !{!"branch_weights", i32 29839, i32 2507}
!1113 = !{!"branch_weights", i32 1727, i32 28113}
!1114 = !{!"branch_weights", i32 1, i32 28113}
!1115 = !{!"branch_weights", i32 7232, i32 20882}
!1116 = !{!"branch_weights", i32 20882, i32 1}
!1117 = !{!"branch_weights", i32 7232, i32 1}
!1118 = !{!"branch_weights", i32 1225993, i32 -1339914240}
!1119 = !{!"branch_weights", i32 28113, i32 1}
!1120 = !{!"branch_weights", i32 28109, i32 5}
!1121 = !{!"branch_weights", i32 27913, i32 197}
!1122 = !{!"branch_weights", i32 24, i32 174}
!1123 = !{!"branch_weights", i32 1, i32 28090}
!1124 = !{!"branch_weights", i32 799, i32 27292}
!1125 = !{!"branch_weights", i32 799, i32 1}
!1126 = !{!"function_entry_count", i64 18342}
!1127 = !{!"branch_weights", i32 694, i32 17650}
!1128 = !{!"branch_weights", i32 487, i32 208}
!1129 = !{!"branch_weights", i32 485, i32 2}
!1130 = !{!"branch_weights", i32 155, i32 54}
!1131 = !{!"branch_weights", i32 1, i32 155}
!1132 = !{!"branch_weights", i32 155, i32 1}
!1133 = !{!"branch_weights", i32 15, i32 141}
!1134 = !{!"branch_weights", i32 132, i32 10}
!1135 = !{!"branch_weights", i32 132, i32 1}
!1136 = !{!"branch_weights", i32 1, i32 132}
!1137 = !{!"branch_weights", i32 5, i32 6}
!1138 = !{!"branch_weights", i32 1, i32 6}
!1139 = !{!"branch_weights", i32 485, i32 1}
!1140 = !{!"branch_weights", i32 1, i32 485}
!1141 = !{!"branch_weights", i32 0, i32 485}
!1142 = !{!"branch_weights", i32 1, i32 487}
!1143 = !{!"branch_weights", i32 3, i32 485}
!1144 = !{!"branch_weights", i32 -2147483648, i32 0}
!1145 = !{!"function_entry_count", i64 788449}
!1146 = !{!"function_entry_count", i64 832899}
!1147 = !{!"tree-ssa-ccp.c:fold_stmt_1"}
!1148 = !{!"branch_weights", i32 29493, i32 563605, i32 152960, i32 86845, i32 1}
!1149 = !{!"branch_weights", i32 1, i32 86844}
!1150 = !{!"branch_weights", i32 549419, i32 14187}
!1151 = !{!"branch_weights", i32 1, i32 14187}
!1152 = !{!"branch_weights", i32 11696, i32 2492}
!1153 = !{!"branch_weights", i32 2492, i32 1}
!1154 = !{!"branch_weights", i32 20, i32 195310}
!1155 = !{!"branch_weights", i32 20, i32 1}
!1156 = !{!"branch_weights", i32 108485, i32 86844}
!1157 = distinct !{!1157, !622}
!1158 = !{!"branch_weights", i32 85935, i32 911}
!1159 = distinct !{!1159, !622}
!1160 = distinct !{!1160, !622}
!1161 = !{!"branch_weights", i32 225020, i32 607881}
!1162 = !{!"branch_weights", i32 1, i32 607881}
!1163 = !{!"branch_weights", i32 72779, i32 535103}
!1164 = !{!"branch_weights", i32 68253, i32 4527}
!1165 = !{!"function_entry_count", i64 563604}
!1166 = !{!"tree-ssa-ccp.c:fold_gimple_assign"}
!1167 = !{!"branch_weights", i32 1, i32 414359, i32 47523, i32 101725, i32 1}
!1168 = !{!"branch_weights", i32 -1625794356, i32 362516, i32 12830477}
!1169 = !{!"branch_weights", i32 3136, i32 113}
!1170 = !{!"branch_weights", i32 54, i32 3}
!1171 = !{!"branch_weights", i32 49, i32 6}
!1172 = !{!"branch_weights", i32 3, i32 1}
!1173 = !{!"branch_weights", i32 243702, i32 168622}
!1174 = !{!"branch_weights", i32 -1208776966, i32 225756527, i32 19641}
!1175 = !{!"branch_weights", i32 11494, i32 1}
!1176 = distinct !{!1176, !622}
!1177 = !{!"branch_weights", i32 25199, i32 131931}
!1178 = !{!"branch_weights", i32 143449, i32 29}
!1179 = !{!"branch_weights", i32 24, i32 6}
!1180 = !{!"branch_weights", i32 45126, i32 2398}
!1181 = !{!"branch_weights", i32 2218, i32 175}
!1182 = !{!"branch_weights", i32 2218, i32 1}
!1183 = !{!"branch_weights", i32 1, i32 2398}
!1184 = !{!"branch_weights", i32 9035, i32 34717}
!1185 = !{!"branch_weights", i32 1, i32 34717}
!1186 = !{!"branch_weights", i32 8863, i32 173}
!1187 = !{!"branch_weights", i32 1, i32 173}
!1188 = !{!"branch_weights", i32 18047, i32 83679}
!1189 = !{!"branch_weights", i32 154, i32 17894}
!1190 = !{!"branch_weights", i32 54, i32 101}
!1191 = !{!"branch_weights", i32 2108810616, i32 38673032}
!1192 = !{!"branch_weights", i32 1974119469, i32 173364179}
!1193 = !{!"branch_weights", i32 16, i32 8496}
!1194 = !{!"branch_weights", i32 16, i32 1}
!1195 = !{!"function_entry_count", i64 152959}
!1196 = !{!"tree-ssa-ccp.c:fold_gimple_cond"}
!1197 = !{!"branch_weights", i32 133132, i32 19829}
!1198 = !{!"branch_weights", i32 3, i32 19827}
!1199 = !{!"branch_weights", i32 1, i32 19827}
!1200 = !{!"function_entry_count", i64 335693}
!1201 = !{!"tree-ssa-ccp.c:maybe_fold_reference"}
!1202 = !{!"branch_weights", i32 -2143368479, i32 290959964}
!1203 = !{!"branch_weights", i32 34082, i32 301586}
!1204 = !{!"branch_weights", i32 1539, i32 300048}
!1205 = !{!"branch_weights", i32 335641, i32 553110}
!1206 = distinct !{!1206, !622}
!1207 = !{!"branch_weights", i32 278021, i32 57621}
!1208 = !{!"branch_weights", i32 36421978, i32 -2094528521}
!1209 = !{!"branch_weights", i32 1, i32 4527}
!1210 = !{!"branch_weights", i32 2122600105, i32 24883543}
!1211 = !{!"branch_weights", i32 1, i32 270327}
!1212 = !{!"branch_weights", i32 7695, i32 1}
!1213 = !{!"branch_weights", i32 24435, i32 33187}
!1214 = !{!"branch_weights", i32 33131, i32 57}
!1215 = !{!"branch_weights", i32 33123, i32 9}
!1216 = !{!"branch_weights", i32 9, i32 1}
!1217 = !{!"function_entry_count", i64 85934}
!1218 = !{!"tree-ssa-ccp.c:fold_gimple_call"}
!1219 = !{!"branch_weights", i32 2915, i32 83021}
!1220 = !{!"branch_weights", i32 69829, i32 13193}
!1221 = !{!"branch_weights", i32 13112, i32 82}
!1222 = !{!"branch_weights", i32 17, i32 66}
!1223 = !{!"branch_weights", i32 1, i32 72743}
!1224 = !{!1225, !554, i64 616}
!1225 = !{!"lang_hooks", !554, i64 0, !576, i64 8, !554, i64 16, !554, i64 24, !554, i64 32, !554, i64 40, !554, i64 48, !554, i64 56, !554, i64 64, !554, i64 72, !554, i64 80, !554, i64 88, !554, i64 96, !554, i64 104, !554, i64 112, !554, i64 120, !554, i64 128, !554, i64 136, !554, i64 144, !554, i64 152, !554, i64 160, !554, i64 168, !554, i64 176, !554, i64 184, !554, i64 192, !554, i64 200, !554, i64 208, !554, i64 216, !554, i64 224, !554, i64 232, !1226, i64 240, !1227, i64 248, !1228, i64 256, !1229, i64 272, !1230, i64 432, !1231, i64 560, !554, i64 584, !554, i64 592, !554, i64 600, !554, i64 608, !554, i64 616, !554, i64 624, !554, i64 632, !554, i64 640, !554, i64 648, !554, i64 656, !554, i64 664, !555, i64 672}
!1226 = !{!"lang_hooks_for_tree_inlining", !554, i64 0}
!1227 = !{!"lang_hooks_for_callgraph", !554, i64 0}
!1228 = !{!"lang_hooks_for_tree_dump", !554, i64 0, !554, i64 8}
!1229 = !{!"lang_hooks_for_decls", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !554, i64 32, !554, i64 40, !554, i64 48, !554, i64 56, !554, i64 64, !554, i64 72, !554, i64 80, !554, i64 88, !554, i64 96, !554, i64 104, !554, i64 112, !554, i64 120, !554, i64 128, !554, i64 136, !554, i64 144, !554, i64 152}
!1230 = !{!"lang_hooks_for_types", !554, i64 0, !554, i64 8, !554, i64 16, !554, i64 24, !554, i64 32, !554, i64 40, !554, i64 48, !554, i64 56, !554, i64 64, !554, i64 72, !554, i64 80, !554, i64 88, !554, i64 96, !554, i64 104, !554, i64 112, !555, i64 120}
!1231 = !{!"lang_hooks_for_lto", !554, i64 0, !554, i64 8, !554, i64 16}
!1232 = !{!"tree-ssa-ccp.c:gimple_asm_noutputs"}
!1233 = !{!"tree-ssa-ccp.c:gimple_asm_output_op"}
!1234 = !{!"tree-ssa-ccp.c:gimple_asm_ninputs"}
!1235 = !{!"tree-ssa-ccp.c:gimple_asm_input_op"}
!1236 = !{!"function_entry_count", i64 278020}
!1237 = !{!"tree-ssa-ccp.c:maybe_fold_stmt_indirect"}
!1238 = !{!"branch_weights", i32 -1879477408, i32 17376}
!1239 = !{!"branch_weights", i32 -1733180972, i32 9214, i32 9214, i32 9214}
!1240 = !{!"branch_weights", i32 1, i32 278021}
!1241 = distinct !{!1241, !622}
!1242 = !{!"branch_weights", i32 277976, i32 46}
!1243 = !{!"branch_weights", i32 1, i32 277976}
!1244 = !{!"branch_weights", i32 7650, i32 270327}
!1245 = !{!"branch_weights", i32 1, i32 7650}
!1246 = !{!"branch_weights", i32 1, i32 540654, i32 1}
!1247 = !{!"branch_weights", i32 270327, i32 1}
!1248 = !{!"function_entry_count", i64 24663}
!1249 = !{!"tree-ssa-ccp.c:ccp_fold_builtin"}
!1250 = !{!"branch_weights", i32 1, i32 24664}
!1251 = !{!"branch_weights", i32 24577, i32 88}
!1252 = !{!"branch_weights", i32 54, i32 35}
!1253 = !{!"branch_weights", i32 1, i32 24577}
!1254 = !{!"branch_weights", i32 3606, i32 20972}
!1255 = !{!"branch_weights", i32 19631, i32 860, i32 48, i32 361, i32 56, i32 21, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!1256 = !{!"branch_weights", i32 1342, i32 1}
!1257 = !{!"branch_weights", i32 1340, i32 3}
!1258 = !{!"branch_weights", i32 1, i32 860, i32 56, i32 21, i32 48, i32 361, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!1259 = !{!"branch_weights", i32 860, i32 1}
!1260 = !{!"branch_weights", i32 9, i32 7}
!1261 = !{!"branch_weights", i32 21, i32 1}
!1262 = !{!"branch_weights", i32 48, i32 1}
!1263 = !{!"branch_weights", i32 361, i32 1}
!1264 = !{!"branch_weights", i32 2131704619, i32 15779029}
!1265 = !{!"function_entry_count", i64 66}
!1266 = !{!"tree-ssa-ccp.c:gimplify_and_update_call_from_tree"}
!1267 = !{!"branch_weights", i32 1, i32 67}
!1268 = !{!"branch_weights", i32 65, i32 3}
!1269 = !{!"branch_weights", i32 133, i32 1}
!1270 = !{!"branch_weights", i32 233, i32 133}
!1271 = distinct !{!1271, !622}
!1272 = !{!"tree-ssa-ccp.c:gimple_call_set_fn"}
!1273 = !{!"function_entry_count", i64 2550}
!1274 = !{!"tree-ssa-ccp.c:get_maxval_strlen"}
!1275 = !{!"branch_weights", i32 952605621, i32 1652947520, i32 1097256, i32 196221411}
!1276 = !{!"branch_weights", i32 179, i32 1}
!1277 = !{!"branch_weights", i32 1, i32 179}
!1278 = !{!"branch_weights", i32 1, i32 1047}
!1279 = !{!"branch_weights", i32 1996444057, i32 151039591}
!1280 = !{!"branch_weights", i32 30, i32 45}
!1281 = !{!"branch_weights", i32 37769310, i32 2109714338}
!1282 = !{!"branch_weights", i32 18, i32 28}
!1283 = !{!"branch_weights", i32 1498, i32 8}
!1284 = !{!"branch_weights", i32 317, i32 971, i32 212}
!1285 = !{!"branch_weights", i32 120, i32 852}
!1286 = !{!"branch_weights", i32 24, i32 97}
!1287 = !{!"branch_weights", i32 1, i32 263}
!1288 = !{!"branch_weights", i32 211, i32 53}
!1289 = !{!"branch_weights", i32 16705, i32 127}
!1290 = distinct !{!1290, !622}
!1291 = !{!"tree-ssa-ccp.c:gimple_has_location"}
!1292 = !{!"tree-ssa-ccp.c:gsi_start"}
!1293 = !{!"function_entry_count", i64 2}
!1294 = !{!"tree-ssa-ccp.c:gimple_set_vuse"}
!1295 = !{!"branch_weights", i32 1, i32 3}
!1296 = !{!"tree-ssa-ccp.c:gimple_set_vdef"}
!1297 = !{!"tree-ssa-ccp.c:gimple_set_location"}
!1298 = !{!"function_entry_count", i64 44450}
!1299 = !{!"branch_weights", i32 44451, i32 1}
!1300 = !{!"function_entry_count", i64 6652}
!1301 = !{!"tree-ssa-ccp.c:execute_fold_all_builtins"}
!1302 = !{!"branch_weights", i32 1, i32 6652}
!1303 = !{i64 0, i64 8, !553, i64 8, i64 8, !553, i64 16, i64 8, !553}
!1304 = !{!"branch_weights", i32 240646, i32 1}
!1305 = !{!"branch_weights", i32 92841, i32 590355}
!1306 = distinct !{!1306, !622}
!1307 = !{!"branch_weights", i32 3260, i32 89582}
!1308 = !{!"branch_weights", i32 11472, i32 78111}
!1309 = !{!"branch_weights", i32 11464, i32 9}
!1310 = !{!"branch_weights", i32 11361, i32 1, i32 3, i32 51, i32 52, i32 1}
!1311 = !{!"branch_weights", i32 2, i32 2}
!1312 = !{!"branch_weights", i32 1, i32 102}
!1313 = !{!"branch_weights", i32 111, i32 1}
!1314 = !{!"branch_weights", i32 51, i32 61}
!1315 = !{!"branch_weights", i32 8, i32 104}
!1316 = !{!"branch_weights", i32 1, i32 8}
!1317 = !{!"branch_weights", i32 8, i32 1}
!1318 = !{!"branch_weights", i32 442549, i32 240646}
!1319 = !{!"branch_weights", i32 6652, i32 233995}
!1320 = distinct !{!1320, !622}
!1321 = !{!"branch_weights", i32 2147160864, i32 322784}
!1322 = !{!"tree-ssa-ccp.c:optimize_stack_restore"}
!1323 = !{!"branch_weights", i32 2, i32 1}
!1324 = !{!"branch_weights", i32 4, i32 3, i32 2}
!1325 = !{!"branch_weights", i32 0, i32 2}
!1326 = distinct !{!1326, !622}
!1327 = !{!720, !554, i64 8}
!1328 = !{!"branch_weights", i32 1, i32 1, i32 3}
!1329 = !{!"branch_weights", i32 1, i32 2}
!1330 = !{!"branch_weights", i32 4, i32 5}
!1331 = !{!"function_entry_count", i64 101}
!1332 = !{!"tree-ssa-ccp.c:optimize_stdarg_builtin"}
!1333 = !{!"branch_weights", i32 102, i32 1}
!1334 = !{!571, !554, i64 1328}
!1335 = !{!"branch_weights", i32 1, i32 204, i32 1}
!1336 = !{!"branch_weights", i32 1, i32 51, i32 1, i32 52}
!1337 = !{!"branch_weights", i32 7957, i32 132651}
!1338 = !{!"branch_weights", i32 51, i32 1}
!1339 = !{!"branch_weights", i32 1, i32 102, i32 1}
!1340 = !{!"function_entry_count", i64 110}
!1341 = !{!"tree-ssa-ccp.c:update_stmt"}
!1342 = !{!"branch_weights", i32 104, i32 8}
!1343 = !{!"tree-ssa-ccp.c:gsi_bb"}
!1344 = !{!"function_entry_count", i64 4}
!1345 = !{!"tree-ssa-ccp.c:VEC_edge_base_length"}
!1346 = !{!1347, !559, i64 0}
!1347 = !{!"VEC_edge_base", !559, i64 0, !559, i64 4, !555, i64 8}
!1348 = !{!"tree-ssa-ccp.c:single_succ_edge"}
!1349 = !{!"function_entry_count", i64 1}
!1350 = !{!"tree-ssa-ccp.c:has_single_use"}
!1351 = !{!762, !554, i64 8}
!1352 = !{!"tree-ssa-ccp.c:single_succ_p"}
!1353 = !{!"tree-ssa-ccp.c:is_gimple_debug"}
