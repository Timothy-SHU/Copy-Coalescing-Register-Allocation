; ModuleID = 'tree-vrp.c'
source_filename = "tree-vrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.value_range_d = type { i32, ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.assert_locus_d = type { ptr, ptr, %struct.gimple_stmt_iterator, i32, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.switch_update = type { ptr, ptr }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.prop_value_d = type { i32, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_switch_update_base = type { i32, i32, [1 x %struct.switch_update] }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@vr_value = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"tree-vrp.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"nonnull\00", align 1
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s[\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"-INF(OVF)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"-INF\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"+INF(OVF)\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"+INF\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"  EQUIVALENCES: { \00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"} (%u elements)\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"VARYING\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"INVALID RANGE\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Assertions to be inserted for \00", align 1
@asserts_for = internal unnamed_addr global ptr null, align 8
@.str.23 = private unnamed_addr constant [9 x i8] c"\0A\09BB #%d\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"\0A\09EDGE %d->%d\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"\0A\09PREDICATE: \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.27 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"\0AASSERT_EXPRs to be inserted\0A\0A\00", align 1
@need_assert_for = internal unnamed_addr global ptr null, align 8
@pass_vrp = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.29, ptr @gate_vrp, ptr @execute_vrp, ptr null, ptr null, i32 0, i32 52, i32 32, i32 0, i32 0, i32 0, i32 2087 } }, align 8
@.str.29 = private unnamed_addr constant [4 x i8] c"vrp\00", align 1
@flag_tree_vrp = external local_unnamed_addr global i32, align 4
@to_remove_edges = internal unnamed_addr global ptr null, align 8
@to_update_switch_stmts = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [40 x i8] c"\0ASSA form after inserting ASSERT_EXPRs\0A\00", align 1
@live = internal unnamed_addr global ptr null, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.31 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.32 = private unnamed_addr constant [19 x i8] c"Adding assert for \00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c" from \00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@flag_delete_null_pointer_checks = external local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"Number of ASSERT_EXPR expressions inserted\00", align 1
@vr_phi_edge_counts = internal unnamed_addr global ptr null, align 8
@.str.37 = private unnamed_addr constant [22 x i8] c"\0AVisiting statement:\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"Found new range for \00", align 1
@compare_names.s_obstack = internal unnamed_addr global ptr null, align 8
@compare_names.s_e1 = internal unnamed_addr global ptr null, align 8
@compare_names.s_e2 = internal unnamed_addr global ptr null, align 8
@.str.39 = private unnamed_addr constant [39 x i8] c"\0AVisiting conditional with predicate: \00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"\0AWith known ranges\0A\00", align 1
@.str.41 = private unnamed_addr constant [84 x i8] c"\0AIgnoring predicate evaluation because it assumes that signed overflow is undefined\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"\0APredicate evaluates to: \00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"DON'T KNOW\0A\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"\0AVisiting switch expression with operand \00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c" with known range \00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"  not a single destination for this range\0A\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"  will take edge to \00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"\0AVisiting PHI node: \00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"\0A    Argument #%d (%d -> %d %sexecutable)\0A\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"\0A\09Value: \00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c": loop information indicates does not overflow\0A\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"\0AValue ranges after VRP:\0A\0A\00", align 1
@warn_array_bounds = external local_unnamed_addr global i32, align 4
@.str.54 = private unnamed_addr constant [19 x i8] c"Folding predicate \00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.56 = private unnamed_addr constant [81 x i8] c"assuming signed overflow does not occur when simplifying conditional to constant\00", align 1
@.str.57 = private unnamed_addr constant [69 x i8] c"assuming signed overflow does not occur when simplifying conditional\00", align 1
@warn_strict_overflow = external local_unnamed_addr global i32, align 4
@input_location = external local_unnamed_addr global i32, align 4
@.str.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@warn_type_limits = external local_unnamed_addr global i32, align 4
@.str.59 = private unnamed_addr constant [58 x i8] c"comparison always false due to limited range of data type\00", align 1
@.str.60 = private unnamed_addr constant [57 x i8] c"comparison always true due to limited range of data type\00", align 1
@.str.61 = private unnamed_addr constant [76 x i8] c"assuming signed overflow does not occur when simplifying && or || to & or |\00", align 1
@.str.62 = private unnamed_addr constant [86 x i8] c"assuming signed overflow does not occur when simplifying ==, != or ! to identity or ^\00", align 1
@.str.63 = private unnamed_addr constant [92 x i8] c"assuming signed overflow does not occur when simplifying %</%> or %<%%%> to %<>>%> or %<&%>\00", align 1
@.str.64 = private unnamed_addr constant [88 x i8] c"assuming signed overflow does not occur when simplifying %<abs (X)%> to %<X%> or %<-X%>\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"Simplified relational \00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c" into \00", align 1
@.str.67 = private unnamed_addr constant [33 x i8] c"removing unreachable case label\0A\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"array subscript is outside array bounds\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"array subscript is above array bounds\00", align 1
@.str.70 = private unnamed_addr constant [38 x i8] c"array subscript is below array bounds\00", align 1
@stack = internal global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ssa_name_nonnegative_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !1022 {
  %2 = tail call fastcc ptr @get_value_range(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4, !prof !1023

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !1024
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %14, !prof !1030

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.value_range_d, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1031
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !1032
  %11 = tail call fastcc i32 @compare_values(ptr noundef %9, ptr noundef %10) #20
  %12 = icmp ult i32 %11, 2
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi i8 [ %13, %7 ], [ 0, %1 ], [ 0, %4 ]
  ret i8 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_value_range(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1033 !PGOFuncName !1034 {
  %2 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4, !prof !1035

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !1036
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !1032
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %36, !prof !1037

11:                                               ; preds = %4
  %12 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #21
  %13 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  %14 = getelementptr inbounds ptr, ptr %13, i64 %7
  store ptr %12, ptr %14, align 8, !tbaa !1032
  %15 = getelementptr inbounds %struct.value_range_d, ptr %12, i64 0, i32 3
  store ptr null, ptr %15, align 8, !tbaa !1038
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !1036
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 4294967296
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %36, label %21, !prof !1039

21:                                               ; preds = %11
  %22 = load i64, ptr %17, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 34
  br i1 %24, label %25, label %35, !prof !1040

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !1036
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %35 [
    i16 10, label %30
    i16 12, label %30
  ], !prof !1041

30:                                               ; preds = %25, %25
  %31 = tail call fastcc zeroext i8 @nonnull_arg_p(ptr noundef nonnull %17) #20, !range !1042
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33, !prof !1043

33:                                               ; preds = %30
  %34 = load ptr, ptr %26, align 8, !tbaa !1036
  tail call fastcc void @set_value_range_to_nonnull(ptr noundef nonnull %12, ptr noundef %34) #20
  br label %36

35:                                               ; preds = %25, %30, %21
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %12) #20
  br label %36

36:                                               ; preds = %11, %35, %33, %4, %1
  %37 = phi ptr [ null, %1 ], [ %9, %4 ], [ %12, %33 ], [ %12, %35 ], [ %12, %11 ]
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compare_values(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1044 !PGOFuncName !1045 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store i8 0, ptr %3, align 1, !tbaa !1036
  %4 = call fastcc i32 @compare_values_warnv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #20
  %5 = load i8, ptr %3, align 1, !tbaa !1036
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7, !prof !1046

7:                                                ; preds = %2
  %8 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #21
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10, !prof !1047

10:                                               ; preds = %7
  %11 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14, !prof !1047

13:                                               ; preds = %10, %7
  br label %14

14:                                               ; preds = %13, %10, %2
  %15 = phi i32 [ %4, %10 ], [ -2, %13 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @nonnull_arg_p(ptr noundef readonly %0) unnamed_addr #0 !prof !1048 !PGOFuncName !1049 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 34
  br i1 %4, label %5, label %10, !prof !1050

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1036
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %10 [
    i16 10, label %11
    i16 12, label %11
  ], !prof !1051

10:                                               ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 318, ptr noundef nonnull @.str.1) #21
  br label %11

11:                                               ; preds = %5, %5, %10
  %12 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !1052
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %62, label %16, !prof !1054

16:                                               ; preds = %11
  %17 = load ptr, ptr @current_function_decl, align 8, !tbaa !1032
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !1036
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !1036
  %22 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %21) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %62, label %24, !prof !1055

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tree_list, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !1036
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28, !prof !1056

28:                                               ; preds = %24
  %29 = load ptr, ptr @current_function_decl, align 8, !tbaa !1032
  %30 = getelementptr inbounds %struct.tree_decl_non_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !1036
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %0
  %34 = or i1 %32, %33
  br i1 %34, label %44, label %35, !prof !1057

35:                                               ; preds = %28, %35
  %36 = phi ptr [ %40, %35 ], [ %31, %28 ]
  %37 = phi i64 [ %39, %35 ], [ 1, %28 ]
  %38 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 1
  %39 = add i64 %37, 1
  %40 = load ptr, ptr %38, align 8, !tbaa !1036
  %41 = icmp eq ptr %40, null
  %42 = icmp eq ptr %40, %0
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %35, !prof !1058, !llvm.loop !1059

44:                                               ; preds = %35, %28
  %45 = phi i64 [ 1, %28 ], [ %39, %35 ]
  %46 = phi i1 [ %33, %28 ], [ %42, %35 ]
  br i1 %46, label %49, label %47, !prof !1061

47:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 344, ptr noundef nonnull @.str.1) #21
  %48 = load ptr, ptr %25, align 8, !tbaa !1036
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi ptr [ %26, %44 ], [ %48, %47 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %56, !prof !1062

52:                                               ; preds = %56
  %53 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !1036
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56, !prof !1063, !llvm.loop !1064

56:                                               ; preds = %49, %52
  %57 = phi ptr [ %54, %52 ], [ %50, %49 ]
  %58 = getelementptr inbounds %struct.tree_list, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !1036
  %60 = tail call i32 @compare_tree_int(ptr noundef %59, i64 noundef %45) #21
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %52, !prof !1065

62:                                               ; preds = %56, %52, %49, %24, %16, %11
  %63 = phi i8 [ 1, %11 ], [ 0, %16 ], [ 1, %24 ], [ 0, %49 ], [ 1, %56 ], [ 0, %52 ]
  ret i8 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_nonnull(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1066 !PGOFuncName !1067 {
  %3 = tail call ptr @build_int_cst(ptr noundef %1, i64 noundef 0) #21
  %4 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 2, ptr noundef %3, ptr noundef %3, ptr noundef %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_varying(ptr nocapture noundef %0) unnamed_addr #0 !prof !1068 !PGOFuncName !1069 {
  store i32 3, ptr %0, align 8, !tbaa !1024
  %2 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %3, align 8, !tbaa !1038
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !1070

6:                                                ; preds = %1
  tail call void @bitmap_clear(ptr noundef nonnull %4) #21
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1071 !PGOFuncName !1072 {
  store i32 %1, ptr %0, align 8, !tbaa !1024
  %6 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !1031
  %7 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !1073
  %8 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !1038
  %10 = icmp eq ptr %9, null
  %11 = icmp ne ptr %4, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %15, !prof !1074

13:                                               ; preds = %5
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %14, ptr %8, align 8, !tbaa !1038
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi ptr [ %14, %13 ], [ %9, %5 ]
  %17 = icmp eq ptr %16, %4
  br i1 %17, label %24, label %18, !prof !1075

18:                                               ; preds = %15
  br i1 %11, label %19, label %23, !prof !1076

19:                                               ; preds = %18
  %20 = load ptr, ptr %4, align 8, !tbaa !1077
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !1079

22:                                               ; preds = %19
  tail call void @bitmap_copy(ptr noundef %16, ptr noundef nonnull %4) #21
  br label %24

23:                                               ; preds = %19, %18
  tail call void @bitmap_clear(ptr noundef %16) #21
  br label %24

24:                                               ; preds = %22, %23, %15
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compare_values_warnv(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #0 !prof !1080 !PGOFuncName !1081 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %206, label %5, !prof !1082

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %5, %130
  %8 = phi ptr [ %1, %5 ], [ %132, %130 ]
  %9 = phi ptr [ %0, %5 ], [ %131, %130 ]
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1036
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 10
  %16 = icmp eq i32 %14, 12
  %17 = or i1 %15, %16
  %18 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !1036
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 10
  %24 = icmp eq i32 %22, 12
  %25 = or i1 %23, %24
  %26 = xor i1 %17, %25
  br i1 %26, label %27, label %29, !prof !1083

27:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1074, ptr noundef nonnull @.str.1) #21
  %28 = load ptr, ptr %10, align 8, !tbaa !1036
  br label %29

29:                                               ; preds = %7, %27
  %30 = phi ptr [ %11, %7 ], [ %28, %27 ]
  %31 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %30, ptr noundef nonnull %8) #21
  %32 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %31) #21
  %33 = load i64, ptr %9, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  %36 = trunc i64 %33 to i16
  switch i16 %36, label %138 [
    i16 141, label %37
    i16 63, label %37
    i16 64, label %37
  ], !prof !1084

37:                                               ; preds = %29, %29, %29
  %38 = load i64, ptr %32, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %138 [
    i16 141, label %40
    i16 63, label %40
    i16 64, label %40
  ], !prof !1085

40:                                               ; preds = %37, %37, %37
  %41 = icmp eq i32 %35, 141
  br i1 %41, label %60, label %42, !prof !1086

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !1036
  %45 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !1036
  %47 = tail call i32 @tree_int_cst_sgn(ptr noundef %46) #21
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %60, !prof !1087

49:                                               ; preds = %42
  %50 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %46) #20, !range !1042
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %206, !prof !1088

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !1036
  %55 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef %54, ptr noundef %46) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %206, label %57, !prof !1089

57:                                               ; preds = %52
  %58 = icmp eq i32 %35, 64
  %59 = select i1 %58, i32 63, i32 64
  br label %60

60:                                               ; preds = %40, %42, %57
  %61 = phi ptr [ %44, %57 ], [ %44, %42 ], [ %9, %40 ]
  %62 = phi ptr [ %55, %57 ], [ %46, %42 ], [ null, %40 ]
  %63 = phi i32 [ %59, %57 ], [ %35, %42 ], [ 141, %40 ]
  %64 = load i64, ptr %32, align 8
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 141
  br i1 %67, label %86, label %68, !prof !1090

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !1036
  %71 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !1036
  %73 = tail call i32 @tree_int_cst_sgn(ptr noundef %72) #21
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %86, !prof !1091

75:                                               ; preds = %68
  %76 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %72) #20, !range !1042
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %206, !prof !1092

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !1036
  %81 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef %80, ptr noundef %72) #21
  %82 = icmp eq ptr %81, null
  br i1 %82, label %206, label %83, !prof !1093

83:                                               ; preds = %78
  %84 = icmp eq i32 %66, 64
  %85 = select i1 %84, i32 63, i32 64
  br label %86

86:                                               ; preds = %60, %68, %83
  %87 = phi ptr [ %70, %83 ], [ %70, %68 ], [ %32, %60 ]
  %88 = phi ptr [ %81, %83 ], [ %72, %68 ], [ null, %60 ]
  %89 = phi i32 [ %85, %83 ], [ %66, %68 ], [ 141, %60 ]
  %90 = icmp eq ptr %61, %87
  br i1 %90, label %91, label %206, !prof !1094

91:                                               ; preds = %86
  %92 = icmp eq i32 %63, 141
  %93 = icmp eq i32 %89, 141
  %94 = and i1 %92, %93
  br i1 %94, label %206, label %95, !prof !1095

95:                                               ; preds = %91
  %96 = load ptr, ptr %10, align 8, !tbaa !1036
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 2097152
  %99 = icmp eq i64 %98, 0
  %100 = load i32, ptr @flag_wrapv, align 4
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %99, i1 %101, i1 false
  %103 = load i32, ptr @flag_trapv, align 4
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %102, i1 %104, i1 false
  %106 = load i32, ptr @flag_strict_overflow, align 4
  %107 = icmp ne i32 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %206, !prof !1096

109:                                              ; preds = %95
  br i1 %6, label %121, label %110, !prof !1097

110:                                              ; preds = %109
  br i1 %92, label %115, label %111, !prof !1098

111:                                              ; preds = %110
  %112 = load i64, ptr %9, align 8
  %113 = and i64 %112, 8388608
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %125, !prof !1099

115:                                              ; preds = %111, %110
  br i1 %93, label %120, label %116, !prof !1100

116:                                              ; preds = %115
  %117 = load i64, ptr %32, align 8
  %118 = and i64 %117, 8388608
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121, !prof !1100

120:                                              ; preds = %116, %115
  store i8 1, ptr %2, align 1, !tbaa !1036
  br label %121

121:                                              ; preds = %120, %116, %109
  br i1 %92, label %122, label %125, !prof !1101

122:                                              ; preds = %121
  %123 = trunc i32 %89 to i16
  switch i16 %123, label %137 [
    i16 63, label %206
    i16 64, label %124
  ], !prof !1102

124:                                              ; preds = %122
  br label %206

125:                                              ; preds = %111, %121
  %126 = trunc i32 %63 to i16
  switch i16 %126, label %137 [
    i16 63, label %127
    i16 64, label %134
  ], !prof !1103

127:                                              ; preds = %125
  br i1 %93, label %206, label %128, !prof !1104

128:                                              ; preds = %127
  %129 = trunc i32 %89 to i16
  switch i16 %129, label %137 [
    i16 63, label %130
    i16 64, label %206
  ], !prof !1105

130:                                              ; preds = %128, %135
  %131 = phi ptr [ %62, %128 ], [ %88, %135 ]
  %132 = phi ptr [ %88, %128 ], [ %62, %135 ]
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %206, label %7, !prof !1106

134:                                              ; preds = %125
  br i1 %93, label %206, label %135, !prof !1107

135:                                              ; preds = %134
  %136 = trunc i32 %89 to i16
  switch i16 %136, label %137 [
    i16 63, label %206
    i16 64, label %130
  ], !prof !1108

137:                                              ; preds = %128, %125, %135, %122
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1190, ptr noundef nonnull @.str.1) #21
  br label %138

138:                                              ; preds = %37, %29, %137
  %139 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %9) #21
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %206, label %141, !prof !1109

141:                                              ; preds = %138
  %142 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %32) #21
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %206, label %144, !prof !1110

144:                                              ; preds = %141
  %145 = load ptr, ptr %10, align 8, !tbaa !1036
  %146 = load i64, ptr %145, align 8
  %147 = trunc i64 %146 to i16
  switch i16 %147, label %148 [
    i16 10, label %179
    i16 12, label %179
  ], !prof !1111

148:                                              ; preds = %144
  %149 = load i64, ptr %9, align 8
  %150 = and i64 %149, 134217728
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156, !prof !1112

152:                                              ; preds = %148
  %153 = load i64, ptr %32, align 8
  %154 = and i64 %153, 134217728
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %177, label %156, !prof !1113

156:                                              ; preds = %152, %148
  br i1 %6, label %158, label %157, !prof !1114

157:                                              ; preds = %156
  store i8 1, ptr %2, align 1, !tbaa !1036
  br label %158

158:                                              ; preds = %157, %156
  %159 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef nonnull %9) #20, !range !1042
  %160 = icmp eq i8 %159, 0
  %161 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %32) #20, !range !1042
  br i1 %160, label %165, label %162, !prof !1115

162:                                              ; preds = %158
  %163 = add nsw i8 %161, -1
  %164 = sext i8 %163 to i32
  br label %206

165:                                              ; preds = %158
  %166 = icmp eq i8 %161, 0
  br i1 %166, label %167, label %206, !prof !1116

167:                                              ; preds = %165
  %168 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef nonnull %9) #20, !range !1042
  %169 = icmp eq i8 %168, 0
  %170 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %32) #20, !range !1042
  br i1 %169, label %174, label %171, !prof !1117

171:                                              ; preds = %167
  %172 = xor i8 %170, 1
  %173 = zext nneg i8 %172 to i32
  br label %206

174:                                              ; preds = %167
  %175 = icmp eq i8 %170, 0
  %176 = select i1 %175, i32 -2, i32 -1, !prof !1118
  br label %206

177:                                              ; preds = %152
  %178 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %9, ptr noundef nonnull %32) #21
  br label %206

179:                                              ; preds = %144, %144
  %180 = icmp eq ptr %32, %9
  br i1 %180, label %206, label %181, !prof !1119

181:                                              ; preds = %179
  %182 = tail call i32 @operand_equal_p(ptr noundef nonnull %9, ptr noundef %32, i32 noundef 0) #21
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %206, !prof !1120

184:                                              ; preds = %181
  %185 = tail call fastcc i32 @operand_less_p(ptr noundef nonnull %9, ptr noundef %32) #20
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %206, label %187, !prof !1121

187:                                              ; preds = %184
  %188 = tail call fastcc i32 @operand_less_p(ptr noundef %32, ptr noundef nonnull %9) #20
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %206, label %190, !prof !1122

190:                                              ; preds = %187
  %191 = load i64, ptr %9, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 23
  br i1 %193, label %194, label %198, !prof !1123

194:                                              ; preds = %190
  %195 = load i64, ptr %32, align 8
  %196 = and i64 %195, 65535
  %197 = icmp eq i64 %196, 23
  br i1 %197, label %205, label %198, !prof !1124

198:                                              ; preds = %194, %190
  %199 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !1032
  %200 = tail call ptr @fold_binary_to_constant(i32 noundef 102, ptr noundef %199, ptr noundef nonnull %9, ptr noundef %32) #21
  %201 = icmp eq ptr %200, null
  br i1 %201, label %205, label %202, !prof !1125

202:                                              ; preds = %198
  %203 = tail call i32 @integer_onep(ptr noundef nonnull %200) #21
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206, !prof !1126

205:                                              ; preds = %198, %202, %194
  br label %206

206:                                              ; preds = %130, %49, %52, %75, %78, %86, %91, %95, %127, %128, %134, %135, %3, %122, %124, %205, %181, %179, %184, %187, %202, %174, %165, %138, %141, %177, %171, %162
  %207 = phi i32 [ %164, %162 ], [ %173, %171 ], [ %178, %177 ], [ -2, %141 ], [ -2, %138 ], [ 1, %165 ], [ %176, %174 ], [ -2, %205 ], [ 0, %181 ], [ 0, %179 ], [ -1, %184 ], [ 1, %187 ], [ 2, %202 ], [ -1, %122 ], [ 1, %124 ], [ 0, %3 ], [ 0, %130 ], [ -2, %49 ], [ -2, %52 ], [ -2, %75 ], [ -2, %78 ], [ -2, %86 ], [ 0, %91 ], [ -2, %95 ], [ 1, %127 ], [ 1, %128 ], [ -1, %134 ], [ -1, %135 ]
  ret i32 %207
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !1127 !PGOFuncName !1128 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1036
  %4 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %3) #20, !range !1042
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6, !prof !1129

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !1130
  %11 = icmp ne i32 %10, 1
  %12 = and i64 %7, 134217728
  %13 = icmp eq i64 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %17, label %15, !prof !1131

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %0) #20, !range !1042
  br label %17

17:                                               ; preds = %15, %6, %1
  %18 = phi i8 [ 0, %6 ], [ 0, %1 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @fold_unary_to_constant(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !1132 !PGOFuncName !1133 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1036
  %4 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %3) #20, !range !1042
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6, !prof !1134

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !1130
  %11 = icmp ne i32 %10, 1
  %12 = and i64 %7, 134217728
  %13 = icmp eq i64 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %17, label %15, !prof !1135

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %0) #20, !range !1042
  br label %17

17:                                               ; preds = %15, %6, %1
  %18 = phi i8 [ 0, %6 ], [ 0, %1 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: optsize
declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @operand_less_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1136 !PGOFuncName !1137 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 23
  br i1 %5, label %6, label %39, !prof !1138

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %39, !prof !1139

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1036
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 2097152
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !1036
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !1036
  br i1 %15, label %31, label %22, !prof !1140

22:                                               ; preds = %10
  %23 = icmp ult i64 %18, %21
  br i1 %23, label %64, label %24, !prof !1141

24:                                               ; preds = %22
  %25 = icmp eq i64 %18, %21
  br i1 %25, label %26, label %64, !prof !1142

26:                                               ; preds = %24
  %27 = load i64, ptr %16, align 8, !tbaa !1036
  %28 = load i64, ptr %19, align 8, !tbaa !1036
  %29 = icmp ult i64 %27, %28
  %30 = zext i1 %29 to i32
  br label %64

31:                                               ; preds = %10
  %32 = icmp slt i64 %18, %21
  br i1 %32, label %64, label %33, !prof !1143

33:                                               ; preds = %31
  %34 = icmp eq i64 %18, %21
  br i1 %34, label %35, label %50, !prof !1144

35:                                               ; preds = %33
  %36 = load i64, ptr %16, align 8, !tbaa !1036
  %37 = load i64, ptr %19, align 8, !tbaa !1036
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %64, label %50, !prof !1145

39:                                               ; preds = %6, %2
  tail call void @fold_defer_overflow_warnings() #21
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !1032
  %41 = tail call ptr @fold_binary_to_constant(i32 noundef 97, ptr noundef %40, ptr noundef nonnull %0, ptr noundef %1) #21
  tail call void @fold_undefer_and_ignore_overflow_warnings() #21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43, !prof !1146

43:                                               ; preds = %39
  %44 = load i64, ptr %41, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 23
  br i1 %46, label %47, label %64, !prof !1147

47:                                               ; preds = %43
  %48 = tail call i32 @integer_zerop(ptr noundef nonnull %41) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %47, %35, %33
  %51 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef nonnull %0) #20, !range !1042
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53, !prof !1148

53:                                               ; preds = %50
  %54 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %1) #20, !range !1042
  %55 = xor i8 %54, 1
  %56 = zext nneg i8 %55 to i32
  br label %64

57:                                               ; preds = %50
  %58 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %1) #20, !range !1042
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60, !prof !1148

60:                                               ; preds = %57
  %61 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef nonnull %0) #20, !range !1042
  %62 = xor i8 %61, 1
  %63 = zext nneg i8 %62 to i32
  br label %64

64:                                               ; preds = %39, %43, %57, %47, %31, %35, %22, %26, %24, %60, %53
  %65 = phi i32 [ %56, %53 ], [ %63, %60 ], [ 1, %47 ], [ 1, %22 ], [ 0, %24 ], [ %30, %26 ], [ 1, %35 ], [ 1, %31 ], [ 0, %57 ], [ -2, %43 ], [ -2, %39 ]
  ret i32 %65
}

; Function Attrs: optsize
declare ptr @fold_binary_to_constant(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @needs_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1149 !PGOFuncName !1150 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %14, !prof !1151

7:                                                ; preds = %1
  %8 = and i64 %2, 2097152
  %9 = icmp eq i64 %8, 0
  %10 = load i32, ptr @flag_wrapv, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 %11, i1 false
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi i8 [ %13, %7 ], [ 0, %1 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_val_is_min(ptr noundef %0) unnamed_addr #0 !prof !1152 !PGOFuncName !1153 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1036
  %4 = tail call fastcc ptr @vrp_val_min(ptr noundef %3) #20
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %12, label %6, !prof !1154

6:                                                ; preds = %1
  %7 = icmp eq ptr %4, null
  br i1 %7, label %12, label %8, !prof !1155

8:                                                ; preds = %6
  %9 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0) #21
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %8, %1
  %13 = phi i8 [ 1, %1 ], [ 0, %6 ], [ %11, %8 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @vrp_val_min(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1156 !PGOFuncName !1157 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %10, !prof !1158

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !1036
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_val_is_max(ptr noundef %0) unnamed_addr #0 !prof !1159 !PGOFuncName !1160 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1036
  %4 = tail call fastcc ptr @vrp_val_max(ptr noundef %3) #20
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %12, label %6, !prof !1161

6:                                                ; preds = %1
  %7 = icmp eq ptr %4, null
  br i1 %7, label %12, label %8, !prof !1162

8:                                                ; preds = %6
  %9 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0) #21
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %8, %1
  %13 = phi i8 [ 1, %1 ], [ 0, %6 ], [ %11, %8 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @vrp_val_max(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1163 !PGOFuncName !1164 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %10, !prof !1165

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !1036
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #2

; Function Attrs: optsize
declare void @fold_undefer_and_ignore_overflow_warnings() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_value_range(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !1166 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 2, i64 1, ptr %0)
  br label %94

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 8, !tbaa !1024
  switch i32 %9, label %92 [
    i32 0, label %10
    i32 1, label %12
    i32 2, label %12
    i32 3, label %90
  ]

10:                                               ; preds = %8
  %11 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 9, i64 1, ptr %0)
  br label %94

12:                                               ; preds = %8, %8
  %13 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !1031
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1036
  %17 = icmp eq i32 %9, 2
  %18 = select i1 %17, ptr @.str.6, ptr @.str.7
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %18) #20
  %20 = load ptr, ptr %13, align 8, !tbaa !1031
  %21 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %20) #20, !range !1042
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 9, i64 1, ptr %0)
  br label %42

25:                                               ; preds = %12
  %26 = load i64, ptr %16, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -6
  %30 = icmp ult i32 %29, 3
  %31 = and i64 %26, 2097152
  %32 = icmp eq i64 %31, 0
  %33 = and i1 %32, %30
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load ptr, ptr %13, align 8, !tbaa !1031
  %36 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %35) #20, !range !1042
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 4, i64 1, ptr %0)
  br label %42

40:                                               ; preds = %25, %34
  %41 = load ptr, ptr %13, align 8, !tbaa !1031
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %41, i32 noundef 0) #21
  br label %42

42:                                               ; preds = %38, %40, %23
  %43 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %0)
  %44 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !1073
  %46 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %45) #20, !range !1042
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %64

50:                                               ; preds = %42
  %51 = load i64, ptr %16, align 8
  %52 = trunc i64 %51 to i32
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -6
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load ptr, ptr %44, align 8, !tbaa !1073
  %58 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %57) #20, !range !1042
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 4, i64 1, ptr %0)
  br label %64

62:                                               ; preds = %50, %56
  %63 = load ptr, ptr %44, align 8, !tbaa !1073
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %63, i32 noundef 0) #21
  br label %64

64:                                               ; preds = %60, %62, %48
  %65 = tail call i32 @fputc(i32 93, ptr %0)
  %66 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !1038
  %68 = icmp eq ptr %67, null
  br i1 %68, label %94, label %69

69:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %70 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 18, i64 1, ptr %0)
  %71 = load ptr, ptr %66, align 8, !tbaa !1038
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %71, ptr noundef nonnull %4) #20
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !1042
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %69, %74
  %75 = phi i32 [ %84, %74 ], [ 0, %69 ]
  %76 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !1167
  %79 = getelementptr inbounds %struct.gimple_df, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !1168
  %81 = load i32, ptr %4, align 4, !tbaa !1130
  %82 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %80, i32 noundef %81) #20
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %82, i32 noundef 0) #21
  %83 = tail call i32 @fputc(i32 32, ptr %0)
  %84 = add i32 %75, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %85 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !1042
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %74, !llvm.loop !1172

87:                                               ; preds = %74, %69
  %88 = phi i32 [ 0, %69 ], [ %84, %74 ]
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %88) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  br label %94

90:                                               ; preds = %8
  %91 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 7, i64 1, ptr %0)
  br label %94

92:                                               ; preds = %8
  %93 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 13, i64 1, ptr %0)
  br label %94

94:                                               ; preds = %64, %87, %10, %90, %92, %6
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !1173 !PGOFuncName !1174 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1077
  store ptr %4, ptr %0, align 8, !tbaa !1175
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !1178
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !1179

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !1175
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !1180
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !1182
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !1183
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !1184
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !1130
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !1185 !PGOFuncName !1186 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1184
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1187

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !1188

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !1130
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !1189, !llvm.loop !1190

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !1130
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !1130
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !1182
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !1175
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !1182
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !1191

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !1183
  store i64 %35, ptr %3, align 8, !tbaa !1184
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !1192

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !1130
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !1130
  %40 = load i32, ptr %23, align 8, !tbaa !1182
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !1182
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !1193, !llvm.loop !1194

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !1195
  store ptr %44, ptr %0, align 8, !tbaa !1175
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !1196

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !1180
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !1130
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !1184
  store i32 %16, ptr %1, align 4, !tbaa !1130
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !1197 !PGOFuncName !1198 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1032
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !1199 !PGOFuncName !1200 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1184
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !1184
  %6 = load i32, ptr %1, align 4, !tbaa !1130
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !1130
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_value_range(ptr noundef %0) local_unnamed_addr #0 !prof !1166 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !1032
  tail call void @dump_value_range(ptr noundef %2, ptr noundef %0) #20
  %3 = load ptr, ptr @stderr, align 8, !tbaa !1032
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_all_value_ranges(ptr noundef %0) local_unnamed_addr #0 !prof !1166 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1167
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1168
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  br label %11

11:                                               ; preds = %9, %29
  %12 = phi ptr [ %30, %29 ], [ %2, %9 ]
  %13 = phi ptr [ %31, %29 ], [ %10, %9 ]
  %14 = phi ptr [ %36, %29 ], [ %6, %9 ]
  %15 = phi i64 [ %32, %29 ], [ 0, %9 ]
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !1032
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %11
  %20 = trunc i64 %15 to i32
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %14, i32 noundef %20) #20
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %21, i32 noundef 0) #21
  %22 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 2, i64 1, ptr %0)
  %23 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  %24 = getelementptr inbounds ptr, ptr %23, i64 %15
  %25 = load ptr, ptr %24, align 8, !tbaa !1032
  tail call void @dump_value_range(ptr noundef %0, ptr noundef %25) #20
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  %27 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  %28 = load ptr, ptr @cfun, align 8, !tbaa !1032
  br label %29

29:                                               ; preds = %11, %19
  %30 = phi ptr [ %12, %11 ], [ %28, %19 ]
  %31 = phi ptr [ %13, %11 ], [ %27, %19 ]
  %32 = add nuw nsw i64 %15, 1
  %33 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !1167
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !1168
  %37 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %36) #20
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %11, label %40, !llvm.loop !1201

40:                                               ; preds = %29, %1
  %41 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !1202 !PGOFuncName !1203 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1204

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1205
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_all_value_ranges() local_unnamed_addr #0 !prof !1166 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !1032
  tail call void @dump_all_value_ranges(ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_asserts_for(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !1166 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 30, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #21
  %4 = tail call i32 @fputc(i32 10, ptr %0)
  %5 = load ptr, ptr @asserts_for, align 8, !tbaa !1032
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !1036
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !1032
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %2, %34
  %13 = phi ptr [ %46, %34 ], [ %10, %2 ]
  %14 = tail call i32 @fputc(i32 9, ptr %0)
  %15 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 2
  %16 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %15) #20
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %16, i32 noundef 0, i32 noundef 0) #21
  %17 = load ptr, ptr %13, align 8, !tbaa !1207
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !1210
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, i32 noundef %19) #20
  %21 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !1212
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %12
  %25 = load ptr, ptr %22, align 8, !tbaa !1213
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !1210
  %28 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !1215
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !1210
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %27, i32 noundef %31) #20
  %33 = load ptr, ptr %21, align 8, !tbaa !1212
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %33, i32 noundef 0) #21
  br label %34

34:                                               ; preds = %24, %12
  %35 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 13, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #21
  %36 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !1216
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !1032
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef %40) #20
  %42 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !1217
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %43, i32 noundef 0) #21
  %44 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 2, i64 1, ptr %0)
  %45 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !1032
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %12, !llvm.loop !1218

48:                                               ; preds = %34, %2
  %49 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !1219 !PGOFuncName !1220 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1221
  %3 = load ptr, ptr %2, align 8, !tbaa !1222
  ret ptr %3
}

; Function Attrs: optsize
declare void @dump_edge_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_asserts_for(ptr noundef %0) local_unnamed_addr #0 !prof !1166 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !1032
  tail call void @dump_asserts_for(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_all_asserts(ptr noundef %0) local_unnamed_addr #0 !prof !1166 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 30, i64 1, ptr %0)
  %5 = load ptr, ptr @need_assert_for, align 8, !tbaa !1032
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %2) #20
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !1042
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1, %8
  %9 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1167
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1168
  %14 = load i32, ptr %2, align 4, !tbaa !1130
  %15 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %13, i32 noundef %14) #20
  tail call void @dump_asserts_for(ptr noundef %0, ptr noundef %15) #20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #20
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !1042
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8, !llvm.loop !1224

18:                                               ; preds = %8, %1
  %19 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_all_asserts() local_unnamed_addr #0 !prof !1166 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !1032
  tail call void @dump_all_asserts(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_vrp() #9 !prof !1225 !PGOFuncName !1226 {
  %1 = load i32, ptr @flag_tree_vrp, align 4, !tbaa !1130
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_vrp() #0 !prof !1225 !PGOFuncName !1227 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  tail call void @loop_optimizer_init(i32 noundef 15) #21
  tail call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 2048) #21
  tail call void @scev_initialize() #21
  tail call fastcc void @insert_range_assertions() #20
  %3 = tail call fastcc ptr @VEC_edge_heap_alloc() #20
  store ptr %3, ptr @to_remove_edges, align 8, !tbaa !1032
  %4 = tail call fastcc ptr @VEC_switch_update_heap_alloc() #20
  store ptr %4, ptr @to_update_switch_stmts, align 8, !tbaa !1032
  tail call void @threadedge_initialize_values() #21
  tail call fastcc void @vrp_initialize() #20
  tail call void @ssa_propagate(ptr noundef nonnull @vrp_visit_stmt, ptr noundef nonnull @vrp_visit_phi_node) #21
  tail call fastcc void @vrp_finalize() #20
  tail call fastcc void @remove_range_assertions() #20
  tail call void @update_ssa(i32 noundef 2048) #21
  tail call fastcc void @finalize_jump_threads() #20
  %5 = load ptr, ptr @to_remove_edges, align 8
  %6 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %1) #20, !range !1228
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12, !prof !1229

8:                                                ; preds = %12, %0
  %9 = load ptr, ptr @to_update_switch_stmts, align 8
  %10 = call fastcc i32 @VEC_switch_update_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #20, !range !1228
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %46, label %19, !prof !1230

12:                                               ; preds = %0, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %0 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !1032
  tail call void @remove_edge(ptr noundef %14) #21
  %15 = add nuw nsw i32 %13, 1
  %16 = load ptr, ptr @to_remove_edges, align 8
  %17 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %1) #20, !range !1228
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %8, label %12, !prof !1231, !llvm.loop !1232

19:                                               ; preds = %8, %38
  %20 = phi i32 [ %42, %38 ], [ 0, %8 ]
  %21 = load ptr, ptr %2, align 8, !tbaa !1032
  %22 = getelementptr inbounds %struct.switch_update, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !1233
  %24 = getelementptr inbounds %struct.tree_vec, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !1036
  %26 = sext i32 %25 to i64
  %27 = load ptr, ptr %21, align 8, !tbaa !1235
  tail call fastcc void @gimple_switch_set_num_labels(ptr noundef %27, i32 noundef %25) #20
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %38, label %29, !prof !1236

29:                                               ; preds = %19, %29
  %30 = phi i64 [ %36, %29 ], [ 0, %19 ]
  %31 = load ptr, ptr %21, align 8, !tbaa !1235
  %32 = trunc i64 %30 to i32
  %33 = load ptr, ptr %22, align 8, !tbaa !1233
  %34 = getelementptr inbounds %struct.tree_vec, ptr %33, i64 0, i32 2, i64 %30
  %35 = load ptr, ptr %34, align 8, !tbaa !1036
  tail call fastcc void @gimple_switch_set_label(ptr noundef %31, i32 noundef %32, ptr noundef %35) #20
  %36 = add nuw i64 %30, 1
  %37 = icmp eq i64 %36, %26
  br i1 %37, label %38, label %29, !prof !1237, !llvm.loop !1238

38:                                               ; preds = %29, %19
  %39 = load ptr, ptr %21, align 8, !tbaa !1235
  %40 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef %39) #20
  %41 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %42 = add nuw nsw i32 %20, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %43 = load ptr, ptr @to_update_switch_stmts, align 8
  %44 = call fastcc i32 @VEC_switch_update_base_iterate(ptr noundef %43, i32 noundef %42, ptr noundef nonnull %2) #20, !range !1228
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %19, !prof !1239, !llvm.loop !1240

46:                                               ; preds = %38, %8
  %47 = load ptr, ptr @to_remove_edges, align 8
  %48 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %47) #20
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !1241

50:                                               ; preds = %46
  tail call void @free_dominance_info(i32 noundef 1) #21
  br label %51

51:                                               ; preds = %50, %46
  tail call fastcc void @VEC_edge_heap_free() #20
  tail call fastcc void @VEC_switch_update_heap_free() #20
  tail call void @threadedge_finalize_values() #21
  tail call void @scev_finalize() #21
  tail call void @loop_optimizer_finalize() #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret i32 0
}

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @scev_initialize() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_range_assertions() unnamed_addr #0 !prof !1225 !PGOFuncName !1242 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %1, ptr @need_assert_for, align 8, !tbaa !1032
  %2 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1167
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1168
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #20
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #21
  store ptr %9, ptr @asserts_for, align 8, !tbaa !1032
  tail call void @calculate_dominance_info(i32 noundef 1) #21
  %10 = tail call fastcc zeroext i8 @find_assert_locations() #20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !1243

12:                                               ; preds = %0
  tail call fastcc void @process_assert_insertions() #20
  tail call void @update_ssa(i32 noundef 4096) #21
  br label %13

13:                                               ; preds = %12, %0
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !1244

16:                                               ; preds = %13
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 39, i64 1, ptr nonnull %14)
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !1032
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  tail call void @dump_function_to_file(ptr noundef %22, ptr noundef %23, i32 noundef %24) #21
  br label %25

25:                                               ; preds = %20, %16, %13
  %26 = load ptr, ptr @asserts_for, align 8, !tbaa !1032
  tail call void @free(ptr noundef %26) #20
  %27 = load ptr, ptr @need_assert_for, align 8, !tbaa !1032
  tail call void @bitmap_obstack_free(ptr noundef %27) #21
  store ptr null, ptr @need_assert_for, align 8, !tbaa !1032
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_edge_heap_alloc() unnamed_addr #0 !prof !1225 !PGOFuncName !1245 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_switch_update_heap_alloc() unnamed_addr #0 !prof !1225 !PGOFuncName !1246 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 5, i64 noundef 8, i64 noundef 16) #21
  ret ptr %1
}

; Function Attrs: optsize
declare void @threadedge_initialize_values() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vrp_initialize() unnamed_addr #0 !prof !1225 !PGOFuncName !1247 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !1167
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1168
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #20
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #21
  store ptr %11, ptr @vr_value, align 8, !tbaa !1032
  %12 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !1167
  %15 = getelementptr inbounds %struct.gimple_df, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1168
  %17 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %16) #20
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @xcalloc(i64 noundef %18, i64 noundef 4) #21
  store ptr %19, ptr @vr_phi_edge_counts, align 8, !tbaa !1032
  %20 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !1248
  %23 = load ptr, ptr %22, align 8, !tbaa !1249
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !1251
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !1252
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %80, label %29, !prof !1253

29:                                               ; preds = %0, %71
  %30 = phi ptr [ %73, %71 ], [ %25, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %30) #21
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !1042
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %45, !prof !1254

33:                                               ; preds = %29, %41
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %35 = call fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %34) #20, !range !1042
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41, !prof !1255

37:                                               ; preds = %33
  %38 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %34) #20
  %39 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %38) #20
  %40 = call fastcc ptr @get_value_range(ptr noundef %39) #20
  call fastcc void @set_value_range_to_varying(ptr noundef %40) #20
  br label %41

41:                                               ; preds = %33, %37
  %42 = phi i8 [ 0, %37 ], [ 1, %33 ]
  call fastcc void @prop_set_simulate_again(ptr noundef %34, i8 noundef zeroext %42) #20
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !1042
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %45, !prof !1256, !llvm.loop !1257

45:                                               ; preds = %41, %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %30) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1258
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  %46 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !1042
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %71, !prof !1259

48:                                               ; preds = %45, %68
  %49 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %50 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %49) #21
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52, !prof !1260

52:                                               ; preds = %48
  call fastcc void @prop_set_simulate_again(ptr noundef %49, i8 noundef zeroext 1) #20
  br label %68

53:                                               ; preds = %48
  %54 = call fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %49) #20, !range !1042
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %67, !prof !1261

56:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %57 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %49, i32 noundef 2) #20
  %58 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %66, !prof !1262

60:                                               ; preds = %56, %60
  %61 = phi ptr [ %63, %60 ], [ %57, %56 ]
  %62 = call fastcc ptr @get_value_range(ptr noundef %61) #20
  call fastcc void @set_value_range_to_varying(ptr noundef %62) #20
  %63 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #20
  %64 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %60, label %66, !prof !1263, !llvm.loop !1264

66:                                               ; preds = %60, %56
  call fastcc void @prop_set_simulate_again(ptr noundef %49, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  br label %68

67:                                               ; preds = %53
  call fastcc void @prop_set_simulate_again(ptr noundef %49, i8 noundef zeroext 1) #20
  br label %68

68:                                               ; preds = %66, %67, %52
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  %69 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !1042
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %48, label %71, !prof !1265, !llvm.loop !1266

71:                                               ; preds = %68, %45
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !1251
  %74 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !1248
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !1252
  %79 = icmp eq ptr %73, %78
  br i1 %79, label %80, label %29, !prof !1267, !llvm.loop !1268

80:                                               ; preds = %71, %0
  ret void
}

; Function Attrs: optsize
declare void @ssa_propagate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vrp_visit_stmt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #0 !prof !1269 !PGOFuncName !1270 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7, !prof !1271

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 21, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef %14) #21
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %11, %7, %3
  %18 = tail call fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %0) #20, !range !1042
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24, !prof !1272

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %53, !prof !1273

23:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6101, ptr noundef nonnull @.str.1) #21
  br label %53

24:                                               ; preds = %17
  %25 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !1042
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30, !prof !1274

27:                                               ; preds = %24
  %28 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !1042
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %46, label %30, !prof !1275

30:                                               ; preds = %27, %24
  %31 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !1042
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %41, label %33, !prof !1276

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36, !prof !1277

36:                                               ; preds = %33
  %37 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %38 = getelementptr inbounds %struct.tree_decl_minimal, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !1036
  %40 = icmp ult i32 %39, 2
  br i1 %40, label %44, label %41, !prof !1278

41:                                               ; preds = %36, %33, %30
  %42 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %53, !prof !1279

44:                                               ; preds = %41, %36
  %45 = tail call fastcc i32 @vrp_visit_assignment_or_call(ptr noundef %0, ptr noundef %2) #20, !range !1280
  br label %63

46:                                               ; preds = %27
  %47 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %48 = trunc i32 %47 to i8
  switch i8 %48, label %53 [
    i8 1, label %49
    i8 5, label %51
  ], !prof !1282

49:                                               ; preds = %46
  %50 = tail call fastcc i32 @vrp_visit_cond_stmt(ptr noundef %0, ptr noundef %1) #20, !range !1283
  br label %63

51:                                               ; preds = %46
  %52 = tail call fastcc i32 @vrp_visit_switch_stmt(ptr noundef %0, ptr noundef %1) #20, !range !1283
  br label %63

53:                                               ; preds = %46, %41, %23, %20
  %54 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 2) #20
  %55 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %63, !prof !1284

57:                                               ; preds = %53, %57
  %58 = phi ptr [ %60, %57 ], [ %54, %53 ]
  %59 = tail call fastcc ptr @get_value_range(ptr noundef %58) #20
  tail call fastcc void @set_value_range_to_varying(ptr noundef %59) #20
  %60 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #20
  %61 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %57, label %63, !prof !1285, !llvm.loop !1286

63:                                               ; preds = %57, %53, %51, %49, %44
  %64 = phi i32 [ %45, %44 ], [ %50, %49 ], [ %52, %51 ], [ 2, %53 ], [ 2, %57 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  ret i32 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vrp_visit_phi_node(ptr noundef %0) #0 !prof !1287 !PGOFuncName !1288 {
  %2 = alloca %struct.value_range_d, align 8
  %3 = alloca %struct.value_range_d, align 8
  %4 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #20
  %5 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %4) #20
  %6 = tail call fastcc ptr @get_value_range(ptr noundef %5) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call fastcc void @copy_value_range(ptr noundef nonnull %2, ptr noundef %6) #20
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !1289

9:                                                ; preds = %1
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 20, i64 1, ptr nonnull %7)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  tail call void @print_gimple_stmt(ptr noundef %15, ptr noundef %0, i32 noundef 0, i32 noundef %16) #21
  br label %17

17:                                               ; preds = %13, %9, %1
  %18 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %99, label %20, !prof !1290

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 1
  %22 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 2
  %23 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 3
  br label %24

24:                                               ; preds = %20, %93
  %25 = phi i64 [ 0, %20 ], [ %95, %93 ]
  %26 = phi i32 [ 0, %20 ], [ %94, %93 ]
  %27 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %25) #20
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30, !prof !1291

30:                                               ; preds = %24
  %31 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  %35 = trunc i64 %25 to i32
  %36 = load ptr, ptr %27, align 8, !tbaa !1213
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !1210
  %39 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !1215
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !1210
  %43 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !1292
  %45 = and i32 %44, 4096
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.50, ptr @.str.7
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.49, i32 noundef %35, i32 noundef %38, i32 noundef %42, ptr noundef nonnull %47) #20
  br label %49

49:                                               ; preds = %34, %30, %24
  %50 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !1292
  %52 = and i32 %51, 4096
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %93, label %54, !prof !1293

54:                                               ; preds = %49
  %55 = trunc i64 %25 to i32
  %56 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %55) #20
  %57 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %56) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %58 = add nsw i32 %26, 1
  %59 = load i64, ptr %57, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %62, label %64, !prof !1294

62:                                               ; preds = %54
  %63 = call fastcc ptr @get_value_range(ptr noundef nonnull %57) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %63, i64 32, i1 false), !tbaa.struct !1295
  br label %73

64:                                               ; preds = %54
  %65 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %57) #20, !range !1042
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %71, label %67, !prof !1296

67:                                               ; preds = %64
  %68 = call ptr @copy_node_stat(ptr noundef nonnull %57) #21
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, -134217729
  store i64 %70, ptr %68, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi ptr [ %68, %67 ], [ %57, %64 ]
  store i32 1, ptr %3, align 8, !tbaa !1024
  store ptr %72, ptr %21, align 8, !tbaa !1031
  store ptr %72, ptr %22, align 8, !tbaa !1073
  store ptr null, ptr %23, align 8, !tbaa !1038
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi ptr [ %57, %62 ], [ %72, %71 ]
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %77, !prof !1297

77:                                               ; preds = %73
  %78 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = call i32 @fputc(i32 9, ptr nonnull %75)
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %84 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  call void @print_generic_expr(ptr noundef %83, ptr noundef nonnull %74, i32 noundef %84) #21
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %86 = call i64 @fwrite(ptr nonnull @.str.51, i64 9, i64 1, ptr %85)
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  call void @dump_value_range(ptr noundef %87, ptr noundef nonnull %3) #20
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %89 = call i32 @fputc(i32 10, ptr %88)
  br label %90

90:                                               ; preds = %81, %77, %73
  call fastcc void @vrp_meet(ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %91 = load i32, ptr %2, align 8, !tbaa !1024
  %92 = icmp eq i32 %91, 3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  br i1 %92, label %99, label %93

93:                                               ; preds = %90, %49
  %94 = phi i32 [ %58, %90 ], [ %26, %49 ]
  %95 = add nuw nsw i64 %25, 1
  %96 = call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %97 = zext i32 %96 to i64
  %98 = icmp ult i64 %95, %97
  br i1 %98, label %24, label %99, !prof !1298, !llvm.loop !1299

99:                                               ; preds = %93, %90, %17
  %100 = phi i32 [ 0, %17 ], [ %58, %90 ], [ %94, %93 ]
  %101 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !1300
  %104 = icmp eq ptr %103, null
  br i1 %104, label %114, label %105, !prof !1301

105:                                              ; preds = %99
  %106 = call fastcc ptr @loop_containing_stmt(ptr noundef %0) #20
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108, !prof !1301

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.loop, ptr %106, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !1302
  %111 = call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %114, !prof !1306

113:                                              ; preds = %108
  call fastcc void @adjust_range_with_scev(ptr noundef nonnull %2, ptr noundef nonnull %106, ptr noundef %0, ptr noundef %5) #20
  br label %114

114:                                              ; preds = %113, %108, %105, %99
  %115 = load i32, ptr %2, align 8
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %211, label %117, !prof !1307

117:                                              ; preds = %114
  %118 = load ptr, ptr @vr_phi_edge_counts, align 8, !tbaa !1032
  %119 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 3
  %120 = load i32, ptr %119, align 8, !tbaa !1036
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, ptr %118, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !1130
  store i32 %100, ptr %122, align 4, !tbaa !1130
  %124 = load i32, ptr %6, align 8, !tbaa !1024
  %125 = icmp ne i32 %124, 1
  %126 = icmp ne i32 %115, 1
  %127 = or i1 %126, %125
  %128 = icmp sgt i32 %100, %123
  %129 = select i1 %127, i1 true, i1 %128
  br i1 %129, label %208, label %130, !prof !1308

130:                                              ; preds = %117
  %131 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !1036
  %133 = load i64, ptr %132, align 8
  %134 = trunc i64 %133 to i16
  switch i16 %134, label %135 [
    i16 10, label %208
    i16 12, label %208
  ], !prof !1309

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !1031
  %138 = getelementptr inbounds %struct.value_range_d, ptr %2, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !1031
  %140 = call fastcc i32 @compare_values(ptr noundef %137, ptr noundef %139) #20
  %141 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !1073
  %143 = getelementptr inbounds %struct.value_range_d, ptr %2, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !1073
  %145 = call fastcc i32 @compare_values(ptr noundef %142, ptr noundef %144) #20
  %146 = icmp eq i32 %140, 0
  br i1 %146, label %176, label %147, !prof !1310

147:                                              ; preds = %135
  %148 = call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %144) #20, !range !1042
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %211, !prof !1311

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !1036
  %153 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 13
  %154 = load ptr, ptr %153, align 8, !tbaa !1036
  %155 = call fastcc i32 @compare_values(ptr noundef %154, ptr noundef %144) #20
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %211, label %157, !prof !1312

157:                                              ; preds = %150
  %158 = load ptr, ptr %151, align 8, !tbaa !1036
  %159 = call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %158) #20, !range !1042
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %165, label %161, !prof !1313

161:                                              ; preds = %157
  %162 = call fastcc zeroext i8 @vrp_var_may_overflow(ptr noundef nonnull %5, ptr noundef %0) #20, !range !1042
  %163 = icmp eq i8 %162, 0
  %164 = load ptr, ptr %151, align 8, !tbaa !1036
  br i1 %163, label %165, label %169, !prof !1314

165:                                              ; preds = %161, %157
  %166 = phi ptr [ %164, %161 ], [ %158, %157 ]
  %167 = getelementptr inbounds %struct.tree_type, ptr %166, i64 0, i32 13
  %168 = load ptr, ptr %167, align 8, !tbaa !1036
  br label %174

169:                                              ; preds = %161
  %170 = call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %164) #20, !range !1042
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %211, label %172, !prof !1315

172:                                              ; preds = %169
  %173 = call fastcc ptr @negative_overflow_infinity(ptr noundef %164) #20
  br label %174

174:                                              ; preds = %172, %165
  %175 = phi ptr [ %168, %165 ], [ %173, %172 ]
  store ptr %175, ptr %138, align 8, !tbaa !1031
  br label %176

176:                                              ; preds = %174, %135
  %177 = phi ptr [ %139, %135 ], [ %175, %174 ]
  %178 = icmp eq i32 %145, 0
  br i1 %178, label %208, label %179, !prof !1316

179:                                              ; preds = %176
  %180 = call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %177) #20, !range !1042
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %211, !prof !1317

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !1036
  %185 = getelementptr inbounds %struct.tree_type, ptr %184, i64 0, i32 14
  %186 = load ptr, ptr %185, align 8, !tbaa !1036
  %187 = call fastcc i32 @compare_values(ptr noundef %186, ptr noundef %177) #20
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %211, label %189, !prof !1318

189:                                              ; preds = %182
  %190 = load ptr, ptr %183, align 8, !tbaa !1036
  %191 = call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %190) #20, !range !1042
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %197, label %193, !prof !1319

193:                                              ; preds = %189
  %194 = call fastcc zeroext i8 @vrp_var_may_overflow(ptr noundef nonnull %5, ptr noundef %0) #20, !range !1042
  %195 = icmp eq i8 %194, 0
  %196 = load ptr, ptr %183, align 8, !tbaa !1036
  br i1 %195, label %197, label %201, !prof !1320

197:                                              ; preds = %193, %189
  %198 = phi ptr [ %196, %193 ], [ %190, %189 ]
  %199 = getelementptr inbounds %struct.tree_type, ptr %198, i64 0, i32 14
  %200 = load ptr, ptr %199, align 8, !tbaa !1036
  br label %206

201:                                              ; preds = %193
  %202 = call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %196) #20, !range !1042
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %211, label %204, !prof !1321

204:                                              ; preds = %201
  %205 = call fastcc ptr @positive_overflow_infinity(ptr noundef %196) #20
  br label %206

206:                                              ; preds = %204, %197
  %207 = phi ptr [ %200, %197 ], [ %205, %204 ]
  store ptr %207, ptr %143, align 8, !tbaa !1073
  br label %208

208:                                              ; preds = %206, %176, %130, %130, %117
  %209 = call fastcc zeroext i8 @update_value_range(ptr noundef nonnull %5, ptr noundef nonnull %2) #20, !range !1042
  %210 = zext nneg i8 %209 to i32
  br label %212

211:                                              ; preds = %201, %179, %182, %169, %147, %150, %114
  call fastcc void @set_value_range_to_varying(ptr noundef %6) #20
  br label %212

212:                                              ; preds = %208, %211
  %213 = phi i32 [ 2, %211 ], [ %210, %208 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  ret i32 %213
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vrp_finalize() unnamed_addr #0 !prof !1225 !PGOFuncName !1322 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3, !prof !1244

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 26, i64 1, ptr nonnull %1)
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @dump_all_value_ranges(ptr noundef %5) #20
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %7 = tail call i32 @fputc(i32 10, ptr %6)
  br label %8

8:                                                ; preds = %3, %0
  %9 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1167
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1168
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #20
  %15 = zext i32 %14 to i64
  %16 = tail call ptr @xcalloc(i64 noundef %15, i64 noundef 16) #21
  %17 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !1167
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !1168
  %22 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %21) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %66, label %24, !prof !1253

24:                                               ; preds = %8
  %25 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  br label %26

26:                                               ; preds = %24, %52
  %27 = phi ptr [ %53, %52 ], [ %25, %24 ]
  %28 = phi i8 [ %54, %52 ], [ 0, %24 ]
  %29 = phi i64 [ %55, %52 ], [ 0, %24 ]
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !1032
  %32 = icmp eq ptr %31, null
  br i1 %32, label %52, label %33, !prof !1323

33:                                               ; preds = %26
  %34 = load i32, ptr %31, align 8, !tbaa !1024
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %52, !prof !1324

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.value_range_d, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !1031
  %39 = getelementptr inbounds %struct.value_range_d, ptr %31, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !1073
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %42, label %52, !prof !1325

42:                                               ; preds = %36
  %43 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %38) #21
  %44 = icmp eq i8 %43, 0
  %45 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  br i1 %44, label %52, label %46, !prof !1326

46:                                               ; preds = %42
  %47 = getelementptr inbounds ptr, ptr %45, i64 %29
  %48 = load ptr, ptr %47, align 8, !tbaa !1032
  %49 = getelementptr inbounds %struct.value_range_d, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !1031
  %51 = getelementptr inbounds %struct.prop_value_d, ptr %16, i64 %29, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !1327
  br label %52

52:                                               ; preds = %26, %33, %36, %42, %46
  %53 = phi ptr [ %45, %46 ], [ %45, %42 ], [ %27, %36 ], [ %27, %33 ], [ %27, %26 ]
  %54 = phi i8 [ 1, %46 ], [ %28, %42 ], [ %28, %36 ], [ %28, %33 ], [ %28, %26 ]
  %55 = add nuw nsw i64 %29, 1
  %56 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !1167
  %59 = getelementptr inbounds %struct.gimple_df, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !1168
  %61 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %60) #20
  %62 = zext i32 %61 to i64
  %63 = icmp ult i64 %55, %62
  br i1 %63, label %26, label %64, !prof !1329, !llvm.loop !1330

64:                                               ; preds = %52
  %65 = icmp eq i8 %54, 0
  br i1 %65, label %66, label %67, !prof !1331

66:                                               ; preds = %8, %64
  tail call void @free(ptr noundef %16) #20
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi ptr [ %16, %64 ], [ null, %66 ]
  %69 = tail call zeroext i8 @substitute_and_fold(ptr noundef %68, ptr noundef nonnull @vrp_fold_stmt) #21
  %70 = load i32, ptr @warn_array_bounds, align 4, !tbaa !1130
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72, !prof !1244

72:                                               ; preds = %67
  tail call fastcc void @check_all_array_refs() #20
  br label %73

73:                                               ; preds = %72, %67
  tail call fastcc void @identify_jump_threads() #20
  %74 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !1167
  %77 = getelementptr inbounds %struct.gimple_df, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !1168
  %79 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %78) #20
  %80 = icmp eq i32 %79, 0
  %81 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  br i1 %80, label %109, label %82, !prof !1253

82:                                               ; preds = %73, %98
  %83 = phi ptr [ %99, %98 ], [ %74, %73 ]
  %84 = phi ptr [ %100, %98 ], [ %81, %73 ]
  %85 = phi i64 [ %101, %98 ], [ 0, %73 ]
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !1032
  %88 = icmp eq ptr %87, null
  br i1 %88, label %98, label %89, !prof !1332

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.value_range_d, ptr %87, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !1038
  tail call void @bitmap_obstack_free(ptr noundef %91) #21
  %92 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  %93 = getelementptr inbounds ptr, ptr %92, i64 %85
  %94 = load ptr, ptr %93, align 8, !tbaa !1032
  %95 = getelementptr inbounds %struct.value_range_d, ptr %94, i64 0, i32 3
  store ptr null, ptr %95, align 8, !tbaa !1038
  %96 = load ptr, ptr %93, align 8, !tbaa !1032
  tail call void @free(ptr noundef %96) #20
  %97 = load ptr, ptr @cfun, align 8, !tbaa !1032
  br label %98

98:                                               ; preds = %82, %89
  %99 = phi ptr [ %83, %82 ], [ %97, %89 ]
  %100 = phi ptr [ %84, %82 ], [ %92, %89 ]
  %101 = add nuw nsw i64 %85, 1
  %102 = getelementptr inbounds %struct.function, ptr %99, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !1167
  %104 = getelementptr inbounds %struct.gimple_df, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !1168
  %106 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %105) #20
  %107 = zext i32 %106 to i64
  %108 = icmp ult i64 %101, %107
  br i1 %108, label %82, label %109, !prof !1329, !llvm.loop !1333

109:                                              ; preds = %98, %73
  %110 = phi ptr [ %81, %73 ], [ %100, %98 ]
  tail call void @free(ptr noundef %68) #20
  tail call void @free(ptr noundef %110) #20
  %111 = load ptr, ptr @vr_phi_edge_counts, align 8, !tbaa !1032
  tail call void @free(ptr noundef %111) #20
  store ptr null, ptr @vr_value, align 8, !tbaa !1032
  store ptr null, ptr @vr_phi_edge_counts, align 8, !tbaa !1032
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_range_assertions() unnamed_addr #0 !prof !1225 !PGOFuncName !1334 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1248
  %7 = load ptr, ptr %6, align 8, !tbaa !1249
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !1251
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1252
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %69, label %22, !prof !1253

13:                                               ; preds = %66, %22
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !1251
  %16 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1248
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !1252
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %69, label %22, !prof !1267, !llvm.loop !1335

22:                                               ; preds = %0, %13
  %23 = phi ptr [ %15, %13 ], [ %9, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %23) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1258
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  %24 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !1042
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %13, !prof !1259

26:                                               ; preds = %22, %66
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %28 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %27) #20, !range !1042
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %65, label %30, !prof !1336

30:                                               ; preds = %26
  %31 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %27) #20, !range !1337
  %32 = icmp eq i32 %31, 148
  br i1 %32, label %33, label %65, !prof !1338

33:                                               ; preds = %30
  %34 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %27) #20
  %35 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %36 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !1036
  %38 = call ptr @fold(ptr noundef %37) #21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !1032
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %42, !prof !1339

41:                                               ; preds = %33
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5249, ptr noundef nonnull @.str.1) #21
  br label %42

42:                                               ; preds = %33, %41
  %43 = load ptr, ptr %35, align 8, !tbaa !1036
  %44 = call fastcc ptr @gimple_assign_lhs(ptr noundef %27) #20
  call fastcc void @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %44) #20
  %45 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #20, !range !1042
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %64, !prof !1340

47:                                               ; preds = %42, %61
  %48 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #20
  %49 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #20, !range !1042
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %61, !prof !1341

51:                                               ; preds = %47, %57
  %52 = phi ptr [ %58, %57 ], [ %48, %47 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %52, ptr noundef %43) #20
  %53 = load i64, ptr %43, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %57, label %56, !prof !1342

56:                                               ; preds = %51
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5258, ptr noundef nonnull @.str.1) #21
  br label %57

57:                                               ; preds = %56, %51
  %58 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #20
  %59 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #20, !range !1042
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %51, label %61, !prof !1343, !llvm.loop !1344

61:                                               ; preds = %57, %47
  call fastcc void @next_imm_use_stmt(ptr noundef nonnull %3) #20
  %62 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #20, !range !1042
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %47, label %64, !prof !1345, !llvm.loop !1346

64:                                               ; preds = %61, %42
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #21
  call void @release_defs(ptr noundef %27) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #22
  br label %66

65:                                               ; preds = %30, %26
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  br label %66

66:                                               ; preds = %65, %64
  %67 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !1042
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %26, label %13, !prof !1347, !llvm.loop !1348

69:                                               ; preds = %13, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_jump_threads() unnamed_addr #0 !prof !1225 !PGOFuncName !1349 {
  %1 = tail call zeroext i8 @thread_through_all_blocks(i8 noundef zeroext 0) #21
  tail call fastcc void @VEC_tree_heap_free() #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !1350 !PGOFuncName !1351 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1352

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1353
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1355

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !1032
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !1032
  ret i32 %14
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_switch_update_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !1356 !PGOFuncName !1357 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !1358

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1359
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !1361

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_switch_update_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !1032
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_switch_set_num_labels(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !prof !1362 !PGOFuncName !1363 {
  %3 = add i32 %1, 1
  tail call fastcc void @gimple_set_num_ops(ptr noundef %0, i32 noundef %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_switch_set_label(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1364 !PGOFuncName !1365 {
  %4 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %5 = add i32 %1, 1
  %6 = icmp ugt i32 %4, %5
  br i1 %6, label %8, label %7, !prof !1366

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3225, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = icmp eq ptr %2, null
  br i1 %9, label %15, label %10, !prof !1367

10:                                               ; preds = %8
  %11 = load i64, ptr %2, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 139
  br i1 %13, label %15, label %14, !prof !1366

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3226, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %8, %10, %14
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %5, ptr noundef %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_default_label(ptr noundef %0) unnamed_addr #0 !prof !1368 !PGOFuncName !1369 {
  %2 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !1370 !PGOFuncName !1371 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1372

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1353
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free() unnamed_addr #11 !prof !1225 !PGOFuncName !1373 {
  %1 = load ptr, ptr @to_remove_edges, align 8, !tbaa !1032
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1374

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @to_remove_edges, align 8, !tbaa !1032
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_switch_update_heap_free() unnamed_addr #11 !prof !1225 !PGOFuncName !1375 {
  %1 = load ptr, ptr @to_update_switch_stmts, align 8, !tbaa !1032
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1374

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @to_update_switch_stmts, align 8, !tbaa !1032
  ret void
}

; Function Attrs: optsize
declare void @threadedge_finalize_values() local_unnamed_addr #2

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #2

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #2

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_assert_locations() unnamed_addr #0 !prof !1225 !PGOFuncName !1376 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1248
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !1377
  %8 = add nsw i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1248
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !1377
  %16 = add nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = tail call ptr @xcalloc(i64 noundef %17, i64 noundef 4) #21
  %19 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1248
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !1377
  %24 = add nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @xcalloc(i64 noundef %25, i64 noundef 4) #21
  %27 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !1248
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !1377
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = tail call ptr @xcalloc(i64 noundef %33, i64 noundef 8) #21
  store ptr %34, ptr @live, align 8, !tbaa !1032
  %35 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %10, i8 noundef zeroext 0) #21
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %206, !prof !1378

37:                                               ; preds = %0
  %38 = zext nneg i32 %35 to i64
  br label %43

39:                                               ; preds = %43
  br i1 %36, label %40, label %206, !prof !1379

40:                                               ; preds = %39
  %41 = getelementptr inbounds i8, ptr %2, i64 8
  %42 = zext nneg i32 %35 to i64
  br label %52

43:                                               ; preds = %37, %43
  %44 = phi i64 [ 0, %37 ], [ %50, %43 ]
  %45 = getelementptr inbounds i32, ptr %10, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !1130
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %18, i64 %47
  %49 = trunc i64 %44 to i32
  store i32 %49, ptr %48, align 4, !tbaa !1130
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %38
  br i1 %51, label %39, label %43, !prof !1380, !llvm.loop !1381

52:                                               ; preds = %40, %204
  %53 = phi i64 [ %42, %40 ], [ %55, %204 ]
  %54 = phi i8 [ 0, %40 ], [ %88, %204 ]
  %55 = add nsw i64 %53, -1
  %56 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !1248
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !1382
  %61 = getelementptr inbounds i32, ptr %10, i64 %55
  %62 = load i32, ptr %61, align 4, !tbaa !1130
  %63 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %60, i32 noundef %62) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %64 = load ptr, ptr @live, align 8, !tbaa !1032
  %65 = sext i32 %62 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !1032
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %85, !prof !1383

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !1167
  %72 = getelementptr inbounds %struct.gimple_df, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !1168
  %74 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %73) #20
  %75 = tail call ptr @sbitmap_alloc(i32 noundef %74) #21
  %76 = load ptr, ptr @live, align 8, !tbaa !1032
  %77 = load i32, ptr %61, align 4, !tbaa !1130
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78
  store ptr %75, ptr %79, align 8, !tbaa !1032
  tail call void @sbitmap_zero(ptr noundef %75) #21
  %80 = load ptr, ptr @live, align 8, !tbaa !1032
  %81 = load i32, ptr %61, align 4, !tbaa !1130
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !1032
  br label %85

85:                                               ; preds = %69, %52
  %86 = phi ptr [ %84, %69 ], [ %67, %52 ]
  %87 = tail call fastcc zeroext i8 @find_assert_locations_1(ptr noundef %63, ptr noundef %86) #20
  %88 = or i8 %87, %54
  %89 = load ptr, ptr @live, align 8, !tbaa !1032
  %90 = load i32, ptr %61, align 4, !tbaa !1130
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %89, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !1032
  %94 = tail call zeroext i8 @sbitmap_empty_p(ptr noundef %93) #21
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %151, !prof !1384

96:                                               ; preds = %85
  %97 = tail call fastcc ptr @ei_start_1(ptr noundef %63) #20
  store i32 0, ptr %2, align 8, !tbaa.struct !1385
  store ptr %97, ptr %41, align 8, !tbaa.struct !1386
  %98 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %97, ptr noundef nonnull %1) #20, !range !1042
  %99 = icmp eq i8 %98, 0
  %100 = trunc i64 %55 to i32
  br i1 %99, label %146, label %101, !prof !1387

101:                                              ; preds = %96, %140
  %102 = phi i32 [ %141, %140 ], [ %100, %96 ]
  %103 = load ptr, ptr %1, align 8, !tbaa !1032
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !1292
  %106 = and i32 %105, 32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %140, !prof !1388

108:                                              ; preds = %101
  %109 = load ptr, ptr %103, align 8, !tbaa !1213
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !1210
  %112 = load ptr, ptr @live, align 8, !tbaa !1032
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds ptr, ptr %112, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !1032
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %130, !prof !1389

117:                                              ; preds = %108
  %118 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !1167
  %121 = getelementptr inbounds %struct.gimple_df, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !1168
  %123 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %122) #20
  %124 = tail call ptr @sbitmap_alloc(i32 noundef %123) #21
  %125 = load ptr, ptr @live, align 8, !tbaa !1032
  %126 = getelementptr inbounds ptr, ptr %125, i64 %113
  store ptr %124, ptr %126, align 8, !tbaa !1032
  tail call void @sbitmap_zero(ptr noundef %124) #21
  %127 = load ptr, ptr @live, align 8, !tbaa !1032
  %128 = getelementptr inbounds ptr, ptr %127, i64 %113
  %129 = load ptr, ptr %128, align 8, !tbaa !1032
  br label %130

130:                                              ; preds = %117, %108
  %131 = phi ptr [ %129, %117 ], [ %115, %108 ]
  %132 = phi ptr [ %127, %117 ], [ %112, %108 ]
  %133 = load i32, ptr %61, align 4, !tbaa !1130
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %132, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !1032
  tail call void @sbitmap_a_or_b(ptr noundef %131, ptr noundef %131, ptr noundef %136) #21
  %137 = getelementptr inbounds i32, ptr %18, i64 %113
  %138 = load i32, ptr %137, align 4, !tbaa !1130
  %139 = tail call i32 @llvm.smin.i32(i32 %138, i32 %102)
  br label %140

140:                                              ; preds = %101, %130
  %141 = phi i32 [ %139, %130 ], [ %102, %101 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %142 = load i32, ptr %2, align 8
  %143 = load ptr, ptr %41, align 8
  %144 = call fastcc zeroext i8 @ei_cond(i32 %142, ptr %143, ptr noundef nonnull %1) #20, !range !1042
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %101, !prof !1390, !llvm.loop !1391

146:                                              ; preds = %140, %96
  %147 = phi i32 [ %100, %96 ], [ %141, %140 ]
  %148 = load i32, ptr %61, align 4, !tbaa !1130
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, ptr %26, i64 %149
  store i32 %147, ptr %150, align 4, !tbaa !1130
  br label %165

151:                                              ; preds = %85
  %152 = load ptr, ptr @live, align 8, !tbaa !1032
  %153 = load i32, ptr %61, align 4, !tbaa !1130
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %152, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !1032
  %157 = load ptr, ptr %156, align 8, !tbaa !1392
  tail call void @free(ptr noundef %157) #20
  %158 = load i32, ptr %61, align 4, !tbaa !1130
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %152, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !1032
  tail call void @free(ptr noundef %161) #20
  %162 = load i32, ptr %61, align 4, !tbaa !1130
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %152, i64 %163
  store ptr null, ptr %164, align 8, !tbaa !1032
  br label %165

165:                                              ; preds = %151, %146
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 1
  %167 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %166) #20
  store i32 0, ptr %2, align 8, !tbaa.struct !1385
  store ptr %167, ptr %41, align 8, !tbaa.struct !1386
  %168 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %167, ptr noundef nonnull %1) #20, !range !1042
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %204, label %170, !prof !1394

170:                                              ; preds = %165, %199
  %171 = load ptr, ptr %1, align 8, !tbaa !1032
  %172 = getelementptr inbounds %struct.edge_def, ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !1215
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %173, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !1210
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, ptr %26, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !1130
  %179 = zext i32 %178 to i64
  %180 = icmp eq i64 %55, %179
  br i1 %180, label %181, label %199, !prof !1395

181:                                              ; preds = %170
  %182 = load ptr, ptr @live, align 8, !tbaa !1032
  %183 = getelementptr inbounds ptr, ptr %182, i64 %176
  %184 = load ptr, ptr %183, align 8, !tbaa !1032
  %185 = icmp eq ptr %184, null
  br i1 %185, label %199, label %186, !prof !1396

186:                                              ; preds = %181
  %187 = load ptr, ptr %184, align 8, !tbaa !1392
  tail call void @free(ptr noundef %187) #20
  %188 = load ptr, ptr %172, align 8, !tbaa !1215
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %188, i64 0, i32 9
  %190 = load i32, ptr %189, align 8, !tbaa !1210
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds ptr, ptr %182, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !1032
  tail call void @free(ptr noundef %193) #20
  %194 = load ptr, ptr %172, align 8, !tbaa !1215
  %195 = getelementptr inbounds %struct.basic_block_def, ptr %194, i64 0, i32 9
  %196 = load i32, ptr %195, align 8, !tbaa !1210
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %182, i64 %197
  store ptr null, ptr %198, align 8, !tbaa !1032
  br label %199

199:                                              ; preds = %170, %181, %186
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %200 = load i32, ptr %2, align 8
  %201 = load ptr, ptr %41, align 8
  %202 = call fastcc zeroext i8 @ei_cond(i32 %200, ptr %201, ptr noundef nonnull %1) #20, !range !1042
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %170, !prof !1397, !llvm.loop !1398

204:                                              ; preds = %199, %165
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  %205 = icmp sgt i64 %53, 1
  br i1 %205, label %52, label %206, !prof !1399, !llvm.loop !1400

206:                                              ; preds = %204, %0, %39
  %207 = phi i8 [ 0, %39 ], [ 0, %0 ], [ %88, %204 ]
  tail call void @free(ptr noundef %10) #20
  tail call void @free(ptr noundef %18) #20
  tail call void @free(ptr noundef %26) #20
  %208 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %209 = getelementptr inbounds %struct.function, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !1248
  %211 = getelementptr inbounds %struct.control_flow_graph, ptr %210, i64 0, i32 5
  %212 = load i32, ptr %211, align 8, !tbaa !1377
  %213 = icmp sgt i32 %212, -2
  %214 = load ptr, ptr @live, align 8, !tbaa !1032
  br i1 %213, label %215, label %234, !prof !1378

215:                                              ; preds = %206, %225
  %216 = phi ptr [ %226, %225 ], [ %208, %206 ]
  %217 = phi i64 [ %227, %225 ], [ 0, %206 ]
  %218 = getelementptr inbounds ptr, ptr %214, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !1032
  %220 = icmp eq ptr %219, null
  br i1 %220, label %225, label %221, !prof !1401

221:                                              ; preds = %215
  %222 = load ptr, ptr %219, align 8, !tbaa !1392
  tail call void @free(ptr noundef %222) #20
  %223 = load ptr, ptr %218, align 8, !tbaa !1032
  tail call void @free(ptr noundef %223) #20
  %224 = load ptr, ptr @cfun, align 8, !tbaa !1032
  br label %225

225:                                              ; preds = %215, %221
  %226 = phi ptr [ %216, %215 ], [ %224, %221 ]
  %227 = add nuw nsw i64 %217, 1
  %228 = getelementptr inbounds %struct.function, ptr %226, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !1248
  %230 = getelementptr inbounds %struct.control_flow_graph, ptr %229, i64 0, i32 5
  %231 = load i32, ptr %230, align 8, !tbaa !1377
  %232 = sext i32 %231 to i64
  %233 = icmp sgt i64 %217, %232
  br i1 %233, label %234, label %215, !prof !1402, !llvm.loop !1403

234:                                              ; preds = %225, %206
  tail call void @free(ptr noundef %214) #20
  ret i8 %207
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_assert_insertions() unnamed_addr #0 !prof !1404 !PGOFuncName !1405 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !1406

5:                                                ; preds = %0
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @dump_all_asserts(ptr noundef nonnull %3) #20
  br label %10

10:                                               ; preds = %9, %5, %0
  %11 = load ptr, ptr @need_assert_for, align 8, !tbaa !1032
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %11, ptr noundef nonnull %1) #20
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !1042
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %48, label %14, !prof !1407

14:                                               ; preds = %10, %40
  %15 = phi i8 [ %42, %40 ], [ 0, %10 ]
  %16 = phi i32 [ %41, %40 ], [ 0, %10 ]
  %17 = load ptr, ptr @asserts_for, align 8, !tbaa !1032
  %18 = load i32, ptr %1, align 4, !tbaa !1130
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !1032
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !1408

23:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4926, ptr noundef nonnull @.str.1) #21
  br label %40

24:                                               ; preds = %14, %24
  %25 = phi i8 [ %37, %24 ], [ %15, %14 ]
  %26 = phi ptr [ %29, %24 ], [ %21, %14 ]
  %27 = phi i32 [ %38, %24 ], [ %16, %14 ]
  %28 = getelementptr inbounds %struct.assert_locus_d, ptr %26, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !1409
  %30 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !1167
  %33 = getelementptr inbounds %struct.gimple_df, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !1168
  %35 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %34, i32 noundef %18) #20
  %36 = tail call fastcc zeroext i8 @process_assert_insertions_for(ptr noundef %35, ptr noundef nonnull %26) #20, !range !1042
  %37 = or i8 %36, %25
  tail call void @free(ptr noundef nonnull %26) #20
  %38 = add nsw i32 %27, 1
  %39 = icmp eq ptr %29, null
  br i1 %39, label %40, label %24, !prof !1410, !llvm.loop !1411

40:                                               ; preds = %24, %23
  %41 = phi i32 [ %16, %23 ], [ %38, %24 ]
  %42 = phi i8 [ %15, %23 ], [ %37, %24 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #20
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !1042
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %14, !prof !1412, !llvm.loop !1413

45:                                               ; preds = %40
  %46 = icmp eq i8 %42, 0
  br i1 %46, label %48, label %47, !prof !1414

47:                                               ; preds = %45
  tail call void @gsi_commit_edge_inserts() #21
  br label %48

48:                                               ; preds = %10, %47, %45
  %49 = phi i32 [ %41, %47 ], [ %41, %45 ], [ 0, %10 ]
  %50 = load ptr, ptr @cfun, align 8, !tbaa !1032
  tail call void @statistics_counter_event(ptr noundef %50, ptr noundef nonnull @.str.36, i32 noundef %49) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !1415 !PGOFuncName !1416 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1032
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_assert_locations_1(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1415 !PGOFuncName !1417 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %8 = tail call ptr @last_stmt(ptr noundef %0) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10, !prof !1418

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #20, !range !1281
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %21, !prof !1419

13:                                               ; preds = %10
  %14 = tail call fastcc zeroext i8 @fp_predicate(ptr noundef nonnull %8) #20, !range !1042
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21, !prof !1420

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @zero_ssa_operands(ptr noundef nonnull %8) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21, !prof !1421

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @find_conditional_asserts(ptr noundef %0, ptr noundef nonnull %8) #20, !range !1042
  br label %21

21:                                               ; preds = %19, %16, %13, %10
  %22 = phi i8 [ 0, %10 ], [ %20, %19 ], [ 0, %16 ], [ 0, %13 ]
  %23 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #20, !range !1281
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %31, !prof !1422

25:                                               ; preds = %21
  %26 = tail call fastcc zeroext i8 @zero_ssa_operands(ptr noundef nonnull %8) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31, !prof !1423

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @find_switch_asserts(ptr noundef %0, ptr noundef nonnull %8) #20, !range !1042
  %30 = or i8 %29, %22
  br label %31

31:                                               ; preds = %2, %28, %25, %21
  %32 = phi i8 [ %22, %25 ], [ %30, %28 ], [ %22, %21 ], [ 0, %2 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #20
  %33 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !1042
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %113, !prof !1424

35:                                               ; preds = %31, %109
  %36 = phi i8 [ %110, %109 ], [ %32, %31 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %37 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %38 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %37) #20, !range !1042
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %109, !prof !1425

40:                                               ; preds = %35
  %41 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %37, i32 noundef 1) #20
  %42 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %109, !prof !1426

44:                                               ; preds = %40, %104
  %45 = phi i8 [ %105, %104 ], [ %36, %40 ]
  %46 = phi ptr [ %106, %104 ], [ %41, %40 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !1036
  tail call fastcc void @SET_BIT(ptr noundef %1, i32 noundef %48) #20
  %49 = call fastcc zeroext i8 @infer_value_range(ptr noundef %37, ptr noundef %46, ptr noundef nonnull %6, ptr noundef nonnull %5) #20, !range !1042
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %104, label %51, !prof !1427

51:                                               ; preds = %44
  %52 = load i32, ptr %6, align 4, !tbaa !1130
  %53 = icmp eq i32 %52, 102
  br i1 %53, label %54, label %98, !prof !1428

54:                                               ; preds = %51
  %55 = load ptr, ptr %5, align 8, !tbaa !1032
  %56 = tail call i32 @integer_zerop(ptr noundef %55) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %98, label %58, !prof !1429

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !1036
  %61 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %60) #20, !range !1042
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %98, label %63, !prof !1430

63:                                               ; preds = %58, %94
  %64 = phi i8 [ %95, %94 ], [ %45, %58 ]
  %65 = phi ptr [ %90, %94 ], [ %60, %58 ]
  %66 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %65) #20, !range !1337
  %67 = icmp eq i32 %66, 116
  br i1 %67, label %68, label %98, !prof !1431

68:                                               ; preds = %63
  %69 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 141
  br i1 %72, label %73, label %98, !prof !1432

73:                                               ; preds = %68
  %74 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !1036
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 10
  br i1 %79, label %87, label %80, !prof !1433

80:                                               ; preds = %73
  %81 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !1036
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 12
  br i1 %86, label %87, label %98, !prof !1434

87:                                               ; preds = %73, %80
  %88 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %89 = getelementptr inbounds %struct.tree_ssa_name, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !1036
  %91 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %88) #20
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %94, !prof !1435

93:                                               ; preds = %87
  tail call fastcc void @register_new_assert_for(ptr noundef nonnull %88, ptr noundef nonnull %88, i32 noundef 102, ptr noundef %55, ptr noundef %0, ptr noundef null, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  br label %94

94:                                               ; preds = %93, %87
  %95 = phi i8 [ %64, %87 ], [ 1, %93 ]
  %96 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %90) #20, !range !1042
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %63, !prof !1436, !llvm.loop !1437

98:                                               ; preds = %68, %63, %94, %80, %58, %54, %51
  %99 = phi i8 [ %45, %54 ], [ %45, %51 ], [ %45, %58 ], [ %64, %68 ], [ %64, %63 ], [ %95, %94 ], [ %64, %80 ]
  %100 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %46) #20
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %104, !prof !1438

102:                                              ; preds = %98
  %103 = load ptr, ptr %5, align 8, !tbaa !1032
  tail call fastcc void @register_new_assert_for(ptr noundef %46, ptr noundef %46, i32 noundef %52, ptr noundef %103, ptr noundef %0, ptr noundef null, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  br label %104

104:                                              ; preds = %98, %102, %44
  %105 = phi i8 [ %99, %98 ], [ 1, %102 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  %106 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #20
  %107 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %44, label %109, !prof !1439, !llvm.loop !1440

109:                                              ; preds = %104, %40, %35
  %110 = phi i8 [ %36, %35 ], [ %36, %40 ], [ %105, %104 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %111 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !1042
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %35, label %113, !prof !1441, !llvm.loop !1442

113:                                              ; preds = %109, %31
  %114 = phi i8 [ %32, %31 ], [ %110, %109 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #21
  %115 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !1042
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %138, !prof !1443

117:                                              ; preds = %113, %135
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #22
  %118 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %119 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %7, ptr noundef %118, i32 noundef 1) #20
  %120 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %135, !prof !1444

122:                                              ; preds = %117, %131
  %123 = phi ptr [ %132, %131 ], [ %119, %117 ]
  %124 = call fastcc ptr @get_use_from_ptr(ptr noundef %123) #20
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 141
  br i1 %127, label %128, label %131, !prof !1445

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.tree_ssa_name, ptr %124, i64 0, i32 3
  %130 = load i32, ptr %129, align 8, !tbaa !1036
  call fastcc void @SET_BIT(ptr noundef %1, i32 noundef %130) #20
  br label %131

131:                                              ; preds = %128, %122
  %132 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %7) #20
  %133 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %122, label %135, !prof !1446, !llvm.loop !1447

135:                                              ; preds = %131, %117
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #22
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %136 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !1042
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %117, label %138, !prof !1256, !llvm.loop !1448

138:                                              ; preds = %135, %113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %114
}

; Function Attrs: optsize
declare zeroext i8 @sbitmap_empty_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #13 !prof !1449 !PGOFuncName !1450 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1451 !PGOFuncName !1452 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !1042
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1453

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !1032
  ret i8 %10
}

; Function Attrs: optsize
declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1454 !PGOFuncName !1455 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1456

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1457

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 738, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1458
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1458
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1460 !PGOFuncName !1461 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @fp_predicate(ptr noundef %0) unnamed_addr #0 !prof !1462 !PGOFuncName !1463 {
  %2 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1036
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 9
  br i1 %7, label %32, label %8, !prof !1464

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1036
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 13
  br i1 %14, label %22, label %15, !prof !1465

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !1036
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 14
  br i1 %21, label %22, label %32, !prof !1465

22:                                               ; preds = %15, %8
  %23 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !1036
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !1036
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 9
  %31 = zext i1 %30 to i8
  br label %32

32:                                               ; preds = %15, %22, %1
  %33 = phi i8 [ 1, %1 ], [ 0, %15 ], [ %31, %22 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @zero_ssa_operands(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1466 !PGOFuncName !1467 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #22
  %3 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 1) #20
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #22
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_conditional_asserts(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1468 !PGOFuncName !1469 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #22
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #21
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %8 = call fastcc ptr @ei_start_1(ptr noundef nonnull %7) #20
  store i32 0, ptr %4, align 8, !tbaa.struct !1385
  %9 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !1386
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %5) #20, !range !1042
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %39, label %12, !prof !1470

12:                                               ; preds = %2, %33
  %13 = phi i8 [ %34, %33 ], [ 0, %2 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !1032
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !1215
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %33, label %18, !prof !1471

18:                                               ; preds = %12
  %19 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 1) #20
  %20 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #20
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %33, !prof !1472

22:                                               ; preds = %18, %22
  %23 = phi i8 [ %29, %22 ], [ %13, %18 ]
  %24 = phi ptr [ %30, %22 ], [ %19, %18 ]
  %25 = call fastcc i32 @gimple_cond_code(ptr noundef %1) #20, !range !1337
  %26 = call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #20
  %27 = call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #20
  %28 = call fastcc zeroext i8 @register_edge_assert_for(ptr noundef %24, ptr noundef %14, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %25, ptr noundef %26, ptr noundef %27) #20, !range !1042
  %29 = or i8 %28, %23
  %30 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %6) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %22, label %33, !prof !1473, !llvm.loop !1474

33:                                               ; preds = %22, %18, %12
  %34 = phi i8 [ %13, %12 ], [ %13, %18 ], [ %29, %22 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %35 = load i32, ptr %4, align 8
  %36 = load ptr, ptr %9, align 8
  %37 = call fastcc zeroext i8 @ei_cond(i32 %35, ptr %36, ptr noundef nonnull %5) #20, !range !1042
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %12, !prof !1475, !llvm.loop !1476

39:                                               ; preds = %33, %2
  %40 = phi i8 [ 0, %2 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_switch_asserts(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1477 !PGOFuncName !1478 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %1) #20
  %5 = zext i32 %4 to i64
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #21
  %6 = call fastcc ptr @gimple_switch_index(ptr noundef %1) #20
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %97, !prof !1423

10:                                               ; preds = %2
  %11 = call ptr @make_tree_vec_stat(i32 noundef %4) #21
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %13, label %15, !prof !1479

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2
  call void @spec_qsort(ptr noundef nonnull %14, i64 noundef %5, i64 noundef 8, ptr noundef nonnull @compare_case_labels) #21
  br label %97

15:                                               ; preds = %10, %15
  %16 = phi i64 [ %20, %15 ], [ 0, %10 ]
  %17 = trunc i64 %16 to i32
  %18 = call fastcc ptr @gimple_switch_label(ptr noundef %1, i32 noundef %17) #20
  %19 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %16
  store ptr %18, ptr %19, align 8, !tbaa !1036
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, %5
  br i1 %21, label %22, label %15, !prof !1480, !llvm.loop !1481

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2
  call void @spec_qsort(ptr noundef nonnull %23, i64 noundef %5, i64 noundef 8, ptr noundef nonnull @compare_case_labels) #21
  br i1 %12, label %97, label %24, !prof !1482

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  br label %26

26:                                               ; preds = %24, %93
  %27 = phi i8 [ 0, %24 ], [ %94, %93 ]
  %28 = phi i32 [ 0, %24 ], [ %95, %93 ]
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !1036
  %32 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !1036
  %34 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !1036
  %36 = add nuw i32 %28, 1
  %37 = icmp ult i32 %36, %4
  br i1 %37, label %38, label %72, !prof !1483

38:                                               ; preds = %26
  %39 = zext i32 %36 to i64
  %40 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !1036
  %42 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !1036
  %44 = getelementptr inbounds %struct.tree_exp, ptr %43, i64 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !1036
  %46 = icmp eq ptr %41, %45
  br i1 %46, label %47, label %72, !prof !1484

47:                                               ; preds = %38, %51
  %48 = phi i64 [ %49, %51 ], [ %29, %38 ]
  %49 = add nuw nsw i64 %48, 1
  %50 = icmp ult i64 %49, %5
  br i1 %50, label %51, label %59, !prof !1485

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %49
  %53 = load ptr, ptr %52, align 8, !tbaa !1036
  %54 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !1036
  %56 = icmp eq ptr %41, %55
  br i1 %56, label %47, label %57, !prof !1486, !llvm.loop !1487

57:                                               ; preds = %51
  %58 = trunc i64 %48 to i32
  br label %61

59:                                               ; preds = %47
  %60 = add i32 %4, -1
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !1036
  %66 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !1036
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72, !prof !1488

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !1036
  br label %72

72:                                               ; preds = %61, %69, %38, %26
  %73 = phi i32 [ %62, %69 ], [ %28, %38 ], [ %28, %26 ], [ %62, %61 ]
  %74 = phi ptr [ %71, %69 ], [ %35, %38 ], [ %35, %26 ], [ %67, %61 ]
  %75 = icmp eq ptr %33, null
  br i1 %75, label %93, label %76, !prof !1489

76:                                               ; preds = %72
  %77 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %78 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !1036
  %80 = call ptr @label_to_block_fn(ptr noundef %77, ptr noundef %79) #21
  %81 = call ptr @find_edge(ptr noundef %0, ptr noundef %80) #21
  %82 = icmp eq ptr %74, null
  %83 = select i1 %82, i32 101, i32 100
  %84 = load ptr, ptr %25, align 8, !tbaa !1036
  %85 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %84, ptr noundef nonnull %33) #21
  %86 = call fastcc zeroext i8 @register_edge_assert_for(ptr noundef nonnull %6, ptr noundef %81, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %83, ptr noundef nonnull %6, ptr noundef %85) #20, !range !1042
  %87 = or i8 %86, %27
  br i1 %82, label %93, label %88, !prof !1490

88:                                               ; preds = %76
  %89 = load ptr, ptr %25, align 8, !tbaa !1036
  %90 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %89, ptr noundef nonnull %74) #21
  %91 = call fastcc zeroext i8 @register_edge_assert_for(ptr noundef nonnull %6, ptr noundef %81, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef 98, ptr noundef nonnull %6, ptr noundef %90) #20, !range !1042
  %92 = or i8 %91, %87
  br label %93

93:                                               ; preds = %76, %88, %72
  %94 = phi i8 [ %27, %72 ], [ %92, %88 ], [ %87, %76 ]
  %95 = add i32 %73, 1
  %96 = icmp ult i32 %95, %4
  br i1 %96, label %26, label %97, !prof !1491, !llvm.loop !1492

97:                                               ; preds = %93, %13, %22, %2
  %98 = phi i8 [ 0, %2 ], [ 0, %22 ], [ 0, %13 ], [ %94, %93 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %98
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 !prof !1493 !PGOFuncName !1494 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !1221
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !1495
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1496
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !1497 !PGOFuncName !1498 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1221
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1499 !PGOFuncName !1500 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1501 !PGOFuncName !1502 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !1503
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #20
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1505 !PGOFuncName !1506 {
  %2 = load i8, ptr %0, align 8, !tbaa !1507
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 !prof !1508 !PGOFuncName !1509 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1392
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1510

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
  %15 = load i64, ptr %14, align 8, !tbaa !1183
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !1036
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !1036
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !1183
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !1183
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @infer_value_range(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !1511 !PGOFuncName !1512 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr null, ptr %3, align 8, !tbaa !1032
  store i32 0, ptr %2, align 4, !tbaa !1130
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 4194304
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %46, !prof !1513

11:                                               ; preds = %4
  %12 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #21
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %46, !prof !1513

14:                                               ; preds = %11
  %15 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17, !prof !1514

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !1515
  %21 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %20) #20
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr @flag_delete_null_pointer_checks, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %46, label %29, !prof !1516

26:                                               ; preds = %14
  %27 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !1130
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %46, label %29, !prof !1517

29:                                               ; preds = %17, %26
  %30 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !1036
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %46 [
    i16 10, label %34
    i16 12, label %34
  ], !prof !1518

34:                                               ; preds = %29, %29
  %35 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %36 = icmp eq i32 %35, 7
  br i1 %36, label %46, label %37, !prof !1519

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  call void @count_uses_and_derefs(ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %38 = load i32, ptr %6, align 4, !tbaa !1130
  %39 = load i32, ptr %7, align 4, !tbaa !1130
  %40 = sub i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43, !prof !1520

42:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  br label %46

43:                                               ; preds = %37
  %44 = load ptr, ptr %30, align 8, !tbaa !1036
  %45 = call ptr @build_int_cst(ptr noundef %44, i64 noundef 0) #21
  store ptr %45, ptr %3, align 8, !tbaa !1032
  store i32 102, ptr %2, align 4, !tbaa !1130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  br label %46

46:                                               ; preds = %26, %34, %29, %42, %43, %17, %11, %4
  %47 = phi i8 [ 1, %43 ], [ 0, %4 ], [ 0, %11 ], [ 0, %17 ], [ 0, %42 ], [ 0, %29 ], [ 0, %34 ], [ 0, %26 ]
  ret i8 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1521 !PGOFuncName !1522 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !1523 !PGOFuncName !1524 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !1337
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !1281
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !1525

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
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !1526 !PGOFuncName !1527 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #0 !prof !1528 !PGOFuncName !1529 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1530
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6, !prof !1532

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1530
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15, !prof !1533

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1036
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #20, !range !1042
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !1130
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !1534

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #21
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_assert_for(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %6) unnamed_addr #0 !prof !1535 !PGOFuncName !1536 {
  %8 = load i64, ptr %3, align 8
  %9 = and i64 %8, 134283263
  %10 = icmp eq i64 %9, 134217751
  br i1 %10, label %11, label %19, !prof !1537

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1036
  %14 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !1036
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !1036
  %18 = tail call ptr @build_int_cst_wide(ptr noundef %13, i64 noundef %15, i64 noundef %17) #21
  br label %19

19:                                               ; preds = %11, %7
  %20 = phi ptr [ %18, %11 ], [ %3, %7 ]
  %21 = icmp eq ptr %4, null
  br i1 %21, label %22, label %25, !prof !1538

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !1215
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi ptr [ %24, %22 ], [ %4, %19 ]
  %27 = load ptr, ptr @asserts_for, align 8, !tbaa !1032
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !1036
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !1032
  %33 = icmp eq ptr %32, null
  br i1 %33, label %83, label %34, !prof !1539

34:                                               ; preds = %25
  %35 = icmp eq ptr %5, null
  br label %36

36:                                               ; preds = %34, %79
  %37 = phi ptr [ %32, %34 ], [ %81, %79 ]
  %38 = getelementptr inbounds %struct.assert_locus_d, ptr %37, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !1216
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %41, label %79, !prof !1540

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.assert_locus_d, ptr %37, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !1217
  %44 = icmp eq ptr %43, %20
  br i1 %44, label %48, label %45, !prof !1541

45:                                               ; preds = %41
  %46 = tail call i32 @operand_equal_p(ptr noundef %43, ptr noundef %20, i32 noundef 0) #21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %79, label %48, !prof !1542

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct.assert_locus_d, ptr %37, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !1543
  %51 = icmp eq ptr %50, %1
  br i1 %51, label %55, label %52, !prof !1544

52:                                               ; preds = %48
  %53 = tail call i32 @operand_equal_p(ptr noundef %50, ptr noundef %1, i32 noundef 0) #21
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %79, label %55, !prof !1545

55:                                               ; preds = %52, %48
  br i1 %35, label %56, label %60, !prof !1546

56:                                               ; preds = %55
  %57 = load ptr, ptr %37, align 8, !tbaa !1207
  %58 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %26, ptr noundef %57) #21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %72, label %105, !prof !1547

60:                                               ; preds = %55
  %61 = load ptr, ptr %5, align 8, !tbaa !1213
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !1515
  %64 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %63) #20
  %65 = icmp ugt i32 %64, 1
  br i1 %65, label %66, label %72, !prof !1548

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !1215
  %69 = load ptr, ptr %68, align 8, !tbaa !1549
  %70 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %69) #20
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %79, label %72, !prof !1550

72:                                               ; preds = %56, %66, %60
  %73 = load ptr, ptr %37, align 8, !tbaa !1207
  %74 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %73, ptr noundef %26) #21
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76, !prof !1551

76:                                               ; preds = %72
  store ptr %26, ptr %37, align 8, !tbaa !1207
  %77 = getelementptr inbounds %struct.assert_locus_d, ptr %37, i64 0, i32 1
  store ptr %5, ptr %77, align 8, !tbaa !1212
  %78 = getelementptr inbounds %struct.assert_locus_d, ptr %37, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1258
  br label %105

79:                                               ; preds = %66, %72, %52, %45, %36
  %80 = getelementptr inbounds %struct.assert_locus_d, ptr %37, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !1409
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %36, !prof !1552, !llvm.loop !1553

83:                                               ; preds = %79, %25
  %84 = phi ptr [ null, %25 ], [ %37, %79 ]
  %85 = tail call ptr @xmalloc(i64 noundef 72) #21
  store ptr %26, ptr %85, align 8, !tbaa !1207
  %86 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 1
  store ptr %5, ptr %86, align 8, !tbaa !1212
  %87 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %87, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1258
  %88 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 3
  store i32 %2, ptr %88, align 8, !tbaa !1216
  %89 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 4
  store ptr %20, ptr %89, align 8, !tbaa !1217
  %90 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 5
  store ptr %1, ptr %90, align 8, !tbaa !1543
  %91 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 6
  store ptr null, ptr %91, align 8, !tbaa !1409
  %92 = icmp eq ptr %84, null
  br i1 %92, label %95, label %93, !prof !1554

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.assert_locus_d, ptr %84, i64 0, i32 6
  br label %100

95:                                               ; preds = %83
  %96 = load ptr, ptr @asserts_for, align 8, !tbaa !1032
  %97 = load i32, ptr %28, align 8, !tbaa !1036
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %96, i64 %98
  br label %100

100:                                              ; preds = %95, %93
  %101 = phi ptr [ %99, %95 ], [ %94, %93 ]
  store ptr %85, ptr %101, align 8, !tbaa !1032
  %102 = load ptr, ptr @need_assert_for, align 8, !tbaa !1032
  %103 = load i32, ptr %28, align 8, !tbaa !1036
  %104 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %102, i32 noundef %103) #21
  br label %105

105:                                              ; preds = %56, %100, %76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #6 !prof !1555 !PGOFuncName !1556 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1557
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1558

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #20
  %8 = load ptr, ptr %3, align 8, !tbaa !1559
  store ptr %8, ptr %2, align 8, !tbaa !1557
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1561
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !1562

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1563
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #20
  %17 = load ptr, ptr %11, align 8, !tbaa !1565
  store ptr %17, ptr %10, align 8, !tbaa !1561
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !1507
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !1566 !PGOFuncName !1567 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1221
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1568
  store ptr %4, ptr %0, align 8, !tbaa !1221
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1569 !PGOFuncName !1570 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !1507
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !1571

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 918, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #21
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !1572

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1507
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !1573
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !1574
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !1503
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1575 !PGOFuncName !1576 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1577
  %4 = load ptr, ptr %3, align 8, !tbaa !1032
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !1578 !PGOFuncName !1579 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1557
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !1580

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !1559
  store ptr %7, ptr %2, align 8, !tbaa !1557
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !1581
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !1574
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !1582

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !1573
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !1581
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1507
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !1583 !PGOFuncName !1584 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1585 !PGOFuncName !1586 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !1042
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !1587

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !1032
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1588 !PGOFuncName !1589 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !1590 !PGOFuncName !1591 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !1183
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !1592

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1590 !PGOFuncName !1593 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #13 !prof !1590 !PGOFuncName !1594 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !1130
  ret i32 %4
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @register_edge_assert_for(ptr noundef %0, ptr noundef %1, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !1595 !PGOFuncName !1596 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !1292
  %11 = lshr i32 %10, 11
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, 4194304
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %85, !prof !1597

17:                                               ; preds = %6
  %18 = call fastcc zeroext i8 @extract_code_and_val_from_cond_with_ops(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %13, ptr noundef nonnull %8, ptr noundef nonnull %7) #20, !range !1042
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %85, label %20, !prof !1598

20:                                               ; preds = %17
  %21 = tail call fastcc zeroext i8 @register_edge_assert_for_2(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %13) #20, !range !1042
  %22 = load i32, ptr %8, align 4, !tbaa !1130
  %23 = icmp eq i32 %22, 101
  br i1 %23, label %24, label %28, !prof !1599

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 8, !tbaa !1032
  %26 = tail call i32 @integer_onep(ptr noundef %25) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %55, label %34, !prof !1600

28:                                               ; preds = %20
  %29 = icmp eq i32 %22, 102
  br i1 %29, label %30, label %85, !prof !1601

30:                                               ; preds = %28
  %31 = load ptr, ptr %7, align 8, !tbaa !1032
  %32 = tail call i32 @integer_zerop(ptr noundef %31) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %60, label %34, !prof !1602

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %31, %30 ], [ %25, %24 ]
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !1036
  %38 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %37) #20, !range !1042
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %53, label %40, !prof !1603

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %37) #20, !range !1337
  %42 = icmp eq i32 %41, 93
  br i1 %42, label %46, label %43, !prof !1604

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %37) #20, !range !1337
  %45 = icmp eq i32 %44, 89
  br i1 %45, label %46, label %53, !prof !1605

46:                                               ; preds = %43, %40
  %47 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %37) #20
  %48 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %37) #20
  %49 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %47, i32 noundef 102, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !1042
  %50 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %48, i32 noundef 102, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !1042
  %51 = or i8 %49, %50
  %52 = or i8 %51, %21
  br label %53

53:                                               ; preds = %34, %43, %46
  %54 = phi i8 [ %52, %46 ], [ %21, %43 ], [ %21, %34 ]
  br i1 %23, label %55, label %60, !prof !1606

55:                                               ; preds = %24, %53
  %56 = phi ptr [ %35, %53 ], [ %25, %24 ]
  %57 = phi i8 [ %54, %53 ], [ %21, %24 ]
  %58 = tail call i32 @integer_zerop(ptr noundef %56) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %85, label %65, !prof !1607

60:                                               ; preds = %53, %30
  %61 = phi ptr [ %31, %30 ], [ %35, %53 ]
  %62 = phi i8 [ %21, %30 ], [ %54, %53 ]
  %63 = tail call i32 @integer_onep(ptr noundef %61) #21
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %85, label %65, !prof !1608

65:                                               ; preds = %60, %55
  %66 = phi i8 [ %62, %60 ], [ %57, %55 ]
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !1036
  %69 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %68) #20, !range !1042
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %85, label %71, !prof !1609

71:                                               ; preds = %65
  %72 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %68) #20, !range !1337
  %73 = icmp eq i32 %72, 94
  br i1 %73, label %78, label %74, !prof !1610

74:                                               ; preds = %71
  br i1 %23, label %75, label %85, !prof !1611

75:                                               ; preds = %74
  %76 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %68) #20, !range !1337
  %77 = icmp eq i32 %76, 87
  br i1 %77, label %78, label %85, !prof !1612

78:                                               ; preds = %75, %71
  %79 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %68) #20
  %80 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %68) #20
  %81 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %79, i32 noundef 101, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !1042
  %82 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %80, i32 noundef 101, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !1042
  %83 = or i8 %81, %82
  %84 = or i8 %83, %66
  br label %85

85:                                               ; preds = %55, %28, %60, %78, %75, %74, %65, %17, %6
  %86 = phi i8 [ 0, %6 ], [ 0, %17 ], [ %62, %60 ], [ %84, %78 ], [ %66, %75 ], [ %66, %74 ], [ %66, %65 ], [ %21, %28 ], [ %57, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  ret i8 %86
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1613 !PGOFuncName !1614 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !1615 !PGOFuncName !1616 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @extract_code_and_val_from_cond_with_ops(ptr noundef readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !prof !1617 !PGOFuncName !1618 {
  %8 = icmp eq ptr %0, %3
  br i1 %8, label %9, label %11, !prof !1619

9:                                                ; preds = %7
  %10 = tail call i32 @swap_tree_comparison(i32 noundef %1) #21
  br label %11

11:                                               ; preds = %7, %9
  %12 = phi ptr [ %2, %9 ], [ %3, %7 ]
  %13 = phi i32 [ %10, %9 ], [ %1, %7 ]
  %14 = icmp eq i8 %4, 0
  br i1 %14, label %17, label %15, !prof !1620

15:                                               ; preds = %11
  %16 = tail call i32 @invert_tree_comparison(i32 noundef %13, i8 noundef zeroext 0) #21
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !1036
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %45, label %25, !prof !1621

25:                                               ; preds = %17
  switch i32 %18, label %44 [
    i32 99, label %26
    i32 97, label %26
  ]

26:                                               ; preds = %25, %25
  %27 = add nsw i32 %23, -6
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %29, label %44, !prof !1622

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !1036
  %32 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !1036
  switch i32 %18, label %44 [
    i32 99, label %34
    i32 97, label %39
  ], !prof !1623

34:                                               ; preds = %29
  %35 = icmp eq ptr %33, null
  br i1 %35, label %45, label %36, !prof !1624

36:                                               ; preds = %34
  %37 = tail call fastcc i32 @compare_values(ptr noundef nonnull %12, ptr noundef nonnull %33) #20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %44, !prof !1624

39:                                               ; preds = %29
  %40 = icmp eq ptr %31, null
  br i1 %40, label %45, label %41, !prof !1625

41:                                               ; preds = %39
  %42 = tail call fastcc i32 @compare_values(ptr noundef nonnull %12, ptr noundef nonnull %31) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !1625

44:                                               ; preds = %36, %41, %29, %26, %25
  store i32 %18, ptr %5, align 4, !tbaa !1130
  store ptr %12, ptr %6, align 8, !tbaa !1032
  br label %45

45:                                               ; preds = %36, %34, %41, %39, %17, %44
  %46 = phi i8 [ 1, %44 ], [ 0, %17 ], [ 0, %39 ], [ 0, %41 ], [ 0, %34 ], [ 0, %36 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @register_edge_assert_for_2(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 !prof !1626 !PGOFuncName !1627 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  %10 = call fastcc zeroext i8 @extract_code_and_val_from_cond_with_ops(ptr noundef %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, ptr noundef nonnull %9, ptr noundef nonnull %8) #20, !range !1042
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %186, label %12, !prof !1628

12:                                               ; preds = %7
  %13 = tail call fastcc zeroext i8 @live_on_edge(ptr noundef %1, ptr noundef %0) #20, !range !1042
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17, !prof !1629

15:                                               ; preds = %12
  %16 = load i32, ptr %9, align 4
  br label %23

17:                                               ; preds = %12
  %18 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %0) #20
  %19 = icmp eq i8 %18, 0
  %20 = load i32, ptr %9, align 4
  br i1 %19, label %21, label %23, !prof !1630

21:                                               ; preds = %17
  %22 = load ptr, ptr %8, align 8, !tbaa !1032
  tail call fastcc void @register_new_assert_for(ptr noundef %0, ptr noundef %0, i32 noundef %20, ptr noundef %22, ptr noundef null, ptr noundef %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  br label %23

23:                                               ; preds = %15, %21, %17
  %24 = phi i32 [ %20, %17 ], [ %20, %21 ], [ %16, %15 ]
  %25 = phi i8 [ 0, %17 ], [ 1, %21 ], [ 0, %15 ]
  %26 = and i32 %24, -2
  %27 = icmp eq i32 %26, 98
  br i1 %27, label %28, label %186, !prof !1631

28:                                               ; preds = %23
  %29 = load ptr, ptr %8, align 8, !tbaa !1032
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 23
  br i1 %32, label %33, label %186, !prof !1632

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !1036
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 2097152
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %186, label %39, !prof !1633

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !1036
  %42 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %41) #20, !range !1042
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %60, label %44, !prof !1634

44:                                               ; preds = %39
  %45 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %41) #20, !range !1337
  %46 = icmp eq i32 %45, 63
  br i1 %46, label %47, label %60, !prof !1635

47:                                               ; preds = %44
  %48 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %41) #20
  %49 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %41) #20
  %50 = load i64, ptr %48, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %53, label %60, !prof !1636

53:                                               ; preds = %47
  %54 = load i64, ptr %49, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 23
  br i1 %56, label %57, label %60, !prof !1637

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !1036
  br label %60

60:                                               ; preds = %47, %53, %57, %44, %39
  %61 = phi ptr [ %59, %57 ], [ %41, %53 ], [ %41, %47 ], [ %41, %44 ], [ %41, %39 ]
  %62 = phi ptr [ %49, %57 ], [ %49, %53 ], [ %49, %47 ], [ null, %44 ], [ null, %39 ]
  %63 = phi ptr [ %48, %57 ], [ %48, %53 ], [ %48, %47 ], [ null, %44 ], [ null, %39 ]
  %64 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %61) #20, !range !1042
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %138, label %66, !prof !1638

66:                                               ; preds = %60
  %67 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %61) #20, !range !1337
  %68 = icmp eq i32 %67, 116
  br i1 %68, label %72, label %69, !prof !1639

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %61) #20, !range !1337
  %71 = icmp eq i32 %70, 113
  br i1 %71, label %72, label %138

72:                                               ; preds = %69, %66
  %73 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %61) #20
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !1036
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 2097152
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %138, !prof !1640

79:                                               ; preds = %72
  %80 = tail call fastcc ptr @gimple_expr_type(ptr noundef %61) #20
  %81 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %61) #20
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !1036
  %86 = getelementptr inbounds %struct.tree_type, ptr %85, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = xor i32 %87, %82
  %89 = and i32 %88, 1023
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %138, !prof !1641

91:                                               ; preds = %79
  %92 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %61) #20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %138, label %94, !prof !1482

94:                                               ; preds = %91
  %95 = load i64, ptr %92, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 141
  br i1 %97, label %98, label %138, !prof !1642

98:                                               ; preds = %94
  %99 = icmp eq ptr %62, null
  br i1 %99, label %104, label %100, !prof !1643

100:                                              ; preds = %98
  %101 = load i64, ptr %62, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 23
  br i1 %103, label %104, label %138, !prof !1644

104:                                              ; preds = %100, %98
  %105 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !1036
  %107 = load i64, ptr %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = and i32 %108, 65535
  %110 = add nsw i32 %109, -6
  %111 = icmp ult i32 %110, 3
  br i1 %111, label %112, label %138, !prof !1645

112:                                              ; preds = %104
  %113 = tail call fastcc zeroext i8 @live_on_edge(ptr noundef %1, ptr noundef nonnull %92) #20, !range !1042
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %138, label %115, !prof !1646

115:                                              ; preds = %112
  %116 = tail call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %92) #20
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %138, !prof !1647

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !1036
  %121 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %120, ptr noundef nonnull %92) #21
  br i1 %99, label %125, label %122, !prof !1648

122:                                              ; preds = %118
  %123 = load ptr, ptr %119, align 8, !tbaa !1036
  %124 = tail call ptr @build2_stat(i32 noundef 63, ptr noundef %123, ptr noundef %121, ptr noundef nonnull %62) #21
  br label %125

125:                                              ; preds = %122, %118
  %126 = phi ptr [ %124, %122 ], [ %121, %118 ]
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129, !prof !1647

129:                                              ; preds = %125
  %130 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 18, i64 1, ptr nonnull %127)
  %131 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_generic_expr(ptr noundef %131, ptr noundef nonnull %92, i32 noundef 0) #21
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %133 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 6, i64 1, ptr %132)
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_generic_expr(ptr noundef %134, ptr noundef %126, i32 noundef 0) #21
  %135 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %136 = tail call i32 @fputc(i32 10, ptr %135)
  br label %137

137:                                              ; preds = %129, %125
  tail call fastcc void @register_new_assert_for(ptr noundef nonnull %92, ptr noundef %126, i32 noundef %24, ptr noundef nonnull %29, ptr noundef null, ptr noundef %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  br label %138

138:                                              ; preds = %60, %69, %79, %72, %104, %137, %115, %112, %100, %94, %91
  %139 = phi i8 [ %25, %115 ], [ 1, %137 ], [ %25, %112 ], [ %25, %100 ], [ %25, %94 ], [ %25, %91 ], [ %25, %104 ], [ %25, %72 ], [ %25, %79 ], [ %25, %69 ], [ %25, %60 ]
  %140 = icmp eq ptr %63, null
  br i1 %140, label %186, label %141, !prof !1649

141:                                              ; preds = %138
  %142 = load i64, ptr %63, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 141
  br i1 %144, label %145, label %186, !prof !1636

145:                                              ; preds = %141
  %146 = load i64, ptr %62, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 23
  br i1 %148, label %149, label %186, !prof !1637

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !1036
  %152 = load i64, ptr %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = and i32 %153, 65535
  %155 = add nsw i32 %154, -6
  %156 = icmp ult i32 %155, 3
  br i1 %156, label %157, label %186, !prof !1650

157:                                              ; preds = %149
  %158 = tail call fastcc zeroext i8 @live_on_edge(ptr noundef %1, ptr noundef nonnull %63) #20, !range !1042
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %186, label %160, !prof !1651

160:                                              ; preds = %157
  %161 = tail call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %63) #20
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %186, !prof !1652

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !1036
  %166 = load ptr, ptr %150, align 8, !tbaa !1036
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %171, label %168, !prof !1653

168:                                              ; preds = %163
  %169 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %165, ptr noundef nonnull %63) #21
  %170 = load ptr, ptr %164, align 8, !tbaa !1036
  br label %171

171:                                              ; preds = %163, %168
  %172 = phi ptr [ %170, %168 ], [ %165, %163 ]
  %173 = phi ptr [ %169, %168 ], [ %63, %163 ]
  %174 = tail call ptr @build2_stat(i32 noundef 63, ptr noundef %172, ptr noundef %173, ptr noundef nonnull %62) #21
  %175 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %176 = icmp eq ptr %175, null
  br i1 %176, label %185, label %177, !prof !1652

177:                                              ; preds = %171
  %178 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 18, i64 1, ptr nonnull %175)
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_generic_expr(ptr noundef %179, ptr noundef nonnull %63, i32 noundef 0) #21
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %181 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 6, i64 1, ptr %180)
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_generic_expr(ptr noundef %182, ptr noundef %174, i32 noundef 0) #21
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %184 = tail call i32 @fputc(i32 10, ptr %183)
  br label %185

185:                                              ; preds = %177, %171
  tail call fastcc void @register_new_assert_for(ptr noundef nonnull %63, ptr noundef %174, i32 noundef %24, ptr noundef nonnull %29, ptr noundef null, ptr noundef %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  br label %186

186:                                              ; preds = %149, %28, %33, %23, %185, %160, %157, %145, %141, %138, %7
  %187 = phi i8 [ 0, %7 ], [ %25, %33 ], [ %25, %28 ], [ %25, %23 ], [ %139, %160 ], [ 1, %185 ], [ %139, %157 ], [ %139, %145 ], [ %139, %141 ], [ %139, %138 ], [ %139, %149 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  ret i8 %187
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !1654 !PGOFuncName !1655 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1656

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) unnamed_addr #0 !prof !1657 !PGOFuncName !1658 {
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %101, !prof !1659

8:                                                ; preds = %4, %75
  %9 = phi i32 [ %76, %75 ], [ %1, %4 ]
  %10 = phi ptr [ %77, %75 ], [ %0, %4 ]
  %11 = phi i8 [ %78, %75 ], [ 0, %4 ]
  %12 = tail call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %10) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18, !prof !1660

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1036
  %17 = tail call ptr @build_int_cst(ptr noundef %16, i64 noundef 0) #21
  tail call fastcc void @register_new_assert_for(ptr noundef nonnull %10, ptr noundef nonnull %10, i32 noundef %9, ptr noundef %17, ptr noundef null, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i8 [ 0, %8 ], [ 1, %14 ]
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !1036
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %21) #20, !range !1281
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %101, !prof !1661

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1337
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !1130
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %49, !prof !1662

30:                                               ; preds = %24
  %31 = icmp eq i32 %9, 101
  %32 = zext i1 %31 to i8
  %33 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %34 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %21) #20
  %35 = load i64, ptr %33, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %41, !prof !1663

38:                                               ; preds = %30
  %39 = tail call fastcc zeroext i8 @register_edge_assert_for_2(ptr noundef nonnull %33, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %25, ptr noundef nonnull %33, ptr noundef %34, i8 noundef zeroext %32) #20, !range !1042
  %40 = or i8 %39, %19
  br label %41

41:                                               ; preds = %38, %30
  %42 = phi i8 [ %40, %38 ], [ %19, %30 ]
  %43 = load i64, ptr %34, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %46, label %101, !prof !1664

46:                                               ; preds = %41
  %47 = tail call fastcc zeroext i8 @register_edge_assert_for_2(ptr noundef nonnull %34, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %25, ptr noundef nonnull %33, ptr noundef nonnull %34, i8 noundef zeroext %32) #20, !range !1042
  %48 = or i8 %47, %42
  br label %101

49:                                               ; preds = %24
  switch i32 %9, label %72 [
    i32 102, label %50
    i32 101, label %56
  ], !prof !1665

50:                                               ; preds = %49
  %51 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1337
  %52 = icmp eq i32 %51, 93
  br i1 %52, label %64, label %53, !prof !1666

53:                                               ; preds = %50
  %54 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1337
  %55 = icmp eq i32 %54, 89
  br i1 %55, label %64, label %72, !prof !1667

56:                                               ; preds = %49
  %57 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1337
  %58 = icmp eq i32 %57, 94
  br i1 %58, label %64, label %59, !prof !1668

59:                                               ; preds = %56
  %60 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1337
  %61 = icmp eq i32 %60, 87
  br i1 %61, label %64, label %72, !prof !1669

62:                                               ; preds = %96, %85, %64, %101
  %63 = phi i8 [ %104, %101 ], [ %71, %64 ], [ %89, %85 ], [ %100, %96 ]
  ret i8 %63

64:                                               ; preds = %59, %56, %53, %50
  %65 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %66 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %65, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !1042
  %67 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %21) #20
  %68 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %67, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !1042
  %69 = or i8 %66, %68
  %70 = or i8 %69, %11
  %71 = or i8 %70, %19
  br label %62

72:                                               ; preds = %53, %49, %59
  %73 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1337
  %74 = icmp eq i32 %73, 96
  br i1 %74, label %75, label %82, !prof !1670

75:                                               ; preds = %72
  %76 = tail call i32 @invert_tree_comparison(i32 noundef %9, i8 noundef zeroext 0) #21
  %77 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %78 = or i8 %19, %11
  %79 = load i64, ptr %77, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 141
  br i1 %81, label %8, label %101, !prof !1671

82:                                               ; preds = %72
  %83 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1337
  %84 = icmp eq i32 %83, 141
  br i1 %84, label %85, label %90, !prof !1672

85:                                               ; preds = %82
  %86 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %87 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %86, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !1042
  %88 = or i8 %11, %87
  %89 = or i8 %88, %19
  br label %62

90:                                               ; preds = %82
  %91 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1337
  %92 = icmp eq i32 %91, 116
  br i1 %92, label %96, label %93, !prof !1673

93:                                               ; preds = %90
  %94 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1337
  %95 = icmp eq i32 %94, 113
  br i1 %95, label %96, label %101, !prof !1674

96:                                               ; preds = %93, %90
  %97 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %98 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %97, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !1042
  %99 = or i8 %11, %98
  %100 = or i8 %99, %19
  br label %62

101:                                              ; preds = %75, %18, %4, %93, %46, %41
  %102 = phi i8 [ %11, %93 ], [ %11, %46 ], [ %11, %41 ], [ 0, %4 ], [ %78, %75 ], [ %11, %18 ]
  %103 = phi i8 [ %19, %93 ], [ %48, %46 ], [ %42, %41 ], [ 0, %4 ], [ 0, %75 ], [ %19, %18 ]
  %104 = or i8 %103, %102
  br label %62
}

; Function Attrs: optsize
declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @invert_tree_comparison(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @live_on_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !prof !1675 !PGOFuncName !1676 {
  %3 = load ptr, ptr @live, align 8, !tbaa !1032
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1215
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !1210
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %3, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !1032
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12, !prof !1677

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !1036
  %15 = lshr i32 %14, 6
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 3, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !1183
  %19 = and i32 %14, 63
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = and i64 %21, %18
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %12, %2
  %26 = phi i8 [ 0, %2 ], [ %24, %12 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #0 !prof !1678 !PGOFuncName !1679 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !1042
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !1680

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1337
  %6 = icmp eq i32 %5, 113
  %7 = and i32 %5, 65533
  %8 = icmp eq i32 %7, 116
  %9 = or i1 %6, %8
  %10 = icmp eq i32 %5, 77
  %11 = or i1 %10, %9
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi i8 [ %12, %4 ], [ 0, %1 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !1681 !PGOFuncName !1682 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !1683

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #20
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1337
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !1684

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1036
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1036
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !1032
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !1032
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !1685 !PGOFuncName !1686 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1036
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1036
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1036
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !1687 !PGOFuncName !1688 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1689 !PGOFuncName !1690 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !1036
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1691 !PGOFuncName !1692 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4, !prof !1693

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3162, ptr noundef nonnull @.str.1) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 !prof !1694 !PGOFuncName !1695 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @make_tree_vec_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1696 !PGOFuncName !1697 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6, !prof !1698

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3215, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %4) #20
  ret ptr %8
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_case_labels(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1699 !PGOFuncName !1700 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1032
  %4 = load ptr, ptr %1, align 8, !tbaa !1032
  %5 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %6 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1036
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !1036
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1036
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !1036
  %15 = icmp ult i32 %9, %14
  br i1 %15, label %26, label %16, !prof !1701

16:                                               ; preds = %2
  %17 = icmp eq i32 %9, %14
  br i1 %17, label %18, label %26, !prof !1702

18:                                               ; preds = %16
  %19 = load ptr, ptr %5, align 8, !tbaa !1036
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21, !prof !1703

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 8, !tbaa !1036
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !1704

24:                                               ; preds = %21
  %25 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %19, ptr noundef nonnull %22) #21
  br label %26

26:                                               ; preds = %16, %21, %18, %2, %24
  %27 = phi i32 [ %25, %24 ], [ -1, %2 ], [ -1, %18 ], [ 1, %21 ], [ 1, %16 ]
  ret i32 %27
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1705 !PGOFuncName !1706 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1707
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1708

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !1036
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1709

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1710
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !1493 !PGOFuncName !1712 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1713

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1714
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1716 !PGOFuncName !1717 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !1718

6:                                                ; preds = %3
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 747, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %3, %6, %9
  %11 = and i32 %2, 10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !1719

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !1561
  br label %24

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %17 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !1561
  %18 = icmp eq ptr %16, null
  br i1 %18, label %24, label %19, !prof !1720

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !1721

22:                                               ; preds = %19
  %23 = load ptr, ptr %16, align 8, !tbaa !1565
  store ptr %23, ptr %17, align 8, !tbaa !1561
  br label %24

24:                                               ; preds = %13, %22, %19, %15
  %25 = and i32 %2, 5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !1722

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !1557
  br label %40

29:                                               ; preds = %24
  %30 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %31 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !1557
  %32 = icmp ne i32 %4, 0
  %33 = icmp eq ptr %30, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %40, label %35, !prof !1723

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !1724

38:                                               ; preds = %35
  %39 = load ptr, ptr %30, align 8, !tbaa !1559
  store ptr %39, ptr %31, align 8, !tbaa !1557
  br label %40

40:                                               ; preds = %27, %38, %35, %29
  store i8 0, ptr %0, align 8, !tbaa !1507
  %41 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1725 !PGOFuncName !1726 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !1042
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1727

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1036
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1728 !PGOFuncName !1729 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !1042
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1730

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1036
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1731 !PGOFuncName !1732 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !1042
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1733

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1036
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1734 !PGOFuncName !1735 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !1042
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1736

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1036
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1737 !PGOFuncName !1738 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1739 !PGOFuncName !1740 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !1036
  ret ptr %3
}

; Function Attrs: optsize
declare void @count_uses_and_derefs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1523 !PGOFuncName !1741 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1742

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1446, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #13 !prof !1743 !PGOFuncName !1744 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !1036
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1745 !PGOFuncName !1746 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1032
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1747 !PGOFuncName !1748 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1036
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #10 !prof !1569 !PGOFuncName !1749 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !1507
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1750 !PGOFuncName !1751 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !1036
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1752 !PGOFuncName !1753 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1752 !PGOFuncName !1754 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !1036
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1755

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3103, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1451 !PGOFuncName !1756 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1757

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1454 !PGOFuncName !1758 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1456

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1759 !PGOFuncName !1760 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1761

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 687, ptr noundef nonnull @.str.1) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !1032
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !1762 !PGOFuncName !1763 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1032
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @process_assert_insertions_for(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1764 !PGOFuncName !1765 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !1543
  %7 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !1217
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %46, label %10, !prof !1339

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !1216
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !1032
  %14 = tail call ptr @build2_stat(i32 noundef %12, ptr noundef %13, ptr noundef %6, ptr noundef %8) #21
  %15 = tail call fastcc ptr @build_assert_expr_for(ptr noundef %14, ptr noundef %0) #20
  %16 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !1212
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !1766

19:                                               ; preds = %10
  tail call void @gsi_insert_on_edge(ptr noundef nonnull %17, ptr noundef %15) #21
  br label %46

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 2
  %22 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %21) #20
  %23 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %22) #21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26, !prof !1767

25:                                               ; preds = %20
  tail call void @gsi_insert_after(ptr noundef nonnull %21, ptr noundef %15, i32 noundef 1) #21
  br label %46

26:                                               ; preds = %20
  %27 = load ptr, ptr %1, align 8, !tbaa !1207
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 1
  %29 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %28) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !1385
  %30 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %29, ptr %30, align 8, !tbaa.struct !1386
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %29, ptr noundef nonnull %4) #20, !range !1042
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %26, %40
  %34 = load ptr, ptr %4, align 8, !tbaa !1032
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !1292
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call void @gsi_insert_on_edge(ptr noundef nonnull %34, ptr noundef %15) #21
  br label %46

40:                                               ; preds = %33
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %41 = load i32, ptr %3, align 8
  %42 = load ptr, ptr %30, align 8
  %43 = call fastcc zeroext i8 @ei_cond(i32 %41, ptr %42, ptr noundef nonnull %4) #20, !range !1042
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %33, !llvm.loop !1768

45:                                               ; preds = %40, %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4901, ptr noundef nonnull @.str.1) #21
  br label %46

46:                                               ; preds = %2, %45, %39, %25, %19
  %47 = phi i8 [ 1, %19 ], [ 1, %39 ], [ 0, %45 ], [ 0, %25 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret i8 %47
}

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #2

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_assert_expr_for(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1764 !PGOFuncName !1769 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6, !prof !1770

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3748, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call ptr @duplicate_ssa_name(ptr noundef nonnull %1, ptr noundef null) #21
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !1130
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %19, !prof !1770

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1036
  %17 = tail call ptr @build2_stat(i32 noundef 148, ptr noundef %16, ptr noundef nonnull %1, ptr noundef nonnull %0) #21
  %18 = tail call ptr @gimple_build_assign_stat(ptr noundef %8, ptr noundef %17) #21
  br label %36

19:                                               ; preds = %7
  %20 = trunc i64 %9 to i16
  switch i16 %20, label %35 [
    i16 96, label %21
    i16 141, label %29
  ]

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !1036
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3760, ptr noundef nonnull @.str.1) #21
  br label %26

26:                                               ; preds = %21, %25
  %27 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !1032
  %28 = tail call ptr @gimple_build_assign_stat(ptr noundef %8, ptr noundef %27) #21
  br label %36

29:                                               ; preds = %19
  %30 = icmp eq ptr %1, %0
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3766, ptr noundef nonnull @.str.1) #21
  br label %32

32:                                               ; preds = %29, %31
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !1032
  %34 = tail call ptr @gimple_build_assign_stat(ptr noundef %8, ptr noundef %33) #21
  br label %36

35:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3770, ptr noundef nonnull @.str.1) #21
  br label %36

36:                                               ; preds = %26, %35, %32, %14
  %37 = phi ptr [ %18, %14 ], [ %28, %26 ], [ %34, %32 ], [ undef, %35 ]
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !1036
  tail call void @register_new_name_mapping(ptr noundef %8, ptr noundef nonnull %1) #21
  ret ptr %37
}

; Function Attrs: optsize
declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @register_new_name_mapping(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %0) unnamed_addr #0 !prof !1771 !PGOFuncName !1772 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %4, label %16, !prof !1773

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  %6 = tail call zeroext i8 @is_gimple_reg(ptr noundef %5) #21
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8, !prof !1774

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1036
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  %14 = add i16 %13, -6
  %15 = icmp ult i16 %14, 7
  br i1 %15, label %55, label %16

16:                                               ; preds = %55, %8, %4, %1
  %17 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !1042
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22, !prof !1775

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !1042
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %48, label %22, !prof !1776

22:                                               ; preds = %19, %16
  %23 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25, !prof !1777

25:                                               ; preds = %22
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %54, !prof !1778

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !1036
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %54 [
    i16 6, label %34
    i16 7, label %34
    i16 8, label %34
    i16 10, label %34
    i16 12, label %34
  ], !prof !1779

34:                                               ; preds = %29, %29, %29, %29, %29
  %35 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !1042
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37, !prof !1780

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40, !prof !1781

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !1036
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %60, label %45, !prof !1782

45:                                               ; preds = %40, %37, %34
  %46 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %54, !prof !1783

48:                                               ; preds = %19
  %49 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %50 = add nsw i32 %49, -1
  %51 = and i32 %50, -5
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i8
  br label %60

54:                                               ; preds = %29, %45, %25, %22
  br label %60

55:                                               ; preds = %8
  %56 = trunc i16 %14 to i8
  %57 = lshr i8 87, %56
  %58 = and i8 %57, 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %16, label %60

60:                                               ; preds = %55, %48, %40, %45, %54
  %61 = phi i8 [ 0, %54 ], [ 1, %45 ], [ 1, %40 ], [ %53, %48 ], [ 1, %55 ]
  ret i8 %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #13 !prof !1784 !PGOFuncName !1785 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @prop_set_simulate_again(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #8 !prof !1786 !PGOFuncName !1787 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0, i8 noundef zeroext %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1788 !PGOFuncName !1789 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !1790 !PGOFuncName !1791 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !1792

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !1036
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #8 !prof !1786 !PGOFuncName !1793 {
  %3 = load i32, ptr %0, align 8
  %4 = and i8 %1, 1
  %5 = zext nneg i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 9
  %7 = and i32 %3, -513
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vrp_visit_assignment_or_call(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !1794 !PGOFuncName !1795 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca %struct.value_range_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %6 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %56, !prof !1796

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1036
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -6
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %26, !prof !1797

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !1036
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !1798

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !1036
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28, !prof !1798

26:                                               ; preds = %10, %22, %18
  %27 = trunc i64 %13 to i16
  switch i16 %27, label %56 [
    i16 10, label %28
    i16 12, label %28
  ], !prof !1799

28:                                               ; preds = %26, %26, %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %29 = icmp eq i32 %5, 8
  br i1 %29, label %30, label %31, !prof !1800

30:                                               ; preds = %28
  call fastcc void @extract_range_basic(ptr noundef nonnull %4, ptr noundef %0) #20
  br label %32

31:                                               ; preds = %28
  call fastcc void @extract_range_from_assignment(ptr noundef nonnull %4, ptr noundef %0) #20
  br label %32

32:                                               ; preds = %31, %30
  %33 = call fastcc zeroext i8 @update_value_range(ptr noundef nonnull %6, ptr noundef nonnull %4) #20, !range !1042
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %54, label %35, !prof !1801

35:                                               ; preds = %32
  store ptr %6, ptr %1, align 8, !tbaa !1032
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38, !prof !1802

38:                                               ; preds = %35
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 20, i64 1, ptr nonnull %36)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_generic_expr(ptr noundef %44, ptr noundef nonnull %6, i32 noundef 0) #21
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %46 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 2, i64 1, ptr %45)
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  call void @dump_value_range(ptr noundef %47, ptr noundef nonnull %4) #20
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %49 = call i64 @fwrite(ptr nonnull @.str.27, i64 2, i64 1, ptr %48)
  br label %50

50:                                               ; preds = %42, %38, %35
  %51 = load i32, ptr %4, align 8, !tbaa !1024
  %52 = icmp eq i32 %51, 3
  %53 = select i1 %52, i32 2, i32 1, !prof !1803
  br label %54

54:                                               ; preds = %32, %50
  %55 = phi i32 [ %53, %50 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  br label %66

56:                                               ; preds = %26, %2
  %57 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 2) #20
  %58 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56, %60
  %61 = phi ptr [ %63, %60 ], [ %57, %56 ]
  %62 = tail call fastcc ptr @get_value_range(ptr noundef %61) #20
  tail call fastcc void @set_value_range_to_varying(ptr noundef %62) #20
  %63 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #20
  %64 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %60, label %66, !llvm.loop !1804

66:                                               ; preds = %60, %56, %54
  %67 = phi i32 [ %55, %54 ], [ 2, %56 ], [ 2, %60 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vrp_visit_cond_stmt(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1805 !PGOFuncName !1806 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store ptr null, ptr %1, align 8, !tbaa !1032
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7, !prof !1807

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %12 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 38, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %15 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 19, i64 1, ptr %14)
  %16 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 1) #20
  %17 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %11, %19
  %20 = phi ptr [ %33, %19 ], [ %16, %11 ]
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %22 = tail call i32 @fputc(i32 9, ptr %21)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_generic_expr(ptr noundef %23, ptr noundef %20, i32 noundef 0) #21
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %25 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 2, i64 1, ptr %24)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %27 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !1036
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !1032
  tail call void @dump_value_range(ptr noundef %26, ptr noundef %32) #20
  %33 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #20
  %34 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %19, label %36, !llvm.loop !1808

36:                                               ; preds = %19, %11
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %38 = tail call i32 @fputc(i32 10, ptr %37)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  br label %39

39:                                               ; preds = %36, %7, %2
  store i8 0, ptr %3, align 1, !tbaa !1036
  %40 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !1337
  %41 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %42 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %43 = call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %40, ptr noundef %41, ptr noundef %42, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef null) #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45, !prof !1809

45:                                               ; preds = %39
  %46 = load i8, ptr %3, align 1, !tbaa !1036
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51, !prof !1810

48:                                               ; preds = %45
  %49 = call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %50 = call ptr @find_taken_edge(ptr noundef %49, ptr noundef nonnull %43) #21
  store ptr %50, ptr %1, align 8, !tbaa !1032
  br label %60

51:                                               ; preds = %45
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54, !prof !1811

54:                                               ; preds = %51
  %55 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i64 @fwrite(ptr nonnull @.str.41, i64 83, i64 1, ptr nonnull %52)
  br label %60

60:                                               ; preds = %54, %58, %48, %39
  %61 = phi ptr [ null, %54 ], [ null, %58 ], [ null, %39 ], [ %43, %48 ]
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64, !prof !1812

64:                                               ; preds = %60
  %65 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = call i64 @fwrite(ptr nonnull @.str.42, i64 25, i64 1, ptr nonnull %62)
  %70 = icmp eq ptr %61, null
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  br i1 %70, label %72, label %74

72:                                               ; preds = %68
  %73 = call i64 @fwrite(ptr nonnull @.str.43, i64 11, i64 1, ptr %71)
  br label %75

74:                                               ; preds = %68
  call void @print_generic_stmt(ptr noundef %71, ptr noundef nonnull %61, i32 noundef 0) #21
  br label %75

75:                                               ; preds = %51, %72, %74, %64, %60
  %76 = load ptr, ptr %1, align 8, !tbaa !1032
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret i32 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @vrp_visit_switch_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !1813 !PGOFuncName !1814 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !tbaa !1183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !tbaa !1183
  store ptr null, ptr %1, align 8, !tbaa !1032
  %5 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %106, !prof !1815

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %5) #20
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13, !prof !1815

13:                                               ; preds = %9
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 41, i64 1, ptr nonnull %11)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_generic_expr(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 0) #21
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %21 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 18, i64 1, ptr %20)
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @dump_value_range(ptr noundef %22, ptr noundef %10) #20
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %24 = tail call i32 @fputc(i32 10, ptr %23)
  br label %25

25:                                               ; preds = %17, %13, %9
  %26 = load i32, ptr %10, align 8, !tbaa !1024
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %106, !prof !1816

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %10) #20, !range !1042
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %106, !prof !1817

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.value_range_d, ptr %10, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !1031
  %34 = getelementptr inbounds %struct.value_range_d, ptr %10, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !1073
  %36 = call fastcc zeroext i8 @find_case_label_range(ptr noundef %0, ptr noundef %33, ptr noundef %35, ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !1042
  %37 = xor i8 %36, 1
  %38 = load i64, ptr %4, align 8, !tbaa !1183
  %39 = load i64, ptr %3, align 8, !tbaa !1183
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %46, !prof !1818

41:                                               ; preds = %31
  %42 = icmp eq i8 %37, 0
  br i1 %42, label %43, label %44, !prof !1819

43:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6035, ptr noundef nonnull @.str.1) #21
  br label %44

44:                                               ; preds = %41, %43
  %45 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef %0) #20
  br label %88

46:                                               ; preds = %31
  %47 = trunc i64 %39 to i32
  %48 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %47) #20
  %49 = icmp eq i8 %37, 0
  br i1 %49, label %66, label %50, !prof !1820

50:                                               ; preds = %46
  %51 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef %0) #20
  %52 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 1, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !1036
  %54 = getelementptr inbounds %struct.tree_exp, ptr %48, i64 1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !1036
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %66, label %57, !prof !1821

57:                                               ; preds = %50
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %59 = icmp eq ptr %58, null
  br i1 %59, label %106, label %60, !prof !1822

60:                                               ; preds = %57
  %61 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %106, label %64

64:                                               ; preds = %60
  %65 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 42, i64 1, ptr nonnull %58)
  br label %106

66:                                               ; preds = %50, %46
  br label %67

67:                                               ; preds = %71, %66
  %68 = phi i64 [ %69, %71 ], [ %39, %66 ]
  %69 = add i64 %68, 1
  %70 = icmp ugt i64 %69, %38
  br i1 %70, label %88, label %71, !prof !1823

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_exp, ptr %48, i64 1, i32 0, i32 1
  %73 = trunc i64 %69 to i32
  %74 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %73) #20
  %75 = getelementptr inbounds %struct.tree_exp, ptr %74, i64 1, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !1036
  %77 = load ptr, ptr %72, align 8, !tbaa !1036
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %67, label %79, !prof !1824, !llvm.loop !1825

79:                                               ; preds = %71
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %81 = icmp eq ptr %80, null
  br i1 %81, label %106, label %82, !prof !1826

82:                                               ; preds = %79
  %83 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %84 = and i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %82
  %87 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 42, i64 1, ptr nonnull %80)
  br label %106

88:                                               ; preds = %67, %44
  %89 = phi ptr [ %45, %44 ], [ %48, %67 ]
  %90 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %91 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %92 = getelementptr inbounds %struct.tree_exp, ptr %89, i64 1, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !1036
  %94 = tail call ptr @label_to_block_fn(ptr noundef %91, ptr noundef %93) #21
  %95 = tail call ptr @find_edge(ptr noundef %90, ptr noundef %94) #21
  store ptr %95, ptr %1, align 8, !tbaa !1032
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %97 = icmp eq ptr %96, null
  br i1 %97, label %106, label %98, !prof !1827

98:                                               ; preds = %88
  %99 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 20, i64 1, ptr nonnull %96)
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %105 = load ptr, ptr %92, align 8, !tbaa !1036
  tail call void @print_generic_stmt(ptr noundef %104, ptr noundef %105, i32 noundef 0) #21
  br label %106

106:                                              ; preds = %88, %98, %102, %79, %82, %86, %57, %60, %64, %25, %28, %2
  %107 = phi i32 [ 2, %2 ], [ 2, %28 ], [ 2, %25 ], [ 2, %64 ], [ 2, %60 ], [ 2, %57 ], [ 2, %86 ], [ 2, %82 ], [ 2, %79 ], [ 1, %102 ], [ 1, %98 ], [ 1, %88 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %107
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_basic(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1828 !PGOFuncName !1829 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store i8 0, ptr %3, align 1, !tbaa !1036
  %4 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -6
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %20, !prof !1830

10:                                               ; preds = %2
  %11 = call fastcc zeroext i8 @gimple_stmt_nonnegative_warnv_p(ptr noundef %1, ptr noundef nonnull %3) #20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13, !prof !1831

13:                                               ; preds = %10
  %14 = load i8, ptr %3, align 1, !tbaa !1036
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18, !prof !1832

16:                                               ; preds = %13
  %17 = call fastcc zeroext i8 @stmt_overflow_infinity(ptr noundef %1) #20, !range !1042
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i8 [ 1, %13 ], [ %17, %16 ]
  call fastcc void @set_value_range_to_nonnegative(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %19) #20
  br label %28

20:                                               ; preds = %2, %10
  %21 = call fastcc zeroext i8 @vrp_stmt_computes_nonzero(ptr noundef %1, ptr noundef nonnull %3) #20, !range !1042
  %22 = icmp eq i8 %21, 0
  %23 = load i8, ptr %3, align 1
  %24 = icmp ne i8 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %27, label %26, !prof !1833

26:                                               ; preds = %20
  call fastcc void @set_value_range_to_nonnull(ptr noundef %0, ptr noundef nonnull %4) #20
  br label %28

27:                                               ; preds = %20
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %28

28:                                               ; preds = %26, %27, %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_assignment(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1834 !PGOFuncName !1835 {
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !1337
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %9 [
    i16 148, label %5
    i16 141, label %7
  ], !prof !1836

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_assert(ptr noundef %0, ptr noundef %6) #20
  br label %49

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_ssa_name(ptr noundef %0, ptr noundef %8) #20
  br label %49

9:                                                ; preds = %2
  %10 = zext nneg i32 %3 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !1130
  %13 = icmp eq i32 %12, 7
  %14 = add nsw i32 %3, -93
  %15 = icmp ult i32 %14, 3
  %16 = or i1 %15, %13
  br i1 %16, label %17, label %22, !prof !1837

17:                                               ; preds = %9
  %18 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !1337
  %19 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %20 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %21 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_binary_expr(ptr noundef %0, i32 noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21) #20
  br label %49

22:                                               ; preds = %9
  %23 = icmp eq i32 %12, 6
  br i1 %23, label %24, label %28, !prof !1838

24:                                               ; preds = %22
  %25 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !1337
  %26 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %27 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_unary_expr(ptr noundef %0, i32 noundef %25, ptr noundef %26, ptr noundef %27) #20
  br label %49

28:                                               ; preds = %22
  %29 = icmp eq i32 %3, 56
  br i1 %29, label %30, label %32, !prof !1839

30:                                               ; preds = %28
  %31 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_cond_expr(ptr noundef %0, ptr noundef %31) #20
  br label %49

32:                                               ; preds = %28
  %33 = icmp eq i32 %12, 5
  br i1 %33, label %34, label %39, !prof !1840

34:                                               ; preds = %32
  %35 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !1337
  %36 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %38 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_comparison(ptr noundef %0, i32 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38) #20
  br label %49

39:                                               ; preds = %32
  %40 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %3) #20, !range !1281
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %48, !prof !1841

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %44 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %43) #21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46, !prof !1842

46:                                               ; preds = %42
  %47 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  tail call fastcc void @set_value_range_to_value(ptr noundef %0, ptr noundef %47, ptr noundef null) #20
  br label %49

48:                                               ; preds = %42, %39
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %49

49:                                               ; preds = %7, %24, %34, %48, %46, %30, %17, %5
  %50 = load i32, ptr %0, align 8, !tbaa !1024
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %53, !prof !1843

52:                                               ; preds = %49
  tail call fastcc void @extract_range_basic(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %53

53:                                               ; preds = %52, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @update_value_range(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1844 !PGOFuncName !1845 {
  %3 = tail call fastcc ptr @get_value_range(ptr noundef %0) #20
  %4 = load i32, ptr %3, align 8, !tbaa !1024
  %5 = load i32, ptr %1, align 8, !tbaa !1024
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %28, !prof !1846

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1031
  %10 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1031
  %12 = tail call fastcc zeroext i8 @vrp_operand_equal_p(ptr noundef %9, ptr noundef %11) #20, !range !1042
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %28, label %14, !prof !1847

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1073
  %17 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !1073
  %19 = tail call fastcc zeroext i8 @vrp_operand_equal_p(ptr noundef %16, ptr noundef %18) #20, !range !1042
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21, !prof !1848

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !1038
  %24 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !1038
  %26 = tail call fastcc zeroext i8 @vrp_bitmap_equal_p(ptr noundef %23, ptr noundef %25) #20, !range !1042
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %36, !prof !1849

28:                                               ; preds = %2, %7, %14, %21
  %29 = load i32, ptr %1, align 8, !tbaa !1024
  %30 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !1031
  %32 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !1073
  %34 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %3, i32 noundef %29, ptr noundef %31, ptr noundef %33, ptr noundef %35) #20
  br label %36

36:                                               ; preds = %28, %21
  %37 = phi i8 [ 1, %28 ], [ 0, %21 ]
  %38 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !1038
  tail call void @bitmap_obstack_free(ptr noundef %39) #21
  store ptr null, ptr %38, align 8, !tbaa !1038
  ret i8 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_stmt_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1850 !PGOFuncName !1851 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %9 [
    i8 6, label %5
    i8 8, label %7
  ], !prof !1852

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @gimple_assign_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) #20
  br label %10

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @gimple_call_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) #20
  br label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 894, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %9, %7, %5
  %11 = phi i8 [ 0, %9 ], [ %8, %7 ], [ %6, %5 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_nonnegative(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1853 !PGOFuncName !1854 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %12, label %5, !prof !1832

5:                                                ; preds = %3
  %6 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %1) #20, !range !1042
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !1855

8:                                                ; preds = %5
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %21

9:                                                ; preds = %5
  %10 = tail call ptr @build_int_cst(ptr noundef %1, i64 noundef 0) #21
  %11 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef %1) #20
  br label %16

12:                                               ; preds = %3
  %13 = tail call ptr @build_int_cst(ptr noundef %1, i64 noundef 0) #21
  %14 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !1036
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi ptr [ %10, %9 ], [ %13, %12 ]
  %18 = phi ptr [ %11, %9 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %17, ptr noundef %18, ptr noundef %20) #20
  br label %21

21:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !1856 !PGOFuncName !1857 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !1042
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %11, label %4, !prof !1858

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1337
  %6 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %5) #20, !range !1281
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %11, !prof !1859

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %10 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %9) #20, !range !1042
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi i8 [ %10, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vrp_stmt_computes_nonzero(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1860 !PGOFuncName !1861 {
  %3 = tail call fastcc zeroext i8 @gimple_stmt_nonzero_warnv_p(ptr noundef %0, ptr noundef %1) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %32, !prof !1862

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !1042
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8, !prof !1863

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1337
  %10 = icmp eq i32 %9, 121
  br i1 %10, label %11, label %32, !prof !1864

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %13 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !1036
  %15 = tail call ptr @get_base_address(ptr noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17, !prof !1865

17:                                               ; preds = %11
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 47
  br i1 %20, label %21, label %31, !prof !1866

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !1036
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %26, label %27, label %31, !prof !1866

27:                                               ; preds = %21
  %28 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %23) #20
  %29 = tail call fastcc zeroext i8 @range_is_nonnull(ptr noundef %28) #20, !range !1042
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %11, %17, %21, %27
  br label %32

32:                                               ; preds = %5, %8, %31, %27, %2
  %33 = phi i8 [ 1, %2 ], [ 1, %27 ], [ 0, %31 ], [ 0, %8 ], [ 0, %5 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1867 !PGOFuncName !1868 {
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1337
  %4 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %3) #20, !range !1281
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %21 [
    i8 2, label %6
    i8 1, label %11
    i8 3, label %17
    i8 0, label %20
  ], !prof !1869

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1337
  %8 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %10 = tail call zeroext i8 @tree_unary_nonnegative_warnv_p(i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %1) #21
  br label %22

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1337
  %13 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %14 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %15 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %16 = tail call zeroext i8 @tree_binary_nonnegative_warnv_p(i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %1) #21
  br label %22

17:                                               ; preds = %2
  %18 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %19 = tail call zeroext i8 @tree_single_nonnegative_warnv_p(ptr noundef %18, ptr noundef %1) #21
  br label %22

20:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 850, ptr noundef nonnull @.str.1) #21
  br label %21

21:                                               ; preds = %2, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 852, ptr noundef nonnull @.str.1) #21
  br label %22

22:                                               ; preds = %21, %17, %11, %6
  %23 = phi i8 [ 0, %21 ], [ %19, %17 ], [ %16, %11 ], [ %10, %6 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_call_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1870 !PGOFuncName !1871 {
  %3 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !1872

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %13, !prof !1873

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #20
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ null, %7 ]
  %15 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %16 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %17 = tail call zeroext i8 @tree_call_nonnegative_warnv_p(ptr noundef %15, ptr noundef %16, ptr noundef %8, ptr noundef %14, ptr noundef %1) #21
  ret i8 %17
}

; Function Attrs: optsize
declare zeroext i8 @tree_unary_nonnegative_warnv_p(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_binary_nonnegative_warnv_p(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_single_nonnegative_warnv_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1874 !PGOFuncName !1875 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1876 !PGOFuncName !1877 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @tree_call_nonnegative_warnv_p(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @supports_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1878 !PGOFuncName !1879 {
  %2 = tail call fastcc ptr @vrp_val_min(ptr noundef %0) #20
  %3 = tail call fastcc ptr @vrp_val_max(ptr noundef %0) #20
  %4 = icmp eq ptr %2, null
  br i1 %4, label %20, label %5, !prof !1880

5:                                                ; preds = %1
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !1130
  %10 = icmp eq i32 %9, 1
  %11 = icmp ne ptr %3, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %20, !prof !1881

13:                                               ; preds = %5
  %14 = load i64, ptr %3, align 8
  %15 = and i64 %14, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !1130
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %13, %5, %1
  %21 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %19, %13 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @positive_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1882 !PGOFuncName !1883 {
  %2 = tail call fastcc ptr @vrp_val_max(ptr noundef %0) #20
  %3 = tail call fastcc ptr @make_overflow_infinity(ptr noundef %2) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !1884 !PGOFuncName !1885 {
  %2 = tail call ptr @copy_node_stat(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = or i64 %3, 134217728
  store i64 %4, ptr %2, align 8
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !1886 !PGOFuncName !1887 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1036
  %4 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %3) #20, !range !1042
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6, !prof !1888

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !1130
  %11 = icmp ne i32 %10, 1
  %12 = and i64 %7, 134217728
  %13 = icmp eq i64 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %20, label %15, !prof !1889

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %0) #20, !range !1042
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20, !prof !1890

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %0) #20, !range !1042
  br label %20

20:                                               ; preds = %15, %18, %6, %1
  %21 = phi i8 [ 0, %6 ], [ 0, %1 ], [ 1, %15 ], [ %19, %18 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_stmt_nonzero_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1860 !PGOFuncName !1891 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %9 [
    i8 6, label %5
    i8 8, label %7
  ], !prof !1892

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @gimple_assign_nonzero_warnv_p(ptr noundef %0, ptr noundef %1) #20
  br label %10

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @gimple_alloca_call_p(ptr noundef %0) #21
  br label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 951, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %9, %7, %5
  %11 = phi i8 [ 0, %9 ], [ %8, %7 ], [ %6, %5 ]
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @range_is_nonnull(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1893 !PGOFuncName !1894 {
  %2 = load i32, ptr %0, align 8, !tbaa !1024
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %15, !prof !1895

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1031
  %7 = tail call i32 @integer_zerop(ptr noundef %6) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !prof !1896

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1073
  %12 = tail call i32 @integer_zerop(ptr noundef %11) #21
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %9, %4, %1
  %16 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %14, %9 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_nonzero_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1897 !PGOFuncName !1898 {
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1337
  %4 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %3) #20, !range !1281
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %21 [
    i8 2, label %6
    i8 1, label %11
    i8 3, label %17
    i8 0, label %20
  ], !prof !1899

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1337
  %8 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %10 = tail call zeroext i8 @tree_unary_nonzero_warnv_p(i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %1) #21
  br label %22

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1337
  %13 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %14 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %15 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %16 = tail call zeroext i8 @tree_binary_nonzero_warnv_p(i32 noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %1) #21
  br label %22

17:                                               ; preds = %2
  %18 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %19 = tail call zeroext i8 @tree_single_nonzero_warnv_p(ptr noundef %18, ptr noundef %1) #21
  br label %22

20:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 927, ptr noundef nonnull @.str.1) #21
  br label %21

21:                                               ; preds = %2, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 929, ptr noundef nonnull @.str.1) #21
  br label %22

22:                                               ; preds = %21, %17, %11, %6
  %23 = phi i8 [ 0, %21 ], [ %19, %17 ], [ %16, %11 ], [ %10, %6 ]
  ret i8 %23
}

; Function Attrs: optsize
declare zeroext i8 @gimple_alloca_call_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_unary_nonzero_warnv_p(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_binary_nonzero_warnv_p(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_single_nonzero_warnv_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_assert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1900 !PGOFuncName !1901 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1036
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1036
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !1130
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %13, label %12, !prof !1902

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1410, ptr noundef nonnull @.str.1) #21
  br label %13

13:                                               ; preds = %2, %12
  %14 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !1036
  %16 = icmp eq ptr %4, %15
  br i1 %16, label %20, label %17, !prof !1903

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %25 [
    i16 63, label %20
    i16 116, label %20
  ], !prof !1904

20:                                               ; preds = %17, %17, %13
  %21 = load i64, ptr %6, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 65535
  %24 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  br label %32

25:                                               ; preds = %17
  %26 = load i64, ptr %6, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 65535
  %29 = tail call i32 @swap_tree_comparison(i32 noundef %28) #21
  %30 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !1036
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi ptr [ %15, %20 ], [ %31, %25 ]
  %34 = phi i32 [ %23, %20 ], [ %29, %25 ]
  %35 = phi ptr [ %24, %20 ], [ %14, %25 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !1036
  %37 = tail call fastcc ptr @avoid_overflow_infinity(ptr noundef %36) #20
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !1036
  %40 = icmp eq ptr %37, %4
  br i1 %40, label %41, label %42, !prof !1905

41:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1436, ptr noundef nonnull @.str.1) #21
  br label %42

42:                                               ; preds = %32, %41
  %43 = load i64, ptr %39, align 8
  %44 = trunc i64 %43 to i16
  switch i16 %44, label %49 [
    i16 10, label %45
    i16 12, label %45
  ], !prof !1906

45:                                               ; preds = %42, %42
  %46 = add i32 %34, -103
  %47 = icmp ult i32 %46, -2
  br i1 %47, label %48, label %49, !prof !1907

48:                                               ; preds = %45
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %422

49:                                               ; preds = %42, %45
  %50 = load i64, ptr %37, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %53, label %62, !prof !1908

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %37) #20
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56, !prof !1482

56:                                               ; preds = %53
  %57 = load i32, ptr %54, align 8, !tbaa !1024
  switch i32 %57, label %58 [
    i32 0, label %61
    i32 3, label %61
  ], !prof !1909

58:                                               ; preds = %56
  %59 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %54) #20, !range !1042
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61, !prof !1910

61:                                               ; preds = %56, %56, %58
  br label %62

62:                                               ; preds = %49, %61, %58, %53
  %63 = phi ptr [ null, %61 ], [ %54, %58 ], [ null, %53 ], [ null, %49 ]
  %64 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !1038
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67, !prof !1911

67:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1463, ptr noundef nonnull @.str.1) #21
  br label %68

68:                                               ; preds = %62, %67
  tail call fastcc void @add_equivalence(ptr noundef nonnull %64, ptr noundef %4) #20
  %69 = load i64, ptr %33, align 8
  %70 = trunc i64 %69 to i16
  switch i16 %70, label %106 [
    i16 116, label %71
    i16 63, label %71
  ], !prof !1912

71:                                               ; preds = %68, %68
  %72 = and i64 %69, 65535
  %73 = icmp eq i64 %72, 63
  br i1 %73, label %74, label %81, !prof !1913

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.tree_exp, ptr %33, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !1036
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !1036
  %79 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %78, ptr noundef %76) #21
  %80 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef nonnull %37, ptr noundef %79, i32 noundef 0) #21
  br label %85

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !1036
  %84 = tail call ptr @build_int_cst(ptr noundef %83, i64 noundef 0) #21
  br label %85

85:                                               ; preds = %81, %74
  %86 = phi ptr [ %80, %74 ], [ %37, %81 ]
  %87 = phi ptr [ %79, %74 ], [ %84, %81 ]
  %88 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !1036
  %90 = getelementptr inbounds %struct.tree_int_cst, ptr %87, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !1036
  %92 = getelementptr inbounds %struct.tree_int_cst, ptr %87, i64 0, i32 1, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !1036
  %94 = tail call ptr @force_fit_type_double(ptr noundef %89, i64 noundef %91, i64 noundef %93, i32 noundef 0, i8 noundef zeroext 0) #21
  %95 = load ptr, ptr %88, align 8, !tbaa !1036
  %96 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !1036
  %98 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !1036
  %100 = tail call ptr @force_fit_type_double(ptr noundef %95, i64 noundef %97, i64 noundef %99, i32 noundef 0, i8 noundef zeroext 0) #21
  switch i32 %34, label %105 [
    i32 98, label %101
    i32 99, label %103
  ], !prof !1914

101:                                              ; preds = %85
  %102 = load ptr, ptr %64, align 8, !tbaa !1038
  tail call fastcc void @set_and_canonicalize_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %94, ptr noundef %100, ptr noundef %102) #20
  br label %247

103:                                              ; preds = %85
  %104 = load ptr, ptr %64, align 8, !tbaa !1038
  tail call fastcc void @set_and_canonicalize_value_range(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %94, ptr noundef %100, ptr noundef %104) #20
  br label %247

105:                                              ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1511, ptr noundef nonnull @.str.1) #21
  br label %247

106:                                              ; preds = %68
  switch i32 %34, label %158 [
    i32 101, label %107
    i32 102, label %124
  ], !prof !1915

107:                                              ; preds = %106
  %108 = icmp eq ptr %63, null
  br i1 %108, label %115, label %109, !prof !1916

109:                                              ; preds = %107
  %110 = load i32, ptr %63, align 8, !tbaa !1024
  %111 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !1031
  %113 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !1073
  br label %115

115:                                              ; preds = %107, %109
  %116 = phi ptr [ %114, %109 ], [ %37, %107 ]
  %117 = phi ptr [ %112, %109 ], [ %37, %107 ]
  %118 = phi i32 [ %110, %109 ], [ 1, %107 ]
  %119 = load ptr, ptr %64, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef %118, ptr noundef %117, ptr noundef %116, ptr noundef %119) #20
  %120 = load i64, ptr %37, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 141
  br i1 %122, label %123, label %247, !prof !1917

123:                                              ; preds = %115
  tail call fastcc void @add_equivalence(ptr noundef nonnull %64, ptr noundef nonnull %37) #20
  br label %247

124:                                              ; preds = %106
  %125 = icmp eq ptr %63, null
  br i1 %125, label %139, label %126, !prof !1918

126:                                              ; preds = %124
  %127 = load i32, ptr %63, align 8, !tbaa !1024
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %139, !prof !1919

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !1031
  %132 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !1073
  %134 = tail call fastcc i32 @compare_values(ptr noundef %131, ptr noundef %133) #20
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139, !prof !1920

136:                                              ; preds = %129
  %137 = load ptr, ptr %130, align 8, !tbaa !1031
  %138 = load ptr, ptr %132, align 8, !tbaa !1073
  br label %139

139:                                              ; preds = %124, %126, %129, %136
  %140 = phi ptr [ %138, %136 ], [ %37, %129 ], [ %37, %126 ], [ %37, %124 ]
  %141 = phi ptr [ %137, %136 ], [ %37, %129 ], [ %37, %126 ], [ %37, %124 ]
  %142 = load i64, ptr %39, align 8
  %143 = trunc i64 %142 to i32
  %144 = and i32 %143, 65535
  %145 = add nsw i32 %144, -6
  %146 = icmp ult i32 %145, 3
  br i1 %146, label %147, label %154, !prof !1921

147:                                              ; preds = %139
  %148 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %141) #20, !range !1042
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %154, label %150, !prof !1922

150:                                              ; preds = %147
  %151 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %140) #20, !range !1042
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %154, label %153, !prof !1923

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %139, %153, %150, %147
  %155 = phi ptr [ %37, %153 ], [ %140, %150 ], [ %140, %147 ], [ %140, %139 ]
  %156 = phi ptr [ %37, %153 ], [ %141, %150 ], [ %141, %147 ], [ %141, %139 ]
  %157 = load ptr, ptr %64, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %156, ptr noundef %155, ptr noundef %157) #20
  br label %247

158:                                              ; preds = %106
  %159 = icmp eq i32 %34, 97
  %160 = add i32 %34, -97
  %161 = icmp ult i32 %160, 2
  br i1 %161, label %162, label %202, !prof !1924

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 13
  %164 = load ptr, ptr %163, align 8, !tbaa !1036
  %165 = icmp eq ptr %63, null
  br i1 %165, label %172, label %166, !prof !1925

166:                                              ; preds = %162
  %167 = load i32, ptr %63, align 8, !tbaa !1024
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %172, label %169, !prof !1926

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !1073
  br label %172

172:                                              ; preds = %162, %166, %169
  %173 = phi ptr [ %171, %169 ], [ %37, %166 ], [ %37, %162 ]
  br i1 %159, label %174, label %177, !prof !1927

174:                                              ; preds = %172
  %175 = tail call fastcc i32 @compare_values(ptr noundef %173, ptr noundef %164) #20
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %186, label %177, !prof !1928

177:                                              ; preds = %174, %172
  %178 = load i64, ptr %173, align 8
  %179 = and i64 %178, 65535
  %180 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !1130
  %182 = icmp ne i32 %181, 1
  %183 = and i64 %178, 134217728
  %184 = icmp eq i64 %183, 0
  %185 = or i1 %182, %184
  br i1 %185, label %187, label %186, !prof !1929

186:                                              ; preds = %177, %174
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %247

187:                                              ; preds = %177
  br i1 %159, label %188, label %199, !prof !1930

188:                                              ; preds = %187
  %189 = tail call ptr @build_int_cst(ptr noundef nonnull %39, i64 noundef 1) #21
  %190 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %39, ptr noundef nonnull %173, ptr noundef %189) #21
  %191 = load i64, ptr %190, align 8
  %192 = and i64 %191, 65535
  %193 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !1130
  %195 = add i32 %194, -4
  %196 = icmp ult i32 %195, 7
  br i1 %196, label %197, label %199, !prof !1931

197:                                              ; preds = %188
  %198 = or i64 %191, 8388608
  store i64 %198, ptr %190, align 8
  br label %199

199:                                              ; preds = %188, %197, %187
  %200 = phi ptr [ %173, %187 ], [ %190, %197 ], [ %190, %188 ]
  %201 = load ptr, ptr %64, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %164, ptr noundef nonnull %200, ptr noundef %201) #20
  br label %247

202:                                              ; preds = %158
  %203 = icmp eq i32 %34, 99
  %204 = add i32 %34, -99
  %205 = icmp ult i32 %204, 2
  br i1 %205, label %206, label %246, !prof !1932

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 14
  %208 = load ptr, ptr %207, align 8, !tbaa !1036
  %209 = icmp eq ptr %63, null
  br i1 %209, label %216, label %210, !prof !1933

210:                                              ; preds = %206
  %211 = load i32, ptr %63, align 8, !tbaa !1024
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %216, label %213, !prof !1934

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !1031
  br label %216

216:                                              ; preds = %206, %210, %213
  %217 = phi ptr [ %215, %213 ], [ %37, %210 ], [ %37, %206 ]
  br i1 %203, label %218, label %221, !prof !1935

218:                                              ; preds = %216
  %219 = tail call fastcc i32 @compare_values(ptr noundef %217, ptr noundef %208) #20
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %230, label %221, !prof !1936

221:                                              ; preds = %218, %216
  %222 = load i64, ptr %217, align 8
  %223 = and i64 %222, 65535
  %224 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !1130
  %226 = icmp ne i32 %225, 1
  %227 = and i64 %222, 134217728
  %228 = icmp eq i64 %227, 0
  %229 = or i1 %226, %228
  br i1 %229, label %231, label %230, !prof !1937

230:                                              ; preds = %221, %218
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %247

231:                                              ; preds = %221
  br i1 %203, label %232, label %243, !prof !1938

232:                                              ; preds = %231
  %233 = tail call ptr @build_int_cst(ptr noundef nonnull %39, i64 noundef 1) #21
  %234 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %39, ptr noundef nonnull %217, ptr noundef %233) #21
  %235 = load i64, ptr %234, align 8
  %236 = and i64 %235, 65535
  %237 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !1130
  %239 = add i32 %238, -4
  %240 = icmp ult i32 %239, 7
  br i1 %240, label %241, label %243, !prof !1939

241:                                              ; preds = %232
  %242 = or i64 %235, 8388608
  store i64 %242, ptr %234, align 8
  br label %243

243:                                              ; preds = %232, %241, %231
  %244 = phi ptr [ %217, %231 ], [ %234, %241 ], [ %234, %232 ]
  %245 = load ptr, ptr %64, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %244, ptr noundef %208, ptr noundef %245) #20
  br label %247

246:                                              ; preds = %202
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1654, ptr noundef nonnull @.str.1) #21
  br label %247

247:                                              ; preds = %115, %123, %199, %186, %230, %243, %246, %154, %101, %105, %103
  %248 = tail call fastcc ptr @get_value_range(ptr noundef %4) #20
  %249 = load i32, ptr %0, align 8, !tbaa !1024
  switch i32 %249, label %250 [
    i32 3, label %422
    i32 0, label %422
  ], !prof !1940

250:                                              ; preds = %247
  %251 = load i32, ptr %248, align 8, !tbaa !1024
  switch i32 %251, label %252 [
    i32 3, label %422
    i32 0, label %422
  ], !prof !1941

252:                                              ; preds = %250
  %253 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !1042
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %422, !prof !1942

255:                                              ; preds = %252
  %256 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %248) #20, !range !1042
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %258, label %422, !prof !1943

258:                                              ; preds = %255
  %259 = load i32, ptr %248, align 8, !tbaa !1024
  switch i32 %259, label %422 [
    i32 1, label %260
    i32 2, label %285
  ], !prof !1944

260:                                              ; preds = %258
  %261 = load i32, ptr %0, align 8, !tbaa !1024
  switch i32 %261, label %422 [
    i32 1, label %262
    i32 2, label %288
  ], !prof !1945

262:                                              ; preds = %260
  %263 = tail call fastcc zeroext i8 @value_ranges_intersect_p(ptr noundef nonnull %248, ptr noundef nonnull %0) #20, !range !1042
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %284, label %265, !prof !1946

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !1031
  %268 = getelementptr inbounds %struct.value_range_d, ptr %248, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !1031
  %270 = tail call fastcc i32 @compare_values(ptr noundef %267, ptr noundef %269) #20
  %271 = icmp eq i32 %270, -1
  %272 = select i1 %271, ptr %268, ptr %266, !prof !1947
  %273 = load ptr, ptr %272, align 8, !tbaa !1031
  %274 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !1073
  %276 = getelementptr inbounds %struct.value_range_d, ptr %248, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !1073
  %278 = tail call fastcc i32 @compare_values(ptr noundef %275, ptr noundef %277) #20
  %279 = icmp eq i32 %278, 1
  %280 = select i1 %279, ptr %276, ptr %274, !prof !1948
  %281 = load ptr, ptr %280, align 8, !tbaa !1073
  %282 = load i32, ptr %0, align 8, !tbaa !1024
  %283 = load ptr, ptr %64, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef %282, ptr noundef %273, ptr noundef %281, ptr noundef %283) #20
  br label %422

284:                                              ; preds = %262
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %422

285:                                              ; preds = %258
  %286 = load i32, ptr %0, align 8, !tbaa !1024
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %422, !prof !1949

288:                                              ; preds = %260, %285
  %289 = getelementptr inbounds %struct.value_range_d, ptr %248, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !1031
  %291 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !1031
  %293 = tail call fastcc i32 @compare_values(ptr noundef %290, ptr noundef %292) #20
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %303, !prof !1950

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.value_range_d, ptr %248, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !1073
  %298 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !1073
  %300 = tail call fastcc i32 @compare_values(ptr noundef %297, ptr noundef %299) #20
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %303, !prof !1951

302:                                              ; preds = %295
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %422

303:                                              ; preds = %295, %288
  %304 = load i32, ptr %0, align 8, !tbaa !1024
  %305 = icmp eq i32 %304, 2
  %306 = select i1 %305, ptr %291, ptr %289, !prof !1952
  %307 = select i1 %305, ptr %0, ptr %248, !prof !1952
  %308 = select i1 %305, ptr %289, ptr %291, !prof !1952
  %309 = select i1 %305, ptr %248, ptr %0, !prof !1952
  %310 = getelementptr inbounds %struct.value_range_d, ptr %309, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !1073
  %312 = load ptr, ptr %308, align 8, !tbaa !1031
  %313 = getelementptr inbounds %struct.value_range_d, ptr %307, i64 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !1073
  %315 = load ptr, ptr %306, align 8, !tbaa !1031
  %316 = tail call fastcc i32 @compare_values(ptr noundef %314, ptr noundef %311) #20
  %317 = icmp eq i32 %316, -1
  br i1 %317, label %318, label %329, !prof !1953

318:                                              ; preds = %303
  %319 = tail call fastcc i32 @compare_values(ptr noundef %315, ptr noundef %312) #20
  %320 = icmp eq i32 %319, 1
  br i1 %320, label %321, label %329, !prof !1954

321:                                              ; preds = %318
  %322 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %312) #20, !range !1042
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %327, label %324, !prof !1955

324:                                              ; preds = %321
  %325 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %311) #20, !range !1042
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %327, label %422, !prof !1956

327:                                              ; preds = %324, %321
  %328 = load ptr, ptr %64, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %312, ptr noundef %311, ptr noundef %328) #20
  br label %422

329:                                              ; preds = %318, %303
  %330 = tail call fastcc i32 @compare_values(ptr noundef %315, ptr noundef %311) #20
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %335, label %332, !prof !1957

332:                                              ; preds = %329
  %333 = tail call fastcc i32 @compare_values(ptr noundef %314, ptr noundef %312) #20
  %334 = icmp eq i32 %333, -1
  br i1 %334, label %335, label %337, !prof !1958

335:                                              ; preds = %332, %329
  %336 = load ptr, ptr %64, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %312, ptr noundef %311, ptr noundef %336) #20
  br label %422

337:                                              ; preds = %332
  %338 = tail call fastcc i32 @compare_values(ptr noundef %314, ptr noundef %312) #20
  %339 = icmp ult i32 %338, 2
  br i1 %339, label %340, label %379, !prof !1959

340:                                              ; preds = %337
  %341 = tail call fastcc i32 @compare_values(ptr noundef %314, ptr noundef %311) #20
  %342 = icmp eq i32 %341, -1
  br i1 %342, label %343, label %379, !prof !1960

343:                                              ; preds = %340
  %344 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %314) #20, !range !1042
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %347, label %346, !prof !1961

346:                                              ; preds = %343
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1819, ptr noundef nonnull @.str.1) #21
  br label %347

347:                                              ; preds = %343, %346
  %348 = getelementptr inbounds %struct.tree_common, ptr %314, i64 0, i32 2
  %349 = load ptr, ptr %348, align 8, !tbaa !1036
  %350 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %349) #20, !range !1042
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %364, label %352, !prof !1962

352:                                              ; preds = %347
  %353 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %314) #20, !range !1042
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %364, label %355, !prof !1963

355:                                              ; preds = %352
  %356 = load ptr, ptr %289, align 8, !tbaa !1031
  %357 = getelementptr inbounds %struct.tree_common, ptr %356, i64 0, i32 2
  %358 = load ptr, ptr %357, align 8, !tbaa !1036
  %359 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %358) #20, !range !1042
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %355
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %422

362:                                              ; preds = %355
  %363 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef %358) #20
  br label %376

364:                                              ; preds = %352, %347
  %365 = load ptr, ptr %289, align 8, !tbaa !1031
  %366 = getelementptr inbounds %struct.tree_common, ptr %365, i64 0, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !1036
  %368 = load i64, ptr %367, align 8
  %369 = trunc i64 %368 to i16
  switch i16 %369, label %370 [
    i16 10, label %373
    i16 12, label %373
  ], !prof !1964

370:                                              ; preds = %364
  %371 = tail call ptr @build_int_cst(ptr noundef nonnull %367, i64 noundef 1) #21
  %372 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %367, ptr noundef nonnull %314, ptr noundef %371) #21
  br label %376

373:                                              ; preds = %364, %364
  %374 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 0) #21
  %375 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %367, ptr noundef nonnull %314, ptr noundef %374) #21
  br label %376

376:                                              ; preds = %370, %373, %362
  %377 = phi ptr [ %363, %362 ], [ %375, %373 ], [ %372, %370 ]
  %378 = load ptr, ptr %64, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %377, ptr noundef %311, ptr noundef %378) #20
  br label %422

379:                                              ; preds = %337, %340
  %380 = tail call fastcc i32 @compare_values(ptr noundef %315, ptr noundef %312) #20
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %382, label %422, !prof !1965

382:                                              ; preds = %379
  %383 = tail call fastcc i32 @compare_values(ptr noundef %315, ptr noundef %311) #20
  %384 = add i32 %383, 1
  %385 = icmp ult i32 %384, 2
  br i1 %385, label %386, label %422, !prof !1966

386:                                              ; preds = %382
  %387 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %315) #20, !range !1042
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %390, label %389, !prof !1965

389:                                              ; preds = %386
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1847, ptr noundef nonnull @.str.1) #21
  br label %390

390:                                              ; preds = %386, %389
  %391 = getelementptr inbounds %struct.tree_common, ptr %315, i64 0, i32 2
  %392 = load ptr, ptr %391, align 8, !tbaa !1036
  %393 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %392) #20, !range !1042
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %407, label %395, !prof !1967

395:                                              ; preds = %390
  %396 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %315) #20, !range !1042
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %407, label %398, !prof !1968

398:                                              ; preds = %395
  %399 = load ptr, ptr %289, align 8, !tbaa !1031
  %400 = getelementptr inbounds %struct.tree_common, ptr %399, i64 0, i32 2
  %401 = load ptr, ptr %400, align 8, !tbaa !1036
  %402 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %401) #20, !range !1042
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %398
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %422

405:                                              ; preds = %398
  %406 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef %401) #20
  br label %419

407:                                              ; preds = %395, %390
  %408 = load ptr, ptr %289, align 8, !tbaa !1031
  %409 = getelementptr inbounds %struct.tree_common, ptr %408, i64 0, i32 2
  %410 = load ptr, ptr %409, align 8, !tbaa !1036
  %411 = load i64, ptr %410, align 8
  %412 = trunc i64 %411 to i16
  switch i16 %412, label %413 [
    i16 10, label %416
    i16 12, label %416
  ], !prof !1969

413:                                              ; preds = %407
  %414 = tail call ptr @build_int_cst(ptr noundef nonnull %410, i64 noundef 1) #21
  %415 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %410, ptr noundef nonnull %315, ptr noundef %414) #21
  br label %419

416:                                              ; preds = %407, %407
  %417 = tail call ptr @size_int_kind(i64 noundef -1, i32 noundef 0) #21
  %418 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %410, ptr noundef nonnull %315, ptr noundef %417) #21
  br label %419

419:                                              ; preds = %413, %416, %405
  %420 = phi ptr [ %406, %405 ], [ %418, %416 ], [ %415, %413 ]
  %421 = load ptr, ptr %64, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %312, ptr noundef %420, ptr noundef %421) #20
  br label %422

422:                                              ; preds = %260, %258, %361, %404, %284, %265, %302, %285, %327, %324, %376, %382, %419, %379, %335, %252, %255, %247, %247, %250, %250, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_ssa_name(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1970 !PGOFuncName !1971 {
  %3 = tail call fastcc ptr @get_value_range(ptr noundef %1) #20
  %4 = load i32, ptr %3, align 8, !tbaa !1024
  switch i32 %4, label %5 [
    i32 0, label %6
    i32 3, label %6
  ], !prof !1972

5:                                                ; preds = %2
  tail call fastcc void @copy_value_range(ptr noundef %0, ptr noundef nonnull %3) #20
  br label %7

6:                                                ; preds = %2, %2
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %1, ptr noundef %1, ptr noundef null) #20
  br label %7

7:                                                ; preds = %6, %5
  %8 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  tail call fastcc void @add_equivalence(ptr noundef nonnull %8, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_binary_expr(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1973 !PGOFuncName !1974 {
  %6 = alloca %struct.value_range_d, align 8
  %7 = alloca %struct.value_range_d, align 8
  %8 = alloca [4 x ptr], align 16
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  switch i32 %1, label %10 [
    i32 94, label %29
    i32 93, label %29
    i32 89, label %29
    i32 87, label %29
    i32 84, label %29
    i32 81, label %29
    i32 80, label %29
    i32 76, label %29
    i32 70, label %29
    i32 69, label %29
    i32 68, label %29
    i32 67, label %29
    i32 66, label %29
    i32 65, label %29
    i32 64, label %29
    i32 63, label %29
  ]

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @op_with_constant_singleton_value_range(ptr noundef %3) #20
  %12 = tail call fastcc ptr @op_with_constant_singleton_value_range(ptr noundef %4) #20
  %13 = icmp ne ptr %11, null
  %14 = icmp ne ptr %12, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %28, !prof !1975

16:                                               ; preds = %10
  %17 = select i1 %13, ptr %11, ptr %3, !prof !1976
  %18 = select i1 %14, ptr %12, ptr %4, !prof !1977
  %19 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %1, ptr noundef %2, ptr noundef %17, ptr noundef %18) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !1978

21:                                               ; preds = %16
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %19) #21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24, !prof !1979

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %19) #20, !range !1042
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28, !prof !1980

27:                                               ; preds = %24
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %19, ptr noundef nonnull %19, ptr noundef null) #20
  br label %632

28:                                               ; preds = %24, %21, %16, %10
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %632

29:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %30 = load i64, ptr %3, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 141
  br i1 %32, label %33, label %35, !prof !1981

33:                                               ; preds = %29
  %34 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %34, i64 32, i1 false), !tbaa.struct !1295
  br label %40

35:                                               ; preds = %29
  %36 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %3) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38, !prof !1982

38:                                               ; preds = %35
  call fastcc void @set_value_range_to_value(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef null) #20
  br label %40

39:                                               ; preds = %35
  call fastcc void @set_value_range_to_varying(ptr noundef nonnull %6) #20
  br label %40

40:                                               ; preds = %38, %39, %33
  %41 = load i64, ptr %4, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 141
  br i1 %43, label %44, label %46, !prof !1983

44:                                               ; preds = %40
  %45 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %45, i64 32, i1 false), !tbaa.struct !1295
  br label %51

46:                                               ; preds = %40
  %47 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %4) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49, !prof !1984

49:                                               ; preds = %46
  call fastcc void @set_value_range_to_value(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef null) #20
  br label %51

50:                                               ; preds = %46
  call fastcc void @set_value_range_to_varying(ptr noundef nonnull %7) #20
  br label %51

51:                                               ; preds = %49, %50, %44
  %52 = load i32, ptr %6, align 8
  %53 = icmp eq i32 %52, 0
  %54 = load i32, ptr %7, align 8
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %58, !prof !1985

57:                                               ; preds = %51
  tail call fastcc void @set_value_range_to_undefined(ptr noundef %0) #20
  br label %632

58:                                               ; preds = %51
  switch i32 %1, label %59 [
    i32 94, label %72
    i32 93, label %72
    i32 89, label %72
    i32 76, label %72
    i32 70, label %72
    i32 69, label %72
    i32 68, label %72
    i32 67, label %72
  ]

59:                                               ; preds = %58
  %60 = icmp ne i32 %52, 3
  %61 = icmp ne i32 %54, 3
  %62 = select i1 %60, i1 %61, i1 false
  %63 = icmp eq i32 %52, %54
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %71, !prof !1986

65:                                               ; preds = %59
  %66 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %6) #20, !range !1042
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %71, !prof !1987

68:                                               ; preds = %65
  %69 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !1042
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71, !prof !1988

71:                                               ; preds = %68, %65, %59
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %632

72:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %68
  %73 = load i64, ptr %2, align 8
  %74 = trunc i64 %73 to i16
  switch i16 %74, label %75 [
    i16 10, label %85
    i16 12, label %85
  ], !prof !1989

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !1036
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i16
  switch i16 %79, label %80 [
    i16 10, label %85
    i16 12, label %85
  ], !prof !1990

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !1036
  %83 = load i64, ptr %82, align 8
  %84 = trunc i64 %83 to i16
  switch i16 %84, label %121 [
    i16 10, label %85
    i16 12, label %85
  ], !prof !1990

85:                                               ; preds = %80, %80, %75, %75, %72, %72
  %86 = and i32 %1, -2
  %87 = icmp eq i32 %86, 80
  br i1 %87, label %88, label %103, !prof !1991

88:                                               ; preds = %85
  %89 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %6) #20, !range !1042
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %7) #20, !range !1042
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call fastcc void @set_value_range_to_nonnull(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %632

95:                                               ; preds = %91, %88
  %96 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %6) #20, !range !1042
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %7) #20, !range !1042
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  tail call fastcc void @set_value_range_to_null(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %632

102:                                              ; preds = %98, %95
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %632

103:                                              ; preds = %85
  %104 = icmp eq i32 %1, 66
  br i1 %104, label %106, label %105, !prof !1992

105:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2171, ptr noundef nonnull @.str.1) #21
  br label %106

106:                                              ; preds = %103, %105
  %107 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %6) #20, !range !1042
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %112, !prof !1993

109:                                              ; preds = %106
  %110 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %7) #20, !range !1042
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %113, label %112, !prof !1994

112:                                              ; preds = %109, %106
  tail call fastcc void @set_value_range_to_nonnull(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %632

113:                                              ; preds = %109
  %114 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %6) #20, !range !1042
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %120, label %116, !prof !1995

116:                                              ; preds = %113
  %117 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %7) #20, !range !1042
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %120, label %119, !prof !1996

119:                                              ; preds = %116
  tail call fastcc void @set_value_range_to_null(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %632

120:                                              ; preds = %116, %113
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %632

121:                                              ; preds = %80
  %122 = add nsw i32 %1, -93
  %123 = icmp ult i32 %122, 2
  br i1 %123, label %124, label %207, !prof !1997

124:                                              ; preds = %121
  switch i32 %1, label %177 [
    i32 93, label %125
    i32 94, label %151
  ], !prof !1998

125:                                              ; preds = %124
  %126 = icmp eq i32 %52, 1
  br i1 %126, label %127, label %137, !prof !1999

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !1031
  %130 = tail call i32 @integer_zerop(ptr noundef %129) #21
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132, !prof !2000

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !1073
  %135 = tail call i32 @integer_zerop(ptr noundef %134) #21
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %149, !prof !2001

137:                                              ; preds = %132, %127, %125
  %138 = icmp eq i32 %54, 1
  br i1 %138, label %139, label %177, !prof !2002

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !1031
  %142 = tail call i32 @integer_zerop(ptr noundef %141) #21
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %177, label %144, !prof !2003

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !1073
  %147 = tail call i32 @integer_zerop(ptr noundef %146) #21
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %177, label %149, !prof !2004

149:                                              ; preds = %144, %132
  %150 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 0) #21
  br label %582

151:                                              ; preds = %124
  %152 = icmp eq i32 %52, 1
  br i1 %152, label %153, label %163, !prof !2005

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !1031
  %156 = tail call i32 @integer_onep(ptr noundef %155) #21
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %158, !prof !2006

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !1073
  %161 = tail call i32 @integer_onep(ptr noundef %160) #21
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %175, !prof !2007

163:                                              ; preds = %158, %153, %151
  %164 = icmp eq i32 %54, 1
  br i1 %164, label %165, label %177, !prof !2008

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !1031
  %168 = tail call i32 @integer_onep(ptr noundef %167) #21
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %177, label %170, !prof !2009

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !1073
  %173 = tail call i32 @integer_onep(ptr noundef %172) #21
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175, !prof !2010

175:                                              ; preds = %170, %158
  %176 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 1) #21
  br label %582

177:                                              ; preds = %137, %139, %144, %124, %170, %165, %163
  %178 = icmp ne i32 %52, 3
  %179 = icmp ne i32 %54, 3
  %180 = select i1 %178, i1 %179, i1 false
  %181 = icmp eq i32 %52, %54
  %182 = select i1 %180, i1 %181, i1 false
  br i1 %182, label %183, label %206, !prof !2011

183:                                              ; preds = %177
  %184 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %6) #20, !range !1042
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %206, !prof !2012

186:                                              ; preds = %183
  %187 = call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %6) #20, !range !1042
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %206, !prof !2013

189:                                              ; preds = %186
  %190 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !1042
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %206, !prof !2014

192:                                              ; preds = %189
  %193 = call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %7) #20, !range !1042
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %206, !prof !2015

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !1031
  %198 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !1031
  %200 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %197, ptr noundef %199) #21
  %201 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !1073
  %203 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !1073
  %205 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %202, ptr noundef %204) #21
  br label %582

206:                                              ; preds = %192, %189, %186, %183, %177
  tail call fastcc void @set_value_range_to_truthvalue(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %632

207:                                              ; preds = %121
  %208 = icmp eq i32 %1, 63
  switch i32 %1, label %253 [
    i32 81, label %209
    i32 80, label %209
    i32 63, label %209
  ]

209:                                              ; preds = %207, %207, %207
  %210 = icmp eq i32 %52, 2
  %211 = and i1 %208, %210
  br i1 %211, label %212, label %213, !prof !2016

212:                                              ; preds = %209
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %632

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !1031
  %216 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !1031
  %218 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %215, ptr noundef %217) #20
  %219 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !1073
  %221 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !1073
  %223 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %220, ptr noundef %222) #20
  br i1 %208, label %224, label %582, !prof !2017

224:                                              ; preds = %213
  %225 = load i64, ptr %218, align 8
  %226 = and i64 %225, 134217728
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %587, label %228, !prof !2018

228:                                              ; preds = %224
  %229 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %218) #20, !range !1042
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %587, !prof !2019

231:                                              ; preds = %228
  %232 = load i64, ptr %223, align 8
  %233 = and i64 %232, 134217728
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %587, label %235, !prof !2020

235:                                              ; preds = %231
  %236 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %223) #20, !range !1042
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %587, !prof !2021

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.tree_common, ptr %218, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !1036
  %241 = getelementptr inbounds %struct.tree_int_cst, ptr %218, i64 0, i32 1
  %242 = load i64, ptr %241, align 8, !tbaa !1036
  %243 = getelementptr inbounds %struct.tree_int_cst, ptr %218, i64 0, i32 1, i32 1
  %244 = load i64, ptr %243, align 8, !tbaa !1036
  %245 = tail call ptr @build_int_cst_wide(ptr noundef %240, i64 noundef %242, i64 noundef %244) #21
  %246 = getelementptr inbounds %struct.tree_common, ptr %223, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !1036
  %248 = getelementptr inbounds %struct.tree_int_cst, ptr %223, i64 0, i32 1
  %249 = load i64, ptr %248, align 8, !tbaa !1036
  %250 = getelementptr inbounds %struct.tree_int_cst, ptr %223, i64 0, i32 1, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !1036
  %252 = tail call ptr @build_int_cst_wide(ptr noundef %247, i64 noundef %249, i64 noundef %251) #21
  br label %582

253:                                              ; preds = %207
  %254 = icmp eq i32 %1, 65
  %255 = icmp eq i32 %1, 76
  switch i32 %1, label %581 [
    i32 84, label %256
    i32 76, label %256
    i32 70, label %256
    i32 69, label %256
    i32 68, label %256
    i32 67, label %256
    i32 65, label %256
    i32 64, label %468
    i32 89, label %482
    i32 87, label %517
  ], !prof !2022

256:                                              ; preds = %253, %253, %253, %253, %253, %253, %253
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  %257 = icmp eq i32 %52, 2
  %258 = and i1 %254, %257
  br i1 %258, label %259, label %272, !prof !2023

259:                                              ; preds = %256
  %260 = and i64 %78, 2097152
  %261 = icmp eq i64 %260, 0
  %262 = load i32, ptr @flag_wrapv, align 4
  %263 = icmp eq i32 %262, 0
  %264 = select i1 %261, i1 %263, i1 false
  %265 = load i32, ptr @flag_trapv, align 4
  %266 = icmp eq i32 %265, 0
  %267 = select i1 %264, i1 %266, i1 false
  %268 = load i32, ptr @flag_strict_overflow, align 4
  %269 = icmp ne i32 %268, 0
  %270 = select i1 %267, i1 %269, i1 false
  br i1 %270, label %358, label %271, !prof !2024

271:                                              ; preds = %259
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %467

272:                                              ; preds = %256
  switch i32 %1, label %306 [
    i32 84, label %273
    i32 76, label %292
    i32 70, label %292
    i32 69, label %292
    i32 68, label %292
    i32 67, label %292
  ], !prof !2025

273:                                              ; preds = %272
  %274 = icmp eq i32 %54, 2
  br i1 %274, label %291, label %275, !prof !2026

275:                                              ; preds = %273
  %276 = call fastcc zeroext i8 @vrp_expr_computes_nonnegative(ptr noundef nonnull %4, ptr noundef nonnull %9) #20, !range !1042
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %291, label %278, !prof !2027

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !1073
  %281 = getelementptr inbounds %struct.tree_common, ptr %280, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !1036
  %283 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %284 = load i32, ptr %283, align 4
  %285 = and i32 %284, 1023
  %286 = add nsw i32 %285, -1
  %287 = sext i32 %286 to i64
  %288 = call ptr @build_int_cst(ptr noundef %282, i64 noundef %287) #21
  %289 = call fastcc i32 @operand_less_p(ptr noundef %288, ptr noundef %280) #20
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %306, label %291, !prof !2028

291:                                              ; preds = %278, %275, %273
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %467

292:                                              ; preds = %272, %272, %272, %272, %272
  %293 = icmp eq i32 %52, 1
  br i1 %293, label %294, label %297, !prof !2029

294:                                              ; preds = %292
  %295 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %6) #20, !range !1042
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %306, label %297, !prof !2030

297:                                              ; preds = %294, %292
  %298 = icmp eq i32 %54, 1
  br i1 %298, label %299, label %305, !prof !2031

299:                                              ; preds = %297
  %300 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !1042
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %305, !prof !2032

302:                                              ; preds = %299
  %303 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %7) #20, !range !1042
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %312, label %305, !prof !2033

305:                                              ; preds = %302, %299, %297
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %467

306:                                              ; preds = %272, %294, %278
  %307 = add nsw i32 %1, -67
  %308 = icmp ult i32 %307, 4
  %309 = or i1 %255, %308
  %310 = icmp eq i32 %52, 1
  %311 = and i1 %309, %310
  br i1 %311, label %319, label %357, !prof !2034

312:                                              ; preds = %302
  store i32 1, ptr %6, align 8, !tbaa !1024
  %313 = load ptr, ptr %76, align 8, !tbaa !1036
  %314 = tail call fastcc ptr @vrp_val_min(ptr noundef %313) #20
  %315 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  store ptr %314, ptr %315, align 8, !tbaa !1031
  %316 = load ptr, ptr %81, align 8, !tbaa !1036
  %317 = tail call fastcc ptr @vrp_val_max(ptr noundef %316) #20
  %318 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  store ptr %317, ptr %318, align 8, !tbaa !1073
  switch i32 %1, label %364 [
    i32 76, label %321
    i32 70, label %321
    i32 69, label %321
    i32 68, label %321
    i32 67, label %321
  ]

319:                                              ; preds = %306
  %320 = icmp eq i32 %54, 1
  br i1 %320, label %321, label %327, !prof !2035

321:                                              ; preds = %312, %312, %312, %312, %312, %319
  %322 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !1042
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %327, !prof !2036

324:                                              ; preds = %321
  %325 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %7) #20, !range !1042
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %364, label %327, !prof !2037

327:                                              ; preds = %324, %321, %319
  %328 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8
  %330 = getelementptr inbounds %struct.tree_common, ptr %329, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !1036
  %332 = call ptr @build_int_cst(ptr noundef %331, i64 noundef 0) #21
  store i8 0, ptr %9, align 1, !tbaa !1036
  %333 = call fastcc zeroext i8 @vrp_expr_computes_nonnegative(ptr noundef nonnull %4, ptr noundef nonnull %9) #20, !range !1042
  %334 = icmp eq i8 %333, 0
  %335 = load i8, ptr %9, align 1
  %336 = icmp ne i8 %335, 0
  %337 = select i1 %334, i1 true, i1 %336
  %338 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %339 = load ptr, ptr %338, align 8
  br i1 %337, label %353, label %340, !prof !2038

340:                                              ; preds = %327
  %341 = call fastcc i32 @compare_values(ptr noundef %339, ptr noundef %332) #20
  %342 = icmp eq i32 %341, -1
  %343 = icmp ult i32 %341, 2
  %344 = select i1 %343, ptr %339, ptr null
  %345 = select i1 %342, ptr %332, ptr %344, !prof !2039
  %346 = add i32 %341, -2
  %347 = icmp ult i32 %346, -3
  %348 = call fastcc i32 @compare_values(ptr noundef nonnull %329, ptr noundef %332) #20
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %354, label %350, !prof !2040

350:                                              ; preds = %340
  %351 = add i32 %348, 1
  %352 = icmp ult i32 %351, 2
  br i1 %352, label %354, label %356, !prof !2041

353:                                              ; preds = %327
  call fastcc void @abs_extent_range(ptr noundef %0, ptr noundef nonnull %329, ptr noundef %339) #20
  br label %467

354:                                              ; preds = %350, %340
  %355 = phi ptr [ %332, %340 ], [ %329, %350 ]
  br i1 %347, label %356, label %463, !prof !2042

356:                                              ; preds = %350, %354
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %467

357:                                              ; preds = %306
  br i1 %310, label %364, label %358, !prof !2043

358:                                              ; preds = %259, %357
  %359 = phi i32 [ %52, %357 ], [ 2, %259 ]
  %360 = icmp eq i32 %359, 2
  %361 = and i1 %254, %360
  %362 = icmp eq i32 %359, %54
  %363 = select i1 %361, i1 %362, i1 false
  br i1 %363, label %369, label %367, !prof !2044

364:                                              ; preds = %312, %324, %357
  %365 = phi i32 [ 1, %324 ], [ %52, %357 ], [ 1, %312 ]
  %366 = icmp eq i32 %54, 1
  br i1 %366, label %369, label %367, !prof !2045

367:                                              ; preds = %364, %358
  %368 = phi i32 [ %365, %364 ], [ %359, %358 ]
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2416, ptr noundef nonnull @.str.1) #21
  br label %369

369:                                              ; preds = %358, %364, %367
  %370 = phi i32 [ 2, %358 ], [ %365, %364 ], [ %368, %367 ]
  store i8 0, ptr %9, align 1, !tbaa !1036
  %371 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !1031
  %373 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !1031
  %375 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %372, ptr noundef %374) #20
  store ptr %375, ptr %8, align 16, !tbaa !1032
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %378, !prof !2046

377:                                              ; preds = %369
  store i8 1, ptr %9, align 1, !tbaa !1036
  br label %378

378:                                              ; preds = %377, %369
  %379 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %380 = load ptr, ptr %379, align 8, !tbaa !1073
  %381 = icmp eq ptr %380, %374
  br i1 %381, label %382, label %384, !prof !2047

382:                                              ; preds = %378
  %383 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 1
  store ptr null, ptr %383, align 8, !tbaa !1032
  br label %389

384:                                              ; preds = %378
  %385 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %372, ptr noundef %380) #20
  %386 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 1
  store ptr %385, ptr %386, align 8, !tbaa !1032
  %387 = icmp eq ptr %385, null
  br i1 %387, label %388, label %389, !prof !2048

388:                                              ; preds = %384
  store i8 1, ptr %9, align 1, !tbaa !1036
  br label %389

389:                                              ; preds = %384, %388, %382
  %390 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %391 = load ptr, ptr %390, align 8, !tbaa !1073
  %392 = icmp eq ptr %391, %372
  br i1 %392, label %398, label %393, !prof !2049

393:                                              ; preds = %389
  %394 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %391, ptr noundef %374) #20
  %395 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 2
  store ptr %394, ptr %395, align 16, !tbaa !1032
  %396 = icmp eq ptr %394, null
  br i1 %396, label %397, label %400, !prof !2050

397:                                              ; preds = %393
  store i8 1, ptr %9, align 1, !tbaa !1036
  br label %400

398:                                              ; preds = %389
  %399 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 2
  store ptr null, ptr %399, align 16, !tbaa !1032
  br label %401

400:                                              ; preds = %393, %397
  br i1 %381, label %401, label %403, !prof !2051

401:                                              ; preds = %398, %400
  %402 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 3
  store ptr null, ptr %402, align 8, !tbaa !1032
  br label %408

403:                                              ; preds = %400
  %404 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %391, ptr noundef %380) #20
  %405 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 3
  store ptr %404, ptr %405, align 8, !tbaa !1032
  %406 = icmp eq ptr %404, null
  br i1 %406, label %407, label %408, !prof !2052

407:                                              ; preds = %403
  store i8 1, ptr %9, align 1, !tbaa !1036
  br label %411

408:                                              ; preds = %403, %401
  %409 = load i8, ptr %9, align 1, !tbaa !1036
  %410 = icmp eq i8 %409, 0
  br i1 %410, label %412, label %411, !prof !2053

411:                                              ; preds = %407, %408
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %467

412:                                              ; preds = %408, %458
  %413 = phi ptr [ %460, %458 ], [ %375, %408 ]
  %414 = phi ptr [ %459, %458 ], [ %375, %408 ]
  %415 = phi i64 [ %461, %458 ], [ 1, %408 ]
  %416 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %413) #21
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %463, label %418, !prof !2054

418:                                              ; preds = %412
  %419 = load i64, ptr %413, align 8
  %420 = and i64 %419, 134217728
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %425, label %422, !prof !2055

422:                                              ; preds = %418
  %423 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %413) #20, !range !1042
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %463, label %425, !prof !2056

425:                                              ; preds = %422, %418
  %426 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %414) #21
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %463, label %428, !prof !2057

428:                                              ; preds = %425
  %429 = load i64, ptr %414, align 8
  %430 = and i64 %429, 134217728
  %431 = icmp eq i64 %430, 0
  br i1 %431, label %435, label %432, !prof !2058

432:                                              ; preds = %428
  %433 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %414) #20, !range !1042
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %463, label %435, !prof !2059

435:                                              ; preds = %432, %428
  %436 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 %415
  %437 = load ptr, ptr %436, align 8, !tbaa !1032
  %438 = icmp eq ptr %437, null
  br i1 %438, label %458, label %439, !prof !2060

439:                                              ; preds = %435
  %440 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %437) #21
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %463, label %442, !prof !2061

442:                                              ; preds = %439
  %443 = load i64, ptr %437, align 8
  %444 = and i64 %443, 134217728
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %449, label %446, !prof !2062

446:                                              ; preds = %442
  %447 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %437) #20, !range !1042
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %463, label %449, !prof !2063

449:                                              ; preds = %446, %442
  %450 = call fastcc i32 @compare_values(ptr noundef nonnull %437, ptr noundef nonnull %413) #20
  %451 = icmp eq i32 %450, -1
  %452 = load ptr, ptr %436, align 8, !tbaa !1032
  %453 = select i1 %451, ptr %452, ptr %413, !prof !2064
  %454 = call fastcc i32 @compare_values(ptr noundef %452, ptr noundef nonnull %414) #20
  %455 = icmp eq i32 %454, 1
  br i1 %455, label %456, label %458, !prof !2065

456:                                              ; preds = %449
  %457 = load ptr, ptr %436, align 8, !tbaa !1032
  br label %458

458:                                              ; preds = %435, %456, %449
  %459 = phi ptr [ %457, %456 ], [ %414, %449 ], [ %414, %435 ]
  %460 = phi ptr [ %453, %456 ], [ %453, %449 ], [ %413, %435 ]
  %461 = add nuw nsw i64 %415, 1
  %462 = icmp eq i64 %461, 4
  br i1 %462, label %463, label %412, !prof !2066, !llvm.loop !2067

463:                                              ; preds = %458, %432, %425, %422, %412, %446, %439, %354
  %464 = phi ptr [ %345, %354 ], [ %414, %432 ], [ %414, %425 ], [ %414, %422 ], [ %414, %412 ], [ %459, %458 ], [ %437, %446 ], [ %437, %439 ]
  %465 = phi ptr [ %355, %354 ], [ %413, %432 ], [ %413, %425 ], [ %413, %422 ], [ %413, %412 ], [ %460, %458 ], [ %437, %446 ], [ %437, %439 ]
  %466 = phi i32 [ 1, %354 ], [ %370, %439 ], [ %370, %446 ], [ %370, %412 ], [ %370, %422 ], [ %370, %425 ], [ %370, %432 ], [ %370, %458 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  br label %582

467:                                              ; preds = %353, %356, %411, %305, %291, %271
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  br label %632

468:                                              ; preds = %253
  %469 = icmp eq i32 %52, 2
  br i1 %469, label %470, label %471, !prof !2068

470:                                              ; preds = %468
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %632

471:                                              ; preds = %468
  %472 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %473 = load ptr, ptr %472, align 8, !tbaa !1031
  %474 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %475 = load ptr, ptr %474, align 8, !tbaa !1073
  %476 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef 64, ptr noundef %473, ptr noundef %475) #20
  %477 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %478 = load ptr, ptr %477, align 8, !tbaa !1073
  %479 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !1031
  %481 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef 64, ptr noundef %478, ptr noundef %480) #20
  br label %582

482:                                              ; preds = %253
  %483 = icmp eq i32 %52, 1
  br i1 %483, label %484, label %499, !prof !2069

484:                                              ; preds = %482
  %485 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %486 = load ptr, ptr %485, align 8, !tbaa !1031
  %487 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !1073
  %489 = icmp eq ptr %486, %488
  br i1 %489, label %490, label %499, !prof !2070

490:                                              ; preds = %484
  %491 = load i64, ptr %486, align 8
  %492 = and i64 %491, 134283263
  %493 = icmp eq i64 %492, 23
  br i1 %493, label %494, label %499, !prof !2071

494:                                              ; preds = %490
  %495 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %486) #21
  %496 = icmp sgt i32 %495, -1
  br i1 %496, label %497, label %499, !prof !2072

497:                                              ; preds = %494
  %498 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 0) #21
  br label %582

499:                                              ; preds = %494, %490, %484, %482
  %500 = icmp eq i32 %54, 1
  br i1 %500, label %501, label %516, !prof !2073

501:                                              ; preds = %499
  %502 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %503 = load ptr, ptr %502, align 8, !tbaa !1031
  %504 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %505 = load ptr, ptr %504, align 8, !tbaa !1073
  %506 = icmp eq ptr %503, %505
  br i1 %506, label %507, label %516, !prof !2074

507:                                              ; preds = %501
  %508 = load i64, ptr %503, align 8
  %509 = and i64 %508, 134283263
  %510 = icmp eq i64 %509, 23
  br i1 %510, label %511, label %516, !prof !2075

511:                                              ; preds = %507
  %512 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %503) #21
  %513 = icmp sgt i32 %512, -1
  br i1 %513, label %514, label %516, !prof !2076

514:                                              ; preds = %511
  %515 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 0) #21
  br label %582

516:                                              ; preds = %511, %507, %501, %499
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %632

517:                                              ; preds = %253
  %518 = icmp eq i32 %52, 1
  %519 = icmp eq i32 %54, 1
  %520 = select i1 %518, i1 %519, i1 false
  br i1 %520, label %521, label %580, !prof !2077

521:                                              ; preds = %517
  %522 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %523 = load ptr, ptr %522, align 8, !tbaa !1031
  %524 = load i64, ptr %523, align 8
  %525 = and i64 %524, 65535
  %526 = icmp eq i64 %525, 23
  br i1 %526, label %527, label %580, !prof !2078

527:                                              ; preds = %521
  %528 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %529 = load ptr, ptr %528, align 8, !tbaa !1031
  %530 = load i64, ptr %529, align 8
  %531 = and i64 %530, 65535
  %532 = icmp eq i64 %531, 23
  br i1 %532, label %533, label %580, !prof !2078

533:                                              ; preds = %527
  %534 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %535 = load ptr, ptr %534, align 8, !tbaa !1073
  %536 = load i64, ptr %535, align 8
  %537 = and i64 %536, 65535
  %538 = icmp eq i64 %537, 23
  br i1 %538, label %539, label %580, !prof !2078

539:                                              ; preds = %533
  %540 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %541 = load ptr, ptr %540, align 8, !tbaa !1073
  %542 = load i64, ptr %541, align 8
  %543 = and i64 %542, 65535
  %544 = icmp eq i64 %543, 23
  br i1 %544, label %545, label %580, !prof !2078

545:                                              ; preds = %539
  %546 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %523) #21
  %547 = icmp sgt i32 %546, -1
  br i1 %547, label %548, label %580, !prof !2079

548:                                              ; preds = %545
  %549 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %529) #21
  %550 = icmp sgt i32 %549, -1
  br i1 %550, label %551, label %580, !prof !2080

551:                                              ; preds = %548
  %552 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %535) #21
  %553 = extractvalue { i64, i64 } %552, 0
  %554 = extractvalue { i64, i64 } %552, 1
  %555 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %541) #21
  %556 = extractvalue { i64, i64 } %555, 0
  %557 = extractvalue { i64, i64 } %555, 1
  %558 = or i64 %556, %553
  %559 = or i64 %557, %554
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %567, label %561, !prof !2081

561:                                              ; preds = %551
  %562 = tail call i32 @floor_log2(i64 noundef %559) #21
  %563 = zext nneg i32 %562 to i64
  %564 = shl nsw i64 -1, %563
  %565 = xor i64 %564, -1
  %566 = or i64 %559, %565
  br label %575

567:                                              ; preds = %551
  %568 = icmp eq i64 %558, 0
  br i1 %568, label %575, label %569, !prof !2082

569:                                              ; preds = %567
  %570 = tail call i32 @floor_log2(i64 noundef %558) #21
  %571 = zext nneg i32 %570 to i64
  %572 = shl nsw i64 -1, %571
  %573 = xor i64 %572, -1
  %574 = or i64 %558, %573
  br label %575

575:                                              ; preds = %567, %569, %561
  %576 = phi i64 [ %566, %561 ], [ 0, %569 ], [ 0, %567 ]
  %577 = phi i64 [ -1, %561 ], [ %574, %569 ], [ 0, %567 ]
  %578 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef 81, ptr noundef nonnull %523, ptr noundef nonnull %529) #20
  %579 = tail call ptr @double_int_to_tree(ptr noundef nonnull %2, i64 %577, i64 %576) #21
  br label %582

580:                                              ; preds = %548, %545, %539, %533, %527, %521, %517
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %632

581:                                              ; preds = %253
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2578, ptr noundef nonnull @.str.1) #21
  unreachable

582:                                              ; preds = %463, %238, %213, %471, %575, %497, %514, %149, %195, %175
  %583 = phi ptr [ %150, %149 ], [ %176, %175 ], [ %205, %195 ], [ %252, %238 ], [ %223, %213 ], [ %481, %471 ], [ %503, %514 ], [ %486, %497 ], [ %579, %575 ], [ %464, %463 ]
  %584 = phi ptr [ %150, %149 ], [ %176, %175 ], [ %200, %195 ], [ %245, %238 ], [ %218, %213 ], [ %476, %471 ], [ %515, %514 ], [ %498, %497 ], [ %578, %575 ], [ %465, %463 ]
  %585 = phi i32 [ 1, %149 ], [ 1, %175 ], [ %52, %195 ], [ %52, %238 ], [ %52, %213 ], [ %52, %471 ], [ 1, %514 ], [ 1, %497 ], [ 1, %575 ], [ %466, %463 ]
  %586 = icmp eq ptr %584, null
  br i1 %586, label %614, label %587, !prof !2083

587:                                              ; preds = %224, %231, %235, %228, %582
  %588 = phi i32 [ %585, %582 ], [ %52, %228 ], [ %52, %235 ], [ %52, %231 ], [ %52, %224 ]
  %589 = phi ptr [ %584, %582 ], [ %218, %228 ], [ %218, %235 ], [ %218, %231 ], [ %218, %224 ]
  %590 = phi ptr [ %583, %582 ], [ %223, %228 ], [ %223, %235 ], [ %223, %231 ], [ %223, %224 ]
  %591 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %589) #21
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %614, label %593, !prof !2084

593:                                              ; preds = %587
  %594 = load i64, ptr %589, align 8
  %595 = and i64 %594, 134217728
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %602, label %597, !prof !2085

597:                                              ; preds = %593
  %598 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %589) #20, !range !1042
  %599 = icmp eq i8 %598, 0
  %600 = icmp eq ptr %590, null
  %601 = select i1 %599, i1 true, i1 %600
  br i1 %601, label %614, label %604, !prof !2086

602:                                              ; preds = %593
  %603 = icmp eq ptr %590, null
  br i1 %603, label %614, label %604, !prof !2087

604:                                              ; preds = %597, %602
  %605 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %590) #21
  %606 = icmp eq i8 %605, 0
  br i1 %606, label %614, label %607, !prof !2087

607:                                              ; preds = %604
  %608 = load i64, ptr %590, align 8
  %609 = and i64 %608, 134217728
  %610 = icmp eq i64 %609, 0
  br i1 %610, label %615, label %611, !prof !2088

611:                                              ; preds = %607
  %612 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %590) #20, !range !1042
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %614, label %615, !prof !2089

614:                                              ; preds = %611, %604, %602, %597, %587, %582
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %632

615:                                              ; preds = %611, %607
  %616 = call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %589) #20, !range !1042
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %618, label %621, !prof !2090

618:                                              ; preds = %615
  %619 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %589) #20, !range !1042
  %620 = icmp eq i8 %619, 0
  br i1 %620, label %628, label %621, !prof !2091

621:                                              ; preds = %618, %615
  %622 = call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %590) #20, !range !1042
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %624, label %627, !prof !2092

624:                                              ; preds = %621
  %625 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %590) #20, !range !1042
  %626 = icmp eq i8 %625, 0
  br i1 %626, label %628, label %627, !prof !2093

627:                                              ; preds = %624, %621
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %632

628:                                              ; preds = %624, %618
  %629 = call fastcc i32 @compare_values(ptr noundef nonnull %589, ptr noundef nonnull %590) #20
  switch i32 %629, label %631 [
    i32 -2, label %630
    i32 1, label %630
  ]

630:                                              ; preds = %628, %628
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %632

631:                                              ; preds = %628
  call fastcc void @set_value_range(ptr noundef %0, i32 noundef %588, ptr noundef nonnull %589, ptr noundef nonnull %590, ptr noundef null) #20
  br label %632

632:                                              ; preds = %467, %630, %631, %112, %120, %119, %94, %102, %101, %28, %27, %627, %614, %580, %516, %470, %212, %206, %71, %57
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_unary_expr(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !2094 !PGOFuncName !2095 {
  %5 = alloca %struct.value_range_d, align 8
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  switch i32 %1, label %21 [
    i32 124, label %7
    i32 90, label %7
    i32 78, label %7
    i32 77, label %7
  ]

7:                                                ; preds = %4, %4, %4, %4
  %8 = tail call fastcc ptr @op_with_constant_singleton_value_range(ptr noundef %3) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10, !prof !2096

10:                                               ; preds = %7
  %11 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %8) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13, !prof !2097

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %11) #21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16, !prof !2097

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %11) #20, !range !1042
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20, !prof !2098

19:                                               ; preds = %16
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef null) #20
  br label %439

20:                                               ; preds = %16, %13, %10, %7
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

21:                                               ; preds = %4
  %22 = load i64, ptr %3, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %25, label %27, !prof !2099

25:                                               ; preds = %21
  %26 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %26, i64 32, i1 false), !tbaa.struct !1295
  br label %32

27:                                               ; preds = %21
  %28 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %3) #21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30, !prof !2100

30:                                               ; preds = %27
  call fastcc void @set_value_range_to_value(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef null) #20
  br label %32

31:                                               ; preds = %27
  call fastcc void @set_value_range_to_varying(ptr noundef nonnull %5) #20
  br label %32

32:                                               ; preds = %30, %31, %25
  %33 = load i32, ptr %5, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36, !prof !2101

35:                                               ; preds = %32
  tail call fastcc void @set_value_range_to_undefined(ptr noundef %0) #20
  br label %439

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !1036
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i16
  switch i16 %40, label %46 [
    i16 6, label %41
    i16 7, label %41
    i16 8, label %41
    i16 10, label %41
    i16 12, label %41
  ], !prof !2102

41:                                               ; preds = %36, %36, %36, %36, %36
  %42 = icmp eq i32 %33, 3
  br i1 %42, label %47, label %43, !prof !2103

43:                                               ; preds = %41
  %44 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %5) #20, !range !1042
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46, !prof !2104

46:                                               ; preds = %36, %43
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

47:                                               ; preds = %43, %41
  %48 = load i64, ptr %2, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %51 = trunc i64 %48 to i16
  switch i16 %51, label %52 [
    i16 10, label %58
    i16 12, label %58
  ], !prof !2105

52:                                               ; preds = %47
  %53 = load ptr, ptr %37, align 8, !tbaa !1036
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 65535
  %57 = trunc i64 %54 to i16
  switch i16 %57, label %74 [
    i16 10, label %58
    i16 12, label %58
  ], !prof !2106

58:                                               ; preds = %52, %52, %47, %47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  store i8 0, ptr %6, align 1, !tbaa !1036
  %59 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %5) #20, !range !1042
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %67, !prof !2107

61:                                               ; preds = %58
  %62 = call zeroext i8 @tree_unary_nonzero_warnv_p(i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %6) #21
  %63 = icmp eq i8 %62, 0
  %64 = load i8, ptr %6, align 1
  %65 = icmp ne i8 %64, 0
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %68, label %67, !prof !2108

67:                                               ; preds = %61, %58
  call fastcc void @set_value_range_to_nonnull(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %73

68:                                               ; preds = %61
  %69 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %5) #20, !range !1042
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71, !prof !2109

71:                                               ; preds = %68
  call fastcc void @set_value_range_to_null(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %73

72:                                               ; preds = %68
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %73

73:                                               ; preds = %71, %72, %67
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  br label %439

74:                                               ; preds = %52
  switch i32 %1, label %146 [
    i32 116, label %75
    i32 113, label %75
  ]

75:                                               ; preds = %74, %74
  %76 = add nsw i32 %50, -6
  %77 = icmp ult i32 %76, 3
  %78 = add nsw i32 %56, -6
  %79 = icmp ult i32 %78, 3
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %146, !prof !2110

81:                                               ; preds = %75
  br i1 %42, label %82, label %94, !prof !2111

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 1023
  %86 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1023
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %90, label %145, !prof !2112

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 13
  %92 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %93 = load <2 x ptr>, ptr %91, align 8, !tbaa !1036
  store <2 x ptr> %93, ptr %92, align 8, !tbaa !1032
  br label %96

94:                                               ; preds = %81
  %95 = icmp ult i32 %33, 3
  br i1 %95, label %96, label %145, !prof !1379

96:                                               ; preds = %90, %94
  %97 = phi i32 [ 1, %90 ], [ %33, %94 ]
  %98 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !1031
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 23
  br i1 %102, label %103, label %145, !prof !2113

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !1073
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 23
  br i1 %108, label %109, label %145, !prof !2113

109:                                              ; preds = %103
  %110 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %99) #20, !range !1042
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %145, !prof !2114

112:                                              ; preds = %109
  %113 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %105) #20, !range !1042
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %145, !prof !2115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 1023
  %119 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 1023
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %134, !prof !2116

123:                                              ; preds = %115
  %124 = icmp eq i32 %97, 1
  br i1 %124, label %125, label %145, !prof !2117

125:                                              ; preds = %123
  %126 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef nonnull %105, ptr noundef nonnull %99, i32 noundef 0) #21
  %127 = load i32, ptr %116, align 4
  %128 = and i32 %127, 1023
  %129 = zext nneg i32 %128 to i64
  %130 = tail call ptr @size_int_kind(i64 noundef %129, i32 noundef 0) #21
  %131 = tail call ptr @int_const_binop(i32 noundef 84, ptr noundef %126, ptr noundef %130, i32 noundef 0) #21
  %132 = tail call i32 @integer_zerop(ptr noundef %131) #21
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %145, label %134, !prof !2118

134:                                              ; preds = %125, %115
  %135 = getelementptr inbounds %struct.tree_int_cst, ptr %99, i64 0, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !1036
  %137 = getelementptr inbounds %struct.tree_int_cst, ptr %99, i64 0, i32 1, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !1036
  %139 = tail call ptr @force_fit_type_double(ptr noundef nonnull %2, i64 noundef %136, i64 noundef %138, i32 noundef 0, i8 noundef zeroext 0) #21
  %140 = getelementptr inbounds %struct.tree_int_cst, ptr %105, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !1036
  %142 = getelementptr inbounds %struct.tree_int_cst, ptr %105, i64 0, i32 1, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !1036
  %144 = tail call ptr @force_fit_type_double(ptr noundef nonnull %2, i64 noundef %141, i64 noundef %143, i32 noundef 0, i8 noundef zeroext 0) #21
  tail call fastcc void @set_and_canonicalize_value_range(ptr noundef %0, i32 noundef %97, ptr noundef %139, ptr noundef %144, ptr noundef null) #20
  br label %439

145:                                              ; preds = %82, %94, %125, %123, %112, %109, %103, %96
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

146:                                              ; preds = %75, %74
  br i1 %42, label %147, label %148, !prof !2119

147:                                              ; preds = %146
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

148:                                              ; preds = %146
  switch i32 %1, label %364 [
    i32 79, label %149
    i32 82, label %234
  ], !prof !2120

149:                                              ; preds = %148
  %150 = and i64 %48, 2097152
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %219, !prof !2121

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !1073
  %155 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %154) #20, !range !1042
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %159, label %157, !prof !2122

157:                                              ; preds = %152
  %158 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef nonnull %2) #20
  br label %189

159:                                              ; preds = %152
  %160 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %154) #20, !range !1042
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %164, label %162, !prof !2123

162:                                              ; preds = %159
  %163 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %189

164:                                              ; preds = %159
  %165 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %154) #20, !range !1042
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %169, !prof !2123

167:                                              ; preds = %164
  %168 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %154) #21
  br label %189

169:                                              ; preds = %164
  %170 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %169
  %173 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !1031
  %178 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %177) #20, !range !1042
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %177) #20, !range !1042
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %189

185:                                              ; preds = %180, %175, %172
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

186:                                              ; preds = %169
  %187 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  %188 = load ptr, ptr %187, align 8, !tbaa !1036
  br label %189

189:                                              ; preds = %162, %183, %186, %167, %157
  %190 = phi ptr [ %158, %157 ], [ %163, %162 ], [ %184, %183 ], [ %188, %186 ], [ %168, %167 ]
  %191 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !1031
  %193 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %192) #20, !range !1042
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %197, label %195, !prof !2124

195:                                              ; preds = %189
  %196 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

197:                                              ; preds = %189
  %198 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %192) #20, !range !1042
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %202, label %200, !prof !2125

200:                                              ; preds = %197
  %201 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

202:                                              ; preds = %197
  %203 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %192) #20, !range !1042
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %207, !prof !2126

205:                                              ; preds = %202
  %206 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %192) #21
  br label %432

207:                                              ; preds = %202
  %208 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %216, label %210, !prof !2127

210:                                              ; preds = %207
  %211 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %215, label %213, !prof !2127

213:                                              ; preds = %210
  %214 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

215:                                              ; preds = %210
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

216:                                              ; preds = %207
  %217 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  %218 = load ptr, ptr %217, align 8, !tbaa !1036
  br label %432

219:                                              ; preds = %149
  %220 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %5) #20, !range !1042
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %229, !prof !2128

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !1031
  %225 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %224) #21
  %226 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !1073
  %228 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %227) #21
  br label %432

229:                                              ; preds = %219
  %230 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %5) #20, !range !1042
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %233, label %232, !prof !2129

232:                                              ; preds = %229
  tail call fastcc void @set_value_range_to_null(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %439

233:                                              ; preds = %229
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

234:                                              ; preds = %148
  %235 = and i64 %48, 2097152
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %364, !prof !2130

237:                                              ; preds = %234
  %238 = load i32, ptr @flag_wrapv, align 4
  %239 = icmp eq i32 %238, 0
  %240 = load i32, ptr @flag_trapv, align 4
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %239, i1 %241, i1 false
  %243 = load i32, ptr @flag_strict_overflow, align 4
  %244 = icmp ne i32 %243, 0
  %245 = select i1 %242, i1 %244, i1 false
  br i1 %245, label %261, label %246, !prof !2131

246:                                              ; preds = %237
  switch i32 %33, label %261 [
    i32 1, label %247
    i32 2, label %252
  ]

247:                                              ; preds = %246
  %248 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !1031
  %250 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %249) #20, !range !1042
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %261, label %260

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !1031
  %255 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %254) #20, !range !1042
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %252
  %258 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %5) #20, !range !1042
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257, %247
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

261:                                              ; preds = %246, %247, %237, %257, %252
  %262 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !1031
  %264 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %263) #20, !range !1042
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %268, label %266, !prof !2130

266:                                              ; preds = %261
  %267 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %285

268:                                              ; preds = %261
  %269 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %263) #20, !range !1042
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %273, !prof !2130

271:                                              ; preds = %268
  %272 = tail call ptr @fold_unary_to_constant(i32 noundef 82, ptr noundef nonnull %2, ptr noundef %263) #21
  br label %285

273:                                              ; preds = %268
  %274 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %278 = load ptr, ptr %277, align 8, !tbaa !1036
  br label %285

279:                                              ; preds = %273
  %280 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %285

284:                                              ; preds = %279
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

285:                                              ; preds = %271, %282, %276, %266
  %286 = phi ptr [ %267, %266 ], [ %283, %282 ], [ %278, %276 ], [ %272, %271 ]
  %287 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !1073
  %289 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %288) #20, !range !1042
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %293, label %291, !prof !2130

291:                                              ; preds = %285
  %292 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %313

293:                                              ; preds = %285
  %294 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %288) #20, !range !1042
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %298, !prof !2130

296:                                              ; preds = %293
  %297 = tail call ptr @fold_unary_to_constant(i32 noundef 82, ptr noundef nonnull %2, ptr noundef %288) #21
  br label %313

298:                                              ; preds = %293
  %299 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %303 = load ptr, ptr %302, align 8, !tbaa !1036
  br label %313

304:                                              ; preds = %298
  %305 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %304
  %308 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %286) #20, !range !1042
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %307
  %311 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %313

312:                                              ; preds = %307, %304
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

313:                                              ; preds = %296, %310, %301, %291
  %314 = phi ptr [ %292, %291 ], [ %311, %310 ], [ %303, %301 ], [ %297, %296 ]
  %315 = tail call fastcc i32 @compare_values(ptr noundef %286, ptr noundef %314) #20
  %316 = icmp eq i32 %33, 2
  %317 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %5) #20, !range !1042
  %318 = icmp eq i8 %317, 0
  br i1 %316, label %319, label %357, !prof !2130

319:                                              ; preds = %313
  br i1 %318, label %344, label %320, !prof !2132

320:                                              ; preds = %319
  %321 = icmp eq i32 %315, 1
  %322 = select i1 %321, ptr %314, ptr %286, !prof !2132
  %323 = load i64, ptr %2, align 8
  %324 = and i64 %323, 2097152
  %325 = icmp ne i64 %324, 0
  %326 = load i32, ptr @flag_wrapv, align 4
  %327 = icmp ne i32 %326, 0
  %328 = select i1 %325, i1 true, i1 %327
  br i1 %328, label %329, label %336, !prof !2133

329:                                              ; preds = %320
  %330 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  %331 = load ptr, ptr %330, align 8, !tbaa !1036
  %332 = icmp eq ptr %263, %331
  br i1 %332, label %432, label %333

333:                                              ; preds = %329
  %334 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !1032
  %335 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %331, ptr noundef %334, i32 noundef 0) #21
  br label %432

336:                                              ; preds = %320
  %337 = call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %5) #20, !range !1042
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %341, label %339, !prof !2130

339:                                              ; preds = %336
  %340 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  %343 = load ptr, ptr %342, align 8, !tbaa !1036
  br label %432

344:                                              ; preds = %319
  %345 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 0) #21
  %346 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %354, label %348

348:                                              ; preds = %344
  %349 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %348
  %352 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

353:                                              ; preds = %348
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

354:                                              ; preds = %344
  %355 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %356 = load ptr, ptr %355, align 8, !tbaa !1036
  br label %432

357:                                              ; preds = %313
  %358 = icmp eq i32 %315, 1
  %359 = select i1 %358, ptr %286, ptr %314
  br i1 %318, label %362, label %360

360:                                              ; preds = %357
  %361 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 0) #21
  br label %432

362:                                              ; preds = %357
  %363 = select i1 %358, ptr %314, ptr %286
  br label %432

364:                                              ; preds = %148, %234
  %365 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !1031
  %367 = tail call ptr @fold_unary_to_constant(i32 noundef %1, ptr noundef nonnull %2, ptr noundef %366) #21
  %368 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !1073
  %370 = tail call ptr @fold_unary_to_constant(i32 noundef %1, ptr noundef nonnull %2, ptr noundef %369) #21
  %371 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %432, label %373

373:                                              ; preds = %364
  %374 = icmp eq i32 %1, 82
  br i1 %374, label %375, label %376

375:                                              ; preds = %373
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2959, ptr noundef nonnull @.str.1) #21
  br label %376

376:                                              ; preds = %373, %375
  %377 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %366) #20, !range !1042
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %376
  %380 = load i64, ptr %367, align 8
  %381 = and i64 %380, 134217728
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %379, %376
  %384 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %369) #20, !range !1042
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = load i64, ptr %370, align 8
  %388 = and i64 %387, 134217728
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %386, %383
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

391:                                              ; preds = %386, %379
  %392 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %366) #20, !range !1042
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %411

394:                                              ; preds = %391
  %395 = load i64, ptr %367, align 8
  %396 = and i64 %395, 134217728
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %411, label %398

398:                                              ; preds = %394
  %399 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %410, label %401

401:                                              ; preds = %398
  %402 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %367) #21
  %403 = icmp sgt i32 %402, -1
  %404 = getelementptr inbounds %struct.tree_common, ptr %367, i64 0, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !1036
  br i1 %403, label %406, label %408

406:                                              ; preds = %401
  %407 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef %405) #20
  br label %411

408:                                              ; preds = %401
  %409 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef %405) #20
  br label %411

410:                                              ; preds = %398
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

411:                                              ; preds = %391, %406, %408, %394
  %412 = phi ptr [ %367, %394 ], [ %407, %406 ], [ %409, %408 ], [ %366, %391 ]
  %413 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %369) #20, !range !1042
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %415, label %432

415:                                              ; preds = %411
  %416 = load i64, ptr %370, align 8
  %417 = and i64 %416, 134217728
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %432, label %419

419:                                              ; preds = %415
  %420 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !1042
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %431, label %422

422:                                              ; preds = %419
  %423 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %370) #21
  %424 = icmp sgt i32 %423, -1
  %425 = getelementptr inbounds %struct.tree_common, ptr %370, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !1036
  br i1 %424, label %427, label %429

427:                                              ; preds = %422
  %428 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef %426) #20
  br label %432

429:                                              ; preds = %422
  %430 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef %426) #20
  br label %432

431:                                              ; preds = %419
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

432:                                              ; preds = %411, %362, %427, %429, %333, %329, %222, %364, %415, %351, %354, %341, %339, %360, %195, %205, %216, %213, %200
  %433 = phi i32 [ %33, %222 ], [ %33, %415 ], [ %33, %364 ], [ 2, %339 ], [ 2, %341 ], [ 1, %351 ], [ 1, %354 ], [ %33, %360 ], [ %33, %195 ], [ %33, %200 ], [ %33, %213 ], [ %33, %216 ], [ %33, %205 ], [ 2, %329 ], [ 2, %333 ], [ %33, %362 ], [ %33, %427 ], [ %33, %429 ], [ %33, %411 ]
  %434 = phi ptr [ %225, %222 ], [ %370, %415 ], [ %370, %364 ], [ %322, %339 ], [ %322, %341 ], [ %352, %351 ], [ %356, %354 ], [ %359, %360 ], [ %196, %195 ], [ %201, %200 ], [ %214, %213 ], [ %218, %216 ], [ %206, %205 ], [ %322, %329 ], [ %322, %333 ], [ %359, %362 ], [ %428, %427 ], [ %430, %429 ], [ %369, %411 ]
  %435 = phi ptr [ %228, %222 ], [ %412, %415 ], [ %367, %364 ], [ %340, %339 ], [ %343, %341 ], [ %345, %351 ], [ %345, %354 ], [ %361, %360 ], [ %190, %195 ], [ %190, %200 ], [ %190, %213 ], [ %190, %216 ], [ %190, %205 ], [ %263, %329 ], [ %335, %333 ], [ %363, %362 ], [ %412, %427 ], [ %412, %429 ], [ %412, %411 ]
  %436 = tail call fastcc i32 @compare_values(ptr noundef %435, ptr noundef %434) #20
  switch i32 %436, label %438 [
    i32 -2, label %437
    i32 1, label %437
  ]

437:                                              ; preds = %432, %432
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

438:                                              ; preds = %432
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef %433, ptr noundef %435, ptr noundef %434, ptr noundef null) #20
  br label %439

439:                                              ; preds = %437, %438, %232, %233, %134, %145, %19, %431, %410, %390, %353, %312, %284, %260, %215, %185, %147, %73, %46, %35, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_cond_expr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !2134 !PGOFuncName !2135 {
  %3 = alloca %struct.value_range_d, align 8
  %4 = alloca %struct.value_range_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1036
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %12, !prof !2136

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !1295
  br label %17

12:                                               ; preds = %2
  %13 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %6) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  call fastcc void @set_value_range_to_value(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef null) #20
  br label %17

16:                                               ; preds = %12
  call fastcc void @set_value_range_to_varying(ptr noundef nonnull %3) #20
  br label %17

17:                                               ; preds = %15, %16, %10
  %18 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !1036
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %25, !prof !2137

23:                                               ; preds = %17
  %24 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %19) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 32, i1 false), !tbaa.struct !1295
  br label %30

25:                                               ; preds = %17
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %19) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28, !prof !2138

28:                                               ; preds = %25
  call fastcc void @set_value_range_to_value(ptr noundef nonnull %4, ptr noundef nonnull %19, ptr noundef null) #20
  br label %30

29:                                               ; preds = %25
  call fastcc void @set_value_range_to_varying(ptr noundef nonnull %4) #20
  br label %30

30:                                               ; preds = %28, %29, %23
  call fastcc void @vrp_meet(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  call fastcc void @copy_value_range(ptr noundef %0, ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_comparison(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !2139 !PGOFuncName !2140 {
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  store i8 0, ptr %6, align 1, !tbaa !1036
  %7 = call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %1, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0, ptr noundef nonnull %6, ptr noundef null) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9, !prof !2141

9:                                                ; preds = %5
  %10 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %7) #20, !range !1042
  %11 = icmp ne i8 %10, 0
  %12 = load i8, ptr %6, align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %23, label %15, !prof !2142

15:                                               ; preds = %9
  %16 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2, ptr noundef nonnull %7) #21
  %17 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %16) #21
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !1038
  br i1 %18, label %22, label %21, !prof !2143

21:                                               ; preds = %15
  call fastcc void @set_value_range_to_value(ptr noundef %0, ptr noundef %16, ptr noundef %20) #20
  br label %24

22:                                               ; preds = %15
  call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef %16, ptr noundef %20) #20
  br label %24

23:                                               ; preds = %9, %5
  call fastcc void @set_value_range_to_truthvalue(ptr noundef %0, ptr noundef %2) #20
  br label %24

24:                                               ; preds = %21, %22, %23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_value(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !2144 !PGOFuncName !2145 {
  %4 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !2146

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 515, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %3, %6
  %8 = tail call fastcc ptr @avoid_overflow_infinity(ptr noundef %1) #20
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %8, ptr noundef %8, ptr noundef %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @avoid_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !2147 !PGOFuncName !2148 {
  %2 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %0) #20, !range !1042
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !2149

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %0) #20, !range !1042
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1036
  br i1 %6, label %11, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @vrp_val_max(ptr noundef %8) #20
  br label %13

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @vrp_val_min(ptr noundef %8) #20
  br label %13

13:                                               ; preds = %1, %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ], [ %0, %1 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @symbolic_range_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !2150 !PGOFuncName !2151 {
  %2 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1031
  %4 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %3) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6, !prof !2152

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1073
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %8) #21
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i8 [ 1, %1 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_equivalence(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !2153 !PGOFuncName !2154 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !1036
  %5 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !1032
  %9 = load ptr, ptr %0, align 8, !tbaa !1032
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !2155

11:                                               ; preds = %2
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %12, ptr %0, align 8, !tbaa !1032
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ %12, %11 ], [ %9, %2 ]
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %4) #21
  %16 = icmp eq ptr %8, null
  br i1 %16, label %24, label %17, !prof !2156

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.value_range_d, ptr %8, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !1038
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !2157

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !1032
  %23 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %22, ptr noundef nonnull %19) #21
  br label %24

24:                                               ; preds = %21, %17, %13
  ret void
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_fit_type_double(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_and_canonicalize_value_range(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !2158 !PGOFuncName !2159 {
  %6 = add i32 %1, -3
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %16, label %8, !prof !2160

8:                                                ; preds = %5
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 23
  br i1 %11, label %12, label %16, !prof !2161

12:                                               ; preds = %8
  %13 = load i64, ptr %3, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %17, label %16, !prof !2161

16:                                               ; preds = %5, %12, %8
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  br label %72

17:                                               ; preds = %12
  %18 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20, !prof !2162

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !1036
  %23 = tail call ptr @build_int_cst(ptr noundef %22, i64 noundef 1) #21
  %24 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef nonnull %3, ptr noundef %23, i32 noundef 0) #21
  %25 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef nonnull %2, ptr noundef %23, i32 noundef 0) #21
  %26 = tail call i32 @tree_int_cst_lt(ptr noundef %25, ptr noundef %24) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30, !prof !2163

28:                                               ; preds = %20
  %29 = icmp eq i32 %1, 1
  br i1 %29, label %33, label %68

30:                                               ; preds = %20
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %72

31:                                               ; preds = %17
  %32 = icmp eq i32 %1, 2
  br i1 %32, label %33, label %68, !prof !2164

33:                                               ; preds = %28, %31
  %34 = phi ptr [ %2, %31 ], [ %24, %28 ]
  %35 = phi ptr [ %3, %31 ], [ %25, %28 ]
  %36 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %34) #20, !range !1042
  %37 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %35) #20, !range !1042
  %38 = icmp ne i8 %36, 0
  %39 = icmp ne i8 %37, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %67, label %41, !prof !2165

41:                                               ; preds = %33
  br i1 %38, label %42, label %58, !prof !2166

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !1036
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 2097152
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %51, label %48, !prof !2167

48:                                               ; preds = %42
  %49 = tail call i32 @integer_zerop(ptr noundef %35) #21
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58, !prof !2168

51:                                               ; preds = %48, %42
  %52 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !1036
  %54 = tail call ptr @build_int_cst(ptr noundef %53, i64 noundef 1) #21
  %55 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %35, ptr noundef %54, i32 noundef 0) #21
  %56 = load ptr, ptr %52, align 8, !tbaa !1036
  %57 = tail call fastcc ptr @vrp_val_max(ptr noundef %56) #20
  br label %68

58:                                               ; preds = %48, %41
  %59 = icmp eq i8 %37, 0
  br i1 %59, label %68, label %60, !prof !2169

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !1036
  %63 = tail call ptr @build_int_cst(ptr noundef %62, i64 noundef 1) #21
  %64 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %34, ptr noundef %63, i32 noundef 0) #21
  %65 = load ptr, ptr %61, align 8, !tbaa !1036
  %66 = tail call fastcc ptr @vrp_val_min(ptr noundef %65) #20
  br label %68

67:                                               ; preds = %33
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %72

68:                                               ; preds = %28, %51, %60, %58, %31
  %69 = phi ptr [ %3, %31 ], [ %57, %51 ], [ %35, %58 ], [ %64, %60 ], [ %25, %28 ]
  %70 = phi ptr [ %2, %31 ], [ %55, %51 ], [ %34, %58 ], [ %66, %60 ], [ %24, %28 ]
  %71 = phi i32 [ 1, %31 ], [ 1, %51 ], [ 2, %58 ], [ 1, %60 ], [ 1, %28 ]
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef %71, ptr noundef %70, ptr noundef %69, ptr noundef %4) #20
  br label %72

72:                                               ; preds = %67, %30, %68, %16
  ret void
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @value_ranges_intersect_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !2170 !PGOFuncName !2171 {
  %3 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1073
  %5 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1031
  %7 = tail call fastcc i32 @operand_less_p(ptr noundef %4, ptr noundef %6) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !2172

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1073
  %12 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1031
  %14 = tail call fastcc i32 @operand_less_p(ptr noundef %11, ptr noundef %13) #20
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i8 [ 0, %2 ], [ %16, %9 ]
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @negative_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !2173 !PGOFuncName !2174 {
  %2 = tail call fastcc ptr @vrp_val_min(ptr noundef %0) #20
  %3 = tail call fastcc ptr @make_overflow_infinity(ptr noundef %2) #20
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_value_range(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !2175 !PGOFuncName !2176 {
  %3 = load i32, ptr %1, align 8, !tbaa !1024
  %4 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1031
  %6 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1073
  %8 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_with_constant_singleton_value_range(ptr noundef %0) unnamed_addr #0 !prof !2177 !PGOFuncName !2178 {
  %2 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %25, !prof !2179

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %25, !prof !2180

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %0) #20
  %10 = load i32, ptr %9, align 8, !tbaa !1024
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %25, !prof !2181

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.value_range_d, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !1031
  %15 = getelementptr inbounds %struct.value_range_d, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !1073
  %17 = tail call i32 @operand_equal_p(ptr noundef %14, ptr noundef %16, i32 noundef 0) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19, !prof !2182

19:                                               ; preds = %12
  %20 = load ptr, ptr %13, align 8, !tbaa !1031
  %21 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %20) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23, !prof !2183

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 8, !tbaa !1031
  br label %25

25:                                               ; preds = %8, %12, %19, %4, %1, %23
  %26 = phi ptr [ %24, %23 ], [ %0, %1 ], [ null, %4 ], [ null, %19 ], [ null, %12 ], [ null, %8 ]
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_undefined(ptr nocapture noundef %0) unnamed_addr #0 !prof !1166 !PGOFuncName !2184 {
  store i32 0, ptr %0, align 8, !tbaa !1024
  %2 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %3, align 8, !tbaa !1038
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @bitmap_clear(ptr noundef nonnull %4) #21
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @range_is_null(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !2185 !PGOFuncName !2186 {
  %2 = load i32, ptr %0, align 8, !tbaa !1024
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %15, !prof !2187

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1031
  %7 = tail call i32 @integer_zerop(ptr noundef %6) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !prof !2188

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1073
  %12 = tail call i32 @integer_zerop(ptr noundef %11) #21
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %9, %4, %1
  %16 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %14, %9 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_null(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2189 !PGOFuncName !2190 {
  %3 = tail call ptr @build_int_cst(ptr noundef %1, i64 noundef 0) #21
  %4 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1038
  tail call fastcc void @set_value_range_to_value(ptr noundef %0, ptr noundef %3, ptr noundef %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @overflow_infinity_range_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !2191 !PGOFuncName !2192 {
  %2 = load i32, ptr %0, align 8, !tbaa !1024
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %13, !prof !2193

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1031
  %7 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %6) #20, !range !1042
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13, !prof !2194

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1073
  %12 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %11) #20, !range !1042
  br label %13

13:                                               ; preds = %4, %9, %1
  %14 = phi i8 [ 0, %1 ], [ 1, %4 ], [ %12, %9 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_truthvalue(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2195 !PGOFuncName !2196 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1023
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8, !prof !2197

7:                                                ; preds = %2
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %13

8:                                                ; preds = %2
  %9 = tail call ptr @build_int_cst(ptr noundef nonnull %1, i64 noundef 0) #21
  %10 = tail call ptr @build_int_cst(ptr noundef nonnull %1, i64 noundef 1) #21
  %11 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %12) #20
  br label %13

13:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vrp_int_const_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !2198 !PGOFuncName !2199 {
  %4 = tail call ptr @int_const_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #21
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1036
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 2097152
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %28, label %10, !prof !2200

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @compare_values(ptr noundef %4, ptr noundef nonnull %1) #20
  %12 = icmp ne i32 %0, 63
  %13 = icmp ult i32 %11, 2
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  switch i32 %0, label %119 [
    i32 64, label %16
    i32 65, label %17
  ], !prof !2201

16:                                               ; preds = %15
  switch i32 %11, label %24 [
    i32 -1, label %119
    i32 0, label %119
  ]

17:                                               ; preds = %15
  %18 = tail call i32 @integer_zerop(ptr noundef nonnull %1) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %119, !prof !2202

20:                                               ; preds = %17
  %21 = tail call ptr @int_const_binop(i32 noundef 67, ptr noundef %4, ptr noundef nonnull %1, i32 noundef 0) #21
  %22 = tail call fastcc i32 @compare_values(ptr noundef %21, ptr noundef %2) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %119, label %24, !prof !2203

24:                                               ; preds = %16, %10, %20
  %25 = tail call ptr @copy_node_stat(ptr noundef %4) #21
  %26 = load i64, ptr %25, align 8
  %27 = or i64 %26, 134217728
  store i64 %27, ptr %25, align 8
  br label %119

28:                                               ; preds = %3
  %29 = load i32, ptr @flag_wrapv, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %119, !prof !2204

31:                                               ; preds = %28
  %32 = load i64, ptr %4, align 8
  %33 = and i64 %32, 134217728
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %43, label %35, !prof !2205

35:                                               ; preds = %31
  %36 = load i64, ptr %1, align 8
  %37 = and i64 %36, 134217728
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43, !prof !2206

39:                                               ; preds = %35
  %40 = load i64, ptr %2, align 8
  %41 = and i64 %40, 134217728
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %49, label %43, !prof !2207

43:                                               ; preds = %39, %35, %31
  %44 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !1042
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %49, !prof !2208

46:                                               ; preds = %43
  %47 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !1042
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %119, label %49, !prof !2209

49:                                               ; preds = %46, %43, %39
  %50 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %1) #21
  %51 = tail call i32 @tree_int_cst_sgn(ptr noundef %2) #21
  %52 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !1036
  %54 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %53) #20, !range !1042
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56, !prof !2210

56:                                               ; preds = %49
  %57 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %53) #20, !range !1042
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %119, label %59, !prof !2210

59:                                               ; preds = %56, %49
  %60 = icmp ne i32 %0, 63
  %61 = icmp eq i32 %50, %51
  %62 = select i1 %60, i1 true, i1 %61
  %63 = xor i1 %62, true
  %64 = icmp eq i32 %0, 64
  %65 = select i1 %64, i1 %61, i1 false
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %67, label %73, !prof !2211

67:                                               ; preds = %59
  %68 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !1042
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %70, !prof !2212

70:                                               ; preds = %67
  %71 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !1042
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %119, !prof !2213

73:                                               ; preds = %59, %70, %67
  switch i32 %0, label %81 [
    i32 84, label %74
    i32 76, label %74
    i32 70, label %74
    i32 69, label %74
    i32 68, label %74
    i32 67, label %74
    i32 65, label %80
  ], !prof !2214

74:                                               ; preds = %73, %73, %73, %73, %73, %73
  %75 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !1042
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %119, !prof !2215

77:                                               ; preds = %74
  %78 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !1042
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %90, label %119, !prof !2216

80:                                               ; preds = %73
  br i1 %61, label %101, label %110, !prof !2217

81:                                               ; preds = %73
  br i1 %60, label %90, label %82, !prof !1482

82:                                               ; preds = %81
  %83 = icmp sgt i32 %50, -1
  br i1 %83, label %84, label %87, !prof !2218

84:                                               ; preds = %82
  %85 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %2) #20, !range !1042
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %101, label %110, !prof !2218

87:                                               ; preds = %82
  %88 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %2) #20, !range !1042
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %110, label %101, !prof !2219

90:                                               ; preds = %77, %81
  switch i32 %0, label %110 [
    i32 64, label %91
    i32 84, label %99
    i32 67, label %101
    i32 76, label %101
    i32 70, label %101
    i32 69, label %101
    i32 68, label %101
  ], !prof !2220

91:                                               ; preds = %90
  %92 = icmp sgt i32 %50, -1
  br i1 %92, label %93, label %96, !prof !2221

93:                                               ; preds = %91
  %94 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %2) #20, !range !1042
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %101, label %110, !prof !2221

96:                                               ; preds = %91
  %97 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %2) #20, !range !1042
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %110, label %101, !prof !2222

99:                                               ; preds = %90
  %100 = icmp sgt i32 %50, -1
  br i1 %100, label %101, label %110, !prof !2223

101:                                              ; preds = %90, %90, %90, %90, %90, %99, %96, %93, %87, %84, %80
  %102 = load ptr, ptr %52, align 8, !tbaa !1036
  %103 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %102) #20, !range !1042
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %107, label %105, !prof !2224

105:                                              ; preds = %101
  %106 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef %102) #20
  br label %119

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 14
  %109 = load ptr, ptr %108, align 8, !tbaa !1036
  br label %119

110:                                              ; preds = %80, %84, %87, %99, %93, %96, %90
  %111 = load ptr, ptr %52, align 8, !tbaa !1036
  %112 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %111) #20, !range !1042
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %116, label %114, !prof !2225

114:                                              ; preds = %110
  %115 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef %111) #20
  br label %119

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.tree_type, ptr %111, i64 0, i32 13
  %118 = load ptr, ptr %117, align 8, !tbaa !1036
  br label %119

119:                                              ; preds = %16, %16, %46, %28, %17, %15, %24, %20, %56, %70, %77, %74, %107, %105, %116, %114
  %120 = phi ptr [ null, %56 ], [ null, %70 ], [ null, %77 ], [ null, %74 ], [ %106, %105 ], [ %109, %107 ], [ %115, %114 ], [ %118, %116 ], [ %4, %28 ], [ %4, %46 ], [ %25, %24 ], [ %4, %20 ], [ %4, %15 ], [ %4, %17 ], [ %4, %16 ], [ %4, %16 ]
  ret ptr %120
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_expr_computes_nonnegative(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2226 !PGOFuncName !2227 {
  %3 = tail call zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) #21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11, !prof !2228

5:                                                ; preds = %2
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %11, !prof !2229

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @ssa_name_nonnegative_p(ptr noundef nonnull %0) #20, !range !1042
  br label %11

11:                                               ; preds = %5, %9, %2
  %12 = phi i8 [ 1, %2 ], [ 0, %5 ], [ %10, %9 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @range_includes_zero_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !2230 !PGOFuncName !2231 {
  %2 = load i32, ptr %0, align 8, !tbaa !1024
  switch i32 %2, label %3 [
    i32 0, label %6
    i32 3, label %6
  ], !prof !2232

3:                                                ; preds = %1
  %4 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !1042
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !2233

6:                                                ; preds = %1, %1, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1344, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %3, %6
  %8 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !1031
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1036
  %12 = tail call ptr @build_int_cst(ptr noundef %11, i64 noundef 0) #21
  %13 = tail call fastcc i32 @value_inside_range(ptr noundef %12, ptr noundef nonnull %0) #20, !range !2234
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i8
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @abs_extent_range(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !2235 !PGOFuncName !2236 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %8, label %7, !prof !2237

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 599, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 23
  br i1 %11, label %13, label %12, !prof !2237

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 600, ptr noundef nonnull @.str.1) #21
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !1036
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65535
  %19 = add nsw i32 %18, -6
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %24, label %21, !prof !2238

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #21
  %22 = load ptr, ptr %14, align 8, !tbaa !1036
  %23 = load i64, ptr %22, align 8
  br label %24

24:                                               ; preds = %13, %21
  %25 = phi i64 [ %16, %13 ], [ %23, %21 ]
  %26 = phi ptr [ %15, %13 ], [ %22, %21 ]
  %27 = and i64 %25, 2097152
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29, !prof !2237

29:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 602, ptr noundef nonnull @.str.1) #21
  %30 = load ptr, ptr %14, align 8, !tbaa !1036
  br label %31

31:                                               ; preds = %24, %29
  %32 = phi ptr [ %26, %24 ], [ %30, %29 ]
  %33 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef 82, ptr noundef %32, ptr noundef nonnull %1) #21
  %34 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !1036
  %36 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef 82, ptr noundef %35, ptr noundef nonnull %2) #21
  %37 = load i64, ptr %33, align 8
  %38 = and i64 %37, 134217728
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44, !prof !2237

40:                                               ; preds = %31
  %41 = load i64, ptr %36, align 8
  %42 = and i64 %41, 134217728
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %45, label %44, !prof !2239

44:                                               ; preds = %40, %31
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %56

45:                                               ; preds = %40
  %46 = tail call fastcc i32 @compare_values(ptr noundef nonnull %33, ptr noundef nonnull %36) #20
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %51, label %48, !prof !2240

48:                                               ; preds = %45
  %49 = icmp ult i32 %46, 2
  br i1 %49, label %51, label %50, !prof !2241

50:                                               ; preds = %48
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %56

51:                                               ; preds = %48, %45
  %52 = phi ptr [ %36, %45 ], [ %33, %48 ]
  %53 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !1036
  %55 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef 79, ptr noundef %54, ptr noundef nonnull %52) #21
  tail call fastcc void @set_and_canonicalize_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %55, ptr noundef nonnull %52, ptr noundef null) #20
  br label %56

56:                                               ; preds = %51, %50, %44
  ret void
}

; Function Attrs: optsize
declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @value_inside_range(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !2242 !PGOFuncName !2243 {
  %3 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1031
  %5 = tail call fastcc i32 @operand_less_p(ptr noundef %0, ptr noundef %4) #20
  switch i32 %5, label %7 [
    i32 -2, label %15
    i32 1, label %6
  ], !prof !2244

6:                                                ; preds = %2
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !1073
  %10 = tail call fastcc i32 @operand_less_p(ptr noundef %9, ptr noundef %0) #20
  %11 = icmp eq i32 %10, -2
  br i1 %11, label %15, label %12, !prof !2245

12:                                               ; preds = %7
  %13 = icmp eq i32 %10, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %7, %2, %12, %6
  %16 = phi i32 [ 0, %6 ], [ %14, %12 ], [ %5, %2 ], [ -2, %7 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vrp_meet(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !2246 !PGOFuncName !2247 {
  %3 = load i32, ptr %0, align 8, !tbaa !1024
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !2248

5:                                                ; preds = %2
  tail call fastcc void @copy_value_range(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %191

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !1024
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i32 %3, 3
  %10 = or i1 %9, %8
  br i1 %10, label %191, label %11, !prof !2249

11:                                               ; preds = %6
  %12 = icmp eq i32 %7, 3
  br i1 %12, label %13, label %14, !prof !2250

13:                                               ; preds = %11
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %191

14:                                               ; preds = %11
  %15 = icmp eq i32 %3, 1
  %16 = icmp eq i32 %7, 1
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %77, !prof !2251

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !1031
  %21 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !1031
  %23 = tail call fastcc i32 @compare_values(ptr noundef %20, ptr noundef %22) #20
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %27, label %25, !prof !2252

25:                                               ; preds = %18
  %26 = icmp eq i32 %23, -1
  br i1 %26, label %27, label %147, !prof !2253

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %21, %18 ], [ %19, %25 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !1031
  %30 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !1073
  %32 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !1073
  %34 = tail call fastcc i32 @compare_values(ptr noundef %31, ptr noundef %33) #20
  %35 = add i32 %34, 1
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %39, label %37, !prof !2254

37:                                               ; preds = %27
  %38 = icmp eq i32 %34, 1
  br i1 %38, label %39, label %147, !prof !2255

39:                                               ; preds = %37, %27
  %40 = phi ptr [ %32, %27 ], [ %30, %37 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !1073
  %42 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !1036
  %44 = load i64, ptr %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -6
  %48 = icmp ult i32 %47, 3
  br i1 %48, label %49, label %61, !prof !2256

49:                                               ; preds = %39
  %50 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %29) #20, !range !1042
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55, !prof !2257

52:                                               ; preds = %49
  %53 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %29) #20, !range !1042
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %61, label %55, !prof !2258

55:                                               ; preds = %52, %49
  %56 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %41) #20, !range !1042
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %147, !prof !2259

58:                                               ; preds = %55
  %59 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %41) #20, !range !1042
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %147, !prof !2260

61:                                               ; preds = %39, %58, %52
  %62 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !1038
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %65, !prof !2261

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !1038
  %68 = icmp eq ptr %67, null
  %69 = icmp eq ptr %63, %67
  %70 = or i1 %68, %69
  br i1 %70, label %72, label %71, !prof !2262

71:                                               ; preds = %65
  tail call void @bitmap_and_into(ptr noundef nonnull %63, ptr noundef nonnull %67) #21
  br label %74

72:                                               ; preds = %65
  br i1 %68, label %73, label %74, !prof !2263

73:                                               ; preds = %72
  tail call void @bitmap_clear(ptr noundef nonnull %63) #21
  br label %74

74:                                               ; preds = %61, %71, %73, %72
  %75 = load i32, ptr %0, align 8, !tbaa !1024
  %76 = load ptr, ptr %62, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef %75, ptr noundef nonnull %29, ptr noundef %41, ptr noundef %76) #20
  br label %191

77:                                               ; preds = %14
  %78 = icmp eq i32 %3, 2
  %79 = icmp eq i32 %7, 2
  br i1 %78, label %80, label %113, !prof !2264

80:                                               ; preds = %77
  br i1 %79, label %81, label %114, !prof !2265

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !1031
  %84 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !1031
  %86 = tail call fastcc i32 @compare_values(ptr noundef %83, ptr noundef %85) #20
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %147, !prof !2266

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !1073
  %91 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !1073
  %93 = tail call fastcc i32 @compare_values(ptr noundef %90, ptr noundef %92) #20
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %147, !prof !2267

95:                                               ; preds = %88
  %96 = load ptr, ptr %82, align 8, !tbaa !1031
  %97 = load ptr, ptr %89, align 8, !tbaa !1073
  %98 = tail call fastcc i32 @compare_values(ptr noundef %96, ptr noundef %97) #20
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %147, !prof !2268

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !1038
  %103 = icmp eq ptr %102, null
  br i1 %103, label %191, label %104, !prof !2269

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !1038
  %107 = icmp eq ptr %106, null
  %108 = icmp eq ptr %102, %106
  %109 = or i1 %107, %108
  br i1 %109, label %111, label %110, !prof !2270

110:                                              ; preds = %104
  tail call void @bitmap_and_into(ptr noundef nonnull %102, ptr noundef nonnull %106) #21
  br label %191

111:                                              ; preds = %104
  br i1 %107, label %112, label %191, !prof !2271

112:                                              ; preds = %111
  tail call void @bitmap_clear(ptr noundef nonnull %102) #21
  br label %191

113:                                              ; preds = %77
  br i1 %79, label %114, label %146, !prof !2272

114:                                              ; preds = %80, %113
  %115 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !1042
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %147, !prof !2273

117:                                              ; preds = %114
  %118 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %1) #20, !range !1042
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %147, !prof !2274

120:                                              ; preds = %117
  %121 = tail call fastcc zeroext i8 @value_ranges_intersect_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #20, !range !1042
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %147, !prof !2275

123:                                              ; preds = %120
  %124 = load i32, ptr %1, align 8, !tbaa !1024
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %133, !prof !2276

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !1031
  %129 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !1073
  %131 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %128, ptr noundef %130, ptr noundef %132) #20
  br label %133

133:                                              ; preds = %126, %123
  %134 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !1038
  %136 = icmp eq ptr %135, null
  br i1 %136, label %191, label %137, !prof !2277

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !1038
  %140 = icmp eq ptr %139, null
  %141 = icmp eq ptr %135, %139
  %142 = or i1 %140, %141
  br i1 %142, label %144, label %143, !prof !2278

143:                                              ; preds = %137
  tail call void @bitmap_and_into(ptr noundef nonnull %135, ptr noundef nonnull %139) #21
  br label %191

144:                                              ; preds = %137
  br i1 %140, label %145, label %191, !prof !2279

145:                                              ; preds = %144
  tail call void @bitmap_clear(ptr noundef nonnull %135) #21
  br label %191

146:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6245, ptr noundef nonnull @.str.1) #21
  br label %191

147:                                              ; preds = %55, %58, %37, %25, %114, %117, %120, %81, %88, %95
  %148 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !1042
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %190, !prof !2280

150:                                              ; preds = %147
  %151 = load i32, ptr %0, align 8, !tbaa !1024
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %158, !prof !2281

153:                                              ; preds = %150
  %154 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %0) #20, !range !1042
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %164, label %156, !prof !2282

156:                                              ; preds = %153
  %157 = load i32, ptr %0, align 8, !tbaa !1024
  br label %158

158:                                              ; preds = %156, %150
  %159 = phi i32 [ %157, %156 ], [ %151, %150 ]
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %190, !prof !2283

161:                                              ; preds = %158
  %162 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %0) #20, !range !1042
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %190, label %164, !prof !2284

164:                                              ; preds = %161, %153
  %165 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %1) #20, !range !1042
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %190, !prof !2285

167:                                              ; preds = %164
  %168 = load i32, ptr %1, align 8, !tbaa !1024
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %175, !prof !2286

170:                                              ; preds = %167
  %171 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %1) #20, !range !1042
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %181, label %173, !prof !2287

173:                                              ; preds = %170
  %174 = load i32, ptr %1, align 8, !tbaa !1024
  br label %175

175:                                              ; preds = %173, %167
  %176 = phi i32 [ %174, %173 ], [ %168, %167 ]
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %190, !prof !2288

178:                                              ; preds = %175
  %179 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %1) #20, !range !1042
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %190, label %181, !prof !2289

181:                                              ; preds = %178, %170
  %182 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !1031
  %184 = getelementptr inbounds %struct.tree_common, ptr %183, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !1036
  tail call fastcc void @set_value_range_to_nonnull(ptr noundef nonnull %0, ptr noundef %185) #20
  %186 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !1038
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189, !prof !2290

189:                                              ; preds = %181
  tail call void @bitmap_clear(ptr noundef nonnull %187) #21
  br label %191

190:                                              ; preds = %178, %175, %164, %161, %158, %147
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %191

191:                                              ; preds = %133, %100, %74, %181, %189, %146, %143, %145, %144, %111, %112, %110, %6, %5, %13, %190
  ret void
}

; Function Attrs: optsize
declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef writeonly %5) unnamed_addr #0 !prof !2291 !PGOFuncName !2292 {
  %7 = icmp eq ptr %5, null
  br i1 %7, label %9, label %8, !prof !2293

8:                                                ; preds = %6
  store i8 1, ptr %5, align 1, !tbaa !1036
  br label %9

9:                                                ; preds = %8, %6
  %10 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1036
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %38 [
    i16 6, label %14
    i16 7, label %14
    i16 8, label %14
    i16 10, label %14
    i16 12, label %14
  ], !prof !2294

14:                                               ; preds = %9, %9, %9, %9, %9
  %15 = icmp eq i8 %3, 0
  br i1 %15, label %36, label %16, !prof !2295

16:                                               ; preds = %14
  br i1 %7, label %20, label %17, !prof !2296

17:                                               ; preds = %16
  %18 = tail call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %4) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %38, !prof !2297

20:                                               ; preds = %17, %16
  store i8 0, ptr %5, align 1, !tbaa !1036
  %21 = load i64, ptr %1, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  %24 = load i64, ptr %2, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %23, label %27, label %32, !prof !2298

27:                                               ; preds = %20
  br i1 %26, label %28, label %30, !prof !2299

28:                                               ; preds = %27
  %29 = tail call fastcc ptr @compare_names(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %4) #20
  br label %38

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @compare_name_with_value(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %4) #20
  br label %38

32:                                               ; preds = %20
  br i1 %26, label %33, label %38, !prof !2300

33:                                               ; preds = %32
  %34 = tail call i32 @swap_tree_comparison(i32 noundef %0) #21
  %35 = tail call fastcc ptr @compare_name_with_value(i32 noundef %34, ptr noundef nonnull %2, ptr noundef nonnull %1, ptr noundef %4) #20
  br label %38

36:                                               ; preds = %14
  %37 = tail call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %4) #20
  br label %38

38:                                               ; preds = %32, %17, %9, %36, %33, %30, %28
  %39 = phi ptr [ %29, %28 ], [ %31, %30 ], [ %35, %33 ], [ %37, %36 ], [ null, %9 ], [ %18, %17 ], [ null, %32 ]
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !2301 !PGOFuncName !2302 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !2303

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %1) #20
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  %12 = load i64, ptr %2, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %17, label %15, !prof !2304

15:                                               ; preds = %10
  %16 = icmp ne ptr %11, null
  br label %24

17:                                               ; preds = %10
  %18 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %2) #20
  %19 = icmp ne ptr %11, null
  %20 = icmp ne ptr %18, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %24, !prof !2305

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @compare_ranges(i32 noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %18, ptr noundef %3) #20
  br label %38

24:                                               ; preds = %15, %17
  %25 = phi i1 [ false, %15 ], [ %20, %17 ]
  %26 = phi i1 [ %16, %15 ], [ %19, %17 ]
  %27 = phi ptr [ null, %15 ], [ %18, %17 ]
  %28 = icmp eq ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32, !prof !2306

30:                                               ; preds = %24
  %31 = tail call fastcc ptr @compare_range_with_value(i32 noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2, ptr noundef %3) #20
  br label %38

32:                                               ; preds = %24
  %33 = icmp eq ptr %11, null
  %34 = select i1 %33, i1 %25, i1 false
  br i1 %34, label %35, label %38, !prof !2307

35:                                               ; preds = %32
  %36 = tail call i32 @swap_tree_comparison(i32 noundef %0) #21
  %37 = tail call fastcc ptr @compare_range_with_value(i32 noundef %36, ptr noundef nonnull %27, ptr noundef nonnull %1, ptr noundef %3) #20
  br label %38

38:                                               ; preds = %32, %35, %30, %22
  %39 = phi ptr [ %23, %22 ], [ %31, %30 ], [ %37, %35 ], [ null, %32 ]
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compare_names(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !2308 !PGOFuncName !2309 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca %struct.bitmap_iterator, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.value_range_d, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.value_range_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  %12 = tail call fastcc ptr @get_value_range(ptr noundef %1) #20
  %13 = getelementptr inbounds %struct.value_range_d, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !1038
  %15 = tail call fastcc ptr @get_value_range(ptr noundef %2) #20
  %16 = getelementptr inbounds %struct.value_range_d, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !1038
  %18 = load ptr, ptr @compare_names.s_obstack, align 8, !tbaa !1032
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !2310

20:                                               ; preds = %4
  %21 = load ptr, ptr @compare_names.s_e2, align 8
  br label %28

22:                                               ; preds = %4
  %23 = tail call ptr @xmalloc(i64 noundef 104) #21
  store ptr %23, ptr @compare_names.s_obstack, align 8, !tbaa !1032
  tail call void @bitmap_obstack_initialize(ptr noundef %23) #21
  %24 = load ptr, ptr @compare_names.s_obstack, align 8, !tbaa !1032
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef %24) #21
  store ptr %25, ptr @compare_names.s_e1, align 8, !tbaa !1032
  %26 = load ptr, ptr @compare_names.s_obstack, align 8, !tbaa !1032
  %27 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef %26) #21
  store ptr %27, ptr @compare_names.s_e2, align 8, !tbaa !1032
  br label %28

28:                                               ; preds = %20, %22
  %29 = phi ptr [ %21, %20 ], [ %27, %22 ]
  %30 = icmp eq ptr %14, null
  %31 = load ptr, ptr @compare_names.s_e1, align 8
  %32 = select i1 %30, ptr %31, ptr %14, !prof !2311
  %33 = icmp eq ptr %17, null
  %34 = select i1 %33, ptr %29, ptr %17, !prof !2312
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !1036
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %32, i32 noundef %36) #21
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !1036
  %40 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %39) #21
  %41 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef %32, ptr noundef %34) #21
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %55, label %43, !prof !2313

43:                                               ; preds = %28
  %44 = load i32, ptr %35, align 8, !tbaa !1036
  %45 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %44) #21
  %46 = load i32, ptr %38, align 8, !tbaa !1036
  %47 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %34, i32 noundef %46) #21
  %48 = and i32 %0, -2
  %49 = icmp eq i32 %48, 100
  %50 = icmp eq i32 %0, 98
  %51 = or i1 %50, %49
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %54 = select i1 %51, ptr %52, ptr %53, !prof !2314
  br label %109

55:                                               ; preds = %28
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %32, ptr noundef nonnull %7) #20
  %56 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %7) #20, !range !1042
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %104, label %58, !prof !2315

58:                                               ; preds = %55, %100
  %59 = phi i32 [ %101, %100 ], [ -1, %55 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #22
  %60 = load i32, ptr %7, align 4, !tbaa !1130
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %9, i32 noundef %60) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %34, ptr noundef nonnull %8) #20
  %61 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %8) #20, !range !1042
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %100, label %63, !prof !2316

63:                                               ; preds = %58, %84
  %64 = phi i32 [ %86, %84 ], [ %59, %58 ]
  %65 = phi ptr [ %85, %84 ], [ null, %58 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  store i8 0, ptr %10, align 1, !tbaa !1036
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #22
  %66 = load i32, ptr %8, align 4, !tbaa !1130
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %11, i32 noundef %66) #20
  %67 = call fastcc ptr @compare_ranges(i32 noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10) #20
  %68 = icmp eq ptr %67, null
  br i1 %68, label %84, label %69, !prof !2317

69:                                               ; preds = %63
  %70 = icmp eq ptr %65, null
  %71 = icmp eq ptr %67, %65
  %72 = or i1 %70, %71
  br i1 %72, label %73, label %79, !prof !2318

73:                                               ; preds = %69
  %74 = load i8, ptr %10, align 1, !tbaa !1036
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %84, label %76, !prof !2319

76:                                               ; preds = %73
  %77 = icmp slt i32 %64, 0
  %78 = select i1 %77, i32 1, i32 %64
  br label %84

79:                                               ; preds = %69
  %80 = load i32, ptr %35, align 8, !tbaa !1036
  %81 = call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %80) #21
  %82 = load i32, ptr %38, align 8, !tbaa !1036
  %83 = call zeroext i8 @bitmap_clear_bit(ptr noundef %34, i32 noundef %82) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  br label %98

84:                                               ; preds = %73, %76, %63
  %85 = phi ptr [ %67, %73 ], [ %65, %63 ], [ %67, %76 ]
  %86 = phi i32 [ 0, %73 ], [ %64, %63 ], [ %78, %76 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %8) #20
  %87 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %8) #20, !range !1042
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %63, !prof !2320, !llvm.loop !2321

89:                                               ; preds = %84
  %90 = icmp eq ptr %85, null
  br i1 %90, label %100, label %91, !prof !2322

91:                                               ; preds = %89
  %92 = load i32, ptr %35, align 8, !tbaa !1036
  %93 = call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %92) #21
  %94 = load i32, ptr %38, align 8, !tbaa !1036
  %95 = call zeroext i8 @bitmap_clear_bit(ptr noundef %34, i32 noundef %94) #21
  %96 = icmp sgt i32 %86, 0
  br i1 %96, label %97, label %98, !prof !2323

97:                                               ; preds = %91
  store i8 1, ptr %3, align 1, !tbaa !1036
  br label %98

98:                                               ; preds = %79, %97, %91
  %99 = phi ptr [ %85, %91 ], [ %85, %97 ], [ null, %79 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #22
  br label %109

100:                                              ; preds = %58, %89
  %101 = phi i32 [ %86, %89 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %7) #20
  %102 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %7) #20, !range !1042
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %58, !prof !2324, !llvm.loop !2325

104:                                              ; preds = %100, %55
  %105 = load i32, ptr %35, align 8, !tbaa !1036
  %106 = call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %105) #21
  %107 = load i32, ptr %38, align 8, !tbaa !1036
  %108 = call zeroext i8 @bitmap_clear_bit(ptr noundef %34, i32 noundef %107) #21
  br label %109

109:                                              ; preds = %98, %104, %43
  %110 = phi ptr [ %54, %43 ], [ null, %104 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret ptr %110
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compare_name_with_value(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !2326 !PGOFuncName !2327 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.value_range_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #22
  %9 = tail call fastcc ptr @get_value_range(ptr noundef %1) #20
  %10 = getelementptr inbounds %struct.value_range_d, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1038
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !1036
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %8, i32 noundef %13) #20
  store i8 0, ptr %7, align 1, !tbaa !1036
  %14 = call fastcc ptr @compare_range_with_value(i32 noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %7) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18, !prof !2328

16:                                               ; preds = %4
  %17 = icmp eq ptr %11, null
  br i1 %17, label %57, label %24, !prof !2329

18:                                               ; preds = %4
  %19 = load i8, ptr %7, align 1, !tbaa !1036
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i32
  %22 = icmp eq ptr %11, null
  br i1 %22, label %23, label %24, !prof !2329

23:                                               ; preds = %18
  br i1 %20, label %55, label %57

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %21, %18 ], [ -1, %16 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %6) #20
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !1042
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %49, label %28, !prof !2330

28:                                               ; preds = %24, %44
  %29 = phi i32 [ %46, %44 ], [ %25, %24 ]
  %30 = phi ptr [ %45, %44 ], [ %14, %24 ]
  %31 = load i32, ptr %6, align 4, !tbaa !1130
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %8, i32 noundef %31) #20
  store i8 0, ptr %7, align 1, !tbaa !1036
  %32 = call fastcc ptr @compare_range_with_value(i32 noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %7) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34, !prof !2331

34:                                               ; preds = %28
  %35 = icmp eq ptr %30, null
  %36 = icmp eq ptr %32, %30
  %37 = or i1 %35, %36
  br i1 %37, label %38, label %57, !prof !2332

38:                                               ; preds = %34
  %39 = load i8, ptr %7, align 1, !tbaa !1036
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41, !prof !2333

41:                                               ; preds = %38
  %42 = icmp slt i32 %29, 0
  %43 = select i1 %42, i32 1, i32 %29, !prof !2334
  br label %44

44:                                               ; preds = %38, %28, %41
  %45 = phi ptr [ %32, %41 ], [ %30, %28 ], [ %32, %38 ]
  %46 = phi i32 [ %43, %41 ], [ %29, %28 ], [ 0, %38 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %47 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !1042
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %28, !prof !2335, !llvm.loop !2336

49:                                               ; preds = %44, %24
  %50 = phi ptr [ %14, %24 ], [ %45, %44 ]
  %51 = phi i32 [ %25, %24 ], [ %46, %44 ]
  %52 = icmp eq ptr %50, null
  br i1 %52, label %57, label %53, !prof !2337

53:                                               ; preds = %49
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %55, label %57, !prof !2338

55:                                               ; preds = %53, %23
  %56 = phi ptr [ %14, %23 ], [ %50, %53 ]
  store i8 1, ptr %3, align 1, !tbaa !1036
  br label %57

57:                                               ; preds = %34, %55, %16, %49, %53, %23
  %58 = phi ptr [ %14, %23 ], [ %50, %53 ], [ null, %49 ], [ null, %16 ], [ %56, %55 ], [ null, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret ptr %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compare_ranges(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !2339 !PGOFuncName !2340 {
  %5 = load i32, ptr %1, align 8, !tbaa !1024
  switch i32 %5, label %6 [
    i32 3, label %190
    i32 0, label %190
  ], !prof !2341

6:                                                ; preds = %4
  %7 = load i32, ptr %2, align 8, !tbaa !1024
  switch i32 %7, label %8 [
    i32 3, label %190
    i32 0, label %190
  ], !prof !2342

8:                                                ; preds = %6
  %9 = icmp eq i32 %5, 2
  %10 = icmp eq i32 %7, 2
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %44, !prof !2343

12:                                               ; preds = %8
  %13 = add i32 %0, -97
  %14 = icmp ult i32 %13, 4
  br i1 %9, label %15, label %17, !prof !2344

15:                                               ; preds = %12
  %16 = or i1 %14, %10
  br i1 %16, label %190, label %18, !prof !2345

17:                                               ; preds = %12
  br i1 %14, label %190, label %18, !prof !2346

18:                                               ; preds = %15, %17
  %19 = icmp eq i32 %5, 1
  %20 = select i1 %19, ptr %1, ptr %2, !prof !2347
  %21 = select i1 %19, ptr %2, ptr %1, !prof !2347
  %22 = icmp eq i32 %0, 102
  %23 = add i32 %0, -101
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %26, label %25, !prof !2348

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3379, ptr noundef nonnull @.str.1) #21
  br label %26

26:                                               ; preds = %18, %25
  %27 = getelementptr inbounds %struct.value_range_d, ptr %21, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !1031
  %29 = getelementptr inbounds %struct.value_range_d, ptr %20, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !1031
  %31 = tail call fastcc i32 @compare_values_warnv(ptr noundef %28, ptr noundef %30, ptr noundef %3) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %190, !prof !2349

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.value_range_d, ptr %21, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !1073
  %36 = getelementptr inbounds %struct.value_range_d, ptr %20, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !1073
  %38 = tail call fastcc i32 @compare_values_warnv(ptr noundef %35, ptr noundef %37, ptr noundef %3) #20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %190, !prof !2350

40:                                               ; preds = %33
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %43 = select i1 %22, ptr %41, ptr %42, !prof !2351
  br label %190

44:                                               ; preds = %8
  %45 = tail call fastcc zeroext i8 @usable_range_p(ptr noundef nonnull %1, ptr noundef %3) #20, !range !1042
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %190, label %47, !prof !2352

47:                                               ; preds = %44
  %48 = tail call fastcc zeroext i8 @usable_range_p(ptr noundef nonnull %2, ptr noundef %3) #20, !range !1042
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %190, label %50, !prof !2352

50:                                               ; preds = %47
  %51 = add i32 %0, -99
  %52 = icmp ult i32 %51, 2
  %53 = icmp eq i32 %0, 99
  %54 = select i1 %53, i32 97, i32 98
  %55 = select i1 %52, ptr %1, ptr %2, !prof !2353
  %56 = select i1 %52, ptr %2, ptr %1, !prof !2353
  %57 = select i1 %52, i32 %54, i32 %0, !prof !2353
  switch i32 %57, label %143 [
    i32 101, label %58
    i32 102, label %101
  ], !prof !2354

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !1031
  %61 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !1073
  %63 = tail call fastcc i32 @compare_values_warnv(ptr noundef %60, ptr noundef %62, ptr noundef %3) #20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %87, !prof !2355

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !1031
  %68 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !1073
  %70 = tail call fastcc i32 @compare_values_warnv(ptr noundef %67, ptr noundef %69, ptr noundef %3) #20
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %87, !prof !2356

72:                                               ; preds = %65
  %73 = load ptr, ptr %59, align 8, !tbaa !1031
  %74 = load ptr, ptr %66, align 8, !tbaa !1031
  %75 = tail call fastcc i32 @compare_values_warnv(ptr noundef %73, ptr noundef %74, ptr noundef %3) #20
  %76 = load ptr, ptr %61, align 8, !tbaa !1073
  %77 = load ptr, ptr %68, align 8, !tbaa !1073
  %78 = tail call fastcc i32 @compare_values_warnv(ptr noundef %76, ptr noundef %77, ptr noundef %3) #20
  switch i32 %75, label %83 [
    i32 0, label %79
    i32 -2, label %86
  ], !prof !2357

79:                                               ; preds = %72
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %81, label %83, !prof !2358

81:                                               ; preds = %79
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !1032
  br label %190

83:                                               ; preds = %79, %72
  %84 = icmp eq i32 %78, -2
  %85 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  br i1 %84, label %86, label %190, !prof !2359

86:                                               ; preds = %72, %83
  br label %190

87:                                               ; preds = %65, %58
  %88 = load ptr, ptr %59, align 8, !tbaa !1031
  %89 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !1073
  %91 = tail call fastcc i32 @compare_values_warnv(ptr noundef %88, ptr noundef %90, ptr noundef %3) #20
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %99, label %93, !prof !2360

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !1031
  %96 = load ptr, ptr %61, align 8, !tbaa !1073
  %97 = tail call fastcc i32 @compare_values_warnv(ptr noundef %95, ptr noundef %96, ptr noundef %3) #20
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %190, !prof !2361

99:                                               ; preds = %93, %87
  %100 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !1032
  br label %190

101:                                              ; preds = %50
  %102 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !1073
  %104 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !1031
  %106 = tail call fastcc i32 @compare_values_warnv(ptr noundef %103, ptr noundef %105, ptr noundef %3) #20
  %107 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !1031
  %109 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !1073
  %111 = tail call fastcc i32 @compare_values_warnv(ptr noundef %108, ptr noundef %110, ptr noundef %3) #20
  %112 = icmp eq i32 %106, -1
  br i1 %112, label %113, label %115, !prof !2362

113:                                              ; preds = %101
  %114 = icmp eq i32 %111, -1
  br i1 %114, label %119, label %121, !prof !2363

115:                                              ; preds = %101
  %116 = icmp eq i32 %106, 1
  %117 = icmp eq i32 %111, 1
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %121, !prof !2364

119:                                              ; preds = %115, %113
  %120 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !1032
  br label %190

121:                                              ; preds = %113, %115
  %122 = load ptr, ptr %107, align 8, !tbaa !1031
  %123 = load ptr, ptr %102, align 8, !tbaa !1073
  %124 = tail call fastcc i32 @compare_values_warnv(ptr noundef %122, ptr noundef %123, ptr noundef %3) #20
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %190, !prof !2365

126:                                              ; preds = %121
  %127 = load ptr, ptr %104, align 8, !tbaa !1031
  %128 = load ptr, ptr %109, align 8, !tbaa !1073
  %129 = tail call fastcc i32 @compare_values_warnv(ptr noundef %127, ptr noundef %128, ptr noundef %3) #20
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %190, !prof !2366

131:                                              ; preds = %126
  %132 = load ptr, ptr %107, align 8, !tbaa !1031
  %133 = load ptr, ptr %104, align 8, !tbaa !1031
  %134 = tail call fastcc i32 @compare_values_warnv(ptr noundef %132, ptr noundef %133, ptr noundef %3) #20
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %190, !prof !2367

136:                                              ; preds = %131
  %137 = load ptr, ptr %102, align 8, !tbaa !1073
  %138 = load ptr, ptr %109, align 8, !tbaa !1073
  %139 = tail call fastcc i32 @compare_values_warnv(ptr noundef %137, ptr noundef %138, ptr noundef %3) #20
  %140 = icmp eq i32 %139, 0
  %141 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %142 = select i1 %140, ptr %141, ptr null, !prof !2368
  br label %190

143:                                              ; preds = %50
  %144 = icmp eq i32 %57, 97
  %145 = icmp eq i32 %57, 98
  %146 = add i32 %57, -97
  %147 = icmp ult i32 %146, 2
  br i1 %147, label %148, label %189, !prof !2369

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !1073
  %151 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !1031
  %153 = tail call fastcc i32 @compare_values_warnv(ptr noundef %150, ptr noundef %152, ptr noundef %3) #20
  %154 = icmp eq i32 %153, -1
  %155 = select i1 %144, i1 %154, i1 false
  br i1 %155, label %160, label %156, !prof !2370

156:                                              ; preds = %148
  %157 = add i32 %153, 1
  %158 = icmp ult i32 %157, 2
  %159 = select i1 %145, i1 %158, i1 false
  br i1 %159, label %160, label %169, !prof !2371

160:                                              ; preds = %156, %148
  %161 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %56) #20, !range !1042
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %166, !prof !2372

163:                                              ; preds = %160
  %164 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %55) #20, !range !1042
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %167, label %166, !prof !2373

166:                                              ; preds = %163, %160
  store i8 1, ptr %3, align 1, !tbaa !1036
  br label %167

167:                                              ; preds = %166, %163
  %168 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !1032
  br label %190

169:                                              ; preds = %156
  %170 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 1
  %171 = load ptr, ptr %170, align 8, !tbaa !1031
  %172 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !1073
  %174 = tail call fastcc i32 @compare_values_warnv(ptr noundef %171, ptr noundef %173, ptr noundef %3) #20
  %175 = icmp ult i32 %174, 2
  %176 = select i1 %144, i1 %175, i1 false
  %177 = icmp eq i32 %174, 1
  %178 = select i1 %145, i1 %177, i1 false
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %180, label %190, !prof !2374

180:                                              ; preds = %169
  %181 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %56) #20, !range !1042
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %183, label %186, !prof !2375

183:                                              ; preds = %180
  %184 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %55) #20, !range !1042
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %187, label %186, !prof !2376

186:                                              ; preds = %183, %180
  store i8 1, ptr %3, align 1, !tbaa !1036
  br label %187

187:                                              ; preds = %186, %183
  %188 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !1032
  br label %190

189:                                              ; preds = %143
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3488, ptr noundef nonnull @.str.1) #21
  br label %190

190:                                              ; preds = %93, %86, %81, %83, %136, %167, %187, %169, %119, %131, %126, %121, %44, %47, %26, %33, %17, %15, %4, %4, %6, %6, %189, %99, %40
  %191 = phi ptr [ %43, %40 ], [ %100, %99 ], [ null, %189 ], [ null, %6 ], [ null, %6 ], [ null, %4 ], [ null, %4 ], [ null, %15 ], [ null, %17 ], [ null, %33 ], [ null, %26 ], [ null, %47 ], [ null, %44 ], [ %120, %119 ], [ null, %131 ], [ null, %126 ], [ null, %121 ], [ %168, %167 ], [ %188, %187 ], [ null, %169 ], [ %142, %136 ], [ %82, %81 ], [ %85, %83 ], [ null, %86 ], [ null, %93 ]
  ret ptr %191
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compare_range_with_value(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !2377 !PGOFuncName !2378 {
  %5 = load i32, ptr %1, align 8, !tbaa !1024
  switch i32 %5, label %17 [
    i32 3, label %144
    i32 0, label %144
    i32 2, label %6
  ], !prof !2379

6:                                                ; preds = %4
  %7 = add i32 %0, -97
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %144, label %9, !prof !2380

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @value_inside_range(ptr noundef %2, ptr noundef nonnull %1) #20, !range !2234
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %144, !prof !2381

12:                                               ; preds = %9
  %13 = icmp eq i32 %0, 102
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %16 = select i1 %13, ptr %14, ptr %15, !prof !2382
  br label %144

17:                                               ; preds = %4
  %18 = tail call fastcc zeroext i8 @usable_range_p(ptr noundef nonnull %1, ptr noundef %3) #20, !range !1042
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %144, label %20, !prof !2383

20:                                               ; preds = %17
  switch i32 %0, label %71 [
    i32 101, label %21
    i32 102, label %48
  ], !prof !2384

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !1031
  %24 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !1073
  %26 = tail call fastcc i32 @compare_values_warnv(ptr noundef %23, ptr noundef %25, ptr noundef %3) #20
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %22, align 8, !tbaa !1031
  br i1 %27, label %29, label %39, !prof !2385

29:                                               ; preds = %21
  %30 = tail call fastcc i32 @compare_values_warnv(ptr noundef %28, ptr noundef %2, ptr noundef %3) #20
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34, !prof !2386

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !1032
  br label %144

34:                                               ; preds = %29
  %35 = add i32 %30, 1
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %37, label %144, !prof !2387

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !1032
  br label %144

39:                                               ; preds = %21
  %40 = tail call fastcc i32 @compare_values_warnv(ptr noundef %2, ptr noundef %28, ptr noundef %3) #20
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %46, label %42, !prof !2388

42:                                               ; preds = %39
  %43 = load ptr, ptr %24, align 8, !tbaa !1073
  %44 = tail call fastcc i32 @compare_values_warnv(ptr noundef %43, ptr noundef %2, ptr noundef %3) #20
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %144, !prof !2389

46:                                               ; preds = %42, %39
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !1032
  br label %144

48:                                               ; preds = %20
  %49 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !1073
  %51 = tail call fastcc i32 @compare_values_warnv(ptr noundef %50, ptr noundef %2, ptr noundef %3) #20
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %58, label %53, !prof !2390

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !1031
  %56 = tail call fastcc i32 @compare_values_warnv(ptr noundef %55, ptr noundef %2, ptr noundef %3) #20
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %60, !prof !2391

58:                                               ; preds = %53, %48
  %59 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !1032
  br label %144

60:                                               ; preds = %53
  %61 = load ptr, ptr %54, align 8, !tbaa !1031
  %62 = load ptr, ptr %49, align 8, !tbaa !1073
  %63 = tail call fastcc i32 @compare_values_warnv(ptr noundef %61, ptr noundef %62, ptr noundef %3) #20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %144, !prof !2392

65:                                               ; preds = %60
  %66 = load ptr, ptr %54, align 8, !tbaa !1031
  %67 = tail call fastcc i32 @compare_values_warnv(ptr noundef %66, ptr noundef %2, ptr noundef %3) #20
  %68 = icmp eq i32 %67, 0
  %69 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %70 = select i1 %68, ptr %69, ptr null, !prof !2393
  br label %144

71:                                               ; preds = %20
  %72 = icmp eq i32 %0, 97
  %73 = icmp eq i32 %0, 98
  %74 = add i32 %0, -97
  %75 = icmp ult i32 %74, 2
  br i1 %75, label %76, label %107, !prof !2394

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !1073
  %79 = tail call fastcc i32 @compare_values_warnv(ptr noundef %78, ptr noundef %2, ptr noundef %3) #20
  %80 = icmp eq i32 %79, -1
  %81 = select i1 %72, i1 %80, i1 false
  br i1 %81, label %86, label %82, !prof !2395

82:                                               ; preds = %76
  %83 = add i32 %79, 1
  %84 = icmp ult i32 %83, 2
  %85 = select i1 %73, i1 %84, i1 false
  br i1 %85, label %86, label %92, !prof !2396

86:                                               ; preds = %82, %76
  %87 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !1042
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89, !prof !2397

89:                                               ; preds = %86
  store i8 1, ptr %3, align 1, !tbaa !1036
  br label %90

90:                                               ; preds = %89, %86
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !1032
  br label %144

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !1031
  %95 = tail call fastcc i32 @compare_values_warnv(ptr noundef %94, ptr noundef %2, ptr noundef %3) #20
  %96 = icmp ult i32 %95, 2
  %97 = select i1 %72, i1 %96, i1 false
  %98 = icmp eq i32 %95, 1
  %99 = select i1 %73, i1 %98, i1 false
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %101, label %144, !prof !2398

101:                                              ; preds = %92
  %102 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !1042
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104, !prof !2399

104:                                              ; preds = %101
  store i8 1, ptr %3, align 1, !tbaa !1036
  br label %105

105:                                              ; preds = %104, %101
  %106 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !1032
  br label %144

107:                                              ; preds = %71
  %108 = icmp eq i32 %0, 99
  %109 = icmp eq i32 %0, 100
  %110 = add i32 %0, -99
  %111 = icmp ult i32 %110, 2
  br i1 %111, label %112, label %143, !prof !2400

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !1031
  %115 = tail call fastcc i32 @compare_values_warnv(ptr noundef %114, ptr noundef %2, ptr noundef %3) #20
  %116 = icmp eq i32 %115, 1
  %117 = select i1 %108, i1 %116, i1 false
  %118 = icmp ult i32 %115, 2
  %119 = select i1 %109, i1 %118, i1 false
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %121, label %127, !prof !2401

121:                                              ; preds = %112
  %122 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !1042
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %125, label %124, !prof !2402

124:                                              ; preds = %121
  store i8 1, ptr %3, align 1, !tbaa !1036
  br label %125

125:                                              ; preds = %124, %121
  %126 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !1032
  br label %144

127:                                              ; preds = %112
  %128 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !1073
  %130 = tail call fastcc i32 @compare_values_warnv(ptr noundef %129, ptr noundef %2, ptr noundef %3) #20
  %131 = add i32 %130, 1
  %132 = icmp ult i32 %131, 2
  %133 = select i1 %108, i1 %132, i1 false
  %134 = icmp eq i32 %130, -1
  %135 = select i1 %109, i1 %134, i1 false
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %137, label %144, !prof !2403

137:                                              ; preds = %127
  %138 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !1042
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %141, label %140, !prof !2404

140:                                              ; preds = %137
  store i8 1, ptr %3, align 1, !tbaa !1036
  br label %141

141:                                              ; preds = %140, %137
  %142 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !1032
  br label %144

143:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3620, ptr noundef nonnull @.str.1) #21
  br label %144

144:                                              ; preds = %37, %32, %42, %34, %65, %125, %141, %127, %90, %105, %92, %60, %17, %9, %6, %4, %4, %143, %58, %46, %12
  %145 = phi ptr [ %16, %12 ], [ %47, %46 ], [ %59, %58 ], [ null, %143 ], [ null, %4 ], [ null, %4 ], [ null, %6 ], [ null, %9 ], [ null, %17 ], [ null, %60 ], [ %91, %90 ], [ %106, %105 ], [ null, %92 ], [ %126, %125 ], [ %142, %141 ], [ null, %127 ], [ %70, %65 ], [ null, %34 ], [ null, %42 ], [ %38, %37 ], [ %33, %32 ]
  ret ptr %145
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @usable_range_p(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !2405 !PGOFuncName !2406 {
  %3 = load i32, ptr %0, align 8, !tbaa !1024
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %6, label %5, !prof !2407

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 796, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1031
  %9 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %8) #20, !range !1042
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %27, label %11, !prof !2408

11:                                               ; preds = %6
  store i8 1, ptr %1, align 1, !tbaa !1036
  %12 = load ptr, ptr %7, align 8, !tbaa !1031
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !1036
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 2097152
  %17 = icmp eq i64 %16, 0
  %18 = load i32, ptr @flag_wrapv, align 4
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %17, i1 %19, i1 false
  %21 = load i32, ptr @flag_trapv, align 4
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  %24 = load i32, ptr @flag_strict_overflow, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %49, !prof !2409

27:                                               ; preds = %11, %6
  %28 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !1073
  %30 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %29) #20, !range !1042
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %48, label %32, !prof !2410

32:                                               ; preds = %27
  store i8 1, ptr %1, align 1, !tbaa !1036
  %33 = load ptr, ptr %28, align 8, !tbaa !1073
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !1036
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 2097152
  %38 = icmp eq i64 %37, 0
  %39 = load i32, ptr @flag_wrapv, align 4
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  %42 = load i32, ptr @flag_trapv, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  %45 = load i32, ptr @flag_strict_overflow, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !2411

48:                                               ; preds = %32, %27
  br label %49

49:                                               ; preds = %32, %11, %48
  %50 = phi i8 [ 1, %48 ], [ 0, %11 ], [ 0, %32 ]
  ret i8 %50
}

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_vr_for_comparison(ptr dead_on_unwind noalias nocapture writable sret(%struct.value_range_d) align 8 %0, i32 noundef %1) unnamed_addr #15 !prof !2412 !PGOFuncName !2413 {
  %3 = load ptr, ptr @vr_value, align 8, !tbaa !1032
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !1032
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !1295
  %7 = load i32, ptr %0, align 8
  switch i32 %7, label %17 [
    i32 3, label %8
    i32 0, label %8
  ]

8:                                                ; preds = %2, %2
  store i32 1, ptr %0, align 8, !tbaa !1024
  %9 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1167
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1168
  %14 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %13, i32 noundef %1) #20
  %15 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !1031
  %16 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  store ptr %14, ptr %16, align 8, !tbaa !1073
  br label %17

17:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_operand_equal_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2414 !PGOFuncName !2415 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %16, label %4, !prof !2416

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %16, !prof !2417

8:                                                ; preds = %4
  %9 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !2418

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %0) #20, !range !1042
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14, !prof !2419

14:                                               ; preds = %11
  %15 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !1042
  br label %16

16:                                               ; preds = %11, %4, %8, %2, %14
  %17 = phi i8 [ %15, %14 ], [ 1, %2 ], [ 0, %8 ], [ 0, %4 ], [ 1, %11 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_bitmap_equal_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2420 !PGOFuncName !2421 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %12, label %4, !prof !2422

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %12, !prof !2423

8:                                                ; preds = %4
  %9 = tail call zeroext i8 @bitmap_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %4, %8, %2
  %13 = phi i8 [ 1, %2 ], [ 0, %4 ], [ %11, %8 ]
  ret i8 %13
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_case_label_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !2424 !PGOFuncName !2425 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %8 = call fastcc zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef 1, ptr noundef %1, ptr noundef nonnull %6) #20
  %9 = load i64, ptr %6, align 8, !tbaa !1183
  %10 = call fastcc zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef %9, ptr noundef %2, ptr noundef nonnull %7) #20
  %11 = load i64, ptr %7, align 8, !tbaa !1183
  %12 = icmp eq i64 %9, %11
  %13 = or i8 %10, %8
  %14 = icmp eq i8 %13, 0
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %17, !prof !2426

16:                                               ; preds = %5
  store i64 1, ptr %3, align 8, !tbaa !1183
  store i64 0, ptr %4, align 8, !tbaa !1183
  br label %66

17:                                               ; preds = %5
  %18 = icmp eq i8 %10, 0
  %19 = icmp eq i8 %8, 0
  %20 = or i1 %19, %18
  %21 = sext i1 %18 to i64
  %22 = add i64 %11, %21
  %23 = trunc i64 %9 to i32
  %24 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %23) #20
  %25 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !1036
  %27 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %23) #20
  %28 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !1036
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31, !prof !2427

31:                                               ; preds = %17
  %32 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %23) #20
  %33 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !1036
  br label %35

35:                                               ; preds = %31, %17
  %36 = phi ptr [ %34, %31 ], [ %26, %17 ]
  %37 = add i64 %9, 1
  %38 = icmp ugt i64 %37, %22
  br i1 %38, label %62, label %39, !prof !2428

39:                                               ; preds = %35, %58
  %40 = phi i64 [ %60, %58 ], [ %37, %35 ]
  %41 = phi ptr [ %59, %58 ], [ %36, %35 ]
  %42 = trunc i64 %40 to i32
  %43 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %42) #20
  %44 = getelementptr inbounds %struct.tree_exp, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !1036
  %46 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %45, ptr noundef %41, i32 noundef 0) #21
  %47 = tail call i32 @integer_onep(ptr noundef %46) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49, !prof !2429

49:                                               ; preds = %39
  %50 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %42) #20
  %51 = getelementptr inbounds %struct.tree_exp, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !1036
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54, !prof !2430

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %42) #20
  %56 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !1036
  br label %58

58:                                               ; preds = %49, %54
  %59 = phi ptr [ %57, %54 ], [ %45, %49 ]
  %60 = add i64 %40, 1
  %61 = icmp ugt i64 %60, %22
  br i1 %61, label %62, label %39, !prof !2431, !llvm.loop !2432

62:                                               ; preds = %58, %39, %35
  %63 = phi i1 [ %20, %35 ], [ true, %39 ], [ %20, %58 ]
  store i64 %9, ptr %3, align 8, !tbaa !1183
  store i64 %22, ptr %4, align 8, !tbaa !1183
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i8
  br label %66

66:                                               ; preds = %62, %16
  %67 = phi i8 [ 0, %16 ], [ %65, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret i8 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !2433 !PGOFuncName !2434 {
  %5 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #20
  %6 = zext i32 %5 to i64
  %7 = icmp eq i64 %6, %1
  br i1 %7, label %33, label %8, !prof !2435

8:                                                ; preds = %4, %29
  %9 = phi i64 [ %31, %29 ], [ %1, %4 ]
  %10 = phi i64 [ %30, %29 ], [ %6, %4 ]
  %11 = add i64 %9, %10
  %12 = lshr i64 %11, 1
  %13 = trunc i64 %12 to i32
  %14 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %13) #20
  %15 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !1036
  %17 = tail call i32 @tree_int_cst_compare(ptr noundef %16, ptr noundef %2) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %33, label %19, !prof !2436

19:                                               ; preds = %8
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %29, label %21, !prof !2437

21:                                               ; preds = %19
  %22 = add nuw i64 %12, 1
  %23 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !1036
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26, !prof !2438

26:                                               ; preds = %21
  %27 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %24, ptr noundef %2) #21
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %33, label %29, !prof !2439

29:                                               ; preds = %21, %26, %19
  %30 = phi i64 [ %10, %26 ], [ %10, %21 ], [ %12, %19 ]
  %31 = phi i64 [ %22, %26 ], [ %22, %21 ], [ %9, %19 ]
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %8, !prof !2440, !llvm.loop !2441

33:                                               ; preds = %29, %26, %8, %4
  %34 = phi i64 [ %1, %4 ], [ %12, %8 ], [ %12, %26 ], [ %30, %29 ]
  %35 = phi i8 [ 0, %4 ], [ 1, %8 ], [ 1, %26 ], [ 0, %29 ]
  store i64 %34, ptr %3, align 8, !tbaa !1183
  ret i8 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #3 !prof !2442 !PGOFuncName !2443 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !1549
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #20
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !2444 !PGOFuncName !2445 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !2446

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !2447
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_range_with_scev(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !2448 !PGOFuncName !2449 {
  %5 = load i32, ptr %0, align 8, !tbaa !1024
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %105, label %7, !prof !2450

7:                                                ; preds = %4
  %8 = tail call ptr @analyze_scalar_evolution(ptr noundef %1, ptr noundef %3) #21
  %9 = tail call fastcc ptr @instantiate_parameters(ptr noundef %1, ptr noundef %8) #20
  %10 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %9) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12, !prof !2451

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !1038
  tail call fastcc void @set_value_range_to_value(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %14) #20
  br label %105

15:                                               ; preds = %7
  %16 = load i64, ptr %9, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 146
  br i1 %18, label %19, label %105, !prof !2452

19:                                               ; preds = %15
  %20 = load i32, ptr %1, align 8, !tbaa !2453
  %21 = tail call ptr @initial_condition_in_loop_num(ptr noundef nonnull %9, i32 noundef %20) #21
  %22 = load i32, ptr %1, align 8, !tbaa !2453
  %23 = tail call ptr @evolution_part_in_loop_num(ptr noundef nonnull %9, i32 noundef %22) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %105, label %25, !prof !2454

25:                                               ; preds = %19
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %23) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %105, label %28, !prof !2455

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @valid_value_p(ptr noundef %21) #20
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %105, label %31, !prof !2456

31:                                               ; preds = %28
  %32 = tail call i32 @scev_direction(ptr noundef nonnull %9) #21
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %105, label %34, !prof !2457

34:                                               ; preds = %31
  %35 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %9) #20
  %36 = tail call zeroext i8 @scev_probably_wraps_p(ptr noundef %21, ptr noundef nonnull %23, ptr noundef %2, ptr noundef %35, i8 noundef zeroext 1) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %105, !prof !2458

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !1036
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i16
  switch i16 %42, label %43 [
    i16 10, label %47
    i16 12, label %47
  ], !prof !2459

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 13
  %45 = load ptr, ptr %44, align 8, !tbaa !1036
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51, !prof !2460

47:                                               ; preds = %38, %38, %43
  %48 = tail call ptr @lower_bound_in_type(ptr noundef nonnull %40, ptr noundef nonnull %40) #21
  %49 = load i64, ptr %40, align 8
  %50 = trunc i64 %49 to i16
  br label %51

51:                                               ; preds = %43, %47
  %52 = phi i16 [ %42, %43 ], [ %50, %47 ]
  %53 = phi ptr [ %45, %43 ], [ %48, %47 ]
  switch i16 %52, label %54 [
    i16 10, label %58
    i16 12, label %58
  ], !prof !2459

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !1036
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60, !prof !2460

58:                                               ; preds = %51, %51, %54
  %59 = tail call ptr @upper_bound_in_type(ptr noundef nonnull %40, ptr noundef nonnull %40) #21
  br label %60

60:                                               ; preds = %54, %58
  %61 = phi ptr [ %59, %58 ], [ %56, %54 ]
  %62 = load i32, ptr %0, align 8, !tbaa !1024
  switch i32 %62, label %105 [
    i32 3, label %63
    i32 0, label %63
    i32 1, label %72
  ], !prof !2461

63:                                               ; preds = %60, %60
  %64 = icmp eq i32 %32, 1
  %65 = select i1 %64, ptr %53, ptr %21, !prof !2462
  %66 = select i1 %64, ptr %21, ptr %61, !prof !2462
  %67 = tail call fastcc i32 @compare_values(ptr noundef %65, ptr noundef %66) #20
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %105, label %69, !prof !2463

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %65, ptr noundef %66, ptr noundef %71) #20
  br label %105

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !1031
  %75 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !1073
  %77 = icmp eq i32 %32, 1
  br i1 %77, label %78, label %89, !prof !2464

78:                                               ; preds = %72
  %79 = tail call fastcc i32 @compare_values(ptr noundef %21, ptr noundef %76) #20
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84, !prof !2465

81:                                               ; preds = %78
  %82 = tail call fastcc i32 @compare_values(ptr noundef %74, ptr noundef %21) #20
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %105, label %84

84:                                               ; preds = %81, %78
  %85 = phi ptr [ %21, %81 ], [ %76, %78 ]
  %86 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %74) #20, !range !1042
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %87, ptr %74, ptr %53, !prof !2466
  br label %100

89:                                               ; preds = %72
  %90 = tail call fastcc i32 @compare_values(ptr noundef %21, ptr noundef %74) #20
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %95, !prof !2467

92:                                               ; preds = %89
  %93 = tail call fastcc i32 @compare_values(ptr noundef %21, ptr noundef %76) #20
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %105, label %95

95:                                               ; preds = %92, %89
  %96 = phi ptr [ %21, %92 ], [ %74, %89 ]
  %97 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %76) #20, !range !1042
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %98, ptr %76, ptr %61, !prof !2468
  br label %100

100:                                              ; preds = %95, %84
  %101 = phi ptr [ %88, %84 ], [ %96, %95 ]
  %102 = phi ptr [ %85, %84 ], [ %99, %95 ]
  %103 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !1038
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %101, ptr noundef %102, ptr noundef %104) #20
  br label %105

105:                                              ; preds = %69, %100, %60, %92, %81, %63, %31, %34, %19, %25, %28, %15, %4, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vrp_var_may_overflow(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2469 !PGOFuncName !2470 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !1300
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7, !prof !2471

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %1) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10, !prof !2471

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %8) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13, !prof !2472

13:                                               ; preds = %10
  %14 = tail call ptr @analyze_scalar_evolution(ptr noundef nonnull %8, ptr noundef %0) #21
  %15 = tail call fastcc ptr @instantiate_parameters(ptr noundef nonnull %8, ptr noundef %14) #20
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 146
  br i1 %18, label %19, label %45, !prof !2473

19:                                               ; preds = %13
  %20 = load i32, ptr %8, align 8, !tbaa !2453
  %21 = tail call ptr @initial_condition_in_loop_num(ptr noundef nonnull %15, i32 noundef %20) #21
  %22 = load i32, ptr %8, align 8, !tbaa !2453
  %23 = tail call ptr @evolution_part_in_loop_num(ptr noundef nonnull %15, i32 noundef %22) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25, !prof !2474

25:                                               ; preds = %19
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %23) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %45, label %28, !prof !2474

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @valid_value_p(ptr noundef %21) #20
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31, !prof !2474

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %15) #20
  %33 = tail call zeroext i8 @scev_probably_wraps_p(ptr noundef %21, ptr noundef nonnull %23, ptr noundef %1, ptr noundef %32, i8 noundef zeroext 1) #21
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %45, !prof !2475

35:                                               ; preds = %31
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38, !prof !2475

38:                                               ; preds = %35
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  tail call void @print_generic_expr(ptr noundef nonnull %36, ptr noundef %0, i32 noundef 0) #21
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %44 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 47, i64 1, ptr %43)
  br label %45

45:                                               ; preds = %35, %38, %42, %31, %19, %25, %28, %13, %7, %10, %2
  %46 = phi i8 [ 1, %2 ], [ 1, %10 ], [ 1, %7 ], [ 1, %13 ], [ 1, %28 ], [ 1, %25 ], [ 1, %19 ], [ 1, %31 ], [ 0, %42 ], [ 0, %38 ], [ 0, %35 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2476 !PGOFuncName !2477 {
  %3 = tail call fastcc ptr @block_before_loop(ptr noundef %0) #20
  %4 = tail call ptr @instantiate_scev(ptr noundef %3, ptr noundef %0, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @initial_condition_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @evolution_part_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @valid_value_p(ptr noundef %0) unnamed_addr #0 !prof !2478 !PGOFuncName !2479 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %17 [
    i16 141, label %19
    i16 63, label %4
    i16 64, label %4
  ], !prof !2480

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !1036
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %19, !prof !1061

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1036
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  %16 = zext i1 %15 to i8
  br label %19

17:                                               ; preds = %1
  %18 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #21
  br label %19

19:                                               ; preds = %4, %10, %1, %17
  %20 = phi i8 [ %18, %17 ], [ 1, %1 ], [ 0, %4 ], [ %16, %10 ]
  ret i8 %20
}

; Function Attrs: optsize
declare i32 @scev_direction(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @scev_probably_wraps_p(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_chrec_loop(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !2481 !PGOFuncName !2482 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1036
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !1036
  %6 = trunc i64 %5 to i32
  %7 = tail call fastcc ptr @get_loop(i32 noundef %6) #20
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @lower_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @upper_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @block_before_loop(ptr noundef %0) unnamed_addr #0 !prof !2476 !PGOFuncName !2483 {
  %2 = tail call ptr @loop_preheader_edge(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8, !prof !2484

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1248
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !1032
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #3 !prof !2481 !PGOFuncName !2485 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !1300
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !2486
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #20
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !2488 !PGOFuncName !2489 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !1032
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !2469 !PGOFuncName !2490 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !2491
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !2472

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #20
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !2469 !PGOFuncName !2492 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !2472

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !2493
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @substitute_and_fold(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @vrp_fold_stmt(ptr noundef %0) #0 !prof !2495 !PGOFuncName !2496 {
  %2 = tail call fastcc zeroext i8 @fold_predicate_in(ptr noundef %0) #20, !range !1042
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6, !prof !2497

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @simplify_stmt_using_ranges(ptr noundef %0) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i8 [ %5, %4 ], [ 1, %1 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_all_array_refs() unnamed_addr #0 !prof !1166 !PGOFuncName !2498 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  %5 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1248
  %8 = load ptr, ptr %7, align 8, !tbaa !1249
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !1251
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1252
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %74, label %14

14:                                               ; preds = %0
  %15 = getelementptr inbounds i8, ptr %2, i64 8
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %4, i64 0, i32 1
  br label %17

17:                                               ; preds = %14, %65
  %18 = phi ptr [ %10, %14 ], [ %67, %65 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %19 = call fastcc ptr @ei_start_1(ptr noundef %18) #20
  store i32 0, ptr %2, align 8, !tbaa.struct !1385
  store ptr %19, ptr %15, align 8, !tbaa.struct !1386
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %19, ptr noundef nonnull %3) #20, !range !1042
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %17, %22
  %23 = phi i8 [ %30, %22 ], [ 0, %17 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !1032
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !1292
  %27 = lshr i32 %26, 12
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = or i8 %29, %23
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %31 = load i32, ptr %2, align 8
  %32 = load ptr, ptr %15, align 8
  %33 = call fastcc zeroext i8 @ei_cond(i32 %31, ptr %32, ptr noundef nonnull %3) #20, !range !1042
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %22, !llvm.loop !2499

35:                                               ; preds = %22
  %36 = icmp eq i8 %30, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %35
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %18) #20
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !1042
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %37, %62
  %41 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  %42 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %41) #20, !range !1042
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  %45 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %41) #20, !range !1042
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = call fastcc i32 @gimple_call_num_args(ptr noundef %41) #20
  %49 = zext i32 %48 to i64
  %50 = icmp eq i32 %48, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47, %51
  %52 = phi i64 [ %56, %51 ], [ 0, %47 ]
  %53 = trunc i64 %52 to i32
  %54 = call fastcc ptr @gimple_call_arg(ptr noundef %41, i32 noundef %53) #20
  %55 = call fastcc i32 @gimple_location(ptr noundef %41) #20
  call fastcc void @search_for_addr_array(ptr noundef %54, i32 noundef %55) #20
  %56 = add nuw nsw i64 %52, 1
  %57 = icmp eq i64 %56, %49
  br i1 %57, label %62, label %51, !llvm.loop !2500

58:                                               ; preds = %44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %59 = call fastcc ptr @gimple_location_ptr(ptr noundef %41) #20
  store ptr %59, ptr %16, align 8, !tbaa !2501
  %60 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %61 = call ptr @walk_gimple_op(ptr noundef %60, ptr noundef nonnull @check_array_bounds, ptr noundef nonnull %4) #21
  br label %62

62:                                               ; preds = %51, %47, %58, %40
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  %63 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !1042
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %40, label %65, !llvm.loop !2503

65:                                               ; preds = %62, %17, %37, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !1251
  %68 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !1248
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !1252
  %73 = icmp eq ptr %67, %72
  br i1 %73, label %74, label %17, !llvm.loop !2504

74:                                               ; preds = %65, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @identify_jump_threads() unnamed_addr #0 !prof !1225 !PGOFuncName !2505 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  tail call void @calculate_dominance_info(i32 noundef 1) #21
  %4 = tail call zeroext i8 @mark_dfs_back_edges() #21
  %5 = load ptr, ptr @to_remove_edges, align 8
  %6 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %1) #20, !range !1228
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8, !prof !1229

8:                                                ; preds = %0, %8
  %9 = phi i32 [ %14, %8 ], [ 0, %0 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !1032
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !1292
  %13 = or i32 %12, 32
  store i32 %13, ptr %11, align 8, !tbaa !1292
  %14 = add nuw nsw i32 %9, 1
  %15 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef %14, ptr noundef nonnull %1) #20, !range !1228
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %8, !prof !1231, !llvm.loop !2506

17:                                               ; preds = %8, %0
  %18 = tail call fastcc ptr @VEC_tree_heap_alloc() #20
  store ptr %18, ptr @stack, align 8, !tbaa !1032
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !1032
  %20 = tail call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %19, ptr noundef %19, ptr noundef null, ptr noundef null) #21
  %21 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !1248
  %24 = load ptr, ptr %23, align 8, !tbaa !1249
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !1251
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !1252
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %122, label %30, !prof !1253

30:                                               ; preds = %17
  %31 = getelementptr inbounds i8, ptr %3, i64 8
  br label %32

32:                                               ; preds = %30, %113
  %33 = phi ptr [ %26, %30 ], [ %115, %113 ]
  %34 = tail call zeroext i8 @potentially_threadable_block(ptr noundef %33) #21
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %113, label %36, !prof !2507

36:                                               ; preds = %32
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %33) #20
  %37 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %38 = tail call fastcc i32 @gimple_code(ptr noundef %37) #20, !range !1281
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %113, !prof !2508

40:                                               ; preds = %36
  %41 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 141
  br i1 %44, label %45, label %113, !prof !2509

45:                                               ; preds = %40
  %46 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !1036
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %66, label %52, !prof !2510

52:                                               ; preds = %45
  %53 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !1036
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 7
  br i1 %58, label %66, label %59, !prof !2511

59:                                               ; preds = %52
  %60 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !1036
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 8
  br i1 %65, label %66, label %113, !prof !2512

66:                                               ; preds = %59, %52, %45
  %67 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 141
  br i1 %70, label %75, label %71, !prof !2513

71:                                               ; preds = %66
  %72 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %73 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %72) #21
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %113, label %75, !prof !2514

75:                                               ; preds = %71, %66
  %76 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !1036
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 6
  br i1 %81, label %96, label %82, !prof !2515

82:                                               ; preds = %75
  %83 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !1036
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 7
  br i1 %88, label %96, label %89, !prof !2516

89:                                               ; preds = %82
  %90 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !1036
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 8
  br i1 %95, label %96, label %113, !prof !2517

96:                                               ; preds = %89, %82, %75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %97 = tail call fastcc ptr @ei_start_1(ptr noundef %33) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !1385
  store ptr %97, ptr %31, align 8, !tbaa.struct !1386
  %98 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %97, ptr noundef nonnull %1) #20, !range !1042
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %112, label %100, !prof !2518

100:                                              ; preds = %96, %107
  %101 = load ptr, ptr %1, align 8, !tbaa !1032
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !1292
  %104 = and i32 %103, 46
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107, !prof !2519

106:                                              ; preds = %100
  tail call void @thread_across_edge(ptr noundef %20, ptr noundef nonnull %101, i8 noundef zeroext 1, ptr noundef nonnull @stack, ptr noundef nonnull @simplify_stmt_for_jump_threading) #21
  br label %107

107:                                              ; preds = %100, %106
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %108 = load i32, ptr %3, align 8
  %109 = load ptr, ptr %31, align 8
  %110 = call fastcc zeroext i8 @ei_cond(i32 %108, ptr %109, ptr noundef nonnull %1) #20, !range !1042
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %100, !prof !2520, !llvm.loop !2521

112:                                              ; preds = %107, %96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %113

113:                                              ; preds = %40, %59, %71, %89, %112, %36, %32
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !1251
  %116 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !1248
  %119 = getelementptr inbounds %struct.control_flow_graph, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !1252
  %121 = icmp eq ptr %115, %120
  br i1 %121, label %122, label %32, !prof !1267, !llvm.loop !2522

122:                                              ; preds = %113, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fold_predicate_in(ptr noundef %0) unnamed_addr #0 !prof !2495 !PGOFuncName !2523 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !1042
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5, !prof !2524

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #20, !range !1337
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !1130
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %20, label %11, !prof !2525

11:                                               ; preds = %5, %1
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !1281
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %58, !prof !2526

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gimple_cond_code(ptr noundef %2) #20, !range !1337
  %16 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %2) #20
  %17 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %2) #20
  %18 = tail call fastcc ptr @vrp_evaluate_conditional(i32 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %2) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %29, !prof !2527

20:                                               ; preds = %5
  %21 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #20, !range !1337
  %22 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %23 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #20
  %24 = tail call fastcc ptr @vrp_evaluate_conditional(i32 noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %2) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %58, label %26, !prof !2527

26:                                               ; preds = %20
  %27 = tail call fastcc ptr @gimple_expr_type(ptr noundef %2) #20
  %28 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %27, ptr noundef nonnull %24) #21
  br label %29

29:                                               ; preds = %14, %26
  %30 = phi ptr [ %28, %26 ], [ %18, %14 ]
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33, !prof !2528

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 18, i64 1, ptr nonnull %31)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_gimple_expr(ptr noundef %35, ptr noundef %2, i32 noundef 0, i32 noundef 0) #21
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %37 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 4, i64 1, ptr %36)
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_generic_expr(ptr noundef %38, ptr noundef %30, i32 noundef 0) #21
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %40 = tail call i32 @fputc(i32 10, ptr %39)
  br label %41

41:                                               ; preds = %33, %29
  %42 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !1042
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44, !prof !2529

44:                                               ; preds = %41
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %30) #21
  br label %58

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !1281
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %49, label %48, !prof !2530

48:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7056, ptr noundef nonnull @.str.1) #21
  br label %49

49:                                               ; preds = %45, %48
  %50 = tail call i32 @integer_zerop(ptr noundef %30) #21
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !2531

52:                                               ; preds = %49
  tail call fastcc void @gimple_cond_make_false(ptr noundef %2) #20
  br label %58

53:                                               ; preds = %49
  %54 = tail call i32 @integer_onep(ptr noundef %30) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56, !prof !2532

56:                                               ; preds = %53
  tail call fastcc void @gimple_cond_make_true(ptr noundef %2) #20
  br label %58

57:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7062, ptr noundef nonnull @.str.1) #21
  br label %58

58:                                               ; preds = %20, %14, %44, %56, %57, %52, %11
  %59 = phi i8 [ 0, %11 ], [ 1, %52 ], [ 1, %57 ], [ 1, %56 ], [ 1, %44 ], [ 0, %14 ], [ 0, %20 ]
  ret i8 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simplify_stmt_using_ranges(ptr noundef %0) unnamed_addr #0 !prof !2533 !PGOFuncName !2534 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !1042
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %86, label %5, !prof !2535

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #20, !range !1337
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %92 [
    i16 101, label %8
    i16 102, label %8
    i16 96, label %8
    i16 93, label %8
    i16 94, label %8
    i16 95, label %8
    i16 67, label %31
    i16 71, label %31
    i16 82, label %58
  ], !prof !2536

8:                                                ; preds = %5, %5, %5, %5, %5, %5
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1036
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 6
  br i1 %14, label %29, label %15, !prof !2537

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !1036
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 7
  br i1 %21, label %29, label %22, !prof !2538

22:                                               ; preds = %15
  %23 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !1036
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 8
  br i1 %28, label %29, label %92, !prof !2539

29:                                               ; preds = %22, %15, %8
  %30 = tail call fastcc zeroext i8 @simplify_truth_ops_using_ranges(ptr noundef %0, ptr noundef %2) #20, !range !1042
  br label %92

31:                                               ; preds = %5, %5
  %32 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !1036
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 6
  br i1 %37, label %52, label %38, !prof !2540

38:                                               ; preds = %31
  %39 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !1036
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 7
  br i1 %44, label %52, label %45, !prof !2540

45:                                               ; preds = %38
  %46 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !1036
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 8
  br i1 %51, label %52, label %92, !prof !2541

52:                                               ; preds = %45, %38, %31
  %53 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #20
  %54 = tail call i32 @integer_pow2p(ptr noundef %53) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %92, label %56, !prof !2542

56:                                               ; preds = %52
  %57 = tail call fastcc zeroext i8 @simplify_div_or_mod_using_ranges(ptr noundef %2) #20, !range !1042
  br label %92

58:                                               ; preds = %5
  %59 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 141
  br i1 %62, label %63, label %92, !prof !2543

63:                                               ; preds = %58
  %64 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %65 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !1036
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 6
  br i1 %69, label %84, label %70, !prof !2544

70:                                               ; preds = %63
  %71 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !1036
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 7
  br i1 %76, label %84, label %77, !prof !2544

77:                                               ; preds = %70
  %78 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %79 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !1036
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 8
  br i1 %83, label %84, label %92, !prof !2543

84:                                               ; preds = %77, %70, %63
  %85 = tail call fastcc zeroext i8 @simplify_abs_using_ranges(ptr noundef %2) #20, !range !1042
  br label %92

86:                                               ; preds = %1
  %87 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !1281
  %88 = trunc i32 %87 to i8
  switch i8 %88, label %92 [
    i8 1, label %89
    i8 5, label %91
  ], !prof !2545

89:                                               ; preds = %86
  %90 = tail call fastcc zeroext i8 @simplify_cond_using_ranges(ptr noundef %2) #20, !range !1042
  br label %92

91:                                               ; preds = %86
  tail call fastcc void @simplify_switch_using_ranges(ptr noundef %2) #20
  br label %92

92:                                               ; preds = %86, %22, %52, %45, %77, %58, %5, %29, %56, %84, %91, %89
  %93 = phi i8 [ %90, %89 ], [ 0, %91 ], [ %85, %84 ], [ %57, %56 ], [ %30, %29 ], [ 0, %5 ], [ 0, %58 ], [ 0, %77 ], [ 0, %45 ], [ 0, %52 ], [ 0, %22 ], [ 0, %86 ]
  ret i8 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vrp_evaluate_conditional(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !2546 !PGOFuncName !2547 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %13, !prof !2548

10:                                               ; preds = %4
  %11 = and i64 %7, 134217728
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %94

13:                                               ; preds = %10, %4
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 134283263
  %16 = icmp eq i64 %15, 134217751
  br i1 %16, label %94, label %17, !prof !2549

17:                                               ; preds = %13
  store i8 0, ptr %5, align 1, !tbaa !1036
  %18 = call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %19 = icmp ne ptr %18, null
  %20 = load i8, ptr %5, align 1
  %21 = icmp ne i8 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %40, !prof !2550

23:                                               ; preds = %17
  %24 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %18) #21
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 3, i32 2, !prof !1100
  %27 = select i1 %25, ptr @.str.57, ptr @.str.56, !prof !1100
  %28 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !1130
  %29 = icmp slt i32 %28, %26
  br i1 %29, label %40, label %30, !prof !2551

30:                                               ; preds = %23
  %31 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %3) #20, !range !1042
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, ptr @input_location, align 4, !tbaa !1130
  br label %37

35:                                               ; preds = %30
  %36 = call fastcc i32 @gimple_location(ptr noundef %3) #20
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %36, %35 ], [ %34, %33 ]
  %39 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %38, i32 noundef 187, ptr noundef nonnull @.str.58, ptr noundef nonnull %27) #21
  br label %40

40:                                               ; preds = %23, %37, %17
  %41 = load i32, ptr @warn_type_limits, align 4, !tbaa !1130
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %94, label %43, !prof !2552

43:                                               ; preds = %40
  %44 = load i8, ptr %6, align 1
  %45 = icmp ne i8 %44, 0
  %46 = select i1 %19, i1 %45, i1 false
  br i1 %46, label %47, label %94

47:                                               ; preds = %43
  %48 = zext nneg i32 %0 to i64
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !1130
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %94

52:                                               ; preds = %47
  %53 = load i64, ptr %1, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %56, label %94

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !1036
  %59 = call fastcc ptr @get_value_range(ptr noundef nonnull %1) #20
  %60 = load i32, ptr %59, align 8, !tbaa !1024
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %94, label %62

62:                                               ; preds = %56
  %63 = load i64, ptr %58, align 8
  %64 = trunc i64 %63 to i32
  %65 = and i32 %64, 65535
  %66 = add nsw i32 %65, -6
  %67 = icmp ult i32 %66, 3
  br i1 %67, label %68, label %94

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.value_range_d, ptr %59, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !1031
  %71 = call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %70) #20, !range !1042
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.value_range_d, ptr %59, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !1073
  %76 = call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %75) #20, !range !1042
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %73
  %79 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %2) #21
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %78
  %82 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %3) #20, !range !1042
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, ptr @input_location, align 4, !tbaa !1130
  br label %88

86:                                               ; preds = %81
  %87 = call fastcc i32 @gimple_location(ptr noundef %3) #20
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %87, %86 ], [ %85, %84 ]
  %90 = call i32 @integer_zerop(ptr noundef nonnull %18) #21
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, ptr @.str.60, ptr @.str.59
  %93 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %89, i32 noundef 206, ptr noundef nonnull %92) #21
  br label %94

94:                                               ; preds = %62, %40, %43, %47, %52, %88, %78, %73, %68, %56, %10, %13
  %95 = phi ptr [ null, %13 ], [ null, %10 ], [ %18, %56 ], [ %18, %68 ], [ %18, %73 ], [ %18, %78 ], [ %18, %88 ], [ %18, %62 ], [ %18, %52 ], [ %18, %47 ], [ %18, %43 ], [ %18, %40 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  ret ptr %95
}

; Function Attrs: optsize
declare void @print_gimple_expr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_false(ptr noundef %0) unnamed_addr #0 !prof !2553 !PGOFuncName !2554 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !1032
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #20
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !1032
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #20
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_true(ptr noundef %0) unnamed_addr #0 !prof !2555 !PGOFuncName !2556 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !1032
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #20
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !1032
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #20
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1166 !PGOFuncName !2557 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1166 !PGOFuncName !2558 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !1036
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2559 !PGOFuncName !2560 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2559 !PGOFuncName !2561 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !2562 !PGOFuncName !2563 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !1042
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !2564

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !2565

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1665, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !1032
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simplify_truth_ops_using_ranges(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2566 !PGOFuncName !2567 {
  %3 = alloca i8, align 1
  %4 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !1337
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store i8 0, ptr %3, align 1, !tbaa !1036
  %5 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1036
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1023
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %31, label %12, !prof !2568

12:                                               ; preds = %2
  %13 = load i64, ptr %5, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %136, !prof !2569

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %5) #20
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !1032
  %19 = call fastcc ptr @compare_range_with_value(i32 noundef 100, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %3) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %136, label %21, !prof !2570

21:                                               ; preds = %16
  %22 = call i32 @integer_onep(ptr noundef nonnull %19) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %136, label %24, !prof !2571

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !1032
  %26 = call fastcc ptr @compare_range_with_value(i32 noundef 98, ptr noundef %17, ptr noundef %25, ptr noundef nonnull %3) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %136, label %28, !prof !2572

28:                                               ; preds = %24
  %29 = call i32 @integer_onep(ptr noundef nonnull %26) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %136, label %31, !prof !2573

31:                                               ; preds = %28, %2
  %32 = icmp eq i32 %4, 96
  br i1 %32, label %33, label %36, !prof !2574

33:                                               ; preds = %31
  %34 = load ptr, ptr %6, align 8, !tbaa !1036
  %35 = call ptr @build_int_cst(ptr noundef %34, i64 noundef 1) #21
  br label %84

36:                                               ; preds = %31
  %37 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  %38 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %37) #21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %60, label %40, !prof !2575

40:                                               ; preds = %36
  %41 = add nsw i32 %4, -103
  %42 = icmp ult i32 %41, -2
  br i1 %42, label %43, label %45, !prof !2576

43:                                               ; preds = %40
  %44 = icmp eq i32 %4, 95
  br i1 %44, label %45, label %136

45:                                               ; preds = %43, %40
  %46 = call i32 @integer_zerop(ptr noundef %37) #21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54, !prof !2577

48:                                               ; preds = %45
  %49 = call i32 @integer_onep(ptr noundef %37) #21
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54, !prof !2578

51:                                               ; preds = %48
  %52 = call i32 @integer_all_onesp(ptr noundef %37) #21
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %136, label %54

54:                                               ; preds = %51, %48, %45
  %55 = icmp eq i32 %4, 101
  br i1 %55, label %56, label %84, !prof !2579

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !1036
  %59 = call ptr @fold_unary_loc(i32 noundef 0, i32 noundef 96, ptr noundef %58, ptr noundef %37) #21
  br label %84

60:                                               ; preds = %36
  %61 = icmp eq i32 %4, 101
  br i1 %61, label %136, label %62, !prof !2580

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !1036
  %65 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, 1023
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %84, label %69, !prof !2581

69:                                               ; preds = %62
  %70 = call fastcc ptr @get_value_range(ptr noundef nonnull %37) #20
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !1032
  %72 = call fastcc ptr @compare_range_with_value(i32 noundef 100, ptr noundef %70, ptr noundef %71, ptr noundef nonnull %3) #20
  %73 = icmp eq ptr %72, null
  br i1 %73, label %136, label %74, !prof !2582

74:                                               ; preds = %69
  %75 = call i32 @integer_onep(ptr noundef nonnull %72) #21
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %136, label %77, !prof !2583

77:                                               ; preds = %74
  %78 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !1032
  %79 = call fastcc ptr @compare_range_with_value(i32 noundef 98, ptr noundef %70, ptr noundef %78, ptr noundef nonnull %3) #20
  %80 = icmp eq ptr %79, null
  br i1 %80, label %136, label %81, !prof !2583

81:                                               ; preds = %77
  %82 = call i32 @integer_onep(ptr noundef nonnull %79) #21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %136, label %84, !prof !2583

84:                                               ; preds = %56, %54, %81, %62, %33
  %85 = phi i32 [ 102, %33 ], [ 102, %56 ], [ %4, %54 ], [ %4, %81 ], [ %4, %62 ]
  %86 = phi ptr [ %35, %33 ], [ %59, %56 ], [ %37, %54 ], [ %37, %81 ], [ %37, %62 ]
  %87 = load i8, ptr %3, align 1, !tbaa !1036
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %105, label %89, !prof !2584

89:                                               ; preds = %84
  %90 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !1130
  %91 = icmp sgt i32 %90, 3
  br i1 %91, label %92, label %105

92:                                               ; preds = %89
  %93 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %1) #20, !range !1042
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, ptr @input_location, align 4, !tbaa !1130
  br label %99

97:                                               ; preds = %92
  %98 = call fastcc i32 @gimple_location(ptr noundef %1) #20
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %98, %97 ], [ %96, %95 ]
  %101 = add nsw i32 %85, -93
  %102 = icmp ult i32 %101, 2
  %103 = select i1 %102, ptr @.str.61, ptr @.str.62
  %104 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %100, i32 noundef 187, ptr noundef nonnull %103) #21
  br label %105

105:                                              ; preds = %99, %89, %84
  %106 = call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #20
  %107 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !1036
  %109 = load ptr, ptr %6, align 8, !tbaa !1036
  %110 = call zeroext i8 @useless_type_conversion_p(ptr noundef %108, ptr noundef %109) #21
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %122, !prof !2585

112:                                              ; preds = %105
  %113 = load ptr, ptr %6, align 8, !tbaa !1036
  %114 = load i64, ptr %113, align 8
  %115 = and i64 %114, 2097152
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %122, !prof !2586

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, 1023
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %136, label %122, !prof !2587

122:                                              ; preds = %117, %112, %105
  %123 = trunc i32 %85 to i16
  switch i16 %123, label %130 [
    i16 93, label %131
    i16 94, label %124
    i16 95, label %125
    i16 102, label %125
  ], !prof !2588

124:                                              ; preds = %122
  br label %131

125:                                              ; preds = %122, %122
  %126 = call i32 @integer_zerop(ptr noundef %86) #21
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %131, label %128, !prof !2589

128:                                              ; preds = %125
  %129 = select i1 %111, i32 116, i32 141
  call void @gimple_assign_set_rhs_with_ops(ptr noundef %0, i32 noundef %129, ptr noundef nonnull %5, ptr noundef null) #21
  br label %134

130:                                              ; preds = %122
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6568, ptr noundef nonnull @.str.1) #21
  br label %131

131:                                              ; preds = %125, %122, %130, %124
  %132 = phi i32 [ %85, %130 ], [ 87, %124 ], [ 89, %122 ], [ 88, %125 ]
  br i1 %111, label %136, label %133, !prof !2590

133:                                              ; preds = %131
  call void @gimple_assign_set_rhs_with_ops(ptr noundef %0, i32 noundef %132, ptr noundef nonnull %5, ptr noundef %86) #21
  br label %134

134:                                              ; preds = %128, %133
  %135 = call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  call fastcc void @update_stmt(ptr noundef %135) #20
  br label %136

136:                                              ; preds = %134, %131, %117, %77, %81, %69, %74, %60, %51, %43, %24, %28, %16, %21, %12
  %137 = phi i8 [ 0, %12 ], [ 0, %21 ], [ 0, %16 ], [ 0, %28 ], [ 0, %24 ], [ 0, %43 ], [ 0, %51 ], [ 0, %60 ], [ 0, %74 ], [ 0, %69 ], [ 0, %81 ], [ 0, %77 ], [ 0, %117 ], [ 0, %131 ], [ 1, %134 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret i8 %137
}

; Function Attrs: optsize
declare i32 @integer_pow2p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simplify_div_or_mod_using_ranges(ptr noundef %0) unnamed_addr #0 !prof !2591 !PGOFuncName !2592 {
  %2 = alloca i8, align 1
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1337
  %4 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %5 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %7 = tail call fastcc ptr @get_value_range(ptr noundef %6) #20
  %8 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !1036
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 2097152
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13, !prof !2593

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !1032
  br label %39

15:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !1036
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !1032
  %17 = call fastcc ptr @compare_range_with_value(i32 noundef 100, ptr noundef %7, ptr noundef %16, ptr noundef nonnull %2) #20
  %18 = icmp ne ptr %17, null
  %19 = load i8, ptr %2, align 1
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %38, !prof !2594

22:                                               ; preds = %15
  %23 = call i32 @integer_onep(ptr noundef nonnull %17) #21
  %24 = icmp ne i32 %23, 0
  %25 = load i32, ptr @warn_strict_overflow, align 4
  %26 = icmp sgt i32 %25, 3
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %38, !prof !2595

28:                                               ; preds = %22
  %29 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !1042
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, ptr @input_location, align 4, !tbaa !1130
  br label %35

33:                                               ; preds = %28
  %34 = call fastcc i32 @gimple_location(ptr noundef %0) #20
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %34, %33 ], [ %32, %31 ]
  %37 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %36, i32 noundef 187, ptr noundef nonnull @.str.63) #21
  br label %38

38:                                               ; preds = %35, %22, %15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  br label %39

39:                                               ; preds = %38, %13
  %40 = phi ptr [ %14, %13 ], [ %17, %38 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %61, label %42, !prof !2596

42:                                               ; preds = %39
  %43 = call i32 @integer_onep(ptr noundef nonnull %40) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45, !prof !2597

45:                                               ; preds = %42
  %46 = icmp eq i32 %3, 67
  br i1 %46, label %47, label %51, !prof !2598

47:                                               ; preds = %45
  %48 = call i32 @tree_log2(ptr noundef %5) #21
  %49 = sext i32 %48 to i64
  %50 = call ptr @build_int_cst(ptr noundef null, i64 noundef %49) #21
  br label %58

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !1036
  %54 = call ptr @build_int_cst(ptr noundef %53, i64 noundef 1) #21
  %55 = call ptr @int_const_binop(i32 noundef 64, ptr noundef %5, ptr noundef %54, i32 noundef 0) #21
  %56 = load ptr, ptr %8, align 8, !tbaa !1036
  %57 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %56, ptr noundef %55) #21
  br label %58

58:                                               ; preds = %51, %47
  %59 = phi i32 [ 89, %51 ], [ 84, %47 ]
  %60 = phi ptr [ %57, %51 ], [ %50, %47 ]
  call fastcc void @gimple_assign_set_rhs_code(ptr noundef %0, i32 noundef %59) #20
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef nonnull %4) #20
  call fastcc void @gimple_assign_set_rhs2(ptr noundef %0, ptr noundef %60) #20
  call fastcc void @update_stmt(ptr noundef %0) #20
  br label %61

61:                                               ; preds = %39, %42, %58
  %62 = phi i8 [ 1, %58 ], [ 0, %42 ], [ 0, %39 ]
  ret i8 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simplify_abs_using_ranges(ptr noundef %0) unnamed_addr #0 !prof !2599 !PGOFuncName !2600 {
  %2 = alloca i8, align 1
  %3 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1036
  %6 = tail call fastcc ptr @get_value_range(ptr noundef %3) #20
  %7 = load i64, ptr %5, align 8
  %8 = and i64 %7, 2097152
  %9 = icmp ne i64 %8, 0
  %10 = icmp eq ptr %6, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %58, label %12, !prof !2601

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !1036
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !1032
  %14 = call fastcc ptr @compare_range_with_value(i32 noundef 98, ptr noundef nonnull %6, ptr noundef %13, ptr noundef nonnull %2) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %30, !prof !2543

16:                                               ; preds = %12
  store i8 0, ptr %2, align 1, !tbaa !1036
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !1032
  %18 = call fastcc ptr @compare_range_with_value(i32 noundef 100, ptr noundef nonnull %6, ptr noundef %17, ptr noundef nonnull %2) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20, !prof !2543

20:                                               ; preds = %16
  %21 = call i32 @integer_zerop(ptr noundef nonnull %18) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = call i32 @integer_onep(ptr noundef nonnull %18) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20, %23
  %27 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), %23 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), %20 ]
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30, !prof !1379

30:                                               ; preds = %23, %12, %26
  %31 = phi ptr [ %28, %26 ], [ %14, %12 ], [ %18, %23 ]
  %32 = call i32 @integer_onep(ptr noundef nonnull %31) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = call i32 @integer_zerop(ptr noundef nonnull %31) #21
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %34, %30
  %38 = load i8, ptr %2, align 1, !tbaa !1036
  %39 = icmp ne i8 %38, 0
  %40 = load i32, ptr @warn_strict_overflow, align 4
  %41 = icmp sgt i32 %40, 3
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !1042
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, ptr @input_location, align 4, !tbaa !1130
  br label %50

48:                                               ; preds = %43
  %49 = call fastcc i32 @gimple_location(ptr noundef %0) #20
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %49, %48 ], [ %47, %46 ]
  %52 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %51, i32 noundef 187, ptr noundef nonnull @.str.64) #21
  br label %53

53:                                               ; preds = %50, %37
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef nonnull %3) #20
  %54 = call i32 @integer_onep(ptr noundef nonnull %31) #21
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 141, i32 79
  call fastcc void @gimple_assign_set_rhs_code(ptr noundef %0, i32 noundef %56) #20
  call fastcc void @update_stmt(ptr noundef %0) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  br label %58

57:                                               ; preds = %16, %26, %34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #22
  br label %58

58:                                               ; preds = %1, %57, %53
  %59 = phi i8 [ 1, %53 ], [ 0, %57 ], [ 0, %1 ]
  ret i8 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simplify_cond_using_ranges(ptr noundef %0) unnamed_addr #0 !prof !2602 !PGOFuncName !2603 {
  %2 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %3 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %4 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !1337
  %5 = add nsw i32 %4, -103
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %7, label %59, !prof !2604

7:                                                ; preds = %1
  %8 = load i64, ptr %2, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %59, !prof !2605

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1036
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -6
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %59, !prof !2606

19:                                               ; preds = %11
  %20 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %3) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %59, label %22, !prof !2607

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %2) #20
  %24 = load i32, ptr %23, align 8, !tbaa !1024
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %59, !prof !2608

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @test_for_singularity(i32 noundef %4, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %23) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29, !prof !2609

29:                                               ; preds = %26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !prof !2610

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 22, i64 1, ptr nonnull %30)
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_gimple_stmt(ptr noundef %34, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %36 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 6, i64 1, ptr %35)
  br label %37

37:                                               ; preds = %32, %29
  tail call fastcc void @gimple_cond_set_code(ptr noundef %0, i32 noundef 101) #20
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef nonnull %2) #20
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef nonnull %27) #20
  tail call fastcc void @update_stmt(ptr noundef %0) #20
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %55, !prof !2610

40:                                               ; preds = %26
  %41 = tail call i32 @invert_tree_comparison(i32 noundef %4, i8 noundef zeroext 0) #21
  %42 = tail call fastcc ptr @test_for_singularity(i32 noundef %41, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %23) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44, !prof !2611

44:                                               ; preds = %40
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47, !prof !2612

47:                                               ; preds = %44
  %48 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 22, i64 1, ptr nonnull %45)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  tail call void @print_gimple_stmt(ptr noundef %49, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %51 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 6, i64 1, ptr %50)
  br label %52

52:                                               ; preds = %47, %44
  tail call fastcc void @gimple_cond_set_code(ptr noundef %0, i32 noundef 102) #20
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef nonnull %2) #20
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef nonnull %42) #20
  tail call fastcc void @update_stmt(ptr noundef %0) #20
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55, !prof !2612

55:                                               ; preds = %52, %37
  %56 = phi ptr [ %38, %37 ], [ %53, %52 ]
  tail call void @print_gimple_stmt(ptr noundef nonnull %56, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %58 = tail call i32 @fputc(i32 10, ptr %57)
  br label %59

59:                                               ; preds = %55, %40, %22, %11, %1, %7, %19, %52, %37
  %60 = phi i8 [ 1, %37 ], [ 1, %52 ], [ 0, %11 ], [ 0, %19 ], [ 0, %7 ], [ 0, %1 ], [ 0, %22 ], [ 0, %40 ], [ 1, %55 ]
  ret i8 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_switch_using_ranges(ptr noundef %0) unnamed_addr #0 !prof !1477 !PGOFuncName !2613 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.switch_update, align 8
  %7 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !tbaa !1183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store i64 0, ptr %5, align 8, !tbaa !1183
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %124 [
    i16 141, label %10
    i16 23, label %26
  ], !prof !2614

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %7) #20
  %12 = load i32, ptr %11, align 8, !tbaa !1024
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %124, !prof !2615

14:                                               ; preds = %10
  %15 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %11) #20, !range !1042
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %124, !prof !2616

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.value_range_d, ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !1031
  %20 = getelementptr inbounds %struct.value_range_d, ptr %11, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !1073
  %22 = call fastcc zeroext i8 @find_case_label_range(ptr noundef %0, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %5) #20, !range !1042
  %23 = xor i8 %22, 1
  %24 = load i64, ptr %4, align 8, !tbaa !1183
  %25 = load i64, ptr %5, align 8, !tbaa !1183
  br label %33

26:                                               ; preds = %1
  %27 = call fastcc zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %4) #20
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  store i64 1, ptr %4, align 8, !tbaa !1183
  store i64 0, ptr %5, align 8, !tbaa !1183
  %30 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #20
  br label %39

31:                                               ; preds = %26
  %32 = load i64, ptr %4, align 8, !tbaa !1183
  store i64 %32, ptr %5, align 8, !tbaa !1183
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi i64 [ %32, %31 ], [ %25, %17 ]
  %35 = phi i64 [ %32, %31 ], [ %24, %17 ]
  %36 = phi i8 [ 0, %31 ], [ %23, %17 ]
  %37 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #20
  %38 = icmp eq i64 %35, 1
  br i1 %38, label %39, label %48, !prof !2617

39:                                               ; preds = %33, %29
  %40 = phi i64 [ 0, %29 ], [ %34, %33 ]
  %41 = phi i32 [ %30, %29 ], [ %37, %33 ]
  %42 = phi i8 [ 1, %29 ], [ %36, %33 ]
  %43 = zext i32 %41 to i64
  %44 = add nsw i64 %43, -1
  %45 = icmp eq i64 %40, %44
  %46 = icmp ne i8 %42, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %124, label %48, !prof !2618

48:                                               ; preds = %39, %33
  %49 = phi i64 [ 1, %39 ], [ %35, %33 ]
  %50 = phi i64 [ %40, %39 ], [ %34, %33 ]
  %51 = phi i8 [ %42, %39 ], [ %36, %33 ]
  %52 = zext nneg i8 %51 to i64
  %53 = sub i64 %52, %49
  %54 = add i64 %53, 1
  %55 = add i64 %54, %50
  %56 = trunc i64 %55 to i32
  %57 = tail call ptr @make_tree_vec_stat(i32 noundef %56) #21
  %58 = icmp eq i8 %51, 0
  br i1 %58, label %62, label %59, !prof !2619

59:                                               ; preds = %48
  %60 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef %0) #20
  %61 = getelementptr inbounds %struct.tree_vec, ptr %57, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !1036
  br label %62

62:                                               ; preds = %59, %48
  %63 = phi i64 [ 1, %59 ], [ 0, %48 ]
  %64 = icmp ugt i64 %49, %50
  br i1 %64, label %65, label %68, !prof !1236

65:                                               ; preds = %68, %62
  %66 = phi i64 [ %63, %62 ], [ %75, %68 ]
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %90, label %77, !prof !1236

68:                                               ; preds = %62, %68
  %69 = phi i64 [ %75, %68 ], [ %63, %62 ]
  %70 = phi i64 [ %74, %68 ], [ %49, %62 ]
  %71 = trunc i64 %70 to i32
  %72 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %71) #20
  %73 = getelementptr inbounds %struct.tree_vec, ptr %57, i64 0, i32 2, i64 %69
  store ptr %72, ptr %73, align 8, !tbaa !1036
  %74 = add i64 %70, 1
  %75 = add i64 %69, 1
  %76 = icmp ugt i64 %74, %50
  br i1 %76, label %65, label %68, !prof !2620, !llvm.loop !2621

77:                                               ; preds = %65, %77
  %78 = phi i64 [ %88, %77 ], [ 0, %65 ]
  %79 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %80 = load ptr, ptr @cfun, align 8, !tbaa !1032
  %81 = getelementptr inbounds %struct.tree_vec, ptr %57, i64 0, i32 2, i64 %78
  %82 = load ptr, ptr %81, align 8, !tbaa !1036
  %83 = getelementptr inbounds %struct.tree_exp, ptr %82, i64 1, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !1036
  %85 = tail call ptr @label_to_block_fn(ptr noundef %80, ptr noundef %84) #21
  %86 = tail call ptr @find_edge(ptr noundef %79, ptr noundef %85) #21
  %87 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 3
  store ptr inttoptr (i64 -1 to ptr), ptr %87, align 8, !tbaa !2622
  %88 = add nuw i64 %78, 1
  %89 = icmp eq i64 %88, %66
  br i1 %89, label %90, label %77, !prof !1237, !llvm.loop !2623

90:                                               ; preds = %77, %65
  %91 = phi ptr [ undef, %65 ], [ %86, %77 ]
  store i64 %66, ptr %4, align 8, !tbaa !1183
  store ptr %91, ptr %2, align 8, !tbaa !1032
  %92 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 1
  %94 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %93) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !1385
  %95 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %94, ptr %95, align 8, !tbaa.struct !1386
  %96 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %94, ptr noundef nonnull %2) #20, !range !1042
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %122, label %98, !prof !1236

98:                                               ; preds = %90, %117
  %99 = load ptr, ptr %2, align 8, !tbaa !1032
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !2622
  %102 = icmp eq ptr %101, inttoptr (i64 -1 to ptr)
  br i1 %102, label %103, label %104, !prof !2624

103:                                              ; preds = %98
  store ptr null, ptr %100, align 8, !tbaa !2622
  br label %117

104:                                              ; preds = %98
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !1032
  %106 = icmp eq ptr %105, null
  br i1 %106, label %113, label %107, !prof !2625

107:                                              ; preds = %104
  %108 = load i32, ptr @dump_flags, align 4, !tbaa !1130
  %109 = and i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 32, i64 1, ptr nonnull %105)
  br label %113

113:                                              ; preds = %111, %107, %104
  tail call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %99) #20
  %114 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !1292
  %116 = and i32 %115, -4097
  store i32 %116, ptr %114, align 8, !tbaa !1292
  br label %117

117:                                              ; preds = %113, %103
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %118 = load i32, ptr %3, align 8
  %119 = load ptr, ptr %95, align 8
  %120 = call fastcc zeroext i8 @ei_cond(i32 %118, ptr %119, ptr noundef nonnull %2) #20, !range !1042
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %98, !prof !2626, !llvm.loop !2627

122:                                              ; preds = %117, %90
  store ptr %0, ptr %6, align 8, !tbaa !1235
  %123 = getelementptr inbounds %struct.switch_update, ptr %6, i64 0, i32 1
  store ptr %57, ptr %123, align 8, !tbaa !1233
  call fastcc void @VEC_switch_update_heap_safe_push(ptr noundef nonnull %6) #20
  br label %124

124:                                              ; preds = %39, %1, %10, %14, %122
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !2628 !PGOFuncName !2629 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_with_ops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !2630 !PGOFuncName !2631 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !1042
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !2632

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #21
  tail call void @update_stmt_operands(ptr noundef %0) #21
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_log2(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_assign_set_rhs_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !2633 !PGOFuncName !2634 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2633 !PGOFuncName !2635 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2633 !PGOFuncName !2636 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 2, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @test_for_singularity(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !2637 !PGOFuncName !2638 {
  %5 = add i32 %0, -97
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %28, !prof !2639

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 97
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1036
  %11 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !1036
  br i1 %8, label %13, label %58, !prof !2640

13:                                               ; preds = %7
  %14 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !1042
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %58, !prof !2641

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 8, !tbaa !1036
  %18 = tail call ptr @build_int_cst(ptr noundef %17, i64 noundef 1) #21
  %19 = load ptr, ptr %9, align 8, !tbaa !1036
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %19, ptr noundef %2, ptr noundef %18) #21
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !1130
  %25 = icmp ugt i32 %24, 3
  br i1 %25, label %26, label %58, !prof !2642

26:                                               ; preds = %16
  %27 = icmp ult i32 %24, 11
  br i1 %27, label %52, label %58

28:                                               ; preds = %4
  %29 = add i32 %0, -99
  %30 = icmp ult i32 %29, 2
  br i1 %30, label %31, label %86, !prof !2643

31:                                               ; preds = %28
  %32 = icmp eq i32 %0, 99
  %33 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !1036
  %35 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 14
  %36 = load ptr, ptr %35, align 8, !tbaa !1036
  br i1 %32, label %37, label %58, !prof !2644

37:                                               ; preds = %31
  %38 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !1042
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %58, !prof !2645

40:                                               ; preds = %37
  %41 = load ptr, ptr %33, align 8, !tbaa !1036
  %42 = tail call ptr @build_int_cst(ptr noundef %41, i64 noundef 1) #21
  %43 = load ptr, ptr %33, align 8, !tbaa !1036
  %44 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %43, ptr noundef %2, ptr noundef %42) #21
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !1130
  %49 = icmp ugt i32 %48, 3
  br i1 %49, label %50, label %58, !prof !2646

50:                                               ; preds = %40
  %51 = icmp ult i32 %48, 11
  br i1 %51, label %52, label %58

52:                                               ; preds = %50, %26
  %53 = phi i64 [ %21, %26 ], [ %45, %50 ]
  %54 = phi ptr [ %20, %26 ], [ %44, %50 ]
  %55 = phi ptr [ %20, %26 ], [ %36, %50 ]
  %56 = phi ptr [ %12, %26 ], [ %44, %50 ]
  %57 = or i64 %53, 8388608
  store i64 %57, ptr %54, align 8
  br label %58

58:                                               ; preds = %52, %40, %50, %16, %26, %37, %31, %7, %13
  %59 = phi ptr [ %2, %13 ], [ %2, %7 ], [ %36, %37 ], [ %36, %31 ], [ %20, %26 ], [ %20, %16 ], [ %36, %50 ], [ %36, %40 ], [ %55, %52 ]
  %60 = phi ptr [ %12, %13 ], [ %12, %7 ], [ %2, %37 ], [ %2, %31 ], [ %12, %26 ], [ %12, %16 ], [ %44, %50 ], [ %44, %40 ], [ %56, %52 ]
  %61 = icmp ne ptr %60, null
  %62 = icmp ne ptr %59, null
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %86, !prof !2647

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !1031
  %67 = tail call fastcc i32 @compare_values(ptr noundef %66, ptr noundef nonnull %60) #20
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %71, !prof !2648

69:                                               ; preds = %64
  %70 = load ptr, ptr %65, align 8, !tbaa !1031
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi ptr [ %70, %69 ], [ %60, %64 ]
  %73 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !1073
  %75 = tail call fastcc i32 @compare_values(ptr noundef %74, ptr noundef nonnull %59) #20
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %79, !prof !2649

77:                                               ; preds = %71
  %78 = load ptr, ptr %73, align 8, !tbaa !1073
  br label %79

79:                                               ; preds = %77, %71
  %80 = phi ptr [ %78, %77 ], [ %59, %71 ]
  %81 = tail call i32 @operand_equal_p(ptr noundef %72, ptr noundef %80, i32 noundef 0) #21
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %86, label %83, !prof !2650

83:                                               ; preds = %79
  %84 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %72) #21
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %87, !prof !2651

86:                                               ; preds = %28, %79, %83, %58
  br label %87

87:                                               ; preds = %83, %86
  %88 = phi ptr [ null, %86 ], [ %72, %83 ]
  ret ptr %88
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !prof !2652 !PGOFuncName !2653 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !2654 !PGOFuncName !2655 {
  tail call fastcc void @VEC_edge_heap_reserve() #20
  %2 = load ptr, ptr @to_remove_edges, align 8, !tbaa !1032
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_switch_update_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !1362 !PGOFuncName !2656 {
  tail call fastcc void @VEC_switch_update_heap_reserve() #20
  %2 = load ptr, ptr @to_update_switch_stmts, align 8, !tbaa !1032
  tail call fastcc void @VEC_switch_update_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve() unnamed_addr #0 !prof !2654 !PGOFuncName !2657 {
  %1 = load ptr, ptr @to_remove_edges, align 8, !tbaa !1032
  %2 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !2658

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #21
  store ptr %5, ptr @to_remove_edges, align 8, !tbaa !1032
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !2654 !PGOFuncName !2659 {
  %3 = load i32, ptr %0, align 8, !tbaa !1353
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1353
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !1032
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !2654 !PGOFuncName !2660 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !2661

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !2662
  %6 = load i32, ptr %0, align 8, !tbaa !1353
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_switch_update_heap_reserve() unnamed_addr #0 !prof !1362 !PGOFuncName !2663 {
  %1 = load ptr, ptr @to_update_switch_stmts, align 8, !tbaa !1032
  %2 = tail call fastcc i32 @VEC_switch_update_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !2664

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 16) #21
  store ptr %5, ptr @to_update_switch_stmts, align 8, !tbaa !1032
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_switch_update_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #8 !prof !1362 !PGOFuncName !2665 {
  %3 = load i32, ptr %0, align 8, !tbaa !1359
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1359
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !2664

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_switch_update_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !2666
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_switch_update_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !1362 !PGOFuncName !2667 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !2664

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_switch_update_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !2668
  %6 = load i32, ptr %0, align 8, !tbaa !1359
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @search_for_addr_array(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1166 !PGOFuncName !2669 {
  br label %3

3:                                                ; preds = %16, %2
  %4 = phi ptr [ %0, %2 ], [ %17, %16 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %29 [
    i16 141, label %7
    i16 121, label %18
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !1036
  %10 = tail call fastcc i32 @gimple_code(ptr noundef %9) #20, !range !1281
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %9) #20, !range !1337
  %14 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %13) #20, !range !1281
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %9) #20
  br label %3

18:                                               ; preds = %3, %24
  %19 = phi ptr [ %26, %24 ], [ %4, %3 ]
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 45
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call fastcc void @check_array_ref(i32 noundef %1, ptr noundef nonnull %19, i8 noundef zeroext 1) #20
  br label %24

24:                                               ; preds = %23, %18
  %25 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !1036
  %27 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %26) #20, !range !1042
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %18, !llvm.loop !2670

29:                                               ; preds = %12, %7, %3, %24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_location_ptr(ptr noundef readnone %0) unnamed_addr #13 !prof !1166 !PGOFuncName !2671 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @check_array_bounds(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !prof !1166 !PGOFuncName !2672 {
  %4 = load ptr, ptr %0, align 8, !tbaa !1032
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !1130
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !1036
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3, %11
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !2501
  %18 = load i32, ptr %17, align 4, !tbaa !1130
  br label %19

19:                                               ; preds = %11, %15
  %20 = phi i32 [ %18, %15 ], [ %13, %11 ]
  store i32 1, ptr %1, align 4, !tbaa !1130
  %21 = load i64, ptr %4, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 45
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  tail call fastcc void @check_array_ref(i32 noundef %20, ptr noundef nonnull %4, i8 noundef zeroext 0) #20
  %25 = load i64, ptr %4, align 8
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i64 [ %25, %24 ], [ %21, %19 ]
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %39 [
    i16 47, label %29
    i16 135, label %32
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !1036
  br label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !1036
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29, %32
  %37 = phi ptr [ %31, %29 ], [ %34, %32 ]
  tail call fastcc void @search_for_addr_array(ptr noundef %37, i32 noundef %20) #20
  %38 = load i64, ptr %4, align 8
  br label %39

39:                                               ; preds = %26, %36, %32
  %40 = phi i64 [ %27, %26 ], [ %38, %36 ], [ %27, %32 ]
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 121
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, ptr %1, align 4, !tbaa !1130
  br label %44

44:                                               ; preds = %43, %39
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_array_ref(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1166 !PGOFuncName !2673 {
  %4 = tail call ptr @array_ref_up_bound(ptr noundef %1) #21
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1036
  %7 = icmp eq ptr %4, null
  br i1 %7, label %97, label %8

8:                                                ; preds = %3
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 8388608
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %97

12:                                               ; preds = %8
  %13 = load i64, ptr %4, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %16, label %97

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !1036
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !1036
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !1036
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !1036
  %29 = icmp eq ptr %28, null
  br i1 %29, label %97, label %30

30:                                               ; preds = %26, %22, %16
  %31 = tail call i32 @compare_tree_int(ptr noundef nonnull %4, i64 noundef 1) #21
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %97, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %1) #21
  %35 = load i64, ptr %6, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %66

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %6) #20
  %40 = load i32, ptr %39, align 8, !tbaa !1024
  %41 = add i32 %40, -1
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = icmp eq i32 %40, 1
  %45 = getelementptr inbounds %struct.value_range_d, ptr %39, i64 0, i32 2
  %46 = getelementptr inbounds %struct.value_range_d, ptr %39, i64 0, i32 1
  %47 = select i1 %44, ptr %45, ptr %46
  %48 = load ptr, ptr %47, align 8, !tbaa !1032
  %49 = select i1 %44, ptr %46, ptr %45
  %50 = load ptr, ptr %49, align 8, !tbaa !1032
  %51 = icmp eq i32 %40, 2
  br i1 %51, label %52, label %66

52:                                               ; preds = %43
  %53 = load i64, ptr %50, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 23
  br i1 %55, label %56, label %97

56:                                               ; preds = %52
  %57 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %4, ptr noundef nonnull %50) #21
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %97, label %59

59:                                               ; preds = %56
  %60 = load i64, ptr %48, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 23
  br i1 %62, label %63, label %97

63:                                               ; preds = %59
  %64 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %48, ptr noundef %34) #21
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %97, label %92

66:                                               ; preds = %38, %33, %43
  %67 = phi ptr [ %48, %43 ], [ %6, %33 ], [ %6, %38 ]
  %68 = phi ptr [ %50, %43 ], [ %6, %33 ], [ %6, %38 ]
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 23
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %4, ptr noundef nonnull %68) #21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %72
  %76 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %4, ptr noundef nonnull %68) #21
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = icmp eq i8 %2, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !1032
  %82 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef nonnull %4, ptr noundef %81, i32 noundef 0) #21
  %83 = tail call i32 @tree_int_cst_equal(ptr noundef %82, ptr noundef nonnull %68) #21
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %80, %75, %72, %66
  %86 = load i64, ptr %67, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 23
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %67, ptr noundef %34) #21
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89, %78, %80, %63
  %93 = phi ptr [ @.str.68, %63 ], [ @.str.69, %80 ], [ @.str.69, %78 ], [ @.str.70, %89 ]
  %94 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 41, ptr noundef nonnull %93) #21
  %95 = load i64, ptr %1, align 8
  %96 = or i64 %95, 8388608
  store i64 %96, ptr %1, align 8
  br label %97

97:                                               ; preds = %92, %63, %59, %56, %52, %85, %89, %3, %8, %12, %26, %30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1166 !PGOFuncName !2674 {
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
declare ptr @array_ref_up_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 !prof !1225 !PGOFuncName !2675 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #21
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @potentially_threadable_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 !prof !2676 !PGOFuncName !2677 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !1221
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !1495
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1496
  ret void
}

; Function Attrs: optsize
declare void @thread_across_edge(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @simplify_stmt_for_jump_threading(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !2678 !PGOFuncName !2679 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1281
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %10, !prof !2680

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !1337
  %7 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %8 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %9 = tail call fastcc ptr @vrp_evaluate_conditional(i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %1) #20
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #4 !prof !2676 !PGOFuncName !2681 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !2682

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !2683
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1764 !PGOFuncName !2684 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !2685
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1530
  store ptr %6, ptr %0, align 8, !tbaa !2687
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !1042
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !2688

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #20
  br label %11

11:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !2689 !PGOFuncName !2690 {
  %2 = load ptr, ptr %0, align 8, !tbaa !2687
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !2685
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #6 !prof !2691 !PGOFuncName !2692 {
  %2 = load ptr, ptr %0, align 8, !tbaa !2687
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1530
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !2693
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #4 !prof !2694 !PGOFuncName !2695 {
  %2 = load ptr, ptr %0, align 8, !tbaa !2687
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !2696 !PGOFuncName !2697 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1577
  store ptr %1, ptr %4, align 8, !tbaa !1032
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #6 !prof !2696 !PGOFuncName !2698 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !2693
  store ptr %3, ptr %0, align 8, !tbaa !2687
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #20, !range !1042
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !2699

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1530
  store ptr %8, ptr %2, align 8, !tbaa !2693
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !2691 !PGOFuncName !2700 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !2701
  store ptr %4, ptr %0, align 8, !tbaa !2687
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !1042
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !2702

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !2703
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !2704

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #20
  br label %12

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #20
  br label %12

12:                                               ; preds = %7, %10, %11
  ret void
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2691 !PGOFuncName !2705 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1036
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #21
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #20, !range !1281
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !2706

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #20
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !2707

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #20
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !2708

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #20
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !2709, !llvm.loop !2710

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !2711

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53, !prof !2712

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #20
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40, !prof !2713

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #20
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !prof !2714, !llvm.loop !2715

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
  %56 = load ptr, ptr %55, align 8, !tbaa !2703
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !2716

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #20
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #17 !prof !2696 !PGOFuncName !2717 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !2718

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1530
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !2719

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !2720 !PGOFuncName !2721 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !2722

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 771, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !1503
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #3 !prof !1166 !PGOFuncName !2723 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !1042
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !1036
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !2724
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #17 !prof !2725 !PGOFuncName !2726 {
  %2 = load ptr, ptr %0, align 8, !tbaa !2727
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !2728

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1530
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1530
  store ptr %2, ptr %6, align 8, !tbaa !2727
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !2725 !PGOFuncName !2729 {
  store ptr %1, ptr %0, align 8, !tbaa !2727
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1530
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1530
  store ptr %0, ptr %4, align 8, !tbaa !2727
  store ptr %0, ptr %3, align 8, !tbaa !1530
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !2696 !PGOFuncName !2730 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !2731

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !1342

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !2727
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #20
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @thread_through_all_blocks(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #11 !prof !1225 !PGOFuncName !2732 {
  %1 = load ptr, ptr @stack, align 8, !tbaa !1032
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !1374

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @stack, align 8, !tbaa !1032
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_num_ops(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !prof !1362 !PGOFuncName !2733 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 4, !tbaa !1036
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!1021}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020}
!36 = !{ptr @ssa_name_nonnegative_p, ptr @get_value_range, i64 818}
!37 = !{ptr @ssa_name_nonnegative_p, ptr @compare_values, i64 771}
!38 = !{ptr @get_value_range, ptr @xcalloc, i64 1399752}
!39 = !{ptr @get_value_range, ptr @nonnull_arg_p, i64 12112}
!40 = !{ptr @get_value_range, ptr @set_value_range_to_nonnull, i64 5}
!41 = !{ptr @get_value_range, ptr @set_value_range_to_varying, i64 15702}
!42 = !{ptr @compare_values, ptr @compare_values_warnv, i64 3195099}
!43 = !{ptr @compare_values, ptr @is_gimple_min_invariant, i64 120159}
!44 = !{ptr @nonnull_arg_p, ptr @fancy_abort, i64 2}
!45 = !{ptr @nonnull_arg_p, ptr @lookup_attribute, i64 12111}
!46 = !{ptr @nonnull_arg_p, ptr @compare_tree_int, i64 13}
!47 = !{ptr @set_value_range_to_nonnull, ptr @build_int_cst, i64 14899}
!48 = !{ptr @set_value_range_to_nonnull, ptr @set_value_range, i64 14899}
!49 = !{ptr @set_value_range_to_varying, ptr @bitmap_clear, i64 38531}
!50 = !{ptr @set_value_range, ptr @bitmap_obstack_alloc_stat, i64 502090}
!51 = !{ptr @set_value_range, ptr @bitmap_copy, i64 512301}
!52 = !{ptr @set_value_range, ptr @bitmap_clear, i64 28205}
!53 = !{ptr @compare_values_warnv, ptr @fancy_abort, i64 6}
!54 = !{ptr @compare_values_warnv, ptr @fold_convert_loc, i64 5118520}
!55 = !{ptr @compare_values_warnv, ptr @tree_ssa_strip_useless_type_conversions, i64 5118520}
!56 = !{ptr @compare_values_warnv, ptr @tree_int_cst_sgn, i64 2383}
!57 = !{ptr @compare_values_warnv, ptr @is_negative_overflow_infinity, i64 248996}
!58 = !{ptr @compare_values_warnv, ptr @fold_unary_to_constant, i64 668}
!59 = !{ptr @compare_values_warnv, ptr @is_gimple_min_invariant, i64 8937771}
!60 = !{ptr @compare_values_warnv, ptr @is_positive_overflow_infinity, i64 230826}
!61 = !{ptr @compare_values_warnv, ptr @tree_int_cst_compare, i64 3773944}
!62 = !{ptr @compare_values_warnv, ptr @operand_equal_p, i64 6388}
!63 = !{ptr @compare_values_warnv, ptr @operand_less_p, i64 8835}
!64 = !{ptr @compare_values_warnv, ptr @fold_binary_to_constant, i64 1777}
!65 = !{ptr @compare_values_warnv, ptr @integer_onep, i64 1714}
!66 = !{ptr @is_negative_overflow_infinity, ptr @needs_overflow_infinity, i64 207069}
!67 = !{ptr @is_negative_overflow_infinity, ptr @vrp_val_is_min, i64 91531}
!68 = !{ptr @is_positive_overflow_infinity, ptr @needs_overflow_infinity, i64 216738}
!69 = !{ptr @is_positive_overflow_infinity, ptr @vrp_val_is_max, i64 86152}
!70 = !{ptr @operand_less_p, ptr @fold_defer_overflow_warnings, i64 15045}
!71 = !{ptr @operand_less_p, ptr @fold_binary_to_constant, i64 15045}
!72 = !{ptr @operand_less_p, ptr @fold_undefer_and_ignore_overflow_warnings, i64 15045}
!73 = !{ptr @operand_less_p, ptr @integer_zerop, i64 10150}
!74 = !{ptr @operand_less_p, ptr @is_negative_overflow_infinity, i64 42867}
!75 = !{ptr @operand_less_p, ptr @is_positive_overflow_infinity, i64 42866}
!76 = !{ptr @vrp_val_is_min, ptr @vrp_val_min, i64 1229502}
!77 = !{ptr @vrp_val_is_min, ptr @operand_equal_p, i64 1131819}
!78 = !{ptr @vrp_val_is_max, ptr @vrp_val_max, i64 260791}
!79 = !{ptr @vrp_val_is_max, ptr @operand_equal_p, i64 244957}
!80 = !{ptr @execute_vrp, ptr @loop_optimizer_init, i64 13304}
!81 = !{ptr @execute_vrp, ptr @rewrite_into_loop_closed_ssa, i64 13304}
!82 = !{ptr @execute_vrp, ptr @scev_initialize, i64 13304}
!83 = !{ptr @execute_vrp, ptr @insert_range_assertions, i64 13304}
!84 = !{ptr @execute_vrp, ptr @VEC_edge_heap_alloc, i64 13304}
!85 = !{ptr @execute_vrp, ptr @VEC_switch_update_heap_alloc, i64 13304}
!86 = !{ptr @execute_vrp, ptr @threadedge_initialize_values, i64 13304}
!87 = !{ptr @execute_vrp, ptr @vrp_initialize, i64 13304}
!88 = !{ptr @execute_vrp, ptr @ssa_propagate, i64 13304}
!89 = !{ptr @execute_vrp, ptr @vrp_finalize, i64 13304}
!90 = !{ptr @execute_vrp, ptr @remove_range_assertions, i64 13304}
!91 = !{ptr @execute_vrp, ptr @update_ssa, i64 13304}
!92 = !{ptr @execute_vrp, ptr @finalize_jump_threads, i64 13304}
!93 = !{ptr @execute_vrp, ptr @VEC_edge_base_iterate, i64 13459}
!94 = !{ptr @execute_vrp, ptr @VEC_switch_update_base_iterate, i64 13407}
!95 = !{ptr @execute_vrp, ptr @remove_edge, i64 155}
!96 = !{ptr @execute_vrp, ptr @gimple_switch_set_num_labels, i64 103}
!97 = !{ptr @execute_vrp, ptr @gimple_switch_set_label, i64 425}
!98 = !{ptr @execute_vrp, ptr @gimple_switch_default_label, i64 103}
!99 = !{ptr @execute_vrp, ptr @VEC_edge_base_length, i64 13304}
!100 = !{ptr @execute_vrp, ptr @free_dominance_info, i64 82}
!101 = !{ptr @execute_vrp, ptr @VEC_edge_heap_free, i64 13304}
!102 = !{ptr @execute_vrp, ptr @VEC_switch_update_heap_free, i64 13304}
!103 = !{ptr @execute_vrp, ptr @threadedge_finalize_values, i64 13304}
!104 = !{ptr @execute_vrp, ptr @scev_finalize, i64 13304}
!105 = !{ptr @execute_vrp, ptr @loop_optimizer_finalize, i64 13304}
!106 = !{ptr @insert_range_assertions, ptr @bitmap_obstack_alloc_stat, i64 13304}
!107 = !{ptr @insert_range_assertions, ptr @VEC_tree_base_length, i64 13304}
!108 = !{ptr @insert_range_assertions, ptr @xcalloc, i64 13304}
!109 = !{ptr @insert_range_assertions, ptr @calculate_dominance_info, i64 13304}
!110 = !{ptr @insert_range_assertions, ptr @find_assert_locations, i64 13304}
!111 = !{ptr @insert_range_assertions, ptr @process_assert_insertions, i64 10331}
!112 = !{ptr @insert_range_assertions, ptr @update_ssa, i64 10331}
!113 = !{ptr @insert_range_assertions, ptr @free, i64 13304}
!114 = !{ptr @insert_range_assertions, ptr @bitmap_obstack_free, i64 13304}
!115 = !{ptr @VEC_edge_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 13304}
!116 = !{ptr @VEC_switch_update_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 13304}
!117 = !{ptr @vrp_initialize, ptr @VEC_tree_base_length, i64 26608}
!118 = !{ptr @vrp_initialize, ptr @xcalloc, i64 26608}
!119 = !{ptr @vrp_initialize, ptr @gsi_start_phis, i64 554622}
!120 = !{ptr @vrp_initialize, ptr @gsi_end_p, i64 3046712}
!121 = !{ptr @vrp_initialize, ptr @gsi_stmt, i64 1937468}
!122 = !{ptr @vrp_initialize, ptr @stmt_interesting_for_vrp, i64 1623826}
!123 = !{ptr @vrp_initialize, ptr @gimple_phi_result_ptr, i64 99827}
!124 = !{ptr @vrp_initialize, ptr @get_def_from_ptr, i64 99827}
!125 = !{ptr @vrp_initialize, ptr @get_value_range, i64 634928}
!126 = !{ptr @vrp_initialize, ptr @set_value_range_to_varying, i64 634928}
!127 = !{ptr @vrp_initialize, ptr @prop_set_simulate_again, i64 1937468}
!128 = !{ptr @vrp_initialize, ptr @gsi_next, i64 1937468}
!129 = !{ptr @vrp_initialize, ptr @gsi_start_bb, i64 554622}
!130 = !{ptr @vrp_initialize, ptr @stmt_ends_bb_p, i64 1697164}
!131 = !{ptr @vrp_initialize, ptr @op_iter_init_tree, i64 772541}
!132 = !{ptr @vrp_initialize, ptr @op_iter_done, i64 1307642}
!133 = !{ptr @vrp_initialize, ptr @op_iter_next_tree, i64 535101}
!134 = !{ptr @vrp_visit_stmt, ptr @stmt_interesting_for_vrp, i64 1003424}
!135 = !{ptr @vrp_visit_stmt, ptr @stmt_ends_bb_p, i64 20216}
!136 = !{ptr @vrp_visit_stmt, ptr @fancy_abort, i64 1}
!137 = !{ptr @vrp_visit_stmt, ptr @is_gimple_assign, i64 983208}
!138 = !{ptr @vrp_visit_stmt, ptr @is_gimple_call, i64 984099}
!139 = !{ptr @vrp_visit_stmt, ptr @gimple_call_fndecl, i64 1781}
!140 = !{ptr @vrp_visit_stmt, ptr @gimple_vuse, i64 680461}
!141 = !{ptr @vrp_visit_stmt, ptr @vrp_visit_assignment_or_call, i64 681013}
!142 = !{ptr @vrp_visit_stmt, ptr @gimple_code, i64 302194}
!143 = !{ptr @vrp_visit_stmt, ptr @vrp_visit_cond_stmt, i64 296453}
!144 = !{ptr @vrp_visit_stmt, ptr @vrp_visit_switch_stmt, i64 5740}
!145 = !{ptr @vrp_visit_stmt, ptr @op_iter_init_tree, i64 20218}
!146 = !{ptr @vrp_visit_stmt, ptr @op_iter_done, i64 20219}
!147 = !{ptr @vrp_visit_stmt, ptr @get_value_range, i64 1}
!148 = !{ptr @vrp_visit_stmt, ptr @set_value_range_to_varying, i64 1}
!149 = !{ptr @vrp_visit_stmt, ptr @op_iter_next_tree, i64 1}
!150 = !{ptr @vrp_visit_phi_node, ptr @gimple_phi_result_ptr, i64 366469}
!151 = !{ptr @vrp_visit_phi_node, ptr @get_def_from_ptr, i64 366469}
!152 = !{ptr @vrp_visit_phi_node, ptr @get_value_range, i64 982956}
!153 = !{ptr @vrp_visit_phi_node, ptr @copy_value_range, i64 366469}
!154 = !{ptr @vrp_visit_phi_node, ptr @fwrite, i64 2}
!155 = !{ptr @vrp_visit_phi_node, ptr @print_gimple_stmt, i64 1}
!156 = !{ptr @vrp_visit_phi_node, ptr @gimple_phi_num_args, i64 2786468}
!157 = !{ptr @vrp_visit_phi_node, ptr @gimple_phi_arg_edge, i64 2469996}
!158 = !{ptr @vrp_visit_phi_node, ptr @fprintf, i64 1}
!159 = !{ptr @vrp_visit_phi_node, ptr @gimple_phi_arg_imm_use_ptr, i64 1599904}
!160 = !{ptr @vrp_visit_phi_node, ptr @get_use_from_ptr, i64 1599904}
!161 = !{ptr @vrp_visit_phi_node, ptr @is_overflow_infinity, i64 983417}
!162 = !{ptr @vrp_visit_phi_node, ptr @copy_node_stat, i64 10}
!163 = !{ptr @vrp_visit_phi_node, ptr @fputc, i64 2}
!164 = !{ptr @vrp_visit_phi_node, ptr @print_generic_expr, i64 1}
!165 = !{ptr @vrp_visit_phi_node, ptr @dump_value_range, i64 1}
!166 = !{ptr @vrp_visit_phi_node, ptr @vrp_meet, i64 1599904}
!167 = !{ptr @vrp_visit_phi_node, ptr @loop_containing_stmt, i64 366468}
!168 = !{ptr @vrp_visit_phi_node, ptr @gimple_bb, i64 366467}
!169 = !{ptr @vrp_visit_phi_node, ptr @adjust_range_with_scev, i64 128218}
!170 = !{ptr @vrp_visit_phi_node, ptr @compare_values, i64 119612}
!171 = !{ptr @vrp_visit_phi_node, ptr @vrp_val_is_max, i64 1198}
!172 = !{ptr @vrp_visit_phi_node, ptr @needs_overflow_infinity, i64 8598}
!173 = !{ptr @vrp_visit_phi_node, ptr @vrp_var_may_overflow, i64 7794}
!174 = !{ptr @vrp_visit_phi_node, ptr @supports_overflow_infinity, i64 4835}
!175 = !{ptr @vrp_visit_phi_node, ptr @negative_overflow_infinity, i64 465}
!176 = !{ptr @vrp_visit_phi_node, ptr @vrp_val_is_min, i64 10954}
!177 = !{ptr @vrp_visit_phi_node, ptr @positive_overflow_infinity, i64 4368}
!178 = !{ptr @vrp_visit_phi_node, ptr @update_value_range, i64 288972}
!179 = !{ptr @vrp_visit_phi_node, ptr @set_value_range_to_varying, i64 77497}
!180 = !{ptr @vrp_finalize, ptr @fwrite, i64 1}
!181 = !{ptr @vrp_finalize, ptr @dump_all_value_ranges, i64 1}
!182 = !{ptr @vrp_finalize, ptr @fputc, i64 1}
!183 = !{ptr @vrp_finalize, ptr @VEC_tree_base_length, i64 4290626}
!184 = !{ptr @vrp_finalize, ptr @xcalloc, i64 13304}
!185 = !{ptr @vrp_finalize, ptr @is_gimple_min_invariant, i64 55959}
!186 = !{ptr @vrp_finalize, ptr @free, i64 1447840}
!187 = !{ptr @vrp_finalize, ptr @substitute_and_fold, i64 13304}
!188 = !{ptr @vrp_finalize, ptr @check_all_array_refs, i64 1}
!189 = !{ptr @vrp_finalize, ptr @identify_jump_threads, i64 13304}
!190 = !{ptr @vrp_finalize, ptr @bitmap_obstack_free, i64 1399647}
!191 = !{ptr @remove_range_assertions, ptr @gsi_start_bb, i64 554622}
!192 = !{ptr @remove_range_assertions, ptr @gsi_end_p, i64 2237505}
!193 = !{ptr @remove_range_assertions, ptr @gsi_stmt, i64 1682883}
!194 = !{ptr @remove_range_assertions, ptr @is_gimple_assign, i64 1682883}
!195 = !{ptr @remove_range_assertions, ptr @gimple_assign_rhs_code, i64 1145381}
!196 = !{ptr @remove_range_assertions, ptr @gimple_assign_rhs1, i64 315168}
!197 = !{ptr @remove_range_assertions, ptr @fold, i64 315168}
!198 = !{ptr @remove_range_assertions, ptr @fancy_abort, i64 2}
!199 = !{ptr @remove_range_assertions, ptr @gimple_assign_lhs, i64 315168}
!200 = !{ptr @remove_range_assertions, ptr @first_imm_use_stmt, i64 315168}
!201 = !{ptr @remove_range_assertions, ptr @end_imm_use_stmt_p, i64 884658}
!202 = !{ptr @remove_range_assertions, ptr @first_imm_use_on_stmt, i64 569490}
!203 = !{ptr @remove_range_assertions, ptr @end_imm_use_on_stmt_p, i64 1231461}
!204 = !{ptr @remove_range_assertions, ptr @set_ssa_use_from_ptr, i64 661971}
!205 = !{ptr @remove_range_assertions, ptr @next_imm_use_on_stmt, i64 661971}
!206 = !{ptr @remove_range_assertions, ptr @next_imm_use_stmt, i64 569490}
!207 = !{ptr @remove_range_assertions, ptr @gsi_remove, i64 315168}
!208 = !{ptr @remove_range_assertions, ptr @release_defs, i64 315168}
!209 = !{ptr @remove_range_assertions, ptr @gsi_next, i64 1367715}
!210 = !{ptr @finalize_jump_threads, ptr @thread_through_all_blocks, i64 13304}
!211 = !{ptr @finalize_jump_threads, ptr @VEC_tree_heap_free, i64 13304}
!212 = !{ptr @gimple_switch_set_num_labels, ptr @gimple_set_num_ops, i64 102}
!213 = !{ptr @gimple_switch_set_label, ptr @gimple_num_ops, i64 424}
!214 = !{ptr @gimple_switch_set_label, ptr @fancy_abort, i64 2}
!215 = !{ptr @gimple_switch_set_label, ptr @gimple_set_op, i64 424}
!216 = !{ptr @gimple_switch_default_label, ptr @gimple_switch_label, i64 394}
!217 = !{ptr @VEC_edge_heap_free, ptr @free, i64 13303}
!218 = !{ptr @VEC_switch_update_heap_free, ptr @free, i64 13303}
!219 = !{ptr @find_assert_locations, ptr @xcalloc, i64 53216}
!220 = !{ptr @find_assert_locations, ptr @pre_and_rev_post_order_compute, i64 13304}
!221 = !{ptr @find_assert_locations, ptr @VEC_basic_block_base_index, i64 508767}
!222 = !{ptr @find_assert_locations, ptr @VEC_tree_base_length, i64 533734}
!223 = !{ptr @find_assert_locations, ptr @sbitmap_alloc, i64 533734}
!224 = !{ptr @find_assert_locations, ptr @sbitmap_zero, i64 533734}
!225 = !{ptr @find_assert_locations, ptr @find_assert_locations_1, i64 508767}
!226 = !{ptr @find_assert_locations, ptr @sbitmap_empty_p, i64 508767}
!227 = !{ptr @find_assert_locations, ptr @ei_start_1, i64 994873}
!228 = !{ptr @find_assert_locations, ptr @ei_cond, i64 2590312}
!229 = !{ptr @find_assert_locations, ptr @sbitmap_a_or_b, i64 763580}
!230 = !{ptr @find_assert_locations, ptr @ei_next, i64 1595439}
!231 = !{ptr @find_assert_locations, ptr @free, i64 1120686}
!232 = !{ptr @process_assert_insertions, ptr @bmp_iter_set_init, i64 10332}
!233 = !{ptr @process_assert_insertions, ptr @bmp_iter_set, i64 187753}
!234 = !{ptr @process_assert_insertions, ptr @fancy_abort, i64 1}
!235 = !{ptr @process_assert_insertions, ptr @VEC_tree_base_index, i64 315161}
!236 = !{ptr @process_assert_insertions, ptr @process_assert_insertions_for, i64 315161}
!237 = !{ptr @process_assert_insertions, ptr @free, i64 315161}
!238 = !{ptr @process_assert_insertions, ptr @bmp_iter_next, i64 177421}
!239 = !{ptr @process_assert_insertions, ptr @gsi_commit_edge_inserts, i64 8523}
!240 = !{ptr @process_assert_insertions, ptr @statistics_counter_event, i64 10332}
!241 = !{ptr @find_assert_locations_1, ptr @last_stmt, i64 508804}
!242 = !{ptr @find_assert_locations_1, ptr @gimple_code, i64 925948}
!243 = !{ptr @find_assert_locations_1, ptr @fp_predicate, i64 287491}
!244 = !{ptr @find_assert_locations_1, ptr @zero_ssa_operands, i64 293186}
!245 = !{ptr @find_assert_locations_1, ptr @find_conditional_asserts, i64 287468}
!246 = !{ptr @find_assert_locations_1, ptr @find_switch_asserts, i64 5709}
!247 = !{ptr @find_assert_locations_1, ptr @gsi_start_bb, i64 508804}
!248 = !{ptr @find_assert_locations_1, ptr @gsi_end_p, i64 2639714}
!249 = !{ptr @find_assert_locations_1, ptr @gsi_stmt, i64 1622106}
!250 = !{ptr @find_assert_locations_1, ptr @is_gimple_debug, i64 1381784}
!251 = !{ptr @find_assert_locations_1, ptr @op_iter_init_tree, i64 1381783}
!252 = !{ptr @find_assert_locations_1, ptr @op_iter_done, i64 3444775}
!253 = !{ptr @find_assert_locations_1, ptr @SET_BIT, i64 1715120}
!254 = !{ptr @find_assert_locations_1, ptr @infer_value_range, i64 1444647}
!255 = !{ptr @find_assert_locations_1, ptr @integer_zerop, i64 378167}
!256 = !{ptr @find_assert_locations_1, ptr @is_gimple_assign, i64 431349}
!257 = !{ptr @find_assert_locations_1, ptr @gimple_assign_rhs_code, i64 385171}
!258 = !{ptr @find_assert_locations_1, ptr @gimple_assign_rhs1, i64 159659}
!259 = !{ptr @find_assert_locations_1, ptr @has_single_use, i64 431351}
!260 = !{ptr @find_assert_locations_1, ptr @register_new_assert_for, i64 327638}
!261 = !{ptr @find_assert_locations_1, ptr @op_iter_next_tree, i64 1444647}
!262 = !{ptr @find_assert_locations_1, ptr @gsi_next, i64 1622106}
!263 = !{ptr @find_assert_locations_1, ptr @gsi_start_phis, i64 508804}
!264 = !{ptr @find_assert_locations_1, ptr @op_iter_init_phiuse, i64 240322}
!265 = !{ptr @find_assert_locations_1, ptr @get_use_from_ptr, i64 378023}
!266 = !{ptr @find_assert_locations_1, ptr @op_iter_next_use, i64 378023}
!267 = !{ptr @ei_cond, ptr @ei_end_p, i64 3695693}
!268 = !{ptr @ei_cond, ptr @ei_edge, i64 2349540}
!269 = !{ptr @ei_next, ptr @ei_container, i64 4699079}
!270 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 2349540}
!271 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!272 = !{ptr @fp_predicate, ptr @gimple_cond_lhs, i64 862447}
!273 = !{ptr @zero_ssa_operands, ptr @op_iter_init_tree, i64 293187}
!274 = !{ptr @zero_ssa_operands, ptr @op_iter_done, i64 293187}
!275 = !{ptr @find_conditional_asserts, ptr @gsi_for_stmt, i64 287471}
!276 = !{ptr @find_conditional_asserts, ptr @ei_start_1, i64 287471}
!277 = !{ptr @find_conditional_asserts, ptr @ei_cond, i64 862412}
!278 = !{ptr @find_conditional_asserts, ptr @op_iter_init_tree, i64 574940}
!279 = !{ptr @find_conditional_asserts, ptr @op_iter_done, i64 1227186}
!280 = !{ptr @find_conditional_asserts, ptr @gimple_cond_code, i64 652246}
!281 = !{ptr @find_conditional_asserts, ptr @gimple_cond_lhs, i64 652246}
!282 = !{ptr @find_conditional_asserts, ptr @gimple_cond_rhs, i64 652246}
!283 = !{ptr @find_conditional_asserts, ptr @register_edge_assert_for, i64 652246}
!284 = !{ptr @find_conditional_asserts, ptr @op_iter_next_tree, i64 652246}
!285 = !{ptr @find_conditional_asserts, ptr @ei_next, i64 574941}
!286 = !{ptr @find_switch_asserts, ptr @gimple_switch_num_labels, i64 5709}
!287 = !{ptr @find_switch_asserts, ptr @gsi_for_stmt, i64 5709}
!288 = !{ptr @find_switch_asserts, ptr @gimple_switch_index, i64 5709}
!289 = !{ptr @find_switch_asserts, ptr @make_tree_vec_stat, i64 5708}
!290 = !{ptr @find_switch_asserts, ptr @spec_qsort, i64 5708}
!291 = !{ptr @find_switch_asserts, ptr @gimple_switch_label, i64 45087}
!292 = !{ptr @find_switch_asserts, ptr @label_to_block_fn, i64 26553}
!293 = !{ptr @find_switch_asserts, ptr @find_edge, i64 26553}
!294 = !{ptr @find_switch_asserts, ptr @fold_convert_loc, i64 33476}
!295 = !{ptr @find_switch_asserts, ptr @register_edge_assert_for, i64 33476}
!296 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 1618130}
!297 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 1618130}
!298 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 1504525}
!299 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 3042729}
!300 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 3042729}
!301 = !{ptr @infer_value_range, ptr @stmt_could_throw_p, i64 1444649}
!302 = !{ptr @infer_value_range, ptr @stmt_ends_bb_p, i64 1444648}
!303 = !{ptr @infer_value_range, ptr @gimple_bb, i64 339831}
!304 = !{ptr @infer_value_range, ptr @VEC_edge_base_length, i64 339831}
!305 = !{ptr @infer_value_range, ptr @gimple_code, i64 828777}
!306 = !{ptr @infer_value_range, ptr @count_uses_and_derefs, i64 828776}
!307 = !{ptr @infer_value_range, ptr @build_int_cst, i64 378167}
!308 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 8857353}
!309 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 6029236}
!310 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 6029236}
!311 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 2961809}
!312 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 4549541}
!313 = !{ptr @has_single_use, ptr @is_gimple_debug, i64 122739}
!314 = !{ptr @has_single_use, ptr @single_imm_use_1, i64 1}
!315 = !{ptr @register_new_assert_for, ptr @build_int_cst_wide, i64 1}
!316 = !{ptr @register_new_assert_for, ptr @operand_equal_p, i64 307310}
!317 = !{ptr @register_new_assert_for, ptr @dominated_by_p, i64 10937607}
!318 = !{ptr @register_new_assert_for, ptr @VEC_edge_base_length, i64 532979}
!319 = !{ptr @register_new_assert_for, ptr @xmalloc, i64 311586}
!320 = !{ptr @register_new_assert_for, ptr @bitmap_set_bit, i64 311586}
!321 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 2390078}
!322 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 535142}
!323 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 302330}
!324 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 302330}
!325 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!326 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 302330}
!327 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 202623}
!328 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 202623}
!329 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 857338}
!330 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 2905630}
!331 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 10480858}
!332 = !{ptr @gimple_op, ptr @gimple_ops, i64 10480857}
!333 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 14050335}
!334 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 10492270}
!335 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!336 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 10492270}
!337 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 10492270}
!338 = !{ptr @register_edge_assert_for, ptr @extract_code_and_val_from_cond_with_ops, i64 685734}
!339 = !{ptr @register_edge_assert_for, ptr @register_edge_assert_for_2, i64 685733}
!340 = !{ptr @register_edge_assert_for, ptr @integer_onep, i64 575829}
!341 = !{ptr @register_edge_assert_for, ptr @integer_zerop, i64 575829}
!342 = !{ptr @register_edge_assert_for, ptr @is_gimple_assign, i64 313494}
!343 = !{ptr @register_edge_assert_for, ptr @gimple_assign_rhs_code, i64 384231}
!344 = !{ptr @register_edge_assert_for, ptr @gimple_assign_rhs1, i64 30687}
!345 = !{ptr @register_edge_assert_for, ptr @gimple_assign_rhs2, i64 30687}
!346 = !{ptr @register_edge_assert_for, ptr @register_edge_assert_for_1, i64 61374}
!347 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 1968586}
!348 = !{ptr @extract_code_and_val_from_cond_with_ops, ptr @swap_tree_comparison, i64 155754}
!349 = !{ptr @extract_code_and_val_from_cond_with_ops, ptr @invert_tree_comparison, i64 664642}
!350 = !{ptr @extract_code_and_val_from_cond_with_ops, ptr @compare_values, i64 645685}
!351 = !{ptr @register_edge_assert_for_2, ptr @extract_code_and_val_from_cond_with_ops, i64 706587}
!352 = !{ptr @register_edge_assert_for_2, ptr @live_on_edge, i64 717137}
!353 = !{ptr @register_edge_assert_for_2, ptr @has_single_use, i64 172345}
!354 = !{ptr @register_edge_assert_for_2, ptr @register_new_assert_for, i64 172342}
!355 = !{ptr @register_edge_assert_for_2, ptr @is_gimple_assign, i64 24925}
!356 = !{ptr @register_edge_assert_for_2, ptr @gimple_assign_rhs_code, i64 24695}
!357 = !{ptr @register_edge_assert_for_2, ptr @gimple_assign_rhs1, i64 15018}
!358 = !{ptr @register_edge_assert_for_2, ptr @gimple_assign_rhs2, i64 9408}
!359 = !{ptr @register_edge_assert_for_2, ptr @gimple_assign_cast_p, i64 24925}
!360 = !{ptr @register_edge_assert_for_2, ptr @gimple_expr_type, i64 1302}
!361 = !{ptr @register_edge_assert_for_2, ptr @build1_stat, i64 1086}
!362 = !{ptr @register_edge_assert_for_2, ptr @build2_stat, i64 2722}
!363 = !{ptr @register_edge_assert_for_2, ptr @fwrite, i64 4}
!364 = !{ptr @register_edge_assert_for_2, ptr @print_generic_expr, i64 4}
!365 = !{ptr @register_edge_assert_for_2, ptr @fputc, i64 2}
!366 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 451176}
!367 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 451175}
!368 = !{ptr @register_edge_assert_for_1, ptr @has_single_use, i64 64169}
!369 = !{ptr @register_edge_assert_for_1, ptr @build_int_cst, i64 8435}
!370 = !{ptr @register_edge_assert_for_1, ptr @register_new_assert_for, i64 8435}
!371 = !{ptr @register_edge_assert_for_1, ptr @gimple_code, i64 64169}
!372 = !{ptr @register_edge_assert_for_1, ptr @gimple_assign_rhs_code, i64 246105}
!373 = !{ptr @register_edge_assert_for_1, ptr @gimple_assign_rhs1, i64 31982}
!374 = !{ptr @register_edge_assert_for_1, ptr @gimple_assign_rhs2, i64 28552}
!375 = !{ptr @register_edge_assert_for_1, ptr @register_edge_assert_for_2, i64 29812}
!376 = !{ptr @register_edge_assert_for_1, ptr @register_edge_assert_for_1, i64 3887}
!377 = !{ptr @register_edge_assert_for_1, ptr @invert_tree_comparison, i64 9}
!378 = !{ptr @gimple_assign_cast_p, ptr @is_gimple_assign, i64 24925}
!379 = !{ptr @gimple_assign_cast_p, ptr @gimple_assign_rhs_code, i64 20782}
!380 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 722616}
!381 = !{ptr @gimple_expr_type, ptr @gimple_call_return_type, i64 1328}
!382 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 721287}
!383 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 70759}
!384 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 650528}
!385 = !{ptr @gimple_call_return_type, ptr @gimple_call_fn, i64 1328}
!386 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 213085}
!387 = !{ptr @gimple_switch_num_labels, ptr @gimple_num_ops, i64 7406}
!388 = !{ptr @gimple_switch_num_labels, ptr @fancy_abort, i64 1}
!389 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 17158}
!390 = !{ptr @gimple_switch_label, ptr @gimple_num_ops, i64 54471}
!391 = !{ptr @gimple_switch_label, ptr @fancy_abort, i64 1}
!392 = !{ptr @gimple_switch_label, ptr @gimple_op, i64 54471}
!393 = !{ptr @compare_case_labels, ptr @tree_int_cst_compare, i64 35145}
!394 = !{ptr @op_iter_init, ptr @fancy_abort, i64 1}
!395 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 792815}
!396 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 726890}
!397 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 2757438}
!398 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 2704375}
!399 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 792814}
!400 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 726889}
!401 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 2757439}
!402 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 5209830}
!403 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 5936719}
!404 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 6029236}
!405 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 2245877}
!406 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!407 = !{ptr @ei_end_p, ptr @ei_container, i64 7391385}
!408 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 3695693}
!409 = !{ptr @ei_edge, ptr @ei_container, i64 4699079}
!410 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 2349540}
!411 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!412 = !{ptr @process_assert_insertions_for, ptr @build2_stat, i64 315190}
!413 = !{ptr @process_assert_insertions_for, ptr @build_assert_expr_for, i64 315190}
!414 = !{ptr @process_assert_insertions_for, ptr @gsi_insert_on_edge, i64 176745}
!415 = !{ptr @process_assert_insertions_for, ptr @gsi_stmt, i64 138445}
!416 = !{ptr @process_assert_insertions_for, ptr @stmt_ends_bb_p, i64 138445}
!417 = !{ptr @process_assert_insertions_for, ptr @gsi_insert_after, i64 138444}
!418 = !{ptr @process_assert_insertions_for, ptr @ei_start_1, i64 1}
!419 = !{ptr @process_assert_insertions_for, ptr @ei_cond, i64 11}
!420 = !{ptr @process_assert_insertions_for, ptr @ei_next, i64 10}
!421 = !{ptr @process_assert_insertions_for, ptr @fancy_abort, i64 1}
!422 = !{ptr @build_assert_expr_for, ptr @fancy_abort, i64 1}
!423 = !{ptr @build_assert_expr_for, ptr @duplicate_ssa_name, i64 315191}
!424 = !{ptr @build_assert_expr_for, ptr @build2_stat, i64 315190}
!425 = !{ptr @build_assert_expr_for, ptr @gimple_build_assign_stat, i64 315190}
!426 = !{ptr @build_assert_expr_for, ptr @register_new_name_mapping, i64 315191}
!427 = !{ptr @stmt_interesting_for_vrp, ptr @gimple_code, i64 3107871}
!428 = !{ptr @stmt_interesting_for_vrp, ptr @gimple_phi_result, i64 380936}
!429 = !{ptr @stmt_interesting_for_vrp, ptr @is_gimple_reg, i64 240322}
!430 = !{ptr @stmt_interesting_for_vrp, ptr @is_gimple_assign, i64 2592217}
!431 = !{ptr @stmt_interesting_for_vrp, ptr @is_gimple_call, i64 2577827}
!432 = !{ptr @stmt_interesting_for_vrp, ptr @gimple_get_lhs, i64 2111718}
!433 = !{ptr @stmt_interesting_for_vrp, ptr @gimple_call_fndecl, i64 218415}
!434 = !{ptr @stmt_interesting_for_vrp, ptr @gimple_vuse, i64 1902289}
!435 = !{ptr @prop_set_simulate_again, ptr @gimple_set_visited, i64 1937612}
!436 = !{ptr @is_gimple_call, ptr @gimple_code, i64 3457179}
!437 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 211757}
!438 = !{ptr @vrp_visit_assignment_or_call, ptr @gimple_code, i64 681014}
!439 = !{ptr @vrp_visit_assignment_or_call, ptr @gimple_get_lhs, i64 681014}
!440 = !{ptr @vrp_visit_assignment_or_call, ptr @extract_range_basic, i64 891}
!441 = !{ptr @vrp_visit_assignment_or_call, ptr @extract_range_from_assignment, i64 680122}
!442 = !{ptr @vrp_visit_assignment_or_call, ptr @update_value_range, i64 681013}
!443 = !{ptr @vrp_visit_assignment_or_call, ptr @fwrite, i64 3}
!444 = !{ptr @vrp_visit_assignment_or_call, ptr @print_generic_expr, i64 1}
!445 = !{ptr @vrp_visit_assignment_or_call, ptr @dump_value_range, i64 1}
!446 = !{ptr @vrp_visit_assignment_or_call, ptr @op_iter_init_tree, i64 1}
!447 = !{ptr @vrp_visit_assignment_or_call, ptr @op_iter_done, i64 19}
!448 = !{ptr @vrp_visit_assignment_or_call, ptr @get_value_range, i64 18}
!449 = !{ptr @vrp_visit_assignment_or_call, ptr @set_value_range_to_varying, i64 18}
!450 = !{ptr @vrp_visit_assignment_or_call, ptr @op_iter_next_tree, i64 18}
!451 = !{ptr @vrp_visit_cond_stmt, ptr @fwrite, i64 9}
!452 = !{ptr @vrp_visit_cond_stmt, ptr @print_gimple_stmt, i64 1}
!453 = !{ptr @vrp_visit_cond_stmt, ptr @op_iter_init_tree, i64 1}
!454 = !{ptr @vrp_visit_cond_stmt, ptr @op_iter_done, i64 7}
!455 = !{ptr @vrp_visit_cond_stmt, ptr @fputc, i64 7}
!456 = !{ptr @vrp_visit_cond_stmt, ptr @print_generic_expr, i64 6}
!457 = !{ptr @vrp_visit_cond_stmt, ptr @dump_value_range, i64 6}
!458 = !{ptr @vrp_visit_cond_stmt, ptr @op_iter_next_tree, i64 6}
!459 = !{ptr @vrp_visit_cond_stmt, ptr @gimple_cond_code, i64 296455}
!460 = !{ptr @vrp_visit_cond_stmt, ptr @gimple_cond_lhs, i64 296455}
!461 = !{ptr @vrp_visit_cond_stmt, ptr @gimple_cond_rhs, i64 296455}
!462 = !{ptr @vrp_visit_cond_stmt, ptr @vrp_evaluate_conditional_warnv_with_ops, i64 296455}
!463 = !{ptr @vrp_visit_cond_stmt, ptr @gimple_bb, i64 12259}
!464 = !{ptr @vrp_visit_cond_stmt, ptr @find_taken_edge, i64 12259}
!465 = !{ptr @vrp_visit_switch_stmt, ptr @gimple_switch_index, i64 5740}
!466 = !{ptr @vrp_visit_switch_stmt, ptr @get_value_range, i64 5739}
!467 = !{ptr @vrp_visit_switch_stmt, ptr @symbolic_range_p, i64 410}
!468 = !{ptr @vrp_visit_switch_stmt, ptr @find_case_label_range, i64 382}
!469 = !{ptr @vrp_visit_switch_stmt, ptr @fancy_abort, i64 1}
!470 = !{ptr @vrp_visit_switch_stmt, ptr @gimple_switch_default_label, i64 274}
!471 = !{ptr @vrp_visit_switch_stmt, ptr @gimple_switch_label, i64 464}
!472 = !{ptr @vrp_visit_switch_stmt, ptr @gimple_bb, i64 53}
!473 = !{ptr @vrp_visit_switch_stmt, ptr @label_to_block_fn, i64 53}
!474 = !{ptr @vrp_visit_switch_stmt, ptr @find_edge, i64 53}
!475 = !{ptr @extract_range_basic, ptr @gimple_expr_type, i64 198067}
!476 = !{ptr @extract_range_basic, ptr @gimple_stmt_nonnegative_warnv_p, i64 139187}
!477 = !{ptr @extract_range_basic, ptr @stmt_overflow_infinity, i64 101647}
!478 = !{ptr @extract_range_basic, ptr @set_value_range_to_nonnegative, i64 101676}
!479 = !{ptr @extract_range_basic, ptr @vrp_stmt_computes_nonzero, i64 96391}
!480 = !{ptr @extract_range_basic, ptr @set_value_range_to_nonnull, i64 7791}
!481 = !{ptr @extract_range_basic, ptr @set_value_range_to_varying, i64 88600}
!482 = !{ptr @extract_range_from_assignment, ptr @gimple_assign_rhs_code, i64 985801}
!483 = !{ptr @extract_range_from_assignment, ptr @gimple_assign_rhs1, i64 681296}
!484 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_assert, i64 342911}
!485 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_ssa_name, i64 17390}
!486 = !{ptr @extract_range_from_assignment, ptr @gimple_expr_type, i64 305677}
!487 = !{ptr @extract_range_from_assignment, ptr @gimple_assign_rhs2, i64 203021}
!488 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_binary_expr, i64 177598}
!489 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_unary_expr, i64 102656}
!490 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_cond_expr, i64 123}
!491 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_comparison, i64 25423}
!492 = !{ptr @extract_range_from_assignment, ptr @get_gimple_rhs_class, i64 14023}
!493 = !{ptr @extract_range_from_assignment, ptr @is_gimple_min_invariant, i64 14010}
!494 = !{ptr @extract_range_from_assignment, ptr @set_value_range_to_value, i64 1185}
!495 = !{ptr @extract_range_from_assignment, ptr @set_value_range_to_varying, i64 12838}
!496 = !{ptr @extract_range_from_assignment, ptr @extract_range_basic, i64 197177}
!497 = !{ptr @update_value_range, ptr @get_value_range, i64 969992}
!498 = !{ptr @update_value_range, ptr @vrp_operand_equal_p, i64 497441}
!499 = !{ptr @update_value_range, ptr @vrp_bitmap_equal_p, i64 195211}
!500 = !{ptr @update_value_range, ptr @set_value_range, i64 801002}
!501 = !{ptr @update_value_range, ptr @bitmap_obstack_free, i64 969992}
!502 = !{ptr @gimple_stmt_nonnegative_warnv_p, ptr @gimple_code, i64 139187}
!503 = !{ptr @gimple_stmt_nonnegative_warnv_p, ptr @gimple_assign_nonnegative_warnv_p, i64 138747}
!504 = !{ptr @gimple_stmt_nonnegative_warnv_p, ptr @gimple_call_nonnegative_warnv_p, i64 439}
!505 = !{ptr @gimple_stmt_nonnegative_warnv_p, ptr @fancy_abort, i64 1}
!506 = !{ptr @set_value_range_to_nonnegative, ptr @supports_overflow_infinity, i64 29}
!507 = !{ptr @set_value_range_to_nonnegative, ptr @set_value_range_to_varying, i64 1}
!508 = !{ptr @set_value_range_to_nonnegative, ptr @build_int_cst, i64 101675}
!509 = !{ptr @set_value_range_to_nonnegative, ptr @positive_overflow_infinity, i64 28}
!510 = !{ptr @set_value_range_to_nonnegative, ptr @set_value_range, i64 101675}
!511 = !{ptr @stmt_overflow_infinity, ptr @is_gimple_assign, i64 101648}
!512 = !{ptr @stmt_overflow_infinity, ptr @gimple_assign_rhs_code, i64 101624}
!513 = !{ptr @stmt_overflow_infinity, ptr @get_gimple_rhs_class, i64 101624}
!514 = !{ptr @stmt_overflow_infinity, ptr @gimple_assign_rhs1, i64 94}
!515 = !{ptr @stmt_overflow_infinity, ptr @is_overflow_infinity, i64 94}
!516 = !{ptr @vrp_stmt_computes_nonzero, ptr @gimple_stmt_nonzero_warnv_p, i64 96391}
!517 = !{ptr @vrp_stmt_computes_nonzero, ptr @is_gimple_assign, i64 95277}
!518 = !{ptr @vrp_stmt_computes_nonzero, ptr @gimple_assign_rhs_code, i64 94719}
!519 = !{ptr @vrp_stmt_computes_nonzero, ptr @gimple_assign_rhs1, i64 12210}
!520 = !{ptr @vrp_stmt_computes_nonzero, ptr @get_base_address, i64 12210}
!521 = !{ptr @vrp_stmt_computes_nonzero, ptr @get_value_range, i64 12207}
!522 = !{ptr @vrp_stmt_computes_nonzero, ptr @range_is_nonnull, i64 12207}
!523 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @gimple_assign_rhs_code, i64 277022}
!524 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @get_gimple_rhs_class, i64 138749}
!525 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @gimple_expr_type, i64 138273}
!526 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @gimple_assign_rhs1, i64 138747}
!527 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @tree_unary_nonnegative_warnv_p, i64 31427}
!528 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @gimple_assign_rhs2, i64 106846}
!529 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @tree_binary_nonnegative_warnv_p, i64 106846}
!530 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @tree_single_nonnegative_warnv_p, i64 474}
!531 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @fancy_abort, i64 3}
!532 = !{ptr @gimple_call_nonnegative_warnv_p, ptr @gimple_call_num_args, i64 876}
!533 = !{ptr @gimple_call_nonnegative_warnv_p, ptr @gimple_call_arg, i64 446}
!534 = !{ptr @gimple_call_nonnegative_warnv_p, ptr @gimple_expr_type, i64 438}
!535 = !{ptr @gimple_call_nonnegative_warnv_p, ptr @gimple_call_fndecl, i64 438}
!536 = !{ptr @gimple_call_nonnegative_warnv_p, ptr @tree_call_nonnegative_warnv_p, i64 438}
!537 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 876}
!538 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 446}
!539 = !{ptr @supports_overflow_infinity, ptr @vrp_val_min, i64 8904}
!540 = !{ptr @supports_overflow_infinity, ptr @vrp_val_max, i64 8904}
!541 = !{ptr @positive_overflow_infinity, ptr @vrp_val_max, i64 8062}
!542 = !{ptr @positive_overflow_infinity, ptr @make_overflow_infinity, i64 8062}
!543 = !{ptr @make_overflow_infinity, ptr @copy_node_stat, i64 8865}
!544 = !{ptr @is_overflow_infinity, ptr @needs_overflow_infinity, i64 4135545}
!545 = !{ptr @is_overflow_infinity, ptr @vrp_val_is_min, i64 30690}
!546 = !{ptr @is_overflow_infinity, ptr @vrp_val_is_max, i64 28068}
!547 = !{ptr @gimple_stmt_nonzero_warnv_p, ptr @gimple_code, i64 96391}
!548 = !{ptr @gimple_stmt_nonzero_warnv_p, ptr @gimple_assign_nonzero_warnv_p, i64 95522}
!549 = !{ptr @gimple_stmt_nonzero_warnv_p, ptr @gimple_alloca_call_p, i64 868}
!550 = !{ptr @gimple_stmt_nonzero_warnv_p, ptr @fancy_abort, i64 1}
!551 = !{ptr @range_is_nonnull, ptr @integer_zerop, i64 24601}
!552 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @gimple_assign_rhs_code, i64 174126}
!553 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @get_gimple_rhs_class, i64 95524}
!554 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @gimple_expr_type, i64 78602}
!555 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @gimple_assign_rhs1, i64 95522}
!556 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @tree_unary_nonzero_warnv_p, i64 31126}
!557 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @gimple_assign_rhs2, i64 47476}
!558 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @tree_binary_nonzero_warnv_p, i64 47476}
!559 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @tree_single_nonzero_warnv_p, i64 16920}
!560 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @fancy_abort, i64 3}
!561 = !{ptr @extract_range_from_assert, ptr @fancy_abort, i64 7}
!562 = !{ptr @extract_range_from_assert, ptr @swap_tree_comparison, i64 1}
!563 = !{ptr @extract_range_from_assert, ptr @avoid_overflow_infinity, i64 342911}
!564 = !{ptr @extract_range_from_assert, ptr @set_value_range_to_varying, i64 4167}
!565 = !{ptr @extract_range_from_assert, ptr @get_value_range, i64 394869}
!566 = !{ptr @extract_range_from_assert, ptr @symbolic_range_p, i64 283833}
!567 = !{ptr @extract_range_from_assert, ptr @add_equivalence, i64 352882}
!568 = !{ptr @extract_range_from_assert, ptr @fold_build1_stat_loc, i64 2767}
!569 = !{ptr @extract_range_from_assert, ptr @int_const_binop, i64 2767}
!570 = !{ptr @extract_range_from_assert, ptr @build_int_cst, i64 24686}
!571 = !{ptr @extract_range_from_assert, ptr @force_fit_type_double, i64 5784}
!572 = !{ptr @extract_range_from_assert, ptr @set_and_canonicalize_value_range, i64 2891}
!573 = !{ptr @extract_range_from_assert, ptr @set_value_range, i64 371665}
!574 = !{ptr @extract_range_from_assert, ptr @compare_values, i64 141123}
!575 = !{ptr @extract_range_from_assert, ptr @vrp_val_is_min, i64 45451}
!576 = !{ptr @extract_range_from_assert, ptr @vrp_val_is_max, i64 15218}
!577 = !{ptr @extract_range_from_assert, ptr @fold_build2_stat_loc, i64 24571}
!578 = !{ptr @extract_range_from_assert, ptr @value_ranges_intersect_p, i64 22123}
!579 = !{ptr @extract_range_from_assert, ptr @is_positive_overflow_infinity, i64 5842}
!580 = !{ptr @extract_range_from_assert, ptr @needs_overflow_infinity, i64 6140}
!581 = !{ptr @extract_range_from_assert, ptr @supports_overflow_infinity, i64 2}
!582 = !{ptr @extract_range_from_assert, ptr @positive_overflow_infinity, i64 1}
!583 = !{ptr @extract_range_from_assert, ptr @size_int_kind, i64 10}
!584 = !{ptr @extract_range_from_assert, ptr @is_negative_overflow_infinity, i64 298}
!585 = !{ptr @extract_range_from_assert, ptr @negative_overflow_infinity, i64 1}
!586 = !{ptr @extract_range_from_ssa_name, ptr @get_value_range, i64 17389}
!587 = !{ptr @extract_range_from_ssa_name, ptr @copy_value_range, i64 11549}
!588 = !{ptr @extract_range_from_ssa_name, ptr @set_value_range, i64 5840}
!589 = !{ptr @extract_range_from_ssa_name, ptr @add_equivalence, i64 17389}
!590 = !{ptr @extract_range_from_binary_expr, ptr @op_with_constant_singleton_value_range, i64 20894}
!591 = !{ptr @extract_range_from_binary_expr, ptr @fold_binary_loc, i64 24341}
!592 = !{ptr @extract_range_from_binary_expr, ptr @is_gimple_min_invariant, i64 594533}
!593 = !{ptr @extract_range_from_binary_expr, ptr @is_overflow_infinity, i64 165194}
!594 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range, i64 37563}
!595 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_varying, i64 139786}
!596 = !{ptr @extract_range_from_binary_expr, ptr @get_value_range, i64 218701}
!597 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_value, i64 115595}
!598 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_undefined, i64 2}
!599 = !{ptr @extract_range_from_binary_expr, ptr @symbolic_range_p, i64 73062}
!600 = !{ptr @extract_range_from_binary_expr, ptr @range_is_nonnull, i64 1815}
!601 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_nonnull, i64 27}
!602 = !{ptr @extract_range_from_binary_expr, ptr @range_is_null, i64 899}
!603 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_null, i64 3}
!604 = !{ptr @extract_range_from_binary_expr, ptr @fancy_abort, i64 4}
!605 = !{ptr @extract_range_from_binary_expr, ptr @integer_zerop, i64 13494}
!606 = !{ptr @extract_range_from_binary_expr, ptr @build_int_cst, i64 5201}
!607 = !{ptr @extract_range_from_binary_expr, ptr @integer_onep, i64 5954}
!608 = !{ptr @extract_range_from_binary_expr, ptr @overflow_infinity_range_p, i64 16608}
!609 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_truthvalue, i64 46}
!610 = !{ptr @extract_range_from_binary_expr, ptr @vrp_int_const_binop, i64 276730}
!611 = !{ptr @extract_range_from_binary_expr, ptr @build_int_cst_wide, i64 5926}
!612 = !{ptr @extract_range_from_binary_expr, ptr @vrp_expr_computes_nonnegative, i64 1865}
!613 = !{ptr @extract_range_from_binary_expr, ptr @operand_less_p, i64 1098}
!614 = !{ptr @extract_range_from_binary_expr, ptr @range_includes_zero_p, i64 19931}
!615 = !{ptr @extract_range_from_binary_expr, ptr @vrp_val_min, i64 8487}
!616 = !{ptr @extract_range_from_binary_expr, ptr @vrp_val_max, i64 8487}
!617 = !{ptr @extract_range_from_binary_expr, ptr @compare_values, i64 139167}
!618 = !{ptr @extract_range_from_binary_expr, ptr @abs_extent_range, i64 172}
!619 = !{ptr @extract_range_from_binary_expr, ptr @tree_int_cst_sgn, i64 4245}
!620 = !{ptr @extract_range_from_binary_expr, ptr @tree_to_double_int, i64 1094}
!621 = !{ptr @extract_range_from_binary_expr, ptr @floor_log2, i64 538}
!622 = !{ptr @extract_range_from_binary_expr, ptr @double_int_to_tree, i64 547}
!623 = !{ptr @extract_range_from_binary_expr, ptr @vrp_val_is_min, i64 126400}
!624 = !{ptr @extract_range_from_binary_expr, ptr @vrp_val_is_max, i64 53185}
!625 = !{ptr @extract_range_from_unary_expr, ptr @op_with_constant_singleton_value_range, i64 82127}
!626 = !{ptr @extract_range_from_unary_expr, ptr @fold_unary_loc, i64 12145}
!627 = !{ptr @extract_range_from_unary_expr, ptr @is_gimple_min_invariant, i64 12243}
!628 = !{ptr @extract_range_from_unary_expr, ptr @is_overflow_infinity, i64 26204}
!629 = !{ptr @extract_range_from_unary_expr, ptr @set_value_range, i64 12451}
!630 = !{ptr @extract_range_from_unary_expr, ptr @set_value_range_to_varying, i64 82091}
!631 = !{ptr @extract_range_from_unary_expr, ptr @get_value_range, i64 20395}
!632 = !{ptr @extract_range_from_unary_expr, ptr @set_value_range_to_value, i64 136}
!633 = !{ptr @extract_range_from_unary_expr, ptr @symbolic_range_p, i64 7379}
!634 = !{ptr @extract_range_from_unary_expr, ptr @range_is_nonnull, i64 5505}
!635 = !{ptr @extract_range_from_unary_expr, ptr @tree_unary_nonzero_warnv_p, i64 4375}
!636 = !{ptr @extract_range_from_unary_expr, ptr @set_value_range_to_nonnull, i64 1211}
!637 = !{ptr @extract_range_from_unary_expr, ptr @range_is_null, i64 5518}
!638 = !{ptr @extract_range_from_unary_expr, ptr @set_value_range_to_null, i64 59}
!639 = !{ptr @extract_range_from_unary_expr, ptr @int_const_binop, i64 906}
!640 = !{ptr @extract_range_from_unary_expr, ptr @size_int_kind, i64 452}
!641 = !{ptr @extract_range_from_unary_expr, ptr @integer_zerop, i64 452}
!642 = !{ptr @extract_range_from_unary_expr, ptr @force_fit_type_double, i64 13692}
!643 = !{ptr @extract_range_from_unary_expr, ptr @set_and_canonicalize_value_range, i64 6846}
!644 = !{ptr @extract_range_from_unary_expr, ptr @is_positive_overflow_infinity, i64 2117}
!645 = !{ptr @extract_range_from_unary_expr, ptr @negative_overflow_infinity, i64 44}
!646 = !{ptr @extract_range_from_unary_expr, ptr @is_negative_overflow_infinity, i64 2073}
!647 = !{ptr @extract_range_from_unary_expr, ptr @positive_overflow_infinity, i64 250}
!648 = !{ptr @extract_range_from_unary_expr, ptr @vrp_val_is_min, i64 2107}
!649 = !{ptr @extract_range_from_unary_expr, ptr @fold_unary_to_constant, i64 2242}
!650 = !{ptr @extract_range_from_unary_expr, ptr @needs_overflow_infinity, i64 257}
!651 = !{ptr @extract_range_from_unary_expr, ptr @supports_overflow_infinity, i64 241}
!652 = !{ptr @extract_range_from_unary_expr, ptr @range_includes_zero_p, i64 1434}
!653 = !{ptr @extract_range_from_unary_expr, ptr @compare_values, i64 1286}
!654 = !{ptr @extract_range_from_unary_expr, ptr @overflow_infinity_range_p, i64 13}
!655 = !{ptr @extract_range_from_unary_expr, ptr @build_int_cst, i64 3}
!656 = !{ptr @extract_range_from_unary_expr, ptr @fancy_abort, i64 2}
!657 = !{ptr @extract_range_from_cond_expr, ptr @get_value_range, i64 233}
!658 = !{ptr @extract_range_from_cond_expr, ptr @is_gimple_min_invariant, i64 11}
!659 = !{ptr @extract_range_from_cond_expr, ptr @set_value_range_to_value, i64 10}
!660 = !{ptr @extract_range_from_cond_expr, ptr @set_value_range_to_varying, i64 1}
!661 = !{ptr @extract_range_from_cond_expr, ptr @vrp_meet, i64 122}
!662 = !{ptr @extract_range_from_cond_expr, ptr @copy_value_range, i64 122}
!663 = !{ptr @extract_range_from_comparison, ptr @vrp_evaluate_conditional_warnv_with_ops, i64 25424}
!664 = !{ptr @extract_range_from_comparison, ptr @is_overflow_infinity, i64 1366}
!665 = !{ptr @extract_range_from_comparison, ptr @fold_convert_loc, i64 1350}
!666 = !{ptr @extract_range_from_comparison, ptr @is_gimple_min_invariant, i64 1350}
!667 = !{ptr @extract_range_from_comparison, ptr @set_value_range_to_value, i64 1349}
!668 = !{ptr @extract_range_from_comparison, ptr @set_value_range, i64 1}
!669 = !{ptr @extract_range_from_comparison, ptr @set_value_range_to_truthvalue, i64 24074}
!670 = !{ptr @set_value_range_to_value, ptr @is_gimple_min_invariant, i64 121780}
!671 = !{ptr @set_value_range_to_value, ptr @fancy_abort, i64 1}
!672 = !{ptr @set_value_range_to_value, ptr @avoid_overflow_infinity, i64 121780}
!673 = !{ptr @set_value_range_to_value, ptr @set_value_range, i64 121780}
!674 = !{ptr @avoid_overflow_infinity, ptr @is_overflow_infinity, i64 464691}
!675 = !{ptr @avoid_overflow_infinity, ptr @vrp_val_is_max, i64 1}
!676 = !{ptr @avoid_overflow_infinity, ptr @vrp_val_max, i64 1}
!677 = !{ptr @symbolic_range_p, ptr @is_gimple_min_invariant, i64 1007754}
!678 = !{ptr @add_equivalence, ptr @bitmap_obstack_alloc_stat, i64 349677}
!679 = !{ptr @add_equivalence, ptr @bitmap_set_bit, i64 370272}
!680 = !{ptr @add_equivalence, ptr @bitmap_ior_into, i64 129158}
!681 = !{ptr @set_and_canonicalize_value_range, ptr @set_value_range, i64 49300}
!682 = !{ptr @set_and_canonicalize_value_range, ptr @tree_int_cst_lt, i64 56708}
!683 = !{ptr @set_and_canonicalize_value_range, ptr @build_int_cst, i64 4486}
!684 = !{ptr @set_and_canonicalize_value_range, ptr @int_const_binop, i64 8818}
!685 = !{ptr @set_and_canonicalize_value_range, ptr @set_value_range_to_varying, i64 3079}
!686 = !{ptr @set_and_canonicalize_value_range, ptr @vrp_val_is_min, i64 4822}
!687 = !{ptr @set_and_canonicalize_value_range, ptr @vrp_val_is_max, i64 4822}
!688 = !{ptr @set_and_canonicalize_value_range, ptr @integer_zerop, i64 587}
!689 = !{ptr @set_and_canonicalize_value_range, ptr @vrp_val_max, i64 3}
!690 = !{ptr @set_and_canonicalize_value_range, ptr @vrp_val_min, i64 151}
!691 = !{ptr @value_ranges_intersect_p, ptr @operand_less_p, i64 61945}
!692 = !{ptr @negative_overflow_infinity, ptr @vrp_val_min, i64 803}
!693 = !{ptr @negative_overflow_infinity, ptr @make_overflow_infinity, i64 803}
!694 = !{ptr @copy_value_range, ptr @set_value_range, i64 517317}
!695 = !{ptr @op_with_constant_singleton_value_range, ptr @is_gimple_min_invariant, i64 15498}
!696 = !{ptr @op_with_constant_singleton_value_range, ptr @get_value_range, i64 9931}
!697 = !{ptr @op_with_constant_singleton_value_range, ptr @operand_equal_p, i64 6694}
!698 = !{ptr @range_is_null, ptr @integer_zerop, i64 1563}
!699 = !{ptr @set_value_range_to_null, ptr @build_int_cst, i64 19}
!700 = !{ptr @set_value_range_to_null, ptr @set_value_range_to_value, i64 19}
!701 = !{ptr @overflow_infinity_range_p, ptr @is_overflow_infinity, i64 39821}
!702 = !{ptr @set_value_range_to_truthvalue, ptr @set_value_range_to_varying, i64 20063}
!703 = !{ptr @set_value_range_to_truthvalue, ptr @build_int_cst, i64 8064}
!704 = !{ptr @set_value_range_to_truthvalue, ptr @set_value_range, i64 4032}
!705 = !{ptr @vrp_int_const_binop, ptr @int_const_binop, i64 112587}
!706 = !{ptr @vrp_int_const_binop, ptr @compare_values, i64 69467}
!707 = !{ptr @vrp_int_const_binop, ptr @integer_zerop, i64 6386}
!708 = !{ptr @vrp_int_const_binop, ptr @copy_node_stat, i64 39470}
!709 = !{ptr @vrp_int_const_binop, ptr @is_overflow_infinity, i64 85758}
!710 = !{ptr @vrp_int_const_binop, ptr @tree_int_cst_sgn, i64 7958}
!711 = !{ptr @vrp_int_const_binop, ptr @needs_overflow_infinity, i64 4612}
!712 = !{ptr @vrp_int_const_binop, ptr @supports_overflow_infinity, i64 3978}
!713 = !{ptr @vrp_int_const_binop, ptr @is_positive_overflow_infinity, i64 549}
!714 = !{ptr @vrp_int_const_binop, ptr @is_negative_overflow_infinity, i64 3}
!715 = !{ptr @vrp_int_const_binop, ptr @positive_overflow_infinity, i64 626}
!716 = !{ptr @vrp_int_const_binop, ptr @negative_overflow_infinity, i64 6}
!717 = !{ptr @vrp_expr_computes_nonnegative, ptr @tree_expr_nonnegative_warnv_p, i64 2674}
!718 = !{ptr @vrp_expr_computes_nonnegative, ptr @ssa_name_nonnegative_p, i64 817}
!719 = !{ptr @range_includes_zero_p, ptr @symbolic_range_p, i64 21510}
!720 = !{ptr @range_includes_zero_p, ptr @fancy_abort, i64 3}
!721 = !{ptr @range_includes_zero_p, ptr @build_int_cst, i64 21512}
!722 = !{ptr @range_includes_zero_p, ptr @value_inside_range, i64 21512}
!723 = !{ptr @abs_extent_range, ptr @fancy_abort, i64 4}
!724 = !{ptr @abs_extent_range, ptr @fold_unary_loc, i64 166}
!725 = !{ptr @abs_extent_range, ptr @set_value_range_to_varying, i64 5}
!726 = !{ptr @abs_extent_range, ptr @compare_values, i64 53}
!727 = !{ptr @abs_extent_range, ptr @set_and_canonicalize_value_range, i64 52}
!728 = !{ptr @value_inside_range, ptr @operand_less_p, i64 124018}
!729 = !{ptr @vrp_meet, ptr @copy_value_range, i64 139177}
!730 = !{ptr @vrp_meet, ptr @set_value_range_to_varying, i64 51008}
!731 = !{ptr @vrp_meet, ptr @compare_values, i64 2609213}
!732 = !{ptr @vrp_meet, ptr @vrp_val_is_min, i64 969065}
!733 = !{ptr @vrp_meet, ptr @is_overflow_infinity, i64 963185}
!734 = !{ptr @vrp_meet, ptr @vrp_val_is_max, i64 93171}
!735 = !{ptr @vrp_meet, ptr @bitmap_and_into, i64 220716}
!736 = !{ptr @vrp_meet, ptr @bitmap_clear, i64 20237}
!737 = !{ptr @vrp_meet, ptr @set_value_range, i64 981580}
!738 = !{ptr @vrp_meet, ptr @symbolic_range_p, i64 47305}
!739 = !{ptr @vrp_meet, ptr @value_ranges_intersect_p, i64 11803}
!740 = !{ptr @vrp_meet, ptr @fancy_abort, i64 1}
!741 = !{ptr @vrp_meet, ptr @range_includes_zero_p, i64 17717}
!742 = !{ptr @vrp_meet, ptr @set_value_range_to_nonnull, i64 1161}
!743 = !{ptr @vrp_evaluate_conditional_warnv_with_ops, ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges, i64 777256}
!744 = !{ptr @vrp_evaluate_conditional_warnv_with_ops, ptr @compare_names, i64 53262}
!745 = !{ptr @vrp_evaluate_conditional_warnv_with_ops, ptr @compare_name_with_value, i64 394490}
!746 = !{ptr @vrp_evaluate_conditional_warnv_with_ops, ptr @swap_tree_comparison, i64 24}
!747 = !{ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges, ptr @get_value_range, i64 871861}
!748 = !{ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges, ptr @compare_ranges, i64 94619}
!749 = !{ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges, ptr @compare_range_with_value, i64 682622}
!750 = !{ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges, ptr @swap_tree_comparison, i64 60}
!751 = !{ptr @compare_names, ptr @get_value_range, i64 106522}
!752 = !{ptr @compare_names, ptr @xmalloc, i64 2}
!753 = !{ptr @compare_names, ptr @bitmap_obstack_initialize, i64 2}
!754 = !{ptr @compare_names, ptr @bitmap_obstack_alloc_stat, i64 4}
!755 = !{ptr @compare_names, ptr @bitmap_set_bit, i64 106522}
!756 = !{ptr @compare_names, ptr @bitmap_intersect_p, i64 53261}
!757 = !{ptr @compare_names, ptr @bitmap_clear_bit, i64 106522}
!758 = !{ptr @compare_names, ptr @bmp_iter_set_init, i64 123889}
!759 = !{ptr @compare_names, ptr @bmp_iter_set, i64 280430}
!760 = !{ptr @compare_names, ptr @get_vr_for_comparison, i64 156672}
!761 = !{ptr @compare_names, ptr @compare_ranges, i64 86013}
!762 = !{ptr @compare_names, ptr @bmp_iter_next, i64 156541}
!763 = !{ptr @compare_name_with_value, ptr @get_value_range, i64 394493}
!764 = !{ptr @compare_name_with_value, ptr @get_vr_for_comparison, i64 436554}
!765 = !{ptr @compare_name_with_value, ptr @compare_range_with_value, i64 436554}
!766 = !{ptr @compare_name_with_value, ptr @bmp_iter_set_init, i64 25252}
!767 = !{ptr @compare_name_with_value, ptr @bmp_iter_set, i64 67313}
!768 = !{ptr @compare_name_with_value, ptr @bmp_iter_next, i64 42061}
!769 = !{ptr @compare_ranges, ptr @fancy_abort, i64 2}
!770 = !{ptr @compare_ranges, ptr @compare_values_warnv, i64 256000}
!771 = !{ptr @compare_ranges, ptr @usable_range_p, i64 159517}
!772 = !{ptr @compare_ranges, ptr @overflow_infinity_range_p, i64 796}
!773 = !{ptr @compare_range_with_value, ptr @value_inside_range, i64 54877}
!774 = !{ptr @compare_range_with_value, ptr @usable_range_p, i64 597647}
!775 = !{ptr @compare_range_with_value, ptr @compare_values_warnv, i64 1667354}
!776 = !{ptr @compare_range_with_value, ptr @overflow_infinity_range_p, i64 8710}
!777 = !{ptr @compare_range_with_value, ptr @fancy_abort, i64 1}
!778 = !{ptr @usable_range_p, ptr @fancy_abort, i64 1}
!779 = !{ptr @usable_range_p, ptr @is_overflow_infinity, i64 1514346}
!780 = !{ptr @get_vr_for_comparison, ptr @VEC_tree_base_index, i64 395298}
!781 = !{ptr @vrp_operand_equal_p, ptr @operand_equal_p, i64 66270}
!782 = !{ptr @vrp_operand_equal_p, ptr @is_overflow_infinity, i64 10387}
!783 = !{ptr @vrp_bitmap_equal_p, ptr @bitmap_equal_p, i64 78010}
!784 = !{ptr @find_case_label_range, ptr @find_case_label_index, i64 1386}
!785 = !{ptr @find_case_label_range, ptr @gimple_switch_label, i64 5104}
!786 = !{ptr @find_case_label_range, ptr @int_const_binop, i64 1868}
!787 = !{ptr @find_case_label_range, ptr @integer_onep, i64 1868}
!788 = !{ptr @find_case_label_index, ptr @gimple_switch_num_labels, i64 1386}
!789 = !{ptr @find_case_label_index, ptr @gimple_switch_label, i64 3646}
!790 = !{ptr @find_case_label_index, ptr @tree_int_cst_compare, i64 3892}
!791 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 2143682}
!792 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 2143682}
!793 = !{ptr @loop_containing_stmt, ptr @gimple_bb, i64 374265}
!794 = !{ptr @adjust_range_with_scev, ptr @analyze_scalar_evolution, i64 103489}
!795 = !{ptr @adjust_range_with_scev, ptr @instantiate_parameters, i64 103489}
!796 = !{ptr @adjust_range_with_scev, ptr @is_gimple_min_invariant, i64 156755}
!797 = !{ptr @adjust_range_with_scev, ptr @set_value_range_to_value, i64 1}
!798 = !{ptr @adjust_range_with_scev, ptr @initial_condition_in_loop_num, i64 53267}
!799 = !{ptr @adjust_range_with_scev, ptr @evolution_part_in_loop_num, i64 53267}
!800 = !{ptr @adjust_range_with_scev, ptr @valid_value_p, i64 53148}
!801 = !{ptr @adjust_range_with_scev, ptr @scev_direction, i64 52786}
!802 = !{ptr @adjust_range_with_scev, ptr @get_chrec_loop, i64 52549}
!803 = !{ptr @adjust_range_with_scev, ptr @scev_probably_wraps_p, i64 52549}
!804 = !{ptr @adjust_range_with_scev, ptr @lower_bound_in_type, i64 5007}
!805 = !{ptr @adjust_range_with_scev, ptr @upper_bound_in_type, i64 5007}
!806 = !{ptr @adjust_range_with_scev, ptr @compare_values, i64 40784}
!807 = !{ptr @adjust_range_with_scev, ptr @set_value_range, i64 40780}
!808 = !{ptr @adjust_range_with_scev, ptr @is_negative_overflow_infinity, i64 4292}
!809 = !{ptr @adjust_range_with_scev, ptr @is_positive_overflow_infinity, i64 23268}
!810 = !{ptr @vrp_var_may_overflow, ptr @loop_containing_stmt, i64 7795}
!811 = !{ptr @vrp_var_may_overflow, ptr @loop_outer, i64 7794}
!812 = !{ptr @vrp_var_may_overflow, ptr @analyze_scalar_evolution, i64 6819}
!813 = !{ptr @vrp_var_may_overflow, ptr @instantiate_parameters, i64 6819}
!814 = !{ptr @vrp_var_may_overflow, ptr @initial_condition_in_loop_num, i64 2958}
!815 = !{ptr @vrp_var_may_overflow, ptr @evolution_part_in_loop_num, i64 2958}
!816 = !{ptr @vrp_var_may_overflow, ptr @is_gimple_min_invariant, i64 2957}
!817 = !{ptr @vrp_var_may_overflow, ptr @valid_value_p, i64 2956}
!818 = !{ptr @vrp_var_may_overflow, ptr @get_chrec_loop, i64 2955}
!819 = !{ptr @vrp_var_may_overflow, ptr @scev_probably_wraps_p, i64 2955}
!820 = !{ptr @instantiate_parameters, ptr @block_before_loop, i64 110311}
!821 = !{ptr @instantiate_parameters, ptr @instantiate_scev, i64 110311}
!822 = !{ptr @valid_value_p, ptr @is_gimple_min_invariant, i64 35622}
!823 = !{ptr @get_chrec_loop, ptr @get_loop, i64 55513}
!824 = !{ptr @block_before_loop, ptr @loop_preheader_edge, i64 110311}
!825 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 55513}
!826 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 7796}
!827 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 6820}
!828 = !{ptr @vrp_fold_stmt, ptr @fold_predicate_in, i64 1367817}
!829 = !{ptr @vrp_fold_stmt, ptr @simplify_stmt_using_ranges, i64 1364600}
!830 = !{ptr @identify_jump_threads, ptr @calculate_dominance_info, i64 13304}
!831 = !{ptr @identify_jump_threads, ptr @mark_dfs_back_edges, i64 13304}
!832 = !{ptr @identify_jump_threads, ptr @VEC_edge_base_iterate, i64 13459}
!833 = !{ptr @identify_jump_threads, ptr @VEC_tree_heap_alloc, i64 13304}
!834 = !{ptr @identify_jump_threads, ptr @gimple_build_cond, i64 13304}
!835 = !{ptr @identify_jump_threads, ptr @potentially_threadable_block, i64 554622}
!836 = !{ptr @identify_jump_threads, ptr @gsi_last_bb, i64 103356}
!837 = !{ptr @identify_jump_threads, ptr @gsi_stmt, i64 103356}
!838 = !{ptr @identify_jump_threads, ptr @gimple_code, i64 103356}
!839 = !{ptr @identify_jump_threads, ptr @gimple_cond_lhs, i64 377732}
!840 = !{ptr @identify_jump_threads, ptr @gimple_cond_rhs, i64 303141}
!841 = !{ptr @identify_jump_threads, ptr @is_gimple_min_invariant, i64 54043}
!842 = !{ptr @identify_jump_threads, ptr @ei_start_1, i64 63627}
!843 = !{ptr @identify_jump_threads, ptr @ei_cond, i64 242099}
!844 = !{ptr @identify_jump_threads, ptr @thread_across_edge, i64 164040}
!845 = !{ptr @identify_jump_threads, ptr @ei_next, i64 178472}
!846 = !{ptr @fold_predicate_in, ptr @gsi_stmt, i64 1367817}
!847 = !{ptr @fold_predicate_in, ptr @is_gimple_assign, i64 1371034}
!848 = !{ptr @fold_predicate_in, ptr @gimple_assign_rhs_code, i64 853962}
!849 = !{ptr @fold_predicate_in, ptr @gimple_code, i64 1347093}
!850 = !{ptr @fold_predicate_in, ptr @gimple_cond_code, i64 287492}
!851 = !{ptr @fold_predicate_in, ptr @gimple_cond_lhs, i64 287492}
!852 = !{ptr @fold_predicate_in, ptr @gimple_cond_rhs, i64 287492}
!853 = !{ptr @fold_predicate_in, ptr @vrp_evaluate_conditional, i64 311182}
!854 = !{ptr @fold_predicate_in, ptr @gimple_assign_rhs1, i64 23690}
!855 = !{ptr @fold_predicate_in, ptr @gimple_assign_rhs2, i64 23690}
!856 = !{ptr @fold_predicate_in, ptr @gimple_expr_type, i64 245}
!857 = !{ptr @fold_predicate_in, ptr @fold_convert_loc, i64 245}
!858 = !{ptr @fold_predicate_in, ptr @fwrite, i64 2}
!859 = !{ptr @fold_predicate_in, ptr @print_gimple_expr, i64 1}
!860 = !{ptr @fold_predicate_in, ptr @print_generic_expr, i64 1}
!861 = !{ptr @fold_predicate_in, ptr @fputc, i64 1}
!862 = !{ptr @fold_predicate_in, ptr @gimple_assign_set_rhs_from_tree, i64 251}
!863 = !{ptr @fold_predicate_in, ptr @fancy_abort, i64 2}
!864 = !{ptr @fold_predicate_in, ptr @integer_zerop, i64 2966}
!865 = !{ptr @fold_predicate_in, ptr @gimple_cond_make_false, i64 1028}
!866 = !{ptr @fold_predicate_in, ptr @integer_onep, i64 1938}
!867 = !{ptr @fold_predicate_in, ptr @gimple_cond_make_true, i64 1937}
!868 = !{ptr @simplify_stmt_using_ranges, ptr @gsi_stmt, i64 1364601}
!869 = !{ptr @simplify_stmt_using_ranges, ptr @is_gimple_assign, i64 1364601}
!870 = !{ptr @simplify_stmt_using_ranges, ptr @gimple_assign_rhs_code, i64 830022}
!871 = !{ptr @simplify_stmt_using_ranges, ptr @gimple_assign_rhs1, i64 65731}
!872 = !{ptr @simplify_stmt_using_ranges, ptr @simplify_truth_ops_using_ranges, i64 22459}
!873 = !{ptr @simplify_stmt_using_ranges, ptr @gimple_assign_rhs2, i64 2812}
!874 = !{ptr @simplify_stmt_using_ranges, ptr @integer_pow2p, i64 2812}
!875 = !{ptr @simplify_stmt_using_ranges, ptr @simplify_div_or_mod_using_ranges, i64 1654}
!876 = !{ptr @simplify_stmt_using_ranges, ptr @simplify_abs_using_ranges, i64 34}
!877 = !{ptr @simplify_stmt_using_ranges, ptr @gimple_code, i64 534579}
!878 = !{ptr @simplify_stmt_using_ranges, ptr @simplify_cond_using_ranges, i64 284526}
!879 = !{ptr @simplify_stmt_using_ranges, ptr @simplify_switch_using_ranges, i64 5710}
!880 = !{ptr @vrp_evaluate_conditional, ptr @vrp_evaluate_conditional_warnv_with_ops, i64 455621}
!881 = !{ptr @vrp_evaluate_conditional, ptr @is_gimple_min_invariant, i64 42}
!882 = !{ptr @vrp_evaluate_conditional, ptr @gimple_has_location, i64 1}
!883 = !{ptr @vrp_evaluate_conditional, ptr @gimple_location, i64 1}
!884 = !{ptr @vrp_evaluate_conditional, ptr @warning_at, i64 1}
!885 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_lhs, i64 1028}
!886 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_rhs, i64 1028}
!887 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_lhs, i64 1938}
!888 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_rhs, i64 1938}
!889 = !{ptr @gimple_cond_set_lhs, ptr @gimple_set_op, i64 4132}
!890 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 4132}
!891 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 11412}
!892 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 11411}
!893 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!894 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 11412}
!895 = !{ptr @simplify_truth_ops_using_ranges, ptr @gimple_assign_rhs_code, i64 22454}
!896 = !{ptr @simplify_truth_ops_using_ranges, ptr @gimple_assign_rhs1, i64 22454}
!897 = !{ptr @simplify_truth_ops_using_ranges, ptr @get_value_range, i64 17641}
!898 = !{ptr @simplify_truth_ops_using_ranges, ptr @compare_range_with_value, i64 21398}
!899 = !{ptr @simplify_truth_ops_using_ranges, ptr @integer_onep, i64 4657}
!900 = !{ptr @simplify_truth_ops_using_ranges, ptr @build_int_cst, i64 12}
!901 = !{ptr @simplify_truth_ops_using_ranges, ptr @gimple_assign_rhs2, i64 5572}
!902 = !{ptr @simplify_truth_ops_using_ranges, ptr @is_gimple_min_invariant, i64 5572}
!903 = !{ptr @simplify_truth_ops_using_ranges, ptr @integer_zerop, i64 1096}
!904 = !{ptr @simplify_truth_ops_using_ranges, ptr @integer_all_onesp, i64 1}
!905 = !{ptr @simplify_truth_ops_using_ranges, ptr @fold_unary_loc, i64 338}
!906 = !{ptr @simplify_truth_ops_using_ranges, ptr @gimple_assign_lhs, i64 5569}
!907 = !{ptr @simplify_truth_ops_using_ranges, ptr @useless_type_conversion_p, i64 5569}
!908 = !{ptr @simplify_truth_ops_using_ranges, ptr @gimple_assign_set_rhs_with_ops, i64 5277}
!909 = !{ptr @simplify_truth_ops_using_ranges, ptr @fancy_abort, i64 1}
!910 = !{ptr @simplify_truth_ops_using_ranges, ptr @gsi_stmt, i64 5277}
!911 = !{ptr @simplify_truth_ops_using_ranges, ptr @update_stmt, i64 5277}
!912 = !{ptr @simplify_div_or_mod_using_ranges, ptr @gimple_assign_rhs_code, i64 1654}
!913 = !{ptr @simplify_div_or_mod_using_ranges, ptr @gimple_assign_rhs1, i64 3308}
!914 = !{ptr @simplify_div_or_mod_using_ranges, ptr @gimple_assign_rhs2, i64 1654}
!915 = !{ptr @simplify_div_or_mod_using_ranges, ptr @get_value_range, i64 1654}
!916 = !{ptr @simplify_div_or_mod_using_ranges, ptr @compare_range_with_value, i64 471}
!917 = !{ptr @simplify_div_or_mod_using_ranges, ptr @integer_onep, i64 1369}
!918 = !{ptr @simplify_div_or_mod_using_ranges, ptr @gimple_has_location, i64 1}
!919 = !{ptr @simplify_div_or_mod_using_ranges, ptr @warning_at, i64 1}
!920 = !{ptr @simplify_div_or_mod_using_ranges, ptr @tree_log2, i64 1346}
!921 = !{ptr @simplify_div_or_mod_using_ranges, ptr @build_int_cst, i64 1360}
!922 = !{ptr @simplify_div_or_mod_using_ranges, ptr @int_const_binop, i64 14}
!923 = !{ptr @simplify_div_or_mod_using_ranges, ptr @fold_convert_loc, i64 14}
!924 = !{ptr @simplify_div_or_mod_using_ranges, ptr @gimple_assign_set_rhs_code, i64 1360}
!925 = !{ptr @simplify_div_or_mod_using_ranges, ptr @gimple_assign_set_rhs1, i64 1360}
!926 = !{ptr @simplify_div_or_mod_using_ranges, ptr @gimple_assign_set_rhs2, i64 1360}
!927 = !{ptr @simplify_div_or_mod_using_ranges, ptr @update_stmt, i64 1360}
!928 = !{ptr @simplify_abs_using_ranges, ptr @gimple_assign_rhs1, i64 35}
!929 = !{ptr @simplify_abs_using_ranges, ptr @get_value_range, i64 35}
!930 = !{ptr @simplify_abs_using_ranges, ptr @compare_range_with_value, i64 65}
!931 = !{ptr @simplify_abs_using_ranges, ptr @integer_zerop, i64 1}
!932 = !{ptr @simplify_abs_using_ranges, ptr @integer_onep, i64 2}
!933 = !{ptr @simplify_abs_using_ranges, ptr @gimple_assign_set_rhs1, i64 1}
!934 = !{ptr @simplify_abs_using_ranges, ptr @gimple_assign_set_rhs_code, i64 1}
!935 = !{ptr @simplify_abs_using_ranges, ptr @update_stmt, i64 1}
!936 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_lhs, i64 284526}
!937 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_rhs, i64 284526}
!938 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_code, i64 284526}
!939 = !{ptr @simplify_cond_using_ranges, ptr @is_gimple_min_invariant, i64 30963}
!940 = !{ptr @simplify_cond_using_ranges, ptr @get_value_range, i64 18353}
!941 = !{ptr @simplify_cond_using_ranges, ptr @test_for_singularity, i64 17024}
!942 = !{ptr @simplify_cond_using_ranges, ptr @fwrite, i64 4}
!943 = !{ptr @simplify_cond_using_ranges, ptr @print_gimple_stmt, i64 4}
!944 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_set_code, i64 1168}
!945 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_set_lhs, i64 1168}
!946 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_set_rhs, i64 1168}
!947 = !{ptr @simplify_cond_using_ranges, ptr @update_stmt, i64 1168}
!948 = !{ptr @simplify_cond_using_ranges, ptr @invert_tree_comparison, i64 8444}
!949 = !{ptr @simplify_cond_using_ranges, ptr @fputc, i64 2}
!950 = !{ptr @simplify_switch_using_ranges, ptr @gimple_switch_index, i64 5709}
!951 = !{ptr @simplify_switch_using_ranges, ptr @get_value_range, i64 5708}
!952 = !{ptr @simplify_switch_using_ranges, ptr @symbolic_range_p, i64 339}
!953 = !{ptr @simplify_switch_using_ranges, ptr @find_case_label_range, i64 311}
!954 = !{ptr @simplify_switch_using_ranges, ptr @gimple_switch_num_labels, i64 311}
!955 = !{ptr @simplify_switch_using_ranges, ptr @make_tree_vec_stat, i64 104}
!956 = !{ptr @simplify_switch_using_ranges, ptr @gimple_switch_default_label, i64 19}
!957 = !{ptr @simplify_switch_using_ranges, ptr @gimple_switch_label, i64 411}
!958 = !{ptr @simplify_switch_using_ranges, ptr @gimple_bb, i64 533}
!959 = !{ptr @simplify_switch_using_ranges, ptr @label_to_block_fn, i64 429}
!960 = !{ptr @simplify_switch_using_ranges, ptr @find_edge, i64 429}
!961 = !{ptr @simplify_switch_using_ranges, ptr @ei_start_1, i64 104}
!962 = !{ptr @simplify_switch_using_ranges, ptr @ei_cond, i64 657}
!963 = !{ptr @simplify_switch_using_ranges, ptr @fwrite, i64 1}
!964 = !{ptr @simplify_switch_using_ranges, ptr @VEC_edge_heap_safe_push, i64 156}
!965 = !{ptr @simplify_switch_using_ranges, ptr @ei_next, i64 553}
!966 = !{ptr @simplify_switch_using_ranges, ptr @VEC_switch_update_heap_safe_push, i64 104}
!967 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 320765}
!968 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 7812}
!969 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 7811}
!970 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 7811}
!971 = !{ptr @gimple_assign_set_rhs1, ptr @gimple_set_op, i64 1362}
!972 = !{ptr @gimple_assign_set_rhs2, ptr @gimple_set_op, i64 1362}
!973 = !{ptr @test_for_singularity, ptr @is_overflow_infinity, i64 8525}
!974 = !{ptr @test_for_singularity, ptr @build_int_cst, i64 8523}
!975 = !{ptr @test_for_singularity, ptr @fold_build2_stat_loc, i64 8523}
!976 = !{ptr @test_for_singularity, ptr @compare_values, i64 34046}
!977 = !{ptr @test_for_singularity, ptr @operand_equal_p, i64 17023}
!978 = !{ptr @test_for_singularity, ptr @is_gimple_min_invariant, i64 1167}
!979 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_heap_reserve, i64 154}
!980 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_base_quick_push, i64 154}
!981 = !{ptr @VEC_switch_update_heap_safe_push, ptr @VEC_switch_update_heap_reserve, i64 102}
!982 = !{ptr @VEC_switch_update_heap_safe_push, ptr @VEC_switch_update_base_quick_push, i64 102}
!983 = !{ptr @VEC_edge_heap_reserve, ptr @VEC_edge_base_space, i64 154}
!984 = !{ptr @VEC_edge_heap_reserve, ptr @vec_heap_p_reserve, i64 5}
!985 = !{ptr @VEC_switch_update_heap_reserve, ptr @VEC_switch_update_base_space, i64 102}
!986 = !{ptr @VEC_switch_update_heap_reserve, ptr @vec_heap_o_reserve, i64 1}
!987 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 13304}
!988 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 103363}
!989 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 103363}
!990 = !{ptr @simplify_stmt_for_jump_threading, ptr @gimple_code, i64 413392}
!991 = !{ptr @simplify_stmt_for_jump_threading, ptr @gimple_cond_code, i64 144694}
!992 = !{ptr @simplify_stmt_for_jump_threading, ptr @gimple_cond_lhs, i64 144694}
!993 = !{ptr @simplify_stmt_for_jump_threading, ptr @gimple_cond_rhs, i64 144694}
!994 = !{ptr @simplify_stmt_for_jump_threading, ptr @vrp_evaluate_conditional, i64 144694}
!995 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 315191}
!996 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 224797}
!997 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 662021}
!998 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 662021}
!999 = !{ptr @next_imm_use_on_stmt, ptr @end_imm_use_on_stmt_p, i64 662021}
!1000 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 569533}
!1001 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 224796}
!1002 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 344736}
!1003 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 1823215}
!1004 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 569533}
!1005 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 569533}
!1006 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 62010}
!1007 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 1823213}
!1008 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 662019}
!1009 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 1253681}
!1010 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 507522}
!1011 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 1}
!1012 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 344736}
!1013 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 569533}
!1014 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 5908}
!1015 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 5908}
!1016 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!1017 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 507524}
!1018 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 507524}
!1019 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 662019}
!1020 = !{ptr @VEC_tree_heap_free, ptr @free, i64 13303}
!1021 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1022 = !{!"function_entry_count", i64 818}
!1023 = !{!"branch_weights", i32 1, i32 819}
!1024 = !{!1025, !1026, i64 0}
!1025 = !{!"value_range_d", !1026, i64 0, !1029, i64 8, !1029, i64 16, !1029, i64 24}
!1026 = !{!"int", !1027, i64 0}
!1027 = !{!"omnipotent char", !1028, i64 0}
!1028 = !{!"Simple C/C++ TBAA"}
!1029 = !{!"any pointer", !1027, i64 0}
!1030 = !{!"branch_weights", i32 774, i32 46}
!1031 = !{!1025, !1029, i64 8}
!1032 = !{!1029, !1029, i64 0}
!1033 = !{!"function_entry_count", i64 4688120}
!1034 = !{!"tree-vrp.c:get_value_range"}
!1035 = !{!"branch_weights", i32 1, i32 4688121}
!1036 = !{!1027, !1027, i64 0}
!1037 = !{!"branch_weights", i32 1399753, i32 3288369}
!1038 = !{!1025, !1029, i64 24}
!1039 = !{!"branch_weights", i32 1384047, i32 15707}
!1040 = !{!"branch_weights", i32 15645, i32 63}
!1041 = !{!"branch_weights", i32 12482089, i32 42807342, i32 3533}
!1042 = !{i8 0, i8 2}
!1043 = !{!"branch_weights", i32 12109, i32 5}
!1044 = !{!"function_entry_count", i64 3195099}
!1045 = !{!"tree-vrp.c:compare_values"}
!1046 = !{!"branch_weights", i32 3135021, i32 60080}
!1047 = !{!"branch_weights", i32 1, i32 60080}
!1048 = !{!"function_entry_count", i64 12112}
!1049 = !{!"tree-vrp.c:nonnull_arg_p"}
!1050 = !{!"branch_weights", i32 12113, i32 1}
!1051 = !{!"branch_weights", i32 1, i32 24226, i32 1}
!1052 = !{!1053, !1029, i64 56}
!1053 = !{!"function", !1029, i64 0, !1029, i64 8, !1029, i64 16, !1029, i64 24, !1029, i64 32, !1029, i64 40, !1029, i64 48, !1029, i64 56, !1029, i64 64, !1029, i64 72, !1029, i64 80, !1029, i64 88, !1029, i64 96, !1026, i64 104, !1026, i64 108, !1026, i64 112, !1026, i64 116, !1026, i64 120, !1026, i64 124, !1029, i64 128, !1026, i64 136, !1026, i64 137, !1026, i64 138, !1026, i64 138, !1026, i64 138, !1026, i64 138, !1026, i64 138, !1026, i64 138, !1026, i64 138, !1026, i64 139, !1026, i64 139, !1026, i64 139, !1026, i64 139, !1026, i64 139, !1026, i64 139, !1026, i64 139}
!1054 = !{!"branch_weights", i32 1, i32 12113}
!1055 = !{!"branch_weights", i32 12103, i32 11}
!1056 = !{!"branch_weights", i32 1, i32 11}
!1057 = !{!"branch_weights", i32 118, i32 39}
!1058 = !{!"branch_weights", i32 39, i32 0}
!1059 = distinct !{!1059, !1060}
!1060 = !{!"llvm.loop.mustprogress"}
!1061 = !{!"branch_weights", i32 11, i32 1}
!1062 = !{!"branch_weights", i32 1, i32 223}
!1063 = !{!"branch_weights", i32 223, i32 129}
!1064 = distinct !{!1064, !1060}
!1065 = !{!"branch_weights", i32 5, i32 7}
!1066 = !{!"function_entry_count", i64 14899}
!1067 = !{!"tree-vrp.c:set_value_range_to_nonnull"}
!1068 = !{!"function_entry_count", i64 1064919}
!1069 = !{!"tree-vrp.c:set_value_range_to_varying"}
!1070 = !{!"branch_weights", i32 1026390, i32 38531}
!1071 = !{!"function_entry_count", i64 3077672}
!1072 = !{!"tree-vrp.c:set_value_range"}
!1073 = !{!1025, !1029, i64 16}
!1074 = !{!"branch_weights", i32 644221243, i32 -990295360}
!1075 = !{!"branch_weights", i32 2537168, i32 540506}
!1076 = !{!"branch_weights", i32 540506, i32 1}
!1077 = !{!1078, !1029, i64 0}
!1078 = !{!"bitmap_head_def", !1029, i64 0, !1029, i64 8, !1026, i64 16, !1029, i64 24}
!1079 = !{!"branch_weights", i32 28204, i32 512303}
!1080 = !{!"function_entry_count", i64 5118515}
!1081 = !{!"tree-vrp.c:compare_values_warnv"}
!1082 = !{!"branch_weights", i32 1, i32 1818162}
!1083 = !{!"branch_weights", i32 1, i32 3300354}
!1084 = !{!"branch_weights", i32 -405986897, i32 1130368830, i32 3055727, i32 1521}
!1085 = !{!"branch_weights", i32 -161603918, i32 583349614, i32 6049268, i32 6340}
!1086 = !{!"branch_weights", i32 92369, i32 582}
!1087 = !{!"branch_weights", i32 216, i32 367}
!1088 = !{!"branch_weights", i32 216, i32 1}
!1089 = !{!"branch_weights", i32 1, i32 216}
!1090 = !{!"branch_weights", i32 91997, i32 954}
!1091 = !{!"branch_weights", i32 217, i32 738}
!1092 = !{!"branch_weights", i32 217, i32 1}
!1093 = !{!"branch_weights", i32 1, i32 217}
!1094 = !{!"branch_weights", i32 120, i32 92831}
!1095 = !{!"branch_weights", i32 58, i32 7081}
!1096 = !{!"branch_weights", i32 43046721, i32 23668807}
!1097 = !{!"branch_weights", i32 1, i32 81}
!1098 = !{!"branch_weights", i32 42, i32 40}
!1099 = !{!"branch_weights", i32 1, i32 40}
!1100 = !{!"branch_weights", i32 1, i32 42}
!1101 = !{!"branch_weights", i32 2075746017, i32 71737631}
!1102 = !{!"branch_weights", i32 14, i32 435, i32 196}
!1103 = !{!"branch_weights", i32 29, i32 360, i32 841}
!1104 = !{!"branch_weights", i32 8, i32 5}
!1105 = !{!"branch_weights", i32 1, i32 10, i32 1}
!1106 = !{!"branch_weights", i32 1818162, i32 1482192}
!1107 = !{!"branch_weights", i32 19, i32 11}
!1108 = !{!"branch_weights", i32 11, i32 12, i32 121}
!1109 = !{!"branch_weights", i32 651853, i32 2555553}
!1110 = !{!"branch_weights", i32 36232, i32 2519322}
!1111 = !{!"branch_weights", i32 -1210279330, i32 7205313, i32 1227}
!1112 = !{!"branch_weights", i32 2453714, i32 59739}
!1113 = !{!"branch_weights", i32 2433395, i32 20320}
!1114 = !{!"branch_weights", i32 1, i32 80058}
!1115 = !{!"branch_weights", i32 75542, i32 4517}
!1116 = !{!"branch_weights", i32 74418, i32 1125}
!1117 = !{!"branch_weights", i32 19332, i32 55087}
!1118 = !{!"branch_weights", i32 235, i32 19098}
!1119 = !{!"branch_weights", i32 1753, i32 4119}
!1120 = !{!"branch_weights", i32 3910, i32 210}
!1121 = !{!"branch_weights", i32 2123, i32 1788}
!1122 = !{!"branch_weights", i32 641, i32 1148}
!1123 = !{!"branch_weights", i32 12, i32 1137}
!1124 = !{!"branch_weights", i32 1, i32 12}
!1125 = !{!"branch_weights", i32 41, i32 1108}
!1126 = !{!"branch_weights", i32 1, i32 1108}
!1127 = !{!"function_entry_count", i64 207069}
!1128 = !{!"tree-vrp.c:is_negative_overflow_infinity"}
!1129 = !{!"branch_weights", i32 1627, i32 205444}
!1130 = !{!1026, !1026, i64 0}
!1131 = !{!"branch_weights", i32 -1369937758, i32 -1944605806}
!1132 = !{!"function_entry_count", i64 216738}
!1133 = !{!"tree-vrp.c:is_positive_overflow_infinity"}
!1134 = !{!"branch_weights", i32 11245, i32 205495}
!1135 = !{!"branch_weights", i32 -1235624357, i32 -2086420276}
!1136 = !{!"function_entry_count", i64 194041}
!1137 = !{!"tree-vrp.c:operand_less_p"}
!1138 = !{!"branch_weights", i32 190234, i32 3809}
!1139 = !{!"branch_weights", i32 178999, i32 11236}
!1140 = !{!"branch_weights", i32 51254, i32 127746}
!1141 = !{!"branch_weights", i32 2, i32 127745}
!1142 = !{!"branch_weights", i32 127707, i32 39}
!1143 = !{!"branch_weights", i32 867, i32 50388}
!1144 = !{!"branch_weights", i32 40767, i32 9622}
!1145 = !{!"branch_weights", i32 13865, i32 26903}
!1146 = !{!"branch_weights", i32 4809, i32 10236}
!1147 = !{!"branch_weights", i32 10151, i32 86}
!1148 = !{!"branch_weights", i32 37935, i32 1}
!1149 = !{!"function_entry_count", i64 4582062}
!1150 = !{!"tree-vrp.c:needs_overflow_infinity"}
!1151 = !{!"branch_weights", i32 -2128878932, i32 253807026}
!1152 = !{!"function_entry_count", i64 1229502}
!1153 = !{!"tree-vrp.c:vrp_val_is_min"}
!1154 = !{!"branch_weights", i32 97682, i32 1131822}
!1155 = !{!"branch_weights", i32 1, i32 1131822}
!1156 = !{!"function_entry_count", i64 1240173}
!1157 = !{!"tree-vrp.c:vrp_val_min"}
!1158 = !{!"branch_weights", i32 -987009914, i32 2667}
!1159 = !{!"function_entry_count", i64 260791}
!1160 = !{!"tree-vrp.c:vrp_val_is_max"}
!1161 = !{!"branch_weights", i32 15833, i32 244960}
!1162 = !{!"branch_weights", i32 1, i32 244960}
!1163 = !{!"function_entry_count", i64 278572}
!1164 = !{!"tree-vrp.c:vrp_val_max"}
!1165 = !{!"branch_weights", i32 -351798982, i32 14154}
!1166 = !{!"function_entry_count", i64 0}
!1167 = !{!1053, !1029, i64 24}
!1168 = !{!1169, !1029, i64 16}
!1169 = !{!"gimple_df", !1029, i64 0, !1029, i64 8, !1029, i64 16, !1029, i64 24, !1170, i64 32, !1170, i64 48, !1029, i64 64, !1029, i64 72, !1029, i64 80, !1029, i64 88, !1026, i64 96, !1171, i64 104}
!1170 = !{!"pt_solution", !1026, i64 0, !1026, i64 0, !1026, i64 0, !1026, i64 0, !1026, i64 0, !1026, i64 0, !1029, i64 8}
!1171 = !{!"ssa_operands", !1029, i64 0, !1026, i64 8, !1026, i64 12, !1027, i64 16, !1029, i64 24, !1029, i64 32}
!1172 = distinct !{!1172, !1060}
!1173 = !{!"function_entry_count", i64 159347}
!1174 = !{!"tree-vrp.c:bmp_iter_set_init"}
!1175 = !{!1176, !1029, i64 0}
!1176 = !{!"", !1029, i64 0, !1029, i64 8, !1026, i64 16, !1177, i64 24}
!1177 = !{!"long", !1027, i64 0}
!1178 = !{!1176, !1029, i64 8}
!1179 = !{!"branch_weights", i32 3553, i32 155796}
!1180 = !{!1181, !1026, i64 16}
!1181 = !{!"bitmap_element_def", !1029, i64 0, !1029, i64 8, !1026, i64 16, !1027, i64 24}
!1182 = !{!1176, !1026, i64 16}
!1183 = !{!1177, !1177, i64 0}
!1184 = !{!1176, !1177, i64 24}
!1185 = !{!"function_entry_count", i64 535110}
!1186 = !{!"tree-vrp.c:bmp_iter_set"}
!1187 = !{!"branch_weights", i32 259250, i32 275862}
!1188 = !{!"branch_weights", i32 375891, i32 1}
!1189 = !{!"branch_weights", i32 5670163, i32 375891}
!1190 = distinct !{!1190, !1060}
!1191 = !{!"branch_weights", i32 1, i32 192623}
!1192 = !{!"branch_weights", i32 126049, i32 100031}
!1193 = !{!"branch_weights", i32 192623, i32 33456}
!1194 = distinct !{!1194, !1060}
!1195 = !{!1181, !1029, i64 0}
!1196 = !{!"branch_weights", i32 159220, i32 33405}
!1197 = !{!"function_entry_count", i64 1102423}
!1198 = !{!"tree-vrp.c:VEC_tree_base_index"}
!1199 = !{!"function_entry_count", i64 375763}
!1200 = !{!"tree-vrp.c:bmp_iter_next"}
!1201 = distinct !{!1201, !1060}
!1202 = !{!"function_entry_count", i64 4864630}
!1203 = !{!"tree-vrp.c:VEC_tree_base_length"}
!1204 = !{!"branch_weights", i32 1, i32 4864631}
!1205 = !{!1206, !1026, i64 0}
!1206 = !{!"VEC_tree_base", !1026, i64 0, !1026, i64 4, !1027, i64 8}
!1207 = !{!1208, !1029, i64 0}
!1208 = !{!"assert_locus_d", !1029, i64 0, !1029, i64 8, !1209, i64 16, !1026, i64 40, !1029, i64 48, !1029, i64 56, !1029, i64 64}
!1209 = !{!"", !1029, i64 0, !1029, i64 8, !1029, i64 16}
!1210 = !{!1211, !1026, i64 80}
!1211 = !{!"basic_block_def", !1029, i64 0, !1029, i64 8, !1029, i64 16, !1029, i64 24, !1027, i64 32, !1029, i64 48, !1029, i64 56, !1027, i64 64, !1177, i64 72, !1026, i64 80, !1026, i64 84, !1026, i64 88, !1026, i64 92, !1026, i64 96}
!1212 = !{!1208, !1029, i64 8}
!1213 = !{!1214, !1029, i64 0}
!1214 = !{!"edge_def", !1029, i64 0, !1029, i64 8, !1027, i64 16, !1029, i64 24, !1029, i64 32, !1026, i64 40, !1026, i64 44, !1026, i64 48, !1026, i64 52, !1177, i64 56}
!1215 = !{!1214, !1029, i64 8}
!1216 = !{!1208, !1026, i64 40}
!1217 = !{!1208, !1029, i64 48}
!1218 = distinct !{!1218, !1060}
!1219 = !{!"function_entry_count", i64 8222237}
!1220 = !{!"tree-vrp.c:gsi_stmt"}
!1221 = !{!1209, !1029, i64 0}
!1222 = !{!1223, !1029, i64 0}
!1223 = !{!"gimple_seq_node_d", !1029, i64 0, !1029, i64 8, !1029, i64 16}
!1224 = distinct !{!1224, !1060}
!1225 = !{!"function_entry_count", i64 13304}
!1226 = !{!"tree-vrp.c:gate_vrp"}
!1227 = !{!"tree-vrp.c:execute_vrp"}
!1228 = !{i32 0, i32 2}
!1229 = !{!"branch_weights", i32 13150, i32 155}
!1230 = !{!"branch_weights", i32 13202, i32 103}
!1231 = !{!"branch_weights", i32 155, i32 0}
!1232 = distinct !{!1232, !1060}
!1233 = !{!1234, !1029, i64 8}
!1234 = !{!"", !1029, i64 0, !1029, i64 8}
!1235 = !{!1234, !1029, i64 0}
!1236 = !{!"branch_weights", i32 1, i32 205}
!1237 = !{!"branch_weights", i32 205, i32 645}
!1238 = distinct !{!1238, !1060}
!1239 = !{!"branch_weights", i32 103, i32 0}
!1240 = distinct !{!1240, !1060}
!1241 = !{!"branch_weights", i32 13224, i32 82}
!1242 = !{!"tree-vrp.c:insert_range_assertions"}
!1243 = !{!"branch_weights", i32 2973, i32 10333}
!1244 = !{!"branch_weights", i32 13305, i32 1}
!1245 = !{!"tree-vrp.c:VEC_edge_heap_alloc"}
!1246 = !{!"tree-vrp.c:VEC_switch_update_heap_alloc"}
!1247 = !{!"tree-vrp.c:vrp_initialize"}
!1248 = !{!1053, !1029, i64 8}
!1249 = !{!1250, !1029, i64 0}
!1250 = !{!"control_flow_graph", !1029, i64 0, !1029, i64 8, !1029, i64 16, !1026, i64 24, !1026, i64 28, !1026, i64 32, !1029, i64 40, !1026, i64 48, !1027, i64 52, !1027, i64 60, !1026, i64 68, !1026, i64 72}
!1251 = !{!1211, !1029, i64 56}
!1252 = !{!1250, !1029, i64 8}
!1253 = !{!"branch_weights", i32 1, i32 13304}
!1254 = !{!"branch_weights", i32 240322, i32 314342}
!1255 = !{!"branch_weights", i32 99835, i32 140488}
!1256 = !{!"branch_weights", i32 0, i32 240322}
!1257 = distinct !{!1257, !1060}
!1258 = !{i64 0, i64 8, !1032, i64 8, i64 8, !1032, i64 16, i64 8, !1032}
!1259 = !{!"branch_weights", i32 554663, i32 1}
!1260 = !{!"branch_weights", i32 1383627, i32 313666}
!1261 = !{!"branch_weights", i32 772600, i32 611028}
!1262 = !{!"branch_weights", i32 535142, i32 237458}
!1263 = !{!"branch_weights", i32 0, i32 535142}
!1264 = distinct !{!1264, !1060}
!1265 = !{!"branch_weights", i32 1142629, i32 554663}
!1266 = distinct !{!1266, !1060}
!1267 = !{!"branch_weights", i32 13304, i32 541360}
!1268 = distinct !{!1268, !1060}
!1269 = !{!"function_entry_count", i64 1003424}
!1270 = !{!"tree-vrp.c:vrp_visit_stmt"}
!1271 = !{!"branch_weights", i32 1003425, i32 1}
!1272 = !{!"branch_weights", i32 20216, i32 983210}
!1273 = !{!"branch_weights", i32 1, i32 20216}
!1274 = !{!"branch_weights", i32 303086, i32 680125}
!1275 = !{!"branch_weights", i32 302196, i32 891}
!1276 = !{!"branch_weights", i32 680125, i32 891}
!1277 = !{!"branch_weights", i32 1, i32 891}
!1278 = !{!"branch_weights", i32 554, i32 338}
!1279 = !{!"branch_weights", i32 680462, i32 1}
!1280 = !{i32 0, i32 3}
!1281 = !{i32 0, i32 256}
!1282 = !{!"branch_weights", i32 5741, i32 1702250352, i32 32959081}
!1283 = !{i32 1, i32 3}
!1284 = !{!"branch_weights", i32 1, i32 20215}
!1285 = !{!"branch_weights", i32 0, i32 1}
!1286 = distinct !{!1286, !1060}
!1287 = !{!"function_entry_count", i64 366469}
!1288 = !{!"tree-vrp.c:vrp_visit_phi_node"}
!1289 = !{!"branch_weights", i32 366470, i32 1}
!1290 = !{!"branch_weights", i32 1, i32 280336}
!1291 = !{!"branch_weights", i32 2143683, i32 1}
!1292 = !{!1214, !1026, i64 48}
!1293 = !{!"branch_weights", i32 755144, i32 1388540}
!1294 = !{!"branch_weights", i32 535043, i32 853498}
!1295 = !{i64 0, i64 4, !1130, i64 8, i64 8, !1032, i64 16, i64 8, !1032, i64 24, i64 8, !1032}
!1296 = !{!"branch_weights", i32 853490, i32 9}
!1297 = !{!"branch_weights", i32 1388540, i32 1}
!1298 = !{!"branch_weights", i32 1863347, i32 280336}
!1299 = distinct !{!1299, !1060}
!1300 = !{!1053, !1029, i64 32}
!1301 = !{!"branch_weights", i32 1, i32 366470}
!1302 = !{!1303, !1029, i64 8}
!1303 = !{!"loop", !1026, i64 0, !1026, i64 4, !1029, i64 8, !1029, i64 16, !1304, i64 24, !1026, i64 32, !1026, i64 36, !1029, i64 40, !1029, i64 48, !1029, i64 56, !1029, i64 64, !1029, i64 72, !1305, i64 80, !1305, i64 96, !1027, i64 112, !1027, i64 113, !1026, i64 116, !1029, i64 120, !1029, i64 128, !1027, i64 136, !1029, i64 144}
!1304 = !{!"lpt_decision", !1026, i64 0, !1026, i64 4}
!1305 = !{!"", !1177, i64 0, !1177, i64 8}
!1306 = !{!"branch_weights", i32 128219, i32 238252}
!1307 = !{!"branch_weights", i32 73942, i32 292529}
!1308 = !{!"branch_weights", i32 -247778419, i32 1101643868}
!1309 = !{!"branch_weights", i32 -1213607196, i32 393128902, i32 55510}
!1310 = !{!"branch_weights", i32 -1342729826, i32 65118446}
!1311 = !{!"branch_weights", i32 1020, i32 178}
!1312 = !{!"branch_weights", i32 1, i32 1020}
!1313 = !{!"branch_weights", i32 352, i32 669}
!1314 = !{!"branch_weights", i32 202, i32 468}
!1315 = !{!"branch_weights", i32 1, i32 468}
!1316 = !{!"branch_weights", i32 1969584400, i32 486193854}
!1317 = !{!"branch_weights", i32 7581, i32 3374}
!1318 = !{!"branch_weights", i32 1, i32 7581}
!1319 = !{!"branch_weights", i32 453, i32 7129}
!1320 = !{!"branch_weights", i32 2759, i32 4371}
!1321 = !{!"branch_weights", i32 1, i32 4371}
!1322 = !{!"tree-vrp.c:vrp_finalize"}
!1323 = !{!"branch_weights", i32 726134, i32 1399384}
!1324 = !{!"branch_weights", i32 303643, i32 1095742}
!1325 = !{!"branch_weights", i32 55963, i32 247681}
!1326 = !{!"branch_weights", i32 17304, i32 38660}
!1327 = !{!1328, !1029, i64 8}
!1328 = !{!"prop_value_d", !1026, i64 0, !1029, i64 8}
!1329 = !{!"branch_weights", i32 2112213, i32 13304}
!1330 = distinct !{!1330, !1060}
!1331 = !{!"branch_weights", i32 1336588654, i32 810894994}
!1332 = !{!"branch_weights", i32 725765, i32 1399753}
!1333 = distinct !{!1333, !1060}
!1334 = !{!"tree-vrp.c:remove_range_assertions"}
!1335 = distinct !{!1335, !1060}
!1336 = !{!"branch_weights", i32 537542, i32 1145468}
!1337 = !{i32 0, i32 65536}
!1338 = !{!"branch_weights", i32 315192, i32 830277}
!1339 = !{!"branch_weights", i32 1, i32 315192}
!1340 = !{!"branch_weights", i32 315191, i32 1}
!1341 = !{!"branch_weights", i32 569533, i32 1}
!1342 = !{!"branch_weights", i32 662022, i32 1}
!1343 = !{!"branch_weights", i32 92489, i32 569533}
!1344 = distinct !{!1344, !1060}
!1345 = !{!"branch_weights", i32 254343, i32 315191}
!1346 = distinct !{!1346, !1060}
!1347 = !{!"branch_weights", i32 1128346, i32 554663}
!1348 = distinct !{!1348, !1060}
!1349 = !{!"tree-vrp.c:finalize_jump_threads"}
!1350 = !{!"function_entry_count", i64 26916}
!1351 = !{!"tree-vrp.c:VEC_edge_base_iterate"}
!1352 = !{!"branch_weights", i32 1, i32 26917}
!1353 = !{!1354, !1026, i64 0}
!1354 = !{!"VEC_edge_base", !1026, i64 0, !1026, i64 4, !1027, i64 8}
!1355 = !{!"branch_weights", i32 309, i32 26609}
!1356 = !{!"function_entry_count", i64 13406}
!1357 = !{!"tree-vrp.c:VEC_switch_update_base_iterate"}
!1358 = !{!"branch_weights", i32 1, i32 13407}
!1359 = !{!1360, !1026, i64 0}
!1360 = !{!"VEC_switch_update_base", !1026, i64 0, !1026, i64 4, !1027, i64 8}
!1361 = !{!"branch_weights", i32 103, i32 13305}
!1362 = !{!"function_entry_count", i64 102}
!1363 = !{!"tree-vrp.c:gimple_switch_set_num_labels"}
!1364 = !{!"function_entry_count", i64 424}
!1365 = !{!"tree-vrp.c:gimple_switch_set_label"}
!1366 = !{!"branch_weights", i32 425, i32 1}
!1367 = !{!"branch_weights", i32 1, i32 425}
!1368 = !{!"function_entry_count", i64 394}
!1369 = !{!"tree-vrp.c:gimple_switch_default_label"}
!1370 = !{!"function_entry_count", i64 6921306}
!1371 = !{!"tree-vrp.c:VEC_edge_base_length"}
!1372 = !{!"branch_weights", i32 1, i32 6921307}
!1373 = !{!"tree-vrp.c:VEC_edge_heap_free"}
!1374 = !{!"branch_weights", i32 1, i32 13305}
!1375 = !{!"tree-vrp.c:VEC_switch_update_heap_free"}
!1376 = !{!"tree-vrp.c:find_assert_locations"}
!1377 = !{!1250, !1026, i64 32}
!1378 = !{!"branch_weights", i32 13304, i32 1}
!1379 = !{!"branch_weights", i32 -2147483648, i32 0}
!1380 = !{!"branch_weights", i32 13304, i32 495501}
!1381 = distinct !{!1381, !1060}
!1382 = !{!1250, !1029, i64 16}
!1383 = !{!"branch_weights", i32 56760, i32 452046}
!1384 = !{!"branch_weights", i32 486143, i32 22663}
!1385 = !{i64 0, i64 4, !1130, i64 8, i64 8, !1032}
!1386 = !{i64 0, i64 8, !1032}
!1387 = !{!"branch_weights", i32 1, i32 486142}
!1388 = !{!"branch_weights", i32 763640, i32 16280}
!1389 = !{!"branch_weights", i32 477016, i32 286625}
!1390 = !{!"branch_weights", i32 486142, i32 293777}
!1391 = distinct !{!1391, !1060}
!1392 = !{!1393, !1029, i64 0}
!1393 = !{!"simple_bitmap_def", !1029, i64 0, !1026, i64 8, !1026, i64 12, !1027, i64 16}
!1394 = !{!"branch_weights", i32 1, i32 508804}
!1395 = !{!"branch_weights", i32 478746, i32 336896}
!1396 = !{!"branch_weights", i32 5600, i32 473147}
!1397 = !{!"branch_weights", i32 508804, i32 306837}
!1398 = distinct !{!1398, !1060}
!1399 = !{!"branch_weights", i32 495501, i32 13304}
!1400 = distinct !{!1400, !1060}
!1401 = !{!"branch_weights", i32 530959, i32 37967}
!1402 = !{!"branch_weights", i32 13304, i32 555621}
!1403 = distinct !{!1403, !1060}
!1404 = !{!"function_entry_count", i64 10332}
!1405 = !{!"tree-vrp.c:process_assert_insertions"}
!1406 = !{!"branch_weights", i32 10333, i32 1}
!1407 = !{!"branch_weights", i32 1, i32 10332}
!1408 = !{!"branch_weights", i32 22179, i32 -359458996}
!1409 = !{!1208, !1029, i64 64}
!1410 = !{!"branch_weights", i32 177437, i32 137755}
!1411 = distinct !{!1411, !1060}
!1412 = !{!"branch_weights", i32 10332, i32 167106}
!1413 = distinct !{!1413, !1060}
!1414 = !{!"branch_weights", i32 375752469, i32 1771731179}
!1415 = !{!"function_entry_count", i64 508804}
!1416 = !{!"tree-vrp.c:VEC_basic_block_base_index"}
!1417 = !{!"tree-vrp.c:find_assert_locations_1"}
!1418 = !{!"branch_weights", i32 45830, i32 462976}
!1419 = !{!"branch_weights", i32 287493, i32 175484}
!1420 = !{!"branch_weights", i32 287479, i32 15}
!1421 = !{!"branch_weights", i32 287472, i32 8}
!1422 = !{!"branch_weights", i32 5710, i32 457267}
!1423 = !{!"branch_weights", i32 5710, i32 1}
!1424 = !{!"branch_weights", i32 508804, i32 1}
!1425 = !{!"branch_weights", i32 1381787, i32 1}
!1426 = !{!"branch_weights", i32 1381786, i32 1}
!1427 = !{!"branch_weights", i32 1066483, i32 378169}
!1428 = !{!"branch_weights", i32 378169, i32 1}
!1429 = !{!"branch_weights", i32 1, i32 378169}
!1430 = !{!"branch_weights", i32 1, i32 189775}
!1431 = !{!"branch_weights", i32 30237, i32 188339}
!1432 = !{!"branch_weights", i32 30184, i32 54}
!1433 = !{!"branch_weights", i32 30182, i32 3}
!1434 = !{!"branch_weights", i32 30182, i32 378169}
!1435 = !{!"branch_weights", i32 3997, i32 26186}
!1436 = !{!"branch_weights", i32 189775, i32 28800}
!1437 = distinct !{!1437, !1060}
!1438 = !{!"branch_weights", i32 320597, i32 57573}
!1439 = !{!"branch_weights", i32 62865, i32 1381786}
!1440 = distinct !{!1440, !1060}
!1441 = !{!"branch_weights", i32 872983, i32 508804}
!1442 = distinct !{!1442, !1060}
!1443 = !{!"branch_weights", i32 240322, i32 268483}
!1444 = !{!"branch_weights", i32 240321, i32 1}
!1445 = !{!"branch_weights", i32 270474, i32 107551}
!1446 = !{!"branch_weights", i32 137703, i32 240321}
!1447 = distinct !{!1447, !1060}
!1448 = distinct !{!1448, !1060}
!1449 = !{!"function_entry_count", i64 1346153}
!1450 = !{!"tree-vrp.c:ei_start_1"}
!1451 = !{!"function_entry_count", i64 3695693}
!1452 = !{!"tree-vrp.c:ei_cond"}
!1453 = !{!"branch_weights", i32 2349541, i32 1346154}
!1454 = !{!"function_entry_count", i64 2349540}
!1455 = !{!"tree-vrp.c:ei_next"}
!1456 = !{!"branch_weights", i32 1, i32 2349541}
!1457 = !{!"branch_weights", i32 2349541, i32 1}
!1458 = !{!1459, !1026, i64 0}
!1459 = !{!"", !1026, i64 0, !1029, i64 8}
!1460 = !{!"function_entry_count", i64 79342008}
!1461 = !{!"tree-vrp.c:gimple_code"}
!1462 = !{!"function_entry_count", i64 287492}
!1463 = !{!"tree-vrp.c:fp_predicate"}
!1464 = !{!"branch_weights", i32 15, i32 287479}
!1465 = !{!"branch_weights", i32 1, i32 287479}
!1466 = !{!"function_entry_count", i64 293187}
!1467 = !{!"tree-vrp.c:zero_ssa_operands"}
!1468 = !{!"function_entry_count", i64 287471}
!1469 = !{!"tree-vrp.c:find_conditional_asserts"}
!1470 = !{!"branch_weights", i32 1, i32 287471}
!1471 = !{!"branch_weights", i32 1, i32 574943}
!1472 = !{!"branch_weights", i32 574942, i32 1}
!1473 = !{!"branch_weights", i32 77307, i32 574942}
!1474 = distinct !{!1474, !1060}
!1475 = !{!"branch_weights", i32 287471, i32 287472}
!1476 = distinct !{!1476, !1060}
!1477 = !{!"function_entry_count", i64 5709}
!1478 = !{!"tree-vrp.c:find_switch_asserts"}
!1479 = !{!"branch_weights", i32 1, i32 5709}
!1480 = !{!"branch_weights", i32 5709, i32 39394}
!1481 = distinct !{!1481, !1060}
!1482 = !{!"branch_weights", i32 0, i32 -2147483648}
!1483 = !{!"branch_weights", i32 27528, i32 4745}
!1484 = !{!"branch_weights", i32 4068, i32 23461}
!1485 = !{!"branch_weights", i32 15934, i32 966}
!1486 = !{!"branch_weights", i32 12832, i32 4068}
!1487 = distinct !{!1487, !1060}
!1488 = !{!"branch_weights", i32 2564, i32 1505}
!1489 = !{!"branch_weights", i32 5710, i32 26563}
!1490 = !{!"branch_weights", i32 19638, i32 6926}
!1491 = !{!"branch_weights", i32 26563, i32 5709}
!1492 = distinct !{!1492, !1060}
!1493 = !{!"function_entry_count", i64 1618130}
!1494 = !{!"tree-vrp.c:gsi_start_bb"}
!1495 = !{!1209, !1029, i64 8}
!1496 = !{!1209, !1029, i64 16}
!1497 = !{!"function_entry_count", i64 7924324}
!1498 = !{!"tree-vrp.c:gsi_end_p"}
!1499 = !{!"function_entry_count", i64 1504525}
!1500 = !{!"tree-vrp.c:is_gimple_debug"}
!1501 = !{!"function_entry_count", i64 3042729}
!1502 = !{!"tree-vrp.c:op_iter_init_tree"}
!1503 = !{!1504, !1026, i64 4}
!1504 = !{!"ssa_operand_iterator_d", !1027, i64 0, !1026, i64 4, !1029, i64 8, !1029, i64 16, !1026, i64 24, !1026, i64 28, !1029, i64 32}
!1505 = !{!"function_entry_count", i64 8116330}
!1506 = !{!"tree-vrp.c:op_iter_done"}
!1507 = !{!1504, !1027, i64 0}
!1508 = !{!"function_entry_count", i64 1715123}
!1509 = !{!"tree-vrp.c:SET_BIT"}
!1510 = !{!"branch_weights", i32 1715124, i32 1}
!1511 = !{!"function_entry_count", i64 1444650}
!1512 = !{!"tree-vrp.c:infer_value_range"}
!1513 = !{!"branch_weights", i32 1444651, i32 1}
!1514 = !{!"branch_weights", i32 1104820, i32 339832}
!1515 = !{!1211, !1029, i64 8}
!1516 = !{!"branch_weights", i32 4606182, i32 -465181986}
!1517 = !{!"branch_weights", i32 1, i32 1444244}
!1518 = !{!"branch_weights", i32 -1335604819, i32 -309919447, i32 4808}
!1519 = !{!"branch_weights", i32 1, i32 828779}
!1520 = !{!"branch_weights", i32 450611, i32 378169}
!1521 = !{!"function_entry_count", i64 8857353}
!1522 = !{!"tree-vrp.c:is_gimple_assign"}
!1523 = !{!"function_entry_count", i64 6029236}
!1524 = !{!"tree-vrp.c:gimple_assign_rhs_code"}
!1525 = !{!"branch_weights", i32 2961810, i32 3067428}
!1526 = !{!"function_entry_count", i64 4549541}
!1527 = !{!"tree-vrp.c:gimple_assign_rhs1"}
!1528 = !{!"function_entry_count", i64 625576}
!1529 = !{!"tree-vrp.c:has_single_use"}
!1530 = !{!1531, !1029, i64 8}
!1531 = !{!"ssa_use_operand_d", !1029, i64 0, !1029, i64 8, !1027, i64 16, !1029, i64 24}
!1532 = !{!"branch_weights", i32 1, i32 625577}
!1533 = !{!"branch_weights", i32 122740, i32 502838}
!1534 = !{!"branch_weights", i32 502838, i32 1}
!1535 = !{!"function_entry_count", i64 502837}
!1536 = !{!"tree-vrp.c:register_new_assert_for"}
!1537 = !{!"branch_weights", i32 7091, i32 -729295897}
!1538 = !{!"branch_weights", i32 178246, i32 324593}
!1539 = !{!"branch_weights", i32 1, i32 315191}
!1540 = !{!"branch_weights", i32 5863597, i32 378177}
!1541 = !{!"branch_weights", i32 5563098, i32 300500}
!1542 = !{!"branch_weights", i32 297163, i32 3338}
!1543 = !{!1208, !1029, i64 56}
!1544 = !{!"branch_weights", i32 5565415, i32 1021}
!1545 = !{!"branch_weights", i32 588, i32 434}
!1546 = !{!"branch_weights", i32 5304379, i32 261470}
!1547 = !{!"branch_weights", i32 5239462, i32 64918}
!1548 = !{!"branch_weights", i32 261470, i32 1}
!1549 = !{!1211, !1029, i64 0}
!1550 = !{!"branch_weights", i32 73737, i32 187734}
!1551 = !{!"branch_weights", i32 5304466, i32 122730}
!1552 = !{!"branch_weights", i32 315191, i32 5926582}
!1553 = distinct !{!1553, !1060}
!1554 = !{!"branch_weights", i32 177438, i32 137755}
!1555 = !{!"function_entry_count", i64 5674768}
!1556 = !{!"tree-vrp.c:op_iter_next_tree"}
!1557 = !{!1504, !1029, i64 16}
!1558 = !{!"branch_weights", i32 3284691, i32 2390079}
!1559 = !{!1560, !1029, i64 0}
!1560 = !{!"use_optype_d", !1029, i64 0, !1531, i64 8}
!1561 = !{!1504, !1029, i64 8}
!1562 = !{!"branch_weights", i32 2749550, i32 535142}
!1563 = !{!1564, !1029, i64 8}
!1564 = !{!"def_optype_d", !1029, i64 0, !1029, i64 8}
!1565 = !{!1564, !1029, i64 0}
!1566 = !{!"function_entry_count", i64 4927536}
!1567 = !{!"tree-vrp.c:gsi_next"}
!1568 = !{!1223, !1029, i64 16}
!1569 = !{!"function_entry_count", i64 302330}
!1570 = !{!"tree-vrp.c:op_iter_init_phiuse"}
!1571 = !{!"branch_weights", i32 1, i32 302331}
!1572 = !{!"branch_weights", i32 99708, i32 202624}
!1573 = !{!1504, !1029, i64 32}
!1574 = !{!1504, !1026, i64 28}
!1575 = !{!"function_entry_count", i64 5979858}
!1576 = !{!"tree-vrp.c:get_use_from_ptr"}
!1577 = !{!1531, !1029, i64 24}
!1578 = !{!"function_entry_count", i64 2341855}
!1579 = !{!"tree-vrp.c:op_iter_next_use"}
!1580 = !{!"branch_weights", i32 1567486, i32 774371}
!1581 = !{!1504, !1026, i64 24}
!1582 = !{!"branch_weights", i32 857339, i32 710148}
!1583 = !{!"function_entry_count", i64 2905630}
!1584 = !{!"tree-vrp.c:gimple_cond_lhs"}
!1585 = !{!"function_entry_count", i64 10480858}
!1586 = !{!"tree-vrp.c:gimple_op"}
!1587 = !{!"branch_weights", i32 1, i32 10480859}
!1588 = !{!"function_entry_count", i64 14050335}
!1589 = !{!"tree-vrp.c:gimple_has_ops"}
!1590 = !{!"function_entry_count", i64 10492270}
!1591 = !{!"tree-vrp.c:gimple_ops"}
!1592 = !{!"branch_weights", i32 1, i32 10492271}
!1593 = !{!"tree-vrp.c:gimple_statement_structure"}
!1594 = !{!"tree-vrp.c:gss_for_code"}
!1595 = !{!"function_entry_count", i64 685735}
!1596 = !{!"tree-vrp.c:register_edge_assert_for"}
!1597 = !{!"branch_weights", i32 685736, i32 1}
!1598 = !{!"branch_weights", i32 1, i32 685736}
!1599 = !{!"branch_weights", i32 297735, i32 388002}
!1600 = !{!"branch_weights", i32 287888, i32 9848}
!1601 = !{!"branch_weights", i32 1539193234, i32 608290414}
!1602 = !{!"branch_weights", i32 131067, i32 147032}
!1603 = !{!"branch_weights", i32 58649, i32 98231}
!1604 = !{!"branch_weights", i32 2024, i32 96208}
!1605 = !{!"branch_weights", i32 22291, i32 73918}
!1606 = !{!"branch_weights", i32 134806551, i32 2012677097}
!1607 = !{!"branch_weights", i32 150248, i32 147488}
!1608 = !{!"branch_weights", i32 268970, i32 9129}
!1609 = !{!"branch_weights", i32 58574, i32 98043}
!1610 = !{!"branch_weights", i32 3120, i32 94924}
!1611 = !{!"branch_weights", i32 91756, i32 3169}
!1612 = !{!"branch_weights", i32 3253, i32 88504}
!1613 = !{!"function_entry_count", i64 1665415}
!1614 = !{!"tree-vrp.c:gimple_cond_code"}
!1615 = !{!"function_entry_count", i64 1968586}
!1616 = !{!"tree-vrp.c:gimple_cond_rhs"}
!1617 = !{!"function_entry_count", i64 1392322}
!1618 = !{!"tree-vrp.c:extract_code_and_val_from_cond_with_ops"}
!1619 = !{!"branch_weights", i32 155754, i32 1236570}
!1620 = !{!"branch_weights", i32 727681, i32 664643}
!1621 = !{!"branch_weights", i32 1, i32 1392323}
!1622 = !{!"branch_weights", i32 -1047006967, i32 299995475}
!1623 = !{!"branch_weights", i32 960825937, i32 -1896321046, i32 642073612}
!1624 = !{!"branch_weights", i32 1, i32 53625}
!1625 = !{!"branch_weights", i32 1, i32 35835}
!1626 = !{!"function_entry_count", i64 706587}
!1627 = !{!"tree-vrp.c:register_edge_assert_for_2"}
!1628 = !{!"branch_weights", i32 1, i32 706588}
!1629 = !{!"branch_weights", i32 537084, i32 169505}
!1630 = !{!"branch_weights", i32 169505, i32 1}
!1631 = !{!"branch_weights", i32 346278487, i32 -939966995}
!1632 = !{!"branch_weights", i32 37311, i32 28795}
!1633 = !{!"branch_weights", i32 12386, i32 24926}
!1634 = !{!"branch_weights", i32 3243, i32 21684}
!1635 = !{!"branch_weights", i32 9409, i32 12276}
!1636 = !{!"branch_weights", i32 9409, i32 1}
!1637 = !{!"branch_weights", i32 9261, i32 149}
!1638 = !{!"branch_weights", i32 21915, i32 3012}
!1639 = !{!"branch_weights", i32 3012, i32 1}
!1640 = !{!"branch_weights", i32 1303, i32 1710}
!1641 = !{!"branch_weights", i32 1299, i32 5}
!1642 = !{!"branch_weights", i32 1299, i32 1}
!1643 = !{!"branch_weights", i32 503, i32 797}
!1644 = !{!"branch_weights", i32 797, i32 1}
!1645 = !{!"branch_weights", i32 -2113143521, i32 1677025}
!1646 = !{!"branch_weights", i32 892, i32 408}
!1647 = !{!"branch_weights", i32 408, i32 1}
!1648 = !{!"branch_weights", i32 118, i32 291}
!1649 = !{!"branch_weights", i32 15518, i32 9409}
!1650 = !{!"branch_weights", i32 -1966965850, i32 251314}
!1651 = !{!"branch_weights", i32 6826, i32 2436}
!1652 = !{!"branch_weights", i32 2436, i32 1}
!1653 = !{!"branch_weights", i32 1755, i32 682}
!1654 = !{!"function_entry_count", i64 451176}
!1655 = !{!"tree-vrp.c:gimple_assign_rhs2"}
!1656 = !{!"branch_weights", i32 451177, i32 1}
!1657 = !{!"function_entry_count", i64 64167}
!1658 = !{!"tree-vrp.c:register_edge_assert_for_1"}
!1659 = !{!"branch_weights", i32 19286, i32 1}
!1660 = !{!"branch_weights", i32 5900, i32 38983}
!1661 = !{!"branch_weights", i32 42126, i32 2757}
!1662 = !{!"branch_weights", i32 19808, i32 22319}
!1663 = !{!"branch_weights", i32 19808, i32 1}
!1664 = !{!"branch_weights", i32 1046, i32 18763}
!1665 = !{!"branch_weights", i32 9130800, i32 485304000, i32 176400}
!1666 = !{!"branch_weights", i32 6, i32 21895}
!1667 = !{!"branch_weights", i32 156, i32 21740}
!1668 = !{!"branch_weights", i32 4, i32 417}
!1669 = !{!"branch_weights", i32 42, i32 376}
!1670 = !{!"branch_weights", i32 6, i32 22110}
!1671 = !{!"branch_weights", i32 25596, i32 19286}
!1672 = !{!"branch_weights", i32 49, i32 22062}
!1673 = !{!"branch_weights", i32 2296, i32 19767}
!1674 = !{!"branch_weights", i32 44, i32 19724}
!1675 = !{!"function_entry_count", i64 717145}
!1676 = !{!"tree-vrp.c:live_on_edge"}
!1677 = !{!"branch_weights", i32 35662, i32 681485}
!1678 = !{!"function_entry_count", i64 24925}
!1679 = !{!"tree-vrp.c:gimple_assign_cast_p"}
!1680 = !{!"branch_weights", i32 4143, i32 20784}
!1681 = !{!"function_entry_count", i64 722616}
!1682 = !{!"tree-vrp.c:gimple_expr_type"}
!1683 = !{!"branch_weights", i32 1329, i32 3532482, i32 1918628740, i32 1329}
!1684 = !{!"branch_weights", i32 70759, i32 650531}
!1685 = !{!"function_entry_count", i64 1328}
!1686 = !{!"tree-vrp.c:gimple_call_return_type"}
!1687 = !{!"function_entry_count", i64 213085}
!1688 = !{!"tree-vrp.c:gimple_call_fn"}
!1689 = !{!"function_entry_count", i64 525765}
!1690 = !{!"tree-vrp.c:gimple_num_ops"}
!1691 = !{!"function_entry_count", i64 7406}
!1692 = !{!"tree-vrp.c:gimple_switch_num_labels"}
!1693 = !{!"branch_weights", i32 7407, i32 1}
!1694 = !{!"function_entry_count", i64 17158}
!1695 = !{!"tree-vrp.c:gimple_switch_index"}
!1696 = !{!"function_entry_count", i64 54471}
!1697 = !{!"tree-vrp.c:gimple_switch_label"}
!1698 = !{!"branch_weights", i32 54472, i32 1}
!1699 = !{!"function_entry_count", i64 163326}
!1700 = !{!"tree-vrp.c:compare_case_labels"}
!1701 = !{!"branch_weights", i32 61085, i32 102243}
!1702 = !{!"branch_weights", i32 35970, i32 66274}
!1703 = !{!"branch_weights", i32 281, i32 35690}
!1704 = !{!"branch_weights", i32 543, i32 35148}
!1705 = !{!"function_entry_count", i64 1721493}
!1706 = !{!"tree-vrp.c:bb_seq"}
!1707 = !{!1211, !1026, i64 96}
!1708 = !{!"branch_weights", i32 1721494, i32 1}
!1709 = !{!"branch_weights", i32 1, i32 1721494}
!1710 = !{!1711, !1029, i64 0}
!1711 = !{!"gimple_bb_info", !1029, i64 0, !1029, i64 8}
!1712 = !{!"tree-vrp.c:gimple_seq_first"}
!1713 = !{!"branch_weights", i32 1, i32 1618131}
!1714 = !{!1715, !1029, i64 0}
!1715 = !{!"gimple_seq_d", !1029, i64 0, !1029, i64 8, !1029, i64 16}
!1716 = !{!"function_entry_count", i64 3550253}
!1717 = !{!"tree-vrp.c:op_iter_init"}
!1718 = !{!"branch_weights", i32 3550254, i32 1}
!1719 = !{!"branch_weights", i32 2757440, i32 792815}
!1720 = !{!"branch_weights", i32 178569853, i32 1968913795}
!1721 = !{!"branch_weights", i32 440955, i32 285936}
!1722 = !{!"branch_weights", i32 792815, i32 2757440}
!1723 = !{!"branch_weights", i32 41325852, i32 2106157796}
!1724 = !{!"branch_weights", i32 1635099, i32 1069279}
!1725 = !{!"function_entry_count", i64 792814}
!1726 = !{!"tree-vrp.c:gimple_def_ops"}
!1727 = !{!"branch_weights", i32 19, i32 792797}
!1728 = !{!"function_entry_count", i64 726889}
!1729 = !{!"tree-vrp.c:gimple_vdef"}
!1730 = !{!"branch_weights", i32 1, i32 726890}
!1731 = !{!"function_entry_count", i64 2757439}
!1732 = !{!"tree-vrp.c:gimple_use_ops"}
!1733 = !{!"branch_weights", i32 19, i32 2757422}
!1734 = !{!"function_entry_count", i64 5209830}
!1735 = !{!"tree-vrp.c:gimple_vuse"}
!1736 = !{!"branch_weights", i32 1190296, i32 4019536}
!1737 = !{!"function_entry_count", i64 5936719}
!1738 = !{!"tree-vrp.c:gimple_has_mem_ops"}
!1739 = !{!"function_entry_count", i64 5720596}
!1740 = !{!"tree-vrp.c:gimple_bb"}
!1741 = !{!"tree-vrp.c:gimple_expr_code"}
!1742 = !{!"branch_weights", i32 1, i32 24116948, i32 2, i32 1}
!1743 = !{!"function_entry_count", i64 6379157}
!1744 = !{!"tree-vrp.c:get_gimple_rhs_class"}
!1745 = !{!"function_entry_count", i64 1001444}
!1746 = !{!"tree-vrp.c:get_def_from_ptr"}
!1747 = !{!"function_entry_count", i64 1027876}
!1748 = !{!"tree-vrp.c:gimple_phi_result"}
!1749 = !{!"tree-vrp.c:clear_and_done_ssa_iter"}
!1750 = !{!"function_entry_count", i64 2626641}
!1751 = !{!"tree-vrp.c:gimple_phi_num_args"}
!1752 = !{!"function_entry_count", i64 2245877}
!1753 = !{!"tree-vrp.c:gimple_phi_arg_imm_use_ptr"}
!1754 = !{!"tree-vrp.c:gimple_phi_arg"}
!1755 = !{!"branch_weights", i32 1, i32 2245878}
!1756 = !{!"tree-vrp.c:ei_end_p"}
!1757 = !{!"branch_weights", i32 1, i32 3695694}
!1758 = !{!"tree-vrp.c:ei_edge"}
!1759 = !{!"function_entry_count", i64 16789546}
!1760 = !{!"tree-vrp.c:ei_container"}
!1761 = !{!"branch_weights", i32 1, i32 16789547}
!1762 = !{!"function_entry_count", i64 4493222}
!1763 = !{!"tree-vrp.c:VEC_edge_base_index"}
!1764 = !{!"function_entry_count", i64 315191}
!1765 = !{!"tree-vrp.c:process_assert_insertions_for"}
!1766 = !{!"branch_weights", i32 138446, i32 176747}
!1767 = !{!"branch_weights", i32 138446, i32 1}
!1768 = distinct !{!1768, !1060}
!1769 = !{!"tree-vrp.c:build_assert_expr_for"}
!1770 = !{!"branch_weights", i32 315192, i32 1}
!1771 = !{!"function_entry_count", i64 2627371}
!1772 = !{!"tree-vrp.c:stmt_interesting_for_vrp"}
!1773 = !{!"branch_weights", i32 240322, i32 2387051}
!1774 = !{!"branch_weights", i32 99708, i32 140615}
!1775 = !{!"branch_weights", i32 647015, i32 1839871}
!1776 = !{!"branch_weights", i32 460976, i32 186040}
!1777 = !{!"branch_weights", i32 79946, i32 1945965}
!1778 = !{!"branch_weights", i32 1827183, i32 118783}
!1779 = !{!"branch_weights", i32 2911329, i32 198714233, i32 172006032, i32 2017393359, i32 -1919378462, i32 2606}
!1780 = !{!"branch_weights", i32 1720083, i32 105985}
!1781 = !{!"branch_weights", i32 2430, i32 103556}
!1782 = !{!"branch_weights", i32 1074, i32 102483}
!1783 = !{!"branch_weights", i32 1290969, i32 534026}
!1784 = !{!"function_entry_count", i64 466303}
!1785 = !{!"tree-vrp.c:gimple_phi_result_ptr"}
!1786 = !{!"function_entry_count", i64 1937612}
!1787 = !{!"tree-vrp.c:prop_set_simulate_again"}
!1788 = !{!"function_entry_count", i64 3457179}
!1789 = !{!"tree-vrp.c:is_gimple_call"}
!1790 = !{!"function_entry_count", i64 211757}
!1791 = !{!"tree-vrp.c:gimple_call_fndecl"}
!1792 = !{!"branch_weights", i32 209329, i32 2430}
!1793 = !{!"tree-vrp.c:gimple_set_visited"}
!1794 = !{!"function_entry_count", i64 681014}
!1795 = !{!"tree-vrp.c:vrp_visit_assignment_or_call"}
!1796 = !{!"branch_weights", i32 681015, i32 1}
!1797 = !{!"branch_weights", i32 -2011338890, i32 1917185789}
!1798 = !{!"branch_weights", i32 1, i32 370210}
!1799 = !{!"branch_weights", i32 1, i32 621612, i32 1}
!1800 = !{!"branch_weights", i32 891, i32 680125}
!1801 = !{!"branch_weights", i32 15869, i32 665147}
!1802 = !{!"branch_weights", i32 665147, i32 1}
!1803 = !{!"branch_weights", i32 88601, i32 576547}
!1804 = distinct !{!1804, !1060}
!1805 = !{!"function_entry_count", i64 296455}
!1806 = !{!"tree-vrp.c:vrp_visit_cond_stmt"}
!1807 = !{!"branch_weights", i32 296456, i32 1}
!1808 = distinct !{!1808, !1060}
!1809 = !{!"branch_weights", i32 284166, i32 12291}
!1810 = !{!"branch_weights", i32 12260, i32 32}
!1811 = !{!"branch_weights", i32 32, i32 1}
!1812 = !{!"branch_weights", i32 2147476403, i32 7245}
!1813 = !{!"function_entry_count", i64 5740}
!1814 = !{!"tree-vrp.c:vrp_visit_switch_stmt"}
!1815 = !{!"branch_weights", i32 5741, i32 1}
!1816 = !{!"branch_weights", i32 410, i32 5332}
!1817 = !{!"branch_weights", i32 383, i32 28}
!1818 = !{!"branch_weights", i32 27, i32 357}
!1819 = !{!"branch_weights", i32 1, i32 27}
!1820 = !{!"branch_weights", i32 109, i32 249}
!1821 = !{!"branch_weights", i32 13, i32 237}
!1822 = !{!"branch_weights", i32 237, i32 1}
!1823 = !{!"branch_weights", i32 26, i32 109}
!1824 = !{!"branch_weights", i32 14, i32 96}
!1825 = distinct !{!1825, !1060}
!1826 = !{!"branch_weights", i32 96, i32 1}
!1827 = !{!"branch_weights", i32 52, i32 1}
!1828 = !{!"function_entry_count", i64 198067}
!1829 = !{!"tree-vrp.c:extract_range_basic"}
!1830 = !{!"branch_weights", i32 -2093957485, i32 931083328}
!1831 = !{!"branch_weights", i32 37512, i32 101677}
!1832 = !{!"branch_weights", i32 101649, i32 29}
!1833 = !{!"branch_weights", i32 690475385, i32 60715264}
!1834 = !{!"function_entry_count", i64 680124}
!1835 = !{!"tree-vrp.c:extract_range_from_assignment"}
!1836 = !{!"branch_weights", i32 -924671436, i32 -681371356, i32 183254733}
!1837 = !{!"branch_weights", i32 -348266679, i32 -1134359977}
!1838 = !{!"branch_weights", i32 102660, i32 39570}
!1839 = !{!"branch_weights", i32 123, i32 39448}
!1840 = !{!"branch_weights", i32 25425, i32 14024}
!1841 = !{!"branch_weights", i32 14012, i32 13}
!1842 = !{!"branch_weights", i32 12828, i32 1185}
!1843 = !{!"branch_weights", i32 197178, i32 482948}
!1844 = !{!"function_entry_count", i64 969992}
!1845 = !{!"tree-vrp.c:update_value_range"}
!1846 = !{!"branch_weights", i32 254875, i32 715119}
!1847 = !{!"branch_weights", i32 12308, i32 242568}
!1848 = !{!"branch_weights", i32 47356, i32 195213}
!1849 = !{!"branch_weights", i32 288456936, i32 1859026712}
!1850 = !{!"function_entry_count", i64 139187}
!1851 = !{!"tree-vrp.c:gimple_stmt_nonnegative_warnv_p"}
!1852 = !{!"branch_weights", i32 1, i32 138750, i32 439}
!1853 = !{!"function_entry_count", i64 101676}
!1854 = !{!"tree-vrp.c:set_value_range_to_nonnegative"}
!1855 = !{!"branch_weights", i32 1, i32 29}
!1856 = !{!"function_entry_count", i64 101648}
!1857 = !{!"tree-vrp.c:stmt_overflow_infinity"}
!1858 = !{!"branch_weights", i32 24, i32 101626}
!1859 = !{!"branch_weights", i32 94, i32 101533}
!1860 = !{!"function_entry_count", i64 96391}
!1861 = !{!"tree-vrp.c:vrp_stmt_computes_nonzero"}
!1862 = !{!"branch_weights", i32 95279, i32 1114}
!1863 = !{!"branch_weights", i32 558, i32 94722}
!1864 = !{!"branch_weights", i32 12211, i32 82512}
!1865 = !{!"branch_weights", i32 1, i32 12211}
!1866 = !{!"branch_weights", i32 12211, i32 1}
!1867 = !{!"function_entry_count", i64 138749}
!1868 = !{!"tree-vrp.c:gimple_assign_nonnegative_warnv_p"}
!1869 = !{!"branch_weights", i32 1, i32 31428, i32 106850, i32 474, i32 1}
!1870 = !{!"function_entry_count", i64 438}
!1871 = !{!"tree-vrp.c:gimple_call_nonnegative_warnv_p"}
!1872 = !{!"branch_weights", i32 7, i32 433}
!1873 = !{!"branch_weights", i32 15, i32 425}
!1874 = !{!"function_entry_count", i64 876}
!1875 = !{!"tree-vrp.c:gimple_call_num_args"}
!1876 = !{!"function_entry_count", i64 446}
!1877 = !{!"tree-vrp.c:gimple_call_arg"}
!1878 = !{!"function_entry_count", i64 8904}
!1879 = !{!"tree-vrp.c:supports_overflow_infinity"}
!1880 = !{!"branch_weights", i32 1, i32 8905}
!1881 = !{!"branch_weights", i32 79299025, i32 17811}
!1882 = !{!"function_entry_count", i64 8062}
!1883 = !{!"tree-vrp.c:positive_overflow_infinity"}
!1884 = !{!"function_entry_count", i64 8865}
!1885 = !{!"tree-vrp.c:make_overflow_infinity"}
!1886 = !{!"function_entry_count", i64 4135545}
!1887 = !{!"tree-vrp.c:is_overflow_infinity"}
!1888 = !{!"branch_weights", i32 1733427, i32 2402120}
!1889 = !{!"branch_weights", i32 -1813111894, i32 32119048}
!1890 = !{!"branch_weights", i32 28069, i32 2622}
!1891 = !{!"tree-vrp.c:gimple_stmt_nonzero_warnv_p"}
!1892 = !{!"branch_weights", i32 1, i32 95525, i32 868}
!1893 = !{!"function_entry_count", i64 40303}
!1894 = !{!"tree-vrp.c:range_is_nonnull"}
!1895 = !{!"branch_weights", i32 12374, i32 27931}
!1896 = !{!"branch_weights", i32 145, i32 12230}
!1897 = !{!"function_entry_count", i64 95524}
!1898 = !{!"tree-vrp.c:gimple_assign_nonzero_warnv_p"}
!1899 = !{!"branch_weights", i32 1, i32 31128, i32 47478, i32 16921, i32 1}
!1900 = !{!"function_entry_count", i64 342911}
!1901 = !{!"tree-vrp.c:extract_range_from_assert"}
!1902 = !{!"branch_weights", i32 342912, i32 1}
!1903 = !{!"branch_weights", i32 340022, i32 2891}
!1904 = !{!"branch_weights", i32 125, i32 348642, i32 15625}
!1905 = !{!"branch_weights", i32 1, i32 342912}
!1906 = !{!"branch_weights", i32 1281090962, i32 -1236635490, i32 12654}
!1907 = !{!"branch_weights", i32 48787209, i32 -1239158917}
!1908 = !{!"branch_weights", i32 55756, i32 283360}
!1909 = !{!"branch_weights", i32 1417206008, i32 55757, i32 1691581284}
!1910 = !{!"branch_weights", i32 13746, i32 11673}
!1911 = !{!"branch_weights", i32 339115, i32 1}
!1912 = !{!"branch_weights", i32 -733178266, i32 1324187, i32 29312128}
!1913 = !{!"branch_weights", i32 2767, i32 125}
!1914 = !{!"branch_weights", i32 1764, i32 1990920, i32 3111696}
!1915 = !{!"branch_weights", i32 357989294, i32 373401763, i32 -1917980506}
!1916 = !{!"branch_weights", i32 37847, i32 2544}
!1917 = !{!"branch_weights", i32 13770, i32 26621}
!1918 = !{!"branch_weights", i32 254365, i32 2750}
!1919 = !{!"branch_weights", i32 1234, i32 1517}
!1920 = !{!"branch_weights", i32 157, i32 1078}
!1921 = !{!"branch_weights", i32 642028952, i32 -923465352}
!1922 = !{!"branch_weights", i32 31085, i32 10044}
!1923 = !{!"branch_weights", i32 10044, i32 1}
!1924 = !{!"branch_weights", i32 630029127, i32 379892793}
!1925 = !{!"branch_weights", i32 17948, i32 6210}
!1926 = !{!"branch_weights", i32 160, i32 6051}
!1927 = !{!"branch_weights", i32 11513, i32 12645}
!1928 = !{!"branch_weights", i32 4, i32 11510}
!1929 = !{!"branch_weights", i32 355430030, i32 3416650}
!1930 = !{!"branch_weights", i32 11442, i32 12484}
!1931 = !{!"branch_weights", i32 44970436, i32 31777765}
!1932 = !{!"branch_weights", i32 101998135, i32 7001}
!1933 = !{!"branch_weights", i32 12323, i32 2245}
!1934 = !{!"branch_weights", i32 19, i32 2227}
!1935 = !{!"branch_weights", i32 7001, i32 7567}
!1936 = !{!"branch_weights", i32 2, i32 7000}
!1937 = !{!"branch_weights", i32 163416892, i32 112250}
!1938 = !{!"branch_weights", i32 6995, i32 7563}
!1939 = !{!"branch_weights", i32 2656900, i32 8753576}
!1940 = !{!"branch_weights", i32 -706376355, i32 2573324, i32 10589}
!1941 = !{!"branch_weights", i32 -1861947772, i32 -818253496, i32 17439}
!1942 = !{!"branch_weights", i32 118908, i32 20607}
!1943 = !{!"branch_weights", i32 109231, i32 9678}
!1944 = !{!"branch_weights", i32 2, i32 1105461248, i32 -1821114371}
!1945 = !{!"branch_weights", i32 11612, i32 256937625, i32 134838544}
!1946 = !{!"branch_weights", i32 18, i32 22108}
!1947 = !{!"branch_weights", i32 7642, i32 14467}
!1948 = !{!"branch_weights", i32 7514, i32 14595}
!1949 = !{!"branch_weights", i32 2214, i32 73283}
!1950 = !{!"branch_weights", i32 5938, i32 7888}
!1951 = !{!"branch_weights", i32 105, i32 5834}
!1952 = !{!"branch_weights", i32 11516, i32 2206}
!1953 = !{!"branch_weights", i32 12613, i32 1109}
!1954 = !{!"branch_weights", i32 4217, i32 8397}
!1955 = !{!"branch_weights", i32 1072, i32 3146}
!1956 = !{!"branch_weights", i32 3017, i32 130}
!1957 = !{!"branch_weights", i32 811, i32 8695}
!1958 = !{!"branch_weights", i32 2552, i32 6144}
!1959 = !{!"branch_weights", i32 35825665, i32 5830}
!1960 = !{!"branch_weights", i32 5846, i32 299}
!1961 = !{!"branch_weights", i32 5846, i32 1}
!1962 = !{!"branch_weights", i32 3815, i32 2032}
!1963 = !{!"branch_weights", i32 2032, i32 1}
!1964 = !{!"branch_weights", i32 34105600, i32 40887, i32 5840}
!1965 = !{!"branch_weights", i32 299, i32 1}
!1966 = !{!"branch_weights", i32 79236, i32 264}
!1967 = !{!"branch_weights", i32 193, i32 107}
!1968 = !{!"branch_weights", i32 107, i32 1}
!1969 = !{!"branch_weights", i32 89401, i32 300, i32 299}
!1970 = !{!"function_entry_count", i64 17389}
!1971 = !{!"tree-vrp.c:extract_range_from_ssa_name"}
!1972 = !{!"branch_weights", i32 200871890, i32 17391, i32 101557600}
!1973 = !{!"function_entry_count", i64 177596}
!1974 = !{!"tree-vrp.c:extract_range_from_binary_expr"}
!1975 = !{!"branch_weights", i32 13688231, i32 4780800}
!1976 = !{!"branch_weights", i32 3191, i32 1389}
!1977 = !{!"branch_weights", i32 1862, i32 2718}
!1978 = !{!"branch_weights", i32 3933, i32 647}
!1979 = !{!"branch_weights", i32 162, i32 486}
!1980 = !{!"branch_weights", i32 486, i32 1}
!1981 = !{!"branch_weights", i32 165794, i32 5627}
!1982 = !{!"branch_weights", i32 1, i32 5627}
!1983 = !{!"branch_weights", i32 58497, i32 112924}
!1984 = !{!"branch_weights", i32 1, i32 112924}
!1985 = !{!"branch_weights", i32 42855, i32 -621865246}
!1986 = !{!"branch_weights", i32 -1460012301, i32 -1275748093}
!1987 = !{!"branch_weights", i32 56581, i32 5982}
!1988 = !{!"branch_weights", i32 56348, i32 234}
!1989 = !{!"branch_weights", i32 -1893526276, i32 14064435, i32 24502}
!1990 = !{!"branch_weights", i32 -1893526276, i32 24502, i32 24502}
!1991 = !{!"branch_weights", i32 1149, i32 329476}
!1992 = !{!"branch_weights", i32 574, i32 1}
!1993 = !{!"branch_weights", i32 560, i32 15}
!1994 = !{!"branch_weights", i32 560, i32 1}
!1995 = !{!"branch_weights", i32 558, i32 3}
!1996 = !{!"branch_weights", i32 2, i32 2}
!1997 = !{!"branch_weights", i32 129263065, i32 -2078091484}
!1998 = !{!"branch_weights", i32 6707040, i32 11923760, i32 9859600}
!1999 = !{!"branch_weights", i32 2260, i32 1}
!2000 = !{!"branch_weights", i32 145, i32 2116}
!2001 = !{!"branch_weights", i32 2050, i32 67}
!2002 = !{!"branch_weights", i32 2194, i32 1}
!2003 = !{!"branch_weights", i32 267, i32 1928}
!2004 = !{!"branch_weights", i32 1870, i32 59}
!2005 = !{!"branch_weights", i32 3140, i32 1}
!2006 = !{!"branch_weights", i32 3117, i32 24}
!2007 = !{!"branch_weights", i32 1, i32 24}
!2008 = !{!"branch_weights", i32 3117, i32 1}
!2009 = !{!"branch_weights", i32 3102, i32 16}
!2010 = !{!"branch_weights", i32 1, i32 16}
!2011 = !{!"branch_weights", i32 -2050735311, i32 1285847}
!2012 = !{!"branch_weights", i32 5217, i32 21}
!2013 = !{!"branch_weights", i32 5217, i32 1}
!2014 = !{!"branch_weights", i32 5215, i32 3}
!2015 = !{!"branch_weights", i32 5215, i32 1}
!2016 = !{!"branch_weights", i32 97029, i32 1055449411}
!2017 = !{!"branch_weights", i32 32341, i32 292}
!2018 = !{!"branch_weights", i32 31284, i32 1058}
!2019 = !{!"branch_weights", i32 879, i32 180}
!2020 = !{!"branch_weights", i32 1, i32 879}
!2021 = !{!"branch_weights", i32 879, i32 1}
!2022 = !{!"branch_weights", i32 95607, i32 -276259043, i32 -276259043, i32 -276259043, i32 -276259043, i32 -276259043, i32 -276259043, i32 -276259043, i32 289468634, i32 -1045867995, i32 480044710}
!2023 = !{!"branch_weights", i32 101408, i32 227539481}
!2024 = !{!"branch_weights", i32 1, i32 71}
!2025 = !{!"branch_weights", i32 79723857, i32 74577788, i32 398636401, i32 398636401, i32 398636401, i32 398636401, i32 398636401}
!2026 = !{!"branch_weights", i32 1, i32 2421}
!2027 = !{!"branch_weights", i32 41, i32 2381}
!2028 = !{!"branch_weights", i32 2292, i32 90}
!2029 = !{!"branch_weights", i32 1852, i32 1010}
!2030 = !{!"branch_weights", i32 1789, i32 64}
!2031 = !{!"branch_weights", i32 957, i32 117}
!2032 = !{!"branch_weights", i32 956, i32 2}
!2033 = !{!"branch_weights", i32 815, i32 142}
!2034 = !{!"branch_weights", i32 318645078, i32 1828838570}
!2035 = !{!"branch_weights", i32 2007195758, i32 140287890}
!2036 = !{!"branch_weights", i32 2482, i32 2}
!2037 = !{!"branch_weights", i32 2349, i32 134}
!2038 = !{!"branch_weights", i32 11740, i32 39204}
!2039 = !{!"branch_weights", i32 1, i32 198}
!2040 = !{!"branch_weights", i32 30, i32 169}
!2041 = !{!"branch_weights", i32 1522, i32 8}
!2042 = !{!"branch_weights", i32 1261066, i32 2146222582}
!2043 = !{!"branch_weights", i32 2147305855, i32 177793}
!2044 = !{!"branch_weights", i32 17308, i32 17310}
!2045 = !{!"branch_weights", i32 17308, i32 1}
!2046 = !{!"branch_weights", i32 7, i32 17302}
!2047 = !{!"branch_weights", i32 16914, i32 395}
!2048 = !{!"branch_weights", i32 15, i32 381}
!2049 = !{!"branch_weights", i32 2197, i32 15112}
!2050 = !{!"branch_weights", i32 19, i32 15094}
!2051 = !{!"branch_weights", i32 14827, i32 286}
!2052 = !{!"branch_weights", i32 12, i32 275}
!2053 = !{!"branch_weights", i32 2144126222, i32 3357426}
!2054 = !{!"branch_weights", i32 1, i32 43718}
!2055 = !{!"branch_weights", i32 43626, i32 93}
!2056 = !{!"branch_weights", i32 15, i32 79}
!2057 = !{!"branch_weights", i32 1, i32 43704}
!2058 = !{!"branch_weights", i32 43598, i32 107}
!2059 = !{!"branch_weights", i32 1, i32 107}
!2060 = !{!"branch_weights", i32 28019, i32 15686}
!2061 = !{!"branch_weights", i32 1, i32 15686}
!2062 = !{!"branch_weights", i32 7454, i32 8233}
!2063 = !{!"branch_weights", i32 8118, i32 116}
!2064 = !{!"branch_weights", i32 169, i32 7401}
!2065 = !{!"branch_weights", i32 6664, i32 906}
!2066 = !{!"branch_weights", i32 9139, i32 34579}
!2067 = distinct !{!2067, !1060}
!2068 = !{!"branch_weights", i32 50, i32 2978}
!2069 = !{!"branch_weights", i32 10030, i32 23948}
!2070 = !{!"branch_weights", i32 1803, i32 8228}
!2071 = !{!"branch_weights", i32 2512225, i32 348919}
!2072 = !{!"branch_weights", i32 1558, i32 28}
!2073 = !{!"branch_weights", i32 30260, i32 2161}
!2074 = !{!"branch_weights", i32 27190, i32 3071}
!2075 = !{!"branch_weights", i32 739296100, i32 54381}
!2076 = !{!"branch_weights", i32 26945, i32 246}
!2077 = !{!"branch_weights", i32 25200400, i32 15062}
!2078 = !{!"branch_weights", i32 5020, i32 1}
!2079 = !{!"branch_weights", i32 5016, i32 5}
!2080 = !{!"branch_weights", i32 5005, i32 12}
!2081 = !{!"branch_weights", i32 5005, i32 1}
!2082 = !{!"branch_weights", i32 78, i32 4928}
!2083 = !{!"branch_weights", i32 99645, i32 2147384003}
!2084 = !{!"branch_weights", i32 1, i32 91956}
!2085 = !{!"branch_weights", i32 82256, i32 9701}
!2086 = !{!"branch_weights", i32 775313832, i32 25760904}
!2087 = !{!"branch_weights", i32 1, i32 82567}
!2088 = !{!"branch_weights", i32 72845, i32 9723}
!2089 = !{!"branch_weights", i32 6123, i32 3601}
!2090 = !{!"branch_weights", i32 44281, i32 32165}
!2091 = !{!"branch_weights", i32 44281, i32 1}
!2092 = !{!"branch_weights", i32 22388, i32 9778}
!2093 = !{!"branch_weights", i32 22388, i32 1}
!2094 = !{!"function_entry_count", i64 102659}
!2095 = !{!"tree-vrp.c:extract_range_from_unary_expr"}
!2096 = !{!"branch_weights", i32 1792, i32 311}
!2097 = !{!"branch_weights", i32 1, i32 311}
!2098 = !{!"branch_weights", i32 311, i32 1}
!2099 = !{!"branch_weights", i32 99891, i32 669}
!2100 = !{!"branch_weights", i32 1, i32 669}
!2101 = !{!"branch_weights", i32 1, i32 100559}
!2102 = !{!"branch_weights", i32 23144, i32 221413406, i32 2777475, i32 -867922261, i32 1003815484, i32 23144}
!2103 = !{!"branch_weights", i32 64420, i32 36140}
!2104 = !{!"branch_weights", i32 33487, i32 2654}
!2105 = !{!"branch_weights", i32 -1473610334, i32 855943445, i32 37559}
!2106 = !{!"branch_weights", i32 -1778370784, i32 148064302, i32 35472}
!2107 = !{!"branch_weights", i32 21425, i32 5538}
!2108 = !{!"branch_weights", i32 8308034, i32 155236}
!2109 = !{!"branch_weights", i32 21028, i32 5}
!2110 = !{!"branch_weights", i32 -2093305592, i32 63154}
!2111 = !{!"branch_weights", i32 43277, i32 26444}
!2112 = !{!"branch_weights", i32 24410, i32 18868}
!2113 = !{!"branch_weights", i32 50853, i32 1}
!2114 = !{!"branch_weights", i32 50822, i32 32}
!2115 = !{!"branch_weights", i32 50268, i32 555}
!2116 = !{!"branch_weights", i32 3395, i32 46874}
!2117 = !{!"branch_weights", i32 3263, i32 133}
!2118 = !{!"branch_weights", i32 702, i32 2562}
!2119 = !{!"branch_weights", i32 591, i32 636}
!2120 = !{!"branch_weights", i32 8, i32 5661, i32 64}
!2121 = !{!"branch_weights", i32 270, i32 360}
!2122 = !{!"branch_weights", i32 261, i32 10}
!2123 = !{!"branch_weights", i32 261, i32 1}
!2124 = !{!"branch_weights", i32 270, i32 1}
!2125 = !{!"branch_weights", i32 269, i32 2}
!2126 = !{!"branch_weights", i32 208, i32 62}
!2127 = !{!"branch_weights", i32 1, i32 62}
!2128 = !{!"branch_weights", i32 48, i32 313}
!2129 = !{!"branch_weights", i32 299, i32 15}
!2130 = !{!"branch_weights", i32 8, i32 1}
!2131 = !{!"branch_weights", i32 4096, i32 2465}
!2132 = !{!"branch_weights", i32 1, i32 8}
!2133 = !{!"branch_weights", i32 17, i32 64}
!2134 = !{!"function_entry_count", i64 122}
!2135 = !{!"tree-vrp.c:extract_range_from_cond_expr"}
!2136 = !{!"branch_weights", i32 123, i32 1}
!2137 = !{!"branch_weights", i32 114, i32 10}
!2138 = !{!"branch_weights", i32 1, i32 10}
!2139 = !{!"function_entry_count", i64 25424}
!2140 = !{!"tree-vrp.c:extract_range_from_comparison"}
!2141 = !{!"branch_weights", i32 24060, i32 1366}
!2142 = !{!"branch_weights", i32 21857, i32 1846832}
!2143 = !{!"branch_weights", i32 1, i32 1352}
!2144 = !{!"function_entry_count", i64 121780}
!2145 = !{!"tree-vrp.c:set_value_range_to_value"}
!2146 = !{!"branch_weights", i32 1, i32 121781}
!2147 = !{!"function_entry_count", i64 464691}
!2148 = !{!"tree-vrp.c:avoid_overflow_infinity"}
!2149 = !{!"branch_weights", i32 464692, i32 1}
!2150 = !{!"function_entry_count", i64 524410}
!2151 = !{!"tree-vrp.c:symbolic_range_p"}
!2152 = !{!"branch_weights", i32 41066, i32 483346}
!2153 = !{!"function_entry_count", i64 370272}
!2154 = !{!"tree-vrp.c:add_equivalence"}
!2155 = !{!"branch_weights", i32 349679, i32 20595}
!2156 = !{!"branch_weights", i32 6525, i32 363749}
!2157 = !{!"branch_weights", i32 234591, i32 129159}
!2158 = !{!"function_entry_count", i64 52379}
!2159 = !{!"tree-vrp.c:set_and_canonicalize_value_range"}
!2160 = !{!"branch_weights", i32 3603, i32 188777521}
!2161 = !{!"branch_weights", i32 52380, i32 1}
!2162 = !{!"branch_weights", i32 48049, i32 4332}
!2163 = !{!"branch_weights", i32 1254, i32 3079}
!2164 = !{!"branch_weights", i32 187494929, i32 1959988719}
!2165 = !{!"branch_weights", i32 588, i32 2840159}
!2166 = !{!"branch_weights", i32 588, i32 4235}
!2167 = !{!"branch_weights", i32 1, i32 588}
!2168 = !{!"branch_weights", i32 2, i32 587}
!2169 = !{!"branch_weights", i32 4671, i32 151}
!2170 = !{!"function_entry_count", i64 33928}
!2171 = !{!"tree-vrp.c:value_ranges_intersect_p"}
!2172 = !{!"branch_weights", i32 28019, i32 5911}
!2173 = !{!"function_entry_count", i64 803}
!2174 = !{!"tree-vrp.c:negative_overflow_infinity"}
!2175 = !{!"function_entry_count", i64 517317}
!2176 = !{!"tree-vrp.c:copy_value_range"}
!2177 = !{!"function_entry_count", i64 14455}
!2178 = !{!"tree-vrp.c:op_with_constant_singleton_value_range"}
!2179 = !{!"branch_weights", i32 9933, i32 4524}
!2180 = !{!"branch_weights", i32 9933, i32 1}
!2181 = !{!"branch_weights", i32 6696, i32 3238}
!2182 = !{!"branch_weights", i32 5653, i32 1044}
!2183 = !{!"branch_weights", i32 206, i32 839}
!2184 = !{!"tree-vrp.c:set_value_range_to_undefined"}
!2185 = !{!"function_entry_count", i64 21904}
!2186 = !{!"tree-vrp.c:range_is_null"}
!2187 = !{!"branch_weights", i32 1256, i32 20650}
!2188 = !{!"branch_weights", i32 950, i32 307}
!2189 = !{!"function_entry_count", i64 19}
!2190 = !{!"tree-vrp.c:set_value_range_to_null"}
!2191 = !{!"function_entry_count", i64 19922}
!2192 = !{!"tree-vrp.c:overflow_infinity_range_p"}
!2193 = !{!"branch_weights", i32 19916, i32 8}
!2194 = !{!"branch_weights", i32 19910, i32 7}
!2195 = !{!"function_entry_count", i64 24095}
!2196 = !{!"tree-vrp.c:set_value_range_to_truthvalue"}
!2197 = !{!"branch_weights", i32 20065, i32 4032}
!2198 = !{!"function_entry_count", i64 109317}
!2199 = !{!"tree-vrp.c:vrp_int_const_binop"}
!2200 = !{!"branch_weights", i32 43121, i32 66198}
!2201 = !{!"branch_weights", i32 35039, i32 57055, i32 22016}
!2202 = !{!"branch_weights", i32 11274, i32 10743}
!2203 = !{!"branch_weights", i32 48888, i32 17311}
!2204 = !{!"branch_weights", i32 1859420641, i32 86243}
!2205 = !{!"branch_weights", i32 39143, i32 3979}
!2206 = !{!"branch_weights", i32 2649, i32 1331}
!2207 = !{!"branch_weights", i32 2379, i32 271}
!2208 = !{!"branch_weights", i32 39413, i32 1331}
!2209 = !{!"branch_weights", i32 39143, i32 271}
!2210 = !{!"branch_weights", i32 1, i32 3979}
!2211 = !{!"branch_weights", i32 192082280, i32 -1724999239}
!2212 = !{!"branch_weights", i32 94, i32 183}
!2213 = !{!"branch_weights", i32 183, i32 1}
!2214 = !{!"branch_weights", i32 3798, i32 3931, i32 3931, i32 3931, i32 3931, i32 3931, i32 3931, i32 133}
!2215 = !{!"branch_weights", i32 26, i32 25}
!2216 = !{!"branch_weights", i32 1, i32 26}
!2217 = !{!"branch_weights", i32 95, i32 39}
!2218 = !{!"branch_weights", i32 1, i32 3573}
!2219 = !{!"branch_weights", i32 1, i32 3394}
!2220 = !{!"branch_weights", i32 0, i32 94022209, i32 312742, i32 410629739, i32 410629739, i32 410629739, i32 410629739, i32 410629739}
!2221 = !{!"branch_weights", i32 1, i32 212}
!2222 = !{!"branch_weights", i32 1, i32 116}
!2223 = !{!"branch_weights", i32 330, i32 328}
!2224 = !{!"branch_weights", i32 1, i32 3603}
!2225 = !{!"branch_weights", i32 1, i32 328}
!2226 = !{!"function_entry_count", i64 2674}
!2227 = !{!"tree-vrp.c:vrp_expr_computes_nonnegative"}
!2228 = !{!"branch_weights", i32 819, i32 1857}
!2229 = !{!"branch_weights", i32 819, i32 1}
!2230 = !{!"function_entry_count", i64 21512}
!2231 = !{!"tree-vrp.c:range_includes_zero_p"}
!2232 = !{!"branch_weights", i32 462809169, i32 21514, i32 21513}
!2233 = !{!"branch_weights", i32 21513, i32 1}
!2234 = !{i32 -2, i32 2}
!2235 = !{!"function_entry_count", i64 57}
!2236 = !{!"tree-vrp.c:abs_extent_range"}
!2237 = !{!"branch_weights", i32 58, i32 1}
!2238 = !{!"branch_weights", i32 202015, i32 3364}
!2239 = !{!"branch_weights", i32 56, i32 3}
!2240 = !{!"branch_weights", i32 9, i32 48}
!2241 = !{!"branch_weights", i32 385, i32 7}
!2242 = !{!"function_entry_count", i64 76392}
!2243 = !{!"tree-vrp.c:value_inside_range"}
!2244 = !{!"branch_weights", i32 -768113896, i32 173575544, i32 1956623150}
!2245 = !{!"branch_weights", i32 291, i32 47338}
!2246 = !{!"function_entry_count", i64 1388661}
!2247 = !{!"tree-vrp.c:vrp_meet"}
!2248 = !{!"branch_weights", i32 139177, i32 1249486}
!2249 = !{!"branch_weights", i32 7321, i32 -1245721174}
!2250 = !{!"branch_weights", i32 35279, i32 1214207}
!2251 = !{!"branch_weights", i32 -445571224, i32 869495258}
!2252 = !{!"branch_weights", i32 1546170240, i32 -204513405}
!2253 = !{!"branch_weights", i32 716555, i32 2232}
!2254 = !{!"branch_weights", i32 718926908, i32 -1980932584}
!2255 = !{!"branch_weights", i32 752431, i32 1569}
!2256 = !{!"branch_weights", i32 -1023185696, i32 59454706}
!2257 = !{!"branch_weights", i32 875903, i32 93171}
!2258 = !{!"branch_weights", i32 875903, i32 1}
!2259 = !{!"branch_weights", i32 87291, i32 5881}
!2260 = !{!"branch_weights", i32 87291, i32 1}
!2261 = !{!"branch_weights", i32 945470, i32 35333}
!2262 = !{!"branch_weights", i32 309733974, i32 259532100}
!2263 = !{!"branch_weights", i32 19224, i32 1}
!2264 = !{!"branch_weights", i32 219292, i32 4436}
!2265 = !{!"branch_weights", i32 210550, i32 8743}
!2266 = !{!"branch_weights", i32 209978, i32 573}
!2267 = !{!"branch_weights", i32 209976, i32 3}
!2268 = !{!"branch_weights", i32 209539, i32 438}
!2269 = !{!"branch_weights", i32 6317, i32 203223}
!2270 = !{!"branch_weights", i32 2867374, i32 -1719430171}
!2271 = !{!"branch_weights", i32 225, i32 1}
!2272 = !{!"branch_weights", i32 4436, i32 1}
!2273 = !{!"branch_weights", i32 12184, i32 995}
!2274 = !{!"branch_weights", i32 11805, i32 380}
!2275 = !{!"branch_weights", i32 6986, i32 4820}
!2276 = !{!"branch_weights", i32 788, i32 6199}
!2277 = !{!"branch_weights", i32 4587, i32 2400}
!2278 = !{!"branch_weights", i32 1268459, i32 2621161}
!2279 = !{!"branch_weights", i32 782, i32 1}
!2280 = !{!"branch_weights", i32 13227, i32 3657}
!2281 = !{!"branch_weights", i32 10115, i32 3113}
!2282 = !{!"branch_weights", i32 2498, i32 7618}
!2283 = !{!"branch_weights", i32 3113, i32 7618}
!2284 = !{!"branch_weights", i32 559, i32 2555}
!2285 = !{!"branch_weights", i32 4485, i32 568}
!2286 = !{!"branch_weights", i32 4237, i32 249}
!2287 = !{!"branch_weights", i32 1112, i32 3126}
!2288 = !{!"branch_weights", i32 249, i32 3126}
!2289 = !{!"branch_weights", i32 200, i32 50}
!2290 = !{!"branch_weights", i32 1154, i32 8}
!2291 = !{!"function_entry_count", i64 777501}
!2292 = !{!"tree-vrp.c:vrp_evaluate_conditional_warnv_with_ops"}
!2293 = !{!"branch_weights", i32 321880, i32 455623}
!2294 = !{!"branch_weights", i32 1888118, i32 871700595, i32 267839565, i32 -726151740, i32 1306169479, i32 7706}
!2295 = !{!"branch_weights", i32 321758, i32 455501}
!2296 = !{!"branch_weights", i32 1, i32 455501}
!2297 = !{!"branch_weights", i32 447762, i32 7740}
!2298 = !{!"branch_weights", i32 447731, i32 32}
!2299 = !{!"branch_weights", i32 53262, i32 394470}
!2300 = !{!"branch_weights", i32 25, i32 8}
!2301 = !{!"function_entry_count", i64 777257}
!2302 = !{!"tree-vrp.c:vrp_evaluate_conditional_warnv_with_ops_using_ranges"}
!2303 = !{!"branch_weights", i32 777184, i32 75}
!2304 = !{!"branch_weights", i32 94679, i32 682580}
!2305 = !{!"branch_weights", i32 2146119982, i32 1363666}
!2306 = !{!"branch_weights", i32 -655152106, i32 405274}
!2307 = !{!"branch_weights", i32 4575, i32 1201}
!2308 = !{!"function_entry_count", i64 53261}
!2309 = !{!"tree-vrp.c:compare_names"}
!2310 = !{!"branch_weights", i32 2, i32 53261}
!2311 = !{!"branch_weights", i32 41077, i32 12186}
!2312 = !{!"branch_weights", i32 42235, i32 11028}
!2313 = !{!"branch_weights", i32 53232, i32 31}
!2314 = !{!"branch_weights", i32 4456, i32 2744}
!2315 = !{!"branch_weights", i32 1, i32 53103}
!2316 = !{!"branch_weights", i32 1, i32 70533}
!2317 = !{!"branch_weights", i32 85732, i32 130}
!2318 = !{!"branch_weights", i32 391, i32 2}
!2319 = !{!"branch_weights", i32 130, i32 1}
!2320 = !{!"branch_weights", i32 70533, i32 15328}
!2321 = distinct !{!2321, !1060}
!2322 = !{!"branch_weights", i32 2143556105, i32 3927543}
!2323 = !{!"branch_weights", i32 1, i32 129}
!2324 = !{!"branch_weights", i32 53103, i32 17431}
!2325 = distinct !{!2325, !1060}
!2326 = !{!"function_entry_count", i64 394493}
!2327 = !{!"tree-vrp.c:compare_name_with_value"}
!2328 = !{!"branch_weights", i32 394494, i32 1}
!2329 = !{!"branch_weights", i32 369243, i32 25252}
!2330 = !{!"branch_weights", i32 1, i32 25251}
!2331 = !{!"branch_weights", i32 41983, i32 80}
!2332 = !{!"branch_weights", i32 321, i32 3}
!2333 = !{!"branch_weights", i32 79, i32 2}
!2334 = !{!"branch_weights", i32 2, i32 1}
!2335 = !{!"branch_weights", i32 25251, i32 16811}
!2336 = distinct !{!2336, !1060}
!2337 = !{!"branch_weights", i32 2140850431, i32 6633217}
!2338 = !{!"branch_weights", i32 2, i32 77}
!2339 = !{!"function_entry_count", i64 180478}
!2340 = !{!"tree-vrp.c:compare_ranges"}
!2341 = !{!"branch_weights", i32 -86169349, i32 1645132321, i32 1427492}
!2342 = !{!"branch_weights", i32 -1565348917, i32 659159875, i32 417996}
!2343 = !{!"branch_weights", i32 1081410585, i32 -805890526}
!2344 = !{!"branch_weights", i32 17000, i32 7722}
!2345 = !{!"branch_weights", i32 -1471551579, i32 -39419280}
!2346 = !{!"branch_weights", i32 529201033, i32 -1413141277}
!2347 = !{!"branch_weights", i32 6133, i32 10615}
!2348 = !{!"branch_weights", i32 199741470, i32 11926}
!2349 = !{!"branch_weights", i32 361, i32 16387}
!2350 = !{!"branch_weights", i32 97, i32 265}
!2351 = !{!"branch_weights", i32 37, i32 61}
!2352 = !{!"branch_weights", i32 1, i32 79764}
!2353 = !{!"branch_weights", i32 1219085056, i32 -358680872}
!2354 = !{!"branch_weights", i32 -1945806983, i32 1281351120, i32 953583117}
!2355 = !{!"branch_weights", i32 17957, i32 4340}
!2356 = !{!"branch_weights", i32 16791, i32 1167}
!2357 = !{!"branch_weights", i32 318725, i32 285192, i32 281098675}
!2358 = !{!"branch_weights", i32 17, i32 1}
!2359 = !{!"branch_weights", i32 1, i32 19}
!2360 = !{!"branch_weights", i32 18, i32 5489}
!2361 = !{!"branch_weights", i32 20, i32 5470}
!2362 = !{!"branch_weights", i32 32, i32 16562}
!2363 = !{!"branch_weights", i32 31, i32 2}
!2364 = !{!"branch_weights", i32 1685133, i32 2145798515}
!2365 = !{!"branch_weights", i32 11886, i32 4666}
!2366 = !{!"branch_weights", i32 10870, i32 1017}
!2367 = !{!"branch_weights", i32 37, i32 10834}
!2368 = !{!"branch_weights", i32 37, i32 1}
!2369 = !{!"branch_weights", i32 259037550, i32 6336}
!2370 = !{!"branch_weights", i32 4386834, i32 1407661920}
!2371 = !{!"branch_weights", i32 4230765, i32 -1105428482}
!2372 = !{!"branch_weights", i32 179, i32 1}
!2373 = !{!"branch_weights", i32 173, i32 7}
!2374 = !{!"branch_weights", i32 15081477, i32 -1532460033}
!2375 = !{!"branch_weights", i32 213, i32 7}
!2376 = !{!"branch_weights", i32 213, i32 1}
!2377 = !{!"function_entry_count", i64 1141121}
!2378 = !{!"tree-vrp.c:compare_range_with_value"}
!2379 = !{!"branch_weights", i32 -440248376, i32 -1179501305, i32 2412225, i32 387432629}
!2380 = !{!"branch_weights", i32 216862031, i32 -2002756902}
!2381 = !{!"branch_weights", i32 5781, i32 49101}
!2382 = !{!"branch_weights", i32 3882, i32 1900}
!2383 = !{!"branch_weights", i32 1, i32 597650}
!2384 = !{!"branch_weights", i32 844464965, i32 -1607347756, i32 -1174224989}
!2385 = !{!"branch_weights", i32 159438, i32 82003}
!2386 = !{!"branch_weights", i32 2445, i32 156994}
!2387 = !{!"branch_weights", i32 35262567, i32 -690474737}
!2388 = !{!"branch_weights", i32 327, i32 81677}
!2389 = !{!"branch_weights", i32 157, i32 81521}
!2390 = !{!"branch_weights", i32 1514, i32 278837}
!2391 = !{!"branch_weights", i32 2090, i32 276748}
!2392 = !{!"branch_weights", i32 122884, i32 153865}
!2393 = !{!"branch_weights", i32 3274, i32 119611}
!2394 = !{!"branch_weights", i32 -1576208297, i32 -1595211520}
!2395 = !{!"branch_weights", i32 967702, i32 168040898}
!2396 = !{!"branch_weights", i32 199731137, i32 -2037047827}
!2397 = !{!"branch_weights", i32 3290, i32 3}
!2398 = !{!"branch_weights", i32 31419473, i32 -2040288550}
!2399 = !{!"branch_weights", i32 472, i32 5}
!2400 = !{!"branch_weights", i32 500458761, i32 13239}
!2401 = !{!"branch_weights", i32 468521960, i32 -764377633}
!2402 = !{!"branch_weights", i32 4262, i32 166}
!2403 = !{!"branch_weights", i32 40580241, i32 -1679795077}
!2404 = !{!"branch_weights", i32 504, i32 5}
!2405 = !{!"function_entry_count", i64 757175}
!2406 = !{!"tree-vrp.c:usable_range_p"}
!2407 = !{!"branch_weights", i32 757176, i32 1}
!2408 = !{!"branch_weights", i32 755662, i32 1515}
!2409 = !{!"branch_weights", i32 -1722673449, i32 6798262}
!2410 = !{!"branch_weights", i32 742569, i32 14608}
!2411 = !{!"branch_weights", i32 -1580759180, i32 743287}
!2412 = !{!"function_entry_count", i64 592947}
!2413 = !{!"tree-vrp.c:get_vr_for_comparison"}
!2414 = !{!"function_entry_count", i64 497441}
!2415 = !{!"tree-vrp.c:vrp_operand_equal_p"}
!2416 = !{!"branch_weights", i32 431171, i32 66272}
!2417 = !{!"branch_weights", i32 -2098978304, i32 66272}
!2418 = !{!"branch_weights", i32 59663, i32 6610}
!2419 = !{!"branch_weights", i32 2833, i32 3778}
!2420 = !{!"function_entry_count", i64 195212}
!2421 = !{!"tree-vrp.c:vrp_bitmap_equal_p"}
!2422 = !{!"branch_weights", i32 117201, i32 78013}
!2423 = !{!"branch_weights", i32 -1251953212, i32 78013}
!2424 = !{!"function_entry_count", i64 693}
!2425 = !{!"tree-vrp.c:find_case_label_range"}
!2426 = !{!"branch_weights", i32 194990, i32 3570520}
!2427 = !{!"branch_weights", i32 616, i32 43}
!2428 = !{!"branch_weights", i32 1, i32 482}
!2429 = !{!"branch_weights", i32 176, i32 1560}
!2430 = !{!"branch_weights", i32 1375, i32 186}
!2431 = !{!"branch_weights", i32 482, i32 1253}
!2432 = distinct !{!2432, !1060}
!2433 = !{!"function_entry_count", i64 1386}
!2434 = !{!"tree-vrp.c:find_case_label_index"}
!2435 = !{!"branch_weights", i32 1, i32 618}
!2436 = !{!"branch_weights", i32 658, i32 2615}
!2437 = !{!"branch_weights", i32 1530, i32 1086}
!2438 = !{!"branch_weights", i32 866, i32 221}
!2439 = !{!"branch_weights", i32 112, i32 110}
!2440 = !{!"branch_weights", i32 618, i32 2654}
!2441 = distinct !{!2441, !1060}
!2442 = !{!"function_entry_count", i64 2143682}
!2443 = !{!"tree-vrp.c:gimple_phi_arg_edge"}
!2444 = !{!"function_entry_count", i64 374265}
!2445 = !{!"tree-vrp.c:loop_containing_stmt"}
!2446 = !{!"branch_weights", i32 1, i32 374266}
!2447 = !{!1211, !1029, i64 24}
!2448 = !{!"function_entry_count", i64 128218}
!2449 = !{!"tree-vrp.c:adjust_range_with_scev"}
!2450 = !{!"branch_weights", i32 24729, i32 103491}
!2451 = !{!"branch_weights", i32 103491, i32 1}
!2452 = !{!"branch_weights", i32 53269, i32 50223}
!2453 = !{!1303, !1026, i64 0}
!2454 = !{!"branch_weights", i32 1, i32 53269}
!2455 = !{!"branch_weights", i32 118, i32 53152}
!2456 = !{!"branch_weights", i32 362, i32 52791}
!2457 = !{!"branch_weights", i32 237, i32 52555}
!2458 = !{!"branch_weights", i32 40788, i32 11768}
!2459 = !{!"branch_weights", i32 1280423089, i32 179134704, i32 35783}
!2460 = !{!"branch_weights", i32 1, i32 35783}
!2461 = !{!"branch_weights", i32 96232, i32 1173443325, i32 99026569, i32 -1642036844}
!2462 = !{!"branch_weights", i32 4833, i32 8389}
!2463 = !{!"branch_weights", i32 1, i32 13221}
!2464 = !{!"branch_weights", i32 4294, i32 23275}
!2465 = !{!"branch_weights", i32 1, i32 4294}
!2466 = !{!"branch_weights", i32 4140, i32 155}
!2467 = !{!"branch_weights", i32 1, i32 23275}
!2468 = !{!"branch_weights", i32 21283, i32 1993}
!2469 = !{!"function_entry_count", i64 7796}
!2470 = !{!"tree-vrp.c:vrp_var_may_overflow"}
!2471 = !{!"branch_weights", i32 1, i32 7797}
!2472 = !{!"branch_weights", i32 976, i32 6822}
!2473 = !{!"branch_weights", i32 2960, i32 3863}
!2474 = !{!"branch_weights", i32 1, i32 2960}
!2475 = !{!"branch_weights", i32 2960, i32 1}
!2476 = !{!"function_entry_count", i64 110311}
!2477 = !{!"tree-vrp.c:instantiate_parameters"}
!2478 = !{!"function_entry_count", i64 56110}
!2479 = !{!"tree-vrp.c:valid_value_p"}
!2480 = !{!"branch_weights", i32 -1534601930, i32 1586727705, i32 852347, i32 77483}
!2481 = !{!"function_entry_count", i64 55513}
!2482 = !{!"tree-vrp.c:get_chrec_loop"}
!2483 = !{!"tree-vrp.c:block_before_loop"}
!2484 = !{!"branch_weights", i32 1, i32 110312}
!2485 = !{!"tree-vrp.c:get_loop"}
!2486 = !{!2487, !1029, i64 8}
!2487 = !{!"loops", !1026, i64 0, !1029, i64 8, !1029, i64 16, !1029, i64 24}
!2488 = !{!"function_entry_count", i64 62334}
!2489 = !{!"tree-vrp.c:VEC_loop_p_base_index"}
!2490 = !{!"tree-vrp.c:loop_outer"}
!2491 = !{!1303, !1029, i64 40}
!2492 = !{!"tree-vrp.c:VEC_loop_p_base_length"}
!2493 = !{!2494, !1026, i64 0}
!2494 = !{!"VEC_loop_p_base", !1026, i64 0, !1026, i64 4, !1027, i64 8}
!2495 = !{!"function_entry_count", i64 1367817}
!2496 = !{!"tree-vrp.c:vrp_fold_stmt"}
!2497 = !{!"branch_weights", i32 1364602, i32 3217}
!2498 = !{!"tree-vrp.c:check_all_array_refs"}
!2499 = distinct !{!2499, !1060}
!2500 = distinct !{!2500, !1060}
!2501 = !{!2502, !1029, i64 24}
!2502 = !{!"walk_stmt_info", !1209, i64 0, !1029, i64 24, !1029, i64 32, !1027, i64 40, !1027, i64 41, !1027, i64 42, !1027, i64 43, !1029, i64 48}
!2503 = distinct !{!2503, !1060}
!2504 = distinct !{!2504, !1060}
!2505 = !{!"tree-vrp.c:identify_jump_threads"}
!2506 = distinct !{!2506, !1060}
!2507 = !{!"branch_weights", i32 451301, i32 103364}
!2508 = !{!"branch_weights", i32 101651, i32 1714}
!2509 = !{!"branch_weights", i32 100923, i32 729}
!2510 = !{!"branch_weights", i32 10930, i32 89994}
!2511 = !{!"branch_weights", i32 4792, i32 85203}
!2512 = !{!"branch_weights", i32 47915, i32 37289}
!2513 = !{!"branch_weights", i32 9587, i32 54049}
!2514 = !{!"branch_weights", i32 1, i32 54049}
!2515 = !{!"branch_weights", i32 312, i32 63324}
!2516 = !{!"branch_weights", i32 4792, i32 58533}
!2517 = !{!"branch_weights", i32 58533, i32 1}
!2518 = !{!"branch_weights", i32 1, i32 63634}
!2519 = !{!"branch_weights", i32 164061, i32 14434}
!2520 = !{!"branch_weights", i32 63634, i32 114860}
!2521 = distinct !{!2521, !1060}
!2522 = distinct !{!2522, !1060}
!2523 = !{!"tree-vrp.c:fold_predicate_in"}
!2524 = !{!"branch_weights", i32 537546, i32 830273}
!2525 = !{!"branch_weights", i32 23690, i32 806584}
!2526 = !{!"branch_weights", i32 287493, i32 1056637}
!2527 = !{!"branch_weights", i32 307966, i32 3217}
!2528 = !{!"branch_weights", i32 3217, i32 1}
!2529 = !{!"branch_weights", i32 2967, i32 251}
!2530 = !{!"branch_weights", i32 2967, i32 1}
!2531 = !{!"branch_weights", i32 1939, i32 1029}
!2532 = !{!"branch_weights", i32 1, i32 1939}
!2533 = !{!"function_entry_count", i64 1364601}
!2534 = !{!"tree-vrp.c:simplify_stmt_using_ranges"}
!2535 = !{!"branch_weights", i32 534580, i32 830023}
!2536 = !{!"branch_weights", i32 801618, i32 15260, i32 5257, i32 12, i32 1948, i32 3061, i32 27, i32 2424, i32 389, i32 36}
!2537 = !{!"branch_weights", i32 7303, i32 18258}
!2538 = !{!"branch_weights", i32 4929, i32 13330}
!2539 = !{!"branch_weights", i32 10225, i32 3106}
!2540 = !{!"branch_weights", i32 1, i32 2812}
!2541 = !{!"branch_weights", i32 2812, i32 1}
!2542 = !{!"branch_weights", i32 1158, i32 1655}
!2543 = !{!"branch_weights", i32 36, i32 1}
!2544 = !{!"branch_weights", i32 1, i32 36}
!2545 = !{!"branch_weights", i32 1909357644, i32 -2071611078, i32 44619010}
!2546 = !{!"function_entry_count", i64 455875}
!2547 = !{!"tree-vrp.c:vrp_evaluate_conditional"}
!2548 = !{!"branch_weights", i32 1, i32 455876}
!2549 = !{!"branch_weights", i32 1596560, i32 -1431063497}
!2550 = !{!"branch_weights", i32 334950, i32 -661245222}
!2551 = !{!"branch_weights", i32 42, i32 1}
!2552 = !{!"branch_weights", i32 455623, i32 1}
!2553 = !{!"function_entry_count", i64 1028}
!2554 = !{!"tree-vrp.c:gimple_cond_make_false"}
!2555 = !{!"function_entry_count", i64 1938}
!2556 = !{!"tree-vrp.c:gimple_cond_make_true"}
!2557 = !{!"tree-vrp.c:gimple_has_location"}
!2558 = !{!"tree-vrp.c:gimple_location"}
!2559 = !{!"function_entry_count", i64 4132}
!2560 = !{!"tree-vrp.c:gimple_cond_set_lhs"}
!2561 = !{!"tree-vrp.c:gimple_cond_set_rhs"}
!2562 = !{!"function_entry_count", i64 11412}
!2563 = !{!"tree-vrp.c:gimple_set_op"}
!2564 = !{!"branch_weights", i32 1, i32 11413}
!2565 = !{!"branch_weights", i32 11413, i32 1}
!2566 = !{!"function_entry_count", i64 22454}
!2567 = !{!"tree-vrp.c:simplify_truth_ops_using_ranges"}
!2568 = !{!"branch_weights", i32 4931, i32 17525}
!2569 = !{!"branch_weights", i32 17525, i32 1}
!2570 = !{!"branch_weights", i32 13883, i32 3643}
!2571 = !{!"branch_weights", i32 1, i32 3643}
!2572 = !{!"branch_weights", i32 2862, i32 782}
!2573 = !{!"branch_weights", i32 128, i32 655}
!2574 = !{!"branch_weights", i32 12, i32 5574}
!2575 = !{!"branch_weights", i32 5046, i32 529}
!2576 = !{!"branch_weights", i32 191, i32 101569}
!2577 = !{!"branch_weights", i32 2, i32 528}
!2578 = !{!"branch_weights", i32 1, i32 2}
!2579 = !{!"branch_weights", i32 339, i32 191}
!2580 = !{!"branch_weights", i32 10, i32 5037}
!2581 = !{!"branch_weights", i32 4919, i32 119}
!2582 = !{!"branch_weights", i32 2, i32 118}
!2583 = !{!"branch_weights", i32 1, i32 118}
!2584 = !{!"branch_weights", i32 5575, i32 1}
!2585 = !{!"branch_weights", i32 471, i32 5105}
!2586 = !{!"branch_weights", i32 274, i32 198}
!2587 = !{!"branch_weights", i32 1, i32 274}
!2588 = !{!"branch_weights", i32 1, i32 1948, i32 3061, i32 27, i32 542}
!2589 = !{!"branch_weights", i32 377, i32 192}
!2590 = !{!"branch_weights", i32 291, i32 5094}
!2591 = !{!"function_entry_count", i64 1654}
!2592 = !{!"tree-vrp.c:simplify_div_or_mod_using_ranges"}
!2593 = !{!"branch_weights", i32 472, i32 1184}
!2594 = !{!"branch_weights", i32 1440, i32 84173}
!2595 = !{!"branch_weights", i32 8, i32 73}
!2596 = !{!"branch_weights", i32 293, i32 1363}
!2597 = !{!"branch_weights", i32 1, i32 1363}
!2598 = !{!"branch_weights", i32 1350, i32 14}
!2599 = !{!"function_entry_count", i64 35}
!2600 = !{!"tree-vrp.c:simplify_abs_using_ranges"}
!2601 = !{!"branch_weights", i32 73, i32 1296}
!2602 = !{!"function_entry_count", i64 284526}
!2603 = !{!"tree-vrp.c:simplify_cond_using_ranges"}
!2604 = !{!"branch_weights", i32 328048812, i32 -1837006848}
!2605 = !{!"branch_weights", i32 33485, i32 19}
!2606 = !{!"branch_weights", i32 -112754774, i32 340470603}
!2607 = !{!"branch_weights", i32 12611, i32 18355}
!2608 = !{!"branch_weights", i32 8581, i32 9775}
!2609 = !{!"branch_weights", i32 8446, i32 136}
!2610 = !{!"branch_weights", i32 136, i32 1}
!2611 = !{!"branch_weights", i32 7415, i32 1032}
!2612 = !{!"branch_weights", i32 1032, i32 1}
!2613 = !{!"tree-vrp.c:simplify_switch_using_ranges"}
!2614 = !{!"branch_weights", i32 1, i32 11420, i32 1}
!2615 = !{!"branch_weights", i32 339, i32 5372}
!2616 = !{!"branch_weights", i32 312, i32 28}
!2617 = !{!"branch_weights", i32 2106293036, i32 41190612}
!2618 = !{!"branch_weights", i32 59430, i32 28042}
!2619 = !{!"branch_weights", i32 85, i32 19}
!2620 = !{!"branch_weights", i32 205, i32 609}
!2621 = distinct !{!2621, !1060}
!2622 = !{!1214, !1029, i64 24}
!2623 = distinct !{!2623, !1060}
!2624 = !{!"branch_weights", i32 394, i32 155}
!2625 = !{!"branch_weights", i32 155, i32 1}
!2626 = !{!"branch_weights", i32 205, i32 891}
!2627 = distinct !{!2627, !1060}
!2628 = !{!"function_entry_count", i64 320765}
!2629 = !{!"tree-vrp.c:gimple_assign_lhs"}
!2630 = !{!"function_entry_count", i64 7812}
!2631 = !{!"tree-vrp.c:update_stmt"}
!2632 = !{!"branch_weights", i32 1, i32 7813}
!2633 = !{!"function_entry_count", i64 1362}
!2634 = !{!"tree-vrp.c:gimple_assign_set_rhs_code"}
!2635 = !{!"tree-vrp.c:gimple_assign_set_rhs1"}
!2636 = !{!"tree-vrp.c:gimple_assign_set_rhs2"}
!2637 = !{!"function_entry_count", i64 17025}
!2638 = !{!"tree-vrp.c:test_for_singularity"}
!2639 = !{!"branch_weights", i32 85027011, i32 84442720}
!2640 = !{!"branch_weights", i32 1468, i32 7075}
!2641 = !{!"branch_weights", i32 1468, i32 1}
!2642 = !{!"branch_weights", i32 1, i32 1468}
!2643 = !{!"branch_weights", i32 59912586, i32 7060}
!2644 = !{!"branch_weights", i32 7060, i32 1426}
!2645 = !{!"branch_weights", i32 7060, i32 1}
!2646 = !{!"branch_weights", i32 1, i32 7060}
!2647 = !{!"branch_weights", i32 2147357480, i32 126168}
!2648 = !{!"branch_weights", i32 2688, i32 14339}
!2649 = !{!"branch_weights", i32 2294, i32 14733}
!2650 = !{!"branch_weights", i32 15860, i32 1167}
!2651 = !{!"branch_weights", i32 1, i32 1167}
!2652 = !{!"function_entry_count", i64 1166}
!2653 = !{!"tree-vrp.c:gimple_cond_set_code"}
!2654 = !{!"function_entry_count", i64 154}
!2655 = !{!"tree-vrp.c:VEC_edge_heap_safe_push"}
!2656 = !{!"tree-vrp.c:VEC_switch_update_heap_safe_push"}
!2657 = !{!"tree-vrp.c:VEC_edge_heap_reserve"}
!2658 = !{!"branch_weights", i32 5, i32 151}
!2659 = !{!"tree-vrp.c:VEC_edge_base_quick_push"}
!2660 = !{!"tree-vrp.c:VEC_edge_base_space"}
!2661 = !{!"branch_weights", i32 1, i32 155}
!2662 = !{!1354, !1026, i64 4}
!2663 = !{!"tree-vrp.c:VEC_switch_update_heap_reserve"}
!2664 = !{!"branch_weights", i32 1, i32 103}
!2665 = !{!"tree-vrp.c:VEC_switch_update_base_quick_push"}
!2666 = !{i64 0, i64 8, !1032, i64 8, i64 8, !1032}
!2667 = !{!"tree-vrp.c:VEC_switch_update_base_space"}
!2668 = !{!1360, !1026, i64 4}
!2669 = !{!"tree-vrp.c:search_for_addr_array"}
!2670 = distinct !{!2670, !1060}
!2671 = !{!"tree-vrp.c:gimple_location_ptr"}
!2672 = !{!"tree-vrp.c:check_array_bounds"}
!2673 = !{!"tree-vrp.c:check_array_ref"}
!2674 = !{!"tree-vrp.c:handled_component_p"}
!2675 = !{!"tree-vrp.c:VEC_tree_heap_alloc"}
!2676 = !{!"function_entry_count", i64 103363}
!2677 = !{!"tree-vrp.c:gsi_last_bb"}
!2678 = !{!"function_entry_count", i64 413392}
!2679 = !{!"tree-vrp.c:simplify_stmt_for_jump_threading"}
!2680 = !{!"branch_weights", i32 144695, i32 268699}
!2681 = !{!"tree-vrp.c:gimple_seq_last"}
!2682 = !{!"branch_weights", i32 1, i32 103364}
!2683 = !{!1715, !1029, i64 8}
!2684 = !{!"tree-vrp.c:first_imm_use_stmt"}
!2685 = !{!2686, !1029, i64 8}
!2686 = !{!"immediate_use_iterator_d", !1029, i64 0, !1029, i64 8, !1531, i64 16, !1029, i64 48}
!2687 = !{!2686, !1029, i64 0}
!2688 = !{!"branch_weights", i32 224798, i32 90395}
!2689 = !{!"function_entry_count", i64 1769448}
!2690 = !{!"tree-vrp.c:end_imm_use_stmt_p"}
!2691 = !{!"function_entry_count", i64 569533}
!2692 = !{!"tree-vrp.c:first_imm_use_on_stmt"}
!2693 = !{!2686, !1029, i64 48}
!2694 = !{!"function_entry_count", i64 1893575}
!2695 = !{!"tree-vrp.c:end_imm_use_on_stmt_p"}
!2696 = !{!"function_entry_count", i64 662021}
!2697 = !{!"tree-vrp.c:set_ssa_use_from_ptr"}
!2698 = !{!"tree-vrp.c:next_imm_use_on_stmt"}
!2699 = !{!"branch_weights", i32 92489, i32 569534}
!2700 = !{!"tree-vrp.c:next_imm_use_stmt"}
!2701 = !{!2686, !1029, i64 24}
!2702 = !{!"branch_weights", i32 344737, i32 224798}
!2703 = !{!2686, !1029, i64 16}
!2704 = !{!"branch_weights", i32 1, i32 224798}
!2705 = !{!"tree-vrp.c:link_use_stmts_after"}
!2706 = !{!"branch_weights", i32 62010, i32 507525}
!2707 = !{!"branch_weights", i32 62009, i32 1}
!2708 = !{!"branch_weights", i32 70915, i32 408402}
!2709 = !{!"branch_weights", i32 417307, i32 62009}
!2710 = distinct !{!2710, !1060}
!2711 = !{!"branch_weights", i32 1, i32 507525}
!2712 = !{!"branch_weights", i32 507524, i32 1}
!2713 = !{!"branch_weights", i32 591108, i32 183264}
!2714 = !{!"branch_weights", i32 266847, i32 507524}
!2715 = distinct !{!2715, !1060}
!2716 = !{!"branch_weights", i32 224798, i32 344737}
!2717 = !{!"tree-vrp.c:move_use_after_head"}
!2718 = !{!"branch_weights", i32 569534, i32 92489}
!2719 = !{!"branch_weights", i32 86582, i32 5908}
!2720 = !{!"function_entry_count", i64 507524}
!2721 = !{!"tree-vrp.c:op_iter_init_use"}
!2722 = !{!"branch_weights", i32 -270254396, i32 15860}
!2723 = !{!"tree-vrp.c:gimple_vuse_op"}
!2724 = !{!1560, !1029, i64 32}
!2725 = !{!"function_entry_count", i64 1237461}
!2726 = !{!"tree-vrp.c:delink_imm_use"}
!2727 = !{!1531, !1029, i64 0}
!2728 = !{!"branch_weights", i32 1, i32 1237462}
!2729 = !{!"tree-vrp.c:link_imm_use_to_list"}
!2730 = !{!"tree-vrp.c:link_imm_use"}
!2731 = !{!"branch_weights", i32 1, i32 662022}
!2732 = !{!"tree-vrp.c:VEC_tree_heap_free"}
!2733 = !{!"tree-vrp.c:gimple_set_num_ops"}
