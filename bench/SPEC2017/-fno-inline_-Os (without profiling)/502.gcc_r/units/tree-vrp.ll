; ModuleID = 'tree-vrp.c'
source_filename = "tree-vrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.value_range_d = type { i32, ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
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
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
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
@.str = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s[\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"-INF(OVF)\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"-INF\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"+INF(OVF)\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"+INF\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"  EQUIVALENCES: { \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"} (%u elements)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"VARYING\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"INVALID RANGE\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@vr_value = internal unnamed_addr global ptr null, align 8
@.str.17 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Assertions to be inserted for \00", align 1
@asserts_for = internal unnamed_addr global ptr null, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c"\0A\09BB #%d\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"\0A\09EDGE %d->%d\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"\0A\09PREDICATE: \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.24 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"\0AASSERT_EXPRs to be inserted\0A\0A\00", align 1
@need_assert_for = internal unnamed_addr global ptr null, align 8
@.str.26 = private unnamed_addr constant [4 x i8] c"vrp\00", align 1
@pass_vrp = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.26, ptr @gate_vrp, ptr @execute_vrp, ptr null, ptr null, i32 0, i32 52, i32 32, i32 0, i32 0, i32 0, i32 2087 } }, align 8
@.str.27 = private unnamed_addr constant [11 x i8] c"tree-vrp.c\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [8 x i8] c"nonnull\00", align 1
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
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
define dso_local zeroext i8 @ssa_name_nonnegative_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @get_value_range(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.value_range_d, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !12
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
define internal fastcc ptr @get_value_range(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @vr_value, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !13
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %4
  %12 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #21
  %13 = load ptr, ptr @vr_value, align 8, !tbaa !12
  %14 = getelementptr inbounds ptr, ptr %13, i64 %7
  store ptr %12, ptr %14, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.value_range_d, ptr %12, i64 0, i32 3
  store ptr null, ptr %15, align 8, !tbaa !14
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 4294967296
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %11
  %22 = load i64, ptr %17, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 34
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !13
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %35 [
    i16 10, label %30
    i16 12, label %30
  ]

30:                                               ; preds = %25, %25
  %31 = tail call fastcc zeroext i8 @nonnull_arg_p(ptr noundef nonnull %17) #20, !range !15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %26, align 8, !tbaa !13
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
define internal fastcc i32 @compare_values(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store i8 0, ptr %3, align 1, !tbaa !13
  %4 = call fastcc i32 @compare_values_warnv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #20
  %5 = load i8, ptr %3, align 1, !tbaa !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #21
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %7
  br label %14

14:                                               ; preds = %13, %10, %2
  %15 = phi i32 [ %4, %10 ], [ -2, %13 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_value_range(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %0)
  br label %94

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 8, !tbaa !5
  switch i32 %9, label %92 [
    i32 0, label %10
    i32 1, label %12
    i32 2, label %12
    i32 3, label %90
  ]

10:                                               ; preds = %8
  %11 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 9, i64 1, ptr %0)
  br label %94

12:                                               ; preds = %8, %8
  %13 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = icmp eq i32 %9, 2
  %18 = select i1 %17, ptr @.str.3, ptr @.str.4
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #20
  %20 = load ptr, ptr %13, align 8, !tbaa !11
  %21 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %20) #20, !range !15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 9, i64 1, ptr %0)
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
  %35 = load ptr, ptr %13, align 8, !tbaa !11
  %36 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %35) #20, !range !15
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 4, i64 1, ptr %0)
  br label %42

40:                                               ; preds = %25, %34
  %41 = load ptr, ptr %13, align 8, !tbaa !11
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %41, i32 noundef 0) #21
  br label %42

42:                                               ; preds = %38, %40, %23
  %43 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0)
  %44 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !16
  %46 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %45) #20, !range !15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 9, i64 1, ptr %0)
  br label %64

50:                                               ; preds = %42
  %51 = load i64, ptr %16, align 8
  %52 = trunc i64 %51 to i32
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -6
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load ptr, ptr %44, align 8, !tbaa !16
  %58 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %57) #20, !range !15
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 4, i64 1, ptr %0)
  br label %64

62:                                               ; preds = %50, %56
  %63 = load ptr, ptr %44, align 8, !tbaa !16
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %63, i32 noundef 0) #21
  br label %64

64:                                               ; preds = %60, %62, %48
  %65 = tail call i32 @fputc(i32 93, ptr %0)
  %66 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !14
  %68 = icmp eq ptr %67, null
  br i1 %68, label %94, label %69

69:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %70 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 18, i64 1, ptr %0)
  %71 = load ptr, ptr %66, align 8, !tbaa !14
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %71, ptr noundef nonnull %4) #20
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !15
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %69, %74
  %75 = phi i32 [ %84, %74 ], [ 0, %69 ]
  %76 = load ptr, ptr @cfun, align 8, !tbaa !12
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !17
  %79 = getelementptr inbounds %struct.gimple_df, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !19
  %81 = load i32, ptr %4, align 4, !tbaa !23
  %82 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %80, i32 noundef %81) #20
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %82, i32 noundef 0) #21
  %83 = tail call i32 @fputc(i32 32, ptr %0)
  %84 = add i32 %75, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %85 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !15
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %74, !llvm.loop !24

87:                                               ; preds = %74, %69
  %88 = phi i32 [ 0, %69 ], [ %84, %74 ]
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %88) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  br label %94

90:                                               ; preds = %8
  %91 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 7, i64 1, ptr %0)
  br label %94

92:                                               ; preds = %8
  %93 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 13, i64 1, ptr %0)
  br label %94

94:                                               ; preds = %64, %87, %10, %90, %92, %6
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %3) #20, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !23
  %11 = icmp ne i32 %10, 1
  %12 = and i64 %7, 134217728
  %13 = icmp eq i64 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %0) #20, !range !15
  br label %17

17:                                               ; preds = %15, %6, %1
  %18 = phi i8 [ 0, %6 ], [ 0, %1 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_val_is_min(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = tail call fastcc ptr @vrp_val_min(ptr noundef %3) #20
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = icmp eq ptr %4, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0) #21
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %8, %1
  %13 = phi i8 [ 1, %1 ], [ 0, %6 ], [ %11, %8 ]
  ret i8 %13
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %3) #20, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !23
  %11 = icmp ne i32 %10, 1
  %12 = and i64 %7, 134217728
  %13 = icmp eq i64 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %0) #20, !range !15
  br label %17

17:                                               ; preds = %15, %6, %1
  %18 = phi i8 [ 0, %6 ], [ 0, %1 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_val_is_max(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = tail call fastcc ptr @vrp_val_max(ptr noundef %3) #20
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = icmp eq ptr %4, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0) #21
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %8, %1
  %13 = phi i8 [ 1, %1 ], [ 0, %6 ], [ %11, %8 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = load ptr, ptr %1, align 8, !tbaa !26
  store ptr %4, ptr %0, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !31
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !28
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !32
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !36
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !23
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !36
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !23
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !37

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !23
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !23
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !34
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !28
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !34
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !35
  store i64 %35, ptr %3, align 8, !tbaa !36
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !23
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !23
  %40 = load i32, ptr %23, align 8, !tbaa !34
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !34
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !38

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !39
  store ptr %44, ptr %0, align 8, !tbaa !28
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !32
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !23
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !36
  store i32 %16, ptr %1, align 4, !tbaa !23
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !36
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !36
  %6 = load i32, ptr %1, align 4, !tbaa !23
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_value_range(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !12
  tail call void @dump_value_range(ptr noundef %2, ptr noundef %0) #20
  %3 = load ptr, ptr @stderr, align 8, !tbaa !12
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_all_value_ranges(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @vr_value, align 8, !tbaa !12
  br label %11

11:                                               ; preds = %9, %29
  %12 = phi ptr [ %30, %29 ], [ %2, %9 ]
  %13 = phi ptr [ %31, %29 ], [ %10, %9 ]
  %14 = phi ptr [ %36, %29 ], [ %6, %9 ]
  %15 = phi i64 [ %32, %29 ], [ 0, %9 ]
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %11
  %20 = trunc i64 %15 to i32
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %14, i32 noundef %20) #20
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %21, i32 noundef 0) #21
  %22 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %0)
  %23 = load ptr, ptr @vr_value, align 8, !tbaa !12
  %24 = getelementptr inbounds ptr, ptr %23, i64 %15
  %25 = load ptr, ptr %24, align 8, !tbaa !12
  tail call void @dump_value_range(ptr noundef %0, ptr noundef %25) #20
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  %27 = load ptr, ptr @vr_value, align 8, !tbaa !12
  %28 = load ptr, ptr @cfun, align 8, !tbaa !12
  br label %29

29:                                               ; preds = %11, %19
  %30 = phi ptr [ %12, %11 ], [ %28, %19 ]
  %31 = phi ptr [ %13, %11 ], [ %27, %19 ]
  %32 = add nuw nsw i64 %15, 1
  %33 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !19
  %37 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %36) #20
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %11, label %40, !llvm.loop !40

40:                                               ; preds = %29, %1
  %41 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !41
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_all_value_ranges() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !12
  tail call void @dump_all_value_ranges(ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_asserts_for(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 30, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #21
  %4 = tail call i32 @fputc(i32 10, ptr %0)
  %5 = load ptr, ptr @asserts_for, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %2, %34
  %13 = phi ptr [ %46, %34 ], [ %10, %2 ]
  %14 = tail call i32 @fputc(i32 9, ptr %0)
  %15 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 2
  %16 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %15) #20
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %16, i32 noundef 0, i32 noundef 0) #21
  %17 = load ptr, ptr %13, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %19) #20
  %21 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %12
  %25 = load ptr, ptr %22, align 8, !tbaa !49
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !51
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !46
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %27, i32 noundef %31) #20
  %33 = load ptr, ptr %21, align 8, !tbaa !48
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %33, i32 noundef 0) #21
  br label %34

34:                                               ; preds = %24, %12
  %35 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #21
  %36 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !52
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !12
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %40) #20
  %42 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %43, i32 noundef 0) #21
  %44 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %0)
  %45 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %12, !llvm.loop !54

48:                                               ; preds = %34, %2
  %49 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: optsize
declare void @dump_edge_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_asserts_for(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !12
  tail call void @dump_asserts_for(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_all_asserts(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 30, i64 1, ptr %0)
  %5 = load ptr, ptr @need_assert_for, align 8, !tbaa !12
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %2) #20
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1, %8
  %9 = load ptr, ptr @cfun, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = load i32, ptr %2, align 4, !tbaa !23
  %15 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %13, i32 noundef %14) #20
  tail call void @dump_asserts_for(ptr noundef %0, ptr noundef %15) #20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #20
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8, !llvm.loop !58

18:                                               ; preds = %8, %1
  %19 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_all_asserts() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !12
  tail call void @dump_all_asserts(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_vrp() #9 {
  %1 = load i32, ptr @flag_tree_vrp, align 4, !tbaa !23
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_vrp() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  tail call void @loop_optimizer_init(i32 noundef 15) #21
  tail call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 2048) #21
  tail call void @scev_initialize() #21
  tail call fastcc void @insert_range_assertions() #20
  %3 = tail call fastcc ptr @VEC_edge_heap_alloc() #20
  store ptr %3, ptr @to_remove_edges, align 8, !tbaa !12
  %4 = tail call fastcc ptr @VEC_switch_update_heap_alloc() #20
  store ptr %4, ptr @to_update_switch_stmts, align 8, !tbaa !12
  tail call void @threadedge_initialize_values() #21
  tail call fastcc void @vrp_initialize() #20
  tail call void @ssa_propagate(ptr noundef nonnull @vrp_visit_stmt, ptr noundef nonnull @vrp_visit_phi_node) #21
  tail call fastcc void @vrp_finalize() #20
  tail call fastcc void @remove_range_assertions() #20
  tail call void @update_ssa(i32 noundef 2048) #21
  tail call fastcc void @finalize_jump_threads() #20
  %5 = load ptr, ptr @to_remove_edges, align 8
  %6 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %1) #20, !range !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %12, %0
  %9 = load ptr, ptr @to_update_switch_stmts, align 8
  %10 = call fastcc i32 @VEC_switch_update_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #20, !range !59
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %46, label %19

12:                                               ; preds = %0, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %0 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !12
  tail call void @remove_edge(ptr noundef %14) #21
  %15 = add nuw nsw i32 %13, 1
  %16 = load ptr, ptr @to_remove_edges, align 8
  %17 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %1) #20, !range !59
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %8, label %12, !llvm.loop !60

19:                                               ; preds = %8, %38
  %20 = phi i32 [ %42, %38 ], [ 0, %8 ]
  %21 = load ptr, ptr %2, align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.switch_update, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = getelementptr inbounds %struct.tree_vec, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !13
  %26 = sext i32 %25 to i64
  %27 = load ptr, ptr %21, align 8, !tbaa !63
  tail call fastcc void @gimple_switch_set_num_labels(ptr noundef %27, i32 noundef %25) #20
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %19, %29
  %30 = phi i64 [ %36, %29 ], [ 0, %19 ]
  %31 = load ptr, ptr %21, align 8, !tbaa !63
  %32 = trunc i64 %30 to i32
  %33 = load ptr, ptr %22, align 8, !tbaa !61
  %34 = getelementptr inbounds %struct.tree_vec, ptr %33, i64 0, i32 2, i64 %30
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  tail call fastcc void @gimple_switch_set_label(ptr noundef %31, i32 noundef %32, ptr noundef %35) #20
  %36 = add nuw i64 %30, 1
  %37 = icmp eq i64 %36, %26
  br i1 %37, label %38, label %29, !llvm.loop !64

38:                                               ; preds = %29, %19
  %39 = load ptr, ptr %21, align 8, !tbaa !63
  %40 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef %39) #20
  %41 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %42 = add nuw nsw i32 %20, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %43 = load ptr, ptr @to_update_switch_stmts, align 8
  %44 = call fastcc i32 @VEC_switch_update_base_iterate(ptr noundef %43, i32 noundef %42, ptr noundef nonnull %2) #20, !range !59
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %19, !llvm.loop !65

46:                                               ; preds = %38, %8
  %47 = load ptr, ptr @to_remove_edges, align 8
  %48 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %47) #20
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

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
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @nonnull_arg_p(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 34
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %10 [
    i16 10, label %11
    i16 12, label %11
  ]

10:                                               ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 318, ptr noundef nonnull @.str.28) #21
  br label %11

11:                                               ; preds = %5, %5, %10
  %12 = load ptr, ptr @cfun, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !66
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %62, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @current_function_decl, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.29, ptr noundef %21) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %62, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tree_list, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @current_function_decl, align 8, !tbaa !12
  %30 = getelementptr inbounds %struct.tree_decl_non_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %0
  %34 = or i1 %32, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %28, %35
  %36 = phi ptr [ %40, %35 ], [ %31, %28 ]
  %37 = phi i64 [ %39, %35 ], [ 1, %28 ]
  %38 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 1
  %39 = add i64 %37, 1
  %40 = load ptr, ptr %38, align 8, !tbaa !13
  %41 = icmp eq ptr %40, null
  %42 = icmp eq ptr %40, %0
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %35, !llvm.loop !67

44:                                               ; preds = %35, %28
  %45 = phi i64 [ 1, %28 ], [ %39, %35 ]
  %46 = phi i1 [ %33, %28 ], [ %42, %35 ]
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 344, ptr noundef nonnull @.str.28) #21
  %48 = load ptr, ptr %25, align 8, !tbaa !13
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi ptr [ %26, %44 ], [ %48, %47 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %56

52:                                               ; preds = %56
  %53 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56, !llvm.loop !68

56:                                               ; preds = %49, %52
  %57 = phi ptr [ %54, %52 ], [ %50, %49 ]
  %58 = getelementptr inbounds %struct.tree_list, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !13
  %60 = tail call i32 @compare_tree_int(ptr noundef %59, i64 noundef %45) #21
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %52

62:                                               ; preds = %56, %52, %49, %24, %16, %11
  %63 = phi i8 [ 1, %11 ], [ 0, %16 ], [ 1, %24 ], [ 0, %49 ], [ 1, %56 ], [ 0, %52 ]
  ret i8 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_nonnull(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @build_int_cst(ptr noundef %1, i64 noundef 0) #21
  %4 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 2, ptr noundef %3, ptr noundef %3, ptr noundef %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_varying(ptr nocapture noundef %0) unnamed_addr #0 {
  store i32 3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @bitmap_clear(ptr noundef nonnull %4) #21
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  store i32 %1, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  %11 = icmp ne ptr %4, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %14, ptr %8, align 8, !tbaa !14
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi ptr [ %14, %13 ], [ %9, %5 ]
  %17 = icmp eq ptr %16, %4
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  br i1 %11, label %19, label %23

19:                                               ; preds = %18
  %20 = load ptr, ptr %4, align 8, !tbaa !26
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

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
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compare_values_warnv(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %206, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %5, %130
  %8 = phi ptr [ %1, %5 ], [ %132, %130 ]
  %9 = phi ptr [ %0, %5 ], [ %131, %130 ]
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 10
  %16 = icmp eq i32 %14, 12
  %17 = or i1 %15, %16
  %18 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 10
  %24 = icmp eq i32 %22, 12
  %25 = or i1 %23, %24
  %26 = xor i1 %17, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1074, ptr noundef nonnull @.str.28) #21
  %28 = load ptr, ptr %10, align 8, !tbaa !13
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
  ]

37:                                               ; preds = %29, %29, %29
  %38 = load i64, ptr %32, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %138 [
    i16 141, label %40
    i16 63, label %40
    i16 64, label %40
  ]

40:                                               ; preds = %37, %37, %37
  %41 = icmp eq i32 %35, 141
  br i1 %41, label %60, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !13
  %45 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !13
  %47 = tail call i32 @tree_int_cst_sgn(ptr noundef %46) #21
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %46) #20, !range !15
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %206

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef %54, ptr noundef %46) #21
  %56 = icmp eq ptr %55, null
  br i1 %56, label %206, label %57

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
  br i1 %67, label %86, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !13
  %71 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !13
  %73 = tail call i32 @tree_int_cst_sgn(ptr noundef %72) #21
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %72) #20, !range !15
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %206

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !13
  %81 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef %80, ptr noundef %72) #21
  %82 = icmp eq ptr %81, null
  br i1 %82, label %206, label %83

83:                                               ; preds = %78
  %84 = icmp eq i32 %66, 64
  %85 = select i1 %84, i32 63, i32 64
  br label %86

86:                                               ; preds = %60, %68, %83
  %87 = phi ptr [ %70, %83 ], [ %70, %68 ], [ %32, %60 ]
  %88 = phi ptr [ %81, %83 ], [ %72, %68 ], [ null, %60 ]
  %89 = phi i32 [ %85, %83 ], [ %66, %68 ], [ 141, %60 ]
  %90 = icmp eq ptr %61, %87
  br i1 %90, label %91, label %206

91:                                               ; preds = %86
  %92 = icmp eq i32 %63, 141
  %93 = icmp eq i32 %89, 141
  %94 = and i1 %92, %93
  br i1 %94, label %206, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %10, align 8, !tbaa !13
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
  br i1 %108, label %109, label %206

109:                                              ; preds = %95
  br i1 %6, label %121, label %110

110:                                              ; preds = %109
  br i1 %92, label %115, label %111

111:                                              ; preds = %110
  %112 = load i64, ptr %9, align 8
  %113 = and i64 %112, 8388608
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %111, %110
  br i1 %93, label %120, label %116

116:                                              ; preds = %115
  %117 = load i64, ptr %32, align 8
  %118 = and i64 %117, 8388608
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116, %115
  store i8 1, ptr %2, align 1, !tbaa !13
  br label %121

121:                                              ; preds = %120, %116, %109
  br i1 %92, label %122, label %125

122:                                              ; preds = %121
  %123 = trunc i32 %89 to i16
  switch i16 %123, label %137 [
    i16 63, label %206
    i16 64, label %124
  ]

124:                                              ; preds = %122
  br label %206

125:                                              ; preds = %111, %121
  %126 = trunc i32 %63 to i16
  switch i16 %126, label %137 [
    i16 63, label %127
    i16 64, label %134
  ]

127:                                              ; preds = %125
  br i1 %93, label %206, label %128

128:                                              ; preds = %127
  %129 = trunc i32 %89 to i16
  switch i16 %129, label %137 [
    i16 63, label %130
    i16 64, label %206
  ]

130:                                              ; preds = %128, %135
  %131 = phi ptr [ %62, %128 ], [ %88, %135 ]
  %132 = phi ptr [ %88, %128 ], [ %62, %135 ]
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %206, label %7

134:                                              ; preds = %125
  br i1 %93, label %206, label %135

135:                                              ; preds = %134
  %136 = trunc i32 %89 to i16
  switch i16 %136, label %137 [
    i16 63, label %206
    i16 64, label %130
  ]

137:                                              ; preds = %128, %125, %135, %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1190, ptr noundef nonnull @.str.28) #21
  br label %138

138:                                              ; preds = %37, %29, %137
  %139 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %9) #21
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %206, label %141

141:                                              ; preds = %138
  %142 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %32) #21
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %206, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %10, align 8, !tbaa !13
  %146 = load i64, ptr %145, align 8
  %147 = trunc i64 %146 to i16
  switch i16 %147, label %148 [
    i16 10, label %179
    i16 12, label %179
  ]

148:                                              ; preds = %144
  %149 = load i64, ptr %9, align 8
  %150 = and i64 %149, 134217728
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i64, ptr %32, align 8
  %154 = and i64 %153, 134217728
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %177, label %156

156:                                              ; preds = %152, %148
  br i1 %6, label %158, label %157

157:                                              ; preds = %156
  store i8 1, ptr %2, align 1, !tbaa !13
  br label %158

158:                                              ; preds = %157, %156
  %159 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef nonnull %9) #20, !range !15
  %160 = icmp eq i8 %159, 0
  %161 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %32) #20, !range !15
  br i1 %160, label %165, label %162

162:                                              ; preds = %158
  %163 = add nsw i8 %161, -1
  %164 = sext i8 %163 to i32
  br label %206

165:                                              ; preds = %158
  %166 = icmp eq i8 %161, 0
  br i1 %166, label %167, label %206

167:                                              ; preds = %165
  %168 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef nonnull %9) #20, !range !15
  %169 = icmp eq i8 %168, 0
  %170 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %32) #20, !range !15
  br i1 %169, label %174, label %171

171:                                              ; preds = %167
  %172 = xor i8 %170, 1
  %173 = zext nneg i8 %172 to i32
  br label %206

174:                                              ; preds = %167
  %175 = icmp eq i8 %170, 0
  %176 = select i1 %175, i32 -2, i32 -1
  br label %206

177:                                              ; preds = %152
  %178 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %9, ptr noundef nonnull %32) #21
  br label %206

179:                                              ; preds = %144, %144
  %180 = icmp eq ptr %32, %9
  br i1 %180, label %206, label %181

181:                                              ; preds = %179
  %182 = tail call i32 @operand_equal_p(ptr noundef nonnull %9, ptr noundef %32, i32 noundef 0) #21
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %206

184:                                              ; preds = %181
  %185 = tail call fastcc i32 @operand_less_p(ptr noundef nonnull %9, ptr noundef %32) #20
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %206, label %187

187:                                              ; preds = %184
  %188 = tail call fastcc i32 @operand_less_p(ptr noundef %32, ptr noundef nonnull %9) #20
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %206, label %190

190:                                              ; preds = %187
  %191 = load i64, ptr %9, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 23
  br i1 %193, label %194, label %198

194:                                              ; preds = %190
  %195 = load i64, ptr %32, align 8
  %196 = and i64 %195, 65535
  %197 = icmp eq i64 %196, 23
  br i1 %197, label %205, label %198

198:                                              ; preds = %194, %190
  %199 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !12
  %200 = tail call ptr @fold_binary_to_constant(i32 noundef 102, ptr noundef %199, ptr noundef nonnull %9, ptr noundef %32) #21
  %201 = icmp eq ptr %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = tail call i32 @integer_onep(ptr noundef nonnull %200) #21
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %198, %202, %194
  br label %206

206:                                              ; preds = %130, %49, %52, %75, %78, %86, %91, %95, %127, %128, %134, %135, %3, %122, %124, %205, %181, %179, %184, %187, %202, %174, %165, %138, %141, %177, %171, %162
  %207 = phi i32 [ %164, %162 ], [ %173, %171 ], [ %178, %177 ], [ -2, %141 ], [ -2, %138 ], [ 1, %165 ], [ %176, %174 ], [ -2, %205 ], [ 0, %181 ], [ 0, %179 ], [ -1, %184 ], [ 1, %187 ], [ 2, %202 ], [ -1, %122 ], [ 1, %124 ], [ 0, %3 ], [ 0, %130 ], [ -2, %49 ], [ -2, %52 ], [ -2, %75 ], [ -2, %78 ], [ -2, %86 ], [ 0, %91 ], [ -2, %95 ], [ 1, %127 ], [ 1, %128 ], [ -1, %134 ], [ -1, %135 ]
  ret i32 %207
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_unary_to_constant(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @operand_less_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 23
  br i1 %5, label %6, label %39

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 2097152
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !13
  br i1 %15, label %31, label %22

22:                                               ; preds = %10
  %23 = icmp ult i64 %18, %21
  br i1 %23, label %64, label %24

24:                                               ; preds = %22
  %25 = icmp eq i64 %18, %21
  br i1 %25, label %26, label %64

26:                                               ; preds = %24
  %27 = load i64, ptr %16, align 8, !tbaa !13
  %28 = load i64, ptr %19, align 8, !tbaa !13
  %29 = icmp ult i64 %27, %28
  %30 = zext i1 %29 to i32
  br label %64

31:                                               ; preds = %10
  %32 = icmp slt i64 %18, %21
  br i1 %32, label %64, label %33

33:                                               ; preds = %31
  %34 = icmp eq i64 %18, %21
  br i1 %34, label %35, label %50

35:                                               ; preds = %33
  %36 = load i64, ptr %16, align 8, !tbaa !13
  %37 = load i64, ptr %19, align 8, !tbaa !13
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %64, label %50

39:                                               ; preds = %6, %2
  tail call void @fold_defer_overflow_warnings() #21
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !12
  %41 = tail call ptr @fold_binary_to_constant(i32 noundef 97, ptr noundef %40, ptr noundef nonnull %0, ptr noundef %1) #21
  tail call void @fold_undefer_and_ignore_overflow_warnings() #21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = load i64, ptr %41, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 23
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = tail call i32 @integer_zerop(ptr noundef nonnull %41) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %47, %35, %33
  %51 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef nonnull %0) #20, !range !15
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %1) #20, !range !15
  %55 = xor i8 %54, 1
  %56 = zext nneg i8 %55 to i32
  br label %64

57:                                               ; preds = %50
  %58 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %1) #20, !range !15
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef nonnull %0) #20, !range !15
  %62 = xor i8 %61, 1
  %63 = zext nneg i8 %62 to i32
  br label %64

64:                                               ; preds = %39, %43, %57, %47, %31, %35, %22, %26, %24, %60, %53
  %65 = phi i32 [ %56, %53 ], [ %63, %60 ], [ 1, %47 ], [ 1, %22 ], [ 0, %24 ], [ %30, %26 ], [ 1, %35 ], [ 1, %31 ], [ 0, %57 ], [ -2, %43 ], [ -2, %39 ]
  ret i32 %65
}

; Function Attrs: optsize
declare ptr @fold_binary_to_constant(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #3

; Function Attrs: optsize
declare void @fold_undefer_and_ignore_overflow_warnings() local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @needs_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %14

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @vrp_val_min(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @vrp_val_max(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rewrite_into_loop_closed_ssa(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @scev_initialize() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_range_assertions() unnamed_addr #0 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %1, ptr @need_assert_for, align 8, !tbaa !12
  %2 = load ptr, ptr @cfun, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #20
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #21
  store ptr %9, ptr @asserts_for, align 8, !tbaa !12
  tail call void @calculate_dominance_info(i32 noundef 1) #21
  %10 = tail call fastcc zeroext i8 @find_assert_locations() #20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  tail call fastcc void @process_assert_insertions() #20
  tail call void @update_ssa(i32 noundef 4096) #21
  br label %13

13:                                               ; preds = %12, %0
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 39, i64 1, ptr nonnull %14)
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !12
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !23
  tail call void @dump_function_to_file(ptr noundef %22, ptr noundef %23, i32 noundef %24) #21
  br label %25

25:                                               ; preds = %20, %16, %13
  %26 = load ptr, ptr @asserts_for, align 8, !tbaa !12
  tail call void @free(ptr noundef %26) #20
  %27 = load ptr, ptr @need_assert_for, align 8, !tbaa !12
  tail call void @bitmap_obstack_free(ptr noundef %27) #21
  store ptr null, ptr @need_assert_for, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_edge_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_switch_update_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 5, i64 noundef 8, i64 noundef 16) #21
  ret ptr %1
}

; Function Attrs: optsize
declare void @threadedge_initialize_values() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vrp_initialize() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #20
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #21
  store ptr %11, ptr @vr_value, align 8, !tbaa !12
  %12 = load ptr, ptr @cfun, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.gimple_df, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !19
  %17 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %16) #20
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @xcalloc(i64 noundef %18, i64 noundef 4) #21
  store ptr %19, ptr @vr_phi_edge_counts, align 8, !tbaa !12
  %20 = load ptr, ptr @cfun, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !69
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %80, label %29

29:                                               ; preds = %0, %71
  %30 = phi ptr [ %73, %71 ], [ %25, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %30) #21
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %29, %41
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %35 = call fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %34) #20, !range !15
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41

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
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %45, !llvm.loop !74

45:                                               ; preds = %41, %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %30) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  %46 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %45, %68
  %49 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %50 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %49) #21
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  call fastcc void @prop_set_simulate_again(ptr noundef %49, i8 noundef zeroext 1) #20
  br label %68

53:                                               ; preds = %48
  %54 = call fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %49) #20, !range !15
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %57 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %49, i32 noundef 2) #20
  %58 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56, %60
  %61 = phi ptr [ %63, %60 ], [ %57, %56 ]
  %62 = call fastcc ptr @get_value_range(ptr noundef %61) #20
  call fastcc void @set_value_range_to_varying(ptr noundef %62) #20
  %63 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #20
  %64 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %60, label %66, !llvm.loop !76

66:                                               ; preds = %60, %56
  call fastcc void @prop_set_simulate_again(ptr noundef %49, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  br label %68

67:                                               ; preds = %53
  call fastcc void @prop_set_simulate_again(ptr noundef %49, i8 noundef zeroext 1) #20
  br label %68

68:                                               ; preds = %66, %67, %52
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  %69 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %48, label %71, !llvm.loop !77

71:                                               ; preds = %68, %45
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !72
  %74 = load ptr, ptr @cfun, align 8, !tbaa !12
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !69
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !73
  %79 = icmp eq ptr %73, %78
  br i1 %79, label %80, label %29, !llvm.loop !78

80:                                               ; preds = %71, %0
  ret void
}

; Function Attrs: optsize
declare void @ssa_propagate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vrp_visit_stmt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 21, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !23
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef %14) #21
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %11, %7, %3
  %18 = tail call fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %0) #20, !range !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 6101, ptr noundef nonnull @.str.28) #21
  br label %53

24:                                               ; preds = %17
  %25 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %27, %24
  %31 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %38 = getelementptr inbounds %struct.tree_decl_minimal, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !13
  %40 = icmp ult i32 %39, 2
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %33, %30
  %42 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41, %36
  %45 = tail call fastcc i32 @vrp_visit_assignment_or_call(ptr noundef %0, ptr noundef %2) #20, !range !79
  br label %63

46:                                               ; preds = %27
  %47 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %48 = trunc i32 %47 to i8
  switch i8 %48, label %53 [
    i8 1, label %49
    i8 5, label %51
  ]

49:                                               ; preds = %46
  %50 = tail call fastcc i32 @vrp_visit_cond_stmt(ptr noundef %0, ptr noundef %1) #20, !range !81
  br label %63

51:                                               ; preds = %46
  %52 = tail call fastcc i32 @vrp_visit_switch_stmt(ptr noundef %0, ptr noundef %1) #20, !range !81
  br label %63

53:                                               ; preds = %46, %23, %20, %41
  %54 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 2) #20
  %55 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53, %57
  %58 = phi ptr [ %60, %57 ], [ %54, %53 ]
  %59 = tail call fastcc ptr @get_value_range(ptr noundef %58) #20
  tail call fastcc void @set_value_range_to_varying(ptr noundef %59) #20
  %60 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #20
  %61 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %57, label %63, !llvm.loop !82

63:                                               ; preds = %57, %53, %51, %49, %44
  %64 = phi i32 [ %45, %44 ], [ %50, %49 ], [ %52, %51 ], [ 2, %53 ], [ 2, %57 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  ret i32 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vrp_visit_phi_node(ptr noundef %0) #0 {
  %2 = alloca %struct.value_range_d, align 8
  %3 = alloca %struct.value_range_d, align 8
  %4 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #20
  %5 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %4) #20
  %6 = tail call fastcc ptr @get_value_range(ptr noundef %5) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call fastcc void @copy_value_range(ptr noundef nonnull %2, ptr noundef %6) #20
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 20, i64 1, ptr nonnull %7)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !23
  tail call void @print_gimple_stmt(ptr noundef %15, ptr noundef %0, i32 noundef 0, i32 noundef %16) #21
  br label %17

17:                                               ; preds = %13, %9, %1
  %18 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %99, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 1
  %22 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 2
  %23 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 3
  br label %24

24:                                               ; preds = %20, %93
  %25 = phi i64 [ 0, %20 ], [ %95, %93 ]
  %26 = phi i32 [ 0, %20 ], [ %94, %93 ]
  %27 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %25) #20
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %24
  %31 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  %35 = trunc i64 %25 to i32
  %36 = load ptr, ptr %27, align 8, !tbaa !49
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !51
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !46
  %43 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !83
  %45 = and i32 %44, 4096
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.50, ptr @.str.4
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.49, i32 noundef %35, i32 noundef %38, i32 noundef %42, ptr noundef nonnull %47) #20
  br label %49

49:                                               ; preds = %34, %30, %24
  %50 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !83
  %52 = and i32 %51, 4096
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %93, label %54

54:                                               ; preds = %49
  %55 = trunc i64 %25 to i32
  %56 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %55) #20
  %57 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %56) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %58 = add nsw i32 %26, 1
  %59 = load i64, ptr %57, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = call fastcc ptr @get_value_range(ptr noundef nonnull %57) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %63, i64 32, i1 false), !tbaa.struct !84
  br label %73

64:                                               ; preds = %54
  %65 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %57) #20, !range !15
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = call ptr @copy_node_stat(ptr noundef nonnull %57) #21
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, -134217729
  store i64 %70, ptr %68, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi ptr [ %68, %67 ], [ %57, %64 ]
  store i32 1, ptr %3, align 8, !tbaa !5
  store ptr %72, ptr %21, align 8, !tbaa !11
  store ptr %72, ptr %22, align 8, !tbaa !16
  store ptr null, ptr %23, align 8, !tbaa !14
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi ptr [ %57, %62 ], [ %72, %71 ]
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %77

77:                                               ; preds = %73
  %78 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = call i32 @fputc(i32 9, ptr nonnull %75)
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %84 = load i32, ptr @dump_flags, align 4, !tbaa !23
  call void @print_generic_expr(ptr noundef %83, ptr noundef nonnull %74, i32 noundef %84) #21
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %86 = call i64 @fwrite(ptr nonnull @.str.51, i64 9, i64 1, ptr %85)
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !12
  call void @dump_value_range(ptr noundef %87, ptr noundef nonnull %3) #20
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %89 = call i32 @fputc(i32 10, ptr %88)
  br label %90

90:                                               ; preds = %81, %77, %73
  call fastcc void @vrp_meet(ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %91 = load i32, ptr %2, align 8, !tbaa !5
  %92 = icmp eq i32 %91, 3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  br i1 %92, label %99, label %93

93:                                               ; preds = %90, %49
  %94 = phi i32 [ %58, %90 ], [ %26, %49 ]
  %95 = add nuw nsw i64 %25, 1
  %96 = call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %97 = zext i32 %96 to i64
  %98 = icmp ult i64 %95, %97
  br i1 %98, label %24, label %99, !llvm.loop !85

99:                                               ; preds = %93, %90, %17
  %100 = phi i32 [ 0, %17 ], [ %58, %90 ], [ %94, %93 ]
  %101 = load ptr, ptr @cfun, align 8, !tbaa !12
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !86
  %104 = icmp eq ptr %103, null
  br i1 %104, label %114, label %105

105:                                              ; preds = %99
  %106 = call fastcc ptr @loop_containing_stmt(ptr noundef %0) #20
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.loop, ptr %106, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !87
  %111 = call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  call fastcc void @adjust_range_with_scev(ptr noundef nonnull %2, ptr noundef nonnull %106, ptr noundef %0, ptr noundef %5) #20
  br label %114

114:                                              ; preds = %113, %108, %105, %99
  %115 = load i32, ptr %2, align 8
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %211, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr @vr_phi_edge_counts, align 8, !tbaa !12
  %119 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 3
  %120 = load i32, ptr %119, align 8, !tbaa !13
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, ptr %118, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !23
  store i32 %100, ptr %122, align 4, !tbaa !23
  %124 = load i32, ptr %6, align 8, !tbaa !5
  %125 = icmp ne i32 %124, 1
  %126 = icmp ne i32 %115, 1
  %127 = or i1 %126, %125
  %128 = icmp sgt i32 %100, %123
  %129 = select i1 %127, i1 true, i1 %128
  br i1 %129, label %208, label %130

130:                                              ; preds = %117
  %131 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !13
  %133 = load i64, ptr %132, align 8
  %134 = trunc i64 %133 to i16
  switch i16 %134, label %135 [
    i16 10, label %208
    i16 12, label %208
  ]

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !11
  %138 = getelementptr inbounds %struct.value_range_d, ptr %2, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !11
  %140 = call fastcc i32 @compare_values(ptr noundef %137, ptr noundef %139) #20
  %141 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !16
  %143 = getelementptr inbounds %struct.value_range_d, ptr %2, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !16
  %145 = call fastcc i32 @compare_values(ptr noundef %142, ptr noundef %144) #20
  %146 = icmp eq i32 %140, 0
  br i1 %146, label %176, label %147

147:                                              ; preds = %135
  %148 = call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %144) #20, !range !15
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %211

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !13
  %153 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 13
  %154 = load ptr, ptr %153, align 8, !tbaa !13
  %155 = call fastcc i32 @compare_values(ptr noundef %154, ptr noundef %144) #20
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %211, label %157

157:                                              ; preds = %150
  %158 = load ptr, ptr %151, align 8, !tbaa !13
  %159 = call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %158) #20, !range !15
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = call fastcc zeroext i8 @vrp_var_may_overflow(ptr noundef nonnull %5, ptr noundef %0) #20, !range !15
  %163 = icmp eq i8 %162, 0
  %164 = load ptr, ptr %151, align 8, !tbaa !13
  br i1 %163, label %165, label %169

165:                                              ; preds = %161, %157
  %166 = phi ptr [ %164, %161 ], [ %158, %157 ]
  %167 = getelementptr inbounds %struct.tree_type, ptr %166, i64 0, i32 13
  %168 = load ptr, ptr %167, align 8, !tbaa !13
  br label %174

169:                                              ; preds = %161
  %170 = call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %164) #20, !range !15
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %211, label %172

172:                                              ; preds = %169
  %173 = call fastcc ptr @negative_overflow_infinity(ptr noundef %164) #20
  br label %174

174:                                              ; preds = %172, %165
  %175 = phi ptr [ %168, %165 ], [ %173, %172 ]
  store ptr %175, ptr %138, align 8, !tbaa !11
  br label %176

176:                                              ; preds = %174, %135
  %177 = phi ptr [ %139, %135 ], [ %175, %174 ]
  %178 = icmp eq i32 %145, 0
  br i1 %178, label %208, label %179

179:                                              ; preds = %176
  %180 = call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %177) #20, !range !15
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !13
  %185 = getelementptr inbounds %struct.tree_type, ptr %184, i64 0, i32 14
  %186 = load ptr, ptr %185, align 8, !tbaa !13
  %187 = call fastcc i32 @compare_values(ptr noundef %186, ptr noundef %177) #20
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %211, label %189

189:                                              ; preds = %182
  %190 = load ptr, ptr %183, align 8, !tbaa !13
  %191 = call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %190) #20, !range !15
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = call fastcc zeroext i8 @vrp_var_may_overflow(ptr noundef nonnull %5, ptr noundef %0) #20, !range !15
  %195 = icmp eq i8 %194, 0
  %196 = load ptr, ptr %183, align 8, !tbaa !13
  br i1 %195, label %197, label %201

197:                                              ; preds = %193, %189
  %198 = phi ptr [ %196, %193 ], [ %190, %189 ]
  %199 = getelementptr inbounds %struct.tree_type, ptr %198, i64 0, i32 14
  %200 = load ptr, ptr %199, align 8, !tbaa !13
  br label %206

201:                                              ; preds = %193
  %202 = call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %196) #20, !range !15
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %201
  %205 = call fastcc ptr @positive_overflow_infinity(ptr noundef %196) #20
  br label %206

206:                                              ; preds = %204, %197
  %207 = phi ptr [ %200, %197 ], [ %205, %204 ]
  store ptr %207, ptr %143, align 8, !tbaa !16
  br label %208

208:                                              ; preds = %206, %176, %130, %130, %117
  %209 = call fastcc zeroext i8 @update_value_range(ptr noundef nonnull %5, ptr noundef nonnull %2) #20, !range !15
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
define internal fastcc void @vrp_finalize() unnamed_addr #0 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 26, i64 1, ptr nonnull %1)
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @dump_all_value_ranges(ptr noundef %5) #20
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %7 = tail call i32 @fputc(i32 10, ptr %6)
  br label %8

8:                                                ; preds = %3, %0
  %9 = load ptr, ptr @cfun, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #20
  %15 = zext i32 %14 to i64
  %16 = tail call ptr @xcalloc(i64 noundef %15, i64 noundef 16) #21
  %17 = load ptr, ptr @cfun, align 8, !tbaa !12
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  %22 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %21) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %66, label %24

24:                                               ; preds = %8
  %25 = load ptr, ptr @vr_value, align 8, !tbaa !12
  br label %26

26:                                               ; preds = %24, %52
  %27 = phi ptr [ %53, %52 ], [ %25, %24 ]
  %28 = phi i8 [ %54, %52 ], [ 0, %24 ]
  %29 = phi i64 [ %55, %52 ], [ 0, %24 ]
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %52, label %33

33:                                               ; preds = %26
  %34 = load i32, ptr %31, align 8, !tbaa !5
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.value_range_d, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !11
  %39 = getelementptr inbounds %struct.value_range_d, ptr %31, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !16
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %38) #21
  %44 = icmp eq i8 %43, 0
  %45 = load ptr, ptr @vr_value, align 8, !tbaa !12
  br i1 %44, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds ptr, ptr %45, i64 %29
  %48 = load ptr, ptr %47, align 8, !tbaa !12
  %49 = getelementptr inbounds %struct.value_range_d, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.prop_value_d, ptr %16, i64 %29, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !91
  br label %52

52:                                               ; preds = %26, %33, %36, %42, %46
  %53 = phi ptr [ %45, %46 ], [ %45, %42 ], [ %27, %36 ], [ %27, %33 ], [ %27, %26 ]
  %54 = phi i8 [ 1, %46 ], [ %28, %42 ], [ %28, %36 ], [ %28, %33 ], [ %28, %26 ]
  %55 = add nuw nsw i64 %29, 1
  %56 = load ptr, ptr @cfun, align 8, !tbaa !12
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !17
  %59 = getelementptr inbounds %struct.gimple_df, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !19
  %61 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %60) #20
  %62 = zext i32 %61 to i64
  %63 = icmp ult i64 %55, %62
  br i1 %63, label %26, label %64, !llvm.loop !93

64:                                               ; preds = %52
  %65 = icmp eq i8 %54, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %8, %64
  tail call void @free(ptr noundef %16) #20
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi ptr [ %16, %64 ], [ null, %66 ]
  %69 = tail call zeroext i8 @substitute_and_fold(ptr noundef %68, ptr noundef nonnull @vrp_fold_stmt) #21
  %70 = load i32, ptr @warn_array_bounds, align 4, !tbaa !23
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call fastcc void @check_all_array_refs() #20
  br label %73

73:                                               ; preds = %72, %67
  tail call fastcc void @identify_jump_threads() #20
  %74 = load ptr, ptr @cfun, align 8, !tbaa !12
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !17
  %77 = getelementptr inbounds %struct.gimple_df, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !19
  %79 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %78) #20
  %80 = icmp eq i32 %79, 0
  %81 = load ptr, ptr @vr_value, align 8, !tbaa !12
  br i1 %80, label %109, label %82

82:                                               ; preds = %73, %98
  %83 = phi ptr [ %99, %98 ], [ %74, %73 ]
  %84 = phi ptr [ %100, %98 ], [ %81, %73 ]
  %85 = phi i64 [ %101, %98 ], [ 0, %73 ]
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !12
  %88 = icmp eq ptr %87, null
  br i1 %88, label %98, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.value_range_d, ptr %87, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !14
  tail call void @bitmap_obstack_free(ptr noundef %91) #21
  %92 = load ptr, ptr @vr_value, align 8, !tbaa !12
  %93 = getelementptr inbounds ptr, ptr %92, i64 %85
  %94 = load ptr, ptr %93, align 8, !tbaa !12
  %95 = getelementptr inbounds %struct.value_range_d, ptr %94, i64 0, i32 3
  store ptr null, ptr %95, align 8, !tbaa !14
  %96 = load ptr, ptr %93, align 8, !tbaa !12
  tail call void @free(ptr noundef %96) #20
  %97 = load ptr, ptr @cfun, align 8, !tbaa !12
  br label %98

98:                                               ; preds = %82, %89
  %99 = phi ptr [ %83, %82 ], [ %97, %89 ]
  %100 = phi ptr [ %84, %82 ], [ %92, %89 ]
  %101 = add nuw nsw i64 %85, 1
  %102 = getelementptr inbounds %struct.function, ptr %99, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !17
  %104 = getelementptr inbounds %struct.gimple_df, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !19
  %106 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %105) #20
  %107 = zext i32 %106 to i64
  %108 = icmp ult i64 %101, %107
  br i1 %108, label %82, label %109, !llvm.loop !94

109:                                              ; preds = %98, %73
  %110 = phi ptr [ %81, %73 ], [ %100, %98 ]
  tail call void @free(ptr noundef %68) #20
  tail call void @free(ptr noundef %110) #20
  %111 = load ptr, ptr @vr_phi_edge_counts, align 8, !tbaa !12
  tail call void @free(ptr noundef %111) #20
  store ptr null, ptr @vr_value, align 8, !tbaa !12
  store ptr null, ptr @vr_phi_edge_counts, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_range_assertions() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %69, label %22

13:                                               ; preds = %66, %22
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load ptr, ptr @cfun, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %69, label %22, !llvm.loop !95

22:                                               ; preds = %0, %13
  %23 = phi ptr [ %15, %13 ], [ %9, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %23) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !75
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  %24 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %13

26:                                               ; preds = %22, %66
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %28 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %27) #20, !range !15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %26
  %31 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %27) #20, !range !96
  %32 = icmp eq i32 %31, 148
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %27) #20
  %35 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %36 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  %38 = call ptr @fold(ptr noundef %37) #21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !12
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 5249, ptr noundef nonnull @.str.28) #21
  br label %42

42:                                               ; preds = %33, %41
  %43 = load ptr, ptr %35, align 8, !tbaa !13
  %44 = call fastcc ptr @gimple_assign_lhs(ptr noundef %27) #20
  call fastcc void @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %44) #20
  %45 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #20, !range !15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42, %61
  %48 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #20
  %49 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #20, !range !15
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47, %57
  %52 = phi ptr [ %58, %57 ], [ %48, %47 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %52, ptr noundef %43) #20
  %53 = load i64, ptr %43, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 5258, ptr noundef nonnull @.str.28) #21
  br label %57

57:                                               ; preds = %51, %56
  %58 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #20
  %59 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #20, !range !15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %51, label %61, !llvm.loop !97

61:                                               ; preds = %57, %47
  call fastcc void @next_imm_use_stmt(ptr noundef nonnull %3) #20
  %62 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #20, !range !15
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %47, label %64, !llvm.loop !98

64:                                               ; preds = %61, %42
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #21
  call void @release_defs(ptr noundef %27) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #22
  br label %66

65:                                               ; preds = %30, %26
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  br label %66

66:                                               ; preds = %65, %64
  %67 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !15
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %26, label %13, !llvm.loop !99

69:                                               ; preds = %13, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_jump_threads() unnamed_addr #0 {
  %1 = tail call zeroext i8 @thread_through_all_blocks(i8 noundef zeroext 0) #21
  tail call fastcc void @VEC_tree_heap_free() #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !100
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !12
  ret i32 %14
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_switch_update_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !102
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_switch_update_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !12
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_switch_set_num_labels(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = add i32 %1, 1
  tail call fastcc void @gimple_set_num_ops(ptr noundef %0, i32 noundef %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_switch_set_label(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %5 = add i32 %1, 1
  %6 = icmp ugt i32 %4, %5
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3225, ptr noundef nonnull @.str.28) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = icmp eq ptr %2, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %8
  %11 = load i64, ptr %2, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 139
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3226, ptr noundef nonnull @.str.28) #21
  br label %15

15:                                               ; preds = %8, %10, %14
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %5, ptr noundef %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_default_label(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !100
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free() unnamed_addr #11 {
  %1 = load ptr, ptr @to_remove_edges, align 8, !tbaa !12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @to_remove_edges, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_switch_update_heap_free() unnamed_addr #11 {
  %1 = load ptr, ptr @to_update_switch_stmts, align 8, !tbaa !12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @to_update_switch_stmts, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @threadedge_finalize_values() local_unnamed_addr #3

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #3

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #3

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_assert_locations() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = add nsw i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !104
  %16 = add nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = tail call ptr @xcalloc(i64 noundef %17, i64 noundef 4) #21
  %19 = load ptr, ptr @cfun, align 8, !tbaa !12
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !104
  %24 = add nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @xcalloc(i64 noundef %25, i64 noundef 4) #21
  %27 = load ptr, ptr @cfun, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !69
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !104
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = tail call ptr @xcalloc(i64 noundef %33, i64 noundef 8) #21
  store ptr %34, ptr @live, align 8, !tbaa !12
  %35 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %10, i8 noundef zeroext 0) #21
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %206

37:                                               ; preds = %0
  %38 = zext nneg i32 %35 to i64
  br label %43

39:                                               ; preds = %43
  br i1 %36, label %40, label %206

40:                                               ; preds = %39
  %41 = getelementptr inbounds i8, ptr %2, i64 8
  %42 = zext nneg i32 %35 to i64
  br label %52

43:                                               ; preds = %37, %43
  %44 = phi i64 [ 0, %37 ], [ %50, %43 ]
  %45 = getelementptr inbounds i32, ptr %10, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !23
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %18, i64 %47
  %49 = trunc i64 %44 to i32
  store i32 %49, ptr %48, align 4, !tbaa !23
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %38
  br i1 %51, label %39, label %43, !llvm.loop !105

52:                                               ; preds = %40, %204
  %53 = phi i64 [ %42, %40 ], [ %55, %204 ]
  %54 = phi i8 [ 0, %40 ], [ %88, %204 ]
  %55 = add nsw i64 %53, -1
  %56 = load ptr, ptr @cfun, align 8, !tbaa !12
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !69
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !106
  %61 = getelementptr inbounds i32, ptr %10, i64 %55
  %62 = load i32, ptr %61, align 4, !tbaa !23
  %63 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %60, i32 noundef %62) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %64 = load ptr, ptr @live, align 8, !tbaa !12
  %65 = sext i32 %62 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !12
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !17
  %72 = getelementptr inbounds %struct.gimple_df, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !19
  %74 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %73) #20
  %75 = tail call ptr @sbitmap_alloc(i32 noundef %74) #21
  %76 = load ptr, ptr @live, align 8, !tbaa !12
  %77 = load i32, ptr %61, align 4, !tbaa !23
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78
  store ptr %75, ptr %79, align 8, !tbaa !12
  tail call void @sbitmap_zero(ptr noundef %75) #21
  %80 = load ptr, ptr @live, align 8, !tbaa !12
  %81 = load i32, ptr %61, align 4, !tbaa !23
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !12
  br label %85

85:                                               ; preds = %69, %52
  %86 = phi ptr [ %84, %69 ], [ %67, %52 ]
  %87 = tail call fastcc zeroext i8 @find_assert_locations_1(ptr noundef %63, ptr noundef %86) #20
  %88 = or i8 %87, %54
  %89 = load ptr, ptr @live, align 8, !tbaa !12
  %90 = load i32, ptr %61, align 4, !tbaa !23
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %89, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !12
  %94 = tail call zeroext i8 @sbitmap_empty_p(ptr noundef %93) #21
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %151

96:                                               ; preds = %85
  %97 = tail call fastcc ptr @ei_start_1(ptr noundef %63) #20
  store i32 0, ptr %2, align 8, !tbaa.struct !107
  store ptr %97, ptr %41, align 8, !tbaa.struct !108
  %98 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %97, ptr noundef nonnull %1) #20, !range !15
  %99 = icmp eq i8 %98, 0
  %100 = trunc i64 %55 to i32
  br i1 %99, label %146, label %101

101:                                              ; preds = %96, %140
  %102 = phi i32 [ %141, %140 ], [ %100, %96 ]
  %103 = load ptr, ptr %1, align 8, !tbaa !12
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !83
  %106 = and i32 %105, 32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %101
  %109 = load ptr, ptr %103, align 8, !tbaa !49
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !46
  %112 = load ptr, ptr @live, align 8, !tbaa !12
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds ptr, ptr %112, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !12
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %130

117:                                              ; preds = %108
  %118 = load ptr, ptr @cfun, align 8, !tbaa !12
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !17
  %121 = getelementptr inbounds %struct.gimple_df, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !19
  %123 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %122) #20
  %124 = tail call ptr @sbitmap_alloc(i32 noundef %123) #21
  %125 = load ptr, ptr @live, align 8, !tbaa !12
  %126 = getelementptr inbounds ptr, ptr %125, i64 %113
  store ptr %124, ptr %126, align 8, !tbaa !12
  tail call void @sbitmap_zero(ptr noundef %124) #21
  %127 = load ptr, ptr @live, align 8, !tbaa !12
  %128 = getelementptr inbounds ptr, ptr %127, i64 %113
  %129 = load ptr, ptr %128, align 8, !tbaa !12
  br label %130

130:                                              ; preds = %117, %108
  %131 = phi ptr [ %129, %117 ], [ %115, %108 ]
  %132 = phi ptr [ %127, %117 ], [ %112, %108 ]
  %133 = load i32, ptr %61, align 4, !tbaa !23
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %132, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !12
  tail call void @sbitmap_a_or_b(ptr noundef %131, ptr noundef %131, ptr noundef %136) #21
  %137 = getelementptr inbounds i32, ptr %18, i64 %113
  %138 = load i32, ptr %137, align 4, !tbaa !23
  %139 = tail call i32 @llvm.smin.i32(i32 %138, i32 %102)
  br label %140

140:                                              ; preds = %101, %130
  %141 = phi i32 [ %139, %130 ], [ %102, %101 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %142 = load i32, ptr %2, align 8
  %143 = load ptr, ptr %41, align 8
  %144 = call fastcc zeroext i8 @ei_cond(i32 %142, ptr %143, ptr noundef nonnull %1) #20, !range !15
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %101, !llvm.loop !109

146:                                              ; preds = %140, %96
  %147 = phi i32 [ %100, %96 ], [ %141, %140 ]
  %148 = load i32, ptr %61, align 4, !tbaa !23
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, ptr %26, i64 %149
  store i32 %147, ptr %150, align 4, !tbaa !23
  br label %165

151:                                              ; preds = %85
  %152 = load ptr, ptr @live, align 8, !tbaa !12
  %153 = load i32, ptr %61, align 4, !tbaa !23
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %152, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !12
  %157 = load ptr, ptr %156, align 8, !tbaa !110
  tail call void @free(ptr noundef %157) #20
  %158 = load i32, ptr %61, align 4, !tbaa !23
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %152, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !12
  tail call void @free(ptr noundef %161) #20
  %162 = load i32, ptr %61, align 4, !tbaa !23
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %152, i64 %163
  store ptr null, ptr %164, align 8, !tbaa !12
  br label %165

165:                                              ; preds = %151, %146
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 1
  %167 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %166) #20
  store i32 0, ptr %2, align 8, !tbaa.struct !107
  store ptr %167, ptr %41, align 8, !tbaa.struct !108
  %168 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %167, ptr noundef nonnull %1) #20, !range !15
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %204, label %170

170:                                              ; preds = %165, %199
  %171 = load ptr, ptr %1, align 8, !tbaa !12
  %172 = getelementptr inbounds %struct.edge_def, ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !51
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %173, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !46
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, ptr %26, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !23
  %179 = zext i32 %178 to i64
  %180 = icmp eq i64 %55, %179
  br i1 %180, label %181, label %199

181:                                              ; preds = %170
  %182 = load ptr, ptr @live, align 8, !tbaa !12
  %183 = getelementptr inbounds ptr, ptr %182, i64 %176
  %184 = load ptr, ptr %183, align 8, !tbaa !12
  %185 = icmp eq ptr %184, null
  br i1 %185, label %199, label %186

186:                                              ; preds = %181
  %187 = load ptr, ptr %184, align 8, !tbaa !110
  tail call void @free(ptr noundef %187) #20
  %188 = load ptr, ptr %172, align 8, !tbaa !51
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %188, i64 0, i32 9
  %190 = load i32, ptr %189, align 8, !tbaa !46
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds ptr, ptr %182, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !12
  tail call void @free(ptr noundef %193) #20
  %194 = load ptr, ptr %172, align 8, !tbaa !51
  %195 = getelementptr inbounds %struct.basic_block_def, ptr %194, i64 0, i32 9
  %196 = load i32, ptr %195, align 8, !tbaa !46
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %182, i64 %197
  store ptr null, ptr %198, align 8, !tbaa !12
  br label %199

199:                                              ; preds = %170, %181, %186
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %200 = load i32, ptr %2, align 8
  %201 = load ptr, ptr %41, align 8
  %202 = call fastcc zeroext i8 @ei_cond(i32 %200, ptr %201, ptr noundef nonnull %1) #20, !range !15
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %170, !llvm.loop !112

204:                                              ; preds = %199, %165
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  %205 = icmp sgt i64 %53, 1
  br i1 %205, label %52, label %206, !llvm.loop !113

206:                                              ; preds = %204, %0, %39
  %207 = phi i8 [ 0, %39 ], [ 0, %0 ], [ %88, %204 ]
  tail call void @free(ptr noundef %10) #20
  tail call void @free(ptr noundef %18) #20
  tail call void @free(ptr noundef %26) #20
  %208 = load ptr, ptr @cfun, align 8, !tbaa !12
  %209 = getelementptr inbounds %struct.function, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !69
  %211 = getelementptr inbounds %struct.control_flow_graph, ptr %210, i64 0, i32 5
  %212 = load i32, ptr %211, align 8, !tbaa !104
  %213 = icmp sgt i32 %212, -2
  %214 = load ptr, ptr @live, align 8, !tbaa !12
  br i1 %213, label %215, label %234

215:                                              ; preds = %206, %225
  %216 = phi ptr [ %226, %225 ], [ %208, %206 ]
  %217 = phi i64 [ %227, %225 ], [ 0, %206 ]
  %218 = getelementptr inbounds ptr, ptr %214, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !12
  %220 = icmp eq ptr %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = load ptr, ptr %219, align 8, !tbaa !110
  tail call void @free(ptr noundef %222) #20
  %223 = load ptr, ptr %218, align 8, !tbaa !12
  tail call void @free(ptr noundef %223) #20
  %224 = load ptr, ptr @cfun, align 8, !tbaa !12
  br label %225

225:                                              ; preds = %215, %221
  %226 = phi ptr [ %216, %215 ], [ %224, %221 ]
  %227 = add nuw nsw i64 %217, 1
  %228 = getelementptr inbounds %struct.function, ptr %226, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !69
  %230 = getelementptr inbounds %struct.control_flow_graph, ptr %229, i64 0, i32 5
  %231 = load i32, ptr %230, align 8, !tbaa !104
  %232 = sext i32 %231 to i64
  %233 = icmp sgt i64 %217, %232
  br i1 %233, label %234, label %215, !llvm.loop !114

234:                                              ; preds = %225, %206
  tail call void @free(ptr noundef %214) #20
  ret i8 %207
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_assert_insertions() unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @dump_all_asserts(ptr noundef nonnull %3) #20
  br label %10

10:                                               ; preds = %9, %5, %0
  %11 = load ptr, ptr @need_assert_for, align 8, !tbaa !12
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %11, ptr noundef nonnull %1) #20
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %10, %40
  %15 = phi i8 [ %42, %40 ], [ 0, %10 ]
  %16 = phi i32 [ %41, %40 ], [ 0, %10 ]
  %17 = load ptr, ptr @asserts_for, align 8, !tbaa !12
  %18 = load i32, ptr %1, align 4, !tbaa !23
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 4926, ptr noundef nonnull @.str.28) #21
  br label %40

24:                                               ; preds = %14, %24
  %25 = phi i8 [ %37, %24 ], [ %15, %14 ]
  %26 = phi ptr [ %29, %24 ], [ %21, %14 ]
  %27 = phi i32 [ %38, %24 ], [ %16, %14 ]
  %28 = getelementptr inbounds %struct.assert_locus_d, ptr %26, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  %30 = load ptr, ptr @cfun, align 8, !tbaa !12
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !17
  %33 = getelementptr inbounds %struct.gimple_df, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !19
  %35 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %34, i32 noundef %18) #20
  %36 = tail call fastcc zeroext i8 @process_assert_insertions_for(ptr noundef %35, ptr noundef nonnull %26) #20, !range !15
  %37 = or i8 %36, %25
  tail call void @free(ptr noundef nonnull %26) #20
  %38 = add nsw i32 %27, 1
  %39 = icmp eq ptr %29, null
  br i1 %39, label %40, label %24, !llvm.loop !116

40:                                               ; preds = %24, %23
  %41 = phi i32 [ %16, %23 ], [ %38, %24 ]
  %42 = phi i8 [ %15, %23 ], [ %37, %24 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #20
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %14, !llvm.loop !117

45:                                               ; preds = %40
  %46 = icmp eq i8 %42, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %45
  tail call void @gsi_commit_edge_inserts() #21
  br label %48

48:                                               ; preds = %10, %47, %45
  %49 = phi i32 [ %41, %47 ], [ %41, %45 ], [ 0, %10 ]
  %50 = load ptr, ptr @cfun, align 8, !tbaa !12
  tail call void @statistics_counter_event(ptr noundef %50, ptr noundef nonnull @.str.36, i32 noundef %49) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_assert_locations_1(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %8 = tail call ptr @last_stmt(ptr noundef %0) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #20, !range !80
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = tail call fastcc zeroext i8 @fp_predicate(ptr noundef nonnull %8) #20, !range !15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @zero_ssa_operands(ptr noundef nonnull %8) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @find_conditional_asserts(ptr noundef %0, ptr noundef nonnull %8) #20, !range !15
  br label %21

21:                                               ; preds = %19, %16, %13, %10
  %22 = phi i8 [ 0, %10 ], [ %20, %19 ], [ 0, %16 ], [ 0, %13 ]
  %23 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #20, !range !80
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = tail call fastcc zeroext i8 @zero_ssa_operands(ptr noundef nonnull %8) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @find_switch_asserts(ptr noundef %0, ptr noundef nonnull %8) #20, !range !15
  %30 = or i8 %29, %22
  br label %31

31:                                               ; preds = %2, %28, %25, %21
  %32 = phi i8 [ %22, %25 ], [ %30, %28 ], [ %22, %21 ], [ 0, %2 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #20
  %33 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !15
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %113

35:                                               ; preds = %31, %109
  %36 = phi i8 [ %110, %109 ], [ %32, %31 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %37 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %38 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %37) #20, !range !15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %109

40:                                               ; preds = %35
  %41 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %37, i32 noundef 1) #20
  %42 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %109

44:                                               ; preds = %40, %104
  %45 = phi i8 [ %105, %104 ], [ %36, %40 ]
  %46 = phi ptr [ %106, %104 ], [ %41, %40 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !13
  tail call fastcc void @SET_BIT(ptr noundef %1, i32 noundef %48) #20
  %49 = call fastcc zeroext i8 @infer_value_range(ptr noundef %37, ptr noundef %46, ptr noundef nonnull %6, ptr noundef nonnull %5) #20, !range !15
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %104, label %51

51:                                               ; preds = %44
  %52 = load i32, ptr %6, align 4, !tbaa !23
  %53 = icmp eq i32 %52, 102
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = load ptr, ptr %5, align 8, !tbaa !12
  %56 = tail call i32 @integer_zerop(ptr noundef %55) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %98, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !13
  %61 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %60) #20, !range !15
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %98, label %63

63:                                               ; preds = %58, %94
  %64 = phi i8 [ %95, %94 ], [ %45, %58 ]
  %65 = phi ptr [ %90, %94 ], [ %60, %58 ]
  %66 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %65) #20, !range !96
  %67 = icmp eq i32 %66, 116
  br i1 %67, label %68, label %98

68:                                               ; preds = %63
  %69 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 141
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !13
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 10
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !13
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 12
  br i1 %86, label %87, label %98

87:                                               ; preds = %73, %80
  %88 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %89 = getelementptr inbounds %struct.tree_ssa_name, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !13
  %91 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %88) #20
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  tail call fastcc void @register_new_assert_for(ptr noundef nonnull %88, ptr noundef nonnull %88, i32 noundef 102, ptr noundef %55, ptr noundef %0, ptr noundef null, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  br label %94

94:                                               ; preds = %93, %87
  %95 = phi i8 [ %64, %87 ], [ 1, %93 ]
  %96 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %90) #20, !range !15
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %63, !llvm.loop !118

98:                                               ; preds = %68, %63, %94, %80, %58, %54, %51
  %99 = phi i8 [ %45, %54 ], [ %45, %51 ], [ %45, %58 ], [ %64, %68 ], [ %64, %63 ], [ %95, %94 ], [ %64, %80 ]
  %100 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %46) #20
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load ptr, ptr %5, align 8, !tbaa !12
  tail call fastcc void @register_new_assert_for(ptr noundef %46, ptr noundef %46, i32 noundef %52, ptr noundef %103, ptr noundef %0, ptr noundef null, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  br label %104

104:                                              ; preds = %98, %102, %44
  %105 = phi i8 [ %99, %98 ], [ 1, %102 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  %106 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #20
  %107 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %44, label %109, !llvm.loop !119

109:                                              ; preds = %104, %40, %35
  %110 = phi i8 [ %36, %35 ], [ %36, %40 ], [ %105, %104 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %111 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !15
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %35, label %113, !llvm.loop !120

113:                                              ; preds = %109, %31
  %114 = phi i8 [ %32, %31 ], [ %110, %109 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #21
  %115 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !15
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %138

117:                                              ; preds = %113, %135
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #22
  %118 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %119 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %7, ptr noundef %118, i32 noundef 1) #20
  %120 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %117, %131
  %123 = phi ptr [ %132, %131 ], [ %119, %117 ]
  %124 = call fastcc ptr @get_use_from_ptr(ptr noundef %123) #20
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 141
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.tree_ssa_name, ptr %124, i64 0, i32 3
  %130 = load i32, ptr %129, align 8, !tbaa !13
  call fastcc void @SET_BIT(ptr noundef %1, i32 noundef %130) #20
  br label %131

131:                                              ; preds = %128, %122
  %132 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %7) #20
  %133 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %122, label %135, !llvm.loop !121

135:                                              ; preds = %131, %117
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #22
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %136 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !15
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %117, label %138, !llvm.loop !122

138:                                              ; preds = %135, %113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %114
}

; Function Attrs: optsize
declare zeroext i8 @sbitmap_empty_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #13 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !12
  ret i8 %10
}

; Function Attrs: optsize
declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

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
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 738, ptr noundef nonnull @.str.28) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !123
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !123
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @fp_predicate(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 9
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 13
  br i1 %14, label %22, label %15

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 14
  br i1 %21, label %22, label %32

22:                                               ; preds = %15, %8
  %23 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !13
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
define internal fastcc zeroext i8 @zero_ssa_operands(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #22
  %3 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 1) #20
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #22
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_conditional_asserts(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
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
  store i32 0, ptr %4, align 8, !tbaa.struct !107
  %9 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !108
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %5) #20, !range !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %2, %33
  %13 = phi i8 [ %34, %33 ], [ 0, %2 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !51
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %33, label %18

18:                                               ; preds = %12
  %19 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 1) #20
  %20 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #20
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18, %22
  %23 = phi i8 [ %29, %22 ], [ %13, %18 ]
  %24 = phi ptr [ %30, %22 ], [ %19, %18 ]
  %25 = call fastcc i32 @gimple_cond_code(ptr noundef %1) #20, !range !96
  %26 = call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #20
  %27 = call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #20
  %28 = call fastcc zeroext i8 @register_edge_assert_for(ptr noundef %24, ptr noundef %14, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %25, ptr noundef %26, ptr noundef %27) #20, !range !15
  %29 = or i8 %28, %23
  %30 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %6) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %22, label %33, !llvm.loop !125

33:                                               ; preds = %22, %18, %12
  %34 = phi i8 [ %13, %12 ], [ %13, %18 ], [ %29, %22 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %35 = load i32, ptr %4, align 8
  %36 = load ptr, ptr %9, align 8
  %37 = call fastcc zeroext i8 @ei_cond(i32 %35, ptr %36, ptr noundef nonnull %5) #20, !range !15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %12, !llvm.loop !126

39:                                               ; preds = %33, %2
  %40 = phi i8 [ 0, %2 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_switch_asserts(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %1) #20
  %5 = zext i32 %4 to i64
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #21
  %6 = call fastcc ptr @gimple_switch_index(ptr noundef %1) #20
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %96

10:                                               ; preds = %2
  %11 = call ptr @make_tree_vec_stat(i32 noundef %4) #21
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2
  call void @spec_qsort(ptr noundef nonnull %14, i64 noundef %5, i64 noundef 8, ptr noundef nonnull @compare_case_labels) #21
  br label %96

15:                                               ; preds = %10, %15
  %16 = phi i64 [ %20, %15 ], [ 0, %10 ]
  %17 = trunc i64 %16 to i32
  %18 = call fastcc ptr @gimple_switch_label(ptr noundef %1, i32 noundef %17) #20
  %19 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %16
  store ptr %18, ptr %19, align 8, !tbaa !13
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, %5
  br i1 %21, label %22, label %15, !llvm.loop !127

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2
  call void @spec_qsort(ptr noundef nonnull %23, i64 noundef %5, i64 noundef 8, ptr noundef nonnull @compare_case_labels) #21
  br i1 %12, label %96, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %26 = add i32 %4, -1
  br label %27

27:                                               ; preds = %24, %92
  %28 = phi i8 [ 0, %24 ], [ %93, %92 ]
  %29 = phi i32 [ 0, %24 ], [ %94, %92 ]
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !13
  %33 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  %35 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = add nuw i32 %29, 1
  %38 = icmp ult i32 %37, %4
  br i1 %38, label %39, label %71

39:                                               ; preds = %27
  %40 = zext i32 %37 to i64
  %41 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !13
  %43 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %40
  %44 = load ptr, ptr %43, align 8, !tbaa !13
  %45 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 1, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !13
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %39, %52
  %49 = phi i64 [ %50, %52 ], [ %30, %39 ]
  %50 = add nuw nsw i64 %49, 1
  %51 = icmp ult i64 %50, %5
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %50
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = getelementptr inbounds %struct.tree_exp, ptr %54, i64 1, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !13
  %57 = icmp eq ptr %42, %56
  br i1 %57, label %48, label %58, !llvm.loop !128

58:                                               ; preds = %52
  %59 = trunc i64 %49 to i32
  br label %60

60:                                               ; preds = %48, %58
  %61 = phi i32 [ %59, %58 ], [ %26, %48 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !13
  %65 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !13
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !13
  br label %71

71:                                               ; preds = %60, %68, %39, %27
  %72 = phi i32 [ %61, %68 ], [ %29, %39 ], [ %29, %27 ], [ %61, %60 ]
  %73 = phi ptr [ %70, %68 ], [ %36, %39 ], [ %36, %27 ], [ %66, %60 ]
  %74 = icmp eq ptr %34, null
  br i1 %74, label %92, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr @cfun, align 8, !tbaa !12
  %77 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !13
  %79 = call ptr @label_to_block_fn(ptr noundef %76, ptr noundef %78) #21
  %80 = call ptr @find_edge(ptr noundef %0, ptr noundef %79) #21
  %81 = icmp eq ptr %73, null
  %82 = select i1 %81, i32 101, i32 100
  %83 = load ptr, ptr %25, align 8, !tbaa !13
  %84 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %83, ptr noundef nonnull %34) #21
  %85 = call fastcc zeroext i8 @register_edge_assert_for(ptr noundef nonnull %6, ptr noundef %80, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %82, ptr noundef nonnull %6, ptr noundef %84) #20, !range !15
  %86 = or i8 %85, %28
  br i1 %81, label %92, label %87

87:                                               ; preds = %75
  %88 = load ptr, ptr %25, align 8, !tbaa !13
  %89 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %88, ptr noundef nonnull %73) #21
  %90 = call fastcc zeroext i8 @register_edge_assert_for(ptr noundef nonnull %6, ptr noundef %80, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef 98, ptr noundef nonnull %6, ptr noundef %89) #20, !range !15
  %91 = or i8 %90, %86
  br label %92

92:                                               ; preds = %75, %87, %71
  %93 = phi i8 [ %28, %71 ], [ %91, %87 ], [ %86, %75 ]
  %94 = add i32 %72, 1
  %95 = icmp ult i32 %94, %4
  br i1 %95, label %27, label %96, !llvm.loop !129

96:                                               ; preds = %92, %13, %22, %2
  %97 = phi i8 [ 0, %2 ], [ 0, %22 ], [ 0, %13 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %97
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !130
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !132
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #20
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i8, ptr %0, align 8, !tbaa !134
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = load ptr, ptr %0, align 8, !tbaa !110
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
  %15 = load i64, ptr %14, align 8, !tbaa !35
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !13
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !35
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @infer_value_range(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr null, ptr %3, align 8, !tbaa !12
  store i32 0, ptr %2, align 4, !tbaa !23
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 4194304
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %4
  %12 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #21
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !135
  %21 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %20) #20
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr @flag_delete_null_pointer_checks, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %46, label %29

26:                                               ; preds = %14
  %27 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %17, %26
  %30 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %46 [
    i16 10, label %34
    i16 12, label %34
  ]

34:                                               ; preds = %29, %29
  %35 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %36 = icmp eq i32 %35, 7
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  call void @count_uses_and_derefs(ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %38 = load i32, ptr %6, align 4, !tbaa !23
  %39 = load i32, ptr %7, align 4, !tbaa !23
  %40 = sub i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  br label %46

43:                                               ; preds = %37
  %44 = load ptr, ptr %30, align 8, !tbaa !13
  %45 = call ptr @build_int_cst(ptr noundef %44, i64 noundef 0) #21
  store ptr %45, ptr %3, align 8, !tbaa !12
  store i32 102, ptr %2, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  br label %46

46:                                               ; preds = %26, %34, %29, %42, %43, %17, %11, %4
  %47 = phi i8 [ 1, %43 ], [ 0, %4 ], [ 0, %11 ], [ 0, %17 ], [ 0, %42 ], [ 0, %29 ], [ 0, %34 ], [ 0, %26 ]
  ret i8 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !96
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !80
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
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #20, !range !15
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #21
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_assert_for(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %6) unnamed_addr #0 {
  %8 = load i64, ptr %3, align 8
  %9 = and i64 %8, 134283263
  %10 = icmp eq i64 %9, 134217751
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !13
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !13
  %18 = tail call ptr @build_int_cst_wide(ptr noundef %13, i64 noundef %15, i64 noundef %17) #21
  br label %19

19:                                               ; preds = %11, %7
  %20 = phi ptr [ %18, %11 ], [ %3, %7 ]
  %21 = icmp eq ptr %4, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi ptr [ %24, %22 ], [ %4, %19 ]
  %27 = load ptr, ptr @asserts_for, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !13
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = icmp eq ptr %32, null
  br i1 %33, label %83, label %34

34:                                               ; preds = %25
  %35 = icmp eq ptr %5, null
  %36 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  br label %37

37:                                               ; preds = %34, %79
  %38 = phi ptr [ %32, %34 ], [ %81, %79 ]
  %39 = getelementptr inbounds %struct.assert_locus_d, ptr %38, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !52
  %41 = icmp eq i32 %40, %2
  br i1 %41, label %42, label %79

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.assert_locus_d, ptr %38, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  %45 = icmp eq ptr %44, %20
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @operand_equal_p(ptr noundef %44, ptr noundef %20, i32 noundef 0) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %46, %42
  %50 = getelementptr inbounds %struct.assert_locus_d, ptr %38, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !138
  %52 = icmp eq ptr %51, %1
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = tail call i32 @operand_equal_p(ptr noundef %51, ptr noundef %1, i32 noundef 0) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %53, %49
  br i1 %35, label %57, label %61

57:                                               ; preds = %56
  %58 = load ptr, ptr %38, align 8, !tbaa !43
  %59 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %26, ptr noundef %58) #21
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %72, label %105

61:                                               ; preds = %56
  %62 = load ptr, ptr %5, align 8, !tbaa !49
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !135
  %65 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %64) #20
  %66 = icmp ugt i32 %65, 1
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load ptr, ptr %36, align 8, !tbaa !51
  %69 = load ptr, ptr %68, align 8, !tbaa !139
  %70 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %69) #20
  %71 = icmp ugt i32 %70, 1
  br i1 %71, label %79, label %72

72:                                               ; preds = %57, %67, %61
  %73 = load ptr, ptr %38, align 8, !tbaa !43
  %74 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %73, ptr noundef %26) #21
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %72
  store ptr %26, ptr %38, align 8, !tbaa !43
  %77 = getelementptr inbounds %struct.assert_locus_d, ptr %38, i64 0, i32 1
  store ptr %5, ptr %77, align 8, !tbaa !48
  %78 = getelementptr inbounds %struct.assert_locus_d, ptr %38, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !75
  br label %105

79:                                               ; preds = %67, %72, %53, %46, %37
  %80 = getelementptr inbounds %struct.assert_locus_d, ptr %38, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !115
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %37, !llvm.loop !140

83:                                               ; preds = %79, %25
  %84 = phi ptr [ null, %25 ], [ %38, %79 ]
  %85 = tail call ptr @xmalloc(i64 noundef 72) #21
  store ptr %26, ptr %85, align 8, !tbaa !43
  %86 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 1
  store ptr %5, ptr %86, align 8, !tbaa !48
  %87 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %87, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !75
  %88 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 3
  store i32 %2, ptr %88, align 8, !tbaa !52
  %89 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 4
  store ptr %20, ptr %89, align 8, !tbaa !53
  %90 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 5
  store ptr %1, ptr %90, align 8, !tbaa !138
  %91 = getelementptr inbounds %struct.assert_locus_d, ptr %85, i64 0, i32 6
  store ptr null, ptr %91, align 8, !tbaa !115
  %92 = icmp eq ptr %84, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.assert_locus_d, ptr %84, i64 0, i32 6
  br label %100

95:                                               ; preds = %83
  %96 = load ptr, ptr @asserts_for, align 8, !tbaa !12
  %97 = load i32, ptr %28, align 8, !tbaa !13
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %96, i64 %98
  br label %100

100:                                              ; preds = %95, %93
  %101 = phi ptr [ %99, %95 ], [ %94, %93 ]
  store ptr %85, ptr %101, align 8, !tbaa !12
  %102 = load ptr, ptr @need_assert_for, align 8, !tbaa !12
  %103 = load i32, ptr %28, align 8, !tbaa !13
  %104 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %102, i32 noundef %103) #21
  br label %105

105:                                              ; preds = %57, %100, %76
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #20
  %8 = load ptr, ptr %3, align 8, !tbaa !142
  store ptr %8, ptr %2, align 8, !tbaa !141
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !144
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !145
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #20
  %17 = load ptr, ptr %11, align 8, !tbaa !147
  store ptr %17, ptr %10, align 8, !tbaa !144
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !134
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  store ptr %4, ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !134
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 918, ptr noundef nonnull @.str.28) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #21
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !134
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !149
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !150
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !132
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !142
  store ptr %7, ptr %2, align 8, !tbaa !141
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !152
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !150
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !149
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !152
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !134
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
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
  %5 = load i64, ptr %4, align 8, !tbaa !35
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1622, ptr noundef nonnull @.str.28) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #13 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !23
  ret i32 %4
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @register_edge_assert_for(ptr noundef %0, ptr noundef %1, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !83
  %11 = lshr i32 %10, 11
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, 4194304
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %85

17:                                               ; preds = %6
  %18 = call fastcc zeroext i8 @extract_code_and_val_from_cond_with_ops(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %13, ptr noundef nonnull %8, ptr noundef nonnull %7) #20, !range !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %85, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc zeroext i8 @register_edge_assert_for_2(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %13) #20, !range !15
  %22 = load i32, ptr %8, align 4, !tbaa !23
  %23 = icmp eq i32 %22, 101
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 8, !tbaa !12
  %26 = tail call i32 @integer_onep(ptr noundef %25) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %55, label %34

28:                                               ; preds = %20
  %29 = icmp eq i32 %22, 102
  br i1 %29, label %30, label %85

30:                                               ; preds = %28
  %31 = load ptr, ptr %7, align 8, !tbaa !12
  %32 = tail call i32 @integer_zerop(ptr noundef %31) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %31, %30 ], [ %25, %24 ]
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !13
  %38 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %37) #20, !range !15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %37) #20, !range !96
  %42 = icmp eq i32 %41, 93
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %37) #20, !range !96
  %45 = icmp eq i32 %44, 89
  br i1 %45, label %46, label %53

46:                                               ; preds = %43, %40
  %47 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %37) #20
  %48 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %37) #20
  %49 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %47, i32 noundef 102, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !15
  %50 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %48, i32 noundef 102, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !15
  %51 = or i8 %49, %50
  %52 = or i8 %51, %21
  br label %53

53:                                               ; preds = %34, %43, %46
  %54 = phi i8 [ %52, %46 ], [ %21, %43 ], [ %21, %34 ]
  br i1 %23, label %55, label %60

55:                                               ; preds = %24, %53
  %56 = phi ptr [ %35, %53 ], [ %25, %24 ]
  %57 = phi i8 [ %54, %53 ], [ %21, %24 ]
  %58 = tail call i32 @integer_zerop(ptr noundef %56) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %85, label %65

60:                                               ; preds = %53, %30
  %61 = phi ptr [ %31, %30 ], [ %35, %53 ]
  %62 = phi i8 [ %21, %30 ], [ %54, %53 ]
  %63 = tail call i32 @integer_onep(ptr noundef %61) #21
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %85, label %65

65:                                               ; preds = %60, %55
  %66 = phi i8 [ %62, %60 ], [ %57, %55 ]
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !13
  %69 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %68) #20, !range !15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %85, label %71

71:                                               ; preds = %65
  %72 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %68) #20, !range !96
  %73 = icmp eq i32 %72, 94
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  br i1 %23, label %75, label %85

75:                                               ; preds = %74
  %76 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %68) #20, !range !96
  %77 = icmp eq i32 %76, 87
  br i1 %77, label %78, label %85

78:                                               ; preds = %75, %71
  %79 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %68) #20
  %80 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %68) #20
  %81 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %79, i32 noundef 101, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !15
  %82 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %80, i32 noundef 101, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !15
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
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @extract_code_and_val_from_cond_with_ops(ptr noundef readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  %8 = icmp eq ptr %0, %3
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call i32 @swap_tree_comparison(i32 noundef %1) #21
  br label %11

11:                                               ; preds = %7, %9
  %12 = phi ptr [ %2, %9 ], [ %3, %7 ]
  %13 = phi i32 [ %10, %9 ], [ %1, %7 ]
  %14 = icmp eq i8 %4, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @invert_tree_comparison(i32 noundef %13, i8 noundef zeroext 0) #21
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %45, label %25

25:                                               ; preds = %17
  switch i32 %18, label %44 [
    i32 99, label %26
    i32 97, label %26
  ]

26:                                               ; preds = %25, %25
  %27 = add nsw i32 %23, -6
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !13
  switch i32 %18, label %44 [
    i32 99, label %34
    i32 97, label %39
  ]

34:                                               ; preds = %29
  %35 = icmp eq ptr %33, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %34
  %37 = tail call fastcc i32 @compare_values(ptr noundef nonnull %12, ptr noundef nonnull %33) #20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %44

39:                                               ; preds = %29
  %40 = icmp eq ptr %31, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = tail call fastcc i32 @compare_values(ptr noundef nonnull %12, ptr noundef nonnull %31) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36, %41, %29, %26, %25
  store i32 %18, ptr %5, align 4, !tbaa !23
  store ptr %12, ptr %6, align 8, !tbaa !12
  br label %45

45:                                               ; preds = %36, %34, %41, %39, %17, %44
  %46 = phi i8 [ 1, %44 ], [ 0, %17 ], [ 0, %39 ], [ 0, %41 ], [ 0, %34 ], [ 0, %36 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @register_edge_assert_for_2(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  %10 = call fastcc zeroext i8 @extract_code_and_val_from_cond_with_ops(ptr noundef %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, ptr noundef nonnull %9, ptr noundef nonnull %8) #20, !range !15
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %186, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc zeroext i8 @live_on_edge(ptr noundef %1, ptr noundef %0) #20, !range !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, ptr %9, align 4
  br label %23

17:                                               ; preds = %12
  %18 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %0) #20
  %19 = icmp eq i8 %18, 0
  %20 = load i32, ptr %9, align 4
  br i1 %19, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %8, align 8, !tbaa !12
  tail call fastcc void @register_new_assert_for(ptr noundef %0, ptr noundef %0, i32 noundef %20, ptr noundef %22, ptr noundef null, ptr noundef %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  br label %23

23:                                               ; preds = %15, %21, %17
  %24 = phi i32 [ %20, %17 ], [ %20, %21 ], [ %16, %15 ]
  %25 = phi i8 [ 0, %17 ], [ 1, %21 ], [ 0, %15 ]
  %26 = and i32 %24, -2
  %27 = icmp eq i32 %26, 98
  br i1 %27, label %28, label %186

28:                                               ; preds = %23
  %29 = load ptr, ptr %8, align 8, !tbaa !12
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 23
  br i1 %32, label %33, label %186

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 2097152
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %186, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  %42 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %41) #20, !range !15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %39
  %45 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %41) #20, !range !96
  %46 = icmp eq i32 %45, 63
  br i1 %46, label %47, label %60

47:                                               ; preds = %44
  %48 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %41) #20
  %49 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %41) #20
  %50 = load i64, ptr %48, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i64, ptr %49, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 23
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !13
  br label %60

60:                                               ; preds = %47, %53, %57, %44, %39
  %61 = phi ptr [ %59, %57 ], [ %41, %53 ], [ %41, %47 ], [ %41, %44 ], [ %41, %39 ]
  %62 = phi ptr [ %49, %57 ], [ %49, %53 ], [ %49, %47 ], [ null, %44 ], [ null, %39 ]
  %63 = phi ptr [ %48, %57 ], [ %48, %53 ], [ %48, %47 ], [ null, %44 ], [ null, %39 ]
  %64 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %61) #20, !range !15
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %138, label %66

66:                                               ; preds = %60
  %67 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %61) #20, !range !96
  %68 = icmp eq i32 %67, 116
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %61) #20, !range !96
  %71 = icmp eq i32 %70, 113
  br i1 %71, label %72, label %138

72:                                               ; preds = %69, %66
  %73 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %61) #20
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !13
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 2097152
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %138

79:                                               ; preds = %72
  %80 = tail call fastcc ptr @gimple_expr_type(ptr noundef %61) #20
  %81 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %61) #20
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !13
  %86 = getelementptr inbounds %struct.tree_type, ptr %85, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = xor i32 %87, %82
  %89 = and i32 %88, 1023
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %138

91:                                               ; preds = %79
  %92 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %61) #20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %138, label %94

94:                                               ; preds = %91
  %95 = load i64, ptr %92, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 141
  br i1 %97, label %98, label %138

98:                                               ; preds = %94
  %99 = icmp eq ptr %62, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %98
  %101 = load i64, ptr %62, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 23
  br i1 %103, label %104, label %138

104:                                              ; preds = %100, %98
  %105 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !13
  %107 = load i64, ptr %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = and i32 %108, 65535
  %110 = add nsw i32 %109, -6
  %111 = icmp ult i32 %110, 3
  br i1 %111, label %112, label %138

112:                                              ; preds = %104
  %113 = tail call fastcc zeroext i8 @live_on_edge(ptr noundef %1, ptr noundef nonnull %92) #20, !range !15
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %138, label %115

115:                                              ; preds = %112
  %116 = tail call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %92) #20
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !13
  %121 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %120, ptr noundef nonnull %92) #21
  br i1 %99, label %125, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %119, align 8, !tbaa !13
  %124 = tail call ptr @build2_stat(i32 noundef 63, ptr noundef %123, ptr noundef %121, ptr noundef nonnull %62) #21
  br label %125

125:                                              ; preds = %122, %118
  %126 = phi ptr [ %124, %122 ], [ %121, %118 ]
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %125
  %130 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 18, i64 1, ptr nonnull %127)
  %131 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_generic_expr(ptr noundef %131, ptr noundef nonnull %92, i32 noundef 0) #21
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %133 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 6, i64 1, ptr %132)
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_generic_expr(ptr noundef %134, ptr noundef %126, i32 noundef 0) #21
  %135 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %136 = tail call i32 @fputc(i32 10, ptr %135)
  br label %137

137:                                              ; preds = %129, %125
  tail call fastcc void @register_new_assert_for(ptr noundef nonnull %92, ptr noundef %126, i32 noundef %24, ptr noundef nonnull %29, ptr noundef null, ptr noundef %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  br label %138

138:                                              ; preds = %60, %69, %79, %72, %104, %137, %115, %112, %100, %94, %91
  %139 = phi i8 [ %25, %115 ], [ 1, %137 ], [ %25, %112 ], [ %25, %100 ], [ %25, %94 ], [ %25, %91 ], [ %25, %104 ], [ %25, %72 ], [ %25, %79 ], [ %25, %69 ], [ %25, %60 ]
  %140 = icmp eq ptr %63, null
  br i1 %140, label %186, label %141

141:                                              ; preds = %138
  %142 = load i64, ptr %63, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 141
  br i1 %144, label %145, label %186

145:                                              ; preds = %141
  %146 = load i64, ptr %62, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 23
  br i1 %148, label %149, label %186

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !13
  %152 = load i64, ptr %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = and i32 %153, 65535
  %155 = add nsw i32 %154, -6
  %156 = icmp ult i32 %155, 3
  br i1 %156, label %157, label %186

157:                                              ; preds = %149
  %158 = tail call fastcc zeroext i8 @live_on_edge(ptr noundef %1, ptr noundef nonnull %63) #20, !range !15
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %186, label %160

160:                                              ; preds = %157
  %161 = tail call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %63) #20
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !13
  %166 = load ptr, ptr %150, align 8, !tbaa !13
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %171, label %168

168:                                              ; preds = %163
  %169 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %165, ptr noundef nonnull %63) #21
  %170 = load ptr, ptr %164, align 8, !tbaa !13
  br label %171

171:                                              ; preds = %163, %168
  %172 = phi ptr [ %170, %168 ], [ %165, %163 ]
  %173 = phi ptr [ %169, %168 ], [ %63, %163 ]
  %174 = tail call ptr @build2_stat(i32 noundef 63, ptr noundef %172, ptr noundef %173, ptr noundef nonnull %62) #21
  %175 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %176 = icmp eq ptr %175, null
  br i1 %176, label %185, label %177

177:                                              ; preds = %171
  %178 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 18, i64 1, ptr nonnull %175)
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_generic_expr(ptr noundef %179, ptr noundef nonnull %63, i32 noundef 0) #21
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %181 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 6, i64 1, ptr %180)
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_generic_expr(ptr noundef %182, ptr noundef %174, i32 noundef 0) #21
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !12
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) unnamed_addr #0 {
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %101

8:                                                ; preds = %4, %75
  %9 = phi i32 [ %76, %75 ], [ %1, %4 ]
  %10 = phi ptr [ %77, %75 ], [ %0, %4 ]
  %11 = phi i8 [ %78, %75 ], [ 0, %4 ]
  %12 = tail call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %10) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = tail call ptr @build_int_cst(ptr noundef %16, i64 noundef 0) #21
  tail call fastcc void @register_new_assert_for(ptr noundef nonnull %10, ptr noundef nonnull %10, i32 noundef %9, ptr noundef %17, ptr noundef null, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i8 [ 0, %8 ], [ 1, %14 ]
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %21) #20, !range !80
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %101

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !96
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !23
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = icmp eq i32 %9, 101
  %32 = zext i1 %31 to i8
  %33 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %34 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %21) #20
  %35 = load i64, ptr %33, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = tail call fastcc zeroext i8 @register_edge_assert_for_2(ptr noundef nonnull %33, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %25, ptr noundef nonnull %33, ptr noundef %34, i8 noundef zeroext %32) #20, !range !15
  %40 = or i8 %39, %19
  br label %41

41:                                               ; preds = %38, %30
  %42 = phi i8 [ %40, %38 ], [ %19, %30 ]
  %43 = load i64, ptr %34, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %46, label %101

46:                                               ; preds = %41
  %47 = tail call fastcc zeroext i8 @register_edge_assert_for_2(ptr noundef nonnull %34, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %25, ptr noundef nonnull %33, ptr noundef nonnull %34, i8 noundef zeroext %32) #20, !range !15
  %48 = or i8 %47, %42
  br label %101

49:                                               ; preds = %24
  switch i32 %9, label %72 [
    i32 102, label %50
    i32 101, label %56
  ]

50:                                               ; preds = %49
  %51 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !96
  %52 = icmp eq i32 %51, 93
  br i1 %52, label %64, label %53

53:                                               ; preds = %50
  %54 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !96
  %55 = icmp eq i32 %54, 89
  br i1 %55, label %64, label %72

56:                                               ; preds = %49
  %57 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !96
  %58 = icmp eq i32 %57, 94
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !96
  %61 = icmp eq i32 %60, 87
  br i1 %61, label %64, label %72

62:                                               ; preds = %96, %85, %64, %101
  %63 = phi i8 [ %104, %101 ], [ %71, %64 ], [ %89, %85 ], [ %100, %96 ]
  ret i8 %63

64:                                               ; preds = %59, %56, %53, %50
  %65 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %66 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %65, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !15
  %67 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %21) #20
  %68 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %67, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !15
  %69 = or i8 %66, %68
  %70 = or i8 %69, %11
  %71 = or i8 %70, %19
  br label %62

72:                                               ; preds = %53, %49, %59
  %73 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !96
  %74 = icmp eq i32 %73, 96
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = tail call i32 @invert_tree_comparison(i32 noundef %9, i8 noundef zeroext 0) #21
  %77 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %78 = or i8 %19, %11
  %79 = load i64, ptr %77, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 141
  br i1 %81, label %8, label %101

82:                                               ; preds = %72
  %83 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !96
  %84 = icmp eq i32 %83, 141
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %87 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %86, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !15
  %88 = or i8 %11, %87
  %89 = or i8 %88, %19
  br label %62

90:                                               ; preds = %82
  %91 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !96
  %92 = icmp eq i32 %91, 116
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !96
  %95 = icmp eq i32 %94, 113
  br i1 %95, label %96, label %101

96:                                               ; preds = %93, %90
  %97 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %98 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %97, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !15
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
declare i32 @swap_tree_comparison(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @invert_tree_comparison(i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @live_on_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = load ptr, ptr @live, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %3, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !13
  %15 = lshr i32 %14, 6
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 3, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !35
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
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !96
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
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #20
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !96
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !12
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !12
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !13
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3162, ptr noundef nonnull @.str.28) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @make_tree_vec_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3215, ptr noundef nonnull @.str.28) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %4) #20
  ret ptr %8
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_case_labels(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !12
  %4 = load ptr, ptr %1, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %6 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !13
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !13
  %15 = icmp ult i32 %9, %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %2
  %17 = icmp eq i32 %9, %14
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  %19 = load ptr, ptr %5, align 8, !tbaa !13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 8, !tbaa !13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %19, ptr noundef nonnull %22) #21
  br label %26

26:                                               ; preds = %16, %21, %18, %2, %24
  %27 = phi i32 [ %25, %24 ], [ -1, %2 ], [ -1, %18 ], [ 1, %21 ], [ 1, %16 ]
  ret i32 %27
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @label_to_block_fn(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !153
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !154
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !156
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 747, ptr noundef nonnull @.str.28) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !144
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !144
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !147
  store ptr %22, ptr %16, align 8, !tbaa !144
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !141
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !141
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !142
  store ptr %36, ptr %29, align 8, !tbaa !141
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !134
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  ret ptr %3
}

; Function Attrs: optsize
declare void @count_uses_and_derefs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1446, ptr noundef nonnull @.str.28) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #13 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !13
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !134
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !13
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
  %4 = load i32, ptr %3, align 8, !tbaa !13
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3103, ptr noundef nonnull @.str.28) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

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
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 687, ptr noundef nonnull @.str.28) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @process_assert_insertions_for(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %46, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !52
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !12
  %14 = tail call ptr @build2_stat(i32 noundef %12, ptr noundef %13, ptr noundef %6, ptr noundef %8) #21
  %15 = tail call fastcc ptr @build_assert_expr_for(ptr noundef %14, ptr noundef %0) #20
  %16 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  tail call void @gsi_insert_on_edge(ptr noundef nonnull %17, ptr noundef %15) #21
  br label %46

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 2
  %22 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %21) #20
  %23 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %22) #21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void @gsi_insert_after(ptr noundef nonnull %21, ptr noundef %15, i32 noundef 1) #21
  br label %46

26:                                               ; preds = %20
  %27 = load ptr, ptr %1, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 1
  %29 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %28) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !107
  %30 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %29, ptr %30, align 8, !tbaa.struct !108
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %29, ptr noundef nonnull %4) #20, !range !15
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %26, %40
  %34 = load ptr, ptr %4, align 8, !tbaa !12
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !83
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
  %43 = call fastcc zeroext i8 @ei_cond(i32 %41, ptr %42, ptr noundef nonnull %4) #20, !range !15
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %33, !llvm.loop !158

45:                                               ; preds = %40, %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 4901, ptr noundef nonnull @.str.28) #21
  br label %46

46:                                               ; preds = %2, %45, %39, %25, %19
  %47 = phi i8 [ 1, %19 ], [ 1, %39 ], [ 0, %45 ], [ 0, %25 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret i8 %47
}

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #3

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_assert_expr_for(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3748, ptr noundef nonnull @.str.28) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call ptr @duplicate_ssa_name(ptr noundef nonnull %1, ptr noundef null) #21
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !23
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !13
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
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3760, ptr noundef nonnull @.str.28) #21
  br label %26

26:                                               ; preds = %21, %25
  %27 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !12
  %28 = tail call ptr @gimple_build_assign_stat(ptr noundef %8, ptr noundef %27) #21
  br label %36

29:                                               ; preds = %19
  %30 = icmp eq ptr %1, %0
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3766, ptr noundef nonnull @.str.28) #21
  br label %32

32:                                               ; preds = %29, %31
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  %34 = tail call ptr @gimple_build_assign_stat(ptr noundef %8, ptr noundef %33) #21
  br label %36

35:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3770, ptr noundef nonnull @.str.28) #21
  br label %36

36:                                               ; preds = %26, %35, %32, %14
  %37 = phi ptr [ %18, %14 ], [ %28, %26 ], [ %34, %32 ], [ undef, %35 ]
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !13
  tail call void @register_new_name_mapping(ptr noundef %8, ptr noundef nonnull %1) #21
  ret ptr %37
}

; Function Attrs: optsize
declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @register_new_name_mapping(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  %6 = tail call zeroext i8 @is_gimple_reg(ptr noundef %5) #21
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  %14 = add i16 %13, -6
  %15 = icmp ult i16 %14, 7
  br i1 %15, label %55, label %16

16:                                               ; preds = %55, %8, %4, %1
  %17 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %48, label %22

22:                                               ; preds = %19, %16
  %23 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25

25:                                               ; preds = %22
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %54 [
    i16 6, label %34
    i16 7, label %34
    i16 8, label %34
    i16 10, label %34
    i16 12, label %34
  ]

34:                                               ; preds = %29, %29, %29, %29, %29
  %35 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !15
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !13
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %60, label %45

45:                                               ; preds = %40, %37, %34
  %46 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %54

48:                                               ; preds = %19
  %49 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
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
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @prop_set_simulate_again(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0, i8 noundef zeroext %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
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
  %8 = load ptr, ptr %7, align 8, !tbaa !13
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 {
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
define internal fastcc i32 @vrp_visit_assignment_or_call(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca %struct.value_range_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %6 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %56

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -6
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %10, %22, %18
  %27 = trunc i64 %13 to i16
  switch i16 %27, label %56 [
    i16 10, label %28
    i16 12, label %28
  ]

28:                                               ; preds = %26, %26, %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %29 = icmp eq i32 %5, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  call fastcc void @extract_range_basic(ptr noundef nonnull %4, ptr noundef %0) #20
  br label %32

31:                                               ; preds = %28
  call fastcc void @extract_range_from_assignment(ptr noundef nonnull %4, ptr noundef %0) #20
  br label %32

32:                                               ; preds = %31, %30
  %33 = call fastcc zeroext i8 @update_value_range(ptr noundef nonnull %6, ptr noundef nonnull %4) #20, !range !15
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %32
  store ptr %6, ptr %1, align 8, !tbaa !12
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 20, i64 1, ptr nonnull %36)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_generic_expr(ptr noundef %44, ptr noundef nonnull %6, i32 noundef 0) #21
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %46 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %45)
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !12
  call void @dump_value_range(ptr noundef %47, ptr noundef nonnull %4) #20
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %49 = call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %48)
  br label %50

50:                                               ; preds = %42, %38, %35
  %51 = load i32, ptr %4, align 8, !tbaa !5
  %52 = icmp eq i32 %51, 3
  %53 = select i1 %52, i32 2, i32 1
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
  br i1 %65, label %60, label %66, !llvm.loop !159

66:                                               ; preds = %60, %56, %54
  %67 = phi i32 [ %55, %54 ], [ 2, %56 ], [ 2, %60 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vrp_visit_cond_stmt(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store ptr null, ptr %1, align 8, !tbaa !12
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %12 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 38, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %15 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 19, i64 1, ptr %14)
  %16 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 1) #20
  %17 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %11, %19
  %20 = phi ptr [ %33, %19 ], [ %16, %11 ]
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %22 = tail call i32 @fputc(i32 9, ptr %21)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_generic_expr(ptr noundef %23, ptr noundef %20, i32 noundef 0) #21
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %25 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %24)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %27 = load ptr, ptr @vr_value, align 8, !tbaa !12
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !13
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  tail call void @dump_value_range(ptr noundef %26, ptr noundef %32) #20
  %33 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #20
  %34 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %19, label %36, !llvm.loop !160

36:                                               ; preds = %19, %11
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %38 = tail call i32 @fputc(i32 10, ptr %37)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  br label %39

39:                                               ; preds = %36, %7, %2
  store i8 0, ptr %3, align 1, !tbaa !13
  %40 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !96
  %41 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %42 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %43 = call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %40, ptr noundef %41, ptr noundef %42, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef null) #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45

45:                                               ; preds = %39
  %46 = load i8, ptr %3, align 1, !tbaa !13
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %50 = call ptr @find_taken_edge(ptr noundef %49, ptr noundef nonnull %43) #21
  store ptr %50, ptr %1, align 8, !tbaa !12
  br label %60

51:                                               ; preds = %45
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i64 @fwrite(ptr nonnull @.str.41, i64 83, i64 1, ptr nonnull %52)
  br label %60

60:                                               ; preds = %54, %58, %48, %39
  %61 = phi ptr [ null, %54 ], [ null, %58 ], [ null, %39 ], [ %43, %48 ]
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64

64:                                               ; preds = %60
  %65 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = call i64 @fwrite(ptr nonnull @.str.42, i64 25, i64 1, ptr nonnull %62)
  %70 = icmp eq ptr %61, null
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !12
  br i1 %70, label %72, label %74

72:                                               ; preds = %68
  %73 = call i64 @fwrite(ptr nonnull @.str.43, i64 11, i64 1, ptr %71)
  br label %75

74:                                               ; preds = %68
  call void @print_generic_stmt(ptr noundef %71, ptr noundef nonnull %61, i32 noundef 0) #21
  br label %75

75:                                               ; preds = %51, %72, %74, %64, %60
  %76 = load ptr, ptr %1, align 8, !tbaa !12
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret i32 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @vrp_visit_switch_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !tbaa !35
  store ptr null, ptr %1, align 8, !tbaa !12
  %5 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %106

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %5) #20
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 41, i64 1, ptr nonnull %11)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_generic_expr(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 0) #21
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %21 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 18, i64 1, ptr %20)
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @dump_value_range(ptr noundef %22, ptr noundef %10) #20
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %24 = tail call i32 @fputc(i32 10, ptr %23)
  br label %25

25:                                               ; preds = %17, %13, %9
  %26 = load i32, ptr %10, align 8, !tbaa !5
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %106

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %10) #20, !range !15
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %106

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.value_range_d, ptr %10, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.value_range_d, ptr %10, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !16
  %36 = call fastcc zeroext i8 @find_case_label_range(ptr noundef %0, ptr noundef %33, ptr noundef %35, ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !15
  %37 = xor i8 %36, 1
  %38 = load i64, ptr %4, align 8, !tbaa !35
  %39 = load i64, ptr %3, align 8, !tbaa !35
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = icmp eq i8 %37, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 6035, ptr noundef nonnull @.str.28) #21
  br label %44

44:                                               ; preds = %41, %43
  %45 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef %0) #20
  br label %88

46:                                               ; preds = %31
  %47 = trunc i64 %39 to i32
  %48 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %47) #20
  %49 = icmp eq i8 %37, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef %0) #20
  %52 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 1, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !13
  %54 = getelementptr inbounds %struct.tree_exp, ptr %48, i64 1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !13
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %59 = icmp eq ptr %58, null
  br i1 %59, label %106, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %62 = and i32 %61, 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %106, label %64

64:                                               ; preds = %60
  %65 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 42, i64 1, ptr nonnull %58)
  br label %106

66:                                               ; preds = %50, %46
  %67 = getelementptr inbounds %struct.tree_exp, ptr %48, i64 1, i32 0, i32 1
  br label %68

68:                                               ; preds = %72, %66
  %69 = phi i64 [ %70, %72 ], [ %39, %66 ]
  %70 = add i64 %69, 1
  %71 = icmp ugt i64 %70, %38
  br i1 %71, label %88, label %72

72:                                               ; preds = %68
  %73 = trunc i64 %70 to i32
  %74 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %73) #20
  %75 = getelementptr inbounds %struct.tree_exp, ptr %74, i64 1, i32 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !13
  %77 = load ptr, ptr %67, align 8, !tbaa !13
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %68, label %79, !llvm.loop !161

79:                                               ; preds = %72
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %81 = icmp eq ptr %80, null
  br i1 %81, label %106, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %84 = and i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %82
  %87 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 42, i64 1, ptr nonnull %80)
  br label %106

88:                                               ; preds = %68, %44
  %89 = phi ptr [ %45, %44 ], [ %48, %68 ]
  %90 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %91 = load ptr, ptr @cfun, align 8, !tbaa !12
  %92 = getelementptr inbounds %struct.tree_exp, ptr %89, i64 1, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !13
  %94 = tail call ptr @label_to_block_fn(ptr noundef %91, ptr noundef %93) #21
  %95 = tail call ptr @find_edge(ptr noundef %90, ptr noundef %94) #21
  store ptr %95, ptr %1, align 8, !tbaa !12
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %97 = icmp eq ptr %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %88
  %99 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 20, i64 1, ptr nonnull %96)
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %105 = load ptr, ptr %92, align 8, !tbaa !13
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
define internal fastcc void @extract_range_basic(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store i8 0, ptr %3, align 1, !tbaa !13
  %4 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -6
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = call fastcc zeroext i8 @gimple_stmt_nonnegative_warnv_p(ptr noundef %1, ptr noundef nonnull %3) #20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load i8, ptr %3, align 1, !tbaa !13
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call fastcc zeroext i8 @stmt_overflow_infinity(ptr noundef %1) #20, !range !15
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i8 [ 1, %13 ], [ %17, %16 ]
  call fastcc void @set_value_range_to_nonnegative(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %19) #20
  br label %28

20:                                               ; preds = %2, %10
  %21 = call fastcc zeroext i8 @vrp_stmt_computes_nonzero(ptr noundef %1, ptr noundef nonnull %3) #20, !range !15
  %22 = icmp eq i8 %21, 0
  %23 = load i8, ptr %3, align 1
  %24 = icmp ne i8 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %27, label %26

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
define internal fastcc void @extract_range_from_assignment(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !96
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %9 [
    i16 148, label %5
    i16 141, label %7
  ]

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
  %12 = load i32, ptr %11, align 4, !tbaa !23
  %13 = icmp eq i32 %12, 7
  %14 = add nsw i32 %3, -93
  %15 = icmp ult i32 %14, 3
  %16 = or i1 %15, %13
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !96
  %19 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %20 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %21 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_binary_expr(ptr noundef %0, i32 noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21) #20
  br label %49

22:                                               ; preds = %9
  %23 = icmp eq i32 %12, 6
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !96
  %26 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %27 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_unary_expr(ptr noundef %0, i32 noundef %25, ptr noundef %26, ptr noundef %27) #20
  br label %49

28:                                               ; preds = %22
  %29 = icmp eq i32 %3, 56
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_cond_expr(ptr noundef %0, ptr noundef %31) #20
  br label %49

32:                                               ; preds = %28
  %33 = icmp eq i32 %12, 5
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !96
  %36 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %38 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_comparison(ptr noundef %0, i32 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38) #20
  br label %49

39:                                               ; preds = %32
  %40 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %3) #20, !range !80
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %44 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %43) #21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  tail call fastcc void @set_value_range_to_value(ptr noundef %0, ptr noundef %47, ptr noundef null) #20
  br label %49

48:                                               ; preds = %42, %39
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %49

49:                                               ; preds = %7, %24, %34, %48, %46, %30, %17, %5
  %50 = load i32, ptr %0, align 8, !tbaa !5
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call fastcc void @extract_range_basic(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %53

53:                                               ; preds = %52, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @update_value_range(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @get_value_range(ptr noundef %0) #20
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = load i32, ptr %1, align 8, !tbaa !5
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = tail call fastcc zeroext i8 @vrp_operand_equal_p(ptr noundef %9, ptr noundef %11) #20, !range !15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !16
  %19 = tail call fastcc zeroext i8 @vrp_operand_equal_p(ptr noundef %16, ptr noundef %18) #20, !range !15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !14
  %26 = tail call fastcc zeroext i8 @vrp_bitmap_equal_p(ptr noundef %23, ptr noundef %25) #20, !range !15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %2, %7, %14, %21
  %29 = load i32, ptr %1, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %3, i32 noundef %29, ptr noundef %31, ptr noundef %33, ptr noundef %35) #20
  br label %36

36:                                               ; preds = %28, %21
  %37 = phi i8 [ 1, %28 ], [ 0, %21 ]
  %38 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  tail call void @bitmap_obstack_free(ptr noundef %39) #21
  store ptr null, ptr %38, align 8, !tbaa !14
  ret i8 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_stmt_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %9 [
    i8 6, label %5
    i8 8, label %7
  ]

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @gimple_assign_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) #20
  br label %10

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @gimple_call_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) #20
  br label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 894, ptr noundef nonnull @.str.28) #21
  br label %10

10:                                               ; preds = %9, %7, %5
  %11 = phi i8 [ 0, %9 ], [ %8, %7 ], [ %6, %5 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_nonnegative(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %1) #20, !range !15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

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
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi ptr [ %10, %9 ], [ %13, %12 ]
  %18 = phi ptr [ %11, %9 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %17, ptr noundef %18, ptr noundef %20) #20
  br label %21

21:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_overflow_infinity(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !96
  %6 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %5) #20, !range !80
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %10 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %9) #20, !range !15
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi i8 [ %10, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vrp_stmt_computes_nonzero(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_stmt_nonzero_warnv_p(ptr noundef %0, ptr noundef %1) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %32

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !96
  %10 = icmp eq i32 %9, 121
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %13 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !13
  %15 = tail call ptr @get_base_address(ptr noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %11
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 47
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %23) #20
  %29 = tail call fastcc zeroext i8 @range_is_nonnull(ptr noundef %28) #20, !range !15
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %11, %17, %21, %27
  br label %32

32:                                               ; preds = %5, %8, %31, %27, %2
  %33 = phi i8 [ 1, %2 ], [ 1, %27 ], [ 0, %31 ], [ 0, %8 ], [ 0, %5 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !96
  %4 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %3) #20, !range !80
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %21 [
    i8 2, label %6
    i8 1, label %11
    i8 3, label %17
    i8 0, label %20
  ]

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !96
  %8 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %10 = tail call zeroext i8 @tree_unary_nonnegative_warnv_p(i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %1) #21
  br label %22

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !96
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 850, ptr noundef nonnull @.str.28) #21
  br label %21

21:                                               ; preds = %2, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 852, ptr noundef nonnull @.str.28) #21
  br label %22

22:                                               ; preds = %21, %17, %11, %6
  %23 = phi i8 [ 0, %21 ], [ %19, %17 ], [ %16, %11 ], [ %10, %6 ]
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_call_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #20
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %13

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
declare zeroext i8 @tree_unary_nonnegative_warnv_p(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_binary_nonnegative_warnv_p(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_single_nonnegative_warnv_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @tree_call_nonnegative_warnv_p(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @supports_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc ptr @vrp_val_min(ptr noundef %0) #20
  %3 = tail call fastcc ptr @vrp_val_max(ptr noundef %0) #20
  %4 = icmp eq ptr %2, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !23
  %10 = icmp eq i32 %9, 1
  %11 = icmp ne ptr %3, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = load i64, ptr %3, align 8
  %15 = and i64 %14, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !23
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %13, %5, %1
  %21 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %19, %13 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @positive_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @vrp_val_max(ptr noundef %0) #20
  %3 = tail call fastcc ptr @make_overflow_infinity(ptr noundef %2) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_overflow_infinity(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @copy_node_stat(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = or i64 %3, 134217728
  store i64 %4, ptr %2, align 8
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_overflow_infinity(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %3) #20, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !23
  %11 = icmp ne i32 %10, 1
  %12 = and i64 %7, 134217728
  %13 = icmp eq i64 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %0) #20, !range !15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %0) #20, !range !15
  br label %20

20:                                               ; preds = %15, %18, %6, %1
  %21 = phi i8 [ 0, %6 ], [ 0, %1 ], [ 1, %15 ], [ %19, %18 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_stmt_nonzero_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %9 [
    i8 6, label %5
    i8 8, label %7
  ]

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @gimple_assign_nonzero_warnv_p(ptr noundef %0, ptr noundef %1) #20
  br label %10

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @gimple_alloca_call_p(ptr noundef %0) #21
  br label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 951, ptr noundef nonnull @.str.28) #21
  br label %10

10:                                               ; preds = %9, %7, %5
  %11 = phi i8 [ 0, %9 ], [ %8, %7 ], [ %6, %5 ]
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @range_is_nonnull(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !5
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = tail call i32 @integer_zerop(ptr noundef %6) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = tail call i32 @integer_zerop(ptr noundef %11) #21
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %9, %4, %1
  %16 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %14, %9 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_nonzero_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !96
  %4 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %3) #20, !range !80
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %21 [
    i8 2, label %6
    i8 1, label %11
    i8 3, label %17
    i8 0, label %20
  ]

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !96
  %8 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %10 = tail call zeroext i8 @tree_unary_nonzero_warnv_p(i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %1) #21
  br label %22

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !96
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 927, ptr noundef nonnull @.str.28) #21
  br label %21

21:                                               ; preds = %2, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 929, ptr noundef nonnull @.str.28) #21
  br label %22

22:                                               ; preds = %21, %17, %11, %6
  %23 = phi i8 [ 0, %21 ], [ %19, %17 ], [ %16, %11 ], [ %10, %6 ]
  ret i8 %23
}

; Function Attrs: optsize
declare zeroext i8 @gimple_alloca_call_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_unary_nonzero_warnv_p(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_binary_nonzero_warnv_p(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_single_nonzero_warnv_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_assert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !23
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1410, ptr noundef nonnull @.str.28) #21
  br label %13

13:                                               ; preds = %2, %12
  %14 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %4, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %25 [
    i16 63, label %20
    i16 116, label %20
  ]

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
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi ptr [ %15, %20 ], [ %31, %25 ]
  %34 = phi i32 [ %23, %20 ], [ %29, %25 ]
  %35 = phi ptr [ %24, %20 ], [ %14, %25 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !13
  %37 = tail call fastcc ptr @avoid_overflow_infinity(ptr noundef %36) #20
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !13
  %40 = icmp eq ptr %37, %4
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1436, ptr noundef nonnull @.str.28) #21
  br label %42

42:                                               ; preds = %32, %41
  %43 = load i64, ptr %39, align 8
  %44 = freeze i64 %43
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = icmp ne i32 %46, 12
  %50 = add i32 %34, -101
  %51 = icmp ult i32 %50, 2
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %57, label %56

53:                                               ; preds = %42
  %54 = add i32 %34, -101
  %55 = icmp ult i32 %54, 2
  br i1 %55, label %57, label %56

56:                                               ; preds = %48, %53
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %431

57:                                               ; preds = %48, %53
  %58 = load i64, ptr %37, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 141
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %37) #20
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %62, align 8, !tbaa !5
  switch i32 %65, label %66 [
    i32 0, label %69
    i32 3, label %69
  ]

66:                                               ; preds = %64
  %67 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %62) #20, !range !15
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64, %64, %66
  br label %70

70:                                               ; preds = %57, %69, %66, %61
  %71 = phi ptr [ null, %69 ], [ %62, %66 ], [ null, %61 ], [ null, %57 ]
  %72 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !14
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1463, ptr noundef nonnull @.str.28) #21
  br label %76

76:                                               ; preds = %70, %75
  tail call fastcc void @add_equivalence(ptr noundef nonnull %72, ptr noundef %4) #20
  %77 = load i64, ptr %33, align 8
  %78 = trunc i64 %77 to i16
  switch i16 %78, label %114 [
    i16 116, label %79
    i16 63, label %79
  ]

79:                                               ; preds = %76, %76
  %80 = and i64 %77, 65535
  %81 = icmp eq i64 %80, 63
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.tree_exp, ptr %33, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !13
  %85 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !13
  %87 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %86, ptr noundef %84) #21
  %88 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef nonnull %37, ptr noundef %87, i32 noundef 0) #21
  br label %93

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !13
  %92 = tail call ptr @build_int_cst(ptr noundef %91, i64 noundef 0) #21
  br label %93

93:                                               ; preds = %89, %82
  %94 = phi ptr [ %88, %82 ], [ %37, %89 ]
  %95 = phi ptr [ %87, %82 ], [ %92, %89 ]
  %96 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !13
  %98 = getelementptr inbounds %struct.tree_int_cst, ptr %95, i64 0, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !13
  %100 = getelementptr inbounds %struct.tree_int_cst, ptr %95, i64 0, i32 1, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !13
  %102 = tail call ptr @force_fit_type_double(ptr noundef %97, i64 noundef %99, i64 noundef %101, i32 noundef 0, i8 noundef zeroext 0) #21
  %103 = load ptr, ptr %96, align 8, !tbaa !13
  %104 = getelementptr inbounds %struct.tree_int_cst, ptr %94, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !13
  %106 = getelementptr inbounds %struct.tree_int_cst, ptr %94, i64 0, i32 1, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !13
  %108 = tail call ptr @force_fit_type_double(ptr noundef %103, i64 noundef %105, i64 noundef %107, i32 noundef 0, i8 noundef zeroext 0) #21
  switch i32 %34, label %113 [
    i32 98, label %109
    i32 99, label %111
  ]

109:                                              ; preds = %93
  %110 = load ptr, ptr %72, align 8, !tbaa !14
  tail call fastcc void @set_and_canonicalize_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %102, ptr noundef %108, ptr noundef %110) #20
  br label %256

111:                                              ; preds = %93
  %112 = load ptr, ptr %72, align 8, !tbaa !14
  tail call fastcc void @set_and_canonicalize_value_range(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %102, ptr noundef %108, ptr noundef %112) #20
  br label %256

113:                                              ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1511, ptr noundef nonnull @.str.28) #21
  br label %256

114:                                              ; preds = %76
  switch i32 %34, label %167 [
    i32 101, label %115
    i32 102, label %132
  ]

115:                                              ; preds = %114
  %116 = icmp eq ptr %71, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %115
  %118 = load i32, ptr %71, align 8, !tbaa !5
  %119 = getelementptr inbounds %struct.value_range_d, ptr %71, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !11
  %121 = getelementptr inbounds %struct.value_range_d, ptr %71, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !16
  br label %123

123:                                              ; preds = %115, %117
  %124 = phi ptr [ %122, %117 ], [ %37, %115 ]
  %125 = phi ptr [ %120, %117 ], [ %37, %115 ]
  %126 = phi i32 [ %118, %117 ], [ 1, %115 ]
  %127 = load ptr, ptr %72, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef %126, ptr noundef %125, ptr noundef %124, ptr noundef %127) #20
  %128 = load i64, ptr %37, align 8
  %129 = and i64 %128, 65535
  %130 = icmp eq i64 %129, 141
  br i1 %130, label %131, label %256

131:                                              ; preds = %123
  tail call fastcc void @add_equivalence(ptr noundef nonnull %72, ptr noundef nonnull %37) #20
  br label %256

132:                                              ; preds = %114
  %133 = icmp eq ptr %71, null
  br i1 %133, label %147, label %134

134:                                              ; preds = %132
  %135 = load i32, ptr %71, align 8, !tbaa !5
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.value_range_d, ptr %71, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !11
  %140 = getelementptr inbounds %struct.value_range_d, ptr %71, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !16
  %142 = tail call fastcc i32 @compare_values(ptr noundef %139, ptr noundef %141) #20
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load ptr, ptr %138, align 8, !tbaa !11
  %146 = load ptr, ptr %140, align 8, !tbaa !16
  br label %147

147:                                              ; preds = %132, %134, %137, %144
  %148 = phi ptr [ %146, %144 ], [ %37, %137 ], [ %37, %134 ], [ %37, %132 ]
  %149 = phi ptr [ %145, %144 ], [ %37, %137 ], [ %37, %134 ], [ %37, %132 ]
  %150 = load i64, ptr %39, align 8
  %151 = trunc i64 %150 to i32
  %152 = and i32 %151, 65535
  %153 = add nsw i32 %152, -6
  %154 = icmp ult i32 %153, 3
  br i1 %154, label %155, label %163

155:                                              ; preds = %147
  %156 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %149) #20, !range !15
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %155
  %159 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %148) #20, !range !15
  %160 = icmp eq i8 %159, 0
  %161 = select i1 %160, ptr %148, ptr %37
  %162 = select i1 %160, ptr %149, ptr %37
  br label %163

163:                                              ; preds = %158, %147, %155
  %164 = phi ptr [ %148, %155 ], [ %148, %147 ], [ %161, %158 ]
  %165 = phi ptr [ %149, %155 ], [ %149, %147 ], [ %162, %158 ]
  %166 = load ptr, ptr %72, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %165, ptr noundef %164, ptr noundef %166) #20
  br label %256

167:                                              ; preds = %114
  %168 = icmp eq i32 %34, 97
  %169 = add i32 %34, -97
  %170 = icmp ult i32 %169, 2
  br i1 %170, label %171, label %211

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 13
  %173 = load ptr, ptr %172, align 8, !tbaa !13
  %174 = icmp eq ptr %71, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %171
  %176 = load i32, ptr %71, align 8, !tbaa !5
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.value_range_d, ptr %71, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !16
  br label %181

181:                                              ; preds = %171, %175, %178
  %182 = phi ptr [ %180, %178 ], [ %37, %175 ], [ %37, %171 ]
  br i1 %168, label %183, label %186

183:                                              ; preds = %181
  %184 = tail call fastcc i32 @compare_values(ptr noundef %182, ptr noundef %173) #20
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %183, %181
  %187 = load i64, ptr %182, align 8
  %188 = and i64 %187, 65535
  %189 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !23
  %191 = icmp ne i32 %190, 1
  %192 = and i64 %187, 134217728
  %193 = icmp eq i64 %192, 0
  %194 = or i1 %191, %193
  br i1 %194, label %196, label %195

195:                                              ; preds = %186, %183
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %256

196:                                              ; preds = %186
  br i1 %168, label %197, label %208

197:                                              ; preds = %196
  %198 = tail call ptr @build_int_cst(ptr noundef nonnull %39, i64 noundef 1) #21
  %199 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %39, ptr noundef nonnull %182, ptr noundef %198) #21
  %200 = load i64, ptr %199, align 8
  %201 = and i64 %200, 65535
  %202 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !23
  %204 = add i32 %203, -4
  %205 = icmp ult i32 %204, 7
  br i1 %205, label %206, label %208

206:                                              ; preds = %197
  %207 = or i64 %200, 8388608
  store i64 %207, ptr %199, align 8
  br label %208

208:                                              ; preds = %197, %206, %196
  %209 = phi ptr [ %182, %196 ], [ %199, %206 ], [ %199, %197 ]
  %210 = load ptr, ptr %72, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %173, ptr noundef nonnull %209, ptr noundef %210) #20
  br label %256

211:                                              ; preds = %167
  %212 = icmp eq i32 %34, 99
  %213 = add i32 %34, -99
  %214 = icmp ult i32 %213, 2
  br i1 %214, label %215, label %255

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 14
  %217 = load ptr, ptr %216, align 8, !tbaa !13
  %218 = icmp eq ptr %71, null
  br i1 %218, label %225, label %219

219:                                              ; preds = %215
  %220 = load i32, ptr %71, align 8, !tbaa !5
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.value_range_d, ptr %71, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !11
  br label %225

225:                                              ; preds = %215, %219, %222
  %226 = phi ptr [ %224, %222 ], [ %37, %219 ], [ %37, %215 ]
  br i1 %212, label %227, label %230

227:                                              ; preds = %225
  %228 = tail call fastcc i32 @compare_values(ptr noundef %226, ptr noundef %217) #20
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %227, %225
  %231 = load i64, ptr %226, align 8
  %232 = and i64 %231, 65535
  %233 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !23
  %235 = icmp ne i32 %234, 1
  %236 = and i64 %231, 134217728
  %237 = icmp eq i64 %236, 0
  %238 = or i1 %235, %237
  br i1 %238, label %240, label %239

239:                                              ; preds = %230, %227
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %256

240:                                              ; preds = %230
  br i1 %212, label %241, label %252

241:                                              ; preds = %240
  %242 = tail call ptr @build_int_cst(ptr noundef nonnull %39, i64 noundef 1) #21
  %243 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %39, ptr noundef nonnull %226, ptr noundef %242) #21
  %244 = load i64, ptr %243, align 8
  %245 = and i64 %244, 65535
  %246 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !23
  %248 = add i32 %247, -4
  %249 = icmp ult i32 %248, 7
  br i1 %249, label %250, label %252

250:                                              ; preds = %241
  %251 = or i64 %244, 8388608
  store i64 %251, ptr %243, align 8
  br label %252

252:                                              ; preds = %241, %250, %240
  %253 = phi ptr [ %226, %240 ], [ %243, %250 ], [ %243, %241 ]
  %254 = load ptr, ptr %72, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %253, ptr noundef %217, ptr noundef %254) #20
  br label %256

255:                                              ; preds = %211
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1654, ptr noundef nonnull @.str.28) #21
  br label %256

256:                                              ; preds = %123, %131, %208, %195, %239, %252, %255, %163, %109, %113, %111
  %257 = tail call fastcc ptr @get_value_range(ptr noundef %4) #20
  %258 = load i32, ptr %0, align 8, !tbaa !5
  switch i32 %258, label %259 [
    i32 3, label %431
    i32 0, label %431
  ]

259:                                              ; preds = %256
  %260 = load i32, ptr %257, align 8, !tbaa !5
  switch i32 %260, label %261 [
    i32 3, label %431
    i32 0, label %431
  ]

261:                                              ; preds = %259
  %262 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !15
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %431

264:                                              ; preds = %261
  %265 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %257) #20, !range !15
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %267, label %431

267:                                              ; preds = %264
  %268 = load i32, ptr %257, align 8, !tbaa !5
  switch i32 %268, label %431 [
    i32 1, label %269
    i32 2, label %294
  ]

269:                                              ; preds = %267
  %270 = load i32, ptr %0, align 8, !tbaa !5
  switch i32 %270, label %431 [
    i32 1, label %271
    i32 2, label %297
  ]

271:                                              ; preds = %269
  %272 = tail call fastcc zeroext i8 @value_ranges_intersect_p(ptr noundef nonnull %257, ptr noundef nonnull %0) #20, !range !15
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %293, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !11
  %277 = getelementptr inbounds %struct.value_range_d, ptr %257, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !11
  %279 = tail call fastcc i32 @compare_values(ptr noundef %276, ptr noundef %278) #20
  %280 = icmp eq i32 %279, -1
  %281 = select i1 %280, ptr %277, ptr %275
  %282 = load ptr, ptr %281, align 8, !tbaa !11
  %283 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !16
  %285 = getelementptr inbounds %struct.value_range_d, ptr %257, i64 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !16
  %287 = tail call fastcc i32 @compare_values(ptr noundef %284, ptr noundef %286) #20
  %288 = icmp eq i32 %287, 1
  %289 = select i1 %288, ptr %285, ptr %283
  %290 = load ptr, ptr %289, align 8, !tbaa !16
  %291 = load i32, ptr %0, align 8, !tbaa !5
  %292 = load ptr, ptr %72, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef %291, ptr noundef %282, ptr noundef %290, ptr noundef %292) #20
  br label %431

293:                                              ; preds = %271
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %431

294:                                              ; preds = %267
  %295 = load i32, ptr %0, align 8, !tbaa !5
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %297, label %431

297:                                              ; preds = %269, %294
  %298 = getelementptr inbounds %struct.value_range_d, ptr %257, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !11
  %300 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !11
  %302 = tail call fastcc i32 @compare_values(ptr noundef %299, ptr noundef %301) #20
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %297
  %305 = getelementptr inbounds %struct.value_range_d, ptr %257, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !16
  %307 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !16
  %309 = tail call fastcc i32 @compare_values(ptr noundef %306, ptr noundef %308) #20
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %304
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %431

312:                                              ; preds = %304, %297
  %313 = load i32, ptr %0, align 8, !tbaa !5
  %314 = icmp eq i32 %313, 2
  %315 = select i1 %314, ptr %300, ptr %298
  %316 = select i1 %314, ptr %0, ptr %257
  %317 = select i1 %314, ptr %298, ptr %300
  %318 = select i1 %314, ptr %257, ptr %0
  %319 = getelementptr inbounds %struct.value_range_d, ptr %318, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !16
  %321 = load ptr, ptr %317, align 8, !tbaa !11
  %322 = getelementptr inbounds %struct.value_range_d, ptr %316, i64 0, i32 2
  %323 = load ptr, ptr %322, align 8, !tbaa !16
  %324 = load ptr, ptr %315, align 8, !tbaa !11
  %325 = tail call fastcc i32 @compare_values(ptr noundef %323, ptr noundef %320) #20
  %326 = icmp eq i32 %325, -1
  br i1 %326, label %327, label %338

327:                                              ; preds = %312
  %328 = tail call fastcc i32 @compare_values(ptr noundef %324, ptr noundef %321) #20
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %338

330:                                              ; preds = %327
  %331 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %321) #20, !range !15
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %330
  %334 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %320) #20, !range !15
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %336, label %431

336:                                              ; preds = %333, %330
  %337 = load ptr, ptr %72, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %321, ptr noundef %320, ptr noundef %337) #20
  br label %431

338:                                              ; preds = %327, %312
  %339 = tail call fastcc i32 @compare_values(ptr noundef %324, ptr noundef %320) #20
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %344, label %341

341:                                              ; preds = %338
  %342 = tail call fastcc i32 @compare_values(ptr noundef %323, ptr noundef %321) #20
  %343 = icmp eq i32 %342, -1
  br i1 %343, label %344, label %346

344:                                              ; preds = %341, %338
  %345 = load ptr, ptr %72, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %321, ptr noundef %320, ptr noundef %345) #20
  br label %431

346:                                              ; preds = %341
  %347 = tail call fastcc i32 @compare_values(ptr noundef %323, ptr noundef %321) #20
  %348 = icmp ult i32 %347, 2
  br i1 %348, label %349, label %388

349:                                              ; preds = %346
  %350 = tail call fastcc i32 @compare_values(ptr noundef %323, ptr noundef %320) #20
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %352, label %388

352:                                              ; preds = %349
  %353 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %323) #20, !range !15
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %356, label %355

355:                                              ; preds = %352
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1819, ptr noundef nonnull @.str.28) #21
  br label %356

356:                                              ; preds = %352, %355
  %357 = getelementptr inbounds %struct.tree_common, ptr %323, i64 0, i32 2
  %358 = load ptr, ptr %357, align 8, !tbaa !13
  %359 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %358) #20, !range !15
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %373, label %361

361:                                              ; preds = %356
  %362 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %323) #20, !range !15
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %373, label %364

364:                                              ; preds = %361
  %365 = load ptr, ptr %298, align 8, !tbaa !11
  %366 = getelementptr inbounds %struct.tree_common, ptr %365, i64 0, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !13
  %368 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %367) #20, !range !15
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %364
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %431

371:                                              ; preds = %364
  %372 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef %367) #20
  br label %385

373:                                              ; preds = %361, %356
  %374 = load ptr, ptr %298, align 8, !tbaa !11
  %375 = getelementptr inbounds %struct.tree_common, ptr %374, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !13
  %377 = load i64, ptr %376, align 8
  %378 = trunc i64 %377 to i16
  switch i16 %378, label %379 [
    i16 10, label %382
    i16 12, label %382
  ]

379:                                              ; preds = %373
  %380 = tail call ptr @build_int_cst(ptr noundef nonnull %376, i64 noundef 1) #21
  %381 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %376, ptr noundef nonnull %323, ptr noundef %380) #21
  br label %385

382:                                              ; preds = %373, %373
  %383 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 0) #21
  %384 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %376, ptr noundef nonnull %323, ptr noundef %383) #21
  br label %385

385:                                              ; preds = %379, %382, %371
  %386 = phi ptr [ %372, %371 ], [ %384, %382 ], [ %381, %379 ]
  %387 = load ptr, ptr %72, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %386, ptr noundef %320, ptr noundef %387) #20
  br label %431

388:                                              ; preds = %346, %349
  %389 = tail call fastcc i32 @compare_values(ptr noundef %324, ptr noundef %321) #20
  %390 = icmp eq i32 %389, 1
  br i1 %390, label %391, label %431

391:                                              ; preds = %388
  %392 = tail call fastcc i32 @compare_values(ptr noundef %324, ptr noundef %320) #20
  %393 = add i32 %392, 1
  %394 = icmp ult i32 %393, 2
  br i1 %394, label %395, label %431

395:                                              ; preds = %391
  %396 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %324) #20, !range !15
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %395
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1847, ptr noundef nonnull @.str.28) #21
  br label %399

399:                                              ; preds = %395, %398
  %400 = getelementptr inbounds %struct.tree_common, ptr %324, i64 0, i32 2
  %401 = load ptr, ptr %400, align 8, !tbaa !13
  %402 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %401) #20, !range !15
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %416, label %404

404:                                              ; preds = %399
  %405 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %324) #20, !range !15
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %416, label %407

407:                                              ; preds = %404
  %408 = load ptr, ptr %298, align 8, !tbaa !11
  %409 = getelementptr inbounds %struct.tree_common, ptr %408, i64 0, i32 2
  %410 = load ptr, ptr %409, align 8, !tbaa !13
  %411 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %410) #20, !range !15
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %407
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %431

414:                                              ; preds = %407
  %415 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef %410) #20
  br label %428

416:                                              ; preds = %404, %399
  %417 = load ptr, ptr %298, align 8, !tbaa !11
  %418 = getelementptr inbounds %struct.tree_common, ptr %417, i64 0, i32 2
  %419 = load ptr, ptr %418, align 8, !tbaa !13
  %420 = load i64, ptr %419, align 8
  %421 = trunc i64 %420 to i16
  switch i16 %421, label %422 [
    i16 10, label %425
    i16 12, label %425
  ]

422:                                              ; preds = %416
  %423 = tail call ptr @build_int_cst(ptr noundef nonnull %419, i64 noundef 1) #21
  %424 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %419, ptr noundef nonnull %324, ptr noundef %423) #21
  br label %428

425:                                              ; preds = %416, %416
  %426 = tail call ptr @size_int_kind(i64 noundef -1, i32 noundef 0) #21
  %427 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %419, ptr noundef nonnull %324, ptr noundef %426) #21
  br label %428

428:                                              ; preds = %422, %425, %414
  %429 = phi ptr [ %415, %414 ], [ %427, %425 ], [ %424, %422 ]
  %430 = load ptr, ptr %72, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %321, ptr noundef %429, ptr noundef %430) #20
  br label %431

431:                                              ; preds = %269, %267, %370, %413, %293, %274, %311, %294, %336, %333, %385, %391, %428, %388, %344, %261, %264, %256, %256, %259, %259, %56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_ssa_name(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @get_value_range(ptr noundef %1) #20
  %4 = load i32, ptr %3, align 8, !tbaa !5
  switch i32 %4, label %5 [
    i32 0, label %6
    i32 3, label %6
  ]

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
define internal fastcc void @extract_range_from_binary_expr(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
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
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = select i1 %13, ptr %11, ptr %3
  %18 = select i1 %14, ptr %12, ptr %4
  %19 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %1, ptr noundef %2, ptr noundef %17, ptr noundef %18) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %19) #21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %19) #20, !range !15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %19, ptr noundef nonnull %19, ptr noundef null) #20
  br label %629

28:                                               ; preds = %24, %21, %16, %10
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

29:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %30 = load i64, ptr %3, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 141
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %34, i64 32, i1 false), !tbaa.struct !84
  br label %40

35:                                               ; preds = %29
  %36 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %3) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

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
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %45, i64 32, i1 false), !tbaa.struct !84
  br label %51

46:                                               ; preds = %40
  %47 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %4) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

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
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  tail call fastcc void @set_value_range_to_undefined(ptr noundef %0) #20
  br label %629

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
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %6) #20, !range !15
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68, %65, %59
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

72:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %68
  %73 = load i64, ptr %2, align 8
  %74 = trunc i64 %73 to i16
  switch i16 %74, label %75 [
    i16 10, label %85
    i16 12, label %85
  ]

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !13
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i16
  switch i16 %79, label %80 [
    i16 10, label %85
    i16 12, label %85
  ]

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !13
  %83 = load i64, ptr %82, align 8
  %84 = trunc i64 %83 to i16
  switch i16 %84, label %121 [
    i16 10, label %85
    i16 12, label %85
  ]

85:                                               ; preds = %80, %80, %75, %75, %72, %72
  %86 = and i32 %1, -2
  %87 = icmp eq i32 %86, 80
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %6) #20, !range !15
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %7) #20, !range !15
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call fastcc void @set_value_range_to_nonnull(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %629

95:                                               ; preds = %91, %88
  %96 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %6) #20, !range !15
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %7) #20, !range !15
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  tail call fastcc void @set_value_range_to_null(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %629

102:                                              ; preds = %98, %95
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

103:                                              ; preds = %85
  %104 = icmp eq i32 %1, 66
  br i1 %104, label %106, label %105

105:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 2171, ptr noundef nonnull @.str.28) #21
  br label %106

106:                                              ; preds = %103, %105
  %107 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %6) #20, !range !15
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %7) #20, !range !15
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109, %106
  tail call fastcc void @set_value_range_to_nonnull(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %629

113:                                              ; preds = %109
  %114 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %6) #20, !range !15
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %7) #20, !range !15
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  tail call fastcc void @set_value_range_to_null(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %629

120:                                              ; preds = %116, %113
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

121:                                              ; preds = %80
  %122 = add nsw i32 %1, -93
  %123 = icmp ult i32 %122, 2
  br i1 %123, label %124, label %207

124:                                              ; preds = %121
  switch i32 %1, label %177 [
    i32 93, label %125
    i32 94, label %151
  ]

125:                                              ; preds = %124
  %126 = icmp eq i32 %52, 1
  br i1 %126, label %127, label %137

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !11
  %130 = tail call i32 @integer_zerop(ptr noundef %129) #21
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !16
  %135 = tail call i32 @integer_zerop(ptr noundef %134) #21
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %132, %127, %125
  %138 = icmp eq i32 %54, 1
  br i1 %138, label %139, label %177

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !11
  %142 = tail call i32 @integer_zerop(ptr noundef %141) #21
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %177, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !16
  %147 = tail call i32 @integer_zerop(ptr noundef %146) #21
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %177, label %149

149:                                              ; preds = %144, %132
  %150 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 0) #21
  br label %579

151:                                              ; preds = %124
  %152 = icmp eq i32 %52, 1
  br i1 %152, label %153, label %163

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !11
  %156 = tail call i32 @integer_onep(ptr noundef %155) #21
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !16
  %161 = tail call i32 @integer_onep(ptr noundef %160) #21
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %158, %153, %151
  %164 = icmp eq i32 %54, 1
  br i1 %164, label %165, label %177

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !11
  %168 = tail call i32 @integer_onep(ptr noundef %167) #21
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !16
  %173 = tail call i32 @integer_onep(ptr noundef %172) #21
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %170, %158
  %176 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 1) #21
  br label %579

177:                                              ; preds = %137, %139, %144, %124, %170, %165, %163
  %178 = icmp ne i32 %52, 3
  %179 = icmp ne i32 %54, 3
  %180 = select i1 %178, i1 %179, i1 false
  %181 = icmp eq i32 %52, %54
  %182 = select i1 %180, i1 %181, i1 false
  br i1 %182, label %183, label %206

183:                                              ; preds = %177
  %184 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %6) #20, !range !15
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %183
  %187 = call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %6) #20, !range !15
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %206

189:                                              ; preds = %186
  %190 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !15
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %189
  %193 = call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %7) #20, !range !15
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !11
  %198 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !11
  %200 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %197, ptr noundef %199) #21
  %201 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !16
  %203 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !16
  %205 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %202, ptr noundef %204) #21
  br label %579

206:                                              ; preds = %192, %189, %186, %183, %177
  tail call fastcc void @set_value_range_to_truthvalue(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %629

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
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !11
  %216 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !11
  %218 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %215, ptr noundef %217) #20
  %219 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !16
  %221 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !16
  %223 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %220, ptr noundef %222) #20
  br i1 %208, label %224, label %579

224:                                              ; preds = %213
  %225 = load i64, ptr %218, align 8
  %226 = and i64 %225, 134217728
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %584, label %228

228:                                              ; preds = %224
  %229 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %218) #20, !range !15
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %584

231:                                              ; preds = %228
  %232 = load i64, ptr %223, align 8
  %233 = and i64 %232, 134217728
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %584, label %235

235:                                              ; preds = %231
  %236 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %223) #20, !range !15
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %584

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.tree_common, ptr %218, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !13
  %241 = getelementptr inbounds %struct.tree_int_cst, ptr %218, i64 0, i32 1
  %242 = load i64, ptr %241, align 8, !tbaa !13
  %243 = getelementptr inbounds %struct.tree_int_cst, ptr %218, i64 0, i32 1, i32 1
  %244 = load i64, ptr %243, align 8, !tbaa !13
  %245 = tail call ptr @build_int_cst_wide(ptr noundef %240, i64 noundef %242, i64 noundef %244) #21
  %246 = getelementptr inbounds %struct.tree_common, ptr %223, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !13
  %248 = getelementptr inbounds %struct.tree_int_cst, ptr %223, i64 0, i32 1
  %249 = load i64, ptr %248, align 8, !tbaa !13
  %250 = getelementptr inbounds %struct.tree_int_cst, ptr %223, i64 0, i32 1, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !13
  %252 = tail call ptr @build_int_cst_wide(ptr noundef %247, i64 noundef %249, i64 noundef %251) #21
  br label %579

253:                                              ; preds = %207
  %254 = icmp eq i32 %1, 65
  %255 = icmp eq i32 %1, 76
  switch i32 %1, label %578 [
    i32 84, label %256
    i32 76, label %256
    i32 70, label %256
    i32 69, label %256
    i32 68, label %256
    i32 67, label %256
    i32 65, label %256
    i32 64, label %465
    i32 89, label %479
    i32 87, label %514
  ]

256:                                              ; preds = %253, %253, %253, %253, %253, %253, %253
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  %257 = icmp eq i32 %52, 2
  %258 = and i1 %254, %257
  br i1 %258, label %259, label %272

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
  br i1 %270, label %357, label %271

271:                                              ; preds = %259
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %464

272:                                              ; preds = %256
  switch i32 %1, label %306 [
    i32 84, label %273
    i32 76, label %292
    i32 70, label %292
    i32 69, label %292
    i32 68, label %292
    i32 67, label %292
  ]

273:                                              ; preds = %272
  %274 = icmp eq i32 %54, 2
  br i1 %274, label %291, label %275

275:                                              ; preds = %273
  %276 = call fastcc zeroext i8 @vrp_expr_computes_nonnegative(ptr noundef nonnull %4, ptr noundef nonnull %9) #20, !range !15
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %291, label %278

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !16
  %281 = getelementptr inbounds %struct.tree_common, ptr %280, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !13
  %283 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %284 = load i32, ptr %283, align 4
  %285 = and i32 %284, 1023
  %286 = add nsw i32 %285, -1
  %287 = sext i32 %286 to i64
  %288 = call ptr @build_int_cst(ptr noundef %282, i64 noundef %287) #21
  %289 = call fastcc i32 @operand_less_p(ptr noundef %288, ptr noundef %280) #20
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %306, label %291

291:                                              ; preds = %278, %275, %273
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %464

292:                                              ; preds = %272, %272, %272, %272, %272
  %293 = icmp eq i32 %52, 1
  br i1 %293, label %294, label %297

294:                                              ; preds = %292
  %295 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %6) #20, !range !15
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %306, label %297

297:                                              ; preds = %294, %292
  %298 = icmp eq i32 %54, 1
  br i1 %298, label %299, label %305

299:                                              ; preds = %297
  %300 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !15
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %7) #20, !range !15
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %312, label %305

305:                                              ; preds = %302, %299, %297
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %464

306:                                              ; preds = %272, %294, %278
  %307 = add nsw i32 %1, -67
  %308 = icmp ult i32 %307, 4
  %309 = or i1 %255, %308
  %310 = icmp eq i32 %52, 1
  %311 = and i1 %309, %310
  br i1 %311, label %319, label %357

312:                                              ; preds = %302
  store i32 1, ptr %6, align 8, !tbaa !5
  %313 = load ptr, ptr %76, align 8, !tbaa !13
  %314 = tail call fastcc ptr @vrp_val_min(ptr noundef %313) #20
  %315 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  store ptr %314, ptr %315, align 8, !tbaa !11
  %316 = load ptr, ptr %81, align 8, !tbaa !13
  %317 = tail call fastcc ptr @vrp_val_max(ptr noundef %316) #20
  %318 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  store ptr %317, ptr %318, align 8, !tbaa !16
  switch i32 %1, label %357 [
    i32 76, label %321
    i32 70, label %321
    i32 69, label %321
    i32 68, label %321
    i32 67, label %321
  ]

319:                                              ; preds = %306
  %320 = icmp eq i32 %54, 1
  br i1 %320, label %321, label %327

321:                                              ; preds = %312, %312, %312, %312, %312, %319
  %322 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !15
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %7) #20, !range !15
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %366, label %327

327:                                              ; preds = %324, %321, %319
  %328 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8
  %330 = getelementptr inbounds %struct.tree_common, ptr %329, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !13
  %332 = call ptr @build_int_cst(ptr noundef %331, i64 noundef 0) #21
  store i8 0, ptr %9, align 1, !tbaa !13
  %333 = call fastcc zeroext i8 @vrp_expr_computes_nonnegative(ptr noundef nonnull %4, ptr noundef nonnull %9) #20, !range !15
  %334 = icmp eq i8 %333, 0
  %335 = load i8, ptr %9, align 1
  %336 = icmp ne i8 %335, 0
  %337 = select i1 %334, i1 true, i1 %336
  %338 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %339 = load ptr, ptr %338, align 8
  br i1 %337, label %353, label %340

340:                                              ; preds = %327
  %341 = call fastcc i32 @compare_values(ptr noundef %339, ptr noundef %332) #20
  %342 = icmp eq i32 %341, -1
  %343 = icmp ult i32 %341, 2
  %344 = select i1 %343, ptr %339, ptr null
  %345 = select i1 %342, ptr %332, ptr %344
  %346 = add i32 %341, -2
  %347 = icmp ult i32 %346, -3
  %348 = call fastcc i32 @compare_values(ptr noundef nonnull %329, ptr noundef %332) #20
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %354, label %350

350:                                              ; preds = %340
  %351 = add i32 %348, 1
  %352 = icmp ult i32 %351, 2
  br i1 %352, label %354, label %356

353:                                              ; preds = %327
  call fastcc void @abs_extent_range(ptr noundef %0, ptr noundef nonnull %329, ptr noundef %339) #20
  br label %464

354:                                              ; preds = %350, %340
  %355 = phi ptr [ %332, %340 ], [ %329, %350 ]
  br i1 %347, label %356, label %460

356:                                              ; preds = %350, %354
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %464

357:                                              ; preds = %312, %259, %306
  %358 = phi i1 [ %310, %306 ], [ true, %312 ], [ false, %259 ]
  %359 = phi i32 [ %52, %306 ], [ 1, %312 ], [ 2, %259 ]
  %360 = icmp eq i32 %359, 2
  %361 = and i1 %254, %360
  %362 = or i1 %358, %361
  %363 = icmp eq i32 %359, %54
  %364 = select i1 %362, i1 %363, i1 false
  br i1 %364, label %366, label %365

365:                                              ; preds = %357
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 2416, ptr noundef nonnull @.str.28) #21
  br label %366

366:                                              ; preds = %324, %357, %365
  %367 = phi i32 [ 1, %324 ], [ %359, %357 ], [ %359, %365 ]
  store i8 0, ptr %9, align 1, !tbaa !13
  %368 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !11
  %370 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %371 = load ptr, ptr %370, align 8, !tbaa !11
  %372 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %369, ptr noundef %371) #20
  store ptr %372, ptr %8, align 16, !tbaa !12
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %375

374:                                              ; preds = %366
  store i8 1, ptr %9, align 1, !tbaa !13
  br label %375

375:                                              ; preds = %374, %366
  %376 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %377 = load ptr, ptr %376, align 8, !tbaa !16
  %378 = icmp eq ptr %377, %371
  br i1 %378, label %379, label %381

379:                                              ; preds = %375
  %380 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 1
  store ptr null, ptr %380, align 8, !tbaa !12
  br label %386

381:                                              ; preds = %375
  %382 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %369, ptr noundef %377) #20
  %383 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 1
  store ptr %382, ptr %383, align 8, !tbaa !12
  %384 = icmp eq ptr %382, null
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  store i8 1, ptr %9, align 1, !tbaa !13
  br label %386

386:                                              ; preds = %381, %385, %379
  %387 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %388 = load ptr, ptr %387, align 8, !tbaa !16
  %389 = icmp eq ptr %388, %369
  br i1 %389, label %395, label %390

390:                                              ; preds = %386
  %391 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %388, ptr noundef %371) #20
  %392 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 2
  store ptr %391, ptr %392, align 16, !tbaa !12
  %393 = icmp eq ptr %391, null
  br i1 %393, label %394, label %397

394:                                              ; preds = %390
  store i8 1, ptr %9, align 1, !tbaa !13
  br label %397

395:                                              ; preds = %386
  %396 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 2
  store ptr null, ptr %396, align 16, !tbaa !12
  br label %398

397:                                              ; preds = %390, %394
  br i1 %378, label %398, label %400

398:                                              ; preds = %395, %397
  %399 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 3
  store ptr null, ptr %399, align 8, !tbaa !12
  br label %405

400:                                              ; preds = %397
  %401 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %388, ptr noundef %377) #20
  %402 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 3
  store ptr %401, ptr %402, align 8, !tbaa !12
  %403 = icmp eq ptr %401, null
  br i1 %403, label %404, label %405

404:                                              ; preds = %400
  store i8 1, ptr %9, align 1, !tbaa !13
  br label %408

405:                                              ; preds = %400, %398
  %406 = load i8, ptr %9, align 1, !tbaa !13
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %409, label %408

408:                                              ; preds = %404, %405
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %464

409:                                              ; preds = %405, %455
  %410 = phi ptr [ %457, %455 ], [ %372, %405 ]
  %411 = phi ptr [ %456, %455 ], [ %372, %405 ]
  %412 = phi i64 [ %458, %455 ], [ 1, %405 ]
  %413 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %410) #21
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %460, label %415

415:                                              ; preds = %409
  %416 = load i64, ptr %410, align 8
  %417 = and i64 %416, 134217728
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %422, label %419

419:                                              ; preds = %415
  %420 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %410) #20, !range !15
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %460, label %422

422:                                              ; preds = %419, %415
  %423 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %411) #21
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %460, label %425

425:                                              ; preds = %422
  %426 = load i64, ptr %411, align 8
  %427 = and i64 %426, 134217728
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %425
  %430 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %411) #20, !range !15
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %460, label %432

432:                                              ; preds = %429, %425
  %433 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 %412
  %434 = load ptr, ptr %433, align 8, !tbaa !12
  %435 = icmp eq ptr %434, null
  br i1 %435, label %455, label %436

436:                                              ; preds = %432
  %437 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %434) #21
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %460, label %439

439:                                              ; preds = %436
  %440 = load i64, ptr %434, align 8
  %441 = and i64 %440, 134217728
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %446, label %443

443:                                              ; preds = %439
  %444 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %434) #20, !range !15
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %460, label %446

446:                                              ; preds = %443, %439
  %447 = call fastcc i32 @compare_values(ptr noundef nonnull %434, ptr noundef nonnull %410) #20
  %448 = icmp eq i32 %447, -1
  %449 = load ptr, ptr %433, align 8, !tbaa !12
  %450 = select i1 %448, ptr %449, ptr %410
  %451 = call fastcc i32 @compare_values(ptr noundef %449, ptr noundef nonnull %411) #20
  %452 = icmp eq i32 %451, 1
  br i1 %452, label %453, label %455

453:                                              ; preds = %446
  %454 = load ptr, ptr %433, align 8, !tbaa !12
  br label %455

455:                                              ; preds = %432, %453, %446
  %456 = phi ptr [ %454, %453 ], [ %411, %446 ], [ %411, %432 ]
  %457 = phi ptr [ %450, %453 ], [ %450, %446 ], [ %410, %432 ]
  %458 = add nuw nsw i64 %412, 1
  %459 = icmp eq i64 %458, 4
  br i1 %459, label %460, label %409, !llvm.loop !162

460:                                              ; preds = %455, %429, %422, %419, %409, %443, %436, %354
  %461 = phi ptr [ %345, %354 ], [ %411, %429 ], [ %411, %422 ], [ %411, %419 ], [ %411, %409 ], [ %456, %455 ], [ %434, %443 ], [ %434, %436 ]
  %462 = phi ptr [ %355, %354 ], [ %410, %429 ], [ %410, %422 ], [ %410, %419 ], [ %410, %409 ], [ %457, %455 ], [ %434, %443 ], [ %434, %436 ]
  %463 = phi i32 [ 1, %354 ], [ %367, %436 ], [ %367, %443 ], [ %367, %409 ], [ %367, %419 ], [ %367, %422 ], [ %367, %429 ], [ %367, %455 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  br label %579

464:                                              ; preds = %353, %356, %408, %305, %291, %271
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  br label %629

465:                                              ; preds = %253
  %466 = icmp eq i32 %52, 2
  br i1 %466, label %467, label %468

467:                                              ; preds = %465
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

468:                                              ; preds = %465
  %469 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %470 = load ptr, ptr %469, align 8, !tbaa !11
  %471 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %472 = load ptr, ptr %471, align 8, !tbaa !16
  %473 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef 64, ptr noundef %470, ptr noundef %472) #20
  %474 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %475 = load ptr, ptr %474, align 8, !tbaa !16
  %476 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !11
  %478 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef 64, ptr noundef %475, ptr noundef %477) #20
  br label %579

479:                                              ; preds = %253
  %480 = icmp eq i32 %52, 1
  br i1 %480, label %481, label %496

481:                                              ; preds = %479
  %482 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %483 = load ptr, ptr %482, align 8, !tbaa !11
  %484 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !16
  %486 = icmp eq ptr %483, %485
  br i1 %486, label %487, label %496

487:                                              ; preds = %481
  %488 = load i64, ptr %483, align 8
  %489 = and i64 %488, 134283263
  %490 = icmp eq i64 %489, 23
  br i1 %490, label %491, label %496

491:                                              ; preds = %487
  %492 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %483) #21
  %493 = icmp sgt i32 %492, -1
  br i1 %493, label %494, label %496

494:                                              ; preds = %491
  %495 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 0) #21
  br label %579

496:                                              ; preds = %491, %487, %481, %479
  %497 = icmp eq i32 %54, 1
  br i1 %497, label %498, label %513

498:                                              ; preds = %496
  %499 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !11
  %501 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %502 = load ptr, ptr %501, align 8, !tbaa !16
  %503 = icmp eq ptr %500, %502
  br i1 %503, label %504, label %513

504:                                              ; preds = %498
  %505 = load i64, ptr %500, align 8
  %506 = and i64 %505, 134283263
  %507 = icmp eq i64 %506, 23
  br i1 %507, label %508, label %513

508:                                              ; preds = %504
  %509 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %500) #21
  %510 = icmp sgt i32 %509, -1
  br i1 %510, label %511, label %513

511:                                              ; preds = %508
  %512 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 0) #21
  br label %579

513:                                              ; preds = %508, %504, %498, %496
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

514:                                              ; preds = %253
  %515 = icmp eq i32 %52, 1
  %516 = icmp eq i32 %54, 1
  %517 = select i1 %515, i1 %516, i1 false
  br i1 %517, label %518, label %577

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %520 = load ptr, ptr %519, align 8, !tbaa !11
  %521 = load i64, ptr %520, align 8
  %522 = and i64 %521, 65535
  %523 = icmp eq i64 %522, 23
  br i1 %523, label %524, label %577

524:                                              ; preds = %518
  %525 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !11
  %527 = load i64, ptr %526, align 8
  %528 = and i64 %527, 65535
  %529 = icmp eq i64 %528, 23
  br i1 %529, label %530, label %577

530:                                              ; preds = %524
  %531 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %532 = load ptr, ptr %531, align 8, !tbaa !16
  %533 = load i64, ptr %532, align 8
  %534 = and i64 %533, 65535
  %535 = icmp eq i64 %534, 23
  br i1 %535, label %536, label %577

536:                                              ; preds = %530
  %537 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %538 = load ptr, ptr %537, align 8, !tbaa !16
  %539 = load i64, ptr %538, align 8
  %540 = and i64 %539, 65535
  %541 = icmp eq i64 %540, 23
  br i1 %541, label %542, label %577

542:                                              ; preds = %536
  %543 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %520) #21
  %544 = icmp sgt i32 %543, -1
  br i1 %544, label %545, label %577

545:                                              ; preds = %542
  %546 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %526) #21
  %547 = icmp sgt i32 %546, -1
  br i1 %547, label %548, label %577

548:                                              ; preds = %545
  %549 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %532) #21
  %550 = extractvalue { i64, i64 } %549, 0
  %551 = extractvalue { i64, i64 } %549, 1
  %552 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %538) #21
  %553 = extractvalue { i64, i64 } %552, 0
  %554 = extractvalue { i64, i64 } %552, 1
  %555 = or i64 %553, %550
  %556 = or i64 %554, %551
  %557 = icmp eq i64 %556, 0
  br i1 %557, label %564, label %558

558:                                              ; preds = %548
  %559 = tail call i32 @floor_log2(i64 noundef %556) #21
  %560 = zext nneg i32 %559 to i64
  %561 = shl nsw i64 -1, %560
  %562 = xor i64 %561, -1
  %563 = or i64 %556, %562
  br label %572

564:                                              ; preds = %548
  %565 = icmp eq i64 %555, 0
  br i1 %565, label %572, label %566

566:                                              ; preds = %564
  %567 = tail call i32 @floor_log2(i64 noundef %555) #21
  %568 = zext nneg i32 %567 to i64
  %569 = shl nsw i64 -1, %568
  %570 = xor i64 %569, -1
  %571 = or i64 %555, %570
  br label %572

572:                                              ; preds = %564, %566, %558
  %573 = phi i64 [ %563, %558 ], [ 0, %566 ], [ 0, %564 ]
  %574 = phi i64 [ -1, %558 ], [ %571, %566 ], [ 0, %564 ]
  %575 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef 81, ptr noundef nonnull %520, ptr noundef nonnull %526) #20
  %576 = tail call ptr @double_int_to_tree(ptr noundef nonnull %2, i64 %574, i64 %573) #21
  br label %579

577:                                              ; preds = %545, %542, %536, %530, %524, %518, %514
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

578:                                              ; preds = %253
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 2578, ptr noundef nonnull @.str.28) #21
  unreachable

579:                                              ; preds = %460, %238, %213, %468, %572, %494, %511, %149, %195, %175
  %580 = phi ptr [ %150, %149 ], [ %176, %175 ], [ %205, %195 ], [ %252, %238 ], [ %223, %213 ], [ %478, %468 ], [ %500, %511 ], [ %483, %494 ], [ %576, %572 ], [ %461, %460 ]
  %581 = phi ptr [ %150, %149 ], [ %176, %175 ], [ %200, %195 ], [ %245, %238 ], [ %218, %213 ], [ %473, %468 ], [ %512, %511 ], [ %495, %494 ], [ %575, %572 ], [ %462, %460 ]
  %582 = phi i32 [ 1, %149 ], [ 1, %175 ], [ %52, %195 ], [ %52, %238 ], [ %52, %213 ], [ %52, %468 ], [ 1, %511 ], [ 1, %494 ], [ 1, %572 ], [ %463, %460 ]
  %583 = icmp eq ptr %581, null
  br i1 %583, label %611, label %584

584:                                              ; preds = %224, %231, %235, %228, %579
  %585 = phi i32 [ %582, %579 ], [ %52, %228 ], [ %52, %235 ], [ %52, %231 ], [ %52, %224 ]
  %586 = phi ptr [ %581, %579 ], [ %218, %228 ], [ %218, %235 ], [ %218, %231 ], [ %218, %224 ]
  %587 = phi ptr [ %580, %579 ], [ %223, %228 ], [ %223, %235 ], [ %223, %231 ], [ %223, %224 ]
  %588 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %586) #21
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %611, label %590

590:                                              ; preds = %584
  %591 = load i64, ptr %586, align 8
  %592 = and i64 %591, 134217728
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %599, label %594

594:                                              ; preds = %590
  %595 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %586) #20, !range !15
  %596 = icmp eq i8 %595, 0
  %597 = icmp eq ptr %587, null
  %598 = select i1 %596, i1 true, i1 %597
  br i1 %598, label %611, label %601

599:                                              ; preds = %590
  %600 = icmp eq ptr %587, null
  br i1 %600, label %611, label %601

601:                                              ; preds = %594, %599
  %602 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %587) #21
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %611, label %604

604:                                              ; preds = %601
  %605 = load i64, ptr %587, align 8
  %606 = and i64 %605, 134217728
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %612, label %608

608:                                              ; preds = %604
  %609 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %587) #20, !range !15
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %611, label %612

611:                                              ; preds = %608, %601, %599, %594, %584, %579
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

612:                                              ; preds = %608, %604
  %613 = call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %586) #20, !range !15
  %614 = icmp eq i8 %613, 0
  br i1 %614, label %615, label %618

615:                                              ; preds = %612
  %616 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %586) #20, !range !15
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %625, label %618

618:                                              ; preds = %615, %612
  %619 = call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %587) #20, !range !15
  %620 = icmp eq i8 %619, 0
  br i1 %620, label %621, label %624

621:                                              ; preds = %618
  %622 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %587) #20, !range !15
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %625, label %624

624:                                              ; preds = %621, %618
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

625:                                              ; preds = %621, %615
  %626 = call fastcc i32 @compare_values(ptr noundef nonnull %586, ptr noundef nonnull %587) #20
  switch i32 %626, label %628 [
    i32 -2, label %627
    i32 1, label %627
  ]

627:                                              ; preds = %625, %625
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

628:                                              ; preds = %625
  call fastcc void @set_value_range(ptr noundef %0, i32 noundef %585, ptr noundef nonnull %586, ptr noundef nonnull %587, ptr noundef null) #20
  br label %629

629:                                              ; preds = %464, %627, %628, %112, %120, %119, %94, %102, %101, %28, %27, %624, %611, %577, %513, %467, %212, %206, %71, %57
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_unary_expr(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
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
  br i1 %9, label %20, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %8) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %11) #21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %11) #20, !range !15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

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
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %26, i64 32, i1 false), !tbaa.struct !84
  br label %32

27:                                               ; preds = %21
  %28 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %3) #21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  call fastcc void @set_value_range_to_value(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef null) #20
  br label %32

31:                                               ; preds = %27
  call fastcc void @set_value_range_to_varying(ptr noundef nonnull %5) #20
  br label %32

32:                                               ; preds = %30, %31, %25
  %33 = load i32, ptr %5, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call fastcc void @set_value_range_to_undefined(ptr noundef %0) #20
  br label %439

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !13
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i16
  switch i16 %40, label %46 [
    i16 6, label %41
    i16 7, label %41
    i16 8, label %41
    i16 10, label %41
    i16 12, label %41
  ]

41:                                               ; preds = %36, %36, %36, %36, %36
  %42 = icmp eq i32 %33, 3
  br i1 %42, label %47, label %43

43:                                               ; preds = %41
  %44 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %5) #20, !range !15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

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
  ]

52:                                               ; preds = %47
  %53 = load ptr, ptr %37, align 8, !tbaa !13
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 65535
  %57 = trunc i64 %54 to i16
  switch i16 %57, label %74 [
    i16 10, label %58
    i16 12, label %58
  ]

58:                                               ; preds = %52, %52, %47, %47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  store i8 0, ptr %6, align 1, !tbaa !13
  %59 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %5) #20, !range !15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = call zeroext i8 @tree_unary_nonzero_warnv_p(i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %6) #21
  %63 = icmp eq i8 %62, 0
  %64 = load i8, ptr %6, align 1
  %65 = icmp ne i8 %64, 0
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %68, label %67

67:                                               ; preds = %61, %58
  call fastcc void @set_value_range_to_nonnull(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %73

68:                                               ; preds = %61
  %69 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %5) #20, !range !15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71

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
  br i1 %80, label %81, label %146

81:                                               ; preds = %75
  br i1 %42, label %82, label %94

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 1023
  %86 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1023
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %90, label %145

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 13
  %92 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %93 = load <2 x ptr>, ptr %91, align 8, !tbaa !13
  store <2 x ptr> %93, ptr %92, align 8, !tbaa !12
  br label %96

94:                                               ; preds = %81
  %95 = icmp ult i32 %33, 3
  br i1 %95, label %96, label %145

96:                                               ; preds = %90, %94
  %97 = phi i32 [ 1, %90 ], [ %33, %94 ]
  %98 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !11
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 23
  br i1 %102, label %103, label %145

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !16
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 23
  br i1 %108, label %109, label %145

109:                                              ; preds = %103
  %110 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %99) #20, !range !15
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %109
  %113 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %105) #20, !range !15
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %145

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 1023
  %119 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 1023
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %115
  %124 = icmp eq i32 %97, 1
  br i1 %124, label %125, label %145

125:                                              ; preds = %123
  %126 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef nonnull %105, ptr noundef nonnull %99, i32 noundef 0) #21
  %127 = load i32, ptr %116, align 4
  %128 = and i32 %127, 1023
  %129 = zext nneg i32 %128 to i64
  %130 = tail call ptr @size_int_kind(i64 noundef %129, i32 noundef 0) #21
  %131 = tail call ptr @int_const_binop(i32 noundef 84, ptr noundef %126, ptr noundef %130, i32 noundef 0) #21
  %132 = tail call i32 @integer_zerop(ptr noundef %131) #21
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %125, %115
  %135 = getelementptr inbounds %struct.tree_int_cst, ptr %99, i64 0, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !13
  %137 = getelementptr inbounds %struct.tree_int_cst, ptr %99, i64 0, i32 1, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !13
  %139 = tail call ptr @force_fit_type_double(ptr noundef nonnull %2, i64 noundef %136, i64 noundef %138, i32 noundef 0, i8 noundef zeroext 0) #21
  %140 = getelementptr inbounds %struct.tree_int_cst, ptr %105, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !13
  %142 = getelementptr inbounds %struct.tree_int_cst, ptr %105, i64 0, i32 1, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !13
  %144 = tail call ptr @force_fit_type_double(ptr noundef nonnull %2, i64 noundef %141, i64 noundef %143, i32 noundef 0, i8 noundef zeroext 0) #21
  tail call fastcc void @set_and_canonicalize_value_range(ptr noundef %0, i32 noundef %97, ptr noundef %139, ptr noundef %144, ptr noundef null) #20
  br label %439

145:                                              ; preds = %82, %94, %125, %123, %112, %109, %103, %96
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

146:                                              ; preds = %75, %74
  br i1 %42, label %147, label %148

147:                                              ; preds = %146
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

148:                                              ; preds = %146
  switch i32 %1, label %364 [
    i32 79, label %149
    i32 82, label %234
  ]

149:                                              ; preds = %148
  %150 = and i64 %48, 2097152
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %219

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !16
  %155 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %154) #20, !range !15
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %152
  %158 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef nonnull %2) #20
  br label %189

159:                                              ; preds = %152
  %160 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %154) #20, !range !15
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %189

164:                                              ; preds = %159
  %165 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %154) #20, !range !15
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %154) #21
  br label %189

169:                                              ; preds = %164
  %170 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %169
  %173 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !11
  %178 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %177) #20, !range !15
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %177) #20, !range !15
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
  %188 = load ptr, ptr %187, align 8, !tbaa !13
  br label %189

189:                                              ; preds = %162, %183, %186, %167, %157
  %190 = phi ptr [ %158, %157 ], [ %163, %162 ], [ %184, %183 ], [ %188, %186 ], [ %168, %167 ]
  %191 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !11
  %193 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %192) #20, !range !15
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %189
  %196 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

197:                                              ; preds = %189
  %198 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %192) #20, !range !15
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

202:                                              ; preds = %197
  %203 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %192) #20, !range !15
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %192) #21
  br label %432

207:                                              ; preds = %202
  %208 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %207
  %211 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %210
  %214 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

215:                                              ; preds = %210
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

216:                                              ; preds = %207
  %217 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  %218 = load ptr, ptr %217, align 8, !tbaa !13
  br label %432

219:                                              ; preds = %149
  %220 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %5) #20, !range !15
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !11
  %225 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %224) #21
  %226 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !16
  %228 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %227) #21
  br label %432

229:                                              ; preds = %219
  %230 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %5) #20, !range !15
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  tail call fastcc void @set_value_range_to_null(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %439

233:                                              ; preds = %229
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

234:                                              ; preds = %148
  %235 = and i64 %48, 2097152
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %364

237:                                              ; preds = %234
  %238 = load i32, ptr @flag_wrapv, align 4
  %239 = icmp eq i32 %238, 0
  %240 = load i32, ptr @flag_trapv, align 4
  %241 = icmp eq i32 %240, 0
  %242 = select i1 %239, i1 %241, i1 false
  %243 = load i32, ptr @flag_strict_overflow, align 4
  %244 = icmp ne i32 %243, 0
  %245 = select i1 %242, i1 %244, i1 false
  br i1 %245, label %261, label %246

246:                                              ; preds = %237
  switch i32 %33, label %261 [
    i32 1, label %247
    i32 2, label %252
  ]

247:                                              ; preds = %246
  %248 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !11
  %250 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %249) #20, !range !15
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %261, label %260

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !11
  %255 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %254) #20, !range !15
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %252
  %258 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %5) #20, !range !15
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257, %247
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

261:                                              ; preds = %246, %247, %237, %257, %252
  %262 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !11
  %264 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %263) #20, !range !15
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %261
  %267 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %285

268:                                              ; preds = %261
  %269 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %263) #20, !range !15
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = tail call ptr @fold_unary_to_constant(i32 noundef 82, ptr noundef nonnull %2, ptr noundef %263) #21
  br label %285

273:                                              ; preds = %268
  %274 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %278 = load ptr, ptr %277, align 8, !tbaa !13
  br label %285

279:                                              ; preds = %273
  %280 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
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
  %288 = load ptr, ptr %287, align 8, !tbaa !16
  %289 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %288) #20, !range !15
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %285
  %292 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %313

293:                                              ; preds = %285
  %294 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %288) #20, !range !15
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  %297 = tail call ptr @fold_unary_to_constant(i32 noundef 82, ptr noundef nonnull %2, ptr noundef %288) #21
  br label %313

298:                                              ; preds = %293
  %299 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %303 = load ptr, ptr %302, align 8, !tbaa !13
  br label %313

304:                                              ; preds = %298
  %305 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %304
  %308 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %286) #20, !range !15
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
  %317 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %5) #20, !range !15
  %318 = icmp eq i8 %317, 0
  br i1 %316, label %319, label %357

319:                                              ; preds = %313
  br i1 %318, label %344, label %320

320:                                              ; preds = %319
  %321 = icmp eq i32 %315, 1
  %322 = select i1 %321, ptr %314, ptr %286
  %323 = load i64, ptr %2, align 8
  %324 = and i64 %323, 2097152
  %325 = icmp ne i64 %324, 0
  %326 = load i32, ptr @flag_wrapv, align 4
  %327 = icmp ne i32 %326, 0
  %328 = select i1 %325, i1 true, i1 %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %320
  %330 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  %331 = load ptr, ptr %330, align 8, !tbaa !13
  %332 = icmp eq ptr %263, %331
  br i1 %332, label %432, label %333

333:                                              ; preds = %329
  %334 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !12
  %335 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %331, ptr noundef %334, i32 noundef 0) #21
  br label %432

336:                                              ; preds = %320
  %337 = call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %5) #20, !range !15
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %341, label %339

339:                                              ; preds = %336
  %340 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  %343 = load ptr, ptr %342, align 8, !tbaa !13
  br label %432

344:                                              ; preds = %319
  %345 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 0) #21
  %346 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %354, label %348

348:                                              ; preds = %344
  %349 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
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
  %356 = load ptr, ptr %355, align 8, !tbaa !13
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
  %366 = load ptr, ptr %365, align 8, !tbaa !11
  %367 = tail call ptr @fold_unary_to_constant(i32 noundef %1, ptr noundef nonnull %2, ptr noundef %366) #21
  %368 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !16
  %370 = tail call ptr @fold_unary_to_constant(i32 noundef %1, ptr noundef nonnull %2, ptr noundef %369) #21
  %371 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %432, label %373

373:                                              ; preds = %364
  %374 = icmp eq i32 %1, 82
  br i1 %374, label %375, label %376

375:                                              ; preds = %373
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 2959, ptr noundef nonnull @.str.28) #21
  br label %376

376:                                              ; preds = %373, %375
  %377 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %366) #20, !range !15
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %376
  %380 = load i64, ptr %367, align 8
  %381 = and i64 %380, 134217728
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %379, %376
  %384 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %369) #20, !range !15
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
  %392 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %366) #20, !range !15
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %411

394:                                              ; preds = %391
  %395 = load i64, ptr %367, align 8
  %396 = and i64 %395, 134217728
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %411, label %398

398:                                              ; preds = %394
  %399 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %410, label %401

401:                                              ; preds = %398
  %402 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %367) #21
  %403 = icmp sgt i32 %402, -1
  %404 = getelementptr inbounds %struct.tree_common, ptr %367, i64 0, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !13
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
  %413 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %369) #20, !range !15
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %415, label %432

415:                                              ; preds = %411
  %416 = load i64, ptr %370, align 8
  %417 = and i64 %416, 134217728
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %432, label %419

419:                                              ; preds = %415
  %420 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !15
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %431, label %422

422:                                              ; preds = %419
  %423 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %370) #21
  %424 = icmp sgt i32 %423, -1
  %425 = getelementptr inbounds %struct.tree_common, ptr %370, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !13
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
define internal fastcc void @extract_range_from_cond_expr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.value_range_d, align 8
  %4 = alloca %struct.value_range_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !84
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
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %19) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 32, i1 false), !tbaa.struct !84
  br label %30

25:                                               ; preds = %17
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %19) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

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
define internal fastcc void @extract_range_from_comparison(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  store i8 0, ptr %6, align 1, !tbaa !13
  %7 = call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %1, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0, ptr noundef nonnull %6, ptr noundef null) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %7) #20, !range !15
  %11 = icmp ne i8 %10, 0
  %12 = load i8, ptr %6, align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %9
  %16 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2, ptr noundef nonnull %7) #21
  %17 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %16) #21
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  br i1 %18, label %22, label %21

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
define internal fastcc void @set_value_range_to_value(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 515, ptr noundef nonnull @.str.28) #21
  br label %7

7:                                                ; preds = %3, %6
  %8 = tail call fastcc ptr @avoid_overflow_infinity(ptr noundef %1) #20
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %8, ptr noundef %8, ptr noundef %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @avoid_overflow_infinity(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %0) #20, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %0) #20, !range !15
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !13
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
define internal fastcc zeroext i8 @symbolic_range_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %3) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !16
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %8) #21
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i8 [ 1, %1 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_equivalence(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !13
  %5 = load ptr, ptr @vr_value, align 8, !tbaa !12
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = load ptr, ptr %0, align 8, !tbaa !12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %12, ptr %0, align 8, !tbaa !12
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ %12, %11 ], [ %9, %2 ]
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %4) #21
  %16 = icmp eq ptr %8, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.value_range_d, ptr %8, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !12
  %23 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %22, ptr noundef nonnull %19) #21
  br label %24

24:                                               ; preds = %21, %17, %13
  ret void
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @force_fit_type_double(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_and_canonicalize_value_range(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = add i32 %1, -3
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 23
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i64, ptr %3, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %17, label %16

16:                                               ; preds = %5, %12, %8
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  br label %72

17:                                               ; preds = %12
  %18 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !13
  %23 = tail call ptr @build_int_cst(ptr noundef %22, i64 noundef 1) #21
  %24 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef nonnull %3, ptr noundef %23, i32 noundef 0) #21
  %25 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef nonnull %2, ptr noundef %23, i32 noundef 0) #21
  %26 = tail call i32 @tree_int_cst_lt(ptr noundef %25, ptr noundef %24) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = icmp eq i32 %1, 1
  br i1 %29, label %33, label %68

30:                                               ; preds = %20
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %72

31:                                               ; preds = %17
  %32 = icmp eq i32 %1, 2
  br i1 %32, label %33, label %68

33:                                               ; preds = %28, %31
  %34 = phi ptr [ %2, %31 ], [ %24, %28 ]
  %35 = phi ptr [ %3, %31 ], [ %25, %28 ]
  %36 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %34) #20, !range !15
  %37 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %35) #20, !range !15
  %38 = icmp ne i8 %36, 0
  %39 = icmp ne i8 %37, 0
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %67, label %41

41:                                               ; preds = %33
  br i1 %38, label %42, label %58

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !13
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 2097152
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = tail call i32 @integer_zerop(ptr noundef %35) #21
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48, %42
  %52 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !13
  %54 = tail call ptr @build_int_cst(ptr noundef %53, i64 noundef 1) #21
  %55 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %35, ptr noundef %54, i32 noundef 0) #21
  %56 = load ptr, ptr %52, align 8, !tbaa !13
  %57 = tail call fastcc ptr @vrp_val_max(ptr noundef %56) #20
  br label %68

58:                                               ; preds = %48, %41
  %59 = icmp eq i8 %37, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !13
  %63 = tail call ptr @build_int_cst(ptr noundef %62, i64 noundef 1) #21
  %64 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %34, ptr noundef %63, i32 noundef 0) #21
  %65 = load ptr, ptr %61, align 8, !tbaa !13
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
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @value_ranges_intersect_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = tail call fastcc i32 @operand_less_p(ptr noundef %4, ptr noundef %6) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = tail call fastcc i32 @operand_less_p(ptr noundef %11, ptr noundef %13) #20
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i8 [ 0, %2 ], [ %16, %9 ]
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @negative_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @vrp_val_min(ptr noundef %0) #20
  %3 = tail call fastcc ptr @make_overflow_infinity(ptr noundef %2) #20
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_value_range(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_with_constant_singleton_value_range(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %0) #20
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.value_range_d, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.value_range_d, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = tail call i32 @operand_equal_p(ptr noundef %14, ptr noundef %16, i32 noundef 0) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %13, align 8, !tbaa !11
  %21 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %20) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 8, !tbaa !11
  br label %25

25:                                               ; preds = %8, %12, %19, %4, %1, %23
  %26 = phi ptr [ %24, %23 ], [ %0, %1 ], [ null, %4 ], [ null, %19 ], [ null, %12 ], [ null, %8 ]
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_undefined(ptr nocapture noundef %0) unnamed_addr #0 {
  store i32 0, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @bitmap_clear(ptr noundef nonnull %4) #21
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @range_is_null(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !5
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = tail call i32 @integer_zerop(ptr noundef %6) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = tail call i32 @integer_zerop(ptr noundef %11) #21
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %9, %4, %1
  %16 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %14, %9 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_null(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @build_int_cst(ptr noundef %1, i64 noundef 0) #21
  %4 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  tail call fastcc void @set_value_range_to_value(ptr noundef %0, ptr noundef %3, ptr noundef %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @overflow_infinity_range_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !5
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %6) #20, !range !15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %11) #20, !range !15
  br label %13

13:                                               ; preds = %4, %9, %1
  %14 = phi i8 [ 0, %1 ], [ 1, %4 ], [ %12, %9 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_truthvalue(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1023
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %13

8:                                                ; preds = %2
  %9 = tail call ptr @build_int_cst(ptr noundef nonnull %1, i64 noundef 0) #21
  %10 = tail call ptr @build_int_cst(ptr noundef nonnull %1, i64 noundef 1) #21
  %11 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %12) #20
  br label %13

13:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vrp_int_const_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @int_const_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #21
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 2097152
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @compare_values(ptr noundef %4, ptr noundef nonnull %1) #20
  %12 = icmp ne i32 %0, 63
  %13 = icmp ult i32 %11, 2
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  switch i32 %0, label %123 [
    i32 64, label %16
    i32 65, label %17
  ]

16:                                               ; preds = %15
  switch i32 %11, label %24 [
    i32 -1, label %123
    i32 0, label %123
  ]

17:                                               ; preds = %15
  %18 = tail call i32 @integer_zerop(ptr noundef nonnull %1) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %123

20:                                               ; preds = %17
  %21 = tail call ptr @int_const_binop(i32 noundef 67, ptr noundef %4, ptr noundef nonnull %1, i32 noundef 0) #21
  %22 = tail call fastcc i32 @compare_values(ptr noundef %21, ptr noundef %2) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %123, label %24

24:                                               ; preds = %16, %10, %20
  %25 = tail call ptr @copy_node_stat(ptr noundef %4) #21
  %26 = load i64, ptr %25, align 8
  %27 = or i64 %26, 134217728
  store i64 %27, ptr %25, align 8
  br label %123

28:                                               ; preds = %3
  %29 = load i32, ptr @flag_wrapv, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %123

31:                                               ; preds = %28
  %32 = load i64, ptr %4, align 8
  %33 = and i64 %32, 134217728
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i64, ptr %1, align 8
  %37 = and i64 %36, 134217728
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64, ptr %2, align 8
  %41 = and i64 %40, 134217728
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39, %35, %31
  %44 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !15
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %123, label %49

49:                                               ; preds = %46, %43, %39
  %50 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %1) #21
  %51 = freeze i32 %50
  %52 = tail call i32 @tree_int_cst_sgn(ptr noundef %2) #21
  %53 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %54) #20, !range !15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %54) #20, !range !15
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %123, label %60

60:                                               ; preds = %57, %49
  %61 = icmp ne i32 %0, 63
  %62 = icmp eq i32 %51, %52
  %63 = select i1 %61, i1 true, i1 %62
  %64 = xor i1 %63, true
  %65 = icmp eq i32 %0, 64
  %66 = select i1 %65, i1 %62, i1 false
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !15
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !15
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %123

74:                                               ; preds = %60, %71, %68
  %75 = icmp eq i32 %0, 84
  switch i32 %0, label %83 [
    i32 84, label %76
    i32 76, label %76
    i32 70, label %76
    i32 69, label %76
    i32 68, label %76
    i32 67, label %76
    i32 65, label %82
  ]

76:                                               ; preds = %74, %74, %74, %74, %74, %74
  %77 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !15
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %76
  %80 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !15
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %101, label %123

82:                                               ; preds = %74
  br i1 %62, label %105, label %114

83:                                               ; preds = %74
  br i1 %61, label %92, label %84

84:                                               ; preds = %83
  %85 = icmp sgt i32 %51, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %2) #20, !range !15
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %105, label %114

89:                                               ; preds = %84
  %90 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %2) #20, !range !15
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %114, label %105

92:                                               ; preds = %83
  br i1 %65, label %93, label %101

93:                                               ; preds = %92
  %94 = icmp sgt i32 %51, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %2) #20, !range !15
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %105, label %114

98:                                               ; preds = %93
  %99 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %2) #20, !range !15
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %114, label %105

101:                                              ; preds = %79, %92
  %102 = icmp sgt i32 %51, -1
  %103 = and i1 %75, %102
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  switch i32 %0, label %114 [
    i32 76, label %105
    i32 70, label %105
    i32 69, label %105
    i32 68, label %105
    i32 67, label %105
  ]

105:                                              ; preds = %104, %104, %104, %104, %104, %101, %98, %95, %89, %86, %82
  %106 = load ptr, ptr %53, align 8, !tbaa !13
  %107 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %106) #20, !range !15
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef %106) #20
  br label %123

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 14
  %113 = load ptr, ptr %112, align 8, !tbaa !13
  br label %123

114:                                              ; preds = %82, %86, %89, %98, %95, %104
  %115 = load ptr, ptr %53, align 8, !tbaa !13
  %116 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %115) #20, !range !15
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef %115) #20
  br label %123

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.tree_type, ptr %115, i64 0, i32 13
  %122 = load ptr, ptr %121, align 8, !tbaa !13
  br label %123

123:                                              ; preds = %16, %16, %46, %28, %17, %15, %24, %20, %57, %71, %79, %76, %111, %109, %120, %118
  %124 = phi ptr [ null, %57 ], [ null, %71 ], [ null, %79 ], [ null, %76 ], [ %110, %109 ], [ %113, %111 ], [ %119, %118 ], [ %122, %120 ], [ %4, %28 ], [ %4, %46 ], [ %25, %24 ], [ %4, %20 ], [ %4, %15 ], [ %4, %17 ], [ %4, %16 ], [ %4, %16 ]
  ret ptr %124
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_expr_computes_nonnegative(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) #21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @ssa_name_nonnegative_p(ptr noundef nonnull %0) #20, !range !15
  br label %11

11:                                               ; preds = %5, %9, %2
  %12 = phi i8 [ 1, %2 ], [ 0, %5 ], [ %10, %9 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @range_includes_zero_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !5
  switch i32 %2, label %3 [
    i32 0, label %6
    i32 3, label %6
  ]

3:                                                ; preds = %1
  %4 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1, %1, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1344, ptr noundef nonnull @.str.28) #21
  br label %7

7:                                                ; preds = %3, %6
  %8 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = tail call ptr @build_int_cst(ptr noundef %11, i64 noundef 0) #21
  %13 = tail call fastcc i32 @value_inside_range(ptr noundef %12, ptr noundef nonnull %0) #20, !range !163
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i8
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @abs_extent_range(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 599, ptr noundef nonnull @.str.28) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 23
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 600, ptr noundef nonnull @.str.28) #21
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65535
  %19 = add nsw i32 %18, -6
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 601, ptr noundef nonnull @.str.28) #21
  %22 = load ptr, ptr %14, align 8, !tbaa !13
  %23 = load i64, ptr %22, align 8
  br label %24

24:                                               ; preds = %13, %21
  %25 = phi i64 [ %16, %13 ], [ %23, %21 ]
  %26 = phi ptr [ %15, %13 ], [ %22, %21 ]
  %27 = and i64 %25, 2097152
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 602, ptr noundef nonnull @.str.28) #21
  %30 = load ptr, ptr %14, align 8, !tbaa !13
  br label %31

31:                                               ; preds = %24, %29
  %32 = phi ptr [ %26, %24 ], [ %30, %29 ]
  %33 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef 82, ptr noundef %32, ptr noundef nonnull %1) #21
  %34 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  %36 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef 82, ptr noundef %35, ptr noundef nonnull %2) #21
  %37 = load i64, ptr %33, align 8
  %38 = and i64 %37, 134217728
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i64, ptr %36, align 8
  %42 = and i64 %41, 134217728
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %31
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %56

45:                                               ; preds = %40
  %46 = tail call fastcc i32 @compare_values(ptr noundef nonnull %33, ptr noundef nonnull %36) #20
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = icmp ult i32 %46, 2
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %56

51:                                               ; preds = %48, %45
  %52 = phi ptr [ %36, %45 ], [ %33, %48 ]
  %53 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !13
  %55 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef 79, ptr noundef %54, ptr noundef nonnull %52) #21
  tail call fastcc void @set_and_canonicalize_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %55, ptr noundef nonnull %52, ptr noundef null) #20
  br label %56

56:                                               ; preds = %51, %50, %44
  ret void
}

; Function Attrs: optsize
declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @value_inside_range(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = tail call fastcc i32 @operand_less_p(ptr noundef %0, ptr noundef %4) #20
  switch i32 %5, label %7 [
    i32 -2, label %15
    i32 1, label %6
  ]

6:                                                ; preds = %2
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = tail call fastcc i32 @operand_less_p(ptr noundef %9, ptr noundef %0) #20
  %11 = icmp eq i32 %10, -2
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = icmp eq i32 %10, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %7, %2, %12, %6
  %16 = phi i32 [ 0, %6 ], [ %14, %12 ], [ %5, %2 ], [ -2, %7 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vrp_meet(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call fastcc void @copy_value_range(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %191

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !5
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i32 %3, 3
  %10 = or i1 %9, %8
  br i1 %10, label %191, label %11

11:                                               ; preds = %6
  %12 = icmp eq i32 %7, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %191

14:                                               ; preds = %11
  %15 = icmp eq i32 %3, 1
  %16 = icmp eq i32 %7, 1
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %77

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = tail call fastcc i32 @compare_values(ptr noundef %20, ptr noundef %22) #20
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = icmp eq i32 %23, -1
  br i1 %26, label %27, label %147

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %21, %18 ], [ %19, %25 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = tail call fastcc i32 @compare_values(ptr noundef %31, ptr noundef %33) #20
  %35 = add i32 %34, 1
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = icmp eq i32 %34, 1
  br i1 %38, label %39, label %147

39:                                               ; preds = %37, %27
  %40 = phi ptr [ %32, %27 ], [ %30, %37 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !16
  %42 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !13
  %44 = load i64, ptr %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -6
  %48 = icmp ult i32 %47, 3
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %29) #20, !range !15
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %29) #20, !range !15
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52, %49
  %56 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %41) #20, !range !15
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %147

58:                                               ; preds = %55
  %59 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %41) #20, !range !15
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %147

61:                                               ; preds = %39, %58, %52
  %62 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !14
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !14
  %68 = icmp eq ptr %67, null
  %69 = icmp eq ptr %63, %67
  %70 = or i1 %68, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  tail call void @bitmap_and_into(ptr noundef nonnull %63, ptr noundef nonnull %67) #21
  br label %74

72:                                               ; preds = %65
  br i1 %68, label %73, label %74

73:                                               ; preds = %72
  tail call void @bitmap_clear(ptr noundef nonnull %63) #21
  br label %74

74:                                               ; preds = %61, %71, %73, %72
  %75 = load i32, ptr %0, align 8, !tbaa !5
  %76 = load ptr, ptr %62, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef %75, ptr noundef nonnull %29, ptr noundef %41, ptr noundef %76) #20
  br label %191

77:                                               ; preds = %14
  %78 = icmp eq i32 %3, 2
  %79 = icmp eq i32 %7, 2
  br i1 %78, label %80, label %113

80:                                               ; preds = %77
  br i1 %79, label %81, label %114

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !11
  %84 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !11
  %86 = tail call fastcc i32 @compare_values(ptr noundef %83, ptr noundef %85) #20
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %147

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !16
  %91 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !16
  %93 = tail call fastcc i32 @compare_values(ptr noundef %90, ptr noundef %92) #20
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %147

95:                                               ; preds = %88
  %96 = load ptr, ptr %82, align 8, !tbaa !11
  %97 = load ptr, ptr %89, align 8, !tbaa !16
  %98 = tail call fastcc i32 @compare_values(ptr noundef %96, ptr noundef %97) #20
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %147

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !14
  %103 = icmp eq ptr %102, null
  br i1 %103, label %191, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !14
  %107 = icmp eq ptr %106, null
  %108 = icmp eq ptr %102, %106
  %109 = or i1 %107, %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  tail call void @bitmap_and_into(ptr noundef nonnull %102, ptr noundef nonnull %106) #21
  br label %191

111:                                              ; preds = %104
  br i1 %107, label %112, label %191

112:                                              ; preds = %111
  tail call void @bitmap_clear(ptr noundef nonnull %102) #21
  br label %191

113:                                              ; preds = %77
  br i1 %79, label %114, label %146

114:                                              ; preds = %80, %113
  %115 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !15
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %114
  %118 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %1) #20, !range !15
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %147

120:                                              ; preds = %117
  %121 = tail call fastcc zeroext i8 @value_ranges_intersect_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #20, !range !15
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %120
  %124 = load i32, ptr %1, align 8, !tbaa !5
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %133

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !11
  %129 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !16
  %131 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %128, ptr noundef %130, ptr noundef %132) #20
  br label %133

133:                                              ; preds = %126, %123
  %134 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !14
  %136 = icmp eq ptr %135, null
  br i1 %136, label %191, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !14
  %140 = icmp eq ptr %139, null
  %141 = icmp eq ptr %135, %139
  %142 = or i1 %140, %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  tail call void @bitmap_and_into(ptr noundef nonnull %135, ptr noundef nonnull %139) #21
  br label %191

144:                                              ; preds = %137
  br i1 %140, label %145, label %191

145:                                              ; preds = %144
  tail call void @bitmap_clear(ptr noundef nonnull %135) #21
  br label %191

146:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 6245, ptr noundef nonnull @.str.28) #21
  br label %191

147:                                              ; preds = %55, %58, %37, %25, %114, %117, %120, %81, %88, %95
  %148 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !15
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %190

150:                                              ; preds = %147
  %151 = load i32, ptr %0, align 8, !tbaa !5
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %0) #20, !range !15
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %153
  %157 = load i32, ptr %0, align 8, !tbaa !5
  br label %158

158:                                              ; preds = %156, %150
  %159 = phi i32 [ %157, %156 ], [ %151, %150 ]
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %190

161:                                              ; preds = %158
  %162 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %0) #20, !range !15
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %190, label %164

164:                                              ; preds = %161, %153
  %165 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %1) #20, !range !15
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %164
  %168 = load i32, ptr %1, align 8, !tbaa !5
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %1) #20, !range !15
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %170
  %174 = load i32, ptr %1, align 8, !tbaa !5
  br label %175

175:                                              ; preds = %173, %167
  %176 = phi i32 [ %174, %173 ], [ %168, %167 ]
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %190

178:                                              ; preds = %175
  %179 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %1) #20, !range !15
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %178, %170
  %182 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !11
  %184 = getelementptr inbounds %struct.tree_common, ptr %183, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !13
  tail call fastcc void @set_value_range_to_nonnull(ptr noundef nonnull %0, ptr noundef %185) #20
  %186 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !14
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

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
declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef writeonly %5) unnamed_addr #0 {
  %7 = icmp eq ptr %5, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  store i8 1, ptr %5, align 1, !tbaa !13
  br label %9

9:                                                ; preds = %8, %6
  %10 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %38 [
    i16 6, label %14
    i16 7, label %14
    i16 8, label %14
    i16 10, label %14
    i16 12, label %14
  ]

14:                                               ; preds = %9, %9, %9, %9, %9
  %15 = icmp eq i8 %3, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %14
  br i1 %7, label %20, label %17

17:                                               ; preds = %16
  %18 = tail call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %4) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %17, %16
  store i8 0, ptr %5, align 1, !tbaa !13
  %21 = load i64, ptr %1, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  %24 = load i64, ptr %2, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %23, label %27, label %32

27:                                               ; preds = %20
  br i1 %26, label %28, label %30

28:                                               ; preds = %27
  %29 = tail call fastcc ptr @compare_names(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %4) #20
  br label %38

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @compare_name_with_value(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %4) #20
  br label %38

32:                                               ; preds = %20
  br i1 %26, label %33, label %38

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
define internal fastcc ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %1) #20
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  %12 = load i64, ptr %2, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = icmp ne ptr %11, null
  br label %24

17:                                               ; preds = %10
  %18 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %2) #20
  %19 = icmp ne ptr %11, null
  %20 = icmp ne ptr %18, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @compare_ranges(i32 noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %18, ptr noundef %3) #20
  br label %38

24:                                               ; preds = %15, %17
  %25 = phi i1 [ false, %15 ], [ %20, %17 ]
  %26 = phi i1 [ %16, %15 ], [ %19, %17 ]
  %27 = phi ptr [ null, %15 ], [ %18, %17 ]
  %28 = icmp eq ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = tail call fastcc ptr @compare_range_with_value(i32 noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %2, ptr noundef %3) #20
  br label %38

32:                                               ; preds = %24
  %33 = icmp eq ptr %11, null
  %34 = select i1 %33, i1 %25, i1 false
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = tail call i32 @swap_tree_comparison(i32 noundef %0) #21
  %37 = tail call fastcc ptr @compare_range_with_value(i32 noundef %36, ptr noundef nonnull %27, ptr noundef nonnull %1, ptr noundef %3) #20
  br label %38

38:                                               ; preds = %32, %35, %30, %22
  %39 = phi ptr [ %23, %22 ], [ %31, %30 ], [ %37, %35 ], [ null, %32 ]
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compare_names(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = tail call fastcc ptr @get_value_range(ptr noundef %2) #20
  %16 = getelementptr inbounds %struct.value_range_d, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !14
  %18 = load ptr, ptr @compare_names.s_obstack, align 8, !tbaa !12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load ptr, ptr @compare_names.s_e2, align 8
  br label %28

22:                                               ; preds = %4
  %23 = tail call ptr @xmalloc(i64 noundef 104) #21
  store ptr %23, ptr @compare_names.s_obstack, align 8, !tbaa !12
  tail call void @bitmap_obstack_initialize(ptr noundef %23) #21
  %24 = load ptr, ptr @compare_names.s_obstack, align 8, !tbaa !12
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef %24) #21
  store ptr %25, ptr @compare_names.s_e1, align 8, !tbaa !12
  %26 = load ptr, ptr @compare_names.s_obstack, align 8, !tbaa !12
  %27 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef %26) #21
  store ptr %27, ptr @compare_names.s_e2, align 8, !tbaa !12
  br label %28

28:                                               ; preds = %20, %22
  %29 = phi ptr [ %21, %20 ], [ %27, %22 ]
  %30 = icmp eq ptr %14, null
  %31 = load ptr, ptr @compare_names.s_e1, align 8
  %32 = select i1 %30, ptr %31, ptr %14
  %33 = icmp eq ptr %17, null
  %34 = select i1 %33, ptr %29, ptr %17
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !13
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %32, i32 noundef %36) #21
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !13
  %40 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %39) #21
  %41 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef %32, ptr noundef %34) #21
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %28
  %44 = load i32, ptr %35, align 8, !tbaa !13
  %45 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %44) #21
  %46 = load i32, ptr %38, align 8, !tbaa !13
  %47 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %34, i32 noundef %46) #21
  %48 = and i32 %0, -2
  %49 = icmp eq i32 %48, 100
  %50 = icmp eq i32 %0, 98
  %51 = or i1 %50, %49
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %54 = select i1 %51, ptr %52, ptr %53
  br label %109

55:                                               ; preds = %28
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %32, ptr noundef nonnull %7) #20
  %56 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %7) #20, !range !15
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %104, label %58

58:                                               ; preds = %55, %100
  %59 = phi i32 [ %101, %100 ], [ -1, %55 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #22
  %60 = load i32, ptr %7, align 4, !tbaa !23
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %9, i32 noundef %60) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %34, ptr noundef nonnull %8) #20
  %61 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %8) #20, !range !15
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %100, label %63

63:                                               ; preds = %58, %84
  %64 = phi i32 [ %86, %84 ], [ %59, %58 ]
  %65 = phi ptr [ %85, %84 ], [ null, %58 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  store i8 0, ptr %10, align 1, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #22
  %66 = load i32, ptr %8, align 4, !tbaa !23
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %11, i32 noundef %66) #20
  %67 = call fastcc ptr @compare_ranges(i32 noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10) #20
  %68 = icmp eq ptr %67, null
  br i1 %68, label %84, label %69

69:                                               ; preds = %63
  %70 = icmp eq ptr %65, null
  %71 = icmp eq ptr %67, %65
  %72 = or i1 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i8, ptr %10, align 1, !tbaa !13
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = icmp slt i32 %64, 0
  %78 = select i1 %77, i32 1, i32 %64
  br label %84

79:                                               ; preds = %69
  %80 = load i32, ptr %35, align 8, !tbaa !13
  %81 = call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %80) #21
  %82 = load i32, ptr %38, align 8, !tbaa !13
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
  %87 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %8) #20, !range !15
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %63, !llvm.loop !164

89:                                               ; preds = %84
  %90 = icmp eq ptr %85, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %89
  %92 = load i32, ptr %35, align 8, !tbaa !13
  %93 = call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %92) #21
  %94 = load i32, ptr %38, align 8, !tbaa !13
  %95 = call zeroext i8 @bitmap_clear_bit(ptr noundef %34, i32 noundef %94) #21
  %96 = icmp sgt i32 %86, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i8 1, ptr %3, align 1, !tbaa !13
  br label %98

98:                                               ; preds = %79, %97, %91
  %99 = phi ptr [ %85, %91 ], [ %85, %97 ], [ null, %79 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #22
  br label %109

100:                                              ; preds = %58, %89
  %101 = phi i32 [ %86, %89 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %7) #20
  %102 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %7) #20, !range !15
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %58, !llvm.loop !165

104:                                              ; preds = %100, %55
  %105 = load i32, ptr %35, align 8, !tbaa !13
  %106 = call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %105) #21
  %107 = load i32, ptr %38, align 8, !tbaa !13
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
define internal fastcc ptr @compare_name_with_value(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !13
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %8, i32 noundef %13) #20
  store i8 0, ptr %7, align 1, !tbaa !13
  %14 = call fastcc ptr @compare_range_with_value(i32 noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %7) #20
  %15 = icmp ne ptr %14, null
  %16 = load i8, ptr %7, align 1
  %17 = icmp ne i8 %16, 0
  %18 = icmp eq ptr %11, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = select i1 %15, i1 %17, i1 false
  br i1 %20, label %53, label %55

21:                                               ; preds = %4
  %22 = zext i1 %17 to i32
  %23 = select i1 %15, i32 %22, i32 -1
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %6) #20
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !15
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %21, %42
  %27 = phi i32 [ %44, %42 ], [ %23, %21 ]
  %28 = phi ptr [ %43, %42 ], [ %14, %21 ]
  %29 = load i32, ptr %6, align 4, !tbaa !23
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %8, i32 noundef %29) #20
  store i8 0, ptr %7, align 1, !tbaa !13
  %30 = call fastcc ptr @compare_range_with_value(i32 noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %7) #20
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %26
  %33 = icmp eq ptr %28, null
  %34 = icmp eq ptr %30, %28
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load i8, ptr %7, align 1, !tbaa !13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = icmp slt i32 %27, 0
  %41 = select i1 %40, i32 1, i32 %27
  br label %42

42:                                               ; preds = %36, %26, %39
  %43 = phi ptr [ %30, %39 ], [ %28, %26 ], [ %30, %36 ]
  %44 = phi i32 [ %41, %39 ], [ %27, %26 ], [ 0, %36 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %45 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %26, !llvm.loop !166

47:                                               ; preds = %42, %21
  %48 = phi ptr [ %14, %21 ], [ %43, %42 ]
  %49 = phi i32 [ %23, %21 ], [ %44, %42 ]
  %50 = icmp ne ptr %48, null
  %51 = icmp sgt i32 %49, 0
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %19
  %54 = phi ptr [ %14, %19 ], [ %48, %47 ]
  store i8 1, ptr %3, align 1, !tbaa !13
  br label %55

55:                                               ; preds = %32, %53, %47, %19
  %56 = phi ptr [ %14, %19 ], [ %48, %47 ], [ %54, %53 ], [ null, %32 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  ret ptr %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compare_ranges(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %1, align 8, !tbaa !5
  switch i32 %5, label %6 [
    i32 3, label %193
    i32 0, label %193
  ]

6:                                                ; preds = %4
  %7 = load i32, ptr %2, align 8, !tbaa !5
  switch i32 %7, label %8 [
    i32 3, label %193
    i32 0, label %193
  ]

8:                                                ; preds = %6
  %9 = icmp eq i32 %5, 2
  %10 = icmp eq i32 %7, 2
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = add i32 %0, -97
  %14 = icmp ult i32 %13, 4
  br i1 %9, label %15, label %17

15:                                               ; preds = %12
  %16 = or i1 %14, %10
  br i1 %16, label %193, label %18

17:                                               ; preds = %12
  br i1 %14, label %193, label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i32 %5, 1
  %20 = select i1 %19, ptr %1, ptr %2
  %21 = select i1 %19, ptr %2, ptr %1
  %22 = icmp eq i32 %0, 102
  %23 = add i32 %0, -101
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3379, ptr noundef nonnull @.str.28) #21
  br label %26

26:                                               ; preds = %18, %25
  %27 = getelementptr inbounds %struct.value_range_d, ptr %21, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.value_range_d, ptr %20, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = tail call fastcc i32 @compare_values_warnv(ptr noundef %28, ptr noundef %30, ptr noundef %3) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %193

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.value_range_d, ptr %21, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !16
  %36 = getelementptr inbounds %struct.value_range_d, ptr %20, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !16
  %38 = tail call fastcc i32 @compare_values_warnv(ptr noundef %35, ptr noundef %37, ptr noundef %3) #20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %193

40:                                               ; preds = %33
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %43 = select i1 %22, ptr %41, ptr %42
  br label %193

44:                                               ; preds = %8
  %45 = tail call fastcc zeroext i8 @usable_range_p(ptr noundef nonnull %1, ptr noundef %3) #20, !range !15
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %193, label %47

47:                                               ; preds = %44
  %48 = tail call fastcc zeroext i8 @usable_range_p(ptr noundef nonnull %2, ptr noundef %3) #20, !range !15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %193, label %50

50:                                               ; preds = %47
  %51 = add i32 %0, -99
  %52 = icmp ult i32 %51, 2
  %53 = icmp eq i32 %0, 99
  %54 = select i1 %53, i32 97, i32 98
  %55 = select i1 %52, ptr %1, ptr %2
  %56 = select i1 %52, ptr %2, ptr %1
  %57 = select i1 %52, i32 %54, i32 %0
  switch i32 %57, label %146 [
    i32 101, label %58
    i32 102, label %104
  ]

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !11
  %61 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !16
  %63 = tail call fastcc i32 @compare_values_warnv(ptr noundef %60, ptr noundef %62, ptr noundef %3) #20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !16
  %70 = tail call fastcc i32 @compare_values_warnv(ptr noundef %67, ptr noundef %69, ptr noundef %3) #20
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  %73 = load ptr, ptr %59, align 8, !tbaa !11
  %74 = load ptr, ptr %66, align 8, !tbaa !11
  %75 = tail call fastcc i32 @compare_values_warnv(ptr noundef %73, ptr noundef %74, ptr noundef %3) #20
  %76 = load ptr, ptr %61, align 8, !tbaa !16
  %77 = load ptr, ptr %68, align 8, !tbaa !16
  %78 = tail call fastcc i32 @compare_values_warnv(ptr noundef %76, ptr noundef %77, ptr noundef %3) #20
  %79 = icmp eq i32 %75, 0
  %80 = icmp eq i32 %78, 0
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  br label %193

84:                                               ; preds = %72
  %85 = icmp eq i32 %75, -2
  %86 = icmp eq i32 %78, -2
  %87 = select i1 %85, i1 true, i1 %86
  %88 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  br i1 %87, label %103, label %193

89:                                               ; preds = %65, %58
  %90 = load ptr, ptr %59, align 8, !tbaa !11
  %91 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !16
  %93 = tail call fastcc i32 @compare_values_warnv(ptr noundef %90, ptr noundef %92, ptr noundef %3) #20
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !11
  %98 = load ptr, ptr %61, align 8, !tbaa !16
  %99 = tail call fastcc i32 @compare_values_warnv(ptr noundef %97, ptr noundef %98, ptr noundef %3) #20
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %103

101:                                              ; preds = %95, %89
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !12
  br label %193

103:                                              ; preds = %84, %95
  br label %193

104:                                              ; preds = %50
  %105 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !16
  %107 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !11
  %109 = tail call fastcc i32 @compare_values_warnv(ptr noundef %106, ptr noundef %108, ptr noundef %3) #20
  %110 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !11
  %112 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !16
  %114 = tail call fastcc i32 @compare_values_warnv(ptr noundef %111, ptr noundef %113, ptr noundef %3) #20
  %115 = icmp eq i32 %109, -1
  %116 = icmp eq i32 %114, -1
  %117 = select i1 %115, i1 %116, i1 false
  br i1 %117, label %122, label %118

118:                                              ; preds = %104
  %119 = icmp eq i32 %109, 1
  %120 = icmp eq i32 %114, 1
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %124

122:                                              ; preds = %118, %104
  %123 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  br label %193

124:                                              ; preds = %118
  %125 = load ptr, ptr %110, align 8, !tbaa !11
  %126 = load ptr, ptr %105, align 8, !tbaa !16
  %127 = tail call fastcc i32 @compare_values_warnv(ptr noundef %125, ptr noundef %126, ptr noundef %3) #20
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %193

129:                                              ; preds = %124
  %130 = load ptr, ptr %107, align 8, !tbaa !11
  %131 = load ptr, ptr %112, align 8, !tbaa !16
  %132 = tail call fastcc i32 @compare_values_warnv(ptr noundef %130, ptr noundef %131, ptr noundef %3) #20
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %193

134:                                              ; preds = %129
  %135 = load ptr, ptr %110, align 8, !tbaa !11
  %136 = load ptr, ptr %107, align 8, !tbaa !11
  %137 = tail call fastcc i32 @compare_values_warnv(ptr noundef %135, ptr noundef %136, ptr noundef %3) #20
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %193

139:                                              ; preds = %134
  %140 = load ptr, ptr %105, align 8, !tbaa !16
  %141 = load ptr, ptr %112, align 8, !tbaa !16
  %142 = tail call fastcc i32 @compare_values_warnv(ptr noundef %140, ptr noundef %141, ptr noundef %3) #20
  %143 = icmp eq i32 %142, 0
  %144 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %145 = select i1 %143, ptr %144, ptr null
  br label %193

146:                                              ; preds = %50
  %147 = icmp eq i32 %57, 97
  %148 = icmp eq i32 %57, 98
  %149 = add i32 %57, -97
  %150 = icmp ult i32 %149, 2
  br i1 %150, label %151, label %192

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !16
  %154 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !11
  %156 = tail call fastcc i32 @compare_values_warnv(ptr noundef %153, ptr noundef %155, ptr noundef %3) #20
  %157 = icmp eq i32 %156, -1
  %158 = select i1 %147, i1 %157, i1 false
  br i1 %158, label %163, label %159

159:                                              ; preds = %151
  %160 = add i32 %156, 1
  %161 = icmp ult i32 %160, 2
  %162 = select i1 %148, i1 %161, i1 false
  br i1 %162, label %163, label %172

163:                                              ; preds = %159, %151
  %164 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %56) #20, !range !15
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %55) #20, !range !15
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %166, %163
  store i8 1, ptr %3, align 1, !tbaa !13
  br label %170

170:                                              ; preds = %169, %166
  %171 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  br label %193

172:                                              ; preds = %159
  %173 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !11
  %175 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !16
  %177 = tail call fastcc i32 @compare_values_warnv(ptr noundef %174, ptr noundef %176, ptr noundef %3) #20
  %178 = icmp ult i32 %177, 2
  %179 = select i1 %147, i1 %178, i1 false
  %180 = icmp eq i32 %177, 1
  %181 = select i1 %148, i1 %180, i1 false
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %172
  %184 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %56) #20, !range !15
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %55) #20, !range !15
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %186, %183
  store i8 1, ptr %3, align 1, !tbaa !13
  br label %190

190:                                              ; preds = %189, %186
  %191 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !12
  br label %193

192:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3488, ptr noundef nonnull @.str.28) #21
  br label %193

193:                                              ; preds = %82, %139, %170, %190, %172, %122, %134, %129, %124, %84, %44, %47, %26, %33, %17, %15, %4, %4, %6, %6, %192, %103, %101, %40
  %194 = phi ptr [ %43, %40 ], [ %88, %84 ], [ null, %103 ], [ %102, %101 ], [ null, %192 ], [ null, %6 ], [ null, %6 ], [ null, %4 ], [ null, %4 ], [ null, %15 ], [ null, %17 ], [ null, %33 ], [ null, %26 ], [ null, %47 ], [ null, %44 ], [ %123, %122 ], [ null, %134 ], [ null, %129 ], [ null, %124 ], [ %171, %170 ], [ %191, %190 ], [ null, %172 ], [ %145, %139 ], [ %83, %82 ]
  ret ptr %194
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compare_range_with_value(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %1, align 8, !tbaa !5
  switch i32 %5, label %17 [
    i32 3, label %144
    i32 0, label %144
    i32 2, label %6
  ]

6:                                                ; preds = %4
  %7 = add i32 %0, -97
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %144, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @value_inside_range(ptr noundef %2, ptr noundef nonnull %1) #20, !range !163
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %144

12:                                               ; preds = %9
  %13 = icmp eq i32 %0, 102
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %16 = select i1 %13, ptr %14, ptr %15
  br label %144

17:                                               ; preds = %4
  %18 = tail call fastcc zeroext i8 @usable_range_p(ptr noundef nonnull %1, ptr noundef %3) #20, !range !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %144, label %20

20:                                               ; preds = %17
  switch i32 %0, label %71 [
    i32 101, label %21
    i32 102, label %48
  ]

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  %26 = tail call fastcc i32 @compare_values_warnv(ptr noundef %23, ptr noundef %25, ptr noundef %3) #20
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %22, align 8, !tbaa !11
  br i1 %27, label %29, label %38

29:                                               ; preds = %21
  %30 = tail call fastcc i32 @compare_values_warnv(ptr noundef %28, ptr noundef %2, ptr noundef %3) #20
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  br label %144

34:                                               ; preds = %29
  %35 = add i32 %30, -3
  %36 = icmp ult i32 %35, -4
  %37 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  br i1 %36, label %47, label %144

38:                                               ; preds = %21
  %39 = tail call fastcc i32 @compare_values_warnv(ptr noundef %2, ptr noundef %28, ptr noundef %3) #20
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %24, align 8, !tbaa !16
  %43 = tail call fastcc i32 @compare_values_warnv(ptr noundef %42, ptr noundef %2, ptr noundef %3) #20
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %38
  %46 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !12
  br label %144

47:                                               ; preds = %34, %41
  br label %144

48:                                               ; preds = %20
  %49 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !16
  %51 = tail call fastcc i32 @compare_values_warnv(ptr noundef %50, ptr noundef %2, ptr noundef %3) #20
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !11
  %56 = tail call fastcc i32 @compare_values_warnv(ptr noundef %55, ptr noundef %2, ptr noundef %3) #20
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %48
  %59 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  br label %144

60:                                               ; preds = %53
  %61 = load ptr, ptr %54, align 8, !tbaa !11
  %62 = load ptr, ptr %49, align 8, !tbaa !16
  %63 = tail call fastcc i32 @compare_values_warnv(ptr noundef %61, ptr noundef %62, ptr noundef %3) #20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %144

65:                                               ; preds = %60
  %66 = load ptr, ptr %54, align 8, !tbaa !11
  %67 = tail call fastcc i32 @compare_values_warnv(ptr noundef %66, ptr noundef %2, ptr noundef %3) #20
  %68 = icmp eq i32 %67, 0
  %69 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %70 = select i1 %68, ptr %69, ptr null
  br label %144

71:                                               ; preds = %20
  %72 = icmp eq i32 %0, 97
  %73 = icmp eq i32 %0, 98
  %74 = add i32 %0, -97
  %75 = icmp ult i32 %74, 2
  br i1 %75, label %76, label %107

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !16
  %79 = tail call fastcc i32 @compare_values_warnv(ptr noundef %78, ptr noundef %2, ptr noundef %3) #20
  %80 = icmp eq i32 %79, -1
  %81 = select i1 %72, i1 %80, i1 false
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = add i32 %79, 1
  %84 = icmp ult i32 %83, 2
  %85 = select i1 %73, i1 %84, i1 false
  br i1 %85, label %86, label %92

86:                                               ; preds = %82, %76
  %87 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !15
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  store i8 1, ptr %3, align 1, !tbaa !13
  br label %90

90:                                               ; preds = %89, %86
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  br label %144

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !11
  %95 = tail call fastcc i32 @compare_values_warnv(ptr noundef %94, ptr noundef %2, ptr noundef %3) #20
  %96 = icmp ult i32 %95, 2
  %97 = select i1 %72, i1 %96, i1 false
  %98 = icmp eq i32 %95, 1
  %99 = select i1 %73, i1 %98, i1 false
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %101, label %144

101:                                              ; preds = %92
  %102 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !15
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  store i8 1, ptr %3, align 1, !tbaa !13
  br label %105

105:                                              ; preds = %104, %101
  %106 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !12
  br label %144

107:                                              ; preds = %71
  %108 = icmp eq i32 %0, 99
  %109 = icmp eq i32 %0, 100
  %110 = add i32 %0, -99
  %111 = icmp ult i32 %110, 2
  br i1 %111, label %112, label %143

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !11
  %115 = tail call fastcc i32 @compare_values_warnv(ptr noundef %114, ptr noundef %2, ptr noundef %3) #20
  %116 = icmp eq i32 %115, 1
  %117 = select i1 %108, i1 %116, i1 false
  %118 = icmp ult i32 %115, 2
  %119 = select i1 %109, i1 %118, i1 false
  %120 = select i1 %117, i1 true, i1 %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %112
  %122 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !15
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store i8 1, ptr %3, align 1, !tbaa !13
  br label %125

125:                                              ; preds = %124, %121
  %126 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  br label %144

127:                                              ; preds = %112
  %128 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !16
  %130 = tail call fastcc i32 @compare_values_warnv(ptr noundef %129, ptr noundef %2, ptr noundef %3) #20
  %131 = add i32 %130, 1
  %132 = icmp ult i32 %131, 2
  %133 = select i1 %108, i1 %132, i1 false
  %134 = icmp eq i32 %130, -1
  %135 = select i1 %109, i1 %134, i1 false
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %127
  %138 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !15
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  store i8 1, ptr %3, align 1, !tbaa !13
  br label %141

141:                                              ; preds = %140, %137
  %142 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !12
  br label %144

143:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3620, ptr noundef nonnull @.str.28) #21
  br label %144

144:                                              ; preds = %32, %65, %125, %141, %127, %90, %105, %92, %60, %34, %17, %9, %6, %4, %4, %143, %58, %47, %45, %12
  %145 = phi ptr [ %16, %12 ], [ %37, %34 ], [ null, %47 ], [ %46, %45 ], [ %59, %58 ], [ null, %143 ], [ null, %4 ], [ null, %4 ], [ null, %6 ], [ null, %9 ], [ null, %17 ], [ null, %60 ], [ %91, %90 ], [ %106, %105 ], [ null, %92 ], [ %126, %125 ], [ %142, %141 ], [ null, %127 ], [ %70, %65 ], [ %33, %32 ]
  ret ptr %145
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @usable_range_p(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 796, ptr noundef nonnull @.str.28) #21
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %8) #20, !range !15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %6
  store i8 1, ptr %1, align 1, !tbaa !13
  %12 = load ptr, ptr %7, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !13
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
  br i1 %26, label %27, label %49

27:                                               ; preds = %11, %6
  %28 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !16
  %30 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %29) #20, !range !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %27
  store i8 1, ptr %1, align 1, !tbaa !13
  %33 = load ptr, ptr %28, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !13
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
  br i1 %47, label %48, label %49

48:                                               ; preds = %32, %27
  br label %49

49:                                               ; preds = %32, %11, %48
  %50 = phi i8 [ 1, %48 ], [ 0, %11 ], [ 0, %32 ]
  ret i8 %50
}

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @get_vr_for_comparison(ptr dead_on_unwind noalias nocapture writable sret(%struct.value_range_d) align 8 %0, i32 noundef %1) unnamed_addr #15 {
  %3 = load ptr, ptr @vr_value, align 8, !tbaa !12
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !84
  %7 = load i32, ptr %0, align 8
  switch i32 %7, label %17 [
    i32 3, label %8
    i32 0, label %8
  ]

8:                                                ; preds = %2, %2
  store i32 1, ptr %0, align 8, !tbaa !5
  %9 = load ptr, ptr @cfun, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %13, i32 noundef %1) #20
  %15 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  store ptr %14, ptr %16, align 8, !tbaa !16
  br label %17

17:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_operand_equal_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %0) #20, !range !15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !15
  br label %16

16:                                               ; preds = %11, %4, %8, %2, %14
  %17 = phi i8 [ %15, %14 ], [ 1, %2 ], [ 0, %8 ], [ 0, %4 ], [ 1, %11 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_bitmap_equal_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %12

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
declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_case_label_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %8 = call fastcc zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef 1, ptr noundef %1, ptr noundef nonnull %6) #20
  %9 = load i64, ptr %6, align 8, !tbaa !35
  %10 = call fastcc zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef %9, ptr noundef %2, ptr noundef nonnull %7) #20
  %11 = load i64, ptr %7, align 8, !tbaa !35
  %12 = icmp eq i64 %9, %11
  %13 = or i8 %10, %8
  %14 = icmp eq i8 %13, 0
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i64 1, ptr %3, align 8, !tbaa !35
  store i64 0, ptr %4, align 8, !tbaa !35
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
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %23) #20
  %28 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %17
  %32 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %23) #20
  %33 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  br label %35

35:                                               ; preds = %31, %17
  %36 = phi ptr [ %34, %31 ], [ %26, %17 ]
  %37 = add i64 %9, 1
  %38 = icmp ugt i64 %37, %22
  br i1 %38, label %62, label %39

39:                                               ; preds = %35, %58
  %40 = phi i64 [ %60, %58 ], [ %37, %35 ]
  %41 = phi ptr [ %59, %58 ], [ %36, %35 ]
  %42 = trunc i64 %40 to i32
  %43 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %42) #20
  %44 = getelementptr inbounds %struct.tree_exp, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !13
  %46 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %45, ptr noundef %41, i32 noundef 0) #21
  %47 = tail call i32 @integer_onep(ptr noundef %46) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %39
  %50 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %42) #20
  %51 = getelementptr inbounds %struct.tree_exp, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !13
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %42) #20
  %56 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !13
  br label %58

58:                                               ; preds = %49, %54
  %59 = phi ptr [ %57, %54 ], [ %45, %49 ]
  %60 = add i64 %40, 1
  %61 = icmp ugt i64 %60, %22
  br i1 %61, label %62, label %39, !llvm.loop !167

62:                                               ; preds = %58, %39, %35
  %63 = phi i1 [ %20, %35 ], [ true, %39 ], [ %20, %58 ]
  store i64 %9, ptr %3, align 8, !tbaa !35
  store i64 %22, ptr %4, align 8, !tbaa !35
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
define internal fastcc noundef zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #20
  %6 = zext i32 %5 to i64
  %7 = icmp eq i64 %6, %1
  br i1 %7, label %33, label %8

8:                                                ; preds = %4, %29
  %9 = phi i64 [ %31, %29 ], [ %1, %4 ]
  %10 = phi i64 [ %30, %29 ], [ %6, %4 ]
  %11 = add i64 %9, %10
  %12 = lshr i64 %11, 1
  %13 = trunc i64 %12 to i32
  %14 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %13) #20
  %15 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = tail call i32 @tree_int_cst_compare(ptr noundef %16, ptr noundef %2) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %8
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = add nuw i64 %12, 1
  %23 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %24, ptr noundef %2) #21
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %33, label %29

29:                                               ; preds = %21, %26, %19
  %30 = phi i64 [ %10, %26 ], [ %10, %21 ], [ %12, %19 ]
  %31 = phi i64 [ %22, %26 ], [ %22, %21 ], [ %9, %19 ]
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %8, !llvm.loop !168

33:                                               ; preds = %29, %26, %8, %4
  %34 = phi i64 [ %1, %4 ], [ %12, %8 ], [ %12, %26 ], [ %30, %29 ]
  %35 = phi i8 [ 0, %4 ], [ 1, %8 ], [ 1, %26 ], [ 0, %29 ]
  store i64 %34, ptr %3, align 8, !tbaa !35
  ret i8 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !139
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #20
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_range_with_scev(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %0, align 8, !tbaa !5
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %105, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @analyze_scalar_evolution(ptr noundef %1, ptr noundef %3) #21
  %9 = tail call fastcc ptr @instantiate_parameters(ptr noundef %1, ptr noundef %8) #20
  %10 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %9) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  tail call fastcc void @set_value_range_to_value(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %14) #20
  br label %105

15:                                               ; preds = %7
  %16 = load i64, ptr %9, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 146
  br i1 %18, label %19, label %105

19:                                               ; preds = %15
  %20 = load i32, ptr %1, align 8, !tbaa !170
  %21 = tail call ptr @initial_condition_in_loop_num(ptr noundef nonnull %9, i32 noundef %20) #21
  %22 = load i32, ptr %1, align 8, !tbaa !170
  %23 = tail call ptr @evolution_part_in_loop_num(ptr noundef nonnull %9, i32 noundef %22) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %105, label %25

25:                                               ; preds = %19
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %23) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %105, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @valid_value_p(ptr noundef %21) #20
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %105, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @scev_direction(ptr noundef nonnull %9) #21
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %105, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %9) #20
  %36 = tail call zeroext i8 @scev_probably_wraps_p(ptr noundef %21, ptr noundef nonnull %23, ptr noundef %2, ptr noundef %35, i8 noundef zeroext 1) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %105

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !13
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i16
  switch i16 %42, label %43 [
    i16 10, label %47
    i16 12, label %47
  ]

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 13
  %45 = load ptr, ptr %44, align 8, !tbaa !13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %51

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
  ]

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51, %51, %54
  %59 = tail call ptr @upper_bound_in_type(ptr noundef nonnull %40, ptr noundef nonnull %40) #21
  br label %60

60:                                               ; preds = %54, %58
  %61 = phi ptr [ %59, %58 ], [ %56, %54 ]
  %62 = load i32, ptr %0, align 8, !tbaa !5
  switch i32 %62, label %105 [
    i32 3, label %63
    i32 0, label %63
    i32 1, label %72
  ]

63:                                               ; preds = %60, %60
  %64 = icmp eq i32 %32, 1
  %65 = select i1 %64, ptr %53, ptr %21
  %66 = select i1 %64, ptr %21, ptr %61
  %67 = tail call fastcc i32 @compare_values(ptr noundef %65, ptr noundef %66) #20
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %105, label %69

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %65, ptr noundef %66, ptr noundef %71) #20
  br label %105

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !11
  %75 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !16
  %77 = icmp eq i32 %32, 1
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = tail call fastcc i32 @compare_values(ptr noundef %21, ptr noundef %76) #20
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = tail call fastcc i32 @compare_values(ptr noundef %74, ptr noundef %21) #20
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %105, label %84

84:                                               ; preds = %81, %78
  %85 = phi ptr [ %21, %81 ], [ %76, %78 ]
  %86 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %74) #20, !range !15
  %87 = icmp eq i8 %86, 0
  %88 = select i1 %87, ptr %74, ptr %53
  br label %100

89:                                               ; preds = %72
  %90 = tail call fastcc i32 @compare_values(ptr noundef %21, ptr noundef %74) #20
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = tail call fastcc i32 @compare_values(ptr noundef %21, ptr noundef %76) #20
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %105, label %95

95:                                               ; preds = %92, %89
  %96 = phi ptr [ %21, %92 ], [ %74, %89 ]
  %97 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %76) #20, !range !15
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %98, ptr %76, ptr %61
  br label %100

100:                                              ; preds = %95, %84
  %101 = phi ptr [ %88, %84 ], [ %96, %95 ]
  %102 = phi ptr [ %85, %84 ], [ %99, %95 ]
  %103 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !14
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %101, ptr noundef %102, ptr noundef %104) #20
  br label %105

105:                                              ; preds = %69, %100, %60, %92, %81, %63, %31, %34, %19, %25, %28, %15, %4, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vrp_var_may_overflow(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %1) #20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %8) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @analyze_scalar_evolution(ptr noundef nonnull %8, ptr noundef %0) #21
  %15 = tail call fastcc ptr @instantiate_parameters(ptr noundef nonnull %8, ptr noundef %14) #20
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 146
  br i1 %18, label %19, label %45

19:                                               ; preds = %13
  %20 = load i32, ptr %8, align 8, !tbaa !170
  %21 = tail call ptr @initial_condition_in_loop_num(ptr noundef nonnull %15, i32 noundef %20) #21
  %22 = load i32, ptr %8, align 8, !tbaa !170
  %23 = tail call ptr @evolution_part_in_loop_num(ptr noundef nonnull %15, i32 noundef %22) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %19
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %23) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @valid_value_p(ptr noundef %21) #20
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %15) #20
  %33 = tail call zeroext i8 @scev_probably_wraps_p(ptr noundef %21, ptr noundef nonnull %23, ptr noundef %1, ptr noundef %32, i8 noundef zeroext 1) #21
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  tail call void @print_generic_expr(ptr noundef nonnull %36, ptr noundef %0, i32 noundef 0) #21
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %44 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 47, i64 1, ptr %43)
  br label %45

45:                                               ; preds = %35, %38, %42, %31, %19, %25, %28, %13, %7, %10, %2
  %46 = phi i8 [ 1, %2 ], [ 1, %10 ], [ 1, %7 ], [ 1, %13 ], [ 1, %28 ], [ 1, %25 ], [ 1, %19 ], [ 1, %31 ], [ 0, %42 ], [ 0, %38 ], [ 0, %35 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @block_before_loop(ptr noundef %0) #20
  %4 = tail call ptr @instantiate_scev(ptr noundef %3, ptr noundef %0, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @initial_condition_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @evolution_part_in_loop_num(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @valid_value_p(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %17 [
    i16 141, label %19
    i16 63, label %4
    i16 64, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
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
declare i32 @scev_direction(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @scev_probably_wraps_p(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_chrec_loop(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !13
  %6 = trunc i64 %5 to i32
  %7 = tail call fastcc ptr @get_loop(i32 noundef %6) #20
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @lower_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @upper_bound_in_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @block_before_loop(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @loop_preheader_edge(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #20
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #20
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !174
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @substitute_and_fold(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @vrp_fold_stmt(ptr noundef %0) #0 {
  %2 = tail call fastcc zeroext i8 @fold_predicate_in(ptr noundef %0) #20, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @simplify_stmt_using_ranges(ptr noundef %0) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i8 [ %5, %4 ], [ 1, %1 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_all_array_refs() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  %5 = load ptr, ptr @cfun, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !73
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
  store i32 0, ptr %2, align 8, !tbaa.struct !107
  store ptr %19, ptr %15, align 8, !tbaa.struct !108
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %19, ptr noundef nonnull %3) #20, !range !15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %17, %22
  %23 = phi i8 [ %30, %22 ], [ 0, %17 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !12
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !83
  %27 = lshr i32 %26, 12
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = or i8 %29, %23
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %31 = load i32, ptr %2, align 8
  %32 = load ptr, ptr %15, align 8
  %33 = call fastcc zeroext i8 @ei_cond(i32 %31, ptr %32, ptr noundef nonnull %3) #20, !range !15
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %22, !llvm.loop !176

35:                                               ; preds = %22
  %36 = icmp eq i8 %30, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %35
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %18) #20
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !15
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %37, %62
  %41 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  %42 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %41) #20, !range !15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  %45 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %41) #20, !range !15
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
  br i1 %57, label %62, label %51, !llvm.loop !177

58:                                               ; preds = %44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %59 = call fastcc ptr @gimple_location_ptr(ptr noundef %41) #20
  store ptr %59, ptr %16, align 8, !tbaa !178
  %60 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %61 = call ptr @walk_gimple_op(ptr noundef %60, ptr noundef nonnull @check_array_bounds, ptr noundef nonnull %4) #21
  br label %62

62:                                               ; preds = %51, %47, %58, %40
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  %63 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !15
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %40, label %65, !llvm.loop !180

65:                                               ; preds = %62, %17, %37, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !72
  %68 = load ptr, ptr @cfun, align 8, !tbaa !12
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !69
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !73
  %73 = icmp eq ptr %67, %72
  br i1 %73, label %74, label %17, !llvm.loop !181

74:                                               ; preds = %65, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @identify_jump_threads() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  tail call void @calculate_dominance_info(i32 noundef 1) #21
  %4 = tail call zeroext i8 @mark_dfs_back_edges() #21
  %5 = load ptr, ptr @to_remove_edges, align 8
  %6 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %1) #20, !range !59
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %0, %8
  %9 = phi i32 [ %14, %8 ], [ 0, %0 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !12
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !83
  %13 = or i32 %12, 32
  store i32 %13, ptr %11, align 8, !tbaa !83
  %14 = add nuw nsw i32 %9, 1
  %15 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef %14, ptr noundef nonnull %1) #20, !range !59
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %8, !llvm.loop !182

17:                                               ; preds = %8, %0
  %18 = tail call fastcc ptr @VEC_tree_heap_alloc() #20
  store ptr %18, ptr @stack, align 8, !tbaa !12
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !12
  %20 = tail call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %19, ptr noundef %19, ptr noundef null, ptr noundef null) #21
  %21 = load ptr, ptr @cfun, align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !69
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !72
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %122, label %30

30:                                               ; preds = %17
  %31 = getelementptr inbounds i8, ptr %3, i64 8
  br label %32

32:                                               ; preds = %30, %113
  %33 = phi ptr [ %26, %30 ], [ %115, %113 ]
  %34 = tail call zeroext i8 @potentially_threadable_block(ptr noundef %33) #21
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %113, label %36

36:                                               ; preds = %32
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %33) #20
  %37 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %38 = tail call fastcc i32 @gimple_code(ptr noundef %37) #20, !range !80
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %113

40:                                               ; preds = %36
  %41 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 141
  br i1 %44, label %45, label %113

45:                                               ; preds = %40
  %46 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %66, label %52

52:                                               ; preds = %45
  %53 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !13
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 7
  br i1 %58, label %66, label %59

59:                                               ; preds = %52
  %60 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !13
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 8
  br i1 %65, label %66, label %113

66:                                               ; preds = %59, %52, %45
  %67 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 141
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %73 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %72) #21
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %113, label %75

75:                                               ; preds = %71, %66
  %76 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !13
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 6
  br i1 %81, label %96, label %82

82:                                               ; preds = %75
  %83 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !13
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 7
  br i1 %88, label %96, label %89

89:                                               ; preds = %82
  %90 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !13
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 8
  br i1 %95, label %96, label %113

96:                                               ; preds = %89, %82, %75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %97 = tail call fastcc ptr @ei_start_1(ptr noundef %33) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !107
  store ptr %97, ptr %31, align 8, !tbaa.struct !108
  %98 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %97, ptr noundef nonnull %1) #20, !range !15
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %96, %107
  %101 = load ptr, ptr %1, align 8, !tbaa !12
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !83
  %104 = and i32 %103, 46
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  tail call void @thread_across_edge(ptr noundef %20, ptr noundef nonnull %101, i8 noundef zeroext 1, ptr noundef nonnull @stack, ptr noundef nonnull @simplify_stmt_for_jump_threading) #21
  br label %107

107:                                              ; preds = %100, %106
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %108 = load i32, ptr %3, align 8
  %109 = load ptr, ptr %31, align 8
  %110 = call fastcc zeroext i8 @ei_cond(i32 %108, ptr %109, ptr noundef nonnull %1) #20, !range !15
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %100, !llvm.loop !183

112:                                              ; preds = %107, %96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %113

113:                                              ; preds = %40, %59, %71, %89, %112, %36, %32
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !72
  %116 = load ptr, ptr @cfun, align 8, !tbaa !12
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !69
  %119 = getelementptr inbounds %struct.control_flow_graph, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !73
  %121 = icmp eq ptr %115, %120
  br i1 %121, label %122, label %32, !llvm.loop !184

122:                                              ; preds = %113, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fold_predicate_in(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #20, !range !96
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !23
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %20, label %11

11:                                               ; preds = %5, %1
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !80
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %58

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gimple_cond_code(ptr noundef %2) #20, !range !96
  %16 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %2) #20
  %17 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %2) #20
  %18 = tail call fastcc ptr @vrp_evaluate_conditional(i32 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %2) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %29

20:                                               ; preds = %5
  %21 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #20, !range !96
  %22 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %23 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #20
  %24 = tail call fastcc ptr @vrp_evaluate_conditional(i32 noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %2) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %58, label %26

26:                                               ; preds = %20
  %27 = tail call fastcc ptr @gimple_expr_type(ptr noundef %2) #20
  %28 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %27, ptr noundef nonnull %24) #21
  br label %29

29:                                               ; preds = %14, %26
  %30 = phi ptr [ %28, %26 ], [ %18, %14 ]
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 18, i64 1, ptr nonnull %31)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_gimple_expr(ptr noundef %35, ptr noundef %2, i32 noundef 0, i32 noundef 0) #21
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %37 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 4, i64 1, ptr %36)
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_generic_expr(ptr noundef %38, ptr noundef %30, i32 noundef 0) #21
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %40 = tail call i32 @fputc(i32 10, ptr %39)
  br label %41

41:                                               ; preds = %33, %29
  %42 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %30) #21
  br label %58

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !80
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 7056, ptr noundef nonnull @.str.28) #21
  br label %49

49:                                               ; preds = %45, %48
  %50 = tail call i32 @integer_zerop(ptr noundef %30) #21
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  tail call fastcc void @gimple_cond_make_false(ptr noundef %2) #20
  br label %58

53:                                               ; preds = %49
  %54 = tail call i32 @integer_onep(ptr noundef %30) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  tail call fastcc void @gimple_cond_make_true(ptr noundef %2) #20
  br label %58

57:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 7062, ptr noundef nonnull @.str.28) #21
  br label %58

58:                                               ; preds = %20, %14, %44, %56, %57, %52, %11
  %59 = phi i8 [ 0, %11 ], [ 1, %52 ], [ 1, %57 ], [ 1, %56 ], [ 1, %44 ], [ 0, %14 ], [ 0, %20 ]
  ret i8 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simplify_stmt_using_ranges(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %86, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #20, !range !96
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
  ]

8:                                                ; preds = %5, %5, %5, %5, %5, %5
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !13
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 6
  br i1 %14, label %29, label %15

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 7
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 8
  br i1 %28, label %29, label %92

29:                                               ; preds = %22, %15, %8
  %30 = tail call fastcc zeroext i8 @simplify_truth_ops_using_ranges(ptr noundef %0, ptr noundef %2) #20, !range !15
  br label %92

31:                                               ; preds = %5, %5
  %32 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !13
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 6
  br i1 %37, label %52, label %38

38:                                               ; preds = %31
  %39 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !13
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 7
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !13
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 8
  br i1 %51, label %52, label %92

52:                                               ; preds = %45, %38, %31
  %53 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #20
  %54 = tail call i32 @integer_pow2p(ptr noundef %53) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %92, label %56

56:                                               ; preds = %52
  %57 = tail call fastcc zeroext i8 @simplify_div_or_mod_using_ranges(ptr noundef %2) #20, !range !15
  br label %92

58:                                               ; preds = %5
  %59 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 141
  br i1 %62, label %63, label %92

63:                                               ; preds = %58
  %64 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %65 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !13
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 6
  br i1 %69, label %84, label %70

70:                                               ; preds = %63
  %71 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 7
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %79 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !13
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 8
  br i1 %83, label %84, label %92

84:                                               ; preds = %77, %70, %63
  %85 = tail call fastcc zeroext i8 @simplify_abs_using_ranges(ptr noundef %2) #20, !range !15
  br label %92

86:                                               ; preds = %1
  %87 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !80
  %88 = trunc i32 %87 to i8
  switch i8 %88, label %92 [
    i8 1, label %89
    i8 5, label %91
  ]

89:                                               ; preds = %86
  %90 = tail call fastcc zeroext i8 @simplify_cond_using_ranges(ptr noundef %2) #20, !range !15
  br label %92

91:                                               ; preds = %86
  tail call fastcc void @simplify_switch_using_ranges(ptr noundef %2) #20
  br label %92

92:                                               ; preds = %86, %22, %52, %45, %77, %58, %5, %29, %56, %84, %91, %89
  %93 = phi i8 [ %90, %89 ], [ 0, %91 ], [ %85, %84 ], [ %57, %56 ], [ %30, %29 ], [ 0, %5 ], [ 0, %58 ], [ 0, %77 ], [ 0, %45 ], [ 0, %52 ], [ 0, %22 ], [ 0, %86 ]
  ret i8 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vrp_evaluate_conditional(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 134283263
  %9 = icmp eq i64 %8, 134217751
  br i1 %9, label %91, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8
  %12 = and i64 %11, 134283263
  %13 = icmp eq i64 %12, 134217751
  br i1 %13, label %91, label %14

14:                                               ; preds = %10
  store i8 0, ptr %5, align 1, !tbaa !13
  %15 = call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %16 = icmp ne ptr %15, null
  %17 = load i8, ptr %5, align 1
  %18 = icmp ne i8 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  %21 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %15) #21
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i32 3, i32 2
  %24 = select i1 %22, ptr @.str.57, ptr @.str.56
  %25 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !23
  %26 = icmp slt i32 %25, %23
  br i1 %26, label %37, label %27

27:                                               ; preds = %20
  %28 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %3) #20, !range !15
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, ptr @input_location, align 4, !tbaa !23
  br label %34

32:                                               ; preds = %27
  %33 = call fastcc i32 @gimple_location(ptr noundef %3) #20
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %33, %32 ], [ %31, %30 ]
  %36 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %35, i32 noundef 187, ptr noundef nonnull @.str.58, ptr noundef nonnull %24) #21
  br label %37

37:                                               ; preds = %20, %34, %14
  %38 = load i32, ptr @warn_type_limits, align 4, !tbaa !23
  %39 = icmp ne i32 %38, 0
  %40 = and i1 %16, %39
  %41 = load i8, ptr %6, align 1
  %42 = icmp ne i8 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %91

44:                                               ; preds = %37
  %45 = zext nneg i32 %0 to i64
  %46 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !23
  %48 = icmp eq i32 %47, 5
  br i1 %48, label %49, label %91

49:                                               ; preds = %44
  %50 = load i64, ptr %1, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %53, label %91

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !13
  %56 = call fastcc ptr @get_value_range(ptr noundef nonnull %1) #20
  %57 = load i32, ptr %56, align 8, !tbaa !5
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %91, label %59

59:                                               ; preds = %53
  %60 = load i64, ptr %55, align 8
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 65535
  %63 = add nsw i32 %62, -6
  %64 = icmp ult i32 %63, 3
  br i1 %64, label %65, label %91

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %67) #20, !range !15
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !16
  %73 = call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %72) #20, !range !15
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %70
  %76 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %2) #21
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %75
  %79 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %3) #20, !range !15
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, ptr @input_location, align 4, !tbaa !23
  br label %85

83:                                               ; preds = %78
  %84 = call fastcc i32 @gimple_location(ptr noundef %3) #20
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %84, %83 ], [ %82, %81 ]
  %87 = call i32 @integer_zerop(ptr noundef nonnull %15) #21
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, ptr @.str.60, ptr @.str.59
  %90 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %86, i32 noundef 206, ptr noundef nonnull %89) #21
  br label %91

91:                                               ; preds = %59, %37, %44, %49, %85, %75, %70, %65, %53, %4, %10
  %92 = phi ptr [ null, %10 ], [ null, %4 ], [ %15, %53 ], [ %15, %65 ], [ %15, %70 ], [ %15, %75 ], [ %15, %85 ], [ %15, %59 ], [ %15, %49 ], [ %15, %44 ], [ %15, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  ret ptr %92
}

; Function Attrs: optsize
declare void @print_gimple_expr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_false(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #20
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !12
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #20
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_true(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #20
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !12
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #20
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !13
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1665, ptr noundef nonnull @.str.28) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simplify_truth_ops_using_ranges(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !96
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store i8 0, ptr %3, align 1, !tbaa !13
  %5 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1023
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %31, label %12

12:                                               ; preds = %2
  %13 = load i64, ptr %5, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %133

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %5) #20
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !12
  %19 = call fastcc ptr @compare_range_with_value(i32 noundef 100, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %3) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %133, label %21

21:                                               ; preds = %16
  %22 = call i32 @integer_onep(ptr noundef nonnull %19) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %133, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !12
  %26 = call fastcc ptr @compare_range_with_value(i32 noundef 98, ptr noundef %17, ptr noundef %25, ptr noundef nonnull %3) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %133, label %28

28:                                               ; preds = %24
  %29 = call i32 @integer_onep(ptr noundef nonnull %26) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %133, label %31

31:                                               ; preds = %28, %2
  %32 = icmp eq i32 %4, 96
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load ptr, ptr %6, align 8, !tbaa !13
  %35 = call ptr @build_int_cst(ptr noundef %34, i64 noundef 1) #21
  br label %81

36:                                               ; preds = %31
  %37 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  %38 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %37) #21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = trunc i32 %4 to i16
  switch i16 %41, label %133 [
    i16 102, label %42
    i16 101, label %42
    i16 95, label %42
  ]

42:                                               ; preds = %40, %40, %40
  %43 = call i32 @integer_zerop(ptr noundef %37) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = call i32 @integer_onep(ptr noundef %37) #21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call i32 @integer_all_onesp(ptr noundef %37) #21
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %133, label %51

51:                                               ; preds = %48, %45, %42
  %52 = icmp eq i32 %4, 101
  br i1 %52, label %53, label %81

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !13
  %56 = call ptr @fold_unary_loc(i32 noundef 0, i32 noundef 96, ptr noundef %55, ptr noundef %37) #21
  br label %81

57:                                               ; preds = %36
  %58 = icmp eq i32 %4, 101
  br i1 %58, label %133, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !13
  %62 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1023
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %81, label %66

66:                                               ; preds = %59
  %67 = call fastcc ptr @get_value_range(ptr noundef nonnull %37) #20
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !12
  %69 = call fastcc ptr @compare_range_with_value(i32 noundef 100, ptr noundef %67, ptr noundef %68, ptr noundef nonnull %3) #20
  %70 = icmp eq ptr %69, null
  br i1 %70, label %133, label %71

71:                                               ; preds = %66
  %72 = call i32 @integer_onep(ptr noundef nonnull %69) #21
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %133, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !12
  %76 = call fastcc ptr @compare_range_with_value(i32 noundef 98, ptr noundef %67, ptr noundef %75, ptr noundef nonnull %3) #20
  %77 = icmp eq ptr %76, null
  br i1 %77, label %133, label %78

78:                                               ; preds = %74
  %79 = call i32 @integer_onep(ptr noundef nonnull %76) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %133, label %81

81:                                               ; preds = %53, %51, %78, %59, %33
  %82 = phi i32 [ 102, %33 ], [ 102, %53 ], [ %4, %51 ], [ %4, %78 ], [ %4, %59 ]
  %83 = phi ptr [ %35, %33 ], [ %56, %53 ], [ %37, %51 ], [ %37, %78 ], [ %37, %59 ]
  %84 = load i8, ptr %3, align 1, !tbaa !13
  %85 = icmp ne i8 %84, 0
  %86 = load i32, ptr @warn_strict_overflow, align 4
  %87 = icmp sgt i32 %86, 3
  %88 = select i1 %85, i1 %87, i1 false
  br i1 %88, label %89, label %102

89:                                               ; preds = %81
  %90 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %1) #20, !range !15
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, ptr @input_location, align 4, !tbaa !23
  br label %96

94:                                               ; preds = %89
  %95 = call fastcc i32 @gimple_location(ptr noundef %1) #20
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %95, %94 ], [ %93, %92 ]
  %98 = add nsw i32 %82, -93
  %99 = icmp ult i32 %98, 2
  %100 = select i1 %99, ptr @.str.61, ptr @.str.62
  %101 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %97, i32 noundef 187, ptr noundef nonnull %100) #21
  br label %102

102:                                              ; preds = %96, %81
  %103 = call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #20
  %104 = getelementptr inbounds %struct.tree_common, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !13
  %106 = load ptr, ptr %6, align 8, !tbaa !13
  %107 = call zeroext i8 @useless_type_conversion_p(ptr noundef %105, ptr noundef %106) #21
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %102
  %110 = load ptr, ptr %6, align 8, !tbaa !13
  %111 = load i64, ptr %110, align 8
  %112 = and i64 %111, 2097152
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.tree_type, ptr %110, i64 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 1023
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %133, label %119

119:                                              ; preds = %114, %109, %102
  %120 = trunc i32 %82 to i16
  switch i16 %120, label %127 [
    i16 93, label %128
    i16 94, label %121
    i16 95, label %122
    i16 102, label %122
  ]

121:                                              ; preds = %119
  br label %128

122:                                              ; preds = %119, %119
  %123 = call i32 @integer_zerop(ptr noundef %83) #21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = select i1 %108, i32 116, i32 141
  call void @gimple_assign_set_rhs_with_ops(ptr noundef %0, i32 noundef %126, ptr noundef nonnull %5, ptr noundef null) #21
  br label %131

127:                                              ; preds = %119
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 6568, ptr noundef nonnull @.str.28) #21
  br label %128

128:                                              ; preds = %122, %119, %127, %121
  %129 = phi i32 [ %82, %127 ], [ 87, %121 ], [ 89, %119 ], [ 88, %122 ]
  br i1 %108, label %133, label %130

130:                                              ; preds = %128
  call void @gimple_assign_set_rhs_with_ops(ptr noundef %0, i32 noundef %129, ptr noundef nonnull %5, ptr noundef %83) #21
  br label %131

131:                                              ; preds = %125, %130
  %132 = call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  call fastcc void @update_stmt(ptr noundef %132) #20
  br label %133

133:                                              ; preds = %131, %128, %114, %74, %78, %66, %71, %57, %48, %40, %24, %28, %16, %21, %12
  %134 = phi i8 [ 0, %12 ], [ 0, %21 ], [ 0, %16 ], [ 0, %28 ], [ 0, %24 ], [ 0, %40 ], [ 0, %48 ], [ 0, %57 ], [ 0, %71 ], [ 0, %66 ], [ 0, %78 ], [ 0, %74 ], [ 0, %114 ], [ 0, %128 ], [ 1, %131 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret i8 %134
}

; Function Attrs: optsize
declare i32 @integer_pow2p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simplify_div_or_mod_using_ranges(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !96
  %4 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %5 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %7 = tail call fastcc ptr @get_value_range(ptr noundef %6) #20
  %8 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 2097152
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !12
  br label %39

15:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !13
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !12
  %17 = call fastcc ptr @compare_range_with_value(i32 noundef 100, ptr noundef %7, ptr noundef %16, ptr noundef nonnull %2) #20
  %18 = icmp ne ptr %17, null
  %19 = load i8, ptr %2, align 1
  %20 = icmp ne i8 %19, 0
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = call i32 @integer_onep(ptr noundef nonnull %17) #21
  %24 = icmp ne i32 %23, 0
  %25 = load i32, ptr @warn_strict_overflow, align 4
  %26 = icmp sgt i32 %25, 3
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !15
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, ptr @input_location, align 4, !tbaa !23
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
  br i1 %41, label %61, label %42

42:                                               ; preds = %39
  %43 = call i32 @integer_onep(ptr noundef nonnull %40) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %42
  %46 = icmp eq i32 %3, 67
  br i1 %46, label %47, label %51

47:                                               ; preds = %45
  %48 = call i32 @tree_log2(ptr noundef %5) #21
  %49 = sext i32 %48 to i64
  %50 = call ptr @build_int_cst(ptr noundef null, i64 noundef %49) #21
  br label %58

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !13
  %54 = call ptr @build_int_cst(ptr noundef %53, i64 noundef 1) #21
  %55 = call ptr @int_const_binop(i32 noundef 64, ptr noundef %5, ptr noundef %54, i32 noundef 0) #21
  %56 = load ptr, ptr %8, align 8, !tbaa !13
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
define internal fastcc noundef zeroext i8 @simplify_abs_using_ranges(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = tail call fastcc ptr @get_value_range(ptr noundef %3) #20
  %7 = load i64, ptr %5, align 8
  %8 = and i64 %7, 2097152
  %9 = icmp ne i64 %8, 0
  %10 = icmp eq ptr %6, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %58, label %12

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !13
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !12
  %14 = call fastcc ptr @compare_range_with_value(i32 noundef 98, ptr noundef nonnull %6, ptr noundef %13, ptr noundef nonnull %2) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  store i8 0, ptr %2, align 1, !tbaa !13
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !12
  %18 = call fastcc ptr @compare_range_with_value(i32 noundef 100, ptr noundef nonnull %6, ptr noundef %17, ptr noundef nonnull %2) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20

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
  br i1 %29, label %57, label %30

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
  %38 = load i8, ptr %2, align 1, !tbaa !13
  %39 = icmp ne i8 %38, 0
  %40 = load i32, ptr @warn_strict_overflow, align 4
  %41 = icmp sgt i32 %40, 3
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, ptr @input_location, align 4, !tbaa !23
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
define internal fastcc noundef zeroext i8 @simplify_cond_using_ranges(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %3 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %4 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !96
  %5 = add nsw i32 %4, -103
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %7, label %59

7:                                                ; preds = %1
  %8 = load i64, ptr %2, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %59

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !13
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -6
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %59

19:                                               ; preds = %11
  %20 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %3) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %59, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %2) #20
  %24 = load i32, ptr %23, align 8, !tbaa !5
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @test_for_singularity(i32 noundef %4, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %23) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 22, i64 1, ptr nonnull %30)
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_gimple_stmt(ptr noundef %34, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %36 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 6, i64 1, ptr %35)
  br label %37

37:                                               ; preds = %32, %29
  tail call fastcc void @gimple_cond_set_code(ptr noundef %0, i32 noundef 101) #20
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef nonnull %2) #20
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef nonnull %27) #20
  tail call fastcc void @update_stmt(ptr noundef %0) #20
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %55

40:                                               ; preds = %26
  %41 = tail call i32 @invert_tree_comparison(i32 noundef %4, i8 noundef zeroext 0) #21
  %42 = tail call fastcc ptr @test_for_singularity(i32 noundef %41, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %23) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 22, i64 1, ptr nonnull %45)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !12
  tail call void @print_gimple_stmt(ptr noundef %49, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %51 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 6, i64 1, ptr %50)
  br label %52

52:                                               ; preds = %47, %44
  tail call fastcc void @gimple_cond_set_code(ptr noundef %0, i32 noundef 102) #20
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef nonnull %2) #20
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef nonnull %42) #20
  tail call fastcc void @update_stmt(ptr noundef %0) #20
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52, %37
  %56 = phi ptr [ %38, %37 ], [ %53, %52 ]
  tail call void @print_gimple_stmt(ptr noundef nonnull %56, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %58 = tail call i32 @fputc(i32 10, ptr %57)
  br label %59

59:                                               ; preds = %55, %40, %22, %11, %1, %7, %19, %52, %37
  %60 = phi i8 [ 1, %37 ], [ 1, %52 ], [ 0, %11 ], [ 0, %19 ], [ 0, %7 ], [ 0, %1 ], [ 0, %22 ], [ 0, %40 ], [ 1, %55 ]
  ret i8 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_switch_using_ranges(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.switch_update, align 8
  %7 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store i64 0, ptr %5, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %124 [
    i16 141, label %10
    i16 23, label %26
  ]

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %7) #20
  %12 = load i32, ptr %11, align 8, !tbaa !5
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %124

14:                                               ; preds = %10
  %15 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %11) #20, !range !15
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %124

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.value_range_d, ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.value_range_d, ptr %11, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !16
  %22 = call fastcc zeroext i8 @find_case_label_range(ptr noundef %0, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %5) #20, !range !15
  %23 = xor i8 %22, 1
  %24 = load i64, ptr %4, align 8, !tbaa !35
  %25 = load i64, ptr %5, align 8, !tbaa !35
  br label %33

26:                                               ; preds = %1
  %27 = call fastcc zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %4) #20
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  store i64 1, ptr %4, align 8, !tbaa !35
  store i64 0, ptr %5, align 8, !tbaa !35
  %30 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #20
  br label %39

31:                                               ; preds = %26
  %32 = load i64, ptr %4, align 8, !tbaa !35
  store i64 %32, ptr %5, align 8, !tbaa !35
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi i64 [ %32, %31 ], [ %25, %17 ]
  %35 = phi i64 [ %32, %31 ], [ %24, %17 ]
  %36 = phi i8 [ 0, %31 ], [ %23, %17 ]
  %37 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #20
  %38 = icmp eq i64 %35, 1
  br i1 %38, label %39, label %48

39:                                               ; preds = %33, %29
  %40 = phi i64 [ 0, %29 ], [ %34, %33 ]
  %41 = phi i32 [ %30, %29 ], [ %37, %33 ]
  %42 = phi i8 [ 1, %29 ], [ %36, %33 ]
  %43 = zext i32 %41 to i64
  %44 = add nsw i64 %43, -1
  %45 = icmp eq i64 %40, %44
  %46 = icmp ne i8 %42, 0
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %124, label %48

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
  br i1 %58, label %62, label %59

59:                                               ; preds = %48
  %60 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef %0) #20
  %61 = getelementptr inbounds %struct.tree_vec, ptr %57, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !13
  br label %62

62:                                               ; preds = %59, %48
  %63 = phi i64 [ 1, %59 ], [ 0, %48 ]
  %64 = icmp ugt i64 %49, %50
  br i1 %64, label %65, label %68

65:                                               ; preds = %68, %62
  %66 = phi i64 [ %63, %62 ], [ %75, %68 ]
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %90, label %77

68:                                               ; preds = %62, %68
  %69 = phi i64 [ %75, %68 ], [ %63, %62 ]
  %70 = phi i64 [ %74, %68 ], [ %49, %62 ]
  %71 = trunc i64 %70 to i32
  %72 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %71) #20
  %73 = getelementptr inbounds %struct.tree_vec, ptr %57, i64 0, i32 2, i64 %69
  store ptr %72, ptr %73, align 8, !tbaa !13
  %74 = add i64 %70, 1
  %75 = add i64 %69, 1
  %76 = icmp ugt i64 %74, %50
  br i1 %76, label %65, label %68, !llvm.loop !185

77:                                               ; preds = %65, %77
  %78 = phi i64 [ %88, %77 ], [ 0, %65 ]
  %79 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %80 = load ptr, ptr @cfun, align 8, !tbaa !12
  %81 = getelementptr inbounds %struct.tree_vec, ptr %57, i64 0, i32 2, i64 %78
  %82 = load ptr, ptr %81, align 8, !tbaa !13
  %83 = getelementptr inbounds %struct.tree_exp, ptr %82, i64 1, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !13
  %85 = tail call ptr @label_to_block_fn(ptr noundef %80, ptr noundef %84) #21
  %86 = tail call ptr @find_edge(ptr noundef %79, ptr noundef %85) #21
  %87 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 3
  store ptr inttoptr (i64 -1 to ptr), ptr %87, align 8, !tbaa !186
  %88 = add nuw i64 %78, 1
  %89 = icmp eq i64 %88, %66
  br i1 %89, label %90, label %77, !llvm.loop !187

90:                                               ; preds = %77, %65
  %91 = phi ptr [ undef, %65 ], [ %86, %77 ]
  store i64 %66, ptr %4, align 8, !tbaa !35
  store ptr %91, ptr %2, align 8, !tbaa !12
  %92 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 1
  %94 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %93) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !107
  %95 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %94, ptr %95, align 8, !tbaa.struct !108
  %96 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %94, ptr noundef nonnull %2) #20, !range !15
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %122, label %98

98:                                               ; preds = %90, %117
  %99 = load ptr, ptr %2, align 8, !tbaa !12
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !186
  %102 = icmp eq ptr %101, inttoptr (i64 -1 to ptr)
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store ptr null, ptr %100, align 8, !tbaa !186
  br label %117

104:                                              ; preds = %98
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !12
  %106 = icmp eq ptr %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr @dump_flags, align 4, !tbaa !23
  %109 = and i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 32, i64 1, ptr nonnull %105)
  br label %113

113:                                              ; preds = %111, %107, %104
  tail call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %99) #20
  %114 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !83
  %116 = and i32 %115, -4097
  store i32 %116, ptr %114, align 8, !tbaa !83
  br label %117

117:                                              ; preds = %113, %103
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %118 = load i32, ptr %3, align 8
  %119 = load ptr, ptr %95, align 8
  %120 = call fastcc zeroext i8 @ei_cond(i32 %118, ptr %119, ptr noundef nonnull %2) #20, !range !15
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %98, !llvm.loop !188

122:                                              ; preds = %117, %90
  store ptr %0, ptr %6, align 8, !tbaa !63
  %123 = getelementptr inbounds %struct.switch_update, ptr %6, i64 0, i32 1
  store ptr %57, ptr %123, align 8, !tbaa !61
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
declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_with_ops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #21
  tail call void @update_stmt_operands(ptr noundef %0) #21
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_log2(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_assign_set_rhs_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 2, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @test_for_singularity(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = add i32 %0, -97
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %27

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 97
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  br i1 %8, label %13, label %56

13:                                               ; preds = %7
  %14 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 8, !tbaa !13
  %18 = tail call ptr @build_int_cst(ptr noundef %17, i64 noundef 1) #21
  %19 = load ptr, ptr %9, align 8, !tbaa !13
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %19, ptr noundef %2, ptr noundef %18) #21
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !23
  %25 = add i32 %24, -4
  %26 = icmp ult i32 %25, 7
  br i1 %26, label %50, label %56

27:                                               ; preds = %4
  %28 = add i32 %0, -99
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %84

30:                                               ; preds = %27
  %31 = icmp eq i32 %0, 99
  %32 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !13
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 14
  %35 = load ptr, ptr %34, align 8, !tbaa !13
  br i1 %31, label %36, label %56

36:                                               ; preds = %30
  %37 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !15
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %36
  %40 = load ptr, ptr %32, align 8, !tbaa !13
  %41 = tail call ptr @build_int_cst(ptr noundef %40, i64 noundef 1) #21
  %42 = load ptr, ptr %32, align 8, !tbaa !13
  %43 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %42, ptr noundef %2, ptr noundef %41) #21
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !23
  %48 = add i32 %47, -4
  %49 = icmp ult i32 %48, 7
  br i1 %49, label %50, label %56

50:                                               ; preds = %39, %16
  %51 = phi i64 [ %21, %16 ], [ %44, %39 ]
  %52 = phi ptr [ %20, %16 ], [ %43, %39 ]
  %53 = phi ptr [ %20, %16 ], [ %35, %39 ]
  %54 = phi ptr [ %12, %16 ], [ %43, %39 ]
  %55 = or i64 %51, 8388608
  store i64 %55, ptr %52, align 8
  br label %56

56:                                               ; preds = %50, %39, %16, %36, %30, %7, %13
  %57 = phi ptr [ %2, %13 ], [ %2, %7 ], [ %35, %36 ], [ %35, %30 ], [ %20, %16 ], [ %35, %39 ], [ %53, %50 ]
  %58 = phi ptr [ %12, %13 ], [ %12, %7 ], [ %2, %36 ], [ %2, %30 ], [ %12, %16 ], [ %43, %39 ], [ %54, %50 ]
  %59 = icmp ne ptr %58, null
  %60 = icmp ne ptr %57, null
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !11
  %65 = tail call fastcc i32 @compare_values(ptr noundef %64, ptr noundef nonnull %58) #20
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load ptr, ptr %63, align 8, !tbaa !11
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi ptr [ %68, %67 ], [ %58, %62 ]
  %71 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !16
  %73 = tail call fastcc i32 @compare_values(ptr noundef %72, ptr noundef nonnull %57) #20
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load ptr, ptr %71, align 8, !tbaa !16
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi ptr [ %76, %75 ], [ %57, %69 ]
  %79 = tail call i32 @operand_equal_p(ptr noundef %70, ptr noundef %78, i32 noundef 0) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %70) #21
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %27, %77, %81, %56
  br label %85

85:                                               ; preds = %81, %84
  %86 = phi ptr [ null, %84 ], [ %70, %81 ]
  ret ptr %86
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_edge_heap_reserve() #20
  %2 = load ptr, ptr @to_remove_edges, align 8, !tbaa !12
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_switch_update_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_switch_update_heap_reserve() #20
  %2 = load ptr, ptr @to_update_switch_stmts, align 8, !tbaa !12
  tail call fastcc void @VEC_switch_update_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @to_remove_edges, align 8, !tbaa !12
  %2 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #21
  store ptr %5, ptr @to_remove_edges, align 8, !tbaa !12
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !100
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !100
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !189
  %6 = load i32, ptr %0, align 8, !tbaa !100
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_switch_update_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @to_update_switch_stmts, align 8, !tbaa !12
  %2 = tail call fastcc i32 @VEC_switch_update_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 16) #21
  store ptr %5, ptr @to_update_switch_stmts, align 8, !tbaa !12
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_switch_update_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !102
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !102
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_switch_update_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !190
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_switch_update_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_switch_update_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !191
  %6 = load i32, ptr %0, align 8, !tbaa !102
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @search_for_addr_array(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = tail call fastcc i32 @gimple_code(ptr noundef %9) #20, !range !80
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %9) #20, !range !96
  %14 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %13) #20, !range !80
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
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %26) #20, !range !15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %18, !llvm.loop !192

29:                                               ; preds = %12, %7, %3, %24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_location_ptr(ptr noundef readnone %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @check_array_bounds(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !12
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !23
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3, %11
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !178
  %18 = load i32, ptr %17, align 4, !tbaa !23
  br label %19

19:                                               ; preds = %11, %15
  %20 = phi i32 [ %18, %15 ], [ %13, %11 ]
  store i32 1, ptr %1, align 4, !tbaa !23
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
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  br label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !13
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
  store i32 0, ptr %1, align 4, !tbaa !23
  br label %44

44:                                               ; preds = %43, %39
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_array_ref(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = tail call ptr @array_ref_up_bound(ptr noundef %1) #21
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !13
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
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !13
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !13
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
  %40 = load i32, ptr %39, align 8, !tbaa !5
  %41 = add i32 %40, -1
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = icmp eq i32 %40, 1
  %45 = getelementptr inbounds %struct.value_range_d, ptr %39, i64 0, i32 2
  %46 = getelementptr inbounds %struct.value_range_d, ptr %39, i64 0, i32 1
  %47 = select i1 %44, ptr %45, ptr %46
  %48 = load ptr, ptr %47, align 8, !tbaa !12
  %49 = select i1 %44, ptr %46, ptr %45
  %50 = load ptr, ptr %49, align 8, !tbaa !12
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
  %81 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !12
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
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
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
declare ptr @array_ref_up_bound(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #21
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @potentially_threadable_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !130
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !131
  ret void
}

; Function Attrs: optsize
declare void @thread_across_edge(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @simplify_stmt_for_jump_threading(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !80
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !96
  %7 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %8 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %9 = tail call fastcc ptr @vrp_evaluate_conditional(i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %1) #20
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !193
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !194
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  store ptr %6, ptr %0, align 8, !tbaa !196
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #20
  br label %11

11:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !194
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !197
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #17 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !151
  store ptr %1, ptr %4, align 8, !tbaa !12
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !197
  store ptr %3, ptr %0, align 8, !tbaa !196
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #20, !range !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !136
  store ptr %8, ptr %2, align 8, !tbaa !197
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !198
  store ptr %4, ptr %0, align 8, !tbaa !196
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !199
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

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
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #21
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #20, !range !80
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
  br i1 %27, label %16, label %53, !llvm.loop !200

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
  br i1 %44, label %33, label %53, !llvm.loop !201

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
  %56 = load ptr, ptr %55, align 8, !tbaa !199
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #17 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !136
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
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 771, ptr noundef nonnull @.str.28) #21
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !132
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !202
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !203
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !136
  store ptr %2, ptr %6, align 8, !tbaa !203
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #17 {
  store ptr %1, ptr %0, align 8, !tbaa !203
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !136
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !136
  store ptr %0, ptr %4, align 8, !tbaa !203
  store ptr %0, ptr %3, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #17 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !203
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #20
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @thread_through_all_blocks(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #11 {
  %1 = load ptr, ptr @stack, align 8, !tbaa !12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @stack, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_num_ops(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 4, !tbaa !13
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
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"value_range_d", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 8}
!12 = !{!10, !10, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!6, !10, i64 24}
!15 = !{i8 0, i8 2}
!16 = !{!6, !10, i64 16}
!17 = !{!18, !10, i64 24}
!18 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !10, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!19 = !{!20, !10, i64 16}
!20 = !{!"gimple_df", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !21, i64 32, !21, i64 48, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !7, i64 96, !22, i64 104}
!21 = !{!"pt_solution", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !10, i64 8}
!22 = !{!"ssa_operands", !10, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !10, i64 24, !10, i64 32}
!23 = !{!7, !7, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!27, !10, i64 0}
!27 = !{!"bitmap_head_def", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24}
!28 = !{!29, !10, i64 0}
!29 = !{!"", !10, i64 0, !10, i64 8, !7, i64 16, !30, i64 24}
!30 = !{!"long", !8, i64 0}
!31 = !{!29, !10, i64 8}
!32 = !{!33, !7, i64 16}
!33 = !{!"bitmap_element_def", !10, i64 0, !10, i64 8, !7, i64 16, !8, i64 24}
!34 = !{!29, !7, i64 16}
!35 = !{!30, !30, i64 0}
!36 = !{!29, !30, i64 24}
!37 = distinct !{!37, !25}
!38 = distinct !{!38, !25}
!39 = !{!33, !10, i64 0}
!40 = distinct !{!40, !25}
!41 = !{!42, !7, i64 0}
!42 = !{!"VEC_tree_base", !7, i64 0, !7, i64 4, !8, i64 8}
!43 = !{!44, !10, i64 0}
!44 = !{!"assert_locus_d", !10, i64 0, !10, i64 8, !45, i64 16, !7, i64 40, !10, i64 48, !10, i64 56, !10, i64 64}
!45 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!46 = !{!47, !7, i64 80}
!47 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !8, i64 32, !10, i64 48, !10, i64 56, !8, i64 64, !30, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!48 = !{!44, !10, i64 8}
!49 = !{!50, !10, i64 0}
!50 = !{!"edge_def", !10, i64 0, !10, i64 8, !8, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !30, i64 56}
!51 = !{!50, !10, i64 8}
!52 = !{!44, !7, i64 40}
!53 = !{!44, !10, i64 48}
!54 = distinct !{!54, !25}
!55 = !{!45, !10, i64 0}
!56 = !{!57, !10, i64 0}
!57 = !{!"gimple_seq_node_d", !10, i64 0, !10, i64 8, !10, i64 16}
!58 = distinct !{!58, !25}
!59 = !{i32 0, i32 2}
!60 = distinct !{!60, !25}
!61 = !{!62, !10, i64 8}
!62 = !{!"", !10, i64 0, !10, i64 8}
!63 = !{!62, !10, i64 0}
!64 = distinct !{!64, !25}
!65 = distinct !{!65, !25}
!66 = !{!18, !10, i64 56}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = !{!18, !10, i64 8}
!70 = !{!71, !10, i64 0}
!71 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !10, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!72 = !{!47, !10, i64 56}
!73 = !{!71, !10, i64 8}
!74 = distinct !{!74, !25}
!75 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12}
!76 = distinct !{!76, !25}
!77 = distinct !{!77, !25}
!78 = distinct !{!78, !25}
!79 = !{i32 0, i32 3}
!80 = !{i32 0, i32 256}
!81 = !{i32 1, i32 3}
!82 = distinct !{!82, !25}
!83 = !{!50, !7, i64 48}
!84 = !{i64 0, i64 4, !23, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 8, !12}
!85 = distinct !{!85, !25}
!86 = !{!18, !10, i64 32}
!87 = !{!88, !10, i64 8}
!88 = !{!"loop", !7, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !89, i64 24, !7, i64 32, !7, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !90, i64 80, !90, i64 96, !8, i64 112, !8, i64 113, !7, i64 116, !10, i64 120, !10, i64 128, !8, i64 136, !10, i64 144}
!89 = !{!"lpt_decision", !7, i64 0, !7, i64 4}
!90 = !{!"", !30, i64 0, !30, i64 8}
!91 = !{!92, !10, i64 8}
!92 = !{!"prop_value_d", !7, i64 0, !10, i64 8}
!93 = distinct !{!93, !25}
!94 = distinct !{!94, !25}
!95 = distinct !{!95, !25}
!96 = !{i32 0, i32 65536}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25}
!100 = !{!101, !7, i64 0}
!101 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!102 = !{!103, !7, i64 0}
!103 = !{!"VEC_switch_update_base", !7, i64 0, !7, i64 4, !8, i64 8}
!104 = !{!71, !7, i64 32}
!105 = distinct !{!105, !25}
!106 = !{!71, !10, i64 16}
!107 = !{i64 0, i64 4, !23, i64 8, i64 8, !12}
!108 = !{i64 0, i64 8, !12}
!109 = distinct !{!109, !25}
!110 = !{!111, !10, i64 0}
!111 = !{!"simple_bitmap_def", !10, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!112 = distinct !{!112, !25}
!113 = distinct !{!113, !25}
!114 = distinct !{!114, !25}
!115 = !{!44, !10, i64 64}
!116 = distinct !{!116, !25}
!117 = distinct !{!117, !25}
!118 = distinct !{!118, !25}
!119 = distinct !{!119, !25}
!120 = distinct !{!120, !25}
!121 = distinct !{!121, !25}
!122 = distinct !{!122, !25}
!123 = !{!124, !7, i64 0}
!124 = !{!"", !7, i64 0, !10, i64 8}
!125 = distinct !{!125, !25}
!126 = distinct !{!126, !25}
!127 = distinct !{!127, !25}
!128 = distinct !{!128, !25}
!129 = distinct !{!129, !25}
!130 = !{!45, !10, i64 8}
!131 = !{!45, !10, i64 16}
!132 = !{!133, !7, i64 4}
!133 = !{!"ssa_operand_iterator_d", !8, i64 0, !7, i64 4, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !10, i64 32}
!134 = !{!133, !8, i64 0}
!135 = !{!47, !10, i64 8}
!136 = !{!137, !10, i64 8}
!137 = !{!"ssa_use_operand_d", !10, i64 0, !10, i64 8, !8, i64 16, !10, i64 24}
!138 = !{!44, !10, i64 56}
!139 = !{!47, !10, i64 0}
!140 = distinct !{!140, !25}
!141 = !{!133, !10, i64 16}
!142 = !{!143, !10, i64 0}
!143 = !{!"use_optype_d", !10, i64 0, !137, i64 8}
!144 = !{!133, !10, i64 8}
!145 = !{!146, !10, i64 8}
!146 = !{!"def_optype_d", !10, i64 0, !10, i64 8}
!147 = !{!146, !10, i64 0}
!148 = !{!57, !10, i64 16}
!149 = !{!133, !10, i64 32}
!150 = !{!133, !7, i64 28}
!151 = !{!137, !10, i64 24}
!152 = !{!133, !7, i64 24}
!153 = !{!47, !7, i64 96}
!154 = !{!155, !10, i64 0}
!155 = !{!"gimple_bb_info", !10, i64 0, !10, i64 8}
!156 = !{!157, !10, i64 0}
!157 = !{!"gimple_seq_d", !10, i64 0, !10, i64 8, !10, i64 16}
!158 = distinct !{!158, !25}
!159 = distinct !{!159, !25}
!160 = distinct !{!160, !25}
!161 = distinct !{!161, !25}
!162 = distinct !{!162, !25}
!163 = !{i32 -2, i32 2}
!164 = distinct !{!164, !25}
!165 = distinct !{!165, !25}
!166 = distinct !{!166, !25}
!167 = distinct !{!167, !25}
!168 = distinct !{!168, !25}
!169 = !{!47, !10, i64 24}
!170 = !{!88, !7, i64 0}
!171 = !{!172, !10, i64 8}
!172 = !{!"loops", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!173 = !{!88, !10, i64 40}
!174 = !{!175, !7, i64 0}
!175 = !{!"VEC_loop_p_base", !7, i64 0, !7, i64 4, !8, i64 8}
!176 = distinct !{!176, !25}
!177 = distinct !{!177, !25}
!178 = !{!179, !10, i64 24}
!179 = !{!"walk_stmt_info", !45, i64 0, !10, i64 24, !10, i64 32, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !10, i64 48}
!180 = distinct !{!180, !25}
!181 = distinct !{!181, !25}
!182 = distinct !{!182, !25}
!183 = distinct !{!183, !25}
!184 = distinct !{!184, !25}
!185 = distinct !{!185, !25}
!186 = !{!50, !10, i64 24}
!187 = distinct !{!187, !25}
!188 = distinct !{!188, !25}
!189 = !{!101, !7, i64 4}
!190 = !{i64 0, i64 8, !12, i64 8, i64 8, !12}
!191 = !{!103, !7, i64 4}
!192 = distinct !{!192, !25}
!193 = !{!157, !10, i64 8}
!194 = !{!195, !10, i64 8}
!195 = !{!"immediate_use_iterator_d", !10, i64 0, !10, i64 8, !137, i64 16, !10, i64 48}
!196 = !{!195, !10, i64 0}
!197 = !{!195, !10, i64 48}
!198 = !{!195, !10, i64 24}
!199 = !{!195, !10, i64 16}
!200 = distinct !{!200, !25}
!201 = distinct !{!201, !25}
!202 = !{!143, !10, i64 32}
!203 = !{!137, !10, i64 0}
