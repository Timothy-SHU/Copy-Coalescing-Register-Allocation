; ModuleID = 'cfgexpand.c'
source_filename = "cfgexpand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ssaexpand = type { ptr, ptr, ptr, ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtl_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stack_var = type { ptr, i64, i64, i32, i64, i64, ptr }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.separate_ops = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }

@SA = dso_local global %struct.ssaexpand zeroinitializer, align 8
@currently_expanding_gimple_stmt = dso_local local_unnamed_addr global ptr null, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@currently_expanding_to_rtl = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"cfgexpand.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@stack_vars_num = internal unnamed_addr global i64 0, align 8
@stack_vars_sorted = internal unnamed_addr global ptr null, align 8
@has_protected_decls = internal unnamed_addr global i1 false, align 1
@has_short_buffer = internal unnamed_addr global i1 false, align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.3 = private unnamed_addr constant [35 x i8] c"size of variable %q+D is too large\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@.str.4 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@flag_stack_protect = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@stack_vars_alloc = internal unnamed_addr global i64 0, align 8
@stack_vars = internal unnamed_addr global ptr null, align 8
@pass_expand = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.5, ptr null, ptr @gimple_expand_cfg, ptr null, ptr null, i32 0, i32 116, i32 1068, i32 128, i32 295, i32 28, i32 3 } }, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@prologue_locator = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@warn_stack_protect = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"not protecting local variables: variable length buffer\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"not protecting function: no buffer at least %d bytes long\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@lab_rtx_for_bb = internal unnamed_addr global ptr null, align 8
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@generating_concat_p = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [50 x i8] c"\0A\0A;;\0A;; Full RTL generated for this function:\0A;;\0A\00", align 1
@debug_hooks = external local_unnamed_addr global ptr, align 8
@ix86_preferred_stack_boundary = external local_unnamed_addr global i32, align 4
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"Partition %lu: size %ld align %u\0A\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c", offset %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"\0A;; Generating RTL for gimple basic block %d\0A\00", align 1
@input_location = external local_unnamed_addr global i32, align 4
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"\0A;; \00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@ix86_branch_cost = external local_unnamed_addr global i32, align 4
@flag_strict_aliasing = external local_unnamed_addr global i32, align 4
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@const_true_rtx = external local_unnamed_addr global ptr, align 8
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@ix86_incoming_stack_boundary = external local_unnamed_addr global i32, align 4
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_assign_rhs_to_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !6
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !7
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %57 [
    i8 1, label %5
    i8 2, label %13
    i8 3, label %20
  ]

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !6
  %7 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !8
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %11 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %12 = tail call ptr @build2_stat(i32 noundef %6, ptr noundef %9, ptr noundef %10, ptr noundef %11) #21
  br label %58

13:                                               ; preds = %1
  %14 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !6
  %15 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !8
  %18 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %19 = tail call ptr @build1_stat(i32 noundef %14, ptr noundef %17, ptr noundef %18) #21
  br label %58

20:                                               ; preds = %1
  %21 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %22 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !11
  %23 = icmp ne i8 %22, 0
  %24 = icmp ne ptr %21, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load i64, ptr %21, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !12
  %31 = add i32 %30, -4
  %32 = icmp ult i32 %31, 7
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  %35 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !8
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %33, %26, %20
  %39 = tail call fastcc ptr @gimple_block(ptr noundef %0) #20
  %40 = icmp ne ptr %39, null
  %41 = load i32, ptr @currently_expanding_to_rtl, align 4
  %42 = icmp ne i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load i64, ptr %21, align 8
  %46 = and i64 %45, 65535
  %47 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !12
  %49 = add i32 %48, -4
  %50 = icmp ult i32 %49, 7
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = tail call ptr @tree_block(ptr noundef nonnull %21) #21
  %53 = load ptr, ptr %52, align 8, !tbaa !14
  %54 = icmp eq ptr %39, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %51, %33
  %56 = tail call ptr @copy_node_stat(ptr noundef nonnull %21) #21
  br label %58

57:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 89, ptr noundef nonnull @.str.1) #21
  br label %58

58:                                               ; preds = %13, %38, %44, %51, %55, %57, %5
  %59 = phi ptr [ %12, %5 ], [ %19, %13 ], [ %56, %55 ], [ %21, %51 ], [ %21, %44 ], [ %21, %38 ], [ undef, %57 ]
  %60 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !11
  %61 = icmp ne i8 %60, 0
  %62 = icmp ne ptr %59, null
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load i64, ptr %59, align 8
  %66 = and i64 %65, 65535
  %67 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !12
  %69 = add i32 %68, -4
  %70 = icmp ult i32 %69, 7
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  %73 = getelementptr inbounds %struct.tree_exp, ptr %59, i64 0, i32 1
  store i32 %72, ptr %73, align 8, !tbaa !8
  br label %74

74:                                               ; preds = %71, %64, %58
  %75 = tail call fastcc ptr @gimple_block(ptr noundef %0) #20
  %76 = icmp ne ptr %75, null
  %77 = load i32, ptr @currently_expanding_to_rtl, align 4
  %78 = icmp ne i32 %77, 0
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load i64, ptr %59, align 8
  %82 = and i64 %81, 65535
  %83 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !12
  %85 = add i32 %84, -4
  %86 = icmp ult i32 %85, 7
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = tail call ptr @tree_block(ptr noundef nonnull %59) #21
  store ptr %75, ptr %88, align 8, !tbaa !14
  br label %89

89:                                               ; preds = %87, %80, %74
  ret ptr %59
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #2 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !8
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !7
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !6
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !7
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !8
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !8
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !7
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !16
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !7
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #2 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !12
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !8
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @estimated_stack_frame_size() local_unnamed_addr #0 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !8
  tail call fastcc void @init_vars_expansion() #20
  %4 = load ptr, ptr @cfun, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %0, %20
  %9 = phi ptr [ %25, %20 ], [ %6, %0 ]
  %10 = phi i64 [ %22, %20 ], [ 0, %0 ]
  %11 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !8
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 16777216
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = tail call fastcc i64 @expand_one_var(ptr noundef nonnull %12, i8 noundef zeroext 1, i8 noundef zeroext 0) #20
  %18 = add nsw i64 %17, %10
  %19 = load i64, ptr %12, align 8
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi i64 [ %19, %16 ], [ %13, %8 ]
  %22 = phi i64 [ %18, %16 ], [ %10, %8 ]
  %23 = or i64 %21, 16777216
  store i64 %23, ptr %12, align 8
  %24 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %8, !llvm.loop !18

27:                                               ; preds = %20, %0
  %28 = phi i64 [ 0, %0 ], [ %22, %20 ]
  %29 = tail call fastcc i64 @account_used_vars_for_block(ptr noundef %3, i8 noundef zeroext 1) #20
  %30 = add nsw i64 %29, %28
  %31 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %27
  %34 = shl i64 %31, 3
  %35 = tail call ptr @xmalloc(i64 noundef %34) #21
  store ptr %35, ptr @stack_vars_sorted, align 8, !tbaa !14
  %36 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %33
  %39 = add i64 %36, 1
  %40 = and i64 %39, -2
  %41 = add i64 %36, -1
  %42 = insertelement <2 x i64> poison, i64 %41, i64 0
  %43 = shufflevector <2 x i64> %42, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %44

44:                                               ; preds = %56, %38
  %45 = phi i64 [ 0, %38 ], [ %57, %56 ]
  %46 = phi <2 x i64> [ <i64 0, i64 1>, %38 ], [ %58, %56 ]
  %47 = icmp ule <2 x i64> %46, %43
  %48 = extractelement <2 x i1> %47, i64 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = getelementptr inbounds i64, ptr %35, i64 %45
  store i64 %45, ptr %50, align 8, !tbaa !16
  br label %51

51:                                               ; preds = %49, %44
  %52 = extractelement <2 x i1> %47, i64 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = or disjoint i64 %45, 1
  %55 = getelementptr inbounds i64, ptr %35, i64 %54
  store i64 %54, ptr %55, align 8, !tbaa !16
  br label %56

56:                                               ; preds = %53, %51
  %57 = add i64 %45, 2
  %58 = add <2 x i64> %46, <i64 2, i64 2>
  %59 = icmp eq i64 %57, %40
  br i1 %59, label %60, label %44, !llvm.loop !20

60:                                               ; preds = %56, %33
  %61 = tail call fastcc i64 @account_stack_vars() #20
  %62 = add nsw i64 %61, %30
  tail call fastcc void @fini_vars_expansion() #20
  br label %63

63:                                               ; preds = %60, %27
  %64 = phi i64 [ %62, %60 ], [ %30, %27 ]
  ret i64 %64
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_vars_expansion() unnamed_addr #5 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !14
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %12, %5 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.tree_list, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  %9 = load i64, ptr %8, align 8
  %10 = or i64 %9, 16777216
  store i64 %10, ptr %8, align 8
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5, !llvm.loop !23

14:                                               ; preds = %5, %0
  %15 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !8
  tail call fastcc void @clear_tree_used(ptr noundef %17) #20
  store i1 false, ptr @has_protected_decls, align 1
  store i1 false, ptr @has_short_buffer, align 1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @expand_one_var(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !8
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !8
  %14 = load ptr, ptr @global_trees, align 16, !tbaa !14
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %61, label %16

16:                                               ; preds = %10
  %17 = load i64, ptr %11, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 32
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = and i64 %17, 67108864
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 33554432
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %23, %20
  %29 = load i64, ptr %13, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 14
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #21
  %34 = load ptr, ptr %12, align 8, !tbaa !8
  br label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi ptr [ %34, %32 ], [ %13, %35 ]
  %42 = phi i32 [ %33, %32 ], [ %39, %35 ]
  %43 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !8
  %45 = tail call i32 @ix86_minimum_alignment(ptr noundef nonnull %13, i32 noundef %42, i32 noundef %44) #21
  br label %52

46:                                               ; preds = %23
  %47 = trunc i64 %25 to i32
  %48 = and i32 %47, 255
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !8
  %51 = tail call i32 @ix86_minimum_alignment(ptr noundef nonnull %11, i32 noundef %48, i32 noundef %50) #21
  br label %52

52:                                               ; preds = %46, %40
  %53 = phi i32 [ %45, %40 ], [ %51, %46 ]
  %54 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !24
  %55 = icmp ult i32 %54, %53
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !33
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 944, ptr noundef nonnull @.str.1) #21
  br label %60

60:                                               ; preds = %56, %59
  store i32 %53, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !24
  br label %61

61:                                               ; preds = %52, %60, %16, %10
  %62 = load i64, ptr %0, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 141
  %65 = load i64, ptr %11, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 32
  %68 = select i1 %64, i1 %67, i1 false
  br i1 %68, label %69, label %89

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 100663296
  %73 = and i64 %65, 67108864
  %74 = or i64 %72, %73
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %69
  %77 = load ptr, ptr %12, align 8, !tbaa !8
  %78 = load ptr, ptr @global_trees, align 16, !tbaa !14
  %79 = icmp eq ptr %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %11, i64 0, i32 4
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 2
  %84 = icmp eq i32 %83, 0
  %85 = icmp ne i8 %2, 0
  %86 = and i1 %85, %84
  br i1 %86, label %89, label %87

87:                                               ; preds = %80, %76, %69
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 957, ptr noundef nonnull @.str.1) #21
  %88 = load i64, ptr %11, align 8
  br label %89

89:                                               ; preds = %87, %80, %61
  %90 = phi i64 [ %88, %87 ], [ %65, %80 ], [ %65, %61 ]
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 32
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i64, ptr %0, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 141
  br i1 %96, label %97, label %156

97:                                               ; preds = %93, %89
  %98 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 100663296
  %101 = and i64 %90, 67108864
  %102 = or i64 %100, %101
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %156

104:                                              ; preds = %97
  %105 = load i64, ptr %0, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 141
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %91, i64 11
  %110 = load i8, ptr %109, align 1, !tbaa !8
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %11, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !8
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %156

116:                                              ; preds = %112, %108, %104
  %117 = load ptr, ptr %12, align 8, !tbaa !8
  %118 = load ptr, ptr @global_trees, align 16, !tbaa !14
  %119 = icmp eq ptr %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = icmp eq i8 %2, 0
  br i1 %121, label %156, label %122

122:                                              ; preds = %120
  tail call fastcc void @expand_one_error_var(ptr noundef nonnull %11) #20
  br label %156

123:                                              ; preds = %116
  br i1 %92, label %124, label %132

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %11, i64 0, i32 4
  %126 = load i32, ptr %125, align 8
  %127 = and i32 %126, 2
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %124
  %130 = icmp eq i8 %2, 0
  br i1 %130, label %156, label %131

131:                                              ; preds = %129
  tail call fastcc void @expand_one_hard_reg_var(ptr noundef nonnull %11) #20
  br label %156

132:                                              ; preds = %124, %123
  %133 = tail call zeroext i8 @use_register_for_decl(ptr noundef nonnull %11) #21
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %132
  %136 = icmp eq i8 %2, 0
  br i1 %136, label %156, label %137

137:                                              ; preds = %135
  tail call fastcc void @expand_one_register_var(ptr noundef nonnull %0) #20
  br label %156

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !8
  %141 = tail call i32 @host_integerp(ptr noundef %140, i32 noundef 1) #21
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = icmp eq i8 %2, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %143
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull %11) #21
  tail call fastcc void @expand_one_error_var(ptr noundef nonnull %11) #20
  br label %156

146:                                              ; preds = %138
  %147 = tail call fastcc zeroext i8 @defer_stack_allocation(ptr noundef nonnull %11, i8 noundef zeroext %1) #20, !range !11
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  tail call fastcc void @add_stack_var(ptr noundef nonnull %0) #20
  br label %156

150:                                              ; preds = %146
  %151 = icmp eq i8 %2, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %150
  tail call fastcc void @expand_one_stack_var(ptr noundef nonnull %0) #20
  br label %153

153:                                              ; preds = %152, %150
  %154 = load ptr, ptr %139, align 8, !tbaa !8
  %155 = tail call i64 @tree_low_cst(ptr noundef %154, i32 noundef 1) #21
  br label %156

156:                                              ; preds = %93, %112, %131, %129, %149, %145, %143, %135, %137, %120, %122, %97, %153
  %157 = phi i64 [ %155, %153 ], [ 0, %97 ], [ 0, %122 ], [ 0, %120 ], [ 0, %137 ], [ 0, %135 ], [ 0, %143 ], [ 0, %145 ], [ 0, %149 ], [ 0, %129 ], [ 0, %131 ], [ 0, %112 ], [ 0, %93 ]
  ret i64 %157
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @account_used_vars_for_block(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %18, %15 ], [ %4, %2 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %2 ]
  %9 = load i64, ptr %7, align 8
  %10 = and i64 %9, 16777216
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call fastcc i64 @expand_one_var(ptr noundef nonnull %7, i8 noundef zeroext %1, i8 noundef zeroext 0) #20
  %14 = add nsw i64 %13, %8
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi i64 [ %14, %12 ], [ %8, %6 ]
  %17 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %6, !llvm.loop !34

20:                                               ; preds = %15, %2
  %21 = phi i64 [ 0, %2 ], [ %16, %15 ]
  %22 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %31, %25 ], [ %23, %20 ]
  %27 = phi i64 [ %29, %25 ], [ %21, %20 ]
  %28 = tail call fastcc i64 @account_used_vars_for_block(ptr noundef nonnull %26, i8 noundef zeroext 0) #20
  %29 = add nsw i64 %28, %27
  %30 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %25, !llvm.loop !35

33:                                               ; preds = %25, %20
  %34 = phi i64 [ %21, %20 ], [ %29, %25 ]
  ret i64 %34
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @account_stack_vars() unnamed_addr #0 {
  %1 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %34, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  br label %5

5:                                                ; preds = %3, %29
  %6 = phi ptr [ %30, %29 ], [ %4, %3 ]
  %7 = phi i64 [ %31, %29 ], [ 0, %3 ]
  %8 = phi i64 [ %32, %29 ], [ 0, %3 ]
  %9 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !14
  %10 = getelementptr inbounds i64, ptr %9, i64 %8
  %11 = load i64, ptr %10, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.stack_var, ptr %6, i64 %11, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !36
  %14 = icmp eq i64 %13, %11
  br i1 %14, label %15, label %29

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.stack_var, ptr %6, i64 %11, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !38
  %18 = add nsw i64 %17, %7
  %19 = icmp eq i64 %11, -1
  br i1 %19, label %29, label %20

20:                                               ; preds = %15, %20
  %21 = phi ptr [ %25, %20 ], [ %6, %15 ]
  %22 = phi i64 [ %27, %20 ], [ %11, %15 ]
  %23 = getelementptr inbounds %struct.stack_var, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  tail call fastcc void @set_rtl(ptr noundef %24, ptr noundef null) #20
  %25 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %26 = getelementptr inbounds %struct.stack_var, ptr %25, i64 %22, i32 5
  %27 = load i64, ptr %26, align 8, !tbaa !40
  %28 = icmp eq i64 %27, -1
  br i1 %28, label %29, label %20, !llvm.loop !41

29:                                               ; preds = %20, %15, %5
  %30 = phi ptr [ %6, %5 ], [ %6, %15 ], [ %25, %20 ]
  %31 = phi i64 [ %7, %5 ], [ %18, %15 ], [ %18, %20 ]
  %32 = add nuw i64 %8, 1
  %33 = icmp eq i64 %32, %1
  br i1 %33, label %34, label %5, !llvm.loop !42

34:                                               ; preds = %29, %0
  %35 = phi i64 [ 0, %0 ], [ %31, %29 ]
  ret i64 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fini_vars_expansion() unnamed_addr #0 {
  %1 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %2 = icmp eq i64 %1, 0
  %3 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  br i1 %2, label %13, label %4

4:                                                ; preds = %0, %4
  %5 = phi ptr [ %9, %4 ], [ %3, %0 ]
  %6 = phi i64 [ %11, %4 ], [ 0, %0 ]
  %7 = getelementptr inbounds %struct.stack_var, ptr %5, i64 %6, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  tail call void @bitmap_obstack_free(ptr noundef %8) #21
  %9 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.stack_var, ptr %9, i64 %6, i32 6
  store ptr null, ptr %10, align 8, !tbaa !43
  %11 = add nuw i64 %6, 1
  %12 = icmp eq i64 %11, %1
  br i1 %12, label %13, label %4, !llvm.loop !44

13:                                               ; preds = %4, %0
  %14 = phi ptr [ %3, %0 ], [ %9, %4 ]
  tail call void @free(ptr noundef %14) #20
  %15 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !14
  tail call void @free(ptr noundef %15) #20
  store ptr null, ptr @stack_vars, align 8, !tbaa !14
  store i64 0, ptr @stack_vars_num, align 8, !tbaa !16
  store i64 0, ptr @stack_vars_alloc, align 8, !tbaa !16
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @clear_tree_used(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, -16777217
  store i64 %8, ptr %6, align 8
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !45

12:                                               ; preds = %5, %1
  %13 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12, %16
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  tail call fastcc void @clear_tree_used(ptr noundef nonnull %17) #20
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16, !llvm.loop !46

21:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: optsize
declare i32 @ix86_minimum_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_one_error_var(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i8
  switch i8 %4, label %10 [
    i8 1, label %5
    i8 0, label %8
  ]

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %7 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %6) #21
  br label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  br label %14

10:                                               ; preds = %1
  %11 = trunc i64 %3 to i32
  %12 = and i32 %11, 255
  %13 = tail call ptr @gen_reg_rtx(i32 noundef %12) #21
  br label %14

14:                                               ; preds = %8, %10, %5
  %15 = phi ptr [ %7, %5 ], [ %9, %8 ], [ %13, %10 ]
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %15) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_one_hard_reg_var(ptr noundef %0) unnamed_addr #0 {
  tail call void @rest_of_decl_compilation(ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @use_register_for_decl(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_one_register_var(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !8
  %12 = tail call i32 @promote_decl_mode(ptr noundef %9, ptr noundef null) #21
  %13 = tail call ptr @gen_reg_rtx(i32 noundef %12) #21
  tail call fastcc void @set_rtl(ptr noundef nonnull %0, ptr noundef %13) #20
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 4096
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  tail call void @mark_user_reg(ptr noundef %13) #21
  br label %19

19:                                               ; preds = %18, %8
  %20 = load i64, ptr %11, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %27 [
    i16 10, label %22
    i16 12, label %22
  ]

22:                                               ; preds = %19, %19
  %23 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !8
  %25 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !8
  tail call void @mark_reg_pointer(ptr noundef %13, i32 noundef %26) #21
  br label %27

27:                                               ; preds = %19, %22
  ret void
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @defer_stack_allocation(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = load i32, ptr @flag_stack_protect, align 4, !tbaa !12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %2
  %6 = icmp ne i8 %1, 0
  %7 = load i32, ptr @optimize, align 4
  %8 = icmp slt i32 %7, 2
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !8
  %15 = tail call i64 @tree_low_cst(ptr noundef %14, i32 noundef 1) #21
  %16 = icmp slt i64 %15, 32
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %10
  br label %18

18:                                               ; preds = %12, %5, %2, %17
  %19 = phi i8 [ 1, %17 ], [ 1, %2 ], [ 0, %5 ], [ 0, %12 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_stack_var(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %3 = load i64, ptr @stack_vars_alloc, align 8, !tbaa !16
  %4 = icmp ult i64 %2, %3
  %5 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  br i1 %4, label %14, label %6

6:                                                ; preds = %1
  %7 = icmp eq i64 %3, 0
  %8 = mul i64 %3, 3
  %9 = lshr i64 %8, 1
  %10 = select i1 %7, i64 32, i64 %9
  store i64 %10, ptr @stack_vars_alloc, align 8, !tbaa !16
  %11 = mul i64 %10, 56
  %12 = tail call ptr @xrealloc(ptr noundef %5, i64 noundef %11) #21
  store ptr %12, ptr @stack_vars, align 8, !tbaa !14
  %13 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  br label %14

14:                                               ; preds = %6, %1
  %15 = phi i64 [ %13, %6 ], [ %2, %1 ]
  %16 = phi ptr [ %12, %6 ], [ %5, %1 ]
  %17 = getelementptr inbounds %struct.stack_var, ptr %16, i64 %15
  store ptr %0, ptr %17, align 8, !tbaa !39
  %18 = getelementptr inbounds %struct.stack_var, ptr %16, i64 %15, i32 1
  store i64 0, ptr %18, align 8, !tbaa !47
  %19 = load i64, ptr %0, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !8
  br label %25

25:                                               ; preds = %14, %22
  %26 = phi ptr [ %24, %22 ], [ %0, %14 ]
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !8
  %29 = tail call i64 @tree_low_cst(ptr noundef %28, i32 noundef 1) #21
  %30 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %31 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.stack_var, ptr %30, i64 %31, i32 2
  store i64 %29, ptr %32, align 8, !tbaa !38
  %33 = load i64, ptr %0, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !8
  br label %39

39:                                               ; preds = %25, %36
  %40 = phi ptr [ %38, %36 ], [ %0, %25 ]
  %41 = tail call fastcc i32 @get_decl_align_unit(ptr noundef %40) #20, !range !48
  %42 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %43 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %44 = getelementptr inbounds %struct.stack_var, ptr %42, i64 %43, i32 3
  store i32 %41, ptr %44, align 8, !tbaa !49
  %45 = getelementptr inbounds %struct.stack_var, ptr %42, i64 %43, i32 4
  store i64 %43, ptr %45, align 8, !tbaa !36
  %46 = getelementptr inbounds %struct.stack_var, ptr %42, i64 %43, i32 5
  store i64 -1, ptr %46, align 8, !tbaa !40
  %47 = getelementptr inbounds %struct.stack_var, ptr %42, i64 %43, i32 6
  store ptr null, ptr %47, align 8, !tbaa !43
  %48 = load ptr, ptr @global_rtl, align 16, !tbaa !14
  tail call fastcc void @set_rtl(ptr noundef nonnull %0, ptr noundef %48) #20
  %49 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %50 = add i64 %49, 1
  store i64 %50, ptr @stack_vars_num, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_one_stack_var(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !8
  %12 = tail call i64 @tree_low_cst(ptr noundef %11, i32 noundef 1) #21
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !8
  br label %19

19:                                               ; preds = %8, %16
  %20 = phi ptr [ %18, %16 ], [ %0, %8 ]
  %21 = tail call fastcc i32 @get_decl_align_unit(ptr noundef %20) #20, !range !48
  %22 = zext nneg i32 %21 to i64
  %23 = tail call fastcc i64 @alloc_stack_frame_space(i64 noundef %12, i64 noundef %22) #20
  tail call fastcc void @expand_one_stack_var_at(ptr noundef nonnull %0, i64 noundef %23) #20
  ret void
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rest_of_decl_compilation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @promote_decl_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_rtl(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !50
  %8 = load ptr, ptr @SA, align 8, !tbaa !52
  %9 = tail call fastcc i32 @var_to_partition(ptr noundef %8, ptr noundef nonnull %0) #20
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  store ptr %1, ptr %11, align 8, !tbaa !14
  %12 = icmp eq ptr %1, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %6
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 43
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !8
  tail call void @set_reg_attrs_for_decl_rtl(ptr noundef %19, ptr noundef nonnull %1) #21
  br label %20

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr @global_rtl, align 16
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 32
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1, !tbaa !8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %25, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %29
  tail call void @set_decl_rtl(ptr noundef nonnull %25, ptr noundef nonnull %1) #21
  br label %43

37:                                               ; preds = %32
  %38 = icmp eq ptr %34, %21
  %39 = icmp eq ptr %34, %1
  %40 = or i1 %38, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  tail call void @set_decl_rtl(ptr noundef nonnull %25, ptr noundef %21) #21
  br label %43

42:                                               ; preds = %2
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %1) #21
  br label %43

43:                                               ; preds = %6, %36, %41, %37, %20, %23, %42
  ret void
}

; Function Attrs: optsize
declare void @mark_user_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mark_reg_pointer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @var_to_partition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 147, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.partition_def, ptr %8, i64 0, i32 1, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !55
  %14 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !12
  br label %21

21:                                               ; preds = %17, %7
  %22 = phi i32 [ %20, %17 ], [ %13, %7 ]
  ret i32 %22
}

; Function Attrs: optsize
declare void @set_reg_attrs_for_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_decl_align_unit(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !8
  %4 = tail call i32 @ix86_local_alignment(ptr noundef %0, i32 noundef 0, i32 noundef %3) #21
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 -2147483648)
  %6 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !24
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !33
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 215, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %8, %11
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !24
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !58
  %15 = icmp ult i32 %14, %5
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !58
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !59
  %19 = icmp ult i32 %18, %5
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !59
  br label %21

21:                                               ; preds = %20, %17
  %22 = lshr i32 %5, 3
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @ix86_local_alignment(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i64 @alloc_stack_frame_space(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !60
  %4 = sub nsw i64 %3, %0
  %5 = sub nsw i64 0, %1
  %6 = and i64 %4, %5
  store i64 %6, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !60
  %7 = load ptr, ptr @cfun, align 8, !tbaa !14
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = tail call zeroext i8 @frame_offset_overflow(i64 noundef %6, ptr noundef %9) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i64 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !60
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ 0, %12 ], [ %6, %2 ]
  ret i64 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_one_stack_var_at(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @trunc_int_for_mode(i64 noundef %1, i32 noundef 16) #21
  %4 = icmp eq i64 %3, %1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 716, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !14
  %8 = tail call ptr @plus_constant(ptr noundef %7, i64 noundef %1) #21
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !8
  br label %15

15:                                               ; preds = %6, %12
  %16 = phi ptr [ %14, %12 ], [ %0, %6 ]
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 255
  %21 = tail call ptr @gen_rtx_MEM(i32 noundef %20, ptr noundef %8) #21
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %35, label %25

25:                                               ; preds = %15
  %26 = sub nsw i64 0, %1
  %27 = and i64 %26, %1
  %28 = shl i64 %27, 3
  %29 = icmp eq i64 %28, 0
  %30 = tail call i64 @llvm.umin.i64(i64 %28, i64 2147483648)
  %31 = trunc i64 %30 to i32
  %32 = select i1 %29, i32 32, i32 %31
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 3
  store i32 %32, ptr %33, align 8, !tbaa !8
  %34 = and i64 %22, -4398046511105
  store i64 %34, ptr %0, align 8
  br label %35

35:                                               ; preds = %25, %15
  %36 = phi i64 [ %34, %25 ], [ %22, %15 ]
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !8
  br label %42

42:                                               ; preds = %35, %39
  %43 = phi ptr [ %41, %39 ], [ %0, %35 ]
  tail call void @set_mem_attributes(ptr noundef %21, ptr noundef %43, i32 noundef 1) #21
  tail call fastcc void @set_rtl(ptr noundef nonnull %0, ptr noundef %21) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @frame_offset_overflow(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @trunc_int_for_mode(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_mem_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gimple_expand_cfg() #0 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %5 = tail call i32 @rewrite_out_of_ssa(ptr noundef nonnull @SA) #21
  %6 = load ptr, ptr @SA, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct._var_map, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 8) #21
  store ptr %10, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !50
  store i32 1, ptr @currently_expanding_to_rtl, align 4, !tbaa !12
  %11 = load ptr, ptr @cfun, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  tail call void @rtl_profile_for_bb(ptr noundef %14) #21
  tail call void @insn_locators_alloc() #21
  %15 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !8
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %25, label %19

19:                                               ; preds = %0
  %20 = load ptr, ptr @cfun, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 15
  %22 = load i32, ptr %21, align 8, !tbaa !67
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 %17, i32 %22
  tail call void @set_curr_insn_source_location(i32 noundef %24) #21
  br label %25

25:                                               ; preds = %19, %0
  %26 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !8
  tail call void @set_curr_insn_block(ptr noundef %28) #21
  %29 = tail call i32 @curr_insn_locator() #21
  store i32 %29, ptr @prologue_locator, align 4, !tbaa !12
  %30 = tail call ptr @emit_note(i32 noundef 0) #21
  tail call fastcc void @discover_nonconstant_array_refs() #20
  %31 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 98), align 8, !tbaa !68
  tail call void %31() #21
  store i32 32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !58
  store i32 32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 25), align 8, !tbaa !59
  store i32 0, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !24
  store i32 32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !80
  %32 = load ptr, ptr @cfun, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = getelementptr inbounds %struct.control_flow_graph, ptr %34, i64 0, i32 10
  store i32 0, ptr %35, align 4, !tbaa !81
  tail call fastcc void @expand_used_vars() #20
  %36 = load i32, ptr @warn_stack_protect, align 4, !tbaa !12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %56, label %38

38:                                               ; preds = %25
  %39 = load ptr, ptr @cfun, align 8, !tbaa !14
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 20
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 524288
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 181, ptr noundef nonnull @.str.6) #21
  br label %46

46:                                               ; preds = %44, %38
  %47 = load i1, ptr @has_short_buffer, align 1
  %48 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8
  %49 = icmp eq ptr %48, null
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load ptr, ptr @compiler_params, align 8, !tbaa !14
  %53 = getelementptr inbounds %struct.param_info, ptr %52, i64 93, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !82
  %55 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 181, ptr noundef nonnull @.str.7, i32 noundef %54) #21
  br label %56

56:                                               ; preds = %46, %51, %25
  %57 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  tail call void @expand_function_start(ptr noundef %57) #21
  %58 = load ptr, ptr @SA, align 8, !tbaa !52
  %59 = getelementptr inbounds %struct._var_map, ptr %58, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !63
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %133, label %62

62:                                               ; preds = %56, %126
  %63 = phi i64 [ %127, %126 ], [ 0, %56 ]
  %64 = phi ptr [ %128, %126 ], [ %58, %56 ]
  %65 = trunc i64 %63 to i32
  %66 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %64, i32 noundef %65) #20
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !8
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 32
  %72 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !50
  br i1 %71, label %87, label %73

73:                                               ; preds = %62
  %74 = getelementptr inbounds ptr, ptr %72, i64 %63
  %75 = load ptr, ptr %74, align 8, !tbaa !14
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %70, i64 11
  %79 = load i8, ptr %78, align 1, !tbaa !8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %68, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !8
  br label %84

84:                                               ; preds = %81, %77
  %85 = phi ptr [ null, %77 ], [ %83, %81 ]
  store ptr %85, ptr %74, align 8, !tbaa !14
  %86 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !50
  br label %87

87:                                               ; preds = %84, %73, %62
  %88 = phi ptr [ %86, %84 ], [ %72, %73 ], [ %72, %62 ]
  %89 = getelementptr inbounds ptr, ptr %88, i64 %63
  %90 = load ptr, ptr %89, align 8, !tbaa !14
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3792, ptr noundef nonnull @.str.1) #21
  br label %93

93:                                               ; preds = %87, %92
  %94 = load i64, ptr %68, align 8
  %95 = and i64 %94, 65535
  %96 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %95, i64 11
  %97 = load i8, ptr %96, align 1, !tbaa !8
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %68, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !8
  br label %102

102:                                              ; preds = %99, %93
  %103 = phi ptr [ null, %93 ], [ %101, %99 ]
  %104 = load ptr, ptr @global_rtl, align 16, !tbaa !14
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  tail call void @set_decl_rtl(ptr noundef nonnull %68, ptr noundef null) #21
  %107 = load i64, ptr %68, align 8
  %108 = and i64 %107, 65535
  %109 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %108, i64 11
  %110 = load i8, ptr %109, align 1, !tbaa !8
  br label %111

111:                                              ; preds = %106, %102
  %112 = phi i8 [ %110, %106 ], [ %97, %102 ]
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %68, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !8
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %114, %111
  %119 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !50
  %120 = getelementptr inbounds ptr, ptr %119, i64 %63
  %121 = load ptr, ptr %120, align 8, !tbaa !14
  %122 = load i32, ptr %121, align 8
  %123 = and i32 %122, 65535
  %124 = icmp eq i32 %123, 43
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  tail call void @set_mem_expr(ptr noundef nonnull %121, ptr noundef null) #21
  br label %126

126:                                              ; preds = %118, %125, %114
  %127 = add nuw nsw i64 %63, 1
  %128 = load ptr, ptr @SA, align 8, !tbaa !52
  %129 = getelementptr inbounds %struct._var_map, ptr %128, i64 0, i32 3
  %130 = load i32, ptr %129, align 8, !tbaa !63
  %131 = zext i32 %130 to i64
  %132 = icmp ult i64 %127, %131
  br i1 %132, label %62, label %133, !llvm.loop !84

133:                                              ; preds = %126, %56
  %134 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %135 = getelementptr inbounds %struct.tree_decl_minimal, ptr %134, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !8
  %137 = icmp ne ptr %136, null
  %138 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 56), align 16
  %139 = icmp eq ptr %136, %138
  %140 = select i1 %137, i1 %139, i1 false
  br i1 %140, label %141, label %150

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.tree_decl_minimal, ptr %134, i64 0, i32 4
  %143 = load ptr, ptr %142, align 8, !tbaa !8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i64, ptr %143, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 40
  br i1 %148, label %149, label %150

149:                                              ; preds = %145, %141
  tail call void @expand_main_function() #21
  br label %150

150:                                              ; preds = %149, %145, %133
  %151 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !85
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  tail call void @stack_protect_prologue() #21
  br label %154

154:                                              ; preds = %153, %150
  tail call void @expand_phi_nodes(ptr noundef nonnull @SA) #21
  tail call void @rtl_register_cfg_hooks() #21
  %155 = tail call fastcc ptr @construct_init_block() #20
  %156 = load ptr, ptr @cfun, align 8, !tbaa !14
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !64
  %159 = load ptr, ptr %158, align 8, !tbaa !65
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 1
  %161 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %160) #20
  store i32 0, ptr %1, align 8, !tbaa.struct !86
  %162 = getelementptr inbounds i8, ptr %1, i64 8
  store ptr %161, ptr %162, align 8, !tbaa.struct !87
  %163 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %161, ptr noundef nonnull %2) #20, !range !11
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %154, %165
  %166 = load ptr, ptr %2, align 8, !tbaa !14
  %167 = getelementptr inbounds %struct.edge_def, ptr %166, i64 0, i32 7
  %168 = load i32, ptr %167, align 8, !tbaa !88
  %169 = and i32 %168, -4097
  store i32 %169, ptr %167, align 8, !tbaa !88
  call fastcc void @ei_next(ptr noundef nonnull %1) #20
  %170 = load i32, ptr %1, align 8
  %171 = load ptr, ptr %162, align 8
  %172 = call fastcc zeroext i8 @ei_cond(i32 %170, ptr %171, ptr noundef nonnull %2) #20, !range !11
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %174, label %165, !llvm.loop !90

174:                                              ; preds = %165, %154
  %175 = tail call ptr @pointer_map_create() #21
  store ptr %175, ptr @lab_rtx_for_bb, align 8, !tbaa !14
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %155, i64 0, i32 6
  %177 = load ptr, ptr %176, align 8, !tbaa !91
  %178 = load ptr, ptr @cfun, align 8, !tbaa !14
  %179 = getelementptr inbounds %struct.function, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !64
  %181 = getelementptr inbounds %struct.control_flow_graph, ptr %180, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !93
  %183 = icmp eq ptr %177, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %174, %184
  %185 = phi ptr [ %188, %184 ], [ %177, %174 ]
  %186 = tail call fastcc ptr @expand_gimple_basic_block(ptr noundef %185) #20
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %186, i64 0, i32 6
  %188 = load ptr, ptr %187, align 8, !tbaa !91
  %189 = load ptr, ptr @cfun, align 8, !tbaa !14
  %190 = getelementptr inbounds %struct.function, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !64
  %192 = getelementptr inbounds %struct.control_flow_graph, ptr %191, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !93
  %194 = icmp eq ptr %188, %193
  br i1 %194, label %195, label %184, !llvm.loop !94

195:                                              ; preds = %184, %174
  %196 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !12
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  tail call fastcc void @expand_debug_locations() #20
  br label %199

199:                                              ; preds = %198, %195
  %200 = tail call i32 @execute_free_datastructures() #21
  tail call void @finish_out_of_ssa(ptr noundef nonnull @SA) #21
  %201 = load ptr, ptr @cfun, align 8, !tbaa !14
  %202 = getelementptr inbounds %struct.function, ptr %201, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !95
  %204 = getelementptr inbounds %struct.gimple_df, ptr %203, i64 0, i32 10
  %205 = load i8, ptr %204, align 8
  %206 = and i8 %205, -2
  store i8 %206, ptr %204, align 8
  %207 = load ptr, ptr @lab_rtx_for_bb, align 8, !tbaa !14
  tail call void @pointer_map_destroy(ptr noundef %207) #21
  tail call void @free_histograms() #21
  tail call fastcc void @construct_exit_block() #20
  %208 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %209 = getelementptr inbounds %struct.tree_decl_common, ptr %208, i64 0, i32 5
  %210 = load ptr, ptr %209, align 8, !tbaa !8
  tail call void @set_curr_insn_block(ptr noundef %210) #21
  tail call void @insn_locators_finalize() #21
  %211 = load ptr, ptr @cfun, align 8, !tbaa !14
  tail call void @set_eh_throw_stmt_table(ptr noundef %211, ptr noundef null) #21
  %212 = tail call ptr @get_insns() #21
  tail call void @rebuild_jump_labels(ptr noundef %212) #21
  %213 = load ptr, ptr @cfun, align 8, !tbaa !14
  %214 = getelementptr inbounds %struct.function, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !64
  %216 = load ptr, ptr %215, align 8, !tbaa !14
  %217 = getelementptr inbounds %struct.control_flow_graph, ptr %215, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !93
  %219 = icmp eq ptr %216, %218
  br i1 %219, label %255, label %220

220:                                              ; preds = %199
  %221 = getelementptr inbounds i8, ptr %3, i64 8
  br label %222

222:                                              ; preds = %220, %244
  %223 = phi ptr [ %216, %220 ], [ %246, %244 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %224 = getelementptr inbounds %struct.basic_block_def, ptr %223, i64 0, i32 1
  %225 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %224) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !86
  store ptr %225, ptr %221, align 8, !tbaa.struct !87
  %226 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %225) #20
  %227 = icmp eq ptr %226, null
  br i1 %227, label %244, label %228

228:                                              ; preds = %222, %239
  %229 = phi ptr [ %240, %239 ], [ %225, %222 ]
  %230 = phi i32 [ %241, %239 ], [ 0, %222 ]
  %231 = phi ptr [ %242, %239 ], [ %226, %222 ]
  %232 = getelementptr inbounds %struct.edge_def, ptr %231, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %228
  tail call void @commit_one_edge_insertion(ptr noundef nonnull %231) #21
  br label %239

236:                                              ; preds = %228
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %237 = load i32, ptr %3, align 8
  %238 = load ptr, ptr %221, align 8
  br label %239

239:                                              ; preds = %236, %235
  %240 = phi ptr [ %238, %236 ], [ %229, %235 ]
  %241 = phi i32 [ %237, %236 ], [ %230, %235 ]
  %242 = tail call fastcc ptr @ei_safe_edge(i32 %241, ptr %240) #20
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %228, !llvm.loop !96

244:                                              ; preds = %239, %222
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  %245 = getelementptr inbounds %struct.basic_block_def, ptr %223, i64 0, i32 6
  %246 = load ptr, ptr %245, align 8, !tbaa !14
  %247 = load ptr, ptr @cfun, align 8, !tbaa !14
  %248 = getelementptr inbounds %struct.function, ptr %247, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !64
  %250 = getelementptr inbounds %struct.control_flow_graph, ptr %249, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !93
  %252 = icmp eq ptr %246, %251
  br i1 %252, label %253, label %222, !llvm.loop !97

253:                                              ; preds = %244
  %254 = load ptr, ptr %249, align 8, !tbaa !65
  br label %255

255:                                              ; preds = %253, %199
  %256 = phi ptr [ %216, %199 ], [ %246, %253 ]
  %257 = phi ptr [ %216, %199 ], [ %254, %253 ]
  %258 = phi ptr [ %215, %199 ], [ %249, %253 ]
  store i32 0, ptr @currently_expanding_to_rtl, align 4, !tbaa !12
  %259 = getelementptr inbounds %struct.basic_block_def, ptr %257, i64 0, i32 6
  %260 = load ptr, ptr %259, align 8, !tbaa !91
  %261 = icmp eq ptr %260, %256
  br i1 %261, label %297, label %262

262:                                              ; preds = %255
  %263 = getelementptr inbounds i8, ptr %4, i64 8
  br label %264

264:                                              ; preds = %262, %288
  %265 = phi ptr [ %260, %262 ], [ %290, %288 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %266 = getelementptr inbounds %struct.basic_block_def, ptr %265, i64 0, i32 1
  %267 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %266) #20
  store i32 0, ptr %4, align 8, !tbaa.struct !86
  store ptr %267, ptr %263, align 8, !tbaa.struct !87
  %268 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %267) #20
  %269 = icmp eq ptr %268, null
  br i1 %269, label %288, label %270

270:                                              ; preds = %264, %283
  %271 = phi ptr [ %284, %283 ], [ %267, %264 ]
  %272 = phi i32 [ %285, %283 ], [ 0, %264 ]
  %273 = phi ptr [ %286, %283 ], [ %268, %264 ]
  %274 = getelementptr inbounds %struct.edge_def, ptr %273, i64 0, i32 7
  %275 = load i32, ptr %274, align 8, !tbaa !88
  %276 = and i32 %275, -4097
  store i32 %276, ptr %274, align 8, !tbaa !88
  %277 = and i32 %275, 258
  %278 = icmp eq i32 %277, 2
  br i1 %278, label %279, label %280

279:                                              ; preds = %270
  tail call void @remove_edge(ptr noundef nonnull %273) #21
  br label %283

280:                                              ; preds = %270
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %281 = load i32, ptr %4, align 8
  %282 = load ptr, ptr %263, align 8
  br label %283

283:                                              ; preds = %280, %279
  %284 = phi ptr [ %282, %280 ], [ %271, %279 ]
  %285 = phi i32 [ %281, %280 ], [ %272, %279 ]
  %286 = tail call fastcc ptr @ei_safe_edge(i32 %285, ptr %284) #20
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %270, !llvm.loop !98

288:                                              ; preds = %283, %264
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  %289 = getelementptr inbounds %struct.basic_block_def, ptr %265, i64 0, i32 6
  %290 = load ptr, ptr %289, align 8, !tbaa !91
  %291 = load ptr, ptr @cfun, align 8, !tbaa !14
  %292 = getelementptr inbounds %struct.function, ptr %291, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !64
  %294 = getelementptr inbounds %struct.control_flow_graph, ptr %293, i64 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !93
  %296 = icmp eq ptr %290, %295
  br i1 %296, label %297, label %264, !llvm.loop !99

297:                                              ; preds = %288, %255
  %298 = phi ptr [ %258, %255 ], [ %293, %288 ]
  %299 = getelementptr inbounds %struct.control_flow_graph, ptr %298, i64 0, i32 5
  %300 = load i32, ptr %299, align 8, !tbaa !100
  %301 = tail call ptr @sbitmap_alloc(i32 noundef %300) #21
  tail call void @sbitmap_ones(ptr noundef %301) #21
  tail call void @find_many_sub_basic_blocks(ptr noundef %301) #21
  %302 = load ptr, ptr %301, align 8, !tbaa !101
  tail call void @free(ptr noundef %302) #20
  tail call void @free(ptr noundef %301) #20
  %303 = tail call zeroext i8 @purge_all_dead_edges() #21
  tail call void @compact_blocks() #21
  tail call fastcc void @expand_stack_alignment() #20
  %304 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %305 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %304, i64 0, i32 4
  %306 = load i32, ptr %305, align 8
  %307 = and i32 %306, -2
  store i32 %307, ptr %305, align 8
  store i32 0, ptr @generating_concat_p, align 4, !tbaa !12
  %308 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %309 = icmp eq ptr %308, null
  br i1 %309, label %313, label %310

310:                                              ; preds = %297
  %311 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 49, i64 1, ptr nonnull %308)
  %312 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  br label %313

313:                                              ; preds = %310, %297
  %314 = phi ptr [ %312, %310 ], [ %304, %297 ]
  %315 = getelementptr inbounds %struct.tree_decl_minimal, ptr %314, i64 0, i32 4
  %316 = load ptr, ptr %315, align 8, !tbaa !8
  %317 = icmp eq ptr %316, null
  br i1 %317, label %332, label %318

318:                                              ; preds = %313, %327
  %319 = phi ptr [ %328, %327 ], [ %316, %313 ]
  %320 = load i64, ptr %319, align 8
  %321 = and i64 %320, 65535
  %322 = icmp eq i64 %321, 29
  br i1 %322, label %323, label %327

323:                                              ; preds = %318
  %324 = tail call ptr @decl_assembler_name(ptr noundef nonnull %319) #21
  %325 = load i64, ptr %324, align 8
  %326 = or i64 %325, 67108864
  store i64 %326, ptr %324, align 8
  br label %327

327:                                              ; preds = %318, %323
  %328 = tail call ptr @get_containing_scope(ptr noundef nonnull %319) #21
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %318, !llvm.loop !103

330:                                              ; preds = %327
  %331 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  br label %332

332:                                              ; preds = %330, %313
  %333 = phi ptr [ %331, %330 ], [ %314, %313 ]
  %334 = tail call zeroext i8 @cgraph_function_possibly_inlined_p(ptr noundef %333) #21
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %341, label %336

336:                                              ; preds = %332
  %337 = load ptr, ptr @debug_hooks, align 8, !tbaa !14
  %338 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %337, i64 0, i32 21
  %339 = load ptr, ptr %338, align 8, !tbaa !104
  %340 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  tail call void %339(ptr noundef %340) #21
  br label %341

341:                                              ; preds = %336, %332
  %342 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %343 = load i64, ptr %342, align 8
  %344 = or i64 %343, 4194304
  store i64 %344, ptr %342, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 11), i8 0, i64 16, i1 false)
  %345 = load ptr, ptr @cfun, align 8, !tbaa !14
  %346 = getelementptr inbounds %struct.function, ptr %345, i64 0, i32 6
  %347 = load ptr, ptr %346, align 8, !tbaa !61
  %348 = getelementptr inbounds %struct.tree_decl_common, ptr %347, i64 0, i32 5
  %349 = load ptr, ptr %348, align 8, !tbaa !8
  tail call fastcc void @set_block_levels(ptr noundef %349, i32 noundef 0) #20
  tail call void @default_rtl_profile() #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #22
  ret i32 0
}

; Function Attrs: optsize
declare i32 @rewrite_out_of_ssa(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rtl_profile_for_bb(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @insn_locators_alloc() local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_curr_insn_source_location(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_curr_insn_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @curr_insn_locator() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_note(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @discover_nonconstant_array_refs() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  %2 = load ptr, ptr @cfun, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %33, label %20

11:                                               ; preds = %30, %20
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = load ptr, ptr @cfun, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !64
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !93
  %19 = icmp eq ptr %13, %18
  br i1 %19, label %33, label %20, !llvm.loop !106

20:                                               ; preds = %0, %11
  %21 = phi ptr [ %13, %11 ], [ %7, %0 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %21) #20
  %22 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !11
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %11

24:                                               ; preds = %20, %30
  %25 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %26 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %25) #20, !range !11
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call ptr @walk_gimple_op(ptr noundef %25, ptr noundef nonnull @discover_nonconstant_array_refs_r, ptr noundef null) #21
  br label %30

30:                                               ; preds = %28, %24
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !11
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %24, label %11, !llvm.loop !107

33:                                               ; preds = %11, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_used_vars() unnamed_addr #0 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !8
  tail call fastcc void @init_vars_expansion() #20
  %4 = load ptr, ptr @SA, align 8, !tbaa !52
  %5 = getelementptr inbounds %struct._var_map, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !63
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %42, label %8

8:                                                ; preds = %0, %35
  %9 = phi i64 [ %36, %35 ], [ 0, %0 ]
  %10 = phi ptr [ %37, %35 ], [ %4, %0 ]
  %11 = trunc i64 %9 to i32
  %12 = tail call fastcc ptr @partition_to_var(ptr noundef nonnull %10, i32 noundef %11) #20
  %13 = tail call zeroext i8 @is_gimple_reg(ptr noundef %12) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1312, ptr noundef nonnull @.str.1) #21
  br label %16

16:                                               ; preds = %8, %15
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !8
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call fastcc i64 @expand_one_var(ptr noundef nonnull %12, i8 noundef zeroext 1, i8 noundef zeroext 1) #20
  br label %35

24:                                               ; preds = %16
  %25 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 3), align 8, !tbaa !108
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %25, i32 noundef %11) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = tail call fastcc i64 @expand_one_var(ptr noundef nonnull %12, i8 noundef zeroext 1, i8 noundef zeroext 1) #20
  %30 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !50
  %31 = getelementptr inbounds ptr, ptr %30, i64 %9
  %32 = load ptr, ptr %31, align 8, !tbaa !14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1325, ptr noundef nonnull @.str.1) #21
  br label %35

35:                                               ; preds = %34, %28, %24, %22
  %36 = add nuw nsw i64 %9, 1
  %37 = load ptr, ptr @SA, align 8, !tbaa !52
  %38 = getelementptr inbounds %struct._var_map, ptr %37, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !63
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %36, %40
  br i1 %41, label %8, label %42, !llvm.loop !109

42:                                               ; preds = %35, %0
  %43 = load ptr, ptr @cfun, align 8, !tbaa !14
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !110
  store ptr null, ptr %44, align 8, !tbaa !110
  %46 = icmp eq ptr %45, null
  br i1 %46, label %102, label %47

47:                                               ; preds = %42, %99
  %48 = phi ptr [ %53, %99 ], [ %45, %42 ]
  %49 = phi ptr [ %100, %99 ], [ null, %42 ]
  %50 = getelementptr inbounds %struct.tree_list, ptr %48, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !8
  %52 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !8
  %54 = tail call zeroext i8 @is_gimple_reg(ptr noundef %51) #21
  %55 = icmp eq i8 %54, 0
  %56 = load i64, ptr %51, align 8
  br i1 %55, label %59, label %57

57:                                               ; preds = %47
  %58 = and i64 %56, -16777217
  store i64 %58, ptr %51, align 8
  br label %75

59:                                               ; preds = %47
  %60 = and i64 %56, 67108864
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.tree_decl_common, ptr %51, i64 0, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 33554432
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = and i64 %56, 16777216
  %69 = icmp eq i64 %68, 0
  %70 = or i64 %56, 16777216
  store i64 %70, ptr %51, align 8
  br i1 %69, label %75, label %73

71:                                               ; preds = %59, %62
  %72 = or i64 %56, 16777216
  store i64 %72, ptr %51, align 8
  br label %73

73:                                               ; preds = %71, %67
  %74 = tail call fastcc i64 @expand_one_var(ptr noundef nonnull %51, i8 noundef zeroext 1, i8 noundef zeroext 1) #20
  br label %75

75:                                               ; preds = %67, %73, %57
  %76 = getelementptr inbounds %struct.tree_decl_common, ptr %51, i64 0, i32 2
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 5120
  %79 = icmp eq i64 %78, 4096
  br i1 %79, label %80, label %98

80:                                               ; preds = %75
  %81 = load i64, ptr %51, align 8
  %82 = and i64 %81, 65535
  %83 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %82, i64 11
  %84 = load i8, ptr %83, align 1, !tbaa !8
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %51, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr %88, align 8
  %92 = trunc i32 %91 to i16
  switch i16 %92, label %98 [
    i16 43, label %93
    i16 41, label %93
  ]

93:                                               ; preds = %90, %90
  %94 = load ptr, ptr @cfun, align 8, !tbaa !14
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 9
  %96 = load ptr, ptr %95, align 8, !tbaa !110
  store ptr %96, ptr %52, align 8, !tbaa !8
  store ptr %48, ptr %95, align 8, !tbaa !110
  br label %99

97:                                               ; preds = %80, %86
  store ptr %49, ptr %52, align 8, !tbaa !8
  br label %99

98:                                               ; preds = %90, %75
  tail call void @ggc_free(ptr noundef nonnull %48) #21
  br label %99

99:                                               ; preds = %97, %93, %98
  %100 = phi ptr [ %49, %98 ], [ %48, %97 ], [ %49, %93 ]
  %101 = icmp eq ptr %53, null
  br i1 %101, label %102, label %47, !llvm.loop !111

102:                                              ; preds = %99, %42
  %103 = phi ptr [ null, %42 ], [ %100, %99 ]
  tail call fastcc void @expand_used_vars_for_block(ptr noundef %3, i8 noundef zeroext 1) #20
  %104 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %102
  tail call fastcc void @add_alias_set_conflicts() #20
  %107 = load i32, ptr @flag_stack_protect, align 4, !tbaa !12
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  tail call fastcc void @add_stack_protection_conflicts() #20
  br label %110

110:                                              ; preds = %109, %106
  tail call fastcc void @partition_stack_vars() #20
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  tail call fastcc void @dump_stack_var_partition() #20
  br label %114

114:                                              ; preds = %110, %113, %102
  %115 = load i32, ptr @flag_stack_protect, align 4, !tbaa !12
  switch i32 %115, label %116 [
    i32 2, label %124
    i32 0, label %125
  ]

116:                                              ; preds = %114
  %117 = load ptr, ptr @cfun, align 8, !tbaa !14
  %118 = getelementptr inbounds %struct.function, ptr %117, i64 0, i32 20
  %119 = load i32, ptr %118, align 8
  %120 = and i32 %119, 524288
  %121 = icmp ne i32 %120, 0
  %122 = load i1, ptr @has_protected_decls, align 1
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %114, %116
  tail call fastcc void @create_stack_guard() #20
  br label %125

125:                                              ; preds = %114, %116, %124
  %126 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = load i1, ptr @has_protected_decls, align 1
  br i1 %129, label %130, label %134

130:                                              ; preds = %128
  tail call fastcc void @expand_stack_vars(ptr noundef nonnull @stack_protect_decl_phase_1) #20
  %131 = load i32, ptr @flag_stack_protect, align 4, !tbaa !12
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  tail call fastcc void @expand_stack_vars(ptr noundef nonnull @stack_protect_decl_phase_2) #20
  br label %134

134:                                              ; preds = %130, %133, %128
  tail call fastcc void @expand_stack_vars(ptr noundef null) #20
  tail call fastcc void @fini_vars_expansion() #20
  br label %135

135:                                              ; preds = %134, %125
  %136 = icmp eq ptr %103, null
  br i1 %136, label %167, label %137

137:                                              ; preds = %135, %164
  %138 = phi ptr [ %165, %164 ], [ %103, %135 ]
  %139 = getelementptr inbounds %struct.tree_list, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !8
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 65535
  %143 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %142, i64 11
  %144 = load i8, ptr %143, align 1, !tbaa !8
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !8
  br label %162

149:                                              ; preds = %137
  %150 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %140, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !8
  %152 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !8
  %154 = icmp eq ptr %151, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %149
  %156 = load i32, ptr %151, align 8
  %157 = trunc i32 %156 to i16
  switch i16 %157, label %162 [
    i16 43, label %158
    i16 41, label %158
  ]

158:                                              ; preds = %155, %155
  %159 = load ptr, ptr @cfun, align 8, !tbaa !14
  %160 = getelementptr inbounds %struct.function, ptr %159, i64 0, i32 9
  %161 = load ptr, ptr %160, align 8, !tbaa !110
  store ptr %161, ptr %152, align 8, !tbaa !8
  store ptr %138, ptr %160, align 8, !tbaa !110
  br label %164

162:                                              ; preds = %146, %155, %149
  %163 = phi ptr [ %148, %146 ], [ %153, %155 ], [ %153, %149 ]
  tail call void @ggc_free(ptr noundef nonnull %138) #21
  br label %164

164:                                              ; preds = %162, %158
  %165 = phi ptr [ %163, %162 ], [ %153, %158 ]
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %137, !llvm.loop !112

167:                                              ; preds = %164, %135
  %168 = load i32, ptr @ix86_preferred_stack_boundary, align 4, !tbaa !12
  %169 = lshr i32 %168, 3
  %170 = zext nneg i32 %169 to i64
  %171 = sub nsw i64 0, %170
  %172 = load i64, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !60
  %173 = and i64 %172, %171
  store i64 %173, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 17), align 8, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @expand_function_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @partition_to_var(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds i32, ptr %4, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !12
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ %1, %2 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !53
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds %struct.partition_def, ptr %12, i64 0, i32 1, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !55
  %16 = load ptr, ptr @cfun, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !114
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %15) #20
  ret ptr %21
}

; Function Attrs: optsize
declare void @set_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @expand_main_function() local_unnamed_addr #3

; Function Attrs: optsize
declare void @stack_protect_prologue() local_unnamed_addr #3

; Function Attrs: optsize
declare void @expand_phi_nodes(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rtl_register_cfg_hooks() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @construct_init_block() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !14
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !118
  %7 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #20
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3452, ptr noundef nonnull @.str.1) #21
  %10 = load ptr, ptr @cfun, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  br label %14

14:                                               ; preds = %0, %9
  %15 = phi ptr [ %4, %0 ], [ %13, %9 ]
  tail call void @init_rtl_bb_info(ptr noundef %15) #21
  %16 = load ptr, ptr @cfun, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  tail call void @init_rtl_bb_info(ptr noundef %20) #21
  %21 = load ptr, ptr @cfun, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !119
  %27 = or i32 %26, 512
  store i32 %27, ptr %25, align 8, !tbaa !119
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !93
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 13
  %31 = load i32, ptr %30, align 8, !tbaa !119
  %32 = or i32 %31, 512
  store i32 %32, ptr %30, align 8, !tbaa !119
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !118
  %35 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %34, i32 noundef 0) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !120
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !91
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = tail call ptr @gimple_block_label(ptr noundef %39) #21
  %45 = tail call ptr @label_rtx(ptr noundef %44) #21
  tail call void @emit_jump(ptr noundef %45) #21
  br label %46

46:                                               ; preds = %14, %37, %43
  %47 = phi i32 [ 0, %43 ], [ 1, %37 ], [ 1, %14 ]
  %48 = tail call ptr @get_insns() #21
  %49 = getelementptr inbounds %struct.rtx_def, ptr %48, i64 0, i32 1, i32 0, i32 0, i64 2
  %50 = load ptr, ptr %49, align 8, !tbaa !8
  %51 = tail call ptr @get_last_insn() #21
  %52 = load ptr, ptr @cfun, align 8, !tbaa !14
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !64
  %55 = load ptr, ptr %54, align 8, !tbaa !65
  %56 = tail call ptr @create_basic_block(ptr noundef %50, ptr noundef %51, ptr noundef %55) #21
  %57 = load ptr, ptr @cfun, align 8, !tbaa !14
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !64
  %60 = load ptr, ptr %59, align 8, !tbaa !65
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 11
  %62 = load i32, ptr %61, align 8, !tbaa !121
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 11
  store i32 %62, ptr %63, align 8, !tbaa !121
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 8
  %65 = load i64, ptr %64, align 8, !tbaa !122
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 8
  store i64 %65, ptr %66, align 8, !tbaa !122
  br i1 %36, label %71, label %67

67:                                               ; preds = %46
  %68 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !120
  tail call void @redirect_edge_succ(ptr noundef nonnull %35, ptr noundef nonnull %56) #21
  %70 = tail call ptr @make_edge(ptr noundef nonnull %56, ptr noundef %69, i32 noundef %47) #21
  br label %75

71:                                               ; preds = %46
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !93
  %74 = tail call ptr @make_edge(ptr noundef nonnull %56, ptr noundef %73, i32 noundef 1) #21
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi ptr [ %70, %67 ], [ %74, %71 ]
  %77 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 8
  store i32 10000, ptr %77, align 4, !tbaa !123
  %78 = load ptr, ptr @cfun, align 8, !tbaa !14
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !64
  %81 = load ptr, ptr %80, align 8, !tbaa !65
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 8
  %83 = load i64, ptr %82, align 8, !tbaa !122
  %84 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 9
  store i64 %83, ptr %84, align 8, !tbaa !124
  tail call void @update_bb_for_insn(ptr noundef nonnull %56) #21
  ret ptr %56
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #2 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !14
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 738, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !125
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !125
  ret void
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_gimple_basic_block(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.ssa_operand_iterator_d, align 8
  %8 = alloca %struct.immediate_use_iterator_d, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !127
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.12, i32 noundef %15) #20
  br label %17

17:                                               ; preds = %13, %1
  %18 = tail call fastcc ptr @bb_seq(ptr noundef %0) #20
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  store ptr null, ptr %19, align 8, !tbaa !8
  tail call void @rtl_profile_for_bb(ptr noundef %0) #21
  tail call void @init_rtl_bb_info(ptr noundef %0) #21
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %21 = load i32, ptr %20, align 8, !tbaa !119
  %22 = or i32 %21, 512
  store i32 %22, ptr %20, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %18) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !11
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %17
  %26 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %27 = tail call fastcc i32 @gimple_code(ptr noundef %26) #20, !range !7
  %28 = icmp eq i32 %27, 9
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #20, !range !11
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3137, ptr noundef nonnull @.str.1) #21
  br label %33

33:                                               ; preds = %29, %32
  %34 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #20
  %35 = load ptr, ptr @cfun, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !93
  %40 = icmp eq ptr %34, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3138, ptr noundef nonnull @.str.1) #21
  %42 = load ptr, ptr @cfun, align 8, !tbaa !14
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !93
  br label %47

47:                                               ; preds = %33, %41
  %48 = phi ptr [ %34, %33 ], [ %46, %41 ]
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !91
  %51 = icmp eq ptr %50, %48
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = tail call fastcc ptr @gimple_return_retval(ptr noundef %26) #20
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 0) #21
  %56 = call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #20
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !88
  %59 = or i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !88
  br label %60

60:                                               ; preds = %47, %52, %55, %25, %17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %18) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #22
  %61 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !11
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %65 = call fastcc i32 @gimple_code(ptr noundef %64) #20, !range !7
  %66 = icmp eq i32 %65, 4
  %67 = select i1 %66, ptr %64, ptr null
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi ptr [ null, %60 ], [ %67, %63 ]
  %70 = load ptr, ptr @lab_rtx_for_bb, align 8, !tbaa !14
  %71 = call ptr @pointer_map_contains(ptr noundef %70, ptr noundef nonnull %0) #21
  %72 = icmp ne ptr %69, null
  %73 = icmp ne ptr %71, null
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %68
  %76 = call ptr @get_last_insn() #21
  br i1 %72, label %77, label %79

77:                                               ; preds = %75
  %78 = call fastcc ptr @expand_gimple_stmt(ptr noundef nonnull %69) #20
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  br label %79

79:                                               ; preds = %77, %75
  br i1 %73, label %80, label %83

80:                                               ; preds = %79
  %81 = load ptr, ptr %71, align 8, !tbaa !14
  %82 = call ptr @emit_label(ptr noundef %81) #21
  br label %83

83:                                               ; preds = %80, %79
  %84 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !8
  %86 = load ptr, ptr %19, align 8, !tbaa !8
  store ptr %85, ptr %86, align 8, !tbaa !129
  %87 = load ptr, ptr %19, align 8, !tbaa !8
  %88 = load ptr, ptr %87, align 8, !tbaa !129
  %89 = load i32, ptr %88, align 8
  %90 = and i32 %89, 65535
  %91 = icmp eq i32 %90, 13
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 2
  %94 = load ptr, ptr %93, align 8, !tbaa !8
  store ptr %94, ptr %87, align 8, !tbaa !129
  %95 = load ptr, ptr %19, align 8, !tbaa !8
  %96 = load ptr, ptr %95, align 8, !tbaa !129
  br label %97

97:                                               ; preds = %92, %83
  %98 = phi ptr [ %96, %92 ], [ %88, %83 ]
  %99 = call ptr @emit_note_after(i32 noundef 10, ptr noundef %98) #21
  call fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef %69, ptr noundef nonnull %76) #20
  br label %103

100:                                              ; preds = %68
  %101 = call ptr @emit_note(i32 noundef 10) #21
  %102 = load ptr, ptr %19, align 8, !tbaa !8
  store ptr %101, ptr %102, align 8, !tbaa !129
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi ptr [ %99, %97 ], [ %101, %100 ]
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1, i32 0, i32 2
  store ptr %0, ptr %105, align 8, !tbaa !8
  %106 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !11
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %317

108:                                              ; preds = %103, %313
  %109 = phi ptr [ %314, %313 ], [ %0, %103 ]
  %110 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %111 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !12
  %112 = icmp ne i32 %111, 0
  %113 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8
  %114 = icmp ne ptr %113, null
  %115 = select i1 %112, i1 %114, i1 false
  br i1 %115, label %116, label %212

116:                                              ; preds = %108
  %117 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %110) #20, !range !11
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %212

119:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #22
  %120 = call i32 @get_curr_insn_source_location() #21
  %121 = call ptr @get_curr_insn_block() #21
  %122 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %7, ptr noundef %110) #20
  %123 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %211

125:                                              ; preds = %119, %207
  %126 = phi ptr [ %208, %207 ], [ %122, %119 ]
  %127 = call fastcc ptr @get_gimple_for_ssa_name(ptr noundef %126) #20
  %128 = icmp eq ptr %127, null
  br i1 %128, label %207, label %129

129:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #22
  %130 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %8, ptr noundef %126) #20
  %131 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %8) #20, !range !11
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %206

133:                                              ; preds = %129, %139
  %134 = phi ptr [ %140, %139 ], [ %130, %129 ]
  %135 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !8
  %137 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %136) #20, !range !11
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %8) #20
  %141 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %8) #20, !range !11
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %133, label %206, !llvm.loop !131

143:                                              ; preds = %133
  %144 = call ptr @gimple_assign_rhs_to_tree(ptr noundef nonnull %127) #20
  %145 = call ptr @make_node_stat(i32 noundef 37) #21
  %146 = call fastcc i32 @gimple_location(ptr noundef nonnull %127) #20
  call void @set_curr_insn_source_location(i32 noundef %146) #21
  %147 = call fastcc ptr @gimple_block(ptr noundef nonnull %127) #20
  call void @set_curr_insn_block(ptr noundef %147) #21
  %148 = getelementptr inbounds %struct.tree_decl_common, ptr %145, i64 0, i32 2
  %149 = load i64, ptr %148, align 8
  %150 = or i64 %149, 4096
  store i64 %150, ptr %148, align 8
  %151 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !8
  %153 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  store ptr %152, ptr %153, align 8, !tbaa !8
  %154 = load i64, ptr %144, align 8
  %155 = and i64 %154, 65535
  %156 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !12
  %158 = icmp eq i32 %157, 3
  br i1 %158, label %159, label %164

159:                                              ; preds = %143
  %160 = getelementptr inbounds %struct.tree_decl_common, ptr %144, i64 0, i32 2
  %161 = load i64, ptr %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = and i32 %162, 255
  br label %176

164:                                              ; preds = %143
  %165 = load i64, ptr %152, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 14
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = call i32 @vector_type_mode(ptr noundef nonnull %152) #21
  %170 = load i64, ptr %148, align 8
  br label %176

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 6
  %173 = load i32, ptr %172, align 4
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  br label %176

176:                                              ; preds = %168, %171, %159
  %177 = phi i64 [ %150, %159 ], [ %170, %168 ], [ %150, %171 ]
  %178 = phi i32 [ %163, %159 ], [ %169, %168 ], [ %175, %171 ]
  %179 = and i32 %178, 255
  %180 = zext nneg i32 %179 to i64
  %181 = and i64 %177, -256
  %182 = or disjoint i64 %181, %180
  store i64 %182, ptr %148, align 8
  %183 = call ptr @gen_rtx_fmt_tei_stat(i32 noundef 138, i32 noundef %178, ptr noundef nonnull %145, ptr noundef nonnull %144, i32 noundef 2) #21
  %184 = call ptr @emit_debug_insn(ptr noundef %183) #21
  %185 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %8, ptr noundef %126) #20
  %186 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %8) #20, !range !11
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %176, %202
  %189 = phi ptr [ %203, %202 ], [ %185, %176 ]
  %190 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %189) #20, !range !11
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %188
  %193 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %8) #20
  %194 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %8) #20, !range !11
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %192, %196
  %197 = phi ptr [ %198, %196 ], [ %193, %192 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %197, ptr noundef %145) #20
  %198 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %8) #20
  %199 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %8) #20, !range !11
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %196, label %201, !llvm.loop !132

201:                                              ; preds = %196, %192
  call fastcc void @update_stmt(ptr noundef %189) #20
  br label %202

202:                                              ; preds = %188, %201
  %203 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %8) #20
  %204 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %8) #20, !range !11
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %188, label %206, !llvm.loop !133

206:                                              ; preds = %139, %202, %129, %176
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #22
  br label %207

207:                                              ; preds = %125, %206
  %208 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %7) #20
  %209 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %125, label %211, !llvm.loop !134

211:                                              ; preds = %207, %119
  call void @set_curr_insn_source_location(i32 noundef %120) #21
  call void @set_curr_insn_block(ptr noundef %121) #21
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #22
  br label %212

212:                                              ; preds = %211, %116, %108
  store ptr %110, ptr @currently_expanding_gimple_stmt, align 8, !tbaa !14
  %213 = call fastcc i32 @gimple_code(ptr noundef %110) #20, !range !7
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = call fastcc ptr @expand_gimple_cond(ptr noundef %109, ptr noundef %110) #20
  %217 = icmp eq ptr %216, null
  br i1 %217, label %313, label %408

218:                                              ; preds = %212
  %219 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %110) #20, !range !11
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %284, label %221

221:                                              ; preds = %218
  %222 = call i32 @get_curr_insn_source_location() #21
  %223 = call ptr @get_curr_insn_block() #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !128
  br label %224

224:                                              ; preds = %279, %221
  %225 = phi ptr [ %110, %221 ], [ %280, %279 ]
  %226 = call fastcc ptr @gimple_debug_bind_get_var(ptr noundef %225) #20
  %227 = call fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %225) #20, !range !11
  %228 = icmp eq i8 %227, 0
  br i1 %228, label %231, label %229

229:                                              ; preds = %224
  %230 = call fastcc ptr @gimple_debug_bind_get_value(ptr noundef %225) #20
  br label %231

231:                                              ; preds = %224, %229
  %232 = phi ptr [ %230, %229 ], [ null, %224 ]
  %233 = call ptr @get_last_insn() #21
  %234 = call fastcc i32 @gimple_location(ptr noundef %225) #20
  call void @set_curr_insn_source_location(i32 noundef %234) #21
  %235 = call fastcc ptr @gimple_block(ptr noundef %225) #20
  call void @set_curr_insn_block(ptr noundef %235) #21
  %236 = load i64, ptr %226, align 8
  %237 = and i64 %236, 65535
  %238 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !12
  %240 = icmp eq i32 %239, 3
  br i1 %240, label %241, label %246

241:                                              ; preds = %231
  %242 = getelementptr inbounds %struct.tree_decl_common, ptr %226, i64 0, i32 2
  %243 = load i64, ptr %242, align 8
  %244 = trunc i64 %243 to i32
  %245 = and i32 %244, 255
  br label %259

246:                                              ; preds = %231
  %247 = getelementptr inbounds %struct.tree_common, ptr %226, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !8
  %249 = load i64, ptr %248, align 8
  %250 = and i64 %249, 65535
  %251 = icmp eq i64 %250, 14
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = call i32 @vector_type_mode(ptr noundef nonnull %248) #21
  br label %259

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.tree_type, ptr %248, i64 0, i32 6
  %256 = load i32, ptr %255, align 4
  %257 = lshr i32 %256, 16
  %258 = and i32 %257, 255
  br label %259

259:                                              ; preds = %252, %254, %241
  %260 = phi i32 [ %245, %241 ], [ %253, %252 ], [ %258, %254 ]
  %261 = call ptr @gen_rtx_fmt_tei_stat(i32 noundef 138, i32 noundef %260, ptr noundef nonnull %226, ptr noundef %232, i32 noundef 2) #21
  %262 = call ptr @emit_debug_insn(ptr noundef %261) #21
  %263 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %264 = icmp eq ptr %263, null
  br i1 %264, label %276, label %265

265:                                              ; preds = %259
  %266 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %267 = and i32 %266, 8
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %276, label %269

269:                                              ; preds = %265
  %270 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %271 = getelementptr inbounds %struct.rtx_def, ptr %262, i64 1
  %272 = load ptr, ptr %271, align 8, !tbaa !8
  %273 = getelementptr inbounds %struct.rtx_def, ptr %272, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %270, ptr %273, align 8, !tbaa !8
  call fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef %225, ptr noundef %233) #20
  %274 = load ptr, ptr %271, align 8, !tbaa !8
  %275 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %232, ptr %275, align 8, !tbaa !8
  br label %276

276:                                              ; preds = %269, %265, %259
  call fastcc void @delink_stmt_imm_use(ptr noundef %225) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !128
  call fastcc void @gsi_next(ptr noundef nonnull %9) #20
  %277 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %9) #20, !range !11
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %276
  %280 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %9) #20
  %281 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %280) #20, !range !11
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %283, label %224

283:                                              ; preds = %279, %276
  call void @set_curr_insn_source_location(i32 noundef %222) #21
  call void @set_curr_insn_block(ptr noundef %223) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #22
  br label %313

284:                                              ; preds = %218
  %285 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %110) #20, !range !11
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %299, label %287

287:                                              ; preds = %284
  %288 = call fastcc zeroext i8 @gimple_call_tail_p(ptr noundef %110) #20, !range !11
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %299, label %290

290:                                              ; preds = %287
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  %291 = call fastcc ptr @expand_gimple_tailcall(ptr noundef %109, ptr noundef %110, ptr noundef nonnull %10) #20
  %292 = icmp eq ptr %291, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  %294 = load i8, ptr %10, align 1, !tbaa !8
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %290, %293
  %297 = phi ptr [ %109, %290 ], [ %291, %293 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  br label %313

298:                                              ; preds = %293
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  br label %408

299:                                              ; preds = %287, %284
  %300 = call fastcc ptr @single_ssa_def_operand(ptr noundef %110) #20
  %301 = icmp ne ptr %300, null
  %302 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8
  %303 = icmp ne ptr %302, null
  %304 = select i1 %301, i1 %303, i1 false
  br i1 %304, label %305, label %311

305:                                              ; preds = %299
  %306 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %300) #20
  %307 = getelementptr inbounds %struct.tree_ssa_name, ptr %306, i64 0, i32 3
  %308 = load i32, ptr %307, align 8, !tbaa !8
  %309 = call i32 @bitmap_bit_p(ptr noundef nonnull %302, i32 noundef %308) #21
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %299, %305
  %312 = call fastcc ptr @expand_gimple_stmt(ptr noundef %110) #20
  call fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef %110, ptr noundef %312) #20
  br label %313

313:                                              ; preds = %215, %305, %311, %296, %283
  %314 = phi ptr [ %109, %311 ], [ %297, %296 ], [ %109, %283 ], [ %109, %305 ], [ %109, %215 ]
  call fastcc void @gsi_next(ptr noundef nonnull %2) #20
  %315 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !11
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %108, label %317, !llvm.loop !135

317:                                              ; preds = %313, %103
  %318 = phi ptr [ %0, %103 ], [ %314, %313 ]
  store ptr null, ptr @currently_expanding_gimple_stmt, align 8, !tbaa !14
  %319 = getelementptr inbounds %struct.basic_block_def, ptr %318, i64 0, i32 1
  %320 = call fastcc ptr @ei_start_1(ptr noundef nonnull %319) #20
  store i32 0, ptr %4, align 8, !tbaa.struct !86
  %321 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %320, ptr %321, align 8, !tbaa.struct !87
  %322 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %320, ptr noundef nonnull %3) #20, !range !11
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %358, label %324

324:                                              ; preds = %317
  %325 = getelementptr inbounds %struct.basic_block_def, ptr %318, i64 0, i32 6
  br label %326

326:                                              ; preds = %324, %353
  %327 = load ptr, ptr %3, align 8, !tbaa !14
  %328 = getelementptr inbounds %struct.edge_def, ptr %327, i64 0, i32 5
  %329 = load i32, ptr %328, align 8, !tbaa !136
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %338, label %331

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.edge_def, ptr %327, i64 0, i32 4
  %333 = load ptr, ptr %332, align 8, !tbaa !137
  %334 = icmp eq ptr %333, null
  br i1 %334, label %338, label %335

335:                                              ; preds = %331
  call void @set_curr_insn_source_location(i32 noundef %329) #21
  %336 = load ptr, ptr %332, align 8, !tbaa !137
  call void @set_curr_insn_block(ptr noundef %336) #21
  %337 = call i32 @curr_insn_locator() #21
  store i32 %337, ptr %328, align 8, !tbaa !136
  br label %338

338:                                              ; preds = %335, %331, %326
  %339 = getelementptr inbounds %struct.edge_def, ptr %327, i64 0, i32 4
  store ptr null, ptr %339, align 8, !tbaa !137
  %340 = getelementptr inbounds %struct.edge_def, ptr %327, i64 0, i32 7
  %341 = load i32, ptr %340, align 8, !tbaa !88
  %342 = and i32 %341, 1
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %353, label %344

344:                                              ; preds = %338
  %345 = getelementptr inbounds %struct.edge_def, ptr %327, i64 0, i32 1
  %346 = load ptr, ptr %345, align 8, !tbaa !120
  %347 = load ptr, ptr %325, align 8, !tbaa !91
  %348 = icmp eq ptr %346, %347
  br i1 %348, label %353, label %349

349:                                              ; preds = %344
  %350 = call fastcc ptr @label_rtx_for_bb(ptr noundef %346) #20
  call void @emit_jump(ptr noundef %350) #21
  %351 = load i32, ptr %340, align 8, !tbaa !88
  %352 = and i32 %351, -2
  store i32 %352, ptr %340, align 8, !tbaa !88
  br label %353

353:                                              ; preds = %338, %344, %349
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %354 = load i32, ptr %4, align 8
  %355 = load ptr, ptr %321, align 8
  %356 = call fastcc zeroext i8 @ei_cond(i32 %354, ptr %355, ptr noundef nonnull %3) #20, !range !11
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %358, label %326, !llvm.loop !138

358:                                              ; preds = %353, %317
  %359 = call fastcc zeroext i8 @single_succ_p(ptr noundef %318) #20, !range !11
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %378, label %361

361:                                              ; preds = %358
  %362 = call fastcc ptr @single_succ_edge(ptr noundef %318) #20
  %363 = getelementptr inbounds %struct.edge_def, ptr %362, i64 0, i32 7
  %364 = load i32, ptr %363, align 8, !tbaa !88
  %365 = and i32 %364, 1
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %378, label %367

367:                                              ; preds = %361
  %368 = call ptr @get_last_insn() #21
  %369 = icmp eq ptr %368, null
  br i1 %369, label %378, label %370

370:                                              ; preds = %367
  %371 = load i32, ptr %368, align 8
  %372 = and i32 %371, 65535
  %373 = icmp eq i32 %372, 9
  br i1 %373, label %374, label %378

374:                                              ; preds = %370
  %375 = call ptr @gen_reg_rtx(i32 noundef 16) #21
  %376 = call ptr @gen_move_insn(ptr noundef %375, ptr noundef %375) #21
  %377 = call ptr @emit_insn_after_noloc(ptr noundef %376, ptr noundef nonnull %368, ptr noundef null) #21
  br label %378

378:                                              ; preds = %374, %370, %367, %361, %358
  call void @do_pending_stack_adjust() #21
  %379 = call ptr @get_last_insn() #21
  %380 = load i32, ptr %379, align 8
  %381 = and i32 %380, 65535
  %382 = icmp eq i32 %381, 11
  br i1 %382, label %383, label %387

383:                                              ; preds = %378
  %384 = getelementptr inbounds %struct.rtx_def, ptr %379, i64 0, i32 1, i32 0, i32 0, i64 1
  %385 = load ptr, ptr %384, align 8, !tbaa !8
  %386 = load i32, ptr %385, align 8
  br label %387

387:                                              ; preds = %383, %378
  %388 = phi i32 [ %386, %383 ], [ %380, %378 ]
  %389 = phi ptr [ %385, %383 ], [ %379, %378 ]
  %390 = and i32 %388, 65535
  %391 = icmp eq i32 %390, 9
  br i1 %391, label %392, label %403

392:                                              ; preds = %387
  %393 = getelementptr inbounds %struct.rtx_def, ptr %389, i64 1
  %394 = load ptr, ptr %393, align 8, !tbaa !8
  %395 = load i32, ptr %394, align 8
  %396 = and i32 %395, 65534
  %397 = icmp eq i32 %396, 20
  br i1 %397, label %398, label %403

398:                                              ; preds = %392
  %399 = getelementptr inbounds %struct.rtx_def, ptr %389, i64 0, i32 1, i32 0, i32 0, i64 1
  %400 = load ptr, ptr %399, align 8, !tbaa !8
  %401 = getelementptr inbounds %struct.rtx_def, ptr %400, i64 0, i32 1, i32 0, i32 0, i64 1
  %402 = load ptr, ptr %401, align 8, !tbaa !8
  br label %403

403:                                              ; preds = %392, %398, %387
  %404 = phi ptr [ %402, %398 ], [ %389, %387 ], [ %389, %392 ]
  %405 = getelementptr inbounds %struct.basic_block_def, ptr %318, i64 0, i32 7
  %406 = load ptr, ptr %405, align 8, !tbaa !8
  %407 = getelementptr inbounds %struct.rtl_bb_info, ptr %406, i64 0, i32 1
  store ptr %404, ptr %407, align 8, !tbaa !139
  call void @update_bb_for_insn(ptr noundef %318) #21
  br label %408

408:                                              ; preds = %215, %298, %403
  %409 = phi ptr [ %318, %403 ], [ %291, %298 ], [ %216, %215 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret ptr %409
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_debug_locations() unnamed_addr #0 {
  %1 = tail call ptr @get_last_insn() #21
  %2 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !12
  store i32 0, ptr @flag_strict_aliasing, align 4, !tbaa !12
  %3 = tail call ptr @get_insns() #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %0, %44
  %6 = phi ptr [ %46, %44 ], [ %3, %0 ]
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %10, label %44

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc ptr @expand_debug_expr(ptr noundef nonnull %14) #20
  %18 = tail call ptr @get_last_insn() #21
  %19 = icmp eq ptr %1, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3079, ptr noundef nonnull @.str.1) #21
  br label %21

21:                                               ; preds = %20, %16
  %22 = icmp eq ptr %17, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %10, %21
  %24 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %25 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %24) #21
  br label %40

26:                                               ; preds = %21
  %27 = load ptr, ptr %11, align 8, !tbaa !8
  %28 = load i32, ptr %27, align 8
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  %31 = load i32, ptr %17, align 8
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = trunc i32 %31 to i16
  switch i16 %38, label %39 [
    i16 30, label %40
    i16 31, label %40
    i16 32, label %40
    i16 44, label %40
  ]

39:                                               ; preds = %37, %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3093, ptr noundef nonnull @.str.1) #21
  br label %40

40:                                               ; preds = %37, %37, %37, %37, %39, %26, %23
  %41 = phi ptr [ %17, %26 ], [ %17, %37 ], [ %17, %39 ], [ %25, %23 ], [ %17, %37 ], [ %17, %37 ], [ %17, %37 ]
  %42 = load ptr, ptr %11, align 8, !tbaa !8
  %43 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %41, ptr %43, align 8, !tbaa !8
  br label %44

44:                                               ; preds = %5, %40
  %45 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %5, !llvm.loop !140

48:                                               ; preds = %44, %0
  store i32 %2, ptr @flag_strict_aliasing, align 4, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare i32 @execute_free_datastructures() local_unnamed_addr #3

; Function Attrs: optsize
declare void @finish_out_of_ssa(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_histograms() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @construct_exit_block() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = tail call ptr @get_last_insn() #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !8
  %13 = getelementptr inbounds %struct.rtl_bb_info, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  tail call void @rtl_profile_for_bb(ptr noundef %8) #21
  %15 = load ptr, ptr @cfun, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 16
  %17 = load i32, ptr %16, align 4, !tbaa !142
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %0
  store i32 %17, ptr @input_location, align 4, !tbaa !12
  br label %20

20:                                               ; preds = %19, %0
  %21 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !8
  tail call void @set_curr_insn_block(ptr noundef %23) #21
  tail call void @expand_function_end() #21
  %24 = tail call ptr @get_last_insn() #21
  %25 = icmp eq ptr %3, %24
  br i1 %25, label %140, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr @cfun, align 8, !tbaa !14
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !64
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !93
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !141
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !8
  %36 = getelementptr inbounds %struct.rtl_bb_info, ptr %35, i64 0, i32 1
  store ptr %14, ptr %36, align 8, !tbaa !139
  br label %37

37:                                               ; preds = %42, %26
  %38 = phi ptr [ %3, %26 ], [ %40, %42 ]
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 0, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %40, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 13
  br i1 %45, label %37, label %46, !llvm.loop !143

46:                                               ; preds = %37, %42
  %47 = tail call ptr @create_basic_block(ptr noundef %40, ptr noundef %24, ptr noundef %33) #21
  %48 = load ptr, ptr @cfun, align 8, !tbaa !14
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !64
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !93
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 11
  %54 = load i32, ptr %53, align 8, !tbaa !121
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 11
  store i32 %54, ptr %55, align 8, !tbaa !121
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 8
  %57 = load i64, ptr %56, align 8, !tbaa !122
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 8
  store i64 %57, ptr %58, align 8, !tbaa !122
  %59 = load ptr, ptr %52, align 8, !tbaa !144
  %60 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %59) #20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %85, label %62

62:                                               ; preds = %46, %75
  %63 = phi ptr [ %76, %75 ], [ %48, %46 ]
  %64 = phi ptr [ %82, %75 ], [ %59, %46 ]
  %65 = phi i32 [ %77, %75 ], [ 0, %46 ]
  %66 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %64, i32 noundef %65) #20
  %67 = getelementptr inbounds %struct.edge_def, ptr %66, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !88
  %69 = and i32 %68, 2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  tail call void @redirect_edge_succ(ptr noundef nonnull %66, ptr noundef %47) #21
  %72 = load ptr, ptr @cfun, align 8, !tbaa !14
  br label %75

73:                                               ; preds = %62
  %74 = add nuw i32 %65, 1
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi ptr [ %63, %73 ], [ %72, %71 ]
  %77 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %78 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !64
  %80 = getelementptr inbounds %struct.control_flow_graph, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !93
  %82 = load ptr, ptr %81, align 8, !tbaa !144
  %83 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %82) #20
  %84 = icmp ult i32 %77, %83
  br i1 %84, label %62, label %85, !llvm.loop !145

85:                                               ; preds = %75, %46
  %86 = phi ptr [ %52, %46 ], [ %81, %75 ]
  %87 = tail call ptr @make_edge(ptr noundef %47, ptr noundef nonnull %86, i32 noundef 1) #21
  %88 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 8
  store i32 10000, ptr %88, align 4, !tbaa !123
  %89 = load ptr, ptr @cfun, align 8, !tbaa !14
  %90 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !64
  %92 = getelementptr inbounds %struct.control_flow_graph, ptr %91, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !93
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 8
  %95 = load i64, ptr %94, align 8, !tbaa !122
  %96 = getelementptr inbounds %struct.edge_def, ptr %87, i64 0, i32 9
  store i64 %95, ptr %96, align 8, !tbaa !124
  %97 = tail call fastcc ptr @ei_start_1(ptr noundef %93) #20
  store i32 0, ptr %2, align 8, !tbaa.struct !86
  %98 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %97, ptr %98, align 8, !tbaa.struct !87
  %99 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %97, ptr noundef nonnull %1) #20, !range !11
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %127, label %101

101:                                              ; preds = %85, %122
  %102 = load ptr, ptr %1, align 8, !tbaa !14
  %103 = icmp eq ptr %102, %87
  br i1 %103, label %122, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 9
  %106 = load i64, ptr %105, align 8, !tbaa !124
  %107 = load i64, ptr %96, align 8, !tbaa !124
  %108 = sub nsw i64 %107, %106
  store i64 %108, ptr %96, align 8, !tbaa !124
  %109 = load i64, ptr %105, align 8, !tbaa !124
  %110 = load i64, ptr %58, align 8, !tbaa !122
  %111 = sub nsw i64 %110, %109
  store i64 %111, ptr %58, align 8, !tbaa !122
  %112 = load ptr, ptr %102, align 8, !tbaa !146
  %113 = getelementptr inbounds %struct.basic_block_def, ptr %112, i64 0, i32 11
  %114 = load i32, ptr %113, align 8, !tbaa !121
  %115 = getelementptr inbounds %struct.edge_def, ptr %102, i64 0, i32 8
  %116 = load i32, ptr %115, align 4, !tbaa !123
  %117 = mul nsw i32 %116, %114
  %118 = add nsw i32 %117, 5000
  %119 = sdiv i32 %118, -10000
  %120 = load i32, ptr %55, align 8, !tbaa !121
  %121 = add i32 %119, %120
  store i32 %121, ptr %55, align 8, !tbaa !121
  br label %122

122:                                              ; preds = %101, %104
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %123 = load i32, ptr %2, align 8
  %124 = load ptr, ptr %98, align 8
  %125 = call fastcc zeroext i8 @ei_cond(i32 %123, ptr %124, ptr noundef nonnull %1) #20, !range !11
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %101, !llvm.loop !147

127:                                              ; preds = %122, %85
  %128 = load i64, ptr %96, align 8, !tbaa !124
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i64 0, ptr %96, align 8, !tbaa !124
  br label %131

131:                                              ; preds = %130, %127
  %132 = load i64, ptr %58, align 8, !tbaa !122
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i64 0, ptr %58, align 8, !tbaa !122
  br label %135

135:                                              ; preds = %134, %131
  %136 = load i32, ptr %55, align 8, !tbaa !121
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 0, ptr %55, align 8, !tbaa !121
  br label %139

139:                                              ; preds = %138, %135
  tail call void @update_bb_for_insn(ptr noundef nonnull %47) #21
  br label %140

140:                                              ; preds = %20, %139
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare void @insn_locators_finalize() local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_eh_throw_stmt_table(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rebuild_jump_labels(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @commit_one_edge_insertion(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @find_many_sub_basic_blocks(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @purge_all_dead_edges() local_unnamed_addr #3

; Function Attrs: optsize
declare void @compact_blocks() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_stack_alignment() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !14
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 524288
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = and i32 %3, 1048576
  %8 = icmp ne i32 %7, 0
  %9 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 31), align 1
  %10 = icmp ne i8 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %0
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1, !tbaa !148
  br label %13

13:                                               ; preds = %6, %12
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 18), align 8, !tbaa !149
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void %14() #21
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 24), align 4, !tbaa !150
  %19 = load i32, ptr @ix86_incoming_stack_boundary, align 4, !tbaa !12
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3665, ptr noundef nonnull @.str.1) #21
  br label %22

22:                                               ; preds = %17, %21
  %23 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !12
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !80
  %26 = load i32, ptr @ix86_preferred_stack_boundary, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 %25)
  %28 = select i1 %24, i32 %25, i32 %27
  %29 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !24
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 %28, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !24
  br label %32

32:                                               ; preds = %31, %22
  %33 = phi i32 [ %28, %31 ], [ %29, %22 ]
  %34 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !58
  %35 = icmp ugt i32 %28, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 %28, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !58
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i32 [ %28, %36 ], [ %34, %32 ]
  %39 = icmp ugt i32 %38, %33
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3682, ptr noundef nonnull @.str.1) #21
  %41 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 26), align 4, !tbaa !24
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi i32 [ %33, %37 ], [ %41, %40 ]
  %44 = load i32, ptr @ix86_incoming_stack_boundary, align 4, !tbaa !12
  %45 = icmp ult i32 %44, %43
  %46 = zext i1 %45 to i8
  store i8 %46, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !151
  store i8 %46, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 44), align 8, !tbaa !152
  store i8 1, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 46), align 2, !tbaa !33
  %47 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 19), align 8, !tbaa !153
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3692, ptr noundef nonnull @.str.1) #21
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 19), align 8, !tbaa !153
  br label %51

51:                                               ; preds = %42, %49
  %52 = phi ptr [ %47, %42 ], [ %50, %49 ]
  %53 = tail call ptr %52() #21
  %54 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 43), align 1, !tbaa !151
  %55 = icmp ne i8 %54, 0
  %56 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 45), align 1
  %57 = icmp ne i8 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  %59 = icmp ne ptr %53, null
  %60 = xor i1 %59, %58
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3696, ptr noundef nonnull @.str.1) #21
  br label %62

62:                                               ; preds = %51, %61
  br i1 %59, label %63, label %64

63:                                               ; preds = %62
  store ptr %53, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !154
  tail call void @fixup_tail_calls() #21
  br label %64

64:                                               ; preds = %63, %62
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_containing_scope(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @cgraph_function_possibly_inlined_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_block_levels(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = shl i32 %1, 1
  %6 = add nsw i32 %1, 1
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %0, %4 ], [ %16, %7 ]
  %9 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 1
  %12 = or disjoint i32 %11, %5
  store i32 %12, ptr %9, align 8
  %13 = getelementptr inbounds %struct.tree_block, ptr %8, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !8
  tail call fastcc void @set_block_levels(ptr noundef %14, i32 noundef %6) #20
  %15 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !llvm.loop !155

18:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !156
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !156
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !156
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !7
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @discover_nonconstant_array_refs_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !14
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = and i32 %8, -2
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %71, label %11

11:                                               ; preds = %3
  %12 = trunc i64 %5 to i32
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -45
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %72

16:                                               ; preds = %11, %51
  %17 = phi i64 [ %54, %51 ], [ %5, %11 ]
  %18 = phi ptr [ %53, %51 ], [ %4, %11 ]
  %19 = trunc i64 %17 to i32
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -45
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %25) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %51, label %32

32:                                               ; preds = %28
  %33 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %30) #21
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %16, %32, %23
  %36 = load i64, ptr %18, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 41
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %41) #21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i64, ptr %18, align 8
  br label %48

48:                                               ; preds = %46, %35
  %49 = phi i64 [ %47, %46 ], [ %36, %35 ]
  %50 = trunc i64 %49 to i16
  switch i16 %50, label %71 [
    i16 42, label %51
    i16 43, label %51
    i16 44, label %51
    i16 118, label %51
    i16 116, label %51
    i16 113, label %51
    i16 45, label %55
    i16 46, label %55
  ]

51:                                               ; preds = %48, %48, %48, %48, %48, %48, %43, %39, %32, %28
  %52 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !8
  %54 = load i64, ptr %53, align 8
  br label %16, !llvm.loop !162

55:                                               ; preds = %48, %48
  %56 = tail call ptr @get_base_address(ptr noundef nonnull %18) #21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %71, label %58

58:                                               ; preds = %55
  %59 = load i64, ptr %56, align 8
  %60 = and i64 %59, 65535
  %61 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !12
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tree_decl_common, ptr %56, i64 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 255
  %68 = icmp eq i64 %67, 1
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = or i64 %59, 262144
  store i64 %70, ptr %56, align 8
  br label %71

71:                                               ; preds = %48, %69, %64, %58, %55, %3
  store i32 0, ptr %1, align 4, !tbaa !12
  br label %72

72:                                               ; preds = %71, %11
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !156
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !163
  store ptr %4, ptr %0, align 8, !tbaa !156
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !119
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !164
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !166
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_used_vars_for_block(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = icmp eq i8 %1, 0
  %4 = load i64, ptr @stack_vars_num, align 8
  %5 = select i1 %3, i64 %4, i64 0
  %6 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %2, %16
  %10 = phi ptr [ %18, %16 ], [ %7, %2 ]
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 16777216
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = tail call fastcc i64 @expand_one_var(ptr noundef nonnull %10, i8 noundef zeroext %1, i8 noundef zeroext 1) #20
  br label %16

16:                                               ; preds = %9, %14
  %17 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %9, !llvm.loop !168

20:                                               ; preds = %16
  %21 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  br label %22

22:                                               ; preds = %20, %2
  %23 = phi i64 [ %21, %20 ], [ %4, %2 ]
  %24 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %30, %27 ], [ %25, %22 ]
  tail call fastcc void @expand_used_vars_for_block(ptr noundef nonnull %28, i8 noundef zeroext 0) #20
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27, !llvm.loop !169

32:                                               ; preds = %27, %22
  %33 = icmp ult i64 %5, %23
  br i1 %33, label %34, label %48

34:                                               ; preds = %32
  %35 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %36 = icmp ult i64 %5, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %34, %45
  %38 = phi i64 [ %46, %45 ], [ %5, %34 ]
  %39 = tail call i64 @llvm.umin.i64(i64 %38, i64 %23)
  %40 = icmp ugt i64 %39, %5
  br i1 %40, label %41, label %45

41:                                               ; preds = %37, %41
  %42 = phi i64 [ %43, %41 ], [ %39, %37 ]
  %43 = add i64 %42, -1
  tail call fastcc void @add_stack_var_conflict(i64 noundef %38, i64 noundef %43) #20
  %44 = icmp ugt i64 %43, %5
  br i1 %44, label %41, label %45, !llvm.loop !170

45:                                               ; preds = %41, %37
  %46 = add nuw i64 %38, 1
  %47 = icmp eq i64 %46, %35
  br i1 %47, label %48, label %37, !llvm.loop !171

48:                                               ; preds = %45, %34, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_alias_set_conflicts() unnamed_addr #0 {
  %1 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %43, label %3

3:                                                ; preds = %0, %40
  %4 = phi i64 [ %41, %40 ], [ 0, %0 ]
  %5 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.stack_var, ptr %5, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !8
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -15
  %14 = icmp ult i32 %13, 4
  %15 = tail call fastcc zeroext i8 @aggregate_contains_union_type(ptr noundef nonnull %9) #20, !range !11
  %16 = icmp eq i64 %4, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %3
  %18 = icmp ne i8 %15, 0
  br label %19

19:                                               ; preds = %17, %37
  %20 = phi i64 [ 0, %17 ], [ %38, %37 ]
  %21 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.stack_var, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -15
  %30 = icmp ult i32 %29, 4
  %31 = xor i1 %14, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %19
  %33 = tail call i32 @objects_must_conflict_p(ptr noundef nonnull %9, ptr noundef nonnull %25) #21
  %34 = icmp eq i32 %33, 0
  %35 = or i1 %18, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %19
  tail call fastcc void @add_stack_var_conflict(i64 noundef %4, i64 noundef %20) #20
  br label %37

37:                                               ; preds = %32, %36
  %38 = add nuw i64 %20, 1
  %39 = icmp eq i64 %38, %4
  br i1 %39, label %40, label %19, !llvm.loop !172

40:                                               ; preds = %37, %3
  %41 = add nuw i64 %4, 1
  %42 = icmp eq i64 %41, %1
  br i1 %42, label %43, label %3, !llvm.loop !173

43:                                               ; preds = %40, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_stack_protection_conflicts() unnamed_addr #0 {
  %1 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %2 = tail call ptr @xmalloc(i64 noundef %1) #21
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %31, label %4

4:                                                ; preds = %0, %4
  %5 = phi i64 [ %12, %4 ], [ 0, %0 ]
  %6 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.stack_var, ptr %6, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call fastcc i32 @stack_protect_decl_phase(ptr noundef %8) #20, !range !174
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds i8, ptr %2, i64 %5
  store i8 %10, ptr %11, align 1, !tbaa !8
  %12 = add nuw i64 %5, 1
  %13 = icmp eq i64 %12, %1
  br i1 %13, label %14, label %4, !llvm.loop !175

14:                                               ; preds = %4, %28
  %15 = phi i64 [ %29, %28 ], [ 0, %4 ]
  %16 = getelementptr inbounds i8, ptr %2, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !8
  %18 = icmp eq i64 %15, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14, %25
  %20 = phi i64 [ %26, %25 ], [ 0, %14 ]
  %21 = getelementptr inbounds i8, ptr %2, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !8
  %23 = icmp eq i8 %17, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call fastcc void @add_stack_var_conflict(i64 noundef %15, i64 noundef %20) #20
  br label %25

25:                                               ; preds = %19, %24
  %26 = add nuw i64 %20, 1
  %27 = icmp eq i64 %26, %15
  br i1 %27, label %28, label %19, !llvm.loop !176

28:                                               ; preds = %25, %14
  %29 = add nuw i64 %15, 1
  %30 = icmp eq i64 %29, %1
  br i1 %30, label %31, label %14, !llvm.loop !177

31:                                               ; preds = %28, %0
  tail call void @free(ptr noundef %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @partition_stack_vars() unnamed_addr #0 {
  %1 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %2 = shl i64 %1, 3
  %3 = tail call ptr @xmalloc(i64 noundef %2) #21
  store ptr %3, ptr @stack_vars_sorted, align 8, !tbaa !14
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %0
  %6 = add i64 %1, 1
  %7 = and i64 %6, -2
  %8 = add i64 %1, -1
  %9 = insertelement <2 x i64> poison, i64 %8, i64 0
  %10 = shufflevector <2 x i64> %9, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %11

11:                                               ; preds = %23, %5
  %12 = phi i64 [ 0, %5 ], [ %24, %23 ]
  %13 = phi <2 x i64> [ <i64 0, i64 1>, %5 ], [ %25, %23 ]
  %14 = icmp ule <2 x i64> %13, %10
  %15 = extractelement <2 x i1> %14, i64 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds i64, ptr %3, i64 %12
  store i64 %12, ptr %17, align 8, !tbaa !16
  br label %18

18:                                               ; preds = %16, %11
  %19 = extractelement <2 x i1> %14, i64 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = or disjoint i64 %12, 1
  %22 = getelementptr inbounds i64, ptr %3, i64 %21
  store i64 %21, ptr %22, align 8, !tbaa !16
  br label %23

23:                                               ; preds = %20, %18
  %24 = add i64 %12, 2
  %25 = add <2 x i64> %13, <i64 2, i64 2>
  %26 = icmp eq i64 %24, %7
  br i1 %26, label %28, label %11, !llvm.loop !178

27:                                               ; preds = %0
  tail call void @spec_qsort(ptr noundef %3, i64 noundef %1, i64 noundef 8, ptr noundef nonnull @stack_var_size_cmp) #21
  br label %68

28:                                               ; preds = %23
  %29 = icmp eq i64 %1, 1
  br i1 %29, label %72, label %30

30:                                               ; preds = %28
  tail call void @spec_qsort(ptr noundef nonnull %3, i64 noundef %1, i64 noundef 8, ptr noundef nonnull @stack_var_size_cmp) #21
  br label %31

31:                                               ; preds = %30, %65
  %32 = phi i64 [ %66, %65 ], [ 0, %30 ]
  %33 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !14
  %34 = getelementptr inbounds i64, ptr %33, i64 %32
  %35 = load i64, ptr %34, align 8, !tbaa !16
  %36 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %37 = getelementptr inbounds %struct.stack_var, ptr %36, i64 %35, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !38
  br label %39

39:                                               ; preds = %60, %31
  %40 = phi i64 [ %61, %60 ], [ %38, %31 ]
  %41 = phi i64 [ %45, %60 ], [ %32, %31 ]
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %65, label %43

43:                                               ; preds = %39, %63
  %44 = phi i64 [ %45, %63 ], [ %41, %39 ]
  %45 = add i64 %44, -1
  %46 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !14
  %47 = getelementptr inbounds i64, ptr %46, i64 %45
  %48 = load i64, ptr %47, align 8, !tbaa !16
  %49 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %50 = getelementptr inbounds %struct.stack_var, ptr %49, i64 %48, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !38
  %52 = getelementptr inbounds %struct.stack_var, ptr %49, i64 %48, i32 4
  %53 = load i64, ptr %52, align 8, !tbaa !36
  %54 = icmp ne i64 %53, %48
  %55 = icmp slt i64 %40, %51
  %56 = select i1 %54, i1 true, i1 %55
  br i1 %56, label %63, label %57, !llvm.loop !179

57:                                               ; preds = %43
  %58 = tail call fastcc zeroext i8 @stack_var_conflict_p(i64 noundef %35, i64 noundef %48) #20
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %63, !llvm.loop !179

60:                                               ; preds = %57
  tail call fastcc void @union_stack_vars(i64 noundef %35, i64 noundef %48) #20
  %61 = sub nsw i64 %40, %51
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %65, label %39

63:                                               ; preds = %57, %43
  %64 = icmp eq i64 %45, 0
  br i1 %64, label %65, label %43

65:                                               ; preds = %60, %39, %63
  %66 = add nuw i64 %32, 1
  %67 = icmp eq i64 %66, %1
  br i1 %67, label %68, label %31, !llvm.loop !180

68:                                               ; preds = %65, %27
  %69 = load i32, ptr @optimize, align 4, !tbaa !12
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call fastcc void @update_alias_info_with_stack_vars() #20
  br label %72

72:                                               ; preds = %68, %71, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_stack_var_partition() unnamed_addr #0 {
  %1 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %45, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  br label %5

5:                                                ; preds = %3, %41
  %6 = phi ptr [ %42, %41 ], [ %4, %3 ]
  %7 = phi i64 [ %43, %41 ], [ 0, %3 ]
  %8 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !14
  %9 = getelementptr inbounds i64, ptr %8, i64 %7
  %10 = load i64, ptr %9, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.stack_var, ptr %6, i64 %10, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !36
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %14, label %41

14:                                               ; preds = %5
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.stack_var, ptr %6, i64 %10, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.stack_var, ptr %6, i64 %10, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !49
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.9, i64 noundef %10, i64 noundef %17, i32 noundef %19) #20
  %21 = icmp eq i64 %10, -1
  %22 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  br i1 %21, label %41, label %23

23:                                               ; preds = %14, %23
  %24 = phi i64 [ %39, %23 ], [ %10, %14 ]
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %26 = tail call i32 @fputc(i32 noundef 9, ptr noundef %25) #20
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %28 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.stack_var, ptr %28, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  %31 = load i32, ptr @dump_flags, align 4, !tbaa !12
  tail call void @print_generic_expr(ptr noundef %27, ptr noundef %30, i32 noundef %31) #21
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %33 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.stack_var, ptr %33, i64 %24, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !47
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.10, i64 noundef %35) #20
  %37 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %38 = getelementptr inbounds %struct.stack_var, ptr %37, i64 %24, i32 5
  %39 = load i64, ptr %38, align 8, !tbaa !40
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %41, label %23, !llvm.loop !181

41:                                               ; preds = %23, %14, %5
  %42 = phi ptr [ %22, %14 ], [ %6, %5 ], [ %37, %23 ]
  %43 = add nuw i64 %7, 1
  %44 = icmp eq i64 %43, %1
  br i1 %44, label %45, label %5, !llvm.loop !182

45:                                               ; preds = %41, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_stack_guard() unnamed_addr #0 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !8
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !14
  %5 = tail call ptr @build_decl_stat(i32 noundef %3, i32 noundef 32, ptr noundef null, ptr noundef %4) #21
  %6 = load i64, ptr %5, align 8
  %7 = or i64 %6, 17301504
  store i64 %7, ptr %5, align 8
  tail call fastcc void @expand_one_stack_var(ptr noundef nonnull %5) #20
  store ptr %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 9), align 8, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_stack_vars(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %88, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br label %6

6:                                                ; preds = %4, %85
  %7 = phi i64 [ 0, %4 ], [ %86, %85 ]
  %8 = load ptr, ptr @stack_vars_sorted, align 8, !tbaa !14
  %9 = getelementptr inbounds i64, ptr %8, i64 %7
  %10 = load i64, ptr %9, align 8, !tbaa !16
  %11 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.stack_var, ptr %11, i64 %10, i32 4
  %13 = load i64, ptr %12, align 8, !tbaa !36
  %14 = icmp eq i64 %13, %10
  br i1 %14, label %15, label %85

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.stack_var, ptr %11, i64 %10
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !50
  %23 = load ptr, ptr @SA, align 8, !tbaa !52
  %24 = tail call fastcc i32 @var_to_partition(ptr noundef %23, ptr noundef nonnull %17) #20
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  br label %36

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %17, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  tail call void @make_decl_rtl(ptr noundef nonnull %17) #21
  %32 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.stack_var, ptr %32, i64 %10
  %34 = load ptr, ptr %33, align 8, !tbaa !39
  %35 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %34, i64 0, i32 1
  br label %36

36:                                               ; preds = %21, %31
  %37 = phi ptr [ %35, %31 ], [ %26, %21 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !8
  br label %39

39:                                               ; preds = %36, %27
  %40 = phi ptr [ %29, %27 ], [ %38, %36 ]
  %41 = load ptr, ptr @global_rtl, align 16, !tbaa !14
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %39
  %44 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  br i1 %5, label %52, label %45

45:                                               ; preds = %43
  %46 = getelementptr inbounds %struct.stack_var, ptr %44, i64 %10
  %47 = load ptr, ptr %46, align 8, !tbaa !39
  %48 = tail call zeroext i8 %0(ptr noundef %47) #21, !callees !183
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %85, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  br label %52

52:                                               ; preds = %50, %43
  %53 = phi ptr [ %51, %50 ], [ %44, %43 ]
  %54 = getelementptr inbounds %struct.stack_var, ptr %53, i64 %10, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !38
  %56 = getelementptr inbounds %struct.stack_var, ptr %53, i64 %10, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !49
  %58 = zext i32 %57 to i64
  %59 = tail call fastcc i64 @alloc_stack_frame_space(i64 noundef %55, i64 noundef %58) #20
  %60 = icmp eq i64 %10, -1
  br i1 %60, label %85, label %61

61:                                               ; preds = %52
  %62 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  br label %63

63:                                               ; preds = %61, %75
  %64 = phi ptr [ %81, %75 ], [ %62, %61 ]
  %65 = phi i64 [ %83, %75 ], [ %10, %61 ]
  %66 = getelementptr inbounds %struct.stack_var, ptr %64, i64 %65, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !47
  %68 = getelementptr inbounds %struct.stack_var, ptr %64, i64 %10, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !38
  %70 = icmp sgt i64 %67, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 780, ptr noundef nonnull @.str.1) #21
  %72 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %73 = getelementptr inbounds %struct.stack_var, ptr %72, i64 %65, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !47
  br label %75

75:                                               ; preds = %63, %71
  %76 = phi i64 [ %67, %63 ], [ %74, %71 ]
  %77 = phi ptr [ %64, %63 ], [ %72, %71 ]
  %78 = getelementptr inbounds %struct.stack_var, ptr %77, i64 %65
  %79 = load ptr, ptr %78, align 8, !tbaa !39
  %80 = add nsw i64 %76, %59
  tail call fastcc void @expand_one_stack_var_at(ptr noundef %79, i64 noundef %80) #20
  %81 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %82 = getelementptr inbounds %struct.stack_var, ptr %81, i64 %65, i32 5
  %83 = load i64, ptr %82, align 8, !tbaa !40
  %84 = icmp eq i64 %83, -1
  br i1 %84, label %85, label %63, !llvm.loop !184

85:                                               ; preds = %75, %52, %45, %39, %6
  %86 = add nuw i64 %7, 1
  %87 = icmp eq i64 %86, %2
  br i1 %87, label %88, label %6, !llvm.loop !185

88:                                               ; preds = %85, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @stack_protect_decl_phase_1(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @stack_protect_decl_phase(ptr noundef %0) #20, !range !174
  %3 = icmp eq i32 %2, 1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @stack_protect_decl_phase_2(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @stack_protect_decl_phase(ptr noundef %0) #20, !range !174
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_stack_var_conflict(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %8, ptr %4, align 8, !tbaa !43
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi ptr [ %8, %7 ], [ %5, %2 ]
  %11 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %1, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %15, ptr %11, align 8, !tbaa !43
  %16 = load ptr, ptr %4, align 8, !tbaa !43
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %16, %14 ], [ %10, %9 ]
  %19 = trunc i64 %1 to i32
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %19) #21
  %21 = load ptr, ptr %11, align 8, !tbaa !43
  %22 = trunc i64 %0 to i32
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %22) #21
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @aggregate_contains_union_type(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %8, %6 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %28 [
    i16 17, label %27
    i16 18, label %27
    i16 15, label %6
    i16 16, label %9
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  br label %2

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %9, %23
  %14 = phi ptr [ %25, %23 ], [ %11, %9 ]
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 31
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !8
  %21 = tail call fastcc zeroext i8 @aggregate_contains_union_type(ptr noundef %20) #20, !range !11
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13, %18
  %24 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %13, !llvm.loop !186

27:                                               ; preds = %2, %2
  br label %28

28:                                               ; preds = %18, %23, %2, %27, %9
  %29 = phi i8 [ 0, %9 ], [ 1, %27 ], [ 0, %2 ], [ 1, %18 ], [ 0, %23 ]
  ret i8 %29
}

; Function Attrs: optsize
declare i32 @objects_must_conflict_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @stack_protect_decl_phase(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !8
  %4 = tail call fastcc i32 @stack_protect_classify_type(ptr noundef %3) #20, !range !187
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i1 true, ptr @has_short_buffer, align 1
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i32, ptr @flag_stack_protect, align 4, !tbaa !12
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = and i32 %4, 3
  %13 = icmp ne i32 %12, 0
  %14 = icmp ult i32 %4, 8
  %15 = and i1 %14, %13
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = and i32 %4, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %22

19:                                               ; preds = %8
  %20 = and i32 %4, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16, %11, %19
  %23 = phi i32 [ 1, %19 ], [ 2, %16 ], [ 1, %11 ]
  store i1 true, ptr @has_protected_decls, align 1
  br label %24

24:                                               ; preds = %16, %22, %19
  %25 = phi i32 [ %23, %22 ], [ 0, %19 ], [ 0, %16 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @stack_protect_classify_type(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %55 [
    i16 15, label %4
    i16 17, label %35
    i16 18, label %35
    i16 16, label %35
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  %9 = load ptr, ptr @integer_types, align 16, !tbaa !14
  %10 = icmp eq ptr %8, %9
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %12 = icmp eq ptr %8, %11
  %13 = select i1 %10, i1 true, i1 %12
  %14 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16
  %15 = icmp eq ptr %8, %14
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %4
  %18 = load ptr, ptr @compiler_params, align 8, !tbaa !14
  %19 = getelementptr inbounds %struct.param_info, ptr %18, i64 93, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !82
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %17
  %26 = tail call i32 @host_integerp(ptr noundef nonnull %23, i32 noundef 1) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %22, align 8, !tbaa !8
  %30 = tail call i64 @tree_low_cst(ptr noundef %29, i32 noundef 1) #21
  br label %31

31:                                               ; preds = %17, %25, %28
  %32 = phi i64 [ %30, %28 ], [ %21, %25 ], [ %21, %17 ]
  %33 = icmp ult i64 %32, %21
  %34 = select i1 %33, i32 6, i32 5
  br label %55

35:                                               ; preds = %1, %1, %1
  %36 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %35, %50
  %40 = phi ptr [ %53, %50 ], [ %37, %35 ]
  %41 = phi i32 [ %51, %50 ], [ 8, %35 ]
  %42 = load i64, ptr %40, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 31
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !8
  %48 = tail call fastcc i32 @stack_protect_classify_type(ptr noundef %47) #20, !range !187
  %49 = or i32 %48, %41
  br label %50

50:                                               ; preds = %39, %45
  %51 = phi i32 [ %49, %45 ], [ %41, %39 ]
  %52 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %39, !llvm.loop !188

55:                                               ; preds = %50, %35, %4, %1, %31
  %56 = phi i32 [ 0, %1 ], [ %34, %31 ], [ 4, %4 ], [ 8, %35 ], [ %51, %50 ]
  ret i32 %56
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @stack_var_size_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %4 = load i64, ptr %0, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %4
  %6 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %4, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !38
  %8 = load i64, ptr %1, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %8
  %10 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %8, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !38
  %12 = icmp slt i64 %7, %11
  br i1 %12, label %41, label %13

13:                                               ; preds = %2
  %14 = icmp sgt i64 %7, %11
  br i1 %14, label %41, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %5, align 8, !tbaa !39
  %17 = load ptr, ptr %9, align 8, !tbaa !39
  %18 = load i64, ptr %16, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  %21 = load i64, ptr %17, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  br i1 %20, label %24, label %28

24:                                               ; preds = %15
  br i1 %23, label %25, label %41

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %16, i64 0, i32 3
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %17, i64 0, i32 3
  br label %32

28:                                               ; preds = %15
  br i1 %23, label %41, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %31 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 2
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %26, %25 ], [ %30, %29 ]
  %34 = phi ptr [ %27, %25 ], [ %31, %29 ]
  %35 = load i32, ptr %34, align 4, !tbaa !8
  %36 = load i32, ptr %33, align 4, !tbaa !8
  %37 = icmp ult i32 %36, %35
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = icmp ugt i32 %36, %35
  %40 = zext i1 %39 to i32
  br label %41

41:                                               ; preds = %38, %32, %28, %24, %13, %2
  %42 = phi i32 [ -1, %2 ], [ 1, %13 ], [ -1, %24 ], [ 1, %28 ], [ -1, %32 ], [ %40, %38 ]
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stack_var_conflict_p(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stack_var, ptr %3, i64 %1, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = trunc i64 %1 to i32
  %13 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %5, i32 noundef %12) #21
  %14 = trunc i32 %13 to i8
  br label %15

15:                                               ; preds = %2, %7, %11
  %16 = phi i8 [ %14, %11 ], [ 0, %7 ], [ 0, %2 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @union_stack_vars(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %6 = icmp eq i64 %1, -1
  br i1 %6, label %13, label %7

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %11, %7 ], [ %1, %2 ]
  %9 = getelementptr inbounds %struct.stack_var, ptr %5, i64 %8, i32 4
  store i64 %0, ptr %9, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.stack_var, ptr %5, i64 %8, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !40
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %7, !llvm.loop !189

13:                                               ; preds = %7, %2
  %14 = phi i64 [ -1, %2 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct.stack_var, ptr %5, i64 %0, i32 5
  %16 = load i64, ptr %15, align 8, !tbaa !40
  %17 = getelementptr inbounds %struct.stack_var, ptr %5, i64 %14, i32 5
  store i64 %16, ptr %17, align 8, !tbaa !40
  store i64 %1, ptr %15, align 8, !tbaa !40
  %18 = getelementptr inbounds %struct.stack_var, ptr %5, i64 %0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !49
  %20 = getelementptr inbounds %struct.stack_var, ptr %5, i64 %1, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !49
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 %21, ptr %18, align 8, !tbaa !49
  br label %24

24:                                               ; preds = %23, %13
  %25 = getelementptr inbounds %struct.stack_var, ptr %5, i64 %1, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %28

28:                                               ; preds = %24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %26, ptr noundef nonnull %4) #20
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !11
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %28, %31
  %32 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %33 = load i32, ptr %4, align 4, !tbaa !12
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.stack_var, ptr %32, i64 %34, i32 4
  %36 = load i64, ptr %35, align 8, !tbaa !36
  tail call fastcc void @add_stack_var_conflict(i64 noundef %0, i64 noundef %36) #20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %37 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %31, !llvm.loop !190

39:                                               ; preds = %31
  %40 = load ptr, ptr %25, align 8, !tbaa !43
  br label %41

41:                                               ; preds = %39, %28
  %42 = phi ptr [ %40, %39 ], [ %26, %28 ]
  tail call void @bitmap_obstack_free(ptr noundef %42) #21
  store ptr null, ptr %25, align 8, !tbaa !43
  br label %43

43:                                               ; preds = %41, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_alias_info_with_stack_vars() unnamed_addr #0 {
  %1 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %125, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  br label %5

5:                                                ; preds = %3, %73
  %6 = phi i64 [ %74, %73 ], [ %1, %3 ]
  %7 = phi ptr [ %75, %73 ], [ %4, %3 ]
  %8 = phi ptr [ %77, %73 ], [ null, %3 ]
  %9 = phi i64 [ %78, %73 ], [ 0, %3 ]
  %10 = phi ptr [ %76, %73 ], [ null, %3 ]
  %11 = getelementptr inbounds %struct.stack_var, ptr %7, i64 %9, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !36
  %13 = icmp eq i64 %12, %9
  br i1 %13, label %14, label %73

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.stack_var, ptr %7, i64 %9, i32 5
  %16 = load i64, ptr %15, align 8, !tbaa !40
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %73, label %18

18:                                               ; preds = %14
  %19 = icmp eq ptr %8, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = tail call ptr @pointer_map_create() #21
  %22 = tail call ptr @pointer_map_create() #21
  %23 = load ptr, ptr @cfun, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  %26 = getelementptr inbounds %struct.gimple_df, ptr %25, i64 0, i32 6
  store ptr %22, ptr %26, align 8, !tbaa !191
  br label %27

27:                                               ; preds = %20, %18
  %28 = phi ptr [ %8, %18 ], [ %21, %20 ]
  %29 = icmp eq ptr %10, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !14
  %32 = tail call ptr @create_tmp_var(ptr noundef %31, ptr noundef null) #21
  br label %33

33:                                               ; preds = %27, %30
  %34 = phi ptr [ %32, %30 ], [ %10, %27 ]
  %35 = tail call fastcc ptr @make_ssa_name(ptr noundef %34) #20
  %36 = tail call ptr @bitmap_gc_alloc_stat() #21
  %37 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  br label %38

38:                                               ; preds = %33, %54
  %39 = phi ptr [ %65, %54 ], [ %37, %33 ]
  %40 = phi i64 [ %67, %54 ], [ %9, %33 ]
  %41 = getelementptr inbounds %struct.stack_var, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !39
  %43 = getelementptr inbounds %struct.tree_decl_minimal, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !8
  %45 = load i64, ptr %42, align 8
  %46 = and i64 %45, 65535
  %47 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !12
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %53

50:                                               ; preds = %38
  %51 = tail call ptr @referenced_var_lookup(i32 noundef %44) #21
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 508, ptr noundef nonnull @.str.1) #21
  br label %54

54:                                               ; preds = %50, %53
  %55 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %36, i32 noundef %44) #21
  %56 = zext i32 %44 to i64
  %57 = inttoptr i64 %56 to ptr
  %58 = tail call ptr @pointer_map_insert(ptr noundef %28, ptr noundef %57) #21
  store ptr %36, ptr %58, align 8, !tbaa !14
  %59 = load ptr, ptr @cfun, align 8, !tbaa !14
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !95
  %62 = getelementptr inbounds %struct.gimple_df, ptr %61, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !191
  %64 = tail call ptr @pointer_map_insert(ptr noundef %63, ptr noundef nonnull %42) #21
  store ptr %35, ptr %64, align 8, !tbaa !14
  %65 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %66 = getelementptr inbounds %struct.stack_var, ptr %65, i64 %40, i32 5
  %67 = load i64, ptr %66, align 8, !tbaa !40
  %68 = icmp eq i64 %67, -1
  br i1 %68, label %69, label %38, !llvm.loop !192

69:                                               ; preds = %54
  %70 = tail call ptr @get_ptr_info(ptr noundef %35) #21
  tail call void @pt_solution_set(ptr noundef %70, ptr noundef %36) #21
  %71 = load ptr, ptr @stack_vars, align 8, !tbaa !14
  %72 = load i64, ptr @stack_vars_num, align 8, !tbaa !16
  br label %73

73:                                               ; preds = %5, %14, %69
  %74 = phi i64 [ %72, %69 ], [ %6, %14 ], [ %6, %5 ]
  %75 = phi ptr [ %71, %69 ], [ %7, %14 ], [ %7, %5 ]
  %76 = phi ptr [ %34, %69 ], [ %10, %14 ], [ %10, %5 ]
  %77 = phi ptr [ %28, %69 ], [ %8, %14 ], [ %8, %5 ]
  %78 = add nuw i64 %9, 1
  %79 = icmp ult i64 %78, %74
  br i1 %79, label %5, label %80, !llvm.loop !193

80:                                               ; preds = %73
  %81 = icmp eq ptr %77, null
  br i1 %81, label %125, label %82

82:                                               ; preds = %80
  %83 = tail call ptr @pointer_set_create() #21
  %84 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  %85 = load ptr, ptr @cfun, align 8, !tbaa !14
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !95
  %88 = getelementptr inbounds %struct.gimple_df, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !114
  %90 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %89) #20
  %91 = icmp ugt i32 %90, 1
  br i1 %91, label %92, label %118

92:                                               ; preds = %82, %109
  %93 = phi ptr [ %110, %109 ], [ %85, %82 ]
  %94 = phi ptr [ %115, %109 ], [ %89, %82 ]
  %95 = phi i32 [ %111, %109 ], [ 1, %82 ]
  %96 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %94, i32 noundef %95) #20
  %97 = icmp eq ptr %96, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !8
  %101 = load i64, ptr %100, align 8
  %102 = trunc i64 %101 to i16
  switch i16 %102, label %109 [
    i16 10, label %103
    i16 12, label %103
  ]

103:                                              ; preds = %98, %98
  %104 = getelementptr inbounds %struct.tree_ssa_name, ptr %96, i64 0, i32 4
  %105 = load ptr, ptr %104, align 8, !tbaa !8
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  tail call fastcc void @add_partitioned_vars_to_ptset(ptr noundef nonnull %105, ptr noundef nonnull %77, ptr noundef %83, ptr noundef %84) #20
  %108 = load ptr, ptr @cfun, align 8, !tbaa !14
  br label %109

109:                                              ; preds = %98, %107, %103, %92
  %110 = phi ptr [ %93, %98 ], [ %108, %107 ], [ %93, %103 ], [ %93, %92 ]
  %111 = add nuw i32 %95, 1
  %112 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !95
  %114 = getelementptr inbounds %struct.gimple_df, ptr %113, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !114
  %116 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %115) #20
  %117 = icmp ult i32 %111, %116
  br i1 %117, label %92, label %118, !llvm.loop !194

118:                                              ; preds = %109, %82
  %119 = phi ptr [ %87, %82 ], [ %113, %109 ]
  %120 = getelementptr inbounds %struct.gimple_df, ptr %119, i64 0, i32 4
  tail call fastcc void @add_partitioned_vars_to_ptset(ptr noundef nonnull %120, ptr noundef nonnull %77, ptr noundef %83, ptr noundef %84) #20
  %121 = load ptr, ptr @cfun, align 8, !tbaa !14
  %122 = getelementptr inbounds %struct.function, ptr %121, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !95
  %124 = getelementptr inbounds %struct.gimple_df, ptr %123, i64 0, i32 5
  tail call fastcc void @add_partitioned_vars_to_ptset(ptr noundef nonnull %124, ptr noundef nonnull %77, ptr noundef %83, ptr noundef %84) #20
  tail call void @pointer_set_destroy(ptr noundef %83) #21
  tail call void @pointer_map_destroy(ptr noundef nonnull %77) #21
  tail call void @bitmap_obstack_free(ptr noundef %84) #21
  br label %125

125:                                              ; preds = %0, %118, %80
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = load ptr, ptr %1, align 8, !tbaa !195
  store ptr %4, ptr %0, align 8, !tbaa !197
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !199
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !197
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !200
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !202
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !203
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !203
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !12
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !204

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !12
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !12
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !202
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !197
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !202
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !16
  store i64 %35, ptr %3, align 8, !tbaa !203
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !12
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !12
  %40 = load i32, ptr %23, align 8, !tbaa !202
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !202
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !205

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !206
  store ptr %44, ptr %0, align 8, !tbaa !197
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !200
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !12
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !203
  store i32 %16, ptr %1, align 4, !tbaa !12
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !203
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !203
  %6 = load i32, ptr %1, align 4, !tbaa !12
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !14
  %3 = tail call ptr @make_ssa_name_fn(ptr noundef %2, ptr noundef %0, ptr noundef null) #21
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_ptr_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pt_solution_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !207
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_partitioned_vars_to_ptset(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %7 = load i8, ptr %0, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !209
  %13 = icmp eq ptr %12, null
  br i1 %13, label %45, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @pointer_set_insert(ptr noundef %2, ptr noundef nonnull %12) #21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %14
  tail call void @bitmap_clear(ptr noundef %3) #21
  %18 = load ptr, ptr %11, align 8, !tbaa !209
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %18, ptr noundef nonnull %6) #20
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %3, null
  br label %23

23:                                               ; preds = %21, %36
  %24 = load i32, ptr %6, align 4, !tbaa !12
  br i1 %22, label %28, label %25

25:                                               ; preds = %23
  %26 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %24) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25, %23
  %29 = zext i32 %24 to i64
  %30 = inttoptr i64 %29 to ptr
  %31 = tail call ptr @pointer_map_contains(ptr noundef %1, ptr noundef %30) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %31, align 8, !tbaa !14
  %35 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %3, ptr noundef %34) #21
  br label %36

36:                                               ; preds = %25, %28, %33
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %37 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !11
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %23, !llvm.loop !210

39:                                               ; preds = %36, %17
  %40 = load ptr, ptr %3, align 8, !tbaa !195
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %11, align 8, !tbaa !209
  %44 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %43, ptr noundef nonnull %3) #21
  br label %45

45:                                               ; preds = %39, %42, %4, %10, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret void
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !211
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @init_rtl_bb_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @gimple_block_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @emit_jump(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @label_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #3

; Function Attrs: optsize
declare void @redirect_edge_succ(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_bb_for_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #20
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 687, ptr noundef nonnull @.str.1) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @gimple_seq_last(ptr noundef %1) #20
  store ptr %3, ptr %0, align 8, !tbaa !156
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !158
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !160
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #20
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #20, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 645, ptr noundef nonnull @.str.1) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #20
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #20
  store ptr %3, ptr %0, align 8, !tbaa !156
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !158
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !160
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #20
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !159
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_gimple_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @input_location, align 4, !tbaa !12
  %3 = tail call ptr @get_last_insn() #21
  %4 = load ptr, ptr @cfun, align 8, !tbaa !14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1971, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  store i32 %11, ptr @input_location, align 4, !tbaa !12
  tail call void @set_curr_insn_source_location(i32 noundef %11) #21
  %12 = tail call fastcc ptr @gimple_block(ptr noundef %0) #20
  tail call void @set_curr_insn_block(ptr noundef %12) #21
  br label %13

13:                                               ; preds = %10, %7
  tail call fastcc void @expand_gimple_stmt_1(ptr noundef %0) #20
  tail call void @free_temp_slots() #21
  store i32 %2, ptr @input_location, align 4, !tbaa !12
  %14 = tail call i32 @lookup_stmt_eh_lp(ptr noundef %0) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @next_real_insn(ptr noundef %3) #21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %33
  %20 = phi ptr [ %34, %33 ], [ %17, %16 ]
  %21 = tail call ptr @find_reg_note(ptr noundef nonnull %20, i32 noundef 25, ptr noundef null) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 65534
  %28 = icmp eq i32 %27, 24
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = tail call zeroext i8 @insn_could_throw_p(ptr noundef nonnull %20) #21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @make_reg_eh_region_note(ptr noundef nonnull %20, i32 noundef 0, i32 noundef %14) #21
  br label %33

33:                                               ; preds = %23, %19, %29, %32
  %34 = tail call ptr @next_real_insn(ptr noundef nonnull %20) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !213

36:                                               ; preds = %33, %16, %13
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @emit_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !12
  %13 = and i32 %12, 128
  %14 = or disjoint i32 %13, 2
  tail call void @print_gimple_stmt(ptr noundef %11, ptr noundef %0, i32 noundef 0, i32 noundef %14) #21
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !14
  %18 = icmp eq ptr %1, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !8
  br label %22

22:                                               ; preds = %9, %19
  %23 = phi ptr [ %21, %19 ], [ null, %9 ]
  tail call void @print_rtl(ptr noundef %17, ptr noundef %23) #21
  br label %24

24:                                               ; preds = %22, %5, %2
  ret void
}

; Function Attrs: optsize
declare i32 @get_curr_insn_source_location() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_curr_insn_block() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 1) #20
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !214
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i8, ptr %0, align 8, !tbaa !216
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_gimple_for_ssa_name(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8, !tbaa !217
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !8
  %7 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %6) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !8
  br label %12

12:                                               ; preds = %1, %4, %9
  %13 = phi ptr [ %11, %9 ], [ null, %4 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !218
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !221
  store ptr %6, ptr %0, align 8, !tbaa !222
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !11
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !222
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !218
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #20, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = icmp ult i32 %5, 65536
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !222
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !221
  store ptr %4, ptr %0, align 8, !tbaa !222
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #20, !range !11
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_tei_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_debug_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !218
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !221
  store ptr %6, ptr %0, align 8, !tbaa !222
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !222
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !8
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !222
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !218
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !222
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !223
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !222
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !224
  store ptr %1, ptr %4, align 8, !tbaa !14
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  store ptr %3, ptr %0, align 8, !tbaa !222
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #20, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !221
  store ptr %8, ptr %2, align 8, !tbaa !223
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #21
  tail call void @update_stmt_operands(ptr noundef %0) #21
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !225
  store ptr %4, ptr %0, align 8, !tbaa !222
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !226
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #20
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !222
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !8
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !227
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #20
  %8 = load ptr, ptr %3, align 8, !tbaa !228
  store ptr %8, ptr %2, align 8, !tbaa !227
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !230
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !231
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #20
  %17 = load ptr, ptr %11, align 8, !tbaa !233
  store ptr %17, ptr %10, align 8, !tbaa !230
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !216
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @expand_gimple_cond(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = tail call fastcc i32 @gimple_cond_code(ptr noundef %1) #20, !range !6
  %6 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #20
  %7 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #20
  %8 = tail call fastcc zeroext i8 @gimple_cond_single_var_p(ptr noundef %1) #20, !range !11
  %9 = icmp ne i8 %8, 0
  %10 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 1), align 8
  %11 = icmp ne ptr %10, null
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %58

13:                                               ; preds = %2
  %14 = load i64, ptr %6, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %58

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !8
  %20 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %10, i32 noundef %19) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %58, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !8
  %25 = tail call fastcc i32 @gimple_code(ptr noundef %24) #20, !range !7
  %26 = icmp eq i32 %25, 6
  br i1 %26, label %27, label %58

27:                                               ; preds = %22
  %28 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %24) #20, !range !6
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !12
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %54, label %33

33:                                               ; preds = %27
  %34 = tail call zeroext i8 @optimize_insn_for_speed_p() #21
  %35 = icmp eq i8 %34, 0
  %36 = load i32, ptr @ix86_branch_cost, align 4
  %37 = icmp slt i32 %36, 4
  %38 = select i1 %35, i1 true, i1 %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = trunc i32 %28 to i16
  switch i16 %40, label %58 [
    i16 89, label %41
    i16 93, label %54
    i16 94, label %53
    i16 87, label %53
  ]

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !8
  %44 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1023
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %24) #20
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 23
  br i1 %52, label %58, label %54

53:                                               ; preds = %39, %39
  br label %54

54:                                               ; preds = %48, %39, %27, %53
  %55 = phi i32 [ 92, %53 ], [ %28, %27 ], [ 91, %39 ], [ 91, %48 ]
  %56 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %24) #20
  %57 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %24) #20
  br label %58

58:                                               ; preds = %54, %48, %41, %39, %22, %33, %17, %13, %2
  %59 = phi i32 [ %5, %17 ], [ %5, %13 ], [ %5, %2 ], [ %5, %22 ], [ %5, %33 ], [ %5, %39 ], [ %5, %41 ], [ %5, %48 ], [ %55, %54 ]
  %60 = phi ptr [ %6, %17 ], [ %6, %13 ], [ %6, %2 ], [ %6, %22 ], [ %6, %33 ], [ %6, %39 ], [ %6, %41 ], [ %6, %48 ], [ %56, %54 ]
  %61 = phi ptr [ %7, %17 ], [ %7, %13 ], [ %7, %2 ], [ %7, %22 ], [ %7, %33 ], [ %7, %39 ], [ %7, %41 ], [ %7, %48 ], [ %57, %54 ]
  %62 = tail call ptr @get_last_insn() #21
  call void @extract_true_false_edges_from_block(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %63 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %1) #20, !range !11
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = call fastcc i32 @gimple_location(ptr noundef %1) #20
  call void @set_curr_insn_source_location(i32 noundef %66) #21
  %67 = call fastcc ptr @gimple_block(ptr noundef %1) #20
  call void @set_curr_insn_block(ptr noundef %67) #21
  br label %68

68:                                               ; preds = %65, %58
  %69 = load ptr, ptr %3, align 8, !tbaa !14
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !88
  %72 = and i32 %71, -1025
  store i32 %72, ptr %70, align 8, !tbaa !88
  %73 = load ptr, ptr %4, align 8, !tbaa !14
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 7
  %75 = load i32, ptr %74, align 8, !tbaa !88
  %76 = and i32 %75, -2049
  store i32 %76, ptr %74, align 8, !tbaa !88
  %77 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !120
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !91
  %81 = icmp eq ptr %78, %80
  %82 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !120
  br i1 %81, label %84, label %107

84:                                               ; preds = %68
  %85 = call fastcc ptr @label_rtx_for_bb(ptr noundef %83) #20
  %86 = load ptr, ptr %3, align 8, !tbaa !14
  %87 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 8
  %88 = load i32, ptr %87, align 4, !tbaa !123
  call void @jumpif_1(i32 noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %85, i32 noundef %88) #21
  call fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef %1, ptr noundef %62) #20
  %89 = load ptr, ptr %3, align 8, !tbaa !14
  %90 = getelementptr inbounds %struct.edge_def, ptr %89, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !136
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %84
  call void @set_curr_insn_source_location(i32 noundef %91) #21
  %94 = load ptr, ptr %3, align 8, !tbaa !14
  %95 = getelementptr inbounds %struct.edge_def, ptr %94, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !137
  call void @set_curr_insn_block(ptr noundef %96) #21
  %97 = call i32 @curr_insn_locator() #21
  %98 = load ptr, ptr %3, align 8, !tbaa !14
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 5
  store i32 %97, ptr %99, align 8, !tbaa !136
  br label %100

100:                                              ; preds = %93, %84
  %101 = phi ptr [ %98, %93 ], [ %89, %84 ]
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 4
  store ptr null, ptr %102, align 8, !tbaa !137
  %103 = load ptr, ptr %4, align 8, !tbaa !14
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !88
  %106 = or i32 %105, 1
  store i32 %106, ptr %104, align 8, !tbaa !88
  call fastcc void @maybe_cleanup_end_of_block(ptr noundef %103, ptr noundef %62) #20
  br label %220

107:                                              ; preds = %68
  %108 = icmp eq ptr %83, %80
  br i1 %108, label %109, label %132

109:                                              ; preds = %107
  %110 = call fastcc ptr @label_rtx_for_bb(ptr noundef %78) #20
  %111 = load ptr, ptr %4, align 8, !tbaa !14
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 8
  %113 = load i32, ptr %112, align 4, !tbaa !123
  call void @jumpifnot_1(i32 noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %110, i32 noundef %113) #21
  call fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef %1, ptr noundef %62) #20
  %114 = load ptr, ptr %4, align 8, !tbaa !14
  %115 = getelementptr inbounds %struct.edge_def, ptr %114, i64 0, i32 5
  %116 = load i32, ptr %115, align 8, !tbaa !136
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %109
  call void @set_curr_insn_source_location(i32 noundef %116) #21
  %119 = load ptr, ptr %4, align 8, !tbaa !14
  %120 = getelementptr inbounds %struct.edge_def, ptr %119, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !137
  call void @set_curr_insn_block(ptr noundef %121) #21
  %122 = call i32 @curr_insn_locator() #21
  %123 = load ptr, ptr %4, align 8, !tbaa !14
  %124 = getelementptr inbounds %struct.edge_def, ptr %123, i64 0, i32 5
  store i32 %122, ptr %124, align 8, !tbaa !136
  br label %125

125:                                              ; preds = %118, %109
  %126 = phi ptr [ %123, %118 ], [ %114, %109 ]
  %127 = getelementptr inbounds %struct.edge_def, ptr %126, i64 0, i32 4
  store ptr null, ptr %127, align 8, !tbaa !137
  %128 = load ptr, ptr %3, align 8, !tbaa !14
  %129 = getelementptr inbounds %struct.edge_def, ptr %128, i64 0, i32 7
  %130 = load i32, ptr %129, align 8, !tbaa !88
  %131 = or i32 %130, 1
  store i32 %131, ptr %129, align 8, !tbaa !88
  call fastcc void @maybe_cleanup_end_of_block(ptr noundef %128, ptr noundef %62) #20
  br label %220

132:                                              ; preds = %107
  %133 = call fastcc ptr @label_rtx_for_bb(ptr noundef %83) #20
  %134 = load ptr, ptr %3, align 8, !tbaa !14
  %135 = getelementptr inbounds %struct.edge_def, ptr %134, i64 0, i32 8
  %136 = load i32, ptr %135, align 4, !tbaa !123
  call void @jumpif_1(i32 noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %133, i32 noundef %136) #21
  %137 = call ptr @get_last_insn() #21
  %138 = load ptr, ptr %4, align 8, !tbaa !14
  %139 = getelementptr inbounds %struct.edge_def, ptr %138, i64 0, i32 5
  %140 = load i32, ptr %139, align 8, !tbaa !136
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %132
  call void @set_curr_insn_source_location(i32 noundef %140) #21
  %143 = load ptr, ptr %4, align 8, !tbaa !14
  %144 = getelementptr inbounds %struct.edge_def, ptr %143, i64 0, i32 4
  %145 = load ptr, ptr %144, align 8, !tbaa !137
  call void @set_curr_insn_block(ptr noundef %145) #21
  %146 = call i32 @curr_insn_locator() #21
  %147 = load ptr, ptr %4, align 8, !tbaa !14
  %148 = getelementptr inbounds %struct.edge_def, ptr %147, i64 0, i32 5
  store i32 %146, ptr %148, align 8, !tbaa !136
  br label %149

149:                                              ; preds = %142, %132
  %150 = phi ptr [ %147, %142 ], [ %138, %132 ]
  %151 = getelementptr inbounds %struct.edge_def, ptr %150, i64 0, i32 4
  store ptr null, ptr %151, align 8, !tbaa !137
  %152 = getelementptr inbounds %struct.edge_def, ptr %150, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !120
  %154 = call fastcc ptr @label_rtx_for_bb(ptr noundef %153) #20
  call void @emit_jump(ptr noundef %154) #21
  %155 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %156 = load ptr, ptr %155, align 8, !tbaa !8
  %157 = getelementptr inbounds %struct.rtl_bb_info, ptr %156, i64 0, i32 1
  store ptr %137, ptr %157, align 8, !tbaa !139
  %158 = load ptr, ptr %155, align 8, !tbaa !8
  %159 = getelementptr inbounds %struct.rtl_bb_info, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !139
  %161 = load i32, ptr %160, align 8
  %162 = and i32 %161, 65535
  %163 = icmp eq i32 %162, 11
  br i1 %163, label %164, label %167

164:                                              ; preds = %149
  %165 = getelementptr inbounds %struct.rtx_def, ptr %160, i64 0, i32 1, i32 0, i32 0, i64 1
  %166 = load ptr, ptr %165, align 8, !tbaa !8
  store ptr %166, ptr %159, align 8, !tbaa !139
  br label %167

167:                                              ; preds = %164, %149
  call void @update_bb_for_insn(ptr noundef nonnull %0) #21
  %168 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1, i32 0, i32 0, i64 2
  %169 = load ptr, ptr %168, align 8, !tbaa !8
  %170 = call ptr @get_last_insn() #21
  %171 = call ptr @create_basic_block(ptr noundef %169, ptr noundef %170, ptr noundef nonnull %0) #21
  %172 = load ptr, ptr %4, align 8, !tbaa !14
  %173 = getelementptr inbounds %struct.edge_def, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !120
  call void @redirect_edge_succ(ptr noundef %172, ptr noundef %171) #21
  %175 = load ptr, ptr %4, align 8, !tbaa !14
  %176 = getelementptr inbounds %struct.edge_def, ptr %175, i64 0, i32 7
  %177 = load i32, ptr %176, align 8, !tbaa !88
  %178 = or i32 %177, 1
  store i32 %178, ptr %176, align 8, !tbaa !88
  %179 = getelementptr inbounds %struct.edge_def, ptr %175, i64 0, i32 9
  %180 = load i64, ptr %179, align 8, !tbaa !124
  %181 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 8
  store i64 %180, ptr %181, align 8, !tbaa !122
  %182 = load ptr, ptr %175, align 8, !tbaa !146
  %183 = getelementptr inbounds %struct.basic_block_def, ptr %182, i64 0, i32 11
  %184 = load i32, ptr %183, align 8, !tbaa !121
  %185 = getelementptr inbounds %struct.edge_def, ptr %175, i64 0, i32 8
  %186 = load i32, ptr %185, align 4, !tbaa !123
  %187 = mul nsw i32 %186, %184
  %188 = add nsw i32 %187, 5000
  %189 = sdiv i32 %188, 10000
  %190 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 11
  store i32 %189, ptr %190, align 8, !tbaa !121
  %191 = call ptr @make_edge(ptr noundef %171, ptr noundef %174, i32 noundef 0) #21
  %192 = getelementptr inbounds %struct.edge_def, ptr %191, i64 0, i32 8
  store i32 10000, ptr %192, align 4, !tbaa !123
  %193 = load i64, ptr %181, align 8, !tbaa !122
  %194 = getelementptr inbounds %struct.edge_def, ptr %191, i64 0, i32 9
  store i64 %193, ptr %194, align 8, !tbaa !124
  %195 = getelementptr inbounds %struct.basic_block_def, ptr %171, i64 0, i32 7
  %196 = load ptr, ptr %195, align 8, !tbaa !8
  %197 = getelementptr inbounds %struct.rtl_bb_info, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !139
  %199 = load i32, ptr %198, align 8
  %200 = and i32 %199, 65535
  %201 = icmp eq i32 %200, 11
  br i1 %201, label %202, label %205

202:                                              ; preds = %167
  %203 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1, i32 0, i32 0, i64 1
  %204 = load ptr, ptr %203, align 8, !tbaa !8
  store ptr %204, ptr %197, align 8, !tbaa !139
  br label %205

205:                                              ; preds = %202, %167
  call void @update_bb_for_insn(ptr noundef nonnull %171) #21
  call fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef %1, ptr noundef %62) #20
  %206 = load ptr, ptr %3, align 8, !tbaa !14
  %207 = getelementptr inbounds %struct.edge_def, ptr %206, i64 0, i32 5
  %208 = load i32, ptr %207, align 8, !tbaa !136
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %205
  call void @set_curr_insn_source_location(i32 noundef %208) #21
  %211 = load ptr, ptr %3, align 8, !tbaa !14
  %212 = getelementptr inbounds %struct.edge_def, ptr %211, i64 0, i32 4
  %213 = load ptr, ptr %212, align 8, !tbaa !137
  call void @set_curr_insn_block(ptr noundef %213) #21
  %214 = call i32 @curr_insn_locator() #21
  %215 = load ptr, ptr %3, align 8, !tbaa !14
  %216 = getelementptr inbounds %struct.edge_def, ptr %215, i64 0, i32 5
  store i32 %214, ptr %216, align 8, !tbaa !136
  br label %217

217:                                              ; preds = %210, %205
  %218 = phi ptr [ %215, %210 ], [ %206, %205 ]
  %219 = getelementptr inbounds %struct.edge_def, ptr %218, i64 0, i32 4
  store ptr null, ptr %219, align 8, !tbaa !137
  br label %220

220:                                              ; preds = %217, %125, %100
  %221 = phi ptr [ null, %100 ], [ null, %125 ], [ %171, %217 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret ptr %221
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_has_value_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_value(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delink_stmt_imm_use(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #22
  %3 = tail call zeroext i8 @ssa_operands_active() #21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 5) #20
  %7 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5, %9
  %10 = phi ptr [ %11, %9 ], [ %6, %5 ]
  tail call fastcc void @delink_imm_use(ptr noundef %10) #20
  %11 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %2) #20
  %12 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %9, label %14, !llvm.loop !234

14:                                               ; preds = %9, %5, %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !7
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_tail_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 19
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_gimple_tailcall(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  %5 = tail call fastcc ptr @expand_gimple_stmt(ptr noundef %1) #20
  br label %6

6:                                                ; preds = %11, %3
  %7 = phi ptr [ %5, %3 ], [ %9, %11 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %9, align 8
  %13 = and i32 %12, 16842751
  %14 = icmp eq i32 %13, 16777226
  br i1 %14, label %16, label %6, !llvm.loop !235

15:                                               ; preds = %6
  tail call fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef %1, ptr noundef %5) #20
  store i8 1, ptr %2, align 1, !tbaa !8
  br label %136

16:                                               ; preds = %11
  tail call void @do_pending_stack_adjust() #21
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %18 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %17) #20
  store i32 0, ptr %4, align 8, !tbaa.struct !86
  %19 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !87
  %20 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %18) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %80, label %22

22:                                               ; preds = %16, %73
  %23 = phi ptr [ %74, %73 ], [ %18, %16 ]
  %24 = phi i32 [ %75, %73 ], [ 0, %16 ]
  %25 = phi ptr [ %78, %73 ], [ %20, %16 ]
  %26 = phi i64 [ %77, %73 ], [ 0, %16 ]
  %27 = phi i32 [ %76, %73 ], [ 0, %16 ]
  %28 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !88
  %30 = and i32 %29, 10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !120
  %35 = load ptr, ptr @cfun, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.function, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = getelementptr inbounds %struct.control_flow_graph, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !93
  %40 = icmp eq ptr %34, %39
  %41 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 9
  %42 = load i64, ptr %41, align 8, !tbaa !124
  br i1 %40, label %43, label %46

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 8
  %45 = load i32, ptr %44, align 4, !tbaa !123
  br label %66

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 8
  %48 = load i64, ptr %47, align 8, !tbaa !122
  %49 = sub nsw i64 %48, %42
  store i64 %49, ptr %47, align 8, !tbaa !122
  %50 = load ptr, ptr %25, align 8, !tbaa !146
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 11
  %52 = load i32, ptr %51, align 8, !tbaa !121
  %53 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 8
  %54 = load i32, ptr %53, align 4, !tbaa !123
  %55 = mul nsw i32 %54, %52
  %56 = add nsw i32 %55, 5000
  %57 = sdiv i32 %56, -10000
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 11
  %59 = load i32, ptr %58, align 8, !tbaa !121
  %60 = add i32 %57, %59
  store i32 %60, ptr %58, align 8, !tbaa !121
  %61 = icmp slt i64 %49, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %46
  store i64 0, ptr %47, align 8, !tbaa !122
  br label %63

63:                                               ; preds = %62, %46
  %64 = icmp slt i32 %60, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %63
  store i32 0, ptr %58, align 8, !tbaa !121
  br label %66

66:                                               ; preds = %43, %63, %65
  %67 = phi i32 [ %45, %43 ], [ %54, %63 ], [ %54, %65 ]
  %68 = add nsw i64 %42, %26
  %69 = add nsw i32 %67, %27
  tail call void @remove_edge(ptr noundef nonnull %25) #21
  br label %73

70:                                               ; preds = %22
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %71 = load i32, ptr %4, align 8
  %72 = load ptr, ptr %19, align 8
  br label %73

73:                                               ; preds = %70, %66
  %74 = phi ptr [ %72, %70 ], [ %23, %66 ]
  %75 = phi i32 [ %71, %70 ], [ %24, %66 ]
  %76 = phi i32 [ %27, %70 ], [ %69, %66 ]
  %77 = phi i64 [ %26, %70 ], [ %68, %66 ]
  %78 = tail call fastcc ptr @ei_safe_edge(i32 %75, ptr %74) #20
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %22, !llvm.loop !236

80:                                               ; preds = %73, %16
  %81 = phi i32 [ 0, %16 ], [ %76, %73 ]
  %82 = phi i64 [ 0, %16 ], [ %77, %73 ]
  %83 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %84 = load ptr, ptr %83, align 8, !tbaa !8
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 11
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2079, ptr noundef nonnull @.str.1) #21
  br label %89

89:                                               ; preds = %80, %88
  store i8 0, ptr %2, align 1, !tbaa !8
  %90 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 2
  %91 = load ptr, ptr %90, align 8, !tbaa !8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %103, label %93

93:                                               ; preds = %89, %99
  %94 = phi ptr [ %101, %99 ], [ %91, %89 ]
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 65535
  %97 = icmp eq i32 %96, 12
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i8 1, ptr %2, align 1, !tbaa !8
  br label %103

99:                                               ; preds = %93
  %100 = tail call ptr @delete_insn(ptr noundef nonnull %94) #21
  %101 = load ptr, ptr %90, align 8, !tbaa !8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %93, !llvm.loop !237

103:                                              ; preds = %99, %89, %98
  %104 = load ptr, ptr @cfun, align 8, !tbaa !14
  %105 = getelementptr inbounds %struct.function, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !64
  %107 = getelementptr inbounds %struct.control_flow_graph, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !93
  %109 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %108, i32 noundef 258) #21
  %110 = getelementptr inbounds %struct.edge_def, ptr %109, i64 0, i32 8
  %111 = load i32, ptr %110, align 4, !tbaa !123
  %112 = add nsw i32 %111, %81
  store i32 %112, ptr %110, align 4, !tbaa !123
  %113 = getelementptr inbounds %struct.edge_def, ptr %109, i64 0, i32 9
  %114 = load i64, ptr %113, align 8, !tbaa !124
  %115 = add nsw i64 %114, %82
  store i64 %115, ptr %113, align 8, !tbaa !124
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !8
  %118 = getelementptr inbounds %struct.rtl_bb_info, ptr %117, i64 0, i32 1
  store ptr %84, ptr %118, align 8, !tbaa !139
  tail call void @update_bb_for_insn(ptr noundef %0) #21
  %119 = load ptr, ptr %90, align 8, !tbaa !8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %134, label %121

121:                                              ; preds = %103
  %122 = tail call ptr @get_last_insn() #21
  %123 = tail call ptr @create_basic_block(ptr noundef nonnull %119, ptr noundef %122, ptr noundef nonnull %0) #21
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %123, i64 0, i32 7
  %125 = load ptr, ptr %124, align 8, !tbaa !8
  %126 = getelementptr inbounds %struct.rtl_bb_info, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !139
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 11
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1, i32 0, i32 0, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !8
  store ptr %133, ptr %126, align 8, !tbaa !139
  br label %134

134:                                              ; preds = %121, %131, %103
  %135 = phi ptr [ %123, %131 ], [ %123, %121 ], [ %0, %103 ]
  tail call fastcc void @maybe_dump_rtl_for_gimple_stmt(ptr noundef %1, ptr noundef %5) #20
  br label %136

136:                                              ; preds = %134, %15
  %137 = phi ptr [ %135, %134 ], [ null, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  ret ptr %137
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_ssa_def_operand(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #22
  %3 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %2, ptr noundef %0) #20
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %2) #20
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr null, ptr %3
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ null, %1 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #22
  ret ptr %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @label_rtx_for_bb(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !119
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @block_label(ptr noundef nonnull %0) #21
  br label %34

9:                                                ; preds = %1
  %10 = load ptr, ptr @lab_rtx_for_bb, align 8, !tbaa !14
  %11 = tail call ptr @pointer_map_contains(ptr noundef %10, ptr noundef nonnull %0) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !14
  br label %34

15:                                               ; preds = %9
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %0) #20
  %16 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %20 = tail call fastcc i32 @gimple_code(ptr noundef %19) #20, !range !7
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @gimple_label_label(ptr noundef %19) #20
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %23, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 256
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = tail call ptr @label_rtx(ptr noundef nonnull %23) #21
  br label %34

30:                                               ; preds = %22, %18, %15
  %31 = load ptr, ptr @lab_rtx_for_bb, align 8, !tbaa !14
  %32 = tail call ptr @pointer_map_insert(ptr noundef %31, ptr noundef nonnull %0) #21
  %33 = tail call ptr @gen_label_rtx() #21
  store ptr %33, ptr %32, align 8, !tbaa !14
  br label %34

34:                                               ; preds = %30, %28, %13, %7
  %35 = phi ptr [ %8, %7 ], [ %14, %13 ], [ %33, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret ptr %35
}

; Function Attrs: optsize
declare ptr @emit_insn_after_noloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @do_pending_stack_adjust() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !238
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_gimple_stmt_1(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.separate_ops, align 8
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !7
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %161 [
    i8 3, label %5
    i8 4, label %12
    i8 18, label %162
    i8 33, label %162
    i8 5, label %14
    i8 7, label %15
    i8 8, label %16
    i8 9, label %17
    i8 6, label %41
  ]

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %0) #20
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 30
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @expand_goto(ptr noundef nonnull %6) #21
  br label %162

11:                                               ; preds = %5
  tail call void @expand_computed_goto(ptr noundef nonnull %6) #21
  br label %162

12:                                               ; preds = %1
  %13 = tail call fastcc ptr @gimple_label_label(ptr noundef %0) #20
  tail call void @expand_label(ptr noundef %13) #21
  br label %162

14:                                               ; preds = %1
  tail call void @expand_case(ptr noundef %0) #21
  br label %162

15:                                               ; preds = %1
  tail call void @expand_asm_stmt(ptr noundef %0) #21
  br label %162

16:                                               ; preds = %1
  tail call fastcc void @expand_call_stmt(ptr noundef %0) #20
  br label %162

17:                                               ; preds = %1
  %18 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @global_trees, align 16, !tbaa !14
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @current_function_decl, align 8, !tbaa !14
  %25 = getelementptr inbounds %struct.tree_decl_non_common, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !8
  %27 = icmp eq ptr %18, %26
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = load i64, ptr %18, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 36
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1841, ptr noundef nonnull @.str.1) #21
  br label %33

33:                                               ; preds = %32, %28
  %34 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !8
  %36 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %35, ptr noundef %26, ptr noundef nonnull %18) #21
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %17, %33
  tail call void @expand_null_return() #21
  br label %162

39:                                               ; preds = %23, %20, %33
  %40 = phi ptr [ %36, %33 ], [ %18, %20 ], [ %18, %23 ]
  tail call void @expand_return(ptr noundef nonnull %40) #21
  br label %162

41:                                               ; preds = %1
  %42 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !6
  %48 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %47) #20, !range !7
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %73

50:                                               ; preds = %46, %41
  %51 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %52 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !6
  %53 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %52) #20, !range !7
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1873, ptr noundef nonnull @.str.1) #21
  br label %56

56:                                               ; preds = %50, %55
  %57 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !11
  %58 = icmp ne i8 %57, 0
  %59 = icmp ne ptr %51, null
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i64, ptr %51, align 8
  %63 = and i64 %62, 65535
  %64 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !12
  %66 = add i32 %65, -4
  %67 = icmp ult i32 %66, 7
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  %70 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 0, i32 1
  store i32 %69, ptr %70, align 8, !tbaa !8
  br label %71

71:                                               ; preds = %68, %61, %56
  %72 = tail call fastcc zeroext i8 @gimple_assign_nontemporal_move_p(ptr noundef %0) #20, !range !11
  tail call void @expand_assignment(ptr noundef nonnull %42, ptr noundef %51, i8 noundef zeroext %72) #21
  br label %162

73:                                               ; preds = %46
  %74 = tail call fastcc zeroext i8 @gimple_assign_nontemporal_move_p(ptr noundef %0) #20, !range !11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #22
  %75 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %42, i32 noundef 0, i32 noundef 5) #20
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 268500991
  %78 = icmp eq i32 %77, 268435495
  %79 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !6
  store i32 %79, ptr %2, align 8, !tbaa !239
  %80 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !8
  %82 = getelementptr inbounds %struct.separate_ops, ptr %2, i64 0, i32 1
  store ptr %81, ptr %82, align 8, !tbaa !241
  %83 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !6
  %84 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %83) #20, !range !7
  %85 = trunc i32 %84 to i8
  switch i8 %85, label %92 [
    i8 1, label %86
    i8 2, label %89
  ]

86:                                               ; preds = %73
  %87 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %88 = getelementptr inbounds %struct.separate_ops, ptr %2, i64 0, i32 3
  store ptr %87, ptr %88, align 8, !tbaa !242
  br label %89

89:                                               ; preds = %73, %86
  %90 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %91 = getelementptr inbounds %struct.separate_ops, ptr %2, i64 0, i32 2
  store ptr %90, ptr %91, align 8, !tbaa !243
  br label %93

92:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1901, ptr noundef nonnull @.str.1) #21
  br label %93

93:                                               ; preds = %92, %89
  %94 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  %95 = getelementptr inbounds %struct.separate_ops, ptr %2, i64 0, i32 5
  store i32 %94, ptr %95, align 8, !tbaa !244
  %96 = icmp ne i8 %74, 0
  %97 = or i1 %96, %78
  %98 = select i1 %97, ptr null, ptr %75
  %99 = load i32, ptr %75, align 8
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 255
  %102 = call ptr @expand_expr_real_2(ptr noundef nonnull %2, ptr noundef %98, i32 noundef %101, i32 noundef 0) #21
  %103 = icmp eq ptr %102, %75
  br i1 %103, label %160, label %104

104:                                              ; preds = %93
  br i1 %78, label %105, label %151

105:                                              ; preds = %104
  %106 = load i32, ptr %75, align 8
  %107 = and i32 %106, 134217728
  %108 = icmp eq i32 %107, 0
  %109 = lshr i32 %106, 26
  %110 = and i32 %109, 1
  %111 = select i1 %108, i32 %110, i32 -1
  %112 = load i32, ptr %102, align 8
  %113 = and i32 %112, 65535
  %114 = zext nneg i32 %113 to i64
  %115 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !12
  %117 = icmp eq i32 %116, 9
  %118 = and i32 %112, 16711680
  %119 = icmp eq i32 %118, 0
  %120 = and i1 %117, %119
  br i1 %120, label %121, label %147

121:                                              ; preds = %105
  %122 = lshr i32 %106, 16
  %123 = and i32 %122, 255
  %124 = load ptr, ptr %82, align 8, !tbaa !241
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 14
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = call i32 @vector_type_mode(ptr noundef nonnull %124) #21
  br label %135

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.tree_type, ptr %124, i64 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  br label %135

135:                                              ; preds = %130, %128
  %136 = phi i32 [ %129, %128 ], [ %134, %130 ]
  %137 = call ptr @convert_modes(i32 noundef %123, i32 noundef %136, ptr noundef nonnull %102, i32 noundef %111) #21
  %138 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !8
  %140 = load i32, ptr %139, align 8
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  %143 = load i32, ptr %75, align 8
  %144 = lshr i32 %143, 16
  %145 = and i32 %144, 255
  %146 = call ptr @convert_modes(i32 noundef %142, i32 noundef %145, ptr noundef %137, i32 noundef %111) #21
  br label %147

147:                                              ; preds = %135, %105
  %148 = phi ptr [ %146, %135 ], [ %102, %105 ]
  %149 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !8
  call void @convert_move(ptr noundef %150, ptr noundef %148, i32 noundef %111) #21
  br label %160

151:                                              ; preds = %104
  br i1 %96, label %152, label %155

152:                                              ; preds = %151
  %153 = call zeroext i8 @emit_storent_insn(ptr noundef nonnull %75, ptr noundef %102) #21
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152, %151
  %156 = call ptr @force_operand(ptr noundef %102, ptr noundef nonnull %75) #21
  %157 = icmp eq ptr %156, %75
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = call ptr @emit_move_insn(ptr noundef nonnull %75, ptr noundef %156) #21
  br label %160

160:                                              ; preds = %147, %155, %158, %152, %93
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #22
  br label %162

161:                                              ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1943, ptr noundef nonnull @.str.1) #21
  br label %162

162:                                              ; preds = %71, %160, %38, %39, %1, %1, %10, %11, %161, %16, %15, %14, %12
  ret void
}

; Function Attrs: optsize
declare void @free_temp_slots() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @lookup_stmt_eh_lp(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @next_real_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @insn_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @make_reg_eh_region_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare void @expand_goto(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @expand_computed_goto(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @expand_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare void @expand_case(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @expand_asm_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_call_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #20
  %3 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %4 = add i32 %3, 3
  %5 = tail call ptr @build_vl_exp_stat(i32 noundef 59, i32 noundef %4) #21
  %6 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  store ptr %6, ptr %7, align 8, !tbaa !8
  %8 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_function_decl, ptr %8, i64 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 6144
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i1 [ true, %1 ], [ %14, %10 ]
  %17 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #20
  %18 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !8
  %19 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #20
  %20 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !8
  %21 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %15, %39
  %24 = phi i64 [ %43, %39 ], [ 0, %15 ]
  %25 = trunc i64 %24 to i32
  %26 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %25) #20
  br i1 %16, label %39, label %27

27:                                               ; preds = %23
  %28 = load i64, ptr %26, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = tail call fastcc ptr @get_gimple_for_ssa_name(ptr noundef nonnull %26) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %32) #20, !range !6
  %36 = icmp eq i32 %35, 121
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef nonnull %32) #20
  br label %39

39:                                               ; preds = %37, %34, %31, %27, %23
  %40 = phi ptr [ %38, %37 ], [ %26, %34 ], [ %26, %31 ], [ %26, %27 ], [ %26, %23 ]
  %41 = add nuw nsw i64 %24, 3
  %42 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3, i64 %41
  store ptr %40, ptr %42, align 8, !tbaa !8
  %43 = add nuw nsw i64 %24, 1
  %44 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %45 = zext i32 %44 to i64
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %23, label %47, !llvm.loop !245

47:                                               ; preds = %39, %15
  %48 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #21
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i64, ptr %5, align 8
  %52 = or i64 %51, 65536
  store i64 %52, ptr %5, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = tail call fastcc zeroext i8 @gimple_call_nothrow_p(ptr noundef %0) #20, !range !11
  %55 = icmp eq i8 %54, 0
  %56 = load i64, ptr %5, align 8
  br i1 %55, label %59, label %57

57:                                               ; preds = %53
  %58 = or i64 %56, 33554432
  store i64 %58, ptr %5, align 8
  br label %59

59:                                               ; preds = %57, %53
  %60 = phi i64 [ %58, %57 ], [ %56, %53 ]
  %61 = tail call fastcc zeroext i8 @gimple_call_tail_p(ptr noundef %0) #20, !range !11
  %62 = zext nneg i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 18
  %64 = and i64 %60, -262145
  %65 = or disjoint i64 %64, %63
  store i64 %65, ptr %5, align 8
  %66 = tail call fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr noundef %0) #20, !range !11
  %67 = zext nneg i8 %66 to i64
  %68 = shl nuw nsw i64 %67, 28
  %69 = and i64 %65, -268435457
  %70 = or disjoint i64 %68, %69
  store i64 %70, ptr %5, align 8
  %71 = tail call fastcc zeroext i8 @gimple_call_from_thunk_p(ptr noundef %0) #20, !range !11
  %72 = zext nneg i8 %71 to i64
  %73 = shl nuw nsw i64 %72, 29
  %74 = and i64 %70, -536870913
  %75 = or disjoint i64 %74, %73
  store i64 %75, ptr %5, align 8
  %76 = tail call fastcc zeroext i8 @gimple_call_cannot_inline_p(ptr noundef %0) #20, !range !11
  %77 = zext nneg i8 %76 to i64
  %78 = shl nuw nsw i64 %77, 26
  %79 = and i64 %75, -67108865
  %80 = or disjoint i64 %79, %78
  store i64 %80, ptr %5, align 8
  %81 = tail call fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr noundef %0) #20, !range !11
  %82 = zext nneg i8 %81 to i64
  %83 = shl nuw nsw i64 %82, 27
  %84 = and i64 %80, -134217729
  %85 = or disjoint i64 %84, %83
  store i64 %85, ptr %5, align 8
  %86 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  %87 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 1
  store i32 %86, ptr %87, align 8, !tbaa !8
  %88 = tail call fastcc ptr @gimple_block(ptr noundef %0) #20
  %89 = tail call ptr @tree_block(ptr noundef nonnull %5) #21
  store ptr %88, ptr %89, align 8, !tbaa !14
  %90 = icmp eq ptr %2, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %59
  tail call void @expand_assignment(ptr noundef nonnull %2, ptr noundef nonnull %5, i8 noundef zeroext 0) #21
  br label %95

92:                                               ; preds = %59
  %93 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %94 = tail call ptr @expand_expr_real_1(ptr noundef nonnull %5, ptr noundef %93, i32 noundef 0, i32 noundef 0, ptr noundef null) #21
  br label %95

95:                                               ; preds = %92, %91
  ret void
}

; Function Attrs: optsize
declare void @expand_null_return() local_unnamed_addr #3

; Function Attrs: optsize
declare void @expand_return(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @expand_assignment(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_assign_nontemporal_move_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 10
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef %1, i32 noundef %2, ptr noundef null) #21
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @expand_expr_real_2(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @convert_modes(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @convert_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @emit_storent_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @build_vl_exp_stat(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !8
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_call_nothrow_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #21
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 6
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 18
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_from_thunk_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_cannot_inline_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 20
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @expand_expr_real_1(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 747, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !230
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !230
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !233
  store ptr %22, ptr %16, align 8, !tbaa !230
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !227
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !227
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !228
  store ptr %36, ptr %29, align 8, !tbaa !227
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !216
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !7
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #21
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #20, !range !7
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #20
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #20
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #20
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !246

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #20
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #20
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !247

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #20
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #20
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !226
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #20
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !216
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 918, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #21
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !216
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !248
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !249
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !214
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #14 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !221
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !227
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !228
  store ptr %7, ptr %2, align 8, !tbaa !227
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !250
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !249
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !248
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !250
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !216
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.15, i32 noundef 771, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !214
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !251
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !252
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !221
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !221
  store ptr %2, ptr %6, align 8, !tbaa !252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  store ptr %1, ptr %0, align 8, !tbaa !252
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !221
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !221
  store ptr %0, ptr %4, align 8, !tbaa !252
  store ptr %0, ptr %3, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !8
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !216
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !8
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !8
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 3103, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !252
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #20
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gimple_cond_single_var_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !6
  %3 = icmp eq i32 %2, 102
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !14
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %16, label %8

8:                                                ; preds = %4, %1
  %9 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !6
  %10 = icmp eq i32 %9, 101
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !14
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %8
  br label %16

16:                                               ; preds = %11, %4, %15
  %17 = phi i8 [ 0, %15 ], [ 1, %4 ], [ 1, %11 ]
  ret i8 %17
}

; Function Attrs: optsize
declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #3

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @jumpif_1(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_cleanup_end_of_block(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = tail call ptr @get_last_insn() #21
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 11
  br i1 %6, label %7, label %35

7:                                                ; preds = %2
  tail call void @remove_edge(ptr noundef %0) #21
  %8 = tail call ptr @get_last_insn() #21
  %9 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !8
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = tail call i32 @any_condjump_p(ptr noundef nonnull %10) #21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1576, ptr noundef nonnull @.str.1) #21
  br label %18

18:                                               ; preds = %14, %17
  %19 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 0, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !8
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %35, label %22

22:                                               ; preds = %18, %33
  %23 = phi ptr [ %25, %33 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1, i32 0, i32 0, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  %26 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1, i32 0, i32 0, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !8
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = tail call ptr @delete_insn(ptr noundef nonnull %27) #21
  br label %33

33:                                               ; preds = %31, %22
  %34 = icmp eq ptr %25, %1
  br i1 %34, label %35, label %22, !llvm.loop !253

35:                                               ; preds = %33, %18, %2
  ret void
}

; Function Attrs: optsize
declare void @jumpifnot_1(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @any_condjump_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @ssa_operands_active() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #20
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !214
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !230
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !231
  %8 = load ptr, ptr %3, align 8, !tbaa !233
  store ptr %8, ptr %2, align 8, !tbaa !230
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !216
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @block_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_label_rtx() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_debug_expr(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !8
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 14
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = tail call i32 @vector_type_mode(ptr noundef nonnull %9) #21
  %15 = load ptr, ptr %8, align 8, !tbaa !8
  %16 = load i64, ptr %15, align 8
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  br label %22

22:                                               ; preds = %17, %13
  %23 = phi i64 [ %16, %13 ], [ %10, %17 ]
  %24 = phi i32 [ %14, %13 ], [ %21, %17 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  %25 = trunc i64 %23 to i32
  %26 = lshr i32 %25, 21
  %27 = and i32 %26, 1
  store i32 %27, ptr %2, align 4, !tbaa !12
  %28 = load i64, ptr %0, align 8
  %29 = and i64 %28, 65535
  %30 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !12
  switch i32 %31, label %53 [
    i32 10, label %32
    i32 7, label %39
    i32 5, label %39
    i32 6, label %45
    i32 2, label %52
    i32 8, label %52
  ]

32:                                               ; preds = %22
  %33 = trunc i64 %28 to i16
  switch i16 %33, label %53 [
    i16 56, label %34
    i16 167, label %34
    i16 91, label %39
    i16 92, label %39
    i16 93, label %39
    i16 94, label %39
    i16 95, label %39
    i16 96, label %45
  ]

34:                                               ; preds = %32, %32
  %35 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !8
  %37 = tail call fastcc ptr @expand_debug_expr(ptr noundef %36) #20
  %38 = icmp eq ptr %37, null
  br i1 %38, label %1052, label %39

39:                                               ; preds = %32, %32, %32, %32, %32, %34, %22, %22
  %40 = phi ptr [ null, %22 ], [ null, %22 ], [ null, %32 ], [ null, %32 ], [ null, %32 ], [ null, %32 ], [ null, %32 ], [ %37, %34 ]
  %41 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !8
  %43 = tail call fastcc ptr @expand_debug_expr(ptr noundef %42) #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %1052, label %45

45:                                               ; preds = %32, %39, %22
  %46 = phi ptr [ null, %22 ], [ %40, %39 ], [ null, %32 ]
  %47 = phi ptr [ null, %22 ], [ %43, %39 ], [ null, %32 ]
  %48 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !8
  %50 = tail call fastcc ptr @expand_debug_expr(ptr noundef %49) #20
  %51 = icmp eq ptr %50, null
  br i1 %51, label %1052, label %53

52:                                               ; preds = %22, %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2284, ptr noundef nonnull @.str.1) #21
  br label %53

53:                                               ; preds = %52, %45, %32, %22
  %54 = phi ptr [ null, %22 ], [ null, %52 ], [ %46, %45 ], [ null, %32 ]
  %55 = phi ptr [ null, %22 ], [ null, %52 ], [ %47, %45 ], [ null, %32 ]
  %56 = phi ptr [ null, %22 ], [ null, %52 ], [ %50, %45 ], [ null, %32 ]
  %57 = load i64, ptr %0, align 8
  %58 = trunc i64 %57 to i16
  switch i16 %58, label %1052 [
    i16 28, label %59
    i16 23, label %73
    i16 24, label %73
    i16 25, label %73
    i16 26, label %75
    i16 37, label %90
    i16 32, label %100
    i16 34, label %100
    i16 29, label %100
    i16 30, label %100
    i16 33, label %100
    i16 36, label %100
    i16 112, label %171
    i16 116, label %171
    i16 113, label %171
    i16 47, label %293
    i16 48, label %293
    i16 49, label %293
    i16 152, label %328
    i16 45, label %354
    i16 46, label %354
    i16 41, label %354
    i16 42, label %354
    i16 43, label %354
    i16 44, label %354
    i16 118, label %354
    i16 82, label %544
    i16 79, label %546
    i16 90, label %548
    i16 78, label %550
    i16 77, label %556
    i16 66, label %562
    i16 63, label %562
    i16 64, label %564
    i16 65, label %566
    i16 75, label %568
    i16 67, label %568
    i16 76, label %568
    i16 71, label %574
    i16 69, label %580
    i16 73, label %589
    i16 68, label %599
    i16 72, label %611
    i16 70, label %625
    i16 74, label %637
    i16 83, label %651
    i16 84, label %653
    i16 85, label %659
    i16 86, label %661
    i16 80, label %663
    i16 81, label %669
    i16 89, label %675
    i16 93, label %675
    i16 87, label %677
    i16 94, label %677
    i16 88, label %679
    i16 95, label %679
    i16 91, label %681
    i16 92, label %684
    i16 96, label %687
    i16 97, label %690
    i16 98, label %696
    i16 99, label %702
    i16 100, label %708
    i16 101, label %714
    i16 102, label %716
    i16 103, label %718
    i16 104, label %720
    i16 105, label %722
    i16 106, label %724
    i16 107, label %726
    i16 108, label %728
    i16 109, label %730
    i16 110, label %732
    i16 56, label %734
    i16 123, label %736
    i16 124, label %765
    i16 121, label %831
    i16 27, label %844
    i16 51, label %849
    i16 168, label %1026
    i16 141, label %931
    i16 169, label %991
    i16 167, label %955
  ]

59:                                               ; preds = %53
  %60 = tail call ptr @lookup_constant_def(ptr noundef nonnull %0) #21
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 2
  %64 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %63) #20
  %65 = add i64 %64, 1
  %66 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !8
  %68 = sext i32 %67 to i64
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %1052

70:                                               ; preds = %62
  %71 = tail call ptr @gen_rtx_fmt_s_stat(i32 noundef 34, i32 noundef 16, ptr noundef nonnull %63) #21
  %72 = tail call ptr @gen_rtx_MEM(i32 noundef 1, ptr noundef %71) #21
  tail call void @set_mem_attributes(ptr noundef %72, ptr noundef nonnull %0, i32 noundef 0) #21
  br label %1052

73:                                               ; preds = %59, %53, %53, %53
  %74 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %0, i32 noundef %24, i32 noundef 4) #20
  br label %1052

75:                                               ; preds = %53
  %76 = zext i32 %24 to i64
  %77 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !8
  %79 = and i8 %78, -2
  %80 = icmp eq i8 %79, 10
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2316, ptr noundef nonnull @.str.1) #21
  br label %82

82:                                               ; preds = %75, %81
  %83 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !8
  %85 = tail call fastcc ptr @expand_debug_expr(ptr noundef %84) #20
  %86 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !8
  %88 = tail call fastcc ptr @expand_debug_expr(ptr noundef %87) #20
  %89 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %24, ptr noundef %85, ptr noundef %88) #21
  br label %1052

90:                                               ; preds = %53
  %91 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 37, i64 11), align 1, !tbaa !8
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %1052

97:                                               ; preds = %90, %93
  %98 = tail call ptr @gen_rtx_fmt_0_stat(i32 noundef 2, i32 noundef %24) #21
  %99 = getelementptr inbounds %struct.rtx_def, ptr %98, i64 0, i32 1
  store ptr %0, ptr %99, align 8, !tbaa !8
  tail call void @set_decl_rtl(ptr noundef nonnull %0, ptr noundef %98) #21
  br label %1052

100:                                              ; preds = %53, %53, %53, %53, %53, %53
  %101 = and i64 %57, 65535
  %102 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %101, i64 11
  %103 = load i8, ptr %102, align 1, !tbaa !8
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %150

109:                                              ; preds = %100, %105
  %110 = icmp eq i64 %101, 32
  br i1 %110, label %111, label %1052

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %113 = load i64, ptr %112, align 8
  %114 = and i64 %113, 33554432
  %115 = icmp ne i64 %114, 0
  %116 = and i64 %57, 67108864
  %117 = icmp eq i64 %116, 0
  %118 = or i1 %117, %115
  br i1 %118, label %1052, label %119

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %1052, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %125 = load i32, ptr %124, align 8
  %126 = and i32 %125, 2
  %127 = icmp ne i32 %126, 0
  %128 = icmp eq i32 %24, 0
  %129 = select i1 %127, i1 true, i1 %128
  br i1 %129, label %1052, label %130

130:                                              ; preds = %123
  %131 = tail call ptr @make_decl_rtl_for_debug(ptr noundef nonnull %0) #21
  %132 = load i32, ptr %131, align 8
  %133 = and i32 %132, 65535
  %134 = icmp eq i32 %133, 43
  br i1 %134, label %135, label %1052

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.rtx_def, ptr %131, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !8
  %138 = load i32, ptr %137, align 8
  %139 = and i32 %138, 65535
  %140 = icmp eq i32 %139, 45
  br i1 %140, label %141, label %1052

141:                                              ; preds = %135
  %142 = and i32 %138, 67108864
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.rtx_def, ptr %137, i64 0, i32 1, i32 0, i32 0, i64 2
  %146 = load ptr, ptr %145, align 8, !tbaa !8
  br label %147

147:                                              ; preds = %141, %144
  %148 = phi ptr [ %146, %144 ], [ null, %141 ]
  %149 = icmp eq ptr %148, %0
  br i1 %149, label %153, label %1052

150:                                              ; preds = %105
  %151 = tail call ptr @copy_rtx(ptr noundef nonnull %107) #21
  %152 = load i32, ptr %151, align 8
  br label %153

153:                                              ; preds = %147, %150
  %154 = phi i32 [ %152, %150 ], [ %132, %147 ]
  %155 = phi ptr [ %151, %150 ], [ %131, %147 ]
  %156 = lshr i32 %154, 16
  %157 = and i32 %156, 255
  %158 = icmp eq i32 %157, 1
  %159 = icmp eq i32 %24, 1
  %160 = select i1 %158, i1 true, i1 %159
  br i1 %160, label %165, label %161

161:                                              ; preds = %153
  %162 = icmp ne i32 %24, 0
  %163 = icmp eq i32 %157, 0
  %164 = or i1 %162, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %161, %153
  %166 = and i32 %154, 65535
  %167 = icmp eq i32 %166, 43
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2368, ptr noundef nonnull @.str.1) #21
  br label %169

169:                                              ; preds = %165, %168
  %170 = tail call ptr @adjust_address_1(ptr noundef nonnull %155, i32 noundef %24, i64 noundef 0, i32 noundef 0, i32 noundef 1) #21
  br label %1052

171:                                              ; preds = %934, %950, %161, %53, %53, %53
  %172 = phi ptr [ %56, %53 ], [ %56, %53 ], [ %56, %53 ], [ %155, %161 ], [ %954, %950 ], [ %936, %934 ]
  %173 = load i32, ptr %172, align 8
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = icmp eq i32 %24, %175
  br i1 %176, label %1052, label %177

177:                                              ; preds = %171
  %178 = icmp eq i32 %175, 0
  br i1 %178, label %179, label %213

179:                                              ; preds = %177
  %180 = load i64, ptr %0, align 8
  %181 = and i64 %180, 65535
  %182 = icmp eq i64 %181, 141
  br i1 %182, label %183, label %195

183:                                              ; preds = %179
  %184 = load ptr, ptr %8, align 8, !tbaa !8
  %185 = load i64, ptr %184, align 8
  %186 = and i64 %185, 65535
  %187 = icmp eq i64 %186, 14
  br i1 %187, label %188, label %190

188:                                              ; preds = %183
  %189 = tail call i32 @vector_type_mode(ptr noundef nonnull %184) #21
  br label %210

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.tree_type, ptr %184, i64 0, i32 6
  %192 = load i32, ptr %191, align 4
  %193 = lshr i32 %192, 16
  %194 = and i32 %193, 255
  br label %210

195:                                              ; preds = %179
  %196 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !8
  %198 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !8
  %200 = load i64, ptr %199, align 8
  %201 = and i64 %200, 65535
  %202 = icmp eq i64 %201, 14
  br i1 %202, label %203, label %205

203:                                              ; preds = %195
  %204 = tail call i32 @vector_type_mode(ptr noundef nonnull %199) #21
  br label %210

205:                                              ; preds = %195
  %206 = getelementptr inbounds %struct.tree_type, ptr %199, i64 0, i32 6
  %207 = load i32, ptr %206, align 4
  %208 = lshr i32 %207, 16
  %209 = and i32 %208, 255
  br label %210

210:                                              ; preds = %203, %205, %188, %190
  %211 = phi i32 [ %189, %188 ], [ %194, %190 ], [ %204, %203 ], [ %209, %205 ]
  %212 = icmp eq i32 %24, %211
  br i1 %212, label %1052, label %213

213:                                              ; preds = %210, %177
  %214 = phi i32 [ %211, %210 ], [ %175, %177 ]
  %215 = zext i32 %24 to i64
  %216 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !8
  switch i8 %217, label %218 [
    i8 8, label %222
    i8 9, label %222
    i8 11, label %222
    i8 17, label %222
  ]

218:                                              ; preds = %213
  %219 = zext i32 %214 to i64
  %220 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %219
  %221 = load i8, ptr %220, align 1, !tbaa !8
  br label %262

222:                                              ; preds = %213, %213, %213, %213
  %223 = zext i32 %214 to i64
  %224 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !8
  switch i8 %225, label %244 [
    i8 8, label %226
    i8 9, label %226
    i8 11, label %226
    i8 17, label %226
  ]

226:                                              ; preds = %222, %222, %222, %222
  %227 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %215
  %228 = load i8, ptr %227, align 1, !tbaa !8
  %229 = zext i8 %228 to i32
  %230 = shl nuw nsw i32 %229, 3
  %231 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %223
  %232 = load i8, ptr %231, align 1, !tbaa !8
  %233 = zext i8 %232 to i32
  %234 = shl nuw nsw i32 %233, 3
  %235 = icmp eq i32 %230, %234
  br i1 %235, label %236, label %238

236:                                              ; preds = %226
  %237 = tail call ptr @simplify_gen_subreg(i32 noundef %24, ptr noundef nonnull %172, i32 noundef %214, i32 noundef 0) #21
  br label %1052

238:                                              ; preds = %226
  %239 = icmp ult i32 %230, %234
  br i1 %239, label %240, label %242

240:                                              ; preds = %238
  %241 = tail call ptr @simplify_gen_unary(i32 noundef 102, i32 noundef %24, ptr noundef nonnull %172, i32 noundef %214) #21
  br label %1052

242:                                              ; preds = %238
  %243 = tail call ptr @simplify_gen_unary(i32 noundef 101, i32 noundef %24, ptr noundef nonnull %172, i32 noundef %214) #21
  br label %1052

244:                                              ; preds = %222
  switch i8 %217, label %262 [
    i8 8, label %245
    i8 9, label %245
    i8 11, label %245
    i8 17, label %245
  ]

245:                                              ; preds = %244, %244, %244, %244
  %246 = load i64, ptr %0, align 8
  %247 = and i64 %246, 65535
  %248 = icmp eq i64 %247, 141
  br i1 %248, label %249, label %250

249:                                              ; preds = %245
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2406, ptr noundef nonnull @.str.1) #21
  br label %250

250:                                              ; preds = %245, %249
  %251 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !8
  %253 = getelementptr inbounds %struct.tree_common, ptr %252, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !8
  %255 = load i64, ptr %254, align 8
  %256 = and i64 %255, 2097152
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %250
  %259 = tail call ptr @simplify_gen_unary(i32 noundef 105, i32 noundef %24, ptr noundef nonnull %172, i32 noundef %214) #21
  br label %1052

260:                                              ; preds = %250
  %261 = tail call ptr @simplify_gen_unary(i32 noundef 103, i32 noundef %24, ptr noundef nonnull %172, i32 noundef %214) #21
  br label %1052

262:                                              ; preds = %218, %244
  %263 = phi i64 [ %219, %218 ], [ %223, %244 ]
  %264 = phi i8 [ %221, %218 ], [ %225, %244 ]
  switch i8 %264, label %271 [
    i8 8, label %265
    i8 9, label %265
    i8 11, label %265
    i8 17, label %265
  ]

265:                                              ; preds = %262, %262, %262, %262
  %266 = icmp eq i32 %27, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %265
  %268 = tail call ptr @simplify_gen_unary(i32 noundef 106, i32 noundef %24, ptr noundef nonnull %172, i32 noundef %214) #21
  br label %1052

269:                                              ; preds = %265
  %270 = tail call ptr @simplify_gen_unary(i32 noundef 104, i32 noundef %24, ptr noundef nonnull %172, i32 noundef %214) #21
  br label %1052

271:                                              ; preds = %262
  %272 = load i32, ptr %172, align 8
  %273 = and i32 %272, 65535
  %274 = zext nneg i32 %273 to i64
  %275 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !12
  %277 = icmp eq i32 %276, 9
  br i1 %277, label %284, label %278

278:                                              ; preds = %271
  %279 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %215
  %280 = load i8, ptr %279, align 1, !tbaa !8
  %281 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %263
  %282 = load i8, ptr %281, align 1, !tbaa !8
  %283 = icmp ugt i8 %280, %282
  br i1 %283, label %287, label %284

284:                                              ; preds = %278, %271
  %285 = tail call i32 @subreg_lowpart_offset(i32 noundef %24, i32 noundef %214) #21
  %286 = tail call ptr @simplify_gen_subreg(i32 noundef %24, ptr noundef nonnull %172, i32 noundef %214, i32 noundef %285) #21
  br label %1052

287:                                              ; preds = %278
  %288 = icmp eq i32 %27, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %287
  %290 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 99, i32 noundef %24, ptr noundef nonnull %172) #21
  br label %1052

291:                                              ; preds = %287
  %292 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 98, i32 noundef %24, ptr noundef nonnull %172) #21
  br label %1052

293:                                              ; preds = %53, %53, %53
  %294 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !8
  %296 = tail call fastcc ptr @expand_debug_expr(ptr noundef %295) #20
  %297 = icmp eq ptr %296, null
  br i1 %297, label %1052, label %298

298:                                              ; preds = %293
  %299 = load ptr, ptr %8, align 8, !tbaa !8
  %300 = load i64, ptr %299, align 8
  %301 = trunc i64 %300 to i16
  switch i16 %301, label %310 [
    i16 10, label %302
    i16 12, label %302
  ]

302:                                              ; preds = %298, %298
  %303 = getelementptr inbounds %struct.tree_common, ptr %299, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !8
  %305 = load i64, ptr %304, align 8
  %306 = lshr i64 %305, 56
  %307 = trunc i64 %306 to i8
  %308 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !254
  %309 = tail call i32 %308(i8 noundef zeroext %307) #21
  br label %310

310:                                              ; preds = %298, %302
  %311 = phi i32 [ %309, %302 ], [ 16, %298 ]
  %312 = phi i8 [ %307, %302 ], [ 0, %298 ]
  %313 = load i64, ptr %0, align 8
  %314 = and i64 %313, 65535
  %315 = icmp eq i64 %314, 48
  br i1 %315, label %316, label %325

316:                                              ; preds = %310
  %317 = load ptr, ptr %8, align 8, !tbaa !8
  %318 = getelementptr inbounds %struct.tree_type, ptr %317, i64 0, i32 7
  %319 = load i32, ptr %318, align 8, !tbaa !8
  %320 = lshr i32 %319, 3
  %321 = sub nsw i32 0, %320
  %322 = sext i32 %321 to i64
  %323 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %322) #21
  %324 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %311, ptr noundef nonnull %296, ptr noundef %323) #21
  br label %325

325:                                              ; preds = %316, %310
  %326 = phi ptr [ %324, %316 ], [ %296, %310 ]
  %327 = tail call ptr @gen_rtx_MEM(i32 noundef %24, ptr noundef %326) #21
  tail call void @set_mem_attributes(ptr noundef %327, ptr noundef nonnull %0, i32 noundef 0) #21
  tail call void @set_mem_addr_space(ptr noundef %327, i8 noundef zeroext %312) #21
  br label %1052

328:                                              ; preds = %53
  %329 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %330 = load ptr, ptr %329, align 8, !tbaa !8
  %331 = icmp eq ptr %330, null
  br i1 %331, label %342, label %332

332:                                              ; preds = %328
  %333 = load i64, ptr %330, align 8
  %334 = and i64 %333, 65535
  %335 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %334, i64 11
  %336 = load i8, ptr %335, align 1, !tbaa !8
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %1052, label %338

338:                                              ; preds = %332
  %339 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %330, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !8
  %341 = icmp eq ptr %340, null
  br i1 %341, label %1052, label %342

342:                                              ; preds = %338, %328
  %343 = load ptr, ptr %8, align 8, !tbaa !8
  %344 = tail call ptr @build_pointer_type(ptr noundef %343) #21
  %345 = tail call ptr @tree_mem_ref_addr(ptr noundef %344, ptr noundef nonnull %0) #21
  %346 = tail call fastcc ptr @expand_debug_expr(ptr noundef %345) #20
  %347 = icmp eq ptr %346, null
  br i1 %347, label %1052, label %348

348:                                              ; preds = %342
  %349 = load ptr, ptr %8, align 8, !tbaa !8
  %350 = load i64, ptr %349, align 8
  %351 = lshr i64 %350, 56
  %352 = trunc i64 %351 to i8
  %353 = tail call ptr @gen_rtx_MEM(i32 noundef %24, ptr noundef nonnull %346) #21
  tail call void @set_mem_attributes(ptr noundef %353, ptr noundef nonnull %0, i32 noundef 0) #21
  tail call void @set_mem_addr_space(ptr noundef %353, i8 noundef zeroext %352) #21
  br label %1052

354:                                              ; preds = %53, %53, %53, %53, %53, %53, %53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4, !tbaa !12
  %355 = call ptr @get_inner_reference(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %7, i8 noundef zeroext 0) #21
  %356 = load i64, ptr %4, align 8, !tbaa !16
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %542, label %358

358:                                              ; preds = %354
  %359 = call fastcc ptr @expand_debug_expr(ptr noundef %355) #20
  %360 = icmp eq ptr %359, null
  br i1 %360, label %542, label %361

361:                                              ; preds = %358
  %362 = load ptr, ptr %6, align 8, !tbaa !14
  %363 = icmp eq ptr %362, null
  br i1 %363, label %407, label %364

364:                                              ; preds = %361
  %365 = load i32, ptr %359, align 8
  %366 = and i32 %365, 65535
  %367 = icmp eq i32 %366, 43
  br i1 %367, label %368, label %542

368:                                              ; preds = %364
  %369 = getelementptr inbounds %struct.rtx_def, ptr %359, i64 0, i32 1
  %370 = load ptr, ptr %369, align 8, !tbaa !8
  %371 = load i32, ptr %370, align 8
  %372 = lshr i32 %371, 16
  %373 = and i32 %372, 255
  %374 = icmp eq i32 %373, 0
  %375 = select i1 %374, i32 16, i32 %373
  %376 = call fastcc ptr @expand_debug_expr(ptr noundef nonnull %362) #20
  %377 = icmp eq ptr %376, null
  br i1 %377, label %542, label %378

378:                                              ; preds = %368
  %379 = load i32, ptr %376, align 8
  %380 = lshr i32 %379, 16
  %381 = and i32 %380, 255
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %397

383:                                              ; preds = %378
  %384 = load ptr, ptr %6, align 8, !tbaa !14
  %385 = getelementptr inbounds %struct.tree_common, ptr %384, i64 0, i32 2
  %386 = load ptr, ptr %385, align 8, !tbaa !8
  %387 = load i64, ptr %386, align 8
  %388 = and i64 %387, 65535
  %389 = icmp eq i64 %388, 14
  br i1 %389, label %390, label %392

390:                                              ; preds = %383
  %391 = call i32 @vector_type_mode(ptr noundef nonnull %386) #21
  br label %397

392:                                              ; preds = %383
  %393 = getelementptr inbounds %struct.tree_type, ptr %386, i64 0, i32 6
  %394 = load i32, ptr %393, align 4
  %395 = lshr i32 %394, 16
  %396 = and i32 %395, 255
  br label %397

397:                                              ; preds = %390, %392, %378
  %398 = phi i32 [ %381, %378 ], [ %391, %390 ], [ %396, %392 ]
  %399 = icmp eq i32 %375, %398
  br i1 %399, label %403, label %400

400:                                              ; preds = %397
  %401 = call i32 @subreg_lowpart_offset(i32 noundef %375, i32 noundef %398) #21
  %402 = call ptr @simplify_gen_subreg(i32 noundef %375, ptr noundef nonnull %376, i32 noundef %398, i32 noundef %401) #21
  br label %403

403:                                              ; preds = %397, %400
  %404 = phi ptr [ %402, %400 ], [ %376, %397 ]
  %405 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %375, ptr noundef nonnull %370, ptr noundef %404) #21
  %406 = call ptr @gen_rtx_MEM(i32 noundef %24, ptr noundef %405) #21
  br label %407

407:                                              ; preds = %403, %361
  %408 = phi ptr [ %406, %403 ], [ %359, %361 ]
  %409 = load i32, ptr %408, align 8
  %410 = and i32 %409, 65535
  %411 = icmp eq i32 %410, 43
  br i1 %411, label %412, label %465

412:                                              ; preds = %407
  %413 = load i32, ptr %3, align 4, !tbaa !12
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %412
  %416 = load i64, ptr %4, align 8, !tbaa !16
  %417 = trunc i64 %416 to i32
  %418 = call i32 @smallest_mode_for_size(i32 noundef %417, i32 noundef 2) #21
  store i32 %418, ptr %3, align 4, !tbaa !12
  br label %419

419:                                              ; preds = %415, %412
  %420 = phi i32 [ %418, %415 ], [ %413, %412 ]
  %421 = load i64, ptr %5, align 8, !tbaa !16
  %422 = icmp sgt i64 %421, 7
  br i1 %422, label %423, label %428

423:                                              ; preds = %419
  %424 = lshr i64 %421, 3
  %425 = call ptr @adjust_address_1(ptr noundef nonnull %408, i32 noundef %420, i64 noundef %424, i32 noundef 0, i32 noundef 1) #21
  %426 = load i64, ptr %5, align 8, !tbaa !16
  %427 = srem i64 %426, 8
  store i64 %427, ptr %5, align 8, !tbaa !16
  br label %458

428:                                              ; preds = %419
  %429 = icmp slt i64 %421, 0
  br i1 %429, label %430, label %437

430:                                              ; preds = %428
  %431 = sub i64 7, %421
  %432 = sdiv i64 %431, 8
  %433 = call ptr @adjust_address_1(ptr noundef nonnull %408, i32 noundef %420, i64 noundef %432, i32 noundef 0, i32 noundef 1) #21
  %434 = shl nsw i64 %432, 3
  %435 = load i64, ptr %5, align 8, !tbaa !16
  %436 = add nsw i64 %435, %434
  store i64 %436, ptr %5, align 8, !tbaa !16
  br label %458

437:                                              ; preds = %428
  %438 = icmp eq i64 %421, 0
  br i1 %438, label %439, label %449

439:                                              ; preds = %437
  %440 = load i64, ptr %4, align 8, !tbaa !16
  %441 = zext i32 %24 to i64
  %442 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %441
  %443 = load i8, ptr %442, align 1, !tbaa !8
  %444 = zext i8 %443 to i64
  %445 = shl nuw nsw i64 %444, 3
  %446 = icmp eq i64 %440, %445
  br i1 %446, label %447, label %449

447:                                              ; preds = %439
  %448 = call ptr @adjust_address_1(ptr noundef nonnull %408, i32 noundef %24, i64 noundef 0, i32 noundef 0, i32 noundef 1) #21
  br label %458

449:                                              ; preds = %439, %437
  %450 = load i32, ptr %408, align 8
  %451 = lshr i32 %450, 16
  %452 = and i32 %451, 255
  %453 = icmp eq i32 %452, %420
  br i1 %453, label %456, label %454

454:                                              ; preds = %449
  %455 = call ptr @adjust_address_1(ptr noundef nonnull %408, i32 noundef %420, i64 noundef 0, i32 noundef 0, i32 noundef 1) #21
  br label %458

456:                                              ; preds = %449
  %457 = call ptr @copy_rtx(ptr noundef nonnull %408) #21
  br label %458

458:                                              ; preds = %430, %454, %456, %447, %423
  %459 = phi ptr [ %425, %423 ], [ %433, %430 ], [ %448, %447 ], [ %455, %454 ], [ %457, %456 ]
  %460 = icmp eq ptr %459, %359
  br i1 %460, label %461, label %463

461:                                              ; preds = %458
  %462 = call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %359) #21
  br label %463

463:                                              ; preds = %461, %458
  %464 = phi ptr [ %462, %461 ], [ %459, %458 ]
  call void @set_mem_attributes(ptr noundef %464, ptr noundef nonnull %0, i32 noundef 0) #21
  br label %465

465:                                              ; preds = %463, %407
  %466 = phi ptr [ %464, %463 ], [ %408, %407 ]
  %467 = load i64, ptr %5, align 8, !tbaa !16
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %469, label %474

469:                                              ; preds = %465
  %470 = load i32, ptr %466, align 8
  %471 = lshr i32 %470, 16
  %472 = and i32 %471, 255
  %473 = icmp eq i32 %24, %472
  br i1 %473, label %542, label %479

474:                                              ; preds = %465
  %475 = icmp slt i64 %467, 0
  br i1 %475, label %542, label %476

476:                                              ; preds = %474
  %477 = and i64 %467, 7
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %517

479:                                              ; preds = %469, %476
  %480 = load i64, ptr %4, align 8, !tbaa !16
  %481 = load i32, ptr %3, align 4, !tbaa !12
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !8
  %485 = zext i8 %484 to i64
  %486 = shl nuw nsw i64 %485, 3
  %487 = icmp eq i64 %480, %486
  br i1 %487, label %488, label %517

488:                                              ; preds = %479
  %489 = load i32, ptr %466, align 8
  %490 = lshr i32 %489, 16
  %491 = and i32 %490, 255
  %492 = trunc i32 %490 to i8
  switch i8 %492, label %496 [
    i8 1, label %493
    i8 0, label %495
  ]

493:                                              ; preds = %488
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2575, ptr noundef nonnull @.str.1) #21
  %494 = load i64, ptr %5, align 8, !tbaa !16
  br label %496

495:                                              ; preds = %488
  br label %496

496:                                              ; preds = %493, %488, %495
  %497 = phi i64 [ %467, %495 ], [ %494, %493 ], [ %467, %488 ]
  %498 = phi i32 [ %481, %495 ], [ 1, %493 ], [ %491, %488 ]
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %499
  %501 = load i8, ptr %500, align 1, !tbaa !8
  %502 = zext i8 %501 to i64
  %503 = shl nuw nsw i64 %502, 3
  %504 = icmp slt i64 %497, %503
  br i1 %504, label %505, label %542

505:                                              ; preds = %496
  %506 = zext i32 %24 to i64
  %507 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !8
  %509 = zext i8 %508 to i64
  %510 = shl nuw nsw i64 %509, 3
  %511 = srem i64 %497, %510
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %513, label %517

513:                                              ; preds = %505
  %514 = sdiv i64 %497, 8
  %515 = trunc i64 %514 to i32
  %516 = call ptr @simplify_gen_subreg(i32 noundef %24, ptr noundef nonnull %466, i32 noundef %498, i32 noundef %515) #21
  br label %542

517:                                              ; preds = %505, %479, %476
  %518 = load i32, ptr %466, align 8
  %519 = lshr i32 %518, 16
  %520 = and i32 %519, 255
  %521 = zext nneg i32 %520 to i64
  %522 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !8
  %524 = and i8 %523, -2
  %525 = icmp eq i8 %524, 2
  br i1 %525, label %526, label %532

526:                                              ; preds = %517
  %527 = load ptr, ptr %8, align 8, !tbaa !8
  %528 = load i64, ptr %527, align 8
  %529 = and i64 %528, 2097152
  %530 = icmp eq i64 %529, 0
  %531 = select i1 %530, i32 120, i32 119
  br label %532

532:                                              ; preds = %517, %526
  %533 = phi i32 [ %531, %526 ], [ 120, %517 ]
  %534 = icmp eq i32 %520, 0
  %535 = load i32, ptr %3, align 4
  %536 = select i1 %534, i32 %535, i32 %520
  %537 = load i64, ptr %4, align 8, !tbaa !16
  %538 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %537) #21
  %539 = load i64, ptr %5, align 8, !tbaa !16
  %540 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %539) #21
  %541 = call ptr @simplify_gen_ternary(i32 noundef %533, i32 noundef %24, i32 noundef %536, ptr noundef nonnull %466, ptr noundef %538, ptr noundef %540) #21
  br label %542

542:                                              ; preds = %496, %513, %368, %364, %474, %469, %358, %354, %532
  %543 = phi ptr [ %541, %532 ], [ null, %354 ], [ null, %358 ], [ %466, %469 ], [ null, %474 ], [ null, %364 ], [ null, %368 ], [ null, %496 ], [ %516, %513 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  br label %1052

544:                                              ; preds = %53
  %545 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 111, i32 noundef %24, ptr noundef %56) #21
  br label %1052

546:                                              ; preds = %53
  %547 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %24, ptr noundef %56) #21
  br label %1052

548:                                              ; preds = %53
  %549 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 64, i32 noundef %24, ptr noundef %56) #21
  br label %1052

550:                                              ; preds = %53
  %551 = icmp eq i32 %27, 0
  br i1 %551, label %554, label %552

552:                                              ; preds = %550
  %553 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 105, i32 noundef %24, ptr noundef %56) #21
  br label %1052

554:                                              ; preds = %550
  %555 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 103, i32 noundef %24, ptr noundef %56) #21
  br label %1052

556:                                              ; preds = %53
  %557 = icmp eq i32 %27, 0
  br i1 %557, label %560, label %558

558:                                              ; preds = %556
  %559 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 106, i32 noundef %24, ptr noundef %56) #21
  br label %1052

560:                                              ; preds = %556
  %561 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 104, i32 noundef %24, ptr noundef %56) #21
  br label %1052

562:                                              ; preds = %53, %53
  %563 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

564:                                              ; preds = %53
  %565 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

566:                                              ; preds = %53
  %567 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

568:                                              ; preds = %53, %53, %53
  %569 = icmp eq i32 %27, 0
  br i1 %569, label %572, label %570

570:                                              ; preds = %568
  %571 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 59, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

572:                                              ; preds = %568
  %573 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

574:                                              ; preds = %53
  %575 = icmp eq i32 %27, 0
  br i1 %575, label %578, label %576

576:                                              ; preds = %574
  %577 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

578:                                              ; preds = %574
  %579 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

580:                                              ; preds = %53
  %581 = icmp eq i32 %27, 0
  br i1 %581, label %584, label %582

582:                                              ; preds = %580
  %583 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 59, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

584:                                              ; preds = %580
  %585 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %586 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %587 = tail call fastcc ptr @floor_sdiv_adjust(i32 noundef %24, ptr noundef %586, ptr noundef %55) #20
  %588 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %585, ptr noundef %587) #21
  br label %1052

589:                                              ; preds = %53
  %590 = icmp eq i32 %27, 0
  br i1 %590, label %593, label %591

591:                                              ; preds = %589
  %592 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

593:                                              ; preds = %589
  %594 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %595 = tail call fastcc ptr @floor_sdiv_adjust(i32 noundef %24, ptr noundef %594, ptr noundef %55) #20
  %596 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %24, ptr noundef %595, ptr noundef %55) #21
  %597 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %24, ptr noundef %596) #21
  %598 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %594, ptr noundef %597) #21
  br label %1052

599:                                              ; preds = %53
  %600 = icmp eq i32 %27, 0
  br i1 %600, label %606, label %601

601:                                              ; preds = %599
  %602 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 59, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %603 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %604 = tail call fastcc ptr @ceil_udiv_adjust(i32 noundef %24, ptr noundef %603) #20
  %605 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %602, ptr noundef %604) #21
  br label %1052

606:                                              ; preds = %599
  %607 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %608 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %609 = tail call fastcc ptr @ceil_sdiv_adjust(i32 noundef %24, ptr noundef %608, ptr noundef %55) #20
  %610 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %607, ptr noundef %609) #21
  br label %1052

611:                                              ; preds = %53
  %612 = icmp eq i32 %27, 0
  br i1 %612, label %619, label %613

613:                                              ; preds = %611
  %614 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %615 = tail call fastcc ptr @ceil_udiv_adjust(i32 noundef %24, ptr noundef %614) #20
  %616 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %24, ptr noundef %615, ptr noundef %55) #21
  %617 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %24, ptr noundef %616) #21
  %618 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %614, ptr noundef %617) #21
  br label %1052

619:                                              ; preds = %611
  %620 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %621 = tail call fastcc ptr @ceil_sdiv_adjust(i32 noundef %24, ptr noundef %620, ptr noundef %55) #20
  %622 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %24, ptr noundef %621, ptr noundef %55) #21
  %623 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %24, ptr noundef %622) #21
  %624 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %620, ptr noundef %623) #21
  br label %1052

625:                                              ; preds = %53
  %626 = icmp eq i32 %27, 0
  br i1 %626, label %632, label %627

627:                                              ; preds = %625
  %628 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 59, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %629 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %630 = tail call fastcc ptr @round_udiv_adjust(i32 noundef %24, ptr noundef %629, ptr noundef %55) #20
  %631 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %628, ptr noundef %630) #21
  br label %1052

632:                                              ; preds = %625
  %633 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %634 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %635 = tail call fastcc ptr @round_sdiv_adjust(i32 noundef %24, ptr noundef %634, ptr noundef %55) #20
  %636 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %633, ptr noundef %635) #21
  br label %1052

637:                                              ; preds = %53
  %638 = icmp eq i32 %27, 0
  br i1 %638, label %645, label %639

639:                                              ; preds = %637
  %640 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 60, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %641 = tail call fastcc ptr @round_udiv_adjust(i32 noundef %24, ptr noundef %640, ptr noundef %55) #20
  %642 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %24, ptr noundef %641, ptr noundef %55) #21
  %643 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %24, ptr noundef %642) #21
  %644 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %640, ptr noundef %643) #21
  br label %1052

645:                                              ; preds = %637
  %646 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 58, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  %647 = tail call fastcc ptr @round_sdiv_adjust(i32 noundef %24, ptr noundef %646, ptr noundef %55) #20
  %648 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %24, ptr noundef %647, ptr noundef %55) #21
  %649 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %24, ptr noundef %648) #21
  %650 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %646, ptr noundef %649) #21
  br label %1052

651:                                              ; preds = %53
  %652 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 65, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

653:                                              ; preds = %53
  %654 = icmp eq i32 %27, 0
  br i1 %654, label %657, label %655

655:                                              ; preds = %653
  %656 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 68, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

657:                                              ; preds = %653
  %658 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 67, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

659:                                              ; preds = %53
  %660 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 66, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

661:                                              ; preds = %53
  %662 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 69, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

663:                                              ; preds = %53
  %664 = icmp eq i32 %27, 0
  br i1 %664, label %667, label %665

665:                                              ; preds = %663
  %666 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 72, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

667:                                              ; preds = %663
  %668 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 70, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

669:                                              ; preds = %53
  %670 = icmp eq i32 %27, 0
  br i1 %670, label %673, label %671

671:                                              ; preds = %669
  %672 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 73, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

673:                                              ; preds = %669
  %674 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 71, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

675:                                              ; preds = %53, %53
  %676 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 61, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

677:                                              ; preds = %53, %53
  %678 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 62, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

679:                                              ; preds = %53, %53
  %680 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 63, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

681:                                              ; preds = %53
  %682 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %683 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %24, ptr noundef %56, ptr noundef %55, ptr noundef %682) #21
  br label %1052

684:                                              ; preds = %53
  %685 = load ptr, ptr @const_true_rtx, align 8, !tbaa !14
  %686 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %24, ptr noundef %56, ptr noundef %685, ptr noundef %55) #21
  br label %1052

687:                                              ; preds = %53
  %688 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %689 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 81, i32 noundef %24, ptr noundef %56, ptr noundef %688) #21
  br label %1052

690:                                              ; preds = %53
  %691 = icmp eq i32 %27, 0
  br i1 %691, label %694, label %692

692:                                              ; preds = %690
  %693 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 89, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

694:                                              ; preds = %690
  %695 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 85, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

696:                                              ; preds = %53
  %697 = icmp eq i32 %27, 0
  br i1 %697, label %700, label %698

698:                                              ; preds = %696
  %699 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 88, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

700:                                              ; preds = %696
  %701 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 84, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

702:                                              ; preds = %53
  %703 = icmp eq i32 %27, 0
  br i1 %703, label %706, label %704

704:                                              ; preds = %702
  %705 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 87, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

706:                                              ; preds = %702
  %707 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 83, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

708:                                              ; preds = %53
  %709 = icmp eq i32 %27, 0
  br i1 %709, label %712, label %710

710:                                              ; preds = %708
  %711 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 86, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

712:                                              ; preds = %708
  %713 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 82, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

714:                                              ; preds = %53
  %715 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 81, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

716:                                              ; preds = %53
  %717 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 80, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

718:                                              ; preds = %53
  %719 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 90, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

720:                                              ; preds = %53
  %721 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 91, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

722:                                              ; preds = %53
  %723 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 96, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

724:                                              ; preds = %53
  %725 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 95, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

726:                                              ; preds = %53
  %727 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 94, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

728:                                              ; preds = %53
  %729 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 93, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

730:                                              ; preds = %53
  %731 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 92, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

732:                                              ; preds = %53
  %733 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 97, i32 noundef %24, ptr noundef %56, ptr noundef %55) #21
  br label %1052

734:                                              ; preds = %53
  %735 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %24, ptr noundef %56, ptr noundef %55, ptr noundef %54) #21
  br label %1052

736:                                              ; preds = %53
  %737 = zext i32 %24 to i64
  %738 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %737
  %739 = load i8, ptr %738, align 1, !tbaa !8
  %740 = and i8 %739, -2
  %741 = icmp eq i8 %740, 10
  br i1 %741, label %743, label %742

742:                                              ; preds = %736
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2840, ptr noundef nonnull @.str.1) #21
  br label %743

743:                                              ; preds = %736, %742
  %744 = load i32, ptr %56, align 8
  %745 = and i32 %744, 16711680
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %747, label %752

747:                                              ; preds = %743
  %748 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %737
  %749 = load i8, ptr %748, align 1, !tbaa !8
  %750 = zext i8 %749 to i32
  %751 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %750, ptr noundef nonnull %56) #21
  br label %752

752:                                              ; preds = %747, %743
  %753 = phi ptr [ %751, %747 ], [ %56, %743 ]
  %754 = load i32, ptr %55, align 8
  %755 = and i32 %754, 16711680
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %762

757:                                              ; preds = %752
  %758 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %737
  %759 = load i8, ptr %758, align 1, !tbaa !8
  %760 = zext i8 %759 to i32
  %761 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 35, i32 noundef %760, ptr noundef nonnull %55) #21
  br label %762

762:                                              ; preds = %757, %752
  %763 = phi ptr [ %761, %757 ], [ %55, %752 ]
  %764 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %24, ptr noundef %753, ptr noundef %763) #21
  br label %1052

765:                                              ; preds = %53
  %766 = load i32, ptr %56, align 8
  %767 = and i32 %766, 65535
  %768 = icmp eq i32 %767, 41
  br i1 %768, label %769, label %780

769:                                              ; preds = %765
  %770 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1
  %771 = load ptr, ptr %770, align 8, !tbaa !8
  %772 = zext i32 %24 to i64
  %773 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %772
  %774 = load i8, ptr %773, align 1, !tbaa !8
  %775 = zext i8 %774 to i32
  %776 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %777 = load ptr, ptr %776, align 8, !tbaa !8
  %778 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %775, ptr noundef %777) #21
  %779 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %24, ptr noundef %771, ptr noundef %778) #21
  br label %1052

780:                                              ; preds = %765
  %781 = zext i32 %24 to i64
  %782 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %781
  %783 = load i8, ptr %782, align 1, !tbaa !8
  %784 = zext i8 %783 to i32
  %785 = icmp eq i32 %767, 43
  br i1 %785, label %786, label %793

786:                                              ; preds = %780
  %787 = tail call ptr @adjust_address_1(ptr noundef nonnull %56, i32 noundef %784, i64 noundef 0, i32 noundef 0, i32 noundef 1) #21
  %788 = zext i8 %783 to i64
  %789 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %788
  %790 = load i8, ptr %789, align 1, !tbaa !8
  %791 = zext i8 %790 to i64
  %792 = tail call ptr @adjust_address_1(ptr noundef nonnull %56, i32 noundef %784, i64 noundef %791, i32 noundef 0, i32 noundef 1) #21
  br label %826

793:                                              ; preds = %780
  %794 = tail call i32 @int_mode_for_mode(i32 noundef %24) #21
  %795 = tail call i32 @int_mode_for_mode(i32 noundef %784) #21
  %796 = icmp ne i32 %794, 1
  %797 = icmp ne i32 %795, 1
  %798 = select i1 %796, i1 %797, i1 false
  br i1 %798, label %799, label %1052

799:                                              ; preds = %793
  %800 = zext i32 %795 to i64
  %801 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %800
  %802 = load i8, ptr %801, align 1, !tbaa !8
  %803 = zext i8 %802 to i64
  %804 = shl nuw nsw i64 %803, 3
  %805 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %804) #21
  %806 = icmp eq i32 %24, %794
  br i1 %806, label %809, label %807

807:                                              ; preds = %799
  %808 = tail call ptr @gen_rtx_SUBREG(i32 noundef %794, ptr noundef nonnull %56, i32 noundef 0) #21
  br label %809

809:                                              ; preds = %807, %799
  %810 = phi ptr [ %808, %807 ], [ %56, %799 ]
  %811 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %812 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 120, i32 noundef %795, ptr noundef %810, ptr noundef %805, ptr noundef %811) #21
  %813 = icmp eq i32 %795, %784
  br i1 %813, label %816, label %814

814:                                              ; preds = %809
  %815 = tail call ptr @gen_rtx_SUBREG(i32 noundef %784, ptr noundef %812, i32 noundef 0) #21
  br label %816

816:                                              ; preds = %814, %809
  %817 = phi ptr [ %815, %814 ], [ %812, %809 ]
  %818 = tail call ptr @copy_rtx(ptr noundef nonnull %56) #21
  br i1 %806, label %821, label %819

819:                                              ; preds = %816
  %820 = tail call ptr @gen_rtx_SUBREG(i32 noundef %794, ptr noundef %818, i32 noundef 0) #21
  br label %821

821:                                              ; preds = %819, %816
  %822 = phi ptr [ %820, %819 ], [ %818, %816 ]
  %823 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 120, i32 noundef %795, ptr noundef %822, ptr noundef %805, ptr noundef %805) #21
  br i1 %813, label %826, label %824

824:                                              ; preds = %821
  %825 = tail call ptr @gen_rtx_SUBREG(i32 noundef %784, ptr noundef %823, i32 noundef 0) #21
  br label %826

826:                                              ; preds = %824, %821, %786
  %827 = phi ptr [ %787, %786 ], [ %817, %821 ], [ %817, %824 ]
  %828 = phi ptr [ %792, %786 ], [ %823, %821 ], [ %825, %824 ]
  %829 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 51, i32 noundef %784, ptr noundef %828) #21
  %830 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %24, ptr noundef %827, ptr noundef %829) #21
  br label %1052

831:                                              ; preds = %53
  %832 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %833 = load ptr, ptr %832, align 8, !tbaa !8
  %834 = tail call fastcc ptr @expand_debug_expr(ptr noundef %833) #20
  %835 = icmp eq ptr %834, null
  br i1 %835, label %1052, label %836

836:                                              ; preds = %831
  %837 = load i32, ptr %834, align 8
  %838 = and i32 %837, 65535
  %839 = icmp eq i32 %838, 43
  br i1 %839, label %840, label %1052

840:                                              ; preds = %836
  %841 = getelementptr inbounds %struct.rtx_def, ptr %834, i64 0, i32 1
  %842 = load ptr, ptr %841, align 8, !tbaa !8
  %843 = tail call fastcc ptr @convert_debug_memory_address(i32 noundef %24, ptr noundef %842) #20
  br label %1052

844:                                              ; preds = %53
  %845 = load ptr, ptr %8, align 8, !tbaa !8
  %846 = getelementptr inbounds %struct.tree_vector, ptr %0, i64 0, i32 1
  %847 = load ptr, ptr %846, align 8, !tbaa !8
  %848 = tail call ptr @build_constructor_from_list(ptr noundef %845, ptr noundef %847) #21
  br label %849

849:                                              ; preds = %53, %844
  %850 = phi ptr [ %0, %53 ], [ %848, %844 ]
  %851 = getelementptr inbounds %struct.tree_common, ptr %850, i64 0, i32 2
  %852 = load ptr, ptr %851, align 8, !tbaa !8
  %853 = load i64, ptr %852, align 8
  %854 = and i64 %853, 65535
  %855 = icmp eq i64 %854, 14
  br i1 %855, label %856, label %1052

856:                                              ; preds = %849
  %857 = getelementptr inbounds %struct.tree_type, ptr %852, i64 0, i32 6
  %858 = load i32, ptr %857, align 4
  %859 = and i32 %858, 1023
  %860 = zext nneg i32 %859 to i64
  %861 = shl nuw i64 1, %860
  %862 = trunc i64 %861 to i32
  %863 = tail call ptr @rtvec_alloc(i32 noundef %862) #21
  %864 = tail call ptr @gen_rtx_fmt_E_stat(i32 noundef 42, i32 noundef %24, ptr noundef %863) #21
  %865 = getelementptr inbounds %struct.tree_constructor, ptr %850, i64 0, i32 1
  %866 = load ptr, ptr %865, align 8, !tbaa !8
  %867 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %866) #20
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %890, label %869

869:                                              ; preds = %856
  %870 = getelementptr inbounds %struct.rtx_def, ptr %864, i64 0, i32 1
  br label %871

871:                                              ; preds = %869, %880
  %872 = phi i64 [ 0, %869 ], [ %883, %880 ]
  %873 = phi ptr [ %866, %869 ], [ %884, %880 ]
  %874 = trunc i64 %872 to i32
  %875 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %873, i32 noundef %874) #20
  %876 = getelementptr inbounds %struct.constructor_elt_d, ptr %875, i64 0, i32 1
  %877 = load ptr, ptr %876, align 8, !tbaa !255
  %878 = tail call fastcc ptr @expand_debug_expr(ptr noundef %877) #20
  %879 = icmp eq ptr %878, null
  br i1 %879, label %1052, label %880

880:                                              ; preds = %871
  %881 = load ptr, ptr %870, align 8, !tbaa !8
  %882 = getelementptr inbounds %struct.rtvec_def, ptr %881, i64 0, i32 1, i64 %872
  store ptr %878, ptr %882, align 8, !tbaa !14
  %883 = add nuw nsw i64 %872, 1
  %884 = load ptr, ptr %865, align 8, !tbaa !8
  %885 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %884) #20
  %886 = zext i32 %885 to i64
  %887 = icmp ult i64 %883, %886
  br i1 %887, label %871, label %888, !llvm.loop !257

888:                                              ; preds = %880
  %889 = trunc i64 %883 to i32
  br label %890

890:                                              ; preds = %888, %856
  %891 = phi i32 [ 0, %856 ], [ %889, %888 ]
  %892 = zext i32 %891 to i64
  %893 = load ptr, ptr %851, align 8, !tbaa !8
  %894 = getelementptr inbounds %struct.tree_type, ptr %893, i64 0, i32 6
  %895 = load i32, ptr %894, align 4
  %896 = and i32 %895, 1023
  %897 = zext nneg i32 %896 to i64
  %898 = lshr i64 %892, %897
  %899 = icmp eq i64 %898, 0
  br i1 %899, label %900, label %1052

900:                                              ; preds = %890
  %901 = getelementptr inbounds %struct.tree_common, ptr %893, i64 0, i32 2
  %902 = load ptr, ptr %901, align 8, !tbaa !8
  %903 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !14
  %904 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %902, ptr noundef %903) #21
  %905 = tail call fastcc ptr @expand_debug_expr(ptr noundef %904) #20
  %906 = icmp eq ptr %905, null
  br i1 %906, label %1052, label %907

907:                                              ; preds = %900
  %908 = load ptr, ptr %851, align 8, !tbaa !8
  %909 = getelementptr inbounds %struct.tree_type, ptr %908, i64 0, i32 6
  %910 = load i32, ptr %909, align 4
  %911 = and i32 %910, 1023
  %912 = zext nneg i32 %911 to i64
  %913 = lshr i64 %892, %912
  %914 = icmp eq i64 %913, 0
  br i1 %914, label %915, label %1052

915:                                              ; preds = %907
  %916 = getelementptr inbounds %struct.rtx_def, ptr %864, i64 0, i32 1
  br label %917

917:                                              ; preds = %915, %917
  %918 = phi i64 [ %892, %915 ], [ %923, %917 ]
  %919 = phi i32 [ %891, %915 ], [ %922, %917 ]
  %920 = load ptr, ptr %916, align 8, !tbaa !8
  %921 = getelementptr inbounds %struct.rtvec_def, ptr %920, i64 0, i32 1, i64 %918
  store ptr %905, ptr %921, align 8, !tbaa !14
  %922 = add i32 %919, 1
  %923 = zext i32 %922 to i64
  %924 = load ptr, ptr %851, align 8, !tbaa !8
  %925 = getelementptr inbounds %struct.tree_type, ptr %924, i64 0, i32 6
  %926 = load i32, ptr %925, align 4
  %927 = and i32 %926, 1023
  %928 = zext nneg i32 %927 to i64
  %929 = lshr i64 %923, %928
  %930 = icmp eq i64 %929, 0
  br i1 %930, label %917, label %1052, !llvm.loop !258

931:                                              ; preds = %53
  %932 = tail call fastcc ptr @get_gimple_for_ssa_name(ptr noundef nonnull %0) #20
  %933 = icmp eq ptr %932, null
  br i1 %933, label %938, label %934

934:                                              ; preds = %931
  %935 = tail call ptr @gimple_assign_rhs_to_tree(ptr noundef nonnull %932) #20
  %936 = tail call fastcc ptr @expand_debug_expr(ptr noundef %935) #20
  %937 = icmp eq ptr %936, null
  br i1 %937, label %1052, label %171

938:                                              ; preds = %931
  %939 = load ptr, ptr @SA, align 8, !tbaa !52
  %940 = tail call fastcc i32 @var_to_partition(ptr noundef %939, ptr noundef nonnull %0) #20
  %941 = icmp eq i32 %940, -1
  br i1 %941, label %1052, label %942

942:                                              ; preds = %938
  %943 = icmp sgt i32 %940, -1
  br i1 %943, label %944, label %949

944:                                              ; preds = %942
  %945 = load ptr, ptr @SA, align 8, !tbaa !52
  %946 = getelementptr inbounds %struct._var_map, ptr %945, i64 0, i32 3
  %947 = load i32, ptr %946, align 8, !tbaa !63
  %948 = icmp ult i32 %940, %947
  br i1 %948, label %950, label %949

949:                                              ; preds = %944, %942
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2955, ptr noundef nonnull @.str.1) #21
  br label %950

950:                                              ; preds = %949, %944
  %951 = load ptr, ptr getelementptr inbounds (%struct.ssaexpand, ptr @SA, i64 0, i32 2), align 8, !tbaa !50
  %952 = sext i32 %940 to i64
  %953 = getelementptr inbounds ptr, ptr %951, i64 %952
  %954 = load ptr, ptr %953, align 8, !tbaa !14
  br label %171

955:                                              ; preds = %53
  %956 = load i32, ptr %56, align 8
  %957 = lshr i32 %956, 16
  %958 = and i32 %957, 255
  %959 = zext nneg i32 %958 to i64
  %960 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %959
  %961 = load i8, ptr %960, align 1, !tbaa !8
  %962 = and i8 %961, -2
  %963 = icmp eq i8 %962, 2
  br i1 %963, label %964, label %1052

964:                                              ; preds = %955
  %965 = zext i32 %24 to i64
  %966 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %965
  %967 = load i8, ptr %966, align 1, !tbaa !8
  %968 = and i8 %967, -2
  %969 = icmp eq i8 %968, 2
  br i1 %969, label %970, label %1052

970:                                              ; preds = %964
  %971 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %972 = load ptr, ptr %971, align 8, !tbaa !8
  %973 = getelementptr inbounds %struct.tree_common, ptr %972, i64 0, i32 2
  %974 = load ptr, ptr %973, align 8, !tbaa !8
  %975 = load i64, ptr %974, align 8
  %976 = and i64 %975, 2097152
  %977 = icmp eq i64 %976, 0
  %978 = select i1 %977, i32 98, i32 99
  %979 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %978, i32 noundef %24, ptr noundef nonnull %56) #21
  %980 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %981 = load ptr, ptr %980, align 8, !tbaa !8
  %982 = getelementptr inbounds %struct.tree_common, ptr %981, i64 0, i32 2
  %983 = load ptr, ptr %982, align 8, !tbaa !8
  %984 = load i64, ptr %983, align 8
  %985 = and i64 %984, 2097152
  %986 = icmp eq i64 %985, 0
  %987 = select i1 %986, i32 98, i32 99
  %988 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %987, i32 noundef %24, ptr noundef %55) #21
  %989 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %24, ptr noundef %979, ptr noundef %988) #21
  %990 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %989, ptr noundef %54) #21
  br label %1052

991:                                              ; preds = %53
  %992 = load i32, ptr %56, align 8
  %993 = lshr i32 %992, 16
  %994 = and i32 %993, 255
  %995 = zext nneg i32 %994 to i64
  %996 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %995
  %997 = load i8, ptr %996, align 1, !tbaa !8
  %998 = and i8 %997, -2
  %999 = icmp eq i8 %998, 2
  br i1 %999, label %1000, label %1052

1000:                                             ; preds = %991
  %1001 = zext i32 %24 to i64
  %1002 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1001
  %1003 = load i8, ptr %1002, align 1, !tbaa !8
  %1004 = and i8 %1003, -2
  %1005 = icmp eq i8 %1004, 2
  br i1 %1005, label %1006, label %1052

1006:                                             ; preds = %1000
  %1007 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %1008 = load ptr, ptr %1007, align 8, !tbaa !8
  %1009 = getelementptr inbounds %struct.tree_common, ptr %1008, i64 0, i32 2
  %1010 = load ptr, ptr %1009, align 8, !tbaa !8
  %1011 = load i64, ptr %1010, align 8
  %1012 = and i64 %1011, 2097152
  %1013 = icmp eq i64 %1012, 0
  %1014 = select i1 %1013, i32 98, i32 99
  %1015 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %1014, i32 noundef %24, ptr noundef nonnull %56) #21
  %1016 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %1017 = load ptr, ptr %1016, align 8, !tbaa !8
  %1018 = getelementptr inbounds %struct.tree_common, ptr %1017, i64 0, i32 2
  %1019 = load ptr, ptr %1018, align 8, !tbaa !8
  %1020 = load i64, ptr %1019, align 8
  %1021 = and i64 %1020, 2097152
  %1022 = icmp eq i64 %1021, 0
  %1023 = select i1 %1022, i32 98, i32 99
  %1024 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %1023, i32 noundef %24, ptr noundef %55) #21
  %1025 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 52, i32 noundef %24, ptr noundef %1015, ptr noundef %1024) #21
  br label %1052

1026:                                             ; preds = %53
  %1027 = load i32, ptr %56, align 8
  %1028 = lshr i32 %1027, 16
  %1029 = and i32 %1028, 255
  %1030 = zext nneg i32 %1029 to i64
  %1031 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1030
  %1032 = load i8, ptr %1031, align 1, !tbaa !8
  %1033 = and i8 %1032, -2
  %1034 = icmp eq i8 %1033, 2
  br i1 %1034, label %1035, label %1052

1035:                                             ; preds = %1026
  %1036 = zext i32 %24 to i64
  %1037 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1036
  %1038 = load i8, ptr %1037, align 1, !tbaa !8
  %1039 = and i8 %1038, -2
  %1040 = icmp eq i8 %1039, 2
  br i1 %1040, label %1041, label %1052

1041:                                             ; preds = %1035
  %1042 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %1043 = load ptr, ptr %1042, align 8, !tbaa !8
  %1044 = getelementptr inbounds %struct.tree_common, ptr %1043, i64 0, i32 2
  %1045 = load ptr, ptr %1044, align 8, !tbaa !8
  %1046 = load i64, ptr %1045, align 8
  %1047 = and i64 %1046, 2097152
  %1048 = icmp eq i64 %1047, 0
  %1049 = select i1 %1048, i32 98, i32 99
  %1050 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef %1049, i32 noundef %24, ptr noundef nonnull %56) #21
  %1051 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %24, ptr noundef %1050, ptr noundef %55) #21
  br label %1052

1052:                                             ; preds = %871, %917, %907, %938, %934, %793, %1035, %1026, %1000, %991, %964, %955, %849, %53, %900, %890, %831, %836, %826, %342, %332, %338, %293, %171, %210, %260, %258, %284, %291, %289, %267, %269, %236, %242, %240, %130, %135, %147, %109, %111, %119, %123, %93, %62, %45, %39, %34, %1041, %1006, %970, %840, %769, %762, %734, %732, %730, %728, %726, %724, %722, %720, %718, %716, %714, %712, %710, %706, %704, %700, %698, %694, %692, %687, %684, %681, %679, %677, %675, %673, %671, %667, %665, %661, %659, %657, %655, %651, %645, %639, %632, %627, %619, %613, %606, %601, %593, %591, %584, %582, %578, %576, %572, %570, %566, %564, %562, %560, %558, %554, %552, %548, %546, %544, %542, %348, %325, %169, %97, %82, %73, %70
  %1053 = phi ptr [ %1051, %1041 ], [ %1025, %1006 ], [ %990, %970 ], [ %842, %840 ], [ %779, %769 ], [ %764, %762 ], [ %735, %734 ], [ %733, %732 ], [ %731, %730 ], [ %729, %728 ], [ %727, %726 ], [ %725, %724 ], [ %723, %722 ], [ %721, %720 ], [ %719, %718 ], [ %717, %716 ], [ %715, %714 ], [ %711, %710 ], [ %713, %712 ], [ %705, %704 ], [ %707, %706 ], [ %699, %698 ], [ %701, %700 ], [ %693, %692 ], [ %695, %694 ], [ %689, %687 ], [ %686, %684 ], [ %683, %681 ], [ %680, %679 ], [ %678, %677 ], [ %676, %675 ], [ %672, %671 ], [ %674, %673 ], [ %666, %665 ], [ %668, %667 ], [ %662, %661 ], [ %660, %659 ], [ %656, %655 ], [ %658, %657 ], [ %652, %651 ], [ %644, %639 ], [ %650, %645 ], [ %631, %627 ], [ %636, %632 ], [ %618, %613 ], [ %624, %619 ], [ %605, %601 ], [ %610, %606 ], [ %592, %591 ], [ %598, %593 ], [ %583, %582 ], [ %588, %584 ], [ %577, %576 ], [ %579, %578 ], [ %571, %570 ], [ %573, %572 ], [ %567, %566 ], [ %565, %564 ], [ %563, %562 ], [ %559, %558 ], [ %561, %560 ], [ %553, %552 ], [ %555, %554 ], [ %549, %548 ], [ %547, %546 ], [ %545, %544 ], [ %543, %542 ], [ %353, %348 ], [ %327, %325 ], [ %170, %169 ], [ %98, %97 ], [ %89, %82 ], [ %74, %73 ], [ %72, %70 ], [ null, %34 ], [ null, %39 ], [ null, %45 ], [ null, %62 ], [ %95, %93 ], [ null, %123 ], [ null, %119 ], [ null, %111 ], [ null, %109 ], [ null, %147 ], [ null, %135 ], [ null, %130 ], [ %172, %171 ], [ %172, %210 ], [ %237, %236 ], [ %241, %240 ], [ %243, %242 ], [ %259, %258 ], [ %261, %260 ], [ %268, %267 ], [ %270, %269 ], [ %286, %284 ], [ %290, %289 ], [ %292, %291 ], [ null, %293 ], [ null, %338 ], [ null, %332 ], [ null, %342 ], [ %830, %826 ], [ null, %836 ], [ null, %831 ], [ null, %900 ], [ %864, %890 ], [ null, %964 ], [ null, %955 ], [ null, %1000 ], [ null, %991 ], [ null, %1035 ], [ null, %1026 ], [ null, %53 ], [ null, %849 ], [ null, %793 ], [ null, %934 ], [ null, %938 ], [ %864, %907 ], [ %864, %917 ], [ null, %871 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret ptr %1053
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @lookup_constant_def(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_s_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_0_stat(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_decl_rtl_for_debug(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @copy_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_gen_unary(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_mem_addr_space(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_mem_ref_addr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @smallest_mode_for_size(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @simplify_gen_ternary(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @floor_sdiv_adjust(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %5 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 80, i32 noundef 13, ptr noundef %1, ptr noundef %4) #21
  %6 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %0, ptr noundef %2, ptr noundef %1) #21
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %8 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 85, i32 noundef 13, ptr noundef %6, ptr noundef %7) #21
  %9 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !14
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %11 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %10) #21
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %13 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %5, ptr noundef %11, ptr noundef %12) #21
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ceil_udiv_adjust(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %4 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 80, i32 noundef 13, ptr noundef %1, ptr noundef %3) #21
  %5 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !14
  %6 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %7 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %4, ptr noundef %5, ptr noundef %6) #21
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ceil_sdiv_adjust(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %5 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 80, i32 noundef 13, ptr noundef %1, ptr noundef %4) #21
  %6 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %0, ptr noundef %2, ptr noundef %1) #21
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %8 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 83, i32 noundef 13, ptr noundef %6, ptr noundef %7) #21
  %9 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !14
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %11 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %8, ptr noundef %9, ptr noundef %10) #21
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %13 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %5, ptr noundef %11, ptr noundef %12) #21
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @round_udiv_adjust(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %2, ptr noundef %1) #21
  %5 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 82, i32 noundef 13, ptr noundef %1, ptr noundef %4) #21
  %6 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !14
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %8 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %5, ptr noundef %6, ptr noundef %7) #21
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @round_sdiv_adjust(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 111, i32 noundef %0, ptr noundef %1) #21
  %5 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 111, i32 noundef %0, ptr noundef %2) #21
  %6 = tail call ptr @gen_rtx_fmt_e_stat(i32 noundef 111, i32 noundef %0, ptr noundef %1) #21
  %7 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 50, i32 noundef %0, ptr noundef %5, ptr noundef %6) #21
  %8 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 82, i32 noundef 13, ptr noundef %4, ptr noundef %7) #21
  %9 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 55, i32 noundef %0, ptr noundef %2, ptr noundef %1) #21
  %10 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %11 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 83, i32 noundef 13, ptr noundef %9, ptr noundef %10) #21
  %12 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 65), align 8, !tbaa !14
  %13 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 63), align 8, !tbaa !14
  %14 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %11, ptr noundef %12, ptr noundef %13) #21
  %15 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !14
  %16 = tail call ptr @gen_rtx_fmt_eee_stat(i32 noundef 47, i32 noundef %0, ptr noundef %8, ptr noundef %14, ptr noundef %15) #21
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_eee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @int_mode_for_mode(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_SUBREG(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @convert_debug_memory_address(i32 noundef %0, ptr noundef readonly returned %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8
  %4 = lshr i32 %3, 16
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %0, 16
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2202, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = icmp eq i32 %5, %0
  %10 = icmp eq i32 %5, 0
  %11 = or i1 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2203, ptr noundef nonnull @.str.1) #21
  br label %13

13:                                               ; preds = %8, %12
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !259
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #2 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @expand_function_end() local_unnamed_addr #3

; Function Attrs: optsize
declare void @fixup_tail_calls() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{i32 0, i32 65536}
!7 = !{i32 0, i32 256}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{i8 0, i8 2}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !19}
!24 = !{!25, !13, i64 452}
!25 = !{!"rtl_data", !26, i64 0, !27, i64 40, !28, i64 96, !29, i64 112, !31, i64 208, !32, i64 248, !13, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !17, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !13, i64 432, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !15, i64 456, !9, i64 464, !9, i64 465, !9, i64 466, !9, i64 467, !9, i64 468, !9, i64 469, !9, i64 470, !9, i64 471, !9, i64 472, !9, i64 473, !9, i64 474, !9, i64 475, !9, i64 476, !9, i64 477, !9, i64 478, !9, i64 479, !9, i64 480, !9, i64 481, !9, i64 482, !9, i64 483, !9, i64 484, !9, i64 485}
!26 = !{!"expr_status", !13, i64 0, !13, i64 4, !13, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!27 = !{!"emit_status", !13, i64 0, !13, i64 4, !15, i64 8, !15, i64 16, !15, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !15, i64 48}
!28 = !{!"varasm_status", !15, i64 0, !13, i64 8}
!29 = !{!"incoming_args", !13, i64 0, !13, i64 4, !13, i64 8, !15, i64 16, !30, i64 24, !15, i64 88}
!30 = !{!"ix86_args", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60}
!31 = !{!"function_subsections", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!32 = !{!"rtl_eh", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !9, i64 48}
!33 = !{!25, !9, i64 482}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = !{!37, !17, i64 32}
!37 = !{!"stack_var", !15, i64 0, !17, i64 8, !17, i64 16, !13, i64 24, !17, i64 32, !17, i64 40, !15, i64 48}
!38 = !{!37, !17, i64 16}
!39 = !{!37, !15, i64 0}
!40 = !{!37, !17, i64 40}
!41 = distinct !{!41, !19}
!42 = distinct !{!42, !19}
!43 = !{!37, !15, i64 48}
!44 = distinct !{!44, !19}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = !{!37, !17, i64 8}
!48 = !{i32 0, i32 536870912}
!49 = !{!37, !13, i64 24}
!50 = !{!51, !15, i64 16}
!51 = !{!"ssaexpand", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!52 = !{!51, !15, i64 0}
!53 = !{!54, !15, i64 0}
!54 = !{!"_var_map", !15, i64 0, !15, i64 8, !15, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !15, i64 40, !15, i64 48}
!55 = !{!56, !13, i64 0}
!56 = !{!"partition_elem", !13, i64 0, !15, i64 8, !13, i64 16}
!57 = !{!54, !15, i64 8}
!58 = !{!25, !13, i64 436}
!59 = !{!25, !13, i64 448}
!60 = !{!25, !17, i64 400}
!61 = !{!62, !15, i64 48}
!62 = !{!"function", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !13, i64 124, !15, i64 128, !13, i64 136, !13, i64 137, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 138, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139, !13, i64 139}
!63 = !{!54, !13, i64 24}
!64 = !{!62, !15, i64 8}
!65 = !{!66, !15, i64 0}
!66 = !{!"control_flow_graph", !15, i64 0, !15, i64 8, !15, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !15, i64 40, !13, i64 48, !9, i64 52, !9, i64 60, !13, i64 68, !13, i64 72}
!67 = !{!62, !13, i64 112}
!68 = !{!69, !15, i64 1736}
!69 = !{!"gcc_target", !70, i64 0, !72, i64 368, !73, i64 664, !13, i64 744, !15, i64 752, !15, i64 760, !15, i64 768, !15, i64 776, !15, i64 784, !15, i64 792, !15, i64 800, !15, i64 808, !15, i64 816, !15, i64 824, !15, i64 832, !15, i64 840, !15, i64 848, !15, i64 856, !15, i64 864, !15, i64 872, !15, i64 880, !15, i64 888, !15, i64 896, !15, i64 904, !15, i64 912, !15, i64 920, !15, i64 928, !15, i64 936, !15, i64 944, !15, i64 952, !15, i64 960, !15, i64 968, !15, i64 976, !15, i64 984, !15, i64 992, !15, i64 1000, !15, i64 1008, !15, i64 1016, !15, i64 1024, !15, i64 1032, !15, i64 1040, !15, i64 1048, !15, i64 1056, !17, i64 1064, !17, i64 1072, !15, i64 1080, !15, i64 1088, !15, i64 1096, !15, i64 1104, !15, i64 1112, !15, i64 1120, !15, i64 1128, !15, i64 1136, !15, i64 1144, !15, i64 1152, !15, i64 1160, !15, i64 1168, !74, i64 1176, !15, i64 1232, !15, i64 1240, !15, i64 1248, !15, i64 1256, !15, i64 1264, !15, i64 1272, !15, i64 1280, !15, i64 1288, !15, i64 1296, !15, i64 1304, !15, i64 1312, !15, i64 1320, !15, i64 1328, !15, i64 1336, !15, i64 1344, !15, i64 1352, !15, i64 1360, !15, i64 1368, !15, i64 1376, !15, i64 1384, !15, i64 1392, !15, i64 1400, !15, i64 1408, !15, i64 1416, !15, i64 1424, !15, i64 1432, !15, i64 1440, !15, i64 1448, !15, i64 1456, !17, i64 1464, !75, i64 1472, !15, i64 1664, !15, i64 1672, !15, i64 1680, !15, i64 1688, !15, i64 1696, !15, i64 1704, !15, i64 1712, !15, i64 1720, !15, i64 1728, !15, i64 1736, !15, i64 1744, !15, i64 1752, !15, i64 1760, !15, i64 1768, !15, i64 1776, !76, i64 1784, !77, i64 1792, !78, i64 1896, !79, i64 1968, !15, i64 2016, !9, i64 2024, !9, i64 2025, !9, i64 2026, !9, i64 2027, !9, i64 2028, !9, i64 2029, !9, i64 2030, !9, i64 2031, !9, i64 2032, !9, i64 2033, !9, i64 2034, !9, i64 2035}
!70 = !{!"asm_out", !15, i64 0, !15, i64 8, !15, i64 16, !71, i64 24, !71, i64 56, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360}
!71 = !{!"asm_int_op", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!72 = !{!"sched", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288}
!73 = !{!"vectorize", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72}
!74 = !{!"addr_space", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48}
!75 = !{!"calls", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184}
!76 = !{!"c", !15, i64 0}
!77 = !{!"cxx", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96}
!78 = !{!"emutls", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !9, i64 64, !9, i64 65}
!79 = !{!"target_option_hooks", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!80 = !{!25, !13, i64 440}
!81 = !{!66, !13, i64 68}
!82 = !{!83, !13, i64 8}
!83 = !{!"param_info", !15, i64 0, !13, i64 8, !9, i64 12, !13, i64 16, !13, i64 20, !15, i64 24}
!84 = distinct !{!84, !19}
!85 = !{!25, !15, i64 336}
!86 = !{i64 0, i64 4, !12, i64 8, i64 8, !14}
!87 = !{i64 0, i64 8, !14}
!88 = !{!89, !13, i64 48}
!89 = !{!"edge_def", !15, i64 0, !15, i64 8, !9, i64 16, !15, i64 24, !15, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !17, i64 56}
!90 = distinct !{!90, !19}
!91 = !{!92, !15, i64 56}
!92 = !{!"basic_block_def", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !9, i64 32, !15, i64 48, !15, i64 56, !9, i64 64, !17, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96}
!93 = !{!66, !15, i64 8}
!94 = distinct !{!94, !19}
!95 = !{!62, !15, i64 24}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !19}
!100 = !{!66, !13, i64 32}
!101 = !{!102, !15, i64 0}
!102 = !{!"simple_bitmap_def", !15, i64 0, !13, i64 8, !13, i64 12, !9, i64 16}
!103 = distinct !{!103, !19}
!104 = !{!105, !15, i64 168}
!105 = !{!"gcc_debug_hooks", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !13, i64 248}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !19}
!108 = !{!51, !15, i64 24}
!109 = distinct !{!109, !19}
!110 = !{!62, !15, i64 72}
!111 = distinct !{!111, !19}
!112 = distinct !{!112, !19}
!113 = !{!54, !15, i64 16}
!114 = !{!115, !15, i64 16}
!115 = !{!"gimple_df", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !116, i64 32, !116, i64 48, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !13, i64 96, !117, i64 104}
!116 = !{!"pt_solution", !13, i64 0, !13, i64 0, !13, i64 0, !13, i64 0, !13, i64 0, !13, i64 0, !15, i64 8}
!117 = !{!"ssa_operands", !15, i64 0, !13, i64 8, !13, i64 12, !9, i64 16, !15, i64 24, !15, i64 32}
!118 = !{!92, !15, i64 8}
!119 = !{!92, !13, i64 96}
!120 = !{!89, !15, i64 8}
!121 = !{!92, !13, i64 88}
!122 = !{!92, !17, i64 72}
!123 = !{!89, !13, i64 52}
!124 = !{!89, !17, i64 56}
!125 = !{!126, !13, i64 0}
!126 = !{!"", !13, i64 0, !15, i64 8}
!127 = !{!92, !13, i64 80}
!128 = !{i64 0, i64 8, !14, i64 8, i64 8, !14, i64 16, i64 8, !14}
!129 = !{!130, !15, i64 0}
!130 = !{!"rtl_bb_info", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !13, i64 32}
!131 = distinct !{!131, !19}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19}
!134 = distinct !{!134, !19}
!135 = distinct !{!135, !19}
!136 = !{!89, !13, i64 40}
!137 = !{!89, !15, i64 32}
!138 = distinct !{!138, !19}
!139 = !{!130, !15, i64 8}
!140 = distinct !{!140, !19}
!141 = !{!92, !15, i64 48}
!142 = !{!62, !13, i64 116}
!143 = distinct !{!143, !19}
!144 = !{!92, !15, i64 0}
!145 = distinct !{!145, !19}
!146 = !{!89, !15, i64 0}
!147 = distinct !{!147, !19}
!148 = !{!25, !9, i64 481}
!149 = !{!69, !15, i64 1616}
!150 = !{!25, !13, i64 444}
!151 = !{!25, !9, i64 479}
!152 = !{!25, !9, i64 480}
!153 = !{!69, !15, i64 1624}
!154 = !{!25, !15, i64 200}
!155 = distinct !{!155, !19}
!156 = !{!157, !15, i64 0}
!157 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16}
!158 = !{!157, !15, i64 8}
!159 = !{!157, !15, i64 16}
!160 = !{!161, !15, i64 0}
!161 = !{!"gimple_seq_node_d", !15, i64 0, !15, i64 8, !15, i64 16}
!162 = distinct !{!162, !19}
!163 = !{!161, !15, i64 16}
!164 = !{!165, !15, i64 0}
!165 = !{!"gimple_bb_info", !15, i64 0, !15, i64 8}
!166 = !{!167, !15, i64 0}
!167 = !{!"gimple_seq_d", !15, i64 0, !15, i64 8, !15, i64 16}
!168 = distinct !{!168, !19}
!169 = distinct !{!169, !19}
!170 = distinct !{!170, !19}
!171 = distinct !{!171, !19}
!172 = distinct !{!172, !19}
!173 = distinct !{!173, !19}
!174 = !{i32 0, i32 3}
!175 = distinct !{!175, !19}
!176 = distinct !{!176, !19}
!177 = distinct !{!177, !19}
!178 = distinct !{!178, !19, !21, !22}
!179 = distinct !{!179, !19}
!180 = distinct !{!180, !19}
!181 = distinct !{!181, !19}
!182 = distinct !{!182, !19}
!183 = !{ptr @stack_protect_decl_phase_1, ptr @stack_protect_decl_phase_2}
!184 = distinct !{!184, !19}
!185 = distinct !{!185, !19}
!186 = distinct !{!186, !19}
!187 = !{i32 0, i32 16}
!188 = distinct !{!188, !19}
!189 = distinct !{!189, !19}
!190 = distinct !{!190, !19}
!191 = !{!115, !15, i64 64}
!192 = distinct !{!192, !19}
!193 = distinct !{!193, !19}
!194 = distinct !{!194, !19}
!195 = !{!196, !15, i64 0}
!196 = !{!"bitmap_head_def", !15, i64 0, !15, i64 8, !13, i64 16, !15, i64 24}
!197 = !{!198, !15, i64 0}
!198 = !{!"", !15, i64 0, !15, i64 8, !13, i64 16, !17, i64 24}
!199 = !{!198, !15, i64 8}
!200 = !{!201, !13, i64 16}
!201 = !{!"bitmap_element_def", !15, i64 0, !15, i64 8, !13, i64 16, !9, i64 24}
!202 = !{!198, !13, i64 16}
!203 = !{!198, !17, i64 24}
!204 = distinct !{!204, !19}
!205 = distinct !{!205, !19}
!206 = !{!201, !15, i64 0}
!207 = !{!208, !13, i64 0}
!208 = !{!"VEC_tree_base", !13, i64 0, !13, i64 4, !9, i64 8}
!209 = !{!116, !15, i64 8}
!210 = distinct !{!210, !19}
!211 = !{!212, !13, i64 0}
!212 = !{!"VEC_edge_base", !13, i64 0, !13, i64 4, !9, i64 8}
!213 = distinct !{!213, !19}
!214 = !{!215, !13, i64 4}
!215 = !{!"ssa_operand_iterator_d", !9, i64 0, !13, i64 4, !15, i64 8, !15, i64 16, !13, i64 24, !13, i64 28, !15, i64 32}
!216 = !{!215, !9, i64 0}
!217 = !{!51, !15, i64 8}
!218 = !{!219, !15, i64 8}
!219 = !{!"immediate_use_iterator_d", !15, i64 0, !15, i64 8, !220, i64 16, !15, i64 48}
!220 = !{!"ssa_use_operand_d", !15, i64 0, !15, i64 8, !9, i64 16, !15, i64 24}
!221 = !{!220, !15, i64 8}
!222 = !{!219, !15, i64 0}
!223 = !{!219, !15, i64 48}
!224 = !{!220, !15, i64 24}
!225 = !{!219, !15, i64 24}
!226 = !{!219, !15, i64 16}
!227 = !{!215, !15, i64 16}
!228 = !{!229, !15, i64 0}
!229 = !{!"use_optype_d", !15, i64 0, !220, i64 8}
!230 = !{!215, !15, i64 8}
!231 = !{!232, !15, i64 8}
!232 = !{!"def_optype_d", !15, i64 0, !15, i64 8}
!233 = !{!232, !15, i64 0}
!234 = distinct !{!234, !19}
!235 = distinct !{!235, !19}
!236 = distinct !{!236, !19}
!237 = distinct !{!237, !19}
!238 = !{!167, !15, i64 8}
!239 = !{!240, !13, i64 0}
!240 = !{!"separate_ops", !13, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !13, i64 40}
!241 = !{!240, !15, i64 8}
!242 = !{!240, !15, i64 24}
!243 = !{!240, !15, i64 16}
!244 = !{!240, !13, i64 40}
!245 = distinct !{!245, !19}
!246 = distinct !{!246, !19}
!247 = distinct !{!247, !19}
!248 = !{!215, !15, i64 32}
!249 = !{!215, !13, i64 28}
!250 = !{!215, !13, i64 24}
!251 = !{!229, !15, i64 32}
!252 = !{!220, !15, i64 0}
!253 = distinct !{!253, !19}
!254 = !{!69, !15, i64 1184}
!255 = !{!256, !15, i64 8}
!256 = !{!"constructor_elt_d", !15, i64 0, !15, i64 8}
!257 = distinct !{!257, !19}
!258 = distinct !{!258, !19}
!259 = !{!260, !13, i64 0}
!260 = !{!"VEC_constructor_elt_base", !13, i64 0, !13, i64 4, !9, i64 8}
