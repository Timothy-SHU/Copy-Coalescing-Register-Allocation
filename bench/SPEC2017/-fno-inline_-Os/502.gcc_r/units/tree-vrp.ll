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
define dso_local zeroext i8 @ssa_name_nonnegative_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !844 {
  %2 = tail call fastcc ptr @get_value_range(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !845
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.value_range_d, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !851
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !852
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
define internal fastcc ptr @get_value_range(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !853 !PGOFuncName !854 {
  %2 = load ptr, ptr @vr_value, align 8, !tbaa !852
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4, !prof !855

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !856
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !852
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %36, !prof !857

11:                                               ; preds = %4
  %12 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #21
  %13 = load ptr, ptr @vr_value, align 8, !tbaa !852
  %14 = getelementptr inbounds ptr, ptr %13, i64 %7
  store ptr %12, ptr %14, align 8, !tbaa !852
  %15 = getelementptr inbounds %struct.value_range_d, ptr %12, i64 0, i32 3
  store ptr null, ptr %15, align 8, !tbaa !858
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !856
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 4294967296
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %36, label %21, !prof !859

21:                                               ; preds = %11
  %22 = load i64, ptr %17, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 34
  br i1 %24, label %25, label %35, !prof !860

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !856
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %35 [
    i16 10, label %30
    i16 12, label %30
  ], !prof !861

30:                                               ; preds = %25, %25
  %31 = tail call fastcc zeroext i8 @nonnull_arg_p(ptr noundef nonnull %17) #20, !range !862
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33, !prof !860

33:                                               ; preds = %30
  %34 = load ptr, ptr %26, align 8, !tbaa !856
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
define internal fastcc i32 @compare_values(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !863 !PGOFuncName !864 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store i8 0, ptr %3, align 1, !tbaa !856
  %4 = call fastcc i32 @compare_values_warnv(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #20
  %5 = load i8, ptr %3, align 1, !tbaa !856
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7, !prof !865

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
define dso_local void @dump_value_range(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !844 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 2, i64 1, ptr %0)
  br label %94

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 8, !tbaa !845
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
  %14 = load ptr, ptr %13, align 8, !tbaa !851
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !856
  %17 = icmp eq i32 %9, 2
  %18 = select i1 %17, ptr @.str.3, ptr @.str.4
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %18) #20
  %20 = load ptr, ptr %13, align 8, !tbaa !851
  %21 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %20) #20, !range !862
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
  %35 = load ptr, ptr %13, align 8, !tbaa !851
  %36 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %35) #20, !range !862
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 4, i64 1, ptr %0)
  br label %42

40:                                               ; preds = %25, %34
  %41 = load ptr, ptr %13, align 8, !tbaa !851
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %41, i32 noundef 0) #21
  br label %42

42:                                               ; preds = %38, %40, %23
  %43 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0)
  %44 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !866
  %46 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %45) #20, !range !862
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
  %57 = load ptr, ptr %44, align 8, !tbaa !866
  %58 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %57) #20, !range !862
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 4, i64 1, ptr %0)
  br label %64

62:                                               ; preds = %50, %56
  %63 = load ptr, ptr %44, align 8, !tbaa !866
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %63, i32 noundef 0) #21
  br label %64

64:                                               ; preds = %60, %62, %48
  %65 = tail call i32 @fputc(i32 93, ptr %0)
  %66 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !858
  %68 = icmp eq ptr %67, null
  br i1 %68, label %94, label %69

69:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  %70 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 18, i64 1, ptr %0)
  %71 = load ptr, ptr %66, align 8, !tbaa !858
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %71, ptr noundef nonnull %4) #20
  %72 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !862
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %69, %74
  %75 = phi i32 [ %84, %74 ], [ 0, %69 ]
  %76 = load ptr, ptr @cfun, align 8, !tbaa !852
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !867
  %79 = getelementptr inbounds %struct.gimple_df, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !869
  %81 = load i32, ptr %4, align 4, !tbaa !873
  %82 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %80, i32 noundef %81) #20
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %82, i32 noundef 0) #21
  %83 = tail call i32 @fputc(i32 32, ptr %0)
  %84 = add i32 %75, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  %85 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !862
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %74, !llvm.loop !874

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
define internal fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !876 !PGOFuncName !877 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !856
  %4 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %3) #20, !range !862
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6, !prof !878

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !873
  %11 = icmp ne i32 %10, 1
  %12 = and i64 %7, 134217728
  %13 = icmp eq i64 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %17, label %15, !prof !879

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %0) #20, !range !862
  br label %17

17:                                               ; preds = %15, %6, %1
  %18 = phi i8 [ 0, %6 ], [ 0, %1 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_val_is_min(ptr noundef %0) unnamed_addr #0 !prof !880 !PGOFuncName !881 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !856
  %4 = tail call fastcc ptr @vrp_val_min(ptr noundef %3) #20
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %12, label %6, !prof !882

6:                                                ; preds = %1
  %7 = icmp eq ptr %4, null
  br i1 %7, label %12, label %8, !prof !883

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
define internal fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !884 !PGOFuncName !885 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !856
  %4 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %3) #20, !range !862
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %17, label %6, !prof !886

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !873
  %11 = icmp ne i32 %10, 1
  %12 = and i64 %7, 134217728
  %13 = icmp eq i64 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %17, label %15, !prof !887

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %0) #20, !range !862
  br label %17

17:                                               ; preds = %15, %6, %1
  %18 = phi i8 [ 0, %6 ], [ 0, %1 ], [ %16, %15 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_val_is_max(ptr noundef %0) unnamed_addr #0 !prof !888 !PGOFuncName !889 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !856
  %4 = tail call fastcc ptr @vrp_val_max(ptr noundef %3) #20
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %12, label %6, !prof !890

6:                                                ; preds = %1
  %7 = icmp eq ptr %4, null
  br i1 %7, label %12, label %8, !prof !891

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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !892 !PGOFuncName !893 {
  %4 = load ptr, ptr %1, align 8, !tbaa !894
  store ptr %4, ptr %0, align 8, !tbaa !896
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !899
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !900

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !896
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !901
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !903
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !904
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !905
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !873
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !prof !906 !PGOFuncName !907 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !905
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !908

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !909

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !873
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !910, !llvm.loop !911

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !873
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !873
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !903
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !896
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !903
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !912

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !904
  store i64 %35, ptr %3, align 8, !tbaa !905
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !913

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !873
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !873
  %40 = load i32, ptr %23, align 8, !tbaa !903
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !903
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !914, !llvm.loop !915

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !916
  store ptr %44, ptr %0, align 8, !tbaa !896
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !917

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !901
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !873
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !905
  store i32 %16, ptr %1, align 4, !tbaa !873
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !918 !PGOFuncName !919 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !852
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !920 !PGOFuncName !921 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !905
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !905
  %6 = load i32, ptr %1, align 4, !tbaa !873
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !873
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_value_range(ptr noundef %0) local_unnamed_addr #0 !prof !844 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !852
  tail call void @dump_value_range(ptr noundef %2, ptr noundef %0) #20
  %3 = load ptr, ptr @stderr, align 8, !tbaa !852
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_all_value_ranges(ptr noundef %0) local_unnamed_addr #0 !prof !844 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !852
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !867
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !869
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @vr_value, align 8, !tbaa !852
  br label %11

11:                                               ; preds = %9, %29
  %12 = phi ptr [ %30, %29 ], [ %2, %9 ]
  %13 = phi ptr [ %31, %29 ], [ %10, %9 ]
  %14 = phi ptr [ %36, %29 ], [ %6, %9 ]
  %15 = phi i64 [ %32, %29 ], [ 0, %9 ]
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !852
  %18 = icmp eq ptr %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %11
  %20 = trunc i64 %15 to i32
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %14, i32 noundef %20) #20
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %21, i32 noundef 0) #21
  %22 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %0)
  %23 = load ptr, ptr @vr_value, align 8, !tbaa !852
  %24 = getelementptr inbounds ptr, ptr %23, i64 %15
  %25 = load ptr, ptr %24, align 8, !tbaa !852
  tail call void @dump_value_range(ptr noundef %0, ptr noundef %25) #20
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  %27 = load ptr, ptr @vr_value, align 8, !tbaa !852
  %28 = load ptr, ptr @cfun, align 8, !tbaa !852
  br label %29

29:                                               ; preds = %11, %19
  %30 = phi ptr [ %12, %11 ], [ %28, %19 ]
  %31 = phi ptr [ %13, %11 ], [ %27, %19 ]
  %32 = add nuw nsw i64 %15, 1
  %33 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !867
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !869
  %37 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %36) #20
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %32, %38
  br i1 %39, label %11, label %40, !llvm.loop !922

40:                                               ; preds = %29, %1
  %41 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !923 !PGOFuncName !924 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !925

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !926
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_all_value_ranges() local_unnamed_addr #0 !prof !844 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !852
  tail call void @dump_all_value_ranges(ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_asserts_for(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !844 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 30, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #21
  %4 = tail call i32 @fputc(i32 10, ptr %0)
  %5 = load ptr, ptr @asserts_for, align 8, !tbaa !852
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !856
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !852
  %11 = icmp eq ptr %10, null
  br i1 %11, label %48, label %12

12:                                               ; preds = %2, %34
  %13 = phi ptr [ %46, %34 ], [ %10, %2 ]
  %14 = tail call i32 @fputc(i32 9, ptr %0)
  %15 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 2
  %16 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %15) #20
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %16, i32 noundef 0, i32 noundef 0) #21
  %17 = load ptr, ptr %13, align 8, !tbaa !928
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !931
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %19) #20
  %21 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !933
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %12
  %25 = load ptr, ptr %22, align 8, !tbaa !934
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !931
  %28 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !936
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !931
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef %27, i32 noundef %31) #20
  %33 = load ptr, ptr %21, align 8, !tbaa !933
  tail call void @dump_edge_info(ptr noundef %0, ptr noundef %33, i32 noundef 0) #21
  br label %34

34:                                               ; preds = %24, %12
  %35 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 13, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef 0) #21
  %36 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !937
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !852
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %40) #20
  %42 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !938
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %43, i32 noundef 0) #21
  %44 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %0)
  %45 = getelementptr inbounds %struct.assert_locus_d, ptr %13, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !852
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %12, !llvm.loop !939

48:                                               ; preds = %34, %2
  %49 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 !prof !940 !PGOFuncName !941 {
  %2 = load ptr, ptr %0, align 8, !tbaa !942
  %3 = load ptr, ptr %2, align 8, !tbaa !943
  ret ptr %3
}

; Function Attrs: optsize
declare void @dump_edge_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_asserts_for(ptr noundef %0) local_unnamed_addr #0 !prof !844 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !852
  tail call void @dump_asserts_for(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_all_asserts(ptr noundef %0) local_unnamed_addr #0 !prof !844 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %4 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 30, i64 1, ptr %0)
  %5 = load ptr, ptr @need_assert_for, align 8, !tbaa !852
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %5, ptr noundef nonnull %2) #20
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !862
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1, %8
  %9 = load ptr, ptr @cfun, align 8, !tbaa !852
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !867
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !869
  %14 = load i32, ptr %2, align 4, !tbaa !873
  %15 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %13, i32 noundef %14) #20
  tail call void @dump_asserts_for(ptr noundef %0, ptr noundef %15) #20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #20
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #20, !range !862
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8, !llvm.loop !945

18:                                               ; preds = %8, %1
  %19 = tail call i32 @fputc(i32 10, ptr %0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_all_asserts() local_unnamed_addr #0 !prof !844 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !852
  tail call void @dump_all_asserts(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_vrp() #9 !prof !946 !PGOFuncName !947 {
  %1 = load i32, ptr @flag_tree_vrp, align 4, !tbaa !873
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_vrp() #0 !prof !946 !PGOFuncName !948 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  tail call void @loop_optimizer_init(i32 noundef 15) #21
  tail call void @rewrite_into_loop_closed_ssa(ptr noundef null, i32 noundef 2048) #21
  tail call void @scev_initialize() #21
  tail call fastcc void @insert_range_assertions() #20
  %3 = tail call fastcc ptr @VEC_edge_heap_alloc() #20
  store ptr %3, ptr @to_remove_edges, align 8, !tbaa !852
  %4 = tail call fastcc ptr @VEC_switch_update_heap_alloc() #20
  store ptr %4, ptr @to_update_switch_stmts, align 8, !tbaa !852
  tail call void @threadedge_initialize_values() #21
  tail call fastcc void @vrp_initialize() #20
  tail call void @ssa_propagate(ptr noundef nonnull @vrp_visit_stmt, ptr noundef nonnull @vrp_visit_phi_node) #21
  tail call fastcc void @vrp_finalize() #20
  tail call fastcc void @remove_range_assertions() #20
  tail call void @update_ssa(i32 noundef 2048) #21
  tail call fastcc void @finalize_jump_threads() #20
  %5 = load ptr, ptr @to_remove_edges, align 8
  %6 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %1) #20, !range !949
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12, !prof !950

8:                                                ; preds = %12, %0
  %9 = load ptr, ptr @to_update_switch_stmts, align 8
  %10 = call fastcc i32 @VEC_switch_update_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #20, !range !949
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %46, label %19, !prof !950

12:                                               ; preds = %0, %12
  %13 = phi i32 [ %15, %12 ], [ 0, %0 ]
  %14 = load ptr, ptr %1, align 8, !tbaa !852
  tail call void @remove_edge(ptr noundef %14) #21
  %15 = add nuw nsw i32 %13, 1
  %16 = load ptr, ptr @to_remove_edges, align 8
  %17 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %16, i32 noundef %15, ptr noundef nonnull %1) #20, !range !949
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %8, label %12, !prof !951, !llvm.loop !952

19:                                               ; preds = %8, %38
  %20 = phi i32 [ %42, %38 ], [ 0, %8 ]
  %21 = load ptr, ptr %2, align 8, !tbaa !852
  %22 = getelementptr inbounds %struct.switch_update, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !953
  %24 = getelementptr inbounds %struct.tree_vec, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !856
  %26 = sext i32 %25 to i64
  %27 = load ptr, ptr %21, align 8, !tbaa !955
  tail call fastcc void @gimple_switch_set_num_labels(ptr noundef %27, i32 noundef %25) #20
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %19, %29
  %30 = phi i64 [ %36, %29 ], [ 0, %19 ]
  %31 = load ptr, ptr %21, align 8, !tbaa !955
  %32 = trunc i64 %30 to i32
  %33 = load ptr, ptr %22, align 8, !tbaa !953
  %34 = getelementptr inbounds %struct.tree_vec, ptr %33, i64 0, i32 2, i64 %30
  %35 = load ptr, ptr %34, align 8, !tbaa !856
  tail call fastcc void @gimple_switch_set_label(ptr noundef %31, i32 noundef %32, ptr noundef %35) #20
  %36 = add nuw i64 %30, 1
  %37 = icmp eq i64 %36, %26
  br i1 %37, label %38, label %29, !llvm.loop !956

38:                                               ; preds = %29, %19
  %39 = load ptr, ptr %21, align 8, !tbaa !955
  %40 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef %39) #20
  %41 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %42 = add nuw nsw i32 %20, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %43 = load ptr, ptr @to_update_switch_stmts, align 8
  %44 = call fastcc i32 @VEC_switch_update_base_iterate(ptr noundef %43, i32 noundef %42, ptr noundef nonnull %2) #20, !range !949
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %19, !prof !951, !llvm.loop !957

46:                                               ; preds = %38, %8
  %47 = load ptr, ptr @to_remove_edges, align 8
  %48 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %47) #20
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !860

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
define internal fastcc noundef zeroext i8 @nonnull_arg_p(ptr noundef readonly %0) unnamed_addr #0 !prof !946 !PGOFuncName !958 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 34
  br i1 %4, label %5, label %10, !prof !860

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !856
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %10 [
    i16 10, label %11
    i16 12, label %11
  ], !prof !861

10:                                               ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 318, ptr noundef nonnull @.str.28) #21
  br label %11

11:                                               ; preds = %5, %5, %10
  %12 = load ptr, ptr @cfun, align 8, !tbaa !852
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !959
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %62, label %16, !prof !960

16:                                               ; preds = %11
  %17 = load ptr, ptr @current_function_decl, align 8, !tbaa !852
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !856
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !856
  %22 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.29, ptr noundef %21) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %62, label %24, !prof !860

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tree_list, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !856
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr @current_function_decl, align 8, !tbaa !852
  %30 = getelementptr inbounds %struct.tree_decl_non_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !856
  %32 = icmp eq ptr %31, null
  %33 = icmp eq ptr %31, %0
  %34 = or i1 %32, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %28, %35
  %36 = phi ptr [ %40, %35 ], [ %31, %28 ]
  %37 = phi i64 [ %39, %35 ], [ 1, %28 ]
  %38 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 1
  %39 = add i64 %37, 1
  %40 = load ptr, ptr %38, align 8, !tbaa !856
  %41 = icmp eq ptr %40, null
  %42 = icmp eq ptr %40, %0
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %35, !llvm.loop !961

44:                                               ; preds = %35, %28
  %45 = phi i64 [ 1, %28 ], [ %39, %35 ]
  %46 = phi i1 [ %33, %28 ], [ %42, %35 ]
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 344, ptr noundef nonnull @.str.28) #21
  %48 = load ptr, ptr %25, align 8, !tbaa !856
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi ptr [ %26, %44 ], [ %48, %47 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %56

52:                                               ; preds = %56
  %53 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !856
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56, !llvm.loop !962

56:                                               ; preds = %49, %52
  %57 = phi ptr [ %54, %52 ], [ %50, %49 ]
  %58 = getelementptr inbounds %struct.tree_list, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !856
  %60 = tail call i32 @compare_tree_int(ptr noundef %59, i64 noundef %45) #21
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %52

62:                                               ; preds = %56, %52, %49, %24, %16, %11
  %63 = phi i8 [ 1, %11 ], [ 0, %16 ], [ 1, %24 ], [ 0, %49 ], [ 1, %56 ], [ 0, %52 ]
  ret i8 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_nonnull(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !963 !PGOFuncName !964 {
  %3 = tail call ptr @build_int_cst(ptr noundef %1, i64 noundef 0) #21
  %4 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 2, ptr noundef %3, ptr noundef %3, ptr noundef %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_varying(ptr nocapture noundef %0) unnamed_addr #0 !prof !965 !PGOFuncName !966 {
  store i32 3, ptr %0, align 8, !tbaa !845
  %2 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %3, align 8, !tbaa !858
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !967

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
define internal fastcc void @set_value_range(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !968 !PGOFuncName !969 {
  store i32 %1, ptr %0, align 8, !tbaa !845
  %6 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !851
  %7 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !866
  %8 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !858
  %10 = icmp eq ptr %9, null
  %11 = icmp ne ptr %4, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %15, !prof !970

13:                                               ; preds = %5
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %14, ptr %8, align 8, !tbaa !858
  br label %15

15:                                               ; preds = %13, %5
  %16 = phi ptr [ %14, %13 ], [ %9, %5 ]
  %17 = icmp eq ptr %16, %4
  br i1 %17, label %24, label %18, !prof !971

18:                                               ; preds = %15
  br i1 %11, label %19, label %23, !prof !972

19:                                               ; preds = %18
  %20 = load ptr, ptr %4, align 8, !tbaa !894
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !973

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
define internal fastcc i32 @compare_values_warnv(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) unnamed_addr #0 !prof !974 !PGOFuncName !975 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %206, label %5, !prof !976

5:                                                ; preds = %3
  %6 = icmp eq ptr %2, null
  br label %7

7:                                                ; preds = %5, %130
  %8 = phi ptr [ %1, %5 ], [ %132, %130 ]
  %9 = phi ptr [ %0, %5 ], [ %131, %130 ]
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !856
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 10
  %16 = icmp eq i32 %14, 12
  %17 = or i1 %15, %16
  %18 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !856
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 10
  %24 = icmp eq i32 %22, 12
  %25 = or i1 %23, %24
  %26 = xor i1 %17, %25
  br i1 %26, label %27, label %29, !prof !977

27:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1074, ptr noundef nonnull @.str.28) #21
  %28 = load ptr, ptr %10, align 8, !tbaa !856
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
  ], !prof !978

37:                                               ; preds = %29, %29, %29
  %38 = load i64, ptr %32, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %138 [
    i16 141, label %40
    i16 63, label %40
    i16 64, label %40
  ], !prof !979

40:                                               ; preds = %37, %37, %37
  %41 = icmp eq i32 %35, 141
  br i1 %41, label %60, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !856
  %45 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !856
  %47 = tail call i32 @tree_int_cst_sgn(ptr noundef %46) #21
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %46) #20, !range !862
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %206

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !856
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
  %70 = load ptr, ptr %69, align 8, !tbaa !856
  %71 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %72 = load ptr, ptr %71, align 8, !tbaa !856
  %73 = tail call i32 @tree_int_cst_sgn(ptr noundef %72) #21
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %86

75:                                               ; preds = %68
  %76 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %72) #20, !range !862
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %206

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !856
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
  %96 = load ptr, ptr %10, align 8, !tbaa !856
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
  store i8 1, ptr %2, align 1, !tbaa !856
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
  br i1 %133, label %206, label %7, !prof !980

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
  br i1 %140, label %206, label %141, !prof !981

141:                                              ; preds = %138
  %142 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %32) #21
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %206, label %144, !prof !982

144:                                              ; preds = %141
  %145 = load ptr, ptr %10, align 8, !tbaa !856
  %146 = load i64, ptr %145, align 8
  %147 = trunc i64 %146 to i16
  switch i16 %147, label %148 [
    i16 10, label %179
    i16 12, label %179
  ], !prof !983

148:                                              ; preds = %144
  %149 = load i64, ptr %9, align 8
  %150 = and i64 %149, 134217728
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156, !prof !984

152:                                              ; preds = %148
  %153 = load i64, ptr %32, align 8
  %154 = and i64 %153, 134217728
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %177, label %156, !prof !984

156:                                              ; preds = %152, %148
  br i1 %6, label %158, label %157

157:                                              ; preds = %156
  store i8 1, ptr %2, align 1, !tbaa !856
  br label %158

158:                                              ; preds = %157, %156
  %159 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef nonnull %9) #20, !range !862
  %160 = icmp eq i8 %159, 0
  %161 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %32) #20, !range !862
  br i1 %160, label %165, label %162

162:                                              ; preds = %158
  %163 = add nsw i8 %161, -1
  %164 = sext i8 %163 to i32
  br label %206

165:                                              ; preds = %158
  %166 = icmp eq i8 %161, 0
  br i1 %166, label %167, label %206

167:                                              ; preds = %165
  %168 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef nonnull %9) #20, !range !862
  %169 = icmp eq i8 %168, 0
  %170 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %32) #20, !range !862
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
  %199 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !852
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
define internal fastcc i32 @operand_less_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !985 !PGOFuncName !986 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 23
  br i1 %5, label %6, label %39, !prof !987

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %39, !prof !987

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !856
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 2097152
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !856
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !856
  br i1 %15, label %31, label %22, !prof !988

22:                                               ; preds = %10
  %23 = icmp ult i64 %18, %21
  br i1 %23, label %64, label %24, !prof !989

24:                                               ; preds = %22
  %25 = icmp eq i64 %18, %21
  br i1 %25, label %26, label %64, !prof !990

26:                                               ; preds = %24
  %27 = load i64, ptr %16, align 8, !tbaa !856
  %28 = load i64, ptr %19, align 8, !tbaa !856
  %29 = icmp ult i64 %27, %28
  %30 = zext i1 %29 to i32
  br label %64

31:                                               ; preds = %10
  %32 = icmp slt i64 %18, %21
  br i1 %32, label %64, label %33, !prof !991

33:                                               ; preds = %31
  %34 = icmp eq i64 %18, %21
  br i1 %34, label %35, label %50, !prof !992

35:                                               ; preds = %33
  %36 = load i64, ptr %16, align 8, !tbaa !856
  %37 = load i64, ptr %19, align 8, !tbaa !856
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %64, label %50, !prof !993

39:                                               ; preds = %6, %2
  tail call void @fold_defer_overflow_warnings() #21
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !852
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
  %51 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef nonnull %0) #20, !range !862
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53, !prof !994

53:                                               ; preds = %50
  %54 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %1) #20, !range !862
  %55 = xor i8 %54, 1
  %56 = zext nneg i8 %55 to i32
  br label %64

57:                                               ; preds = %50
  %58 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %1) #20, !range !862
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %64, label %60, !prof !994

60:                                               ; preds = %57
  %61 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef nonnull %0) #20, !range !862
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
define internal fastcc zeroext i8 @needs_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !995 !PGOFuncName !996 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %14, !prof !997

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
define internal fastcc ptr @vrp_val_min(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !880 !PGOFuncName !998 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %10, !prof !999

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !856
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @vrp_val_max(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !888 !PGOFuncName !1000 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -6
  %6 = icmp ult i32 %5, 3
  br i1 %6, label %7, label %10, !prof !1001

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !856
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
define internal fastcc void @insert_range_assertions() unnamed_addr #0 !prof !946 !PGOFuncName !1002 {
  %1 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %1, ptr @need_assert_for, align 8, !tbaa !852
  %2 = load ptr, ptr @cfun, align 8, !tbaa !852
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !867
  %5 = getelementptr inbounds %struct.gimple_df, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !869
  %7 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %6) #20
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #21
  store ptr %9, ptr @asserts_for, align 8, !tbaa !852
  tail call void @calculate_dominance_info(i32 noundef 1) #21
  %10 = tail call fastcc zeroext i8 @find_assert_locations() #20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !960

12:                                               ; preds = %0
  tail call fastcc void @process_assert_insertions() #20
  tail call void @update_ssa(i32 noundef 4096) #21
  br label %13

13:                                               ; preds = %12, %0
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16, !prof !860

16:                                               ; preds = %13
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %18 = and i32 %17, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 39, i64 1, ptr nonnull %14)
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !852
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !873
  tail call void @dump_function_to_file(ptr noundef %22, ptr noundef %23, i32 noundef %24) #21
  br label %25

25:                                               ; preds = %20, %16, %13
  %26 = load ptr, ptr @asserts_for, align 8, !tbaa !852
  tail call void @free(ptr noundef %26) #20
  %27 = load ptr, ptr @need_assert_for, align 8, !tbaa !852
  tail call void @bitmap_obstack_free(ptr noundef %27) #21
  store ptr null, ptr @need_assert_for, align 8, !tbaa !852
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_edge_heap_alloc() unnamed_addr #0 !prof !946 !PGOFuncName !1003 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_switch_update_heap_alloc() unnamed_addr #0 !prof !946 !PGOFuncName !1004 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 5, i64 noundef 8, i64 noundef 16) #21
  ret ptr %1
}

; Function Attrs: optsize
declare void @threadedge_initialize_values() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vrp_initialize() unnamed_addr #0 !prof !946 !PGOFuncName !1005 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !852
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !867
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !869
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #20
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #21
  store ptr %11, ptr @vr_value, align 8, !tbaa !852
  %12 = load ptr, ptr @cfun, align 8, !tbaa !852
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !867
  %15 = getelementptr inbounds %struct.gimple_df, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !869
  %17 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %16) #20
  %18 = zext i32 %17 to i64
  %19 = tail call ptr @xcalloc(i64 noundef %18, i64 noundef 4) #21
  store ptr %19, ptr @vr_phi_edge_counts, align 8, !tbaa !852
  %20 = load ptr, ptr @cfun, align 8, !tbaa !852
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !1006
  %23 = load ptr, ptr %22, align 8, !tbaa !1007
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !1009
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !1010
  %28 = icmp eq ptr %25, %27
  br i1 %28, label %80, label %29, !prof !1011

29:                                               ; preds = %0, %71
  %30 = phi ptr [ %73, %71 ], [ %25, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %30) #21
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !862
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %45, !prof !1012

33:                                               ; preds = %29, %41
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %35 = call fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %34) #20, !range !862
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %41, !prof !1013

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
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !862
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %45, !prof !1014, !llvm.loop !1015

45:                                               ; preds = %41, %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %30) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1016
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  %46 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !862
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %71, !prof !1017

48:                                               ; preds = %45, %68
  %49 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %50 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %49) #21
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52, !prof !1018

52:                                               ; preds = %48
  call fastcc void @prop_set_simulate_again(ptr noundef %49, i8 noundef zeroext 1) #20
  br label %68

53:                                               ; preds = %48
  %54 = call fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %49) #20, !range !862
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %67, !prof !1019

56:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %57 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %49, i32 noundef 2) #20
  %58 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %66, !prof !1020

60:                                               ; preds = %56, %60
  %61 = phi ptr [ %63, %60 ], [ %57, %56 ]
  %62 = call fastcc ptr @get_value_range(ptr noundef %61) #20
  call fastcc void @set_value_range_to_varying(ptr noundef %62) #20
  %63 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #20
  %64 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %60, label %66, !prof !1021, !llvm.loop !1022

66:                                               ; preds = %60, %56
  call fastcc void @prop_set_simulate_again(ptr noundef %49, i8 noundef zeroext 0) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  br label %68

67:                                               ; preds = %53
  call fastcc void @prop_set_simulate_again(ptr noundef %49, i8 noundef zeroext 1) #20
  br label %68

68:                                               ; preds = %66, %67, %52
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  %69 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !862
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %48, label %71, !prof !1023, !llvm.loop !1024

71:                                               ; preds = %68, %45
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !1009
  %74 = load ptr, ptr @cfun, align 8, !tbaa !852
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !1006
  %77 = getelementptr inbounds %struct.control_flow_graph, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !1010
  %79 = icmp eq ptr %73, %78
  br i1 %79, label %80, label %29, !prof !1025, !llvm.loop !1026

80:                                               ; preds = %71, %0
  ret void
}

; Function Attrs: optsize
declare void @ssa_propagate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vrp_visit_stmt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #0 !prof !1027 !PGOFuncName !1028 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7, !prof !1029

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 21, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !873
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef %14) #21
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %11, %7, %3
  %18 = tail call fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %0) #20, !range !862
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24, !prof !1030

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %53, !prof !1031

23:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 6101, ptr noundef nonnull @.str.28) #21
  br label %53

24:                                               ; preds = %17
  %25 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !862
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %30, !prof !1032

27:                                               ; preds = %24
  %28 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !862
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %46, label %30, !prof !1033

30:                                               ; preds = %27, %24
  %31 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !862
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %41, label %33, !prof !1034

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %38 = getelementptr inbounds %struct.tree_decl_minimal, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !856
  %40 = icmp ult i32 %39, 2
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %33, %30
  %42 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %53, !prof !1034

44:                                               ; preds = %41, %36
  %45 = tail call fastcc i32 @vrp_visit_assignment_or_call(ptr noundef %0, ptr noundef %2) #20, !range !1035
  br label %63

46:                                               ; preds = %27
  %47 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %48 = trunc i32 %47 to i8
  switch i8 %48, label %53 [
    i8 1, label %49
    i8 5, label %51
  ], !prof !1037

49:                                               ; preds = %46
  %50 = tail call fastcc i32 @vrp_visit_cond_stmt(ptr noundef %0, ptr noundef %1) #20, !range !1038
  br label %63

51:                                               ; preds = %46
  %52 = tail call fastcc i32 @vrp_visit_switch_stmt(ptr noundef %0, ptr noundef %1) #20, !range !1038
  br label %63

53:                                               ; preds = %46, %41, %23, %20
  %54 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 2) #20
  %55 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %63, !prof !1039

57:                                               ; preds = %53, %57
  %58 = phi ptr [ %60, %57 ], [ %54, %53 ]
  %59 = tail call fastcc ptr @get_value_range(ptr noundef %58) #20
  tail call fastcc void @set_value_range_to_varying(ptr noundef %59) #20
  %60 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #20
  %61 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %57, label %63, !prof !1040, !llvm.loop !1041

63:                                               ; preds = %57, %53, %51, %49, %44
  %64 = phi i32 [ %45, %44 ], [ %50, %49 ], [ %52, %51 ], [ 2, %53 ], [ 2, %57 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  ret i32 %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @vrp_visit_phi_node(ptr noundef %0) #0 !prof !1042 !PGOFuncName !1043 {
  %2 = alloca %struct.value_range_d, align 8
  %3 = alloca %struct.value_range_d, align 8
  %4 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %0) #20
  %5 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %4) #20
  %6 = tail call fastcc ptr @get_value_range(ptr noundef %5) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call fastcc void @copy_value_range(ptr noundef nonnull %2, ptr noundef %6) #20
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9, !prof !1044

9:                                                ; preds = %1
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 20, i64 1, ptr nonnull %7)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !873
  tail call void @print_gimple_stmt(ptr noundef %15, ptr noundef %0, i32 noundef 0, i32 noundef %16) #21
  br label %17

17:                                               ; preds = %13, %9, %1
  %18 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %99, label %20, !prof !1045

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 1
  %22 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 2
  %23 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 3
  br label %24

24:                                               ; preds = %20, %93
  %25 = phi i64 [ 0, %20 ], [ %95, %93 ]
  %26 = phi i32 [ 0, %20 ], [ %94, %93 ]
  %27 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %25) #20
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30, !prof !1046

30:                                               ; preds = %24
  %31 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  %35 = trunc i64 %25 to i32
  %36 = load ptr, ptr %27, align 8, !tbaa !934
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 9
  %38 = load i32, ptr %37, align 8, !tbaa !931
  %39 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !936
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !931
  %43 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !1047
  %45 = and i32 %44, 4096
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, ptr @.str.50, ptr @.str.4
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.49, i32 noundef %35, i32 noundef %38, i32 noundef %42, ptr noundef nonnull %47) #20
  br label %49

49:                                               ; preds = %34, %30, %24
  %50 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 7
  %51 = load i32, ptr %50, align 8, !tbaa !1047
  %52 = and i32 %51, 4096
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %93, label %54, !prof !1048

54:                                               ; preds = %49
  %55 = trunc i64 %25 to i32
  %56 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %55) #20
  %57 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %56) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  %58 = add nsw i32 %26, 1
  %59 = load i64, ptr %57, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 141
  br i1 %61, label %62, label %64, !prof !1049

62:                                               ; preds = %54
  %63 = call fastcc ptr @get_value_range(ptr noundef nonnull %57) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %63, i64 32, i1 false), !tbaa.struct !1050
  br label %73

64:                                               ; preds = %54
  %65 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %57) #20, !range !862
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %71, label %67, !prof !1051

67:                                               ; preds = %64
  %68 = call ptr @copy_node_stat(ptr noundef nonnull %57) #21
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, -134217729
  store i64 %70, ptr %68, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi ptr [ %68, %67 ], [ %57, %64 ]
  store i32 1, ptr %3, align 8, !tbaa !845
  store ptr %72, ptr %21, align 8, !tbaa !851
  store ptr %72, ptr %22, align 8, !tbaa !866
  store ptr null, ptr %23, align 8, !tbaa !858
  br label %73

73:                                               ; preds = %71, %62
  %74 = phi ptr [ %57, %62 ], [ %72, %71 ]
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %76 = icmp eq ptr %75, null
  br i1 %76, label %90, label %77, !prof !1052

77:                                               ; preds = %73
  %78 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %77
  %82 = call i32 @fputc(i32 9, ptr nonnull %75)
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %84 = load i32, ptr @dump_flags, align 4, !tbaa !873
  call void @print_generic_expr(ptr noundef %83, ptr noundef nonnull %74, i32 noundef %84) #21
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %86 = call i64 @fwrite(ptr nonnull @.str.51, i64 9, i64 1, ptr %85)
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !852
  call void @dump_value_range(ptr noundef %87, ptr noundef nonnull %3) #20
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %89 = call i32 @fputc(i32 10, ptr %88)
  br label %90

90:                                               ; preds = %81, %77, %73
  call fastcc void @vrp_meet(ptr noundef nonnull %2, ptr noundef nonnull %3) #20
  %91 = load i32, ptr %2, align 8, !tbaa !845
  %92 = icmp eq i32 %91, 3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  br i1 %92, label %99, label %93

93:                                               ; preds = %90, %49
  %94 = phi i32 [ %58, %90 ], [ %26, %49 ]
  %95 = add nuw nsw i64 %25, 1
  %96 = call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #20
  %97 = zext i32 %96 to i64
  %98 = icmp ult i64 %95, %97
  br i1 %98, label %24, label %99, !prof !1053, !llvm.loop !1054

99:                                               ; preds = %93, %90, %17
  %100 = phi i32 [ 0, %17 ], [ %58, %90 ], [ %94, %93 ]
  %101 = load ptr, ptr @cfun, align 8, !tbaa !852
  %102 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !1055
  %104 = icmp eq ptr %103, null
  br i1 %104, label %114, label %105, !prof !1056

105:                                              ; preds = %99
  %106 = call fastcc ptr @loop_containing_stmt(ptr noundef %0) #20
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108, !prof !1056

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.loop, ptr %106, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !1057
  %111 = call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %114, !prof !1056

113:                                              ; preds = %108
  call fastcc void @adjust_range_with_scev(ptr noundef nonnull %2, ptr noundef nonnull %106, ptr noundef %0, ptr noundef %5) #20
  br label %114

114:                                              ; preds = %113, %108, %105, %99
  %115 = load i32, ptr %2, align 8
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %211, label %117, !prof !1061

117:                                              ; preds = %114
  %118 = load ptr, ptr @vr_phi_edge_counts, align 8, !tbaa !852
  %119 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 3
  %120 = load i32, ptr %119, align 8, !tbaa !856
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, ptr %118, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !873
  store i32 %100, ptr %122, align 4, !tbaa !873
  %124 = load i32, ptr %6, align 8, !tbaa !845
  %125 = icmp ne i32 %124, 1
  %126 = icmp ne i32 %115, 1
  %127 = or i1 %126, %125
  %128 = icmp sgt i32 %100, %123
  %129 = select i1 %127, i1 true, i1 %128
  br i1 %129, label %208, label %130, !prof !1062

130:                                              ; preds = %117
  %131 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !856
  %133 = load i64, ptr %132, align 8
  %134 = trunc i64 %133 to i16
  switch i16 %134, label %135 [
    i16 10, label %208
    i16 12, label %208
  ], !prof !1063

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !851
  %138 = getelementptr inbounds %struct.value_range_d, ptr %2, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !851
  %140 = call fastcc i32 @compare_values(ptr noundef %137, ptr noundef %139) #20
  %141 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !866
  %143 = getelementptr inbounds %struct.value_range_d, ptr %2, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !866
  %145 = call fastcc i32 @compare_values(ptr noundef %142, ptr noundef %144) #20
  %146 = icmp eq i32 %140, 0
  br i1 %146, label %176, label %147, !prof !1064

147:                                              ; preds = %135
  %148 = call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %144) #20, !range !862
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %211

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.tree_common, ptr %139, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !856
  %153 = getelementptr inbounds %struct.tree_type, ptr %152, i64 0, i32 13
  %154 = load ptr, ptr %153, align 8, !tbaa !856
  %155 = call fastcc i32 @compare_values(ptr noundef %154, ptr noundef %144) #20
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %211, label %157

157:                                              ; preds = %150
  %158 = load ptr, ptr %151, align 8, !tbaa !856
  %159 = call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %158) #20, !range !862
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = call fastcc zeroext i8 @vrp_var_may_overflow(ptr noundef nonnull %5, ptr noundef %0) #20, !range !862
  %163 = icmp eq i8 %162, 0
  %164 = load ptr, ptr %151, align 8, !tbaa !856
  br i1 %163, label %165, label %169

165:                                              ; preds = %161, %157
  %166 = phi ptr [ %164, %161 ], [ %158, %157 ]
  %167 = getelementptr inbounds %struct.tree_type, ptr %166, i64 0, i32 13
  %168 = load ptr, ptr %167, align 8, !tbaa !856
  br label %174

169:                                              ; preds = %161
  %170 = call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %164) #20, !range !862
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %211, label %172

172:                                              ; preds = %169
  %173 = call fastcc ptr @negative_overflow_infinity(ptr noundef %164) #20
  br label %174

174:                                              ; preds = %172, %165
  %175 = phi ptr [ %168, %165 ], [ %173, %172 ]
  store ptr %175, ptr %138, align 8, !tbaa !851
  br label %176

176:                                              ; preds = %174, %135
  %177 = phi ptr [ %139, %135 ], [ %175, %174 ]
  %178 = icmp eq i32 %145, 0
  br i1 %178, label %208, label %179, !prof !1064

179:                                              ; preds = %176
  %180 = call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %177) #20, !range !862
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %179
  %183 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !856
  %185 = getelementptr inbounds %struct.tree_type, ptr %184, i64 0, i32 14
  %186 = load ptr, ptr %185, align 8, !tbaa !856
  %187 = call fastcc i32 @compare_values(ptr noundef %186, ptr noundef %177) #20
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %211, label %189

189:                                              ; preds = %182
  %190 = load ptr, ptr %183, align 8, !tbaa !856
  %191 = call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %190) #20, !range !862
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = call fastcc zeroext i8 @vrp_var_may_overflow(ptr noundef nonnull %5, ptr noundef %0) #20, !range !862
  %195 = icmp eq i8 %194, 0
  %196 = load ptr, ptr %183, align 8, !tbaa !856
  br i1 %195, label %197, label %201

197:                                              ; preds = %193, %189
  %198 = phi ptr [ %196, %193 ], [ %190, %189 ]
  %199 = getelementptr inbounds %struct.tree_type, ptr %198, i64 0, i32 14
  %200 = load ptr, ptr %199, align 8, !tbaa !856
  br label %206

201:                                              ; preds = %193
  %202 = call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %196) #20, !range !862
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %211, label %204

204:                                              ; preds = %201
  %205 = call fastcc ptr @positive_overflow_infinity(ptr noundef %196) #20
  br label %206

206:                                              ; preds = %204, %197
  %207 = phi ptr [ %200, %197 ], [ %205, %204 ]
  store ptr %207, ptr %143, align 8, !tbaa !866
  br label %208

208:                                              ; preds = %206, %176, %130, %130, %117
  %209 = call fastcc zeroext i8 @update_value_range(ptr noundef nonnull %5, ptr noundef nonnull %2) #20, !range !862
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
define internal fastcc void @vrp_finalize() unnamed_addr #0 !prof !946 !PGOFuncName !1065 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3, !prof !860

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 26, i64 1, ptr nonnull %1)
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @dump_all_value_ranges(ptr noundef %5) #20
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %7 = tail call i32 @fputc(i32 10, ptr %6)
  br label %8

8:                                                ; preds = %3, %0
  %9 = load ptr, ptr @cfun, align 8, !tbaa !852
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !867
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !869
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #20
  %15 = zext i32 %14 to i64
  %16 = tail call ptr @xcalloc(i64 noundef %15, i64 noundef 16) #21
  %17 = load ptr, ptr @cfun, align 8, !tbaa !852
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !867
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !869
  %22 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %21) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %66, label %24, !prof !1011

24:                                               ; preds = %8
  %25 = load ptr, ptr @vr_value, align 8, !tbaa !852
  br label %26

26:                                               ; preds = %24, %52
  %27 = phi ptr [ %53, %52 ], [ %25, %24 ]
  %28 = phi i8 [ %54, %52 ], [ 0, %24 ]
  %29 = phi i64 [ %55, %52 ], [ 0, %24 ]
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !852
  %32 = icmp eq ptr %31, null
  br i1 %32, label %52, label %33, !prof !1066

33:                                               ; preds = %26
  %34 = load i32, ptr %31, align 8, !tbaa !845
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %52, !prof !1067

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.value_range_d, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !851
  %39 = getelementptr inbounds %struct.value_range_d, ptr %31, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !866
  %41 = icmp eq ptr %38, %40
  br i1 %41, label %42, label %52, !prof !1068

42:                                               ; preds = %36
  %43 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %38) #21
  %44 = icmp eq i8 %43, 0
  %45 = load ptr, ptr @vr_value, align 8, !tbaa !852
  br i1 %44, label %52, label %46, !prof !1069

46:                                               ; preds = %42
  %47 = getelementptr inbounds ptr, ptr %45, i64 %29
  %48 = load ptr, ptr %47, align 8, !tbaa !852
  %49 = getelementptr inbounds %struct.value_range_d, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !851
  %51 = getelementptr inbounds %struct.prop_value_d, ptr %16, i64 %29, i32 1
  store ptr %50, ptr %51, align 8, !tbaa !1070
  br label %52

52:                                               ; preds = %26, %33, %36, %42, %46
  %53 = phi ptr [ %45, %46 ], [ %45, %42 ], [ %27, %36 ], [ %27, %33 ], [ %27, %26 ]
  %54 = phi i8 [ 1, %46 ], [ %28, %42 ], [ %28, %36 ], [ %28, %33 ], [ %28, %26 ]
  %55 = add nuw nsw i64 %29, 1
  %56 = load ptr, ptr @cfun, align 8, !tbaa !852
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !867
  %59 = getelementptr inbounds %struct.gimple_df, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !869
  %61 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %60) #20
  %62 = zext i32 %61 to i64
  %63 = icmp ult i64 %55, %62
  br i1 %63, label %26, label %64, !prof !1072, !llvm.loop !1073

64:                                               ; preds = %52
  %65 = icmp eq i8 %54, 0
  br i1 %65, label %66, label %67, !prof !1074

66:                                               ; preds = %8, %64
  tail call void @free(ptr noundef %16) #20
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi ptr [ %16, %64 ], [ null, %66 ]
  %69 = tail call zeroext i8 @substitute_and_fold(ptr noundef %68, ptr noundef nonnull @vrp_fold_stmt) #21
  %70 = load i32, ptr @warn_array_bounds, align 4, !tbaa !873
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72, !prof !860

72:                                               ; preds = %67
  tail call fastcc void @check_all_array_refs() #20
  br label %73

73:                                               ; preds = %72, %67
  tail call fastcc void @identify_jump_threads() #20
  %74 = load ptr, ptr @cfun, align 8, !tbaa !852
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !867
  %77 = getelementptr inbounds %struct.gimple_df, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !869
  %79 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %78) #20
  %80 = icmp eq i32 %79, 0
  %81 = load ptr, ptr @vr_value, align 8, !tbaa !852
  br i1 %80, label %109, label %82, !prof !1011

82:                                               ; preds = %73, %98
  %83 = phi ptr [ %99, %98 ], [ %74, %73 ]
  %84 = phi ptr [ %100, %98 ], [ %81, %73 ]
  %85 = phi i64 [ %101, %98 ], [ 0, %73 ]
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !852
  %88 = icmp eq ptr %87, null
  br i1 %88, label %98, label %89, !prof !1066

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.value_range_d, ptr %87, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !858
  tail call void @bitmap_obstack_free(ptr noundef %91) #21
  %92 = load ptr, ptr @vr_value, align 8, !tbaa !852
  %93 = getelementptr inbounds ptr, ptr %92, i64 %85
  %94 = load ptr, ptr %93, align 8, !tbaa !852
  %95 = getelementptr inbounds %struct.value_range_d, ptr %94, i64 0, i32 3
  store ptr null, ptr %95, align 8, !tbaa !858
  %96 = load ptr, ptr %93, align 8, !tbaa !852
  tail call void @free(ptr noundef %96) #20
  %97 = load ptr, ptr @cfun, align 8, !tbaa !852
  br label %98

98:                                               ; preds = %82, %89
  %99 = phi ptr [ %83, %82 ], [ %97, %89 ]
  %100 = phi ptr [ %84, %82 ], [ %92, %89 ]
  %101 = add nuw nsw i64 %85, 1
  %102 = getelementptr inbounds %struct.function, ptr %99, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !867
  %104 = getelementptr inbounds %struct.gimple_df, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !869
  %106 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %105) #20
  %107 = zext i32 %106 to i64
  %108 = icmp ult i64 %101, %107
  br i1 %108, label %82, label %109, !prof !1072, !llvm.loop !1075

109:                                              ; preds = %98, %73
  %110 = phi ptr [ %81, %73 ], [ %100, %98 ]
  tail call void @free(ptr noundef %68) #20
  tail call void @free(ptr noundef %110) #20
  %111 = load ptr, ptr @vr_phi_edge_counts, align 8, !tbaa !852
  tail call void @free(ptr noundef %111) #20
  store ptr null, ptr @vr_value, align 8, !tbaa !852
  store ptr null, ptr @vr_phi_edge_counts, align 8, !tbaa !852
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_range_assertions() unnamed_addr #0 !prof !946 !PGOFuncName !1076 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !852
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1006
  %7 = load ptr, ptr %6, align 8, !tbaa !1007
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !1009
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !1010
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %69, label %22, !prof !1011

13:                                               ; preds = %66, %22
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !1009
  %16 = load ptr, ptr @cfun, align 8, !tbaa !852
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !1006
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !1010
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %69, label %22, !prof !1025, !llvm.loop !1077

22:                                               ; preds = %0, %13
  %23 = phi ptr [ %15, %13 ], [ %9, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %23) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1016
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  %24 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !862
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %13, !prof !1017

26:                                               ; preds = %22, %66
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %28 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %27) #20, !range !862
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %65, label %30, !prof !1078

30:                                               ; preds = %26
  %31 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %27) #20, !range !1079
  %32 = icmp eq i32 %31, 148
  br i1 %32, label %33, label %65, !prof !1080

33:                                               ; preds = %30
  %34 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %27) #20
  %35 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %36 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !856
  %38 = call ptr @fold(ptr noundef %37) #21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #22
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !852
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %42, !prof !1081

41:                                               ; preds = %33
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 5249, ptr noundef nonnull @.str.28) #21
  br label %42

42:                                               ; preds = %33, %41
  %43 = load ptr, ptr %35, align 8, !tbaa !856
  %44 = call fastcc ptr @gimple_assign_lhs(ptr noundef %27) #20
  call fastcc void @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %44) #20
  %45 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #20, !range !862
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %64, !prof !1082

47:                                               ; preds = %42, %61
  %48 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #20
  %49 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #20, !range !862
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %61, !prof !1083

51:                                               ; preds = %47, %57
  %52 = phi ptr [ %58, %57 ], [ %48, %47 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %52, ptr noundef %43) #20
  %53 = load i64, ptr %43, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %57, label %56, !prof !1084

56:                                               ; preds = %51
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 5258, ptr noundef nonnull @.str.28) #21
  br label %57

57:                                               ; preds = %56, %51
  %58 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #20
  %59 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #20, !range !862
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %51, label %61, !prof !1085, !llvm.loop !1086

61:                                               ; preds = %57, %47
  call fastcc void @next_imm_use_stmt(ptr noundef nonnull %3) #20
  %62 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #20, !range !862
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %47, label %64, !prof !1087, !llvm.loop !1088

64:                                               ; preds = %61, %42
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #21
  call void @release_defs(ptr noundef %27) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #22
  br label %66

65:                                               ; preds = %30, %26
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  br label %66

66:                                               ; preds = %65, %64
  %67 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !862
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %26, label %13, !prof !1089, !llvm.loop !1090

69:                                               ; preds = %13, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_jump_threads() unnamed_addr #0 !prof !946 !PGOFuncName !1091 {
  %1 = tail call zeroext i8 @thread_through_all_blocks(i8 noundef zeroext 0) #21
  tail call fastcc void @VEC_tree_heap_free() #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !1092 !PGOFuncName !1093 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1011

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1094
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1011

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !852
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !852
  ret i32 %14
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_switch_update_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !946 !PGOFuncName !1096 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !960

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1097
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !960

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_switch_update_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !852
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_switch_set_num_labels(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !prof !844 !PGOFuncName !1099 {
  %3 = add i32 %1, 1
  tail call fastcc void @gimple_set_num_ops(ptr noundef %0, i32 noundef %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_switch_set_label(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !844 !PGOFuncName !1100 {
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
define internal fastcc ptr @gimple_switch_default_label(ptr noundef %0) unnamed_addr #0 !prof !844 !PGOFuncName !1101 {
  %2 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !1102 !PGOFuncName !1103 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1104

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1094
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free() unnamed_addr #11 !prof !946 !PGOFuncName !1105 {
  %1 = load ptr, ptr @to_remove_edges, align 8, !tbaa !852
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !960

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @to_remove_edges, align 8, !tbaa !852
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_switch_update_heap_free() unnamed_addr #11 !prof !946 !PGOFuncName !1106 {
  %1 = load ptr, ptr @to_update_switch_stmts, align 8, !tbaa !852
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !960

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @to_update_switch_stmts, align 8, !tbaa !852
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
define internal fastcc zeroext i8 @find_assert_locations() unnamed_addr #0 !prof !946 !PGOFuncName !1107 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !852
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1006
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !1108
  %8 = add nsw i32 %7, 2
  %9 = sext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 4) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !852
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1006
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !1108
  %16 = add nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = tail call ptr @xcalloc(i64 noundef %17, i64 noundef 4) #21
  %19 = load ptr, ptr @cfun, align 8, !tbaa !852
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !1006
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !1108
  %24 = add nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = tail call ptr @xcalloc(i64 noundef %25, i64 noundef 4) #21
  %27 = load ptr, ptr @cfun, align 8, !tbaa !852
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !1006
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !1108
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = tail call ptr @xcalloc(i64 noundef %33, i64 noundef 8) #21
  store ptr %34, ptr @live, align 8, !tbaa !852
  %35 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %10, i8 noundef zeroext 0) #21
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %206, !prof !1109

37:                                               ; preds = %0
  %38 = zext nneg i32 %35 to i64
  br label %43

39:                                               ; preds = %43
  br i1 %36, label %40, label %206, !prof !1110

40:                                               ; preds = %39
  %41 = getelementptr inbounds i8, ptr %2, i64 8
  %42 = zext nneg i32 %35 to i64
  br label %52

43:                                               ; preds = %37, %43
  %44 = phi i64 [ 0, %37 ], [ %50, %43 ]
  %45 = getelementptr inbounds i32, ptr %10, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !873
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %18, i64 %47
  %49 = trunc i64 %44 to i32
  store i32 %49, ptr %48, align 4, !tbaa !873
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %38
  br i1 %51, label %39, label %43, !prof !1111, !llvm.loop !1112

52:                                               ; preds = %40, %204
  %53 = phi i64 [ %42, %40 ], [ %55, %204 ]
  %54 = phi i8 [ 0, %40 ], [ %88, %204 ]
  %55 = add nsw i64 %53, -1
  %56 = load ptr, ptr @cfun, align 8, !tbaa !852
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !1006
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !1113
  %61 = getelementptr inbounds i32, ptr %10, i64 %55
  %62 = load i32, ptr %61, align 4, !tbaa !873
  %63 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %60, i32 noundef %62) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %64 = load ptr, ptr @live, align 8, !tbaa !852
  %65 = sext i32 %62 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !852
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %85, !prof !1114

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !867
  %72 = getelementptr inbounds %struct.gimple_df, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !869
  %74 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %73) #20
  %75 = tail call ptr @sbitmap_alloc(i32 noundef %74) #21
  %76 = load ptr, ptr @live, align 8, !tbaa !852
  %77 = load i32, ptr %61, align 4, !tbaa !873
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78
  store ptr %75, ptr %79, align 8, !tbaa !852
  tail call void @sbitmap_zero(ptr noundef %75) #21
  %80 = load ptr, ptr @live, align 8, !tbaa !852
  %81 = load i32, ptr %61, align 4, !tbaa !873
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %80, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !852
  br label %85

85:                                               ; preds = %69, %52
  %86 = phi ptr [ %84, %69 ], [ %67, %52 ]
  %87 = tail call fastcc zeroext i8 @find_assert_locations_1(ptr noundef %63, ptr noundef %86) #20
  %88 = or i8 %87, %54
  %89 = load ptr, ptr @live, align 8, !tbaa !852
  %90 = load i32, ptr %61, align 4, !tbaa !873
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %89, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !852
  %94 = tail call zeroext i8 @sbitmap_empty_p(ptr noundef %93) #21
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %151, !prof !1115

96:                                               ; preds = %85
  %97 = tail call fastcc ptr @ei_start_1(ptr noundef %63) #20
  store i32 0, ptr %2, align 8, !tbaa.struct !1116
  store ptr %97, ptr %41, align 8, !tbaa.struct !1117
  %98 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %97, ptr noundef nonnull %1) #20, !range !862
  %99 = icmp eq i8 %98, 0
  %100 = trunc i64 %55 to i32
  br i1 %99, label %146, label %101, !prof !1118

101:                                              ; preds = %96, %140
  %102 = phi i32 [ %141, %140 ], [ %100, %96 ]
  %103 = load ptr, ptr %1, align 8, !tbaa !852
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !1047
  %106 = and i32 %105, 32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %140, !prof !1119

108:                                              ; preds = %101
  %109 = load ptr, ptr %103, align 8, !tbaa !934
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %109, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !931
  %112 = load ptr, ptr @live, align 8, !tbaa !852
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds ptr, ptr %112, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !852
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %130, !prof !1120

117:                                              ; preds = %108
  %118 = load ptr, ptr @cfun, align 8, !tbaa !852
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !867
  %121 = getelementptr inbounds %struct.gimple_df, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !869
  %123 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %122) #20
  %124 = tail call ptr @sbitmap_alloc(i32 noundef %123) #21
  %125 = load ptr, ptr @live, align 8, !tbaa !852
  %126 = getelementptr inbounds ptr, ptr %125, i64 %113
  store ptr %124, ptr %126, align 8, !tbaa !852
  tail call void @sbitmap_zero(ptr noundef %124) #21
  %127 = load ptr, ptr @live, align 8, !tbaa !852
  %128 = getelementptr inbounds ptr, ptr %127, i64 %113
  %129 = load ptr, ptr %128, align 8, !tbaa !852
  br label %130

130:                                              ; preds = %117, %108
  %131 = phi ptr [ %129, %117 ], [ %115, %108 ]
  %132 = phi ptr [ %127, %117 ], [ %112, %108 ]
  %133 = load i32, ptr %61, align 4, !tbaa !873
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %132, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !852
  tail call void @sbitmap_a_or_b(ptr noundef %131, ptr noundef %131, ptr noundef %136) #21
  %137 = getelementptr inbounds i32, ptr %18, i64 %113
  %138 = load i32, ptr %137, align 4, !tbaa !873
  %139 = tail call i32 @llvm.smin.i32(i32 %138, i32 %102)
  br label %140

140:                                              ; preds = %101, %130
  %141 = phi i32 [ %139, %130 ], [ %102, %101 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %142 = load i32, ptr %2, align 8
  %143 = load ptr, ptr %41, align 8
  %144 = call fastcc zeroext i8 @ei_cond(i32 %142, ptr %143, ptr noundef nonnull %1) #20, !range !862
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %101, !prof !1121, !llvm.loop !1122

146:                                              ; preds = %140, %96
  %147 = phi i32 [ %100, %96 ], [ %141, %140 ]
  %148 = load i32, ptr %61, align 4, !tbaa !873
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, ptr %26, i64 %149
  store i32 %147, ptr %150, align 4, !tbaa !873
  br label %165

151:                                              ; preds = %85
  %152 = load ptr, ptr @live, align 8, !tbaa !852
  %153 = load i32, ptr %61, align 4, !tbaa !873
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %152, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !852
  %157 = load ptr, ptr %156, align 8, !tbaa !1123
  tail call void @free(ptr noundef %157) #20
  %158 = load i32, ptr %61, align 4, !tbaa !873
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %152, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !852
  tail call void @free(ptr noundef %161) #20
  %162 = load i32, ptr %61, align 4, !tbaa !873
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %152, i64 %163
  store ptr null, ptr %164, align 8, !tbaa !852
  br label %165

165:                                              ; preds = %151, %146
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 1
  %167 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %166) #20
  store i32 0, ptr %2, align 8, !tbaa.struct !1116
  store ptr %167, ptr %41, align 8, !tbaa.struct !1117
  %168 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %167, ptr noundef nonnull %1) #20, !range !862
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %204, label %170, !prof !1125

170:                                              ; preds = %165, %199
  %171 = load ptr, ptr %1, align 8, !tbaa !852
  %172 = getelementptr inbounds %struct.edge_def, ptr %171, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !936
  %174 = getelementptr inbounds %struct.basic_block_def, ptr %173, i64 0, i32 9
  %175 = load i32, ptr %174, align 8, !tbaa !931
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, ptr %26, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !873
  %179 = zext i32 %178 to i64
  %180 = icmp eq i64 %55, %179
  br i1 %180, label %181, label %199, !prof !1126

181:                                              ; preds = %170
  %182 = load ptr, ptr @live, align 8, !tbaa !852
  %183 = getelementptr inbounds ptr, ptr %182, i64 %176
  %184 = load ptr, ptr %183, align 8, !tbaa !852
  %185 = icmp eq ptr %184, null
  br i1 %185, label %199, label %186, !prof !1127

186:                                              ; preds = %181
  %187 = load ptr, ptr %184, align 8, !tbaa !1123
  tail call void @free(ptr noundef %187) #20
  %188 = load ptr, ptr %172, align 8, !tbaa !936
  %189 = getelementptr inbounds %struct.basic_block_def, ptr %188, i64 0, i32 9
  %190 = load i32, ptr %189, align 8, !tbaa !931
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds ptr, ptr %182, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !852
  tail call void @free(ptr noundef %193) #20
  %194 = load ptr, ptr %172, align 8, !tbaa !936
  %195 = getelementptr inbounds %struct.basic_block_def, ptr %194, i64 0, i32 9
  %196 = load i32, ptr %195, align 8, !tbaa !931
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %182, i64 %197
  store ptr null, ptr %198, align 8, !tbaa !852
  br label %199

199:                                              ; preds = %170, %181, %186
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %200 = load i32, ptr %2, align 8
  %201 = load ptr, ptr %41, align 8
  %202 = call fastcc zeroext i8 @ei_cond(i32 %200, ptr %201, ptr noundef nonnull %1) #20, !range !862
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %170, !prof !1128, !llvm.loop !1129

204:                                              ; preds = %199, %165
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  %205 = icmp sgt i64 %53, 1
  br i1 %205, label %52, label %206, !prof !1130, !llvm.loop !1131

206:                                              ; preds = %204, %0, %39
  %207 = phi i8 [ 0, %39 ], [ 0, %0 ], [ %88, %204 ]
  tail call void @free(ptr noundef %10) #20
  tail call void @free(ptr noundef %18) #20
  tail call void @free(ptr noundef %26) #20
  %208 = load ptr, ptr @cfun, align 8, !tbaa !852
  %209 = getelementptr inbounds %struct.function, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !1006
  %211 = getelementptr inbounds %struct.control_flow_graph, ptr %210, i64 0, i32 5
  %212 = load i32, ptr %211, align 8, !tbaa !1108
  %213 = icmp sgt i32 %212, -2
  %214 = load ptr, ptr @live, align 8, !tbaa !852
  br i1 %213, label %215, label %234, !prof !1109

215:                                              ; preds = %206, %225
  %216 = phi ptr [ %226, %225 ], [ %208, %206 ]
  %217 = phi i64 [ %227, %225 ], [ 0, %206 ]
  %218 = getelementptr inbounds ptr, ptr %214, i64 %217
  %219 = load ptr, ptr %218, align 8, !tbaa !852
  %220 = icmp eq ptr %219, null
  br i1 %220, label %225, label %221, !prof !1132

221:                                              ; preds = %215
  %222 = load ptr, ptr %219, align 8, !tbaa !1123
  tail call void @free(ptr noundef %222) #20
  %223 = load ptr, ptr %218, align 8, !tbaa !852
  tail call void @free(ptr noundef %223) #20
  %224 = load ptr, ptr @cfun, align 8, !tbaa !852
  br label %225

225:                                              ; preds = %215, %221
  %226 = phi ptr [ %216, %215 ], [ %224, %221 ]
  %227 = add nuw nsw i64 %217, 1
  %228 = getelementptr inbounds %struct.function, ptr %226, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !1006
  %230 = getelementptr inbounds %struct.control_flow_graph, ptr %229, i64 0, i32 5
  %231 = load i32, ptr %230, align 8, !tbaa !1108
  %232 = sext i32 %231 to i64
  %233 = icmp sgt i64 %217, %232
  br i1 %233, label %234, label %215, !prof !1133, !llvm.loop !1134

234:                                              ; preds = %225, %206
  tail call void @free(ptr noundef %214) #20
  ret i8 %207
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_assert_insertions() unnamed_addr #0 !prof !946 !PGOFuncName !1135 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #22
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !860

5:                                                ; preds = %0
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @dump_all_asserts(ptr noundef nonnull %3) #20
  br label %10

10:                                               ; preds = %9, %5, %0
  %11 = load ptr, ptr @need_assert_for, align 8, !tbaa !852
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %11, ptr noundef nonnull %1) #20
  %12 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !862
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %48, label %14, !prof !1011

14:                                               ; preds = %10, %40
  %15 = phi i8 [ %42, %40 ], [ 0, %10 ]
  %16 = phi i32 [ %41, %40 ], [ 0, %10 ]
  %17 = load ptr, ptr @asserts_for, align 8, !tbaa !852
  %18 = load i32, ptr %1, align 4, !tbaa !873
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !852
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !1136

23:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 4926, ptr noundef nonnull @.str.28) #21
  br label %40

24:                                               ; preds = %14, %24
  %25 = phi i8 [ %37, %24 ], [ %15, %14 ]
  %26 = phi ptr [ %29, %24 ], [ %21, %14 ]
  %27 = phi i32 [ %38, %24 ], [ %16, %14 ]
  %28 = getelementptr inbounds %struct.assert_locus_d, ptr %26, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !1137
  %30 = load ptr, ptr @cfun, align 8, !tbaa !852
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !867
  %33 = getelementptr inbounds %struct.gimple_df, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !869
  %35 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %34, i32 noundef %18) #20
  %36 = tail call fastcc zeroext i8 @process_assert_insertions_for(ptr noundef %35, ptr noundef nonnull %26) #20, !range !862
  %37 = or i8 %36, %25
  tail call void @free(ptr noundef nonnull %26) #20
  %38 = add nsw i32 %27, 1
  %39 = icmp eq ptr %29, null
  br i1 %39, label %40, label %24, !prof !1138, !llvm.loop !1139

40:                                               ; preds = %24, %23
  %41 = phi i32 [ %16, %23 ], [ %38, %24 ]
  %42 = phi i8 [ %15, %23 ], [ %37, %24 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #20
  %43 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #20, !range !862
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %14, !prof !1140, !llvm.loop !1141

45:                                               ; preds = %40
  %46 = icmp eq i8 %42, 0
  br i1 %46, label %48, label %47, !prof !1142

47:                                               ; preds = %45
  tail call void @gsi_commit_edge_inserts() #21
  br label %48

48:                                               ; preds = %10, %47, %45
  %49 = phi i32 [ %41, %47 ], [ %41, %45 ], [ 0, %10 ]
  %50 = load ptr, ptr @cfun, align 8, !tbaa !852
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
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1143 !PGOFuncName !1144 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !852
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_assert_locations_1(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1143 !PGOFuncName !1145 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %8 = tail call ptr @last_stmt(ptr noundef %0) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10, !prof !1146

10:                                               ; preds = %2
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #20, !range !1036
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %21, !prof !1147

13:                                               ; preds = %10
  %14 = tail call fastcc zeroext i8 @fp_predicate(ptr noundef nonnull %8) #20, !range !862
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %21, !prof !1148

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @zero_ssa_operands(ptr noundef nonnull %8) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21, !prof !1148

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @find_conditional_asserts(ptr noundef %0, ptr noundef nonnull %8) #20, !range !862
  br label %21

21:                                               ; preds = %19, %16, %13, %10
  %22 = phi i8 [ 0, %10 ], [ %20, %19 ], [ 0, %16 ], [ 0, %13 ]
  %23 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #20, !range !1036
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %31, !prof !1149

25:                                               ; preds = %21
  %26 = tail call fastcc zeroext i8 @zero_ssa_operands(ptr noundef nonnull %8) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31, !prof !1150

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @find_switch_asserts(ptr noundef %0, ptr noundef nonnull %8) #20, !range !862
  %30 = or i8 %29, %22
  br label %31

31:                                               ; preds = %2, %28, %25, %21
  %32 = phi i8 [ %22, %25 ], [ %30, %28 ], [ %22, %21 ], [ 0, %2 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #20
  %33 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !862
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %113, !prof !1151

35:                                               ; preds = %31, %109
  %36 = phi i8 [ %110, %109 ], [ %32, %31 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %37 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %38 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %37) #20, !range !862
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %109, !prof !1152

40:                                               ; preds = %35
  %41 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %37, i32 noundef 1) #20
  %42 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %109, !prof !1153

44:                                               ; preds = %40, %104
  %45 = phi i8 [ %105, %104 ], [ %36, %40 ]
  %46 = phi ptr [ %106, %104 ], [ %41, %40 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  %47 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !856
  tail call fastcc void @SET_BIT(ptr noundef %1, i32 noundef %48) #20
  %49 = call fastcc zeroext i8 @infer_value_range(ptr noundef %37, ptr noundef %46, ptr noundef nonnull %6, ptr noundef nonnull %5) #20, !range !862
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %104, label %51, !prof !1154

51:                                               ; preds = %44
  %52 = load i32, ptr %6, align 4, !tbaa !873
  %53 = icmp eq i32 %52, 102
  br i1 %53, label %54, label %98, !prof !1155

54:                                               ; preds = %51
  %55 = load ptr, ptr %5, align 8, !tbaa !852
  %56 = tail call i32 @integer_zerop(ptr noundef %55) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %98, label %58, !prof !1156

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !856
  %61 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %60) #20, !range !862
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %98, label %63, !prof !1157

63:                                               ; preds = %58, %94
  %64 = phi i8 [ %95, %94 ], [ %45, %58 ]
  %65 = phi ptr [ %90, %94 ], [ %60, %58 ]
  %66 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %65) #20, !range !1079
  %67 = icmp eq i32 %66, 116
  br i1 %67, label %68, label %98, !prof !1158

68:                                               ; preds = %63
  %69 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 141
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !856
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 10
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !856
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 12
  br i1 %86, label %87, label %98, !prof !1156

87:                                               ; preds = %73, %80
  %88 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %65) #20
  %89 = getelementptr inbounds %struct.tree_ssa_name, ptr %88, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !856
  %91 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %88) #20
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  tail call fastcc void @register_new_assert_for(ptr noundef nonnull %88, ptr noundef nonnull %88, i32 noundef 102, ptr noundef %55, ptr noundef %0, ptr noundef null, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  br label %94

94:                                               ; preds = %93, %87
  %95 = phi i8 [ %64, %87 ], [ 1, %93 ]
  %96 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %90) #20, !range !862
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %63, !prof !1159, !llvm.loop !1160

98:                                               ; preds = %68, %63, %94, %80, %58, %54, %51
  %99 = phi i8 [ %45, %54 ], [ %45, %51 ], [ %45, %58 ], [ %64, %68 ], [ %64, %63 ], [ %95, %94 ], [ %64, %80 ]
  %100 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %46) #20
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %104, !prof !1161

102:                                              ; preds = %98
  %103 = load ptr, ptr %5, align 8, !tbaa !852
  tail call fastcc void @register_new_assert_for(ptr noundef %46, ptr noundef %46, i32 noundef %52, ptr noundef %103, ptr noundef %0, ptr noundef null, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  br label %104

104:                                              ; preds = %98, %102, %44
  %105 = phi i8 [ %99, %98 ], [ 1, %102 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  %106 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #20
  %107 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %44, label %109, !prof !1162, !llvm.loop !1163

109:                                              ; preds = %104, %40, %35
  %110 = phi i8 [ %36, %35 ], [ %36, %40 ], [ %105, %104 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %111 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !862
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %35, label %113, !prof !1164, !llvm.loop !1165

113:                                              ; preds = %109, %31
  %114 = phi i8 [ %32, %31 ], [ %110, %109 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #21
  %115 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !862
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %138, !prof !1166

117:                                              ; preds = %113, %135
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #22
  %118 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %119 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %7, ptr noundef %118, i32 noundef 1) #20
  %120 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %135, !prof !1167

122:                                              ; preds = %117, %131
  %123 = phi ptr [ %132, %131 ], [ %119, %117 ]
  %124 = call fastcc ptr @get_use_from_ptr(ptr noundef %123) #20
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 141
  br i1 %127, label %128, label %131, !prof !1168

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.tree_ssa_name, ptr %124, i64 0, i32 3
  %130 = load i32, ptr %129, align 8, !tbaa !856
  call fastcc void @SET_BIT(ptr noundef %1, i32 noundef %130) #20
  br label %131

131:                                              ; preds = %128, %122
  %132 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %7) #20
  %133 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %7) #20
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %122, label %135, !prof !1169, !llvm.loop !1170

135:                                              ; preds = %131, %117
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #22
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %136 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !862
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %117, label %138, !prof !1014, !llvm.loop !1171

138:                                              ; preds = %135, %113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %114
}

; Function Attrs: optsize
declare zeroext i8 @sbitmap_empty_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #13 !prof !1172 !PGOFuncName !1173 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1174 !PGOFuncName !1175 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #20, !range !862
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1176

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #20
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !852
  ret i8 %10
}

; Function Attrs: optsize
declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1177 !PGOFuncName !1178 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1179

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #20
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #20
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1180

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 738, ptr noundef nonnull @.str.28) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1181
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1181
  ret void
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1183 !PGOFuncName !1184 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @fp_predicate(ptr noundef %0) unnamed_addr #0 !prof !1185 !PGOFuncName !1186 {
  %2 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !856
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 9
  br i1 %7, label %32, label %8, !prof !1187

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !856
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 13
  br i1 %14, label %22, label %15, !prof !1187

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !856
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 14
  br i1 %21, label %22, label %32, !prof !1187

22:                                               ; preds = %15, %8
  %23 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !856
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !856
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
define internal fastcc zeroext i8 @zero_ssa_operands(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1188 !PGOFuncName !1189 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #22
  %3 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 1) #20
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #22
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_conditional_asserts(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1185 !PGOFuncName !1190 {
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
  store i32 0, ptr %4, align 8, !tbaa.struct !1116
  %9 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %8, ptr %9, align 8, !tbaa.struct !1117
  %10 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %8, ptr noundef nonnull %5) #20, !range !862
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %39, label %12, !prof !1191

12:                                               ; preds = %2, %33
  %13 = phi i8 [ %34, %33 ], [ 0, %2 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !852
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !936
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %33, label %18, !prof !1192

18:                                               ; preds = %12
  %19 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 1) #20
  %20 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #20
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %33, !prof !1193

22:                                               ; preds = %18, %22
  %23 = phi i8 [ %29, %22 ], [ %13, %18 ]
  %24 = phi ptr [ %30, %22 ], [ %19, %18 ]
  %25 = call fastcc i32 @gimple_cond_code(ptr noundef %1) #20, !range !1079
  %26 = call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #20
  %27 = call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #20
  %28 = call fastcc zeroext i8 @register_edge_assert_for(ptr noundef %24, ptr noundef %14, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %25, ptr noundef %26, ptr noundef %27) #20, !range !862
  %29 = or i8 %28, %23
  %30 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %6) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %22, label %33, !prof !1194, !llvm.loop !1195

33:                                               ; preds = %22, %18, %12
  %34 = phi i8 [ %13, %12 ], [ %13, %18 ], [ %29, %22 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #20
  %35 = load i32, ptr %4, align 8
  %36 = load ptr, ptr %9, align 8
  %37 = call fastcc zeroext i8 @ei_cond(i32 %35, ptr %36, ptr noundef nonnull %5) #20, !range !862
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %12, !prof !1196, !llvm.loop !1197

39:                                               ; preds = %33, %2
  %40 = phi i8 [ 0, %2 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @find_switch_asserts(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1198 !PGOFuncName !1199 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %1) #20
  %5 = zext i32 %4 to i64
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #21
  %6 = call fastcc ptr @gimple_switch_index(ptr noundef %1) #20
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %97, !prof !1150

10:                                               ; preds = %2
  %11 = call ptr @make_tree_vec_stat(i32 noundef %4) #21
  %12 = icmp eq i32 %4, 0
  br i1 %12, label %13, label %15, !prof !1200

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2
  call void @spec_qsort(ptr noundef nonnull %14, i64 noundef %5, i64 noundef 8, ptr noundef nonnull @compare_case_labels) #21
  br label %97

15:                                               ; preds = %10, %15
  %16 = phi i64 [ %20, %15 ], [ 0, %10 ]
  %17 = trunc i64 %16 to i32
  %18 = call fastcc ptr @gimple_switch_label(ptr noundef %1, i32 noundef %17) #20
  %19 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %16
  store ptr %18, ptr %19, align 8, !tbaa !856
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, %5
  br i1 %21, label %22, label %15, !prof !1201, !llvm.loop !1202

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2
  call void @spec_qsort(ptr noundef nonnull %23, i64 noundef %5, i64 noundef 8, ptr noundef nonnull @compare_case_labels) #21
  br i1 %12, label %97, label %24, !prof !1203

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  br label %26

26:                                               ; preds = %24, %93
  %27 = phi i8 [ 0, %24 ], [ %94, %93 ]
  %28 = phi i32 [ 0, %24 ], [ %95, %93 ]
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !856
  %32 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !856
  %34 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !856
  %36 = add nuw i32 %28, 1
  %37 = icmp ult i32 %36, %4
  br i1 %37, label %38, label %72, !prof !1204

38:                                               ; preds = %26
  %39 = zext i32 %36 to i64
  %40 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !856
  %42 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !856
  %44 = getelementptr inbounds %struct.tree_exp, ptr %43, i64 1, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !856
  %46 = icmp eq ptr %41, %45
  br i1 %46, label %47, label %72, !prof !1205

47:                                               ; preds = %38, %51
  %48 = phi i64 [ %49, %51 ], [ %29, %38 ]
  %49 = add nuw nsw i64 %48, 1
  %50 = icmp ult i64 %49, %5
  br i1 %50, label %51, label %59, !prof !1206

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_vec, ptr %11, i64 0, i32 2, i64 %49
  %53 = load ptr, ptr %52, align 8, !tbaa !856
  %54 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !856
  %56 = icmp eq ptr %41, %55
  br i1 %56, label %47, label %57, !prof !1207, !llvm.loop !1208

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
  %65 = load ptr, ptr %64, align 8, !tbaa !856
  %66 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !856
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %72, !prof !1209

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !856
  br label %72

72:                                               ; preds = %61, %69, %38, %26
  %73 = phi i32 [ %62, %69 ], [ %28, %38 ], [ %28, %26 ], [ %62, %61 ]
  %74 = phi ptr [ %71, %69 ], [ %35, %38 ], [ %35, %26 ], [ %67, %61 ]
  %75 = icmp eq ptr %33, null
  br i1 %75, label %93, label %76, !prof !1210

76:                                               ; preds = %72
  %77 = load ptr, ptr @cfun, align 8, !tbaa !852
  %78 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 1, i32 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !856
  %80 = call ptr @label_to_block_fn(ptr noundef %77, ptr noundef %79) #21
  %81 = call ptr @find_edge(ptr noundef %0, ptr noundef %80) #21
  %82 = icmp eq ptr %74, null
  %83 = select i1 %82, i32 101, i32 100
  %84 = load ptr, ptr %25, align 8, !tbaa !856
  %85 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %84, ptr noundef nonnull %33) #21
  %86 = call fastcc zeroext i8 @register_edge_assert_for(ptr noundef nonnull %6, ptr noundef %81, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %83, ptr noundef nonnull %6, ptr noundef %85) #20, !range !862
  %87 = or i8 %86, %27
  br i1 %82, label %93, label %88, !prof !1211

88:                                               ; preds = %76
  %89 = load ptr, ptr %25, align 8, !tbaa !856
  %90 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %89, ptr noundef nonnull %74) #21
  %91 = call fastcc zeroext i8 @register_edge_assert_for(ptr noundef nonnull %6, ptr noundef %81, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef 98, ptr noundef nonnull %6, ptr noundef %90) #20, !range !862
  %92 = or i8 %91, %87
  br label %93

93:                                               ; preds = %76, %88, %72
  %94 = phi i8 [ %27, %72 ], [ %92, %88 ], [ %87, %76 ]
  %95 = add i32 %73, 1
  %96 = icmp ult i32 %95, %4
  br i1 %96, label %26, label %97, !prof !1212, !llvm.loop !1213

97:                                               ; preds = %93, %13, %22, %2
  %98 = phi i8 [ 0, %2 ], [ 0, %22 ], [ 0, %13 ], [ %94, %93 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i8 %98
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !1214 !PGOFuncName !1215 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !942
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !1216
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1217
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !1218 !PGOFuncName !1219 {
  %2 = load ptr, ptr %0, align 8, !tbaa !942
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1220 !PGOFuncName !1221 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1222 !PGOFuncName !1223 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !1224
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #20
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1226 !PGOFuncName !1227 {
  %2 = load i8, ptr %0, align 8, !tbaa !1228
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 !prof !1229 !PGOFuncName !1230 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1123
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1231

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
  %15 = load i64, ptr %14, align 8, !tbaa !904
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !856
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !856
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !904
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !904
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @infer_value_range(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !1232 !PGOFuncName !1233 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr null, ptr %3, align 8, !tbaa !852
  store i32 0, ptr %2, align 4, !tbaa !873
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 4194304
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %46, !prof !1234

11:                                               ; preds = %4
  %12 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #21
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %46, !prof !1234

14:                                               ; preds = %11
  %15 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17, !prof !1235

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !1236
  %21 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %20) #20
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr @flag_delete_null_pointer_checks, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 true, i1 %24
  br i1 %25, label %46, label %29, !prof !1237

26:                                               ; preds = %14
  %27 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !873
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %46, label %29, !prof !1238

29:                                               ; preds = %17, %26
  %30 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !856
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %46 [
    i16 10, label %34
    i16 12, label %34
  ], !prof !1239

34:                                               ; preds = %29, %29
  %35 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %36 = icmp eq i32 %35, 7
  br i1 %36, label %46, label %37, !prof !1240

37:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  call void @count_uses_and_derefs(ptr noundef nonnull %1, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %38 = load i32, ptr %6, align 4, !tbaa !873
  %39 = load i32, ptr %7, align 4, !tbaa !873
  %40 = sub i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %43, !prof !1241

42:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  br label %46

43:                                               ; preds = %37
  %44 = load ptr, ptr %30, align 8, !tbaa !856
  %45 = call ptr @build_int_cst(ptr noundef %44, i64 noundef 0) #21
  store ptr %45, ptr %3, align 8, !tbaa !852
  store i32 102, ptr %2, align 4, !tbaa !873
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  br label %46

46:                                               ; preds = %26, %34, %29, %42, %43, %17, %11, %4
  %47 = phi i8 [ 1, %43 ], [ 0, %4 ], [ 0, %11 ], [ 0, %17 ], [ 0, %42 ], [ 0, %29 ], [ 0, %34 ], [ 0, %26 ]
  ret i8 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1242 !PGOFuncName !1243 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !1244 !PGOFuncName !1245 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !1079
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #20, !range !1036
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !1246

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
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !1247 !PGOFuncName !1248 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_single_use(ptr noundef %0) unnamed_addr #0 !prof !1249 !PGOFuncName !1250 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1251
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %20, label %6, !prof !1253

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1251
  %9 = icmp eq ptr %2, %8
  br i1 %9, label %10, label %15, !prof !1254

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %4, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !856
  %13 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %12) #20, !range !862
  %14 = xor i8 %13, 1
  br label %20

15:                                               ; preds = %6
  %16 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !873
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18, !prof !1255

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #21
  br label %20

20:                                               ; preds = %15, %1, %18, %10
  %21 = phi i8 [ %14, %10 ], [ %19, %18 ], [ 0, %1 ], [ 0, %15 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_new_assert_for(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %6) unnamed_addr #0 !prof !1256 !PGOFuncName !1257 {
  %8 = load i64, ptr %3, align 8
  %9 = and i64 %8, 134283263
  %10 = icmp eq i64 %9, 134217751
  br i1 %10, label %11, label %19, !prof !1258

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !856
  %14 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !856
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !856
  %18 = tail call ptr @build_int_cst_wide(ptr noundef %13, i64 noundef %15, i64 noundef %17) #21
  br label %19

19:                                               ; preds = %11, %7
  %20 = phi ptr [ %18, %11 ], [ %3, %7 ]
  %21 = icmp eq ptr %4, null
  br i1 %21, label %22, label %25, !prof !1259

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !936
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi ptr [ %24, %22 ], [ %4, %19 ]
  %27 = load ptr, ptr @asserts_for, align 8, !tbaa !852
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !856
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !852
  %33 = icmp eq ptr %32, null
  br i1 %33, label %82, label %34, !prof !1260

34:                                               ; preds = %25, %78
  %35 = phi ptr [ %80, %78 ], [ %32, %25 ]
  %36 = getelementptr inbounds %struct.assert_locus_d, ptr %35, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !937
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %78, !prof !1261

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.assert_locus_d, ptr %35, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !938
  %42 = icmp eq ptr %41, %20
  br i1 %42, label %46, label %43, !prof !1262

43:                                               ; preds = %39
  %44 = tail call i32 @operand_equal_p(ptr noundef %41, ptr noundef %20, i32 noundef 0) #21
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %78, label %46, !prof !1263

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.assert_locus_d, ptr %35, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !1264
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %53, label %50, !prof !1265

50:                                               ; preds = %46
  %51 = tail call i32 @operand_equal_p(ptr noundef %48, ptr noundef %1, i32 noundef 0) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %78, label %53

53:                                               ; preds = %50, %46
  %54 = icmp eq ptr %5, null
  br i1 %54, label %55, label %59, !prof !1266

55:                                               ; preds = %53
  %56 = load ptr, ptr %35, align 8, !tbaa !928
  %57 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %26, ptr noundef %56) #21
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %71, label %104, !prof !1267

59:                                               ; preds = %53
  %60 = load ptr, ptr %5, align 8, !tbaa !934
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !1236
  %63 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %62) #20
  %64 = icmp ugt i32 %63, 1
  br i1 %64, label %65, label %71, !prof !1268

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !936
  %68 = load ptr, ptr %67, align 8, !tbaa !1269
  %69 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %68) #20
  %70 = icmp ugt i32 %69, 1
  br i1 %70, label %78, label %71, !prof !1270

71:                                               ; preds = %55, %65, %59
  %72 = load ptr, ptr %35, align 8, !tbaa !928
  %73 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %72, ptr noundef %26) #21
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75, !prof !1271

75:                                               ; preds = %71
  store ptr %26, ptr %35, align 8, !tbaa !928
  %76 = getelementptr inbounds %struct.assert_locus_d, ptr %35, i64 0, i32 1
  store ptr %5, ptr %76, align 8, !tbaa !933
  %77 = getelementptr inbounds %struct.assert_locus_d, ptr %35, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %77, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1016
  br label %104

78:                                               ; preds = %65, %71, %50, %43, %34
  %79 = getelementptr inbounds %struct.assert_locus_d, ptr %35, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !1137
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %34, !prof !1272, !llvm.loop !1273

82:                                               ; preds = %78, %25
  %83 = phi ptr [ null, %25 ], [ %35, %78 ]
  %84 = tail call ptr @xmalloc(i64 noundef 72) #21
  store ptr %26, ptr %84, align 8, !tbaa !928
  %85 = getelementptr inbounds %struct.assert_locus_d, ptr %84, i64 0, i32 1
  store ptr %5, ptr %85, align 8, !tbaa !933
  %86 = getelementptr inbounds %struct.assert_locus_d, ptr %84, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %86, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1016
  %87 = getelementptr inbounds %struct.assert_locus_d, ptr %84, i64 0, i32 3
  store i32 %2, ptr %87, align 8, !tbaa !937
  %88 = getelementptr inbounds %struct.assert_locus_d, ptr %84, i64 0, i32 4
  store ptr %20, ptr %88, align 8, !tbaa !938
  %89 = getelementptr inbounds %struct.assert_locus_d, ptr %84, i64 0, i32 5
  store ptr %1, ptr %89, align 8, !tbaa !1264
  %90 = getelementptr inbounds %struct.assert_locus_d, ptr %84, i64 0, i32 6
  store ptr null, ptr %90, align 8, !tbaa !1137
  %91 = icmp eq ptr %83, null
  br i1 %91, label %94, label %92, !prof !1274

92:                                               ; preds = %82
  %93 = getelementptr inbounds %struct.assert_locus_d, ptr %83, i64 0, i32 6
  br label %99

94:                                               ; preds = %82
  %95 = load ptr, ptr @asserts_for, align 8, !tbaa !852
  %96 = load i32, ptr %28, align 8, !tbaa !856
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %95, i64 %97
  br label %99

99:                                               ; preds = %94, %92
  %100 = phi ptr [ %98, %94 ], [ %93, %92 ]
  store ptr %84, ptr %100, align 8, !tbaa !852
  %101 = load ptr, ptr @need_assert_for, align 8, !tbaa !852
  %102 = load i32, ptr %28, align 8, !tbaa !856
  %103 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %101, i32 noundef %102) #21
  br label %104

104:                                              ; preds = %55, %99, %75
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #4 !prof !1275 !PGOFuncName !1276 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1277
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1278

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #20
  %8 = load ptr, ptr %3, align 8, !tbaa !1279
  store ptr %8, ptr %2, align 8, !tbaa !1277
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1281
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !1282

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !1283
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #20
  %17 = load ptr, ptr %11, align 8, !tbaa !1285
  store ptr %17, ptr %10, align 8, !tbaa !1281
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !1228
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 !prof !1286 !PGOFuncName !1287 {
  %2 = load ptr, ptr %0, align 8, !tbaa !942
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1288
  store ptr %4, ptr %0, align 8, !tbaa !942
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !1289 !PGOFuncName !1290 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #20
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #20
  store i8 0, ptr %0, align 8, !tbaa !1228
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !1291

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 918, ptr noundef nonnull @.str.28) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #21
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !1292

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1228
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !1293
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !1294
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !1224
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !1295 !PGOFuncName !1296 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1297
  %4 = load ptr, ptr %3, align 8, !tbaa !852
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !1298 !PGOFuncName !1299 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1277
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !1300

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !1279
  store ptr %7, ptr %2, align 8, !tbaa !1277
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !1301
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !1294
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !1302

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !1293
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !1301
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #20
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1228
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !1303 !PGOFuncName !1304 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1305 !PGOFuncName !1306 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !862
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !1307

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !852
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1308 !PGOFuncName !1309 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !1310 !PGOFuncName !1311 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !904
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !1312

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1622, ptr noundef nonnull @.str.28) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1310 !PGOFuncName !1313 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #13 !prof !1310 !PGOFuncName !1314 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !873
  ret i32 %4
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @register_edge_assert_for(ptr noundef %0, ptr noundef %1, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 !prof !1315 !PGOFuncName !1316 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !1047
  %11 = lshr i32 %10, 11
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, 4194304
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %85, !prof !1317

17:                                               ; preds = %6
  %18 = call fastcc zeroext i8 @extract_code_and_val_from_cond_with_ops(ptr noundef nonnull %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %13, ptr noundef nonnull %8, ptr noundef nonnull %7) #20, !range !862
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %85, label %20, !prof !1318

20:                                               ; preds = %17
  %21 = tail call fastcc zeroext i8 @register_edge_assert_for_2(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %13) #20, !range !862
  %22 = load i32, ptr %8, align 4, !tbaa !873
  %23 = icmp eq i32 %22, 101
  br i1 %23, label %24, label %28, !prof !1319

24:                                               ; preds = %20
  %25 = load ptr, ptr %7, align 8, !tbaa !852
  %26 = tail call i32 @integer_onep(ptr noundef %25) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %55, label %34, !prof !1320

28:                                               ; preds = %20
  %29 = icmp eq i32 %22, 102
  br i1 %29, label %30, label %85, !prof !1321

30:                                               ; preds = %28
  %31 = load ptr, ptr %7, align 8, !tbaa !852
  %32 = tail call i32 @integer_zerop(ptr noundef %31) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %60, label %34, !prof !1322

34:                                               ; preds = %30, %24
  %35 = phi ptr [ %31, %30 ], [ %25, %24 ]
  %36 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !856
  %38 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %37) #20, !range !862
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %53, label %40, !prof !1323

40:                                               ; preds = %34
  %41 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %37) #20, !range !1079
  %42 = icmp eq i32 %41, 93
  br i1 %42, label %46, label %43, !prof !1324

43:                                               ; preds = %40
  %44 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %37) #20, !range !1079
  %45 = icmp eq i32 %44, 89
  br i1 %45, label %46, label %53, !prof !1325

46:                                               ; preds = %43, %40
  %47 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %37) #20
  %48 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %37) #20
  %49 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %47, i32 noundef 102, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !862
  %50 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %48, i32 noundef 102, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !862
  %51 = or i8 %49, %50
  %52 = or i8 %51, %21
  br label %53

53:                                               ; preds = %34, %43, %46
  %54 = phi i8 [ %52, %46 ], [ %21, %43 ], [ %21, %34 ]
  br i1 %23, label %55, label %60, !prof !1326

55:                                               ; preds = %24, %53
  %56 = phi ptr [ %35, %53 ], [ %25, %24 ]
  %57 = phi i8 [ %54, %53 ], [ %21, %24 ]
  %58 = tail call i32 @integer_zerop(ptr noundef %56) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %85, label %65, !prof !1327

60:                                               ; preds = %53, %30
  %61 = phi ptr [ %31, %30 ], [ %35, %53 ]
  %62 = phi i8 [ %21, %30 ], [ %54, %53 ]
  %63 = tail call i32 @integer_onep(ptr noundef %61) #21
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %85, label %65, !prof !1328

65:                                               ; preds = %60, %55
  %66 = phi i8 [ %62, %60 ], [ %57, %55 ]
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !856
  %69 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %68) #20, !range !862
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %85, label %71, !prof !1329

71:                                               ; preds = %65
  %72 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %68) #20, !range !1079
  %73 = icmp eq i32 %72, 94
  br i1 %73, label %78, label %74, !prof !1330

74:                                               ; preds = %71
  br i1 %23, label %75, label %85, !prof !1331

75:                                               ; preds = %74
  %76 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %68) #20, !range !1079
  %77 = icmp eq i32 %76, 87
  br i1 %77, label %78, label %85, !prof !1332

78:                                               ; preds = %75, %71
  %79 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %68) #20
  %80 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %68) #20
  %81 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %79, i32 noundef 101, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !862
  %82 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %80, i32 noundef 101, ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20, !range !862
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
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1333 !PGOFuncName !1334 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !1335 !PGOFuncName !1336 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @extract_code_and_val_from_cond_with_ops(ptr noundef readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !prof !1337 !PGOFuncName !1338 {
  %8 = icmp eq ptr %0, %3
  br i1 %8, label %9, label %11, !prof !1339

9:                                                ; preds = %7
  %10 = tail call i32 @swap_tree_comparison(i32 noundef %1) #21
  br label %11

11:                                               ; preds = %7, %9
  %12 = phi ptr [ %2, %9 ], [ %3, %7 ]
  %13 = phi i32 [ %10, %9 ], [ %1, %7 ]
  %14 = icmp eq i8 %4, 0
  br i1 %14, label %17, label %15, !prof !1340

15:                                               ; preds = %11
  %16 = tail call i32 @invert_tree_comparison(i32 noundef %13, i8 noundef zeroext 0) #21
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !856
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %45, label %25, !prof !1339

25:                                               ; preds = %17
  switch i32 %18, label %44 [
    i32 99, label %26
    i32 97, label %26
  ]

26:                                               ; preds = %25, %25
  %27 = add nsw i32 %23, -6
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %29, label %44, !prof !1341

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 13
  %31 = load ptr, ptr %30, align 8, !tbaa !856
  %32 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !856
  switch i32 %18, label %44 [
    i32 99, label %34
    i32 97, label %39
  ], !prof !1342

34:                                               ; preds = %29
  %35 = icmp eq ptr %33, null
  br i1 %35, label %45, label %36, !prof !1343

36:                                               ; preds = %34
  %37 = tail call fastcc i32 @compare_values(ptr noundef nonnull %12, ptr noundef nonnull %33) #20
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %44, !prof !1343

39:                                               ; preds = %29
  %40 = icmp eq ptr %31, null
  br i1 %40, label %45, label %41, !prof !1344

41:                                               ; preds = %39
  %42 = tail call fastcc i32 @compare_values(ptr noundef nonnull %12, ptr noundef nonnull %31) #20
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !1344

44:                                               ; preds = %36, %41, %29, %26, %25
  store i32 %18, ptr %5, align 4, !tbaa !873
  store ptr %12, ptr %6, align 8, !tbaa !852
  br label %45

45:                                               ; preds = %36, %34, %41, %39, %17, %44
  %46 = phi i8 [ 1, %44 ], [ 0, %17 ], [ 0, %39 ], [ 0, %41 ], [ 0, %34 ], [ 0, %36 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @register_edge_assert_for_2(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 !prof !1345 !PGOFuncName !1346 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #22
  %10 = call fastcc zeroext i8 @extract_code_and_val_from_cond_with_ops(ptr noundef %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, ptr noundef nonnull %9, ptr noundef nonnull %8) #20, !range !862
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %186, label %12, !prof !1347

12:                                               ; preds = %7
  %13 = tail call fastcc zeroext i8 @live_on_edge(ptr noundef %1, ptr noundef %0) #20, !range !862
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17, !prof !1348

15:                                               ; preds = %12
  %16 = load i32, ptr %9, align 4
  br label %23

17:                                               ; preds = %12
  %18 = tail call fastcc zeroext i8 @has_single_use(ptr noundef %0) #20
  %19 = icmp eq i8 %18, 0
  %20 = load i32, ptr %9, align 4
  br i1 %19, label %21, label %23, !prof !1349

21:                                               ; preds = %17
  %22 = load ptr, ptr %8, align 8, !tbaa !852
  tail call fastcc void @register_new_assert_for(ptr noundef %0, ptr noundef %0, i32 noundef %20, ptr noundef %22, ptr noundef null, ptr noundef %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  br label %23

23:                                               ; preds = %15, %21, %17
  %24 = phi i32 [ %20, %17 ], [ %20, %21 ], [ %16, %15 ]
  %25 = phi i8 [ 0, %17 ], [ 1, %21 ], [ 0, %15 ]
  %26 = and i32 %24, -2
  %27 = icmp eq i32 %26, 98
  br i1 %27, label %28, label %186, !prof !1350

28:                                               ; preds = %23
  %29 = load ptr, ptr %8, align 8, !tbaa !852
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 23
  br i1 %32, label %33, label %186, !prof !1351

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !856
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 2097152
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %186, label %39, !prof !1352

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !856
  %42 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %41) #20, !range !862
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %60, label %44, !prof !1353

44:                                               ; preds = %39
  %45 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %41) #20, !range !1079
  %46 = icmp eq i32 %45, 63
  br i1 %46, label %47, label %60, !prof !1354

47:                                               ; preds = %44
  %48 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %41) #20
  %49 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %41) #20
  %50 = load i64, ptr %48, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %53, label %60, !prof !1354

53:                                               ; preds = %47
  %54 = load i64, ptr %49, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 23
  br i1 %56, label %57, label %60, !prof !1354

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %48, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !856
  br label %60

60:                                               ; preds = %47, %53, %57, %44, %39
  %61 = phi ptr [ %59, %57 ], [ %41, %53 ], [ %41, %47 ], [ %41, %44 ], [ %41, %39 ]
  %62 = phi ptr [ %49, %57 ], [ %49, %53 ], [ %49, %47 ], [ null, %44 ], [ null, %39 ]
  %63 = phi ptr [ %48, %57 ], [ %48, %53 ], [ %48, %47 ], [ null, %44 ], [ null, %39 ]
  %64 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %61) #20, !range !862
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %138, label %66, !prof !1354

66:                                               ; preds = %60
  %67 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %61) #20, !range !1079
  %68 = icmp eq i32 %67, 116
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %61) #20, !range !1079
  %71 = icmp eq i32 %70, 113
  br i1 %71, label %72, label %138

72:                                               ; preds = %69, %66
  %73 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %61) #20
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !856
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
  %85 = load ptr, ptr %84, align 8, !tbaa !856
  %86 = getelementptr inbounds %struct.tree_type, ptr %85, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = xor i32 %87, %82
  %89 = and i32 %88, 1023
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %138

91:                                               ; preds = %79
  %92 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %61) #20
  %93 = icmp eq ptr %92, null
  br i1 %93, label %138, label %94, !prof !1203

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
  %106 = load ptr, ptr %105, align 8, !tbaa !856
  %107 = load i64, ptr %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = and i32 %108, 65535
  %110 = add nsw i32 %109, -6
  %111 = icmp ult i32 %110, 3
  br i1 %111, label %112, label %138

112:                                              ; preds = %104
  %113 = tail call fastcc zeroext i8 @live_on_edge(ptr noundef %1, ptr noundef nonnull %92) #20, !range !862
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %138, label %115

115:                                              ; preds = %112
  %116 = tail call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %92) #20
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !856
  %121 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %120, ptr noundef nonnull %92) #21
  br i1 %99, label %125, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %119, align 8, !tbaa !856
  %124 = tail call ptr @build2_stat(i32 noundef 63, ptr noundef %123, ptr noundef %121, ptr noundef nonnull %62) #21
  br label %125

125:                                              ; preds = %122, %118
  %126 = phi ptr [ %124, %122 ], [ %121, %118 ]
  %127 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %125
  %130 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 18, i64 1, ptr nonnull %127)
  %131 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_generic_expr(ptr noundef %131, ptr noundef nonnull %92, i32 noundef 0) #21
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %133 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 6, i64 1, ptr %132)
  %134 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_generic_expr(ptr noundef %134, ptr noundef %126, i32 noundef 0) #21
  %135 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %136 = tail call i32 @fputc(i32 10, ptr %135)
  br label %137

137:                                              ; preds = %129, %125
  tail call fastcc void @register_new_assert_for(ptr noundef nonnull %92, ptr noundef %126, i32 noundef %24, ptr noundef nonnull %29, ptr noundef null, ptr noundef %1, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  br label %138

138:                                              ; preds = %60, %69, %79, %72, %104, %137, %115, %112, %100, %94, %91
  %139 = phi i8 [ %25, %115 ], [ 1, %137 ], [ %25, %112 ], [ %25, %100 ], [ %25, %94 ], [ %25, %91 ], [ %25, %104 ], [ %25, %72 ], [ %25, %79 ], [ %25, %69 ], [ %25, %60 ]
  %140 = icmp eq ptr %63, null
  br i1 %140, label %186, label %141, !prof !1353

141:                                              ; preds = %138
  %142 = load i64, ptr %63, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 141
  br i1 %144, label %145, label %186, !prof !1354

145:                                              ; preds = %141
  %146 = load i64, ptr %62, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 23
  br i1 %148, label %149, label %186, !prof !1354

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %151 = load ptr, ptr %150, align 8, !tbaa !856
  %152 = load i64, ptr %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = and i32 %153, 65535
  %155 = add nsw i32 %154, -6
  %156 = icmp ult i32 %155, 3
  br i1 %156, label %157, label %186, !prof !1355

157:                                              ; preds = %149
  %158 = tail call fastcc zeroext i8 @live_on_edge(ptr noundef %1, ptr noundef nonnull %63) #20, !range !862
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %186, label %160, !prof !1356

160:                                              ; preds = %157
  %161 = tail call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %63) #20
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %186, !prof !1357

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !856
  %166 = load ptr, ptr %150, align 8, !tbaa !856
  %167 = icmp eq ptr %165, %166
  br i1 %167, label %171, label %168, !prof !1358

168:                                              ; preds = %163
  %169 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %165, ptr noundef nonnull %63) #21
  %170 = load ptr, ptr %164, align 8, !tbaa !856
  br label %171

171:                                              ; preds = %163, %168
  %172 = phi ptr [ %170, %168 ], [ %165, %163 ]
  %173 = phi ptr [ %169, %168 ], [ %63, %163 ]
  %174 = tail call ptr @build2_stat(i32 noundef 63, ptr noundef %172, ptr noundef %173, ptr noundef nonnull %62) #21
  %175 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %176 = icmp eq ptr %175, null
  br i1 %176, label %185, label %177, !prof !1357

177:                                              ; preds = %171
  %178 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 18, i64 1, ptr nonnull %175)
  %179 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_generic_expr(ptr noundef %179, ptr noundef nonnull %63, i32 noundef 0) #21
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %181 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 6, i64 1, ptr %180)
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_generic_expr(ptr noundef %182, ptr noundef %174, i32 noundef 0) #21
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !852
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
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !1359 !PGOFuncName !1360 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1361

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) unnamed_addr #0 !prof !1362 !PGOFuncName !1363 {
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %101, !prof !1364

8:                                                ; preds = %4, %75
  %9 = phi i32 [ %76, %75 ], [ %1, %4 ]
  %10 = phi ptr [ %77, %75 ], [ %0, %4 ]
  %11 = phi i8 [ %78, %75 ], [ 0, %4 ]
  %12 = tail call fastcc zeroext i8 @has_single_use(ptr noundef nonnull %10) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18, !prof !1365

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !856
  %17 = tail call ptr @build_int_cst(ptr noundef %16, i64 noundef 0) #21
  tail call fastcc void @register_new_assert_for(ptr noundef nonnull %10, ptr noundef nonnull %10, i32 noundef %9, ptr noundef %17, ptr noundef null, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i8 [ 0, %8 ], [ 1, %14 ]
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !856
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %21) #20, !range !1036
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %24, label %101, !prof !1366

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1079
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !873
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %49, !prof !1367

30:                                               ; preds = %24
  %31 = icmp eq i32 %9, 101
  %32 = zext i1 %31 to i8
  %33 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %34 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %21) #20
  %35 = load i64, ptr %33, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  br i1 %37, label %38, label %41, !prof !1368

38:                                               ; preds = %30
  %39 = tail call fastcc zeroext i8 @register_edge_assert_for_2(ptr noundef nonnull %33, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %25, ptr noundef nonnull %33, ptr noundef %34, i8 noundef zeroext %32) #20, !range !862
  %40 = or i8 %39, %19
  br label %41

41:                                               ; preds = %38, %30
  %42 = phi i8 [ %40, %38 ], [ %19, %30 ]
  %43 = load i64, ptr %34, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %46, label %101, !prof !1369

46:                                               ; preds = %41
  %47 = tail call fastcc zeroext i8 @register_edge_assert_for_2(ptr noundef nonnull %34, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3, i32 noundef %25, ptr noundef nonnull %33, ptr noundef nonnull %34, i8 noundef zeroext %32) #20, !range !862
  %48 = or i8 %47, %42
  br label %101

49:                                               ; preds = %24
  switch i32 %9, label %72 [
    i32 102, label %50
    i32 101, label %56
  ], !prof !1370

50:                                               ; preds = %49
  %51 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1079
  %52 = icmp eq i32 %51, 93
  br i1 %52, label %64, label %53, !prof !1371

53:                                               ; preds = %50
  %54 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1079
  %55 = icmp eq i32 %54, 89
  br i1 %55, label %64, label %72, !prof !1371

56:                                               ; preds = %49
  %57 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1079
  %58 = icmp eq i32 %57, 94
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1079
  %61 = icmp eq i32 %60, 87
  br i1 %61, label %64, label %72

62:                                               ; preds = %96, %85, %64, %101
  %63 = phi i8 [ %104, %101 ], [ %71, %64 ], [ %89, %85 ], [ %100, %96 ]
  ret i8 %63

64:                                               ; preds = %59, %56, %53, %50
  %65 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %66 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %65, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !862
  %67 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %21) #20
  %68 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %67, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !862
  %69 = or i8 %66, %68
  %70 = or i8 %69, %11
  %71 = or i8 %70, %19
  br label %62

72:                                               ; preds = %53, %49, %59
  %73 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1079
  %74 = icmp eq i32 %73, 96
  br i1 %74, label %75, label %82, !prof !1371

75:                                               ; preds = %72
  %76 = tail call i32 @invert_tree_comparison(i32 noundef %9, i8 noundef zeroext 0) #21
  %77 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %78 = or i8 %19, %11
  %79 = load i64, ptr %77, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 141
  br i1 %81, label %8, label %101, !prof !1372

82:                                               ; preds = %72
  %83 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1079
  %84 = icmp eq i32 %83, 141
  br i1 %84, label %85, label %90, !prof !1371

85:                                               ; preds = %82
  %86 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %87 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %86, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !862
  %88 = or i8 %11, %87
  %89 = or i8 %88, %19
  br label %62

90:                                               ; preds = %82
  %91 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1079
  %92 = icmp eq i32 %91, 116
  br i1 %92, label %96, label %93, !prof !1373

93:                                               ; preds = %90
  %94 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %21) #20, !range !1079
  %95 = icmp eq i32 %94, 113
  br i1 %95, label %96, label %101, !prof !1374

96:                                               ; preds = %93, %90
  %97 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %98 = tail call fastcc zeroext i8 @register_edge_assert_for_1(ptr noundef %97, i32 noundef %9, ptr noundef %2, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !862
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
define internal fastcc zeroext i8 @live_on_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 !prof !1375 !PGOFuncName !1376 {
  %3 = load ptr, ptr @live, align 8, !tbaa !852
  %4 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !936
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !931
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %3, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !852
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12, !prof !1377

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !856
  %15 = lshr i32 %14, 6
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 3, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !904
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
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #0 !prof !1378 !PGOFuncName !1379 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !862
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !1380

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1079
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
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !1381 !PGOFuncName !1382 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !1383

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #20
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1079
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !1384

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !856
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !856
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !852
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !852
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
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !844 !PGOFuncName !1385 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !856
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !856
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !856
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !1386 !PGOFuncName !1387 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1388 !PGOFuncName !1389 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !856
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1198 !PGOFuncName !1390 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4, !prof !1150

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3162, ptr noundef nonnull @.str.28) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 !prof !1391 !PGOFuncName !1392 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @make_tree_vec_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1393 !PGOFuncName !1394 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6, !prof !1395

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
define internal i32 @compare_case_labels(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !1396 !PGOFuncName !1397 {
  %3 = load ptr, ptr %0, align 8, !tbaa !852
  %4 = load ptr, ptr %1, align 8, !tbaa !852
  %5 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %6 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !856
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !856
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !856
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !856
  %15 = icmp ult i32 %9, %14
  br i1 %15, label %26, label %16, !prof !1398

16:                                               ; preds = %2
  %17 = icmp eq i32 %9, %14
  br i1 %17, label %18, label %26, !prof !1399

18:                                               ; preds = %16
  %19 = load ptr, ptr %5, align 8, !tbaa !856
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21, !prof !1400

21:                                               ; preds = %18
  %22 = load ptr, ptr %10, align 8, !tbaa !856
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !1400

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
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !1401 !PGOFuncName !1402 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1403
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1404

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !856
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1405

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1406
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !1214 !PGOFuncName !1408 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1409

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1410
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1412 !PGOFuncName !1413 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6, !prof !1414

6:                                                ; preds = %3
  %7 = and i32 %2, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 747, ptr noundef nonnull @.str.28) #21
  br label %10

10:                                               ; preds = %3, %6, %9
  %11 = and i32 %2, 10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !1415

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !1281
  br label %24

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #20
  %17 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !1281
  %18 = icmp eq ptr %16, null
  br i1 %18, label %24, label %19, !prof !1416

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !1417

22:                                               ; preds = %19
  %23 = load ptr, ptr %16, align 8, !tbaa !1285
  store ptr %23, ptr %17, align 8, !tbaa !1281
  br label %24

24:                                               ; preds = %13, %22, %19, %15
  %25 = and i32 %2, 5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29, !prof !1418

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !1277
  br label %40

29:                                               ; preds = %24
  %30 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #20
  %31 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !1277
  %32 = icmp ne i32 %4, 0
  %33 = icmp eq ptr %30, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %40, label %35, !prof !1419

35:                                               ; preds = %29
  %36 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #20
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !1420

38:                                               ; preds = %35
  %39 = load ptr, ptr %30, align 8, !tbaa !1279
  store ptr %39, ptr %31, align 8, !tbaa !1277
  br label %40

40:                                               ; preds = %27, %38, %35, %29
  store i8 0, ptr %0, align 8, !tbaa !1228
  %41 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1421 !PGOFuncName !1422 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !862
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1423

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !856
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1424 !PGOFuncName !1425 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !862
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1426

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !856
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1427 !PGOFuncName !1428 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !862
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1429

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !856
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1430 !PGOFuncName !1431 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !862
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1432

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !856
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1433 !PGOFuncName !1434 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
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
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1435 !PGOFuncName !1436 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !856
  ret ptr %3
}

; Function Attrs: optsize
declare void @count_uses_and_derefs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1244 !PGOFuncName !1437 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1438

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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #13 !prof !1439 !PGOFuncName !1440 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !856
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
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1441 !PGOFuncName !1442 {
  %2 = load ptr, ptr %0, align 8, !tbaa !852
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1443 !PGOFuncName !1444 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !856
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #10 !prof !1289 !PGOFuncName !1445 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !1228
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1446 !PGOFuncName !1447 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !856
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1448 !PGOFuncName !1449 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !1448 !PGOFuncName !1450 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !856
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1451

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 3103, ptr noundef nonnull @.str.28) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1174 !PGOFuncName !1452 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1453

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1177 !PGOFuncName !1454 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1179

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #20
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1455 !PGOFuncName !1456 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1457

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 687, ptr noundef nonnull @.str.28) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !852
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1458 !PGOFuncName !1459 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !852
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @process_assert_insertions_for(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1460 !PGOFuncName !1461 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !1264
  %7 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !938
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %46, label %10, !prof !1081

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !937
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !852
  %14 = tail call ptr @build2_stat(i32 noundef %12, ptr noundef %13, ptr noundef %6, ptr noundef %8) #21
  %15 = tail call fastcc ptr @build_assert_expr_for(ptr noundef %14, ptr noundef %0) #20
  %16 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !933
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !1462

19:                                               ; preds = %10
  tail call void @gsi_insert_on_edge(ptr noundef nonnull %17, ptr noundef %15) #21
  br label %46

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.assert_locus_d, ptr %1, i64 0, i32 2
  %22 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %21) #20
  %23 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %22) #21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26, !prof !1463

25:                                               ; preds = %20
  tail call void @gsi_insert_after(ptr noundef nonnull %21, ptr noundef %15, i32 noundef 1) #21
  br label %46

26:                                               ; preds = %20
  %27 = load ptr, ptr %1, align 8, !tbaa !928
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 1
  %29 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %28) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !1116
  %30 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %29, ptr %30, align 8, !tbaa.struct !1117
  %31 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %29, ptr noundef nonnull %4) #20, !range !862
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %26, %40
  %34 = load ptr, ptr %4, align 8, !tbaa !852
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !1047
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
  %43 = call fastcc zeroext i8 @ei_cond(i32 %41, ptr %42, ptr noundef nonnull %4) #20, !range !862
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %33, !llvm.loop !1464

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
define internal fastcc ptr @build_assert_expr_for(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1460 !PGOFuncName !1465 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6, !prof !1466

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3748, ptr noundef nonnull @.str.28) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call ptr @duplicate_ssa_name(ptr noundef nonnull %1, ptr noundef null) #21
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !873
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %19, !prof !1466

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !856
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
  %23 = load ptr, ptr %22, align 8, !tbaa !856
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3760, ptr noundef nonnull @.str.28) #21
  br label %26

26:                                               ; preds = %21, %25
  %27 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !852
  %28 = tail call ptr @gimple_build_assign_stat(ptr noundef %8, ptr noundef %27) #21
  br label %36

29:                                               ; preds = %19
  %30 = icmp eq ptr %1, %0
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3766, ptr noundef nonnull @.str.28) #21
  br label %32

32:                                               ; preds = %29, %31
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !852
  %34 = tail call ptr @gimple_build_assign_stat(ptr noundef %8, ptr noundef %33) #21
  br label %36

35:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3770, ptr noundef nonnull @.str.28) #21
  br label %36

36:                                               ; preds = %26, %35, %32, %14
  %37 = phi ptr [ %18, %14 ], [ %28, %26 ], [ %34, %32 ], [ undef, %35 ]
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %8, i64 0, i32 2
  store ptr %37, ptr %38, align 8, !tbaa !856
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
define internal fastcc zeroext i8 @stmt_interesting_for_vrp(ptr noundef %0) unnamed_addr #0 !prof !1467 !PGOFuncName !1468 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %3 = icmp eq i32 %2, 16
  br i1 %3, label %4, label %16, !prof !1469

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  %6 = tail call zeroext i8 @is_gimple_reg(ptr noundef %5) #21
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8, !prof !1013

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !856
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  %14 = add i16 %13, -6
  %15 = icmp ult i16 %14, 7
  br i1 %15, label %55, label %16

16:                                               ; preds = %55, %8, %4, %1
  %17 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !862
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %22, !prof !1470

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !862
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %48, label %22, !prof !1471

22:                                               ; preds = %19, %16
  %23 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25, !prof !1472

25:                                               ; preds = %22
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %54, !prof !1473

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !856
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %54 [
    i16 6, label %34
    i16 7, label %34
    i16 8, label %34
    i16 10, label %34
    i16 12, label %34
  ], !prof !1474

34:                                               ; preds = %29, %29, %29, %29, %29
  %35 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !862
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %45, label %37, !prof !1475

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40, !prof !1476

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %41, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !856
  %44 = icmp ult i32 %43, 2
  br i1 %44, label %60, label %45, !prof !1476

45:                                               ; preds = %40, %37, %34
  %46 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #20
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %54, !prof !1477

48:                                               ; preds = %19
  %49 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
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
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #13 !prof !1478 !PGOFuncName !1479 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @prop_set_simulate_again(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 !prof !1480 !PGOFuncName !1481 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0, i8 noundef zeroext %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1482 !PGOFuncName !1483 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !1386 !PGOFuncName !1484 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !1485

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !856
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #7 !prof !1480 !PGOFuncName !1486 {
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
define internal fastcc i32 @vrp_visit_assignment_or_call(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !1487 !PGOFuncName !1488 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca %struct.value_range_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %6 = tail call ptr @gimple_get_lhs(ptr noundef %0) #21
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %56, !prof !1034

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !856
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -6
  %17 = icmp ult i32 %16, 3
  br i1 %17, label %18, label %26, !prof !1489

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !856
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22, !prof !1490

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !856
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28, !prof !1490

26:                                               ; preds = %10, %22, %18
  %27 = trunc i64 %13 to i16
  switch i16 %27, label %56 [
    i16 10, label %28
    i16 12, label %28
  ], !prof !1491

28:                                               ; preds = %26, %26, %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %29 = icmp eq i32 %5, 8
  br i1 %29, label %30, label %31, !prof !1492

30:                                               ; preds = %28
  call fastcc void @extract_range_basic(ptr noundef nonnull %4, ptr noundef %0) #20
  br label %32

31:                                               ; preds = %28
  call fastcc void @extract_range_from_assignment(ptr noundef nonnull %4, ptr noundef %0) #20
  br label %32

32:                                               ; preds = %31, %30
  %33 = call fastcc zeroext i8 @update_value_range(ptr noundef nonnull %6, ptr noundef nonnull %4) #20, !range !862
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %54, label %35, !prof !1493

35:                                               ; preds = %32
  store ptr %6, ptr %1, align 8, !tbaa !852
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38, !prof !1494

38:                                               ; preds = %35
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 20, i64 1, ptr nonnull %36)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_generic_expr(ptr noundef %44, ptr noundef nonnull %6, i32 noundef 0) #21
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %46 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %45)
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !852
  call void @dump_value_range(ptr noundef %47, ptr noundef nonnull %4) #20
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %49 = call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %48)
  br label %50

50:                                               ; preds = %42, %38, %35
  %51 = load i32, ptr %4, align 8, !tbaa !845
  %52 = icmp eq i32 %51, 3
  %53 = select i1 %52, i32 2, i32 1, !prof !1495
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
  br i1 %65, label %60, label %66, !llvm.loop !1496

66:                                               ; preds = %60, %56, %54
  %67 = phi i32 [ %55, %54 ], [ 2, %56 ], [ 2, %60 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vrp_visit_cond_stmt(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1497 !PGOFuncName !1498 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store ptr null, ptr %1, align 8, !tbaa !852
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %6 = icmp eq ptr %5, null
  br i1 %6, label %39, label %7, !prof !1499

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #22
  %12 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 38, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %15 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 19, i64 1, ptr %14)
  %16 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 1) #20
  %17 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %11, %19
  %20 = phi ptr [ %33, %19 ], [ %16, %11 ]
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %22 = tail call i32 @fputc(i32 9, ptr %21)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_generic_expr(ptr noundef %23, ptr noundef %20, i32 noundef 0) #21
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %25 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 2, i64 1, ptr %24)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %27 = load ptr, ptr @vr_value, align 8, !tbaa !852
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !856
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !852
  tail call void @dump_value_range(ptr noundef %26, ptr noundef %32) #20
  %33 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #20
  %34 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #20
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %19, label %36, !llvm.loop !1500

36:                                               ; preds = %19, %11
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %38 = tail call i32 @fputc(i32 10, ptr %37)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #22
  br label %39

39:                                               ; preds = %36, %7, %2
  store i8 0, ptr %3, align 1, !tbaa !856
  %40 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !1079
  %41 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %42 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %43 = call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %40, ptr noundef %41, ptr noundef %42, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef null) #20
  %44 = icmp eq ptr %43, null
  br i1 %44, label %60, label %45, !prof !1501

45:                                               ; preds = %39
  %46 = load i8, ptr %3, align 1, !tbaa !856
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51, !prof !1502

48:                                               ; preds = %45
  %49 = call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %50 = call ptr @find_taken_edge(ptr noundef %49, ptr noundef nonnull %43) #21
  store ptr %50, ptr %1, align 8, !tbaa !852
  br label %60

51:                                               ; preds = %45
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i64 @fwrite(ptr nonnull @.str.41, i64 83, i64 1, ptr nonnull %52)
  br label %60

60:                                               ; preds = %54, %58, %48, %39
  %61 = phi ptr [ null, %54 ], [ null, %58 ], [ null, %39 ], [ %43, %48 ]
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %63 = icmp eq ptr %62, null
  br i1 %63, label %75, label %64, !prof !1503

64:                                               ; preds = %60
  %65 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %66 = and i32 %65, 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = call i64 @fwrite(ptr nonnull @.str.42, i64 25, i64 1, ptr nonnull %62)
  %70 = icmp eq ptr %61, null
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !852
  br i1 %70, label %72, label %74

72:                                               ; preds = %68
  %73 = call i64 @fwrite(ptr nonnull @.str.43, i64 11, i64 1, ptr %71)
  br label %75

74:                                               ; preds = %68
  call void @print_generic_stmt(ptr noundef %71, ptr noundef nonnull %61, i32 noundef 0) #21
  br label %75

75:                                               ; preds = %51, %72, %74, %64, %60
  %76 = load ptr, ptr %1, align 8, !tbaa !852
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret i32 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @vrp_visit_switch_stmt(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !1198 !PGOFuncName !1504 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !tbaa !904
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !tbaa !904
  store ptr null, ptr %1, align 8, !tbaa !852
  %5 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %106, !prof !1150

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %5) #20
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13, !prof !1150

13:                                               ; preds = %9
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 41, i64 1, ptr nonnull %11)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_generic_expr(ptr noundef %19, ptr noundef nonnull %5, i32 noundef 0) #21
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %21 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 18, i64 1, ptr %20)
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @dump_value_range(ptr noundef %22, ptr noundef %10) #20
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %24 = tail call i32 @fputc(i32 10, ptr %23)
  br label %25

25:                                               ; preds = %17, %13, %9
  %26 = load i32, ptr %10, align 8, !tbaa !845
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %106, !prof !1505

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %10) #20, !range !862
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %106

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.value_range_d, ptr %10, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !851
  %34 = getelementptr inbounds %struct.value_range_d, ptr %10, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !866
  %36 = call fastcc zeroext i8 @find_case_label_range(ptr noundef %0, ptr noundef %33, ptr noundef %35, ptr noundef nonnull %3, ptr noundef nonnull %4) #20, !range !862
  %37 = xor i8 %36, 1
  %38 = load i64, ptr %4, align 8, !tbaa !904
  %39 = load i64, ptr %3, align 8, !tbaa !904
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
  %53 = load ptr, ptr %52, align 8, !tbaa !856
  %54 = getelementptr inbounds %struct.tree_exp, ptr %48, i64 1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !856
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %59 = icmp eq ptr %58, null
  br i1 %59, label %106, label %60

60:                                               ; preds = %57
  %61 = load i32, ptr @dump_flags, align 4, !tbaa !873
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
  %76 = load ptr, ptr %75, align 8, !tbaa !856
  %77 = load ptr, ptr %67, align 8, !tbaa !856
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %68, label %79, !llvm.loop !1506

79:                                               ; preds = %72
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %81 = icmp eq ptr %80, null
  br i1 %81, label %106, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %84 = and i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %82
  %87 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 42, i64 1, ptr nonnull %80)
  br label %106

88:                                               ; preds = %68, %44
  %89 = phi ptr [ %45, %44 ], [ %48, %68 ]
  %90 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %91 = load ptr, ptr @cfun, align 8, !tbaa !852
  %92 = getelementptr inbounds %struct.tree_exp, ptr %89, i64 1, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !856
  %94 = tail call ptr @label_to_block_fn(ptr noundef %91, ptr noundef %93) #21
  %95 = tail call ptr @find_edge(ptr noundef %90, ptr noundef %94) #21
  store ptr %95, ptr %1, align 8, !tbaa !852
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %97 = icmp eq ptr %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %88
  %99 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %100 = and i32 %99, 8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 20, i64 1, ptr nonnull %96)
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %105 = load ptr, ptr %92, align 8, !tbaa !856
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
define internal fastcc void @extract_range_basic(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1507 !PGOFuncName !1508 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store i8 0, ptr %3, align 1, !tbaa !856
  %4 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -6
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %20, !prof !1509

10:                                               ; preds = %2
  %11 = call fastcc zeroext i8 @gimple_stmt_nonnegative_warnv_p(ptr noundef %1, ptr noundef nonnull %3) #20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13, !prof !1510

13:                                               ; preds = %10
  %14 = load i8, ptr %3, align 1, !tbaa !856
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18, !prof !1511

16:                                               ; preds = %13
  %17 = call fastcc zeroext i8 @stmt_overflow_infinity(ptr noundef %1) #20, !range !862
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i8 [ 1, %13 ], [ %17, %16 ]
  call fastcc void @set_value_range_to_nonnegative(ptr noundef %0, ptr noundef nonnull %4, i8 noundef zeroext %19) #20
  br label %28

20:                                               ; preds = %2, %10
  %21 = call fastcc zeroext i8 @vrp_stmt_computes_nonzero(ptr noundef %1, ptr noundef nonnull %3) #20, !range !862
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %27, label %23, !prof !1512

23:                                               ; preds = %20
  %24 = load i8, ptr %3, align 1, !tbaa !856
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %27, !prof !1513

26:                                               ; preds = %23
  call fastcc void @set_value_range_to_nonnull(ptr noundef %0, ptr noundef nonnull %4) #20
  br label %28

27:                                               ; preds = %23, %20
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %28

28:                                               ; preds = %26, %27, %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_assignment(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1487 !PGOFuncName !1514 {
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !1079
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %9 [
    i16 148, label %5
    i16 141, label %7
  ], !prof !1515

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
  %12 = load i32, ptr %11, align 4, !tbaa !873
  %13 = icmp eq i32 %12, 7
  %14 = add nsw i32 %3, -93
  %15 = icmp ult i32 %14, 3
  %16 = or i1 %15, %13
  br i1 %16, label %17, label %22, !prof !1516

17:                                               ; preds = %9
  %18 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !1079
  %19 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %20 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %21 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_binary_expr(ptr noundef %0, i32 noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21) #20
  br label %49

22:                                               ; preds = %9
  %23 = icmp eq i32 %12, 6
  br i1 %23, label %24, label %28, !prof !1517

24:                                               ; preds = %22
  %25 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !1079
  %26 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %27 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_unary_expr(ptr noundef %0, i32 noundef %25, ptr noundef %26, ptr noundef %27) #20
  br label %49

28:                                               ; preds = %22
  %29 = icmp eq i32 %3, 56
  br i1 %29, label %30, label %32, !prof !1518

30:                                               ; preds = %28
  %31 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_cond_expr(ptr noundef %0, ptr noundef %31) #20
  br label %49

32:                                               ; preds = %28
  %33 = icmp eq i32 %12, 5
  br i1 %33, label %34, label %39, !prof !1519

34:                                               ; preds = %32
  %35 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !1079
  %36 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #20
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %38 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  tail call fastcc void @extract_range_from_comparison(ptr noundef %0, i32 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38) #20
  br label %49

39:                                               ; preds = %32
  %40 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %3) #20, !range !1036
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %48, !prof !1513

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %44 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %43) #21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %48, label %46, !prof !1513

46:                                               ; preds = %42
  %47 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  tail call fastcc void @set_value_range_to_value(ptr noundef %0, ptr noundef %47, ptr noundef null) #20
  br label %49

48:                                               ; preds = %42, %39
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %49

49:                                               ; preds = %7, %24, %34, %48, %46, %30, %17, %5
  %50 = load i32, ptr %0, align 8, !tbaa !845
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %53, !prof !1520

52:                                               ; preds = %49
  tail call fastcc void @extract_range_basic(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %53

53:                                               ; preds = %52, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @update_value_range(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1521 !PGOFuncName !1522 {
  %3 = tail call fastcc ptr @get_value_range(ptr noundef %0) #20
  %4 = load i32, ptr %3, align 8, !tbaa !845
  %5 = load i32, ptr %1, align 8, !tbaa !845
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %28, !prof !1523

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !851
  %10 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !851
  %12 = tail call fastcc zeroext i8 @vrp_operand_equal_p(ptr noundef %9, ptr noundef %11) #20, !range !862
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %28, label %14, !prof !1524

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !866
  %17 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !866
  %19 = tail call fastcc zeroext i8 @vrp_operand_equal_p(ptr noundef %16, ptr noundef %18) #20, !range !862
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21, !prof !1525

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !858
  %24 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !858
  %26 = tail call fastcc zeroext i8 @vrp_bitmap_equal_p(ptr noundef %23, ptr noundef %25) #20, !range !862
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %36, !prof !1526

28:                                               ; preds = %2, %7, %14, %21
  %29 = load i32, ptr %1, align 8, !tbaa !845
  %30 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !851
  %32 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !866
  %34 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %3, i32 noundef %29, ptr noundef %31, ptr noundef %33, ptr noundef %35) #20
  br label %36

36:                                               ; preds = %28, %21
  %37 = phi i8 [ 1, %28 ], [ 0, %21 ]
  %38 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !858
  tail call void @bitmap_obstack_free(ptr noundef %39) #21
  store ptr null, ptr %38, align 8, !tbaa !858
  ret i8 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_stmt_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1527 !PGOFuncName !1528 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %9 [
    i8 6, label %5
    i8 8, label %7
  ], !prof !1529

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
define internal fastcc void @set_value_range_to_nonnegative(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !1530 !PGOFuncName !1531 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %12, label %5, !prof !1511

5:                                                ; preds = %3
  %6 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %1) #20, !range !862
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
  %15 = load ptr, ptr %14, align 8, !tbaa !856
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi ptr [ %10, %9 ], [ %13, %12 ]
  %18 = phi ptr [ %11, %9 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %17, ptr noundef %18, ptr noundef %20) #20
  br label %21

21:                                               ; preds = %16, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !1530 !PGOFuncName !1532 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !862
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %11, label %4, !prof !1533

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1079
  %6 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %5) #20, !range !1036
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %11, !prof !1533

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %10 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %9) #20, !range !862
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi i8 [ %10, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vrp_stmt_computes_nonzero(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1534 !PGOFuncName !1535 {
  %3 = tail call fastcc zeroext i8 @gimple_stmt_nonzero_warnv_p(ptr noundef %0, ptr noundef %1) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %32, !prof !1536

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !862
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8, !prof !1537

8:                                                ; preds = %5
  %9 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1079
  %10 = icmp eq i32 %9, 121
  br i1 %10, label %11, label %32, !prof !1538

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %13 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !856
  %15 = tail call ptr @get_base_address(ptr noundef %14) #21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17, !prof !1539

17:                                               ; preds = %11
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 47
  br i1 %20, label %21, label %31, !prof !1513

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !856
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %26, label %27, label %31, !prof !1513

27:                                               ; preds = %21
  %28 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %23) #20
  %29 = tail call fastcc zeroext i8 @range_is_nonnull(ptr noundef %28) #20, !range !862
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %11, %17, %21, %27
  br label %32

32:                                               ; preds = %5, %8, %31, %27, %2
  %33 = phi i8 [ 1, %2 ], [ 1, %27 ], [ 0, %31 ], [ 0, %8 ], [ 0, %5 ]
  ret i8 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1527 !PGOFuncName !1540 {
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1079
  %4 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %3) #20, !range !1036
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %21 [
    i8 2, label %6
    i8 1, label %11
    i8 3, label %17
    i8 0, label %20
  ], !prof !1541

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1079
  %8 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %10 = tail call zeroext i8 @tree_unary_nonnegative_warnv_p(i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %1) #21
  br label %22

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1079
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
define internal fastcc zeroext i8 @gimple_call_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !844 !PGOFuncName !1542 {
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
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !844 !PGOFuncName !1543 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !844 !PGOFuncName !1544 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #20
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @tree_call_nonnegative_warnv_p(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @supports_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !844 !PGOFuncName !1545 {
  %2 = tail call fastcc ptr @vrp_val_min(ptr noundef %0) #20
  %3 = tail call fastcc ptr @vrp_val_max(ptr noundef %0) #20
  %4 = icmp eq ptr %2, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !873
  %10 = icmp eq i32 %9, 1
  %11 = icmp ne ptr %3, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %20

13:                                               ; preds = %5
  %14 = load i64, ptr %3, align 8
  %15 = and i64 %14, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !873
  %18 = icmp eq i32 %17, 1
  %19 = zext i1 %18 to i8
  br label %20

20:                                               ; preds = %13, %5, %1
  %21 = phi i8 [ 0, %5 ], [ 0, %1 ], [ %19, %13 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @positive_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !844 !PGOFuncName !1546 {
  %2 = tail call fastcc ptr @vrp_val_max(ptr noundef %0) #20
  %3 = tail call fastcc ptr @make_overflow_infinity(ptr noundef %2) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !844 !PGOFuncName !1547 {
  %2 = tail call ptr @copy_node_stat(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = or i64 %3, 134217728
  store i64 %4, ptr %2, align 8
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !1548 !PGOFuncName !1549 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !856
  %4 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %3) #20, !range !862
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6, !prof !1550

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !873
  %11 = icmp ne i32 %10, 1
  %12 = and i64 %7, 134217728
  %13 = icmp eq i64 %12, 0
  %14 = or i1 %11, %13
  br i1 %14, label %20, label %15, !prof !1551

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %0) #20, !range !862
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %0) #20, !range !862
  br label %20

20:                                               ; preds = %15, %18, %6, %1
  %21 = phi i8 [ 0, %6 ], [ 0, %1 ], [ 1, %15 ], [ %19, %18 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_stmt_nonzero_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1534 !PGOFuncName !1552 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %9 [
    i8 6, label %5
    i8 8, label %7
  ], !prof !1553

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
define internal fastcc zeroext i8 @range_is_nonnull(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !963 !PGOFuncName !1554 {
  %2 = load i32, ptr %0, align 8, !tbaa !845
  %3 = icmp eq i32 %2, 2
  br i1 %3, label %4, label %15, !prof !1513

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !851
  %7 = tail call i32 @integer_zerop(ptr noundef %6) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !prof !1539

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !866
  %12 = tail call i32 @integer_zerop(ptr noundef %11) #21
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %9, %4, %1
  %16 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %14, %9 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_nonzero_warnv_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1534 !PGOFuncName !1555 {
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1079
  %4 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %3) #20, !range !1036
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %21 [
    i8 2, label %6
    i8 1, label %11
    i8 3, label %17
    i8 0, label %20
  ], !prof !1556

6:                                                ; preds = %2
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1079
  %8 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #20
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %10 = tail call zeroext i8 @tree_unary_nonzero_warnv_p(i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %1) #21
  br label %22

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1079
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
define internal fastcc void @extract_range_from_assert(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1557 !PGOFuncName !1558 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !856
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !856
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !873
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %13, label %12, !prof !1559

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1410, ptr noundef nonnull @.str.28) #21
  br label %13

13:                                               ; preds = %2, %12
  %14 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !856
  %16 = icmp eq ptr %4, %15
  br i1 %16, label %20, label %17, !prof !1560

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %25 [
    i16 63, label %20
    i16 116, label %20
  ], !prof !1561

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
  %31 = load ptr, ptr %30, align 8, !tbaa !856
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi ptr [ %15, %20 ], [ %31, %25 ]
  %34 = phi i32 [ %23, %20 ], [ %29, %25 ]
  %35 = phi ptr [ %24, %20 ], [ %14, %25 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !856
  %37 = tail call fastcc ptr @avoid_overflow_infinity(ptr noundef %36) #20
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !856
  %40 = icmp eq ptr %37, %4
  br i1 %40, label %41, label %42, !prof !1562

41:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1436, ptr noundef nonnull @.str.28) #21
  br label %42

42:                                               ; preds = %32, %41
  %43 = load i64, ptr %39, align 8
  %44 = trunc i64 %43 to i16
  switch i16 %44, label %49 [
    i16 10, label %45
    i16 12, label %45
  ], !prof !1563

45:                                               ; preds = %42, %42
  %46 = add i32 %34, -101
  %47 = icmp ult i32 %46, 2
  br i1 %47, label %49, label %48, !prof !1564

48:                                               ; preds = %45
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %422

49:                                               ; preds = %45, %42
  %50 = load i64, ptr %37, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %53, label %62, !prof !1562

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %37) #20
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56, !prof !1203

56:                                               ; preds = %53
  %57 = load i32, ptr %54, align 8, !tbaa !845
  switch i32 %57, label %58 [
    i32 0, label %61
    i32 3, label %61
  ]

58:                                               ; preds = %56
  %59 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %54) #20, !range !862
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56, %56, %58
  br label %62

62:                                               ; preds = %49, %61, %58, %53
  %63 = phi ptr [ null, %61 ], [ %54, %58 ], [ null, %53 ], [ null, %49 ]
  %64 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !858
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67, !prof !1559

67:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1463, ptr noundef nonnull @.str.28) #21
  br label %68

68:                                               ; preds = %62, %67
  tail call fastcc void @add_equivalence(ptr noundef nonnull %64, ptr noundef %4) #20
  %69 = load i64, ptr %33, align 8
  %70 = trunc i64 %69 to i16
  switch i16 %70, label %106 [
    i16 116, label %71
    i16 63, label %71
  ], !prof !1565

71:                                               ; preds = %68, %68
  %72 = and i64 %69, 65535
  %73 = icmp eq i64 %72, 63
  br i1 %73, label %74, label %81, !prof !1357

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.tree_exp, ptr %33, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !856
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !856
  %79 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 79, ptr noundef %78, ptr noundef %76) #21
  %80 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef nonnull %37, ptr noundef %79, i32 noundef 0) #21
  br label %85

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !856
  %84 = tail call ptr @build_int_cst(ptr noundef %83, i64 noundef 0) #21
  br label %85

85:                                               ; preds = %81, %74
  %86 = phi ptr [ %80, %74 ], [ %37, %81 ]
  %87 = phi ptr [ %79, %74 ], [ %84, %81 ]
  %88 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !856
  %90 = getelementptr inbounds %struct.tree_int_cst, ptr %87, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !856
  %92 = getelementptr inbounds %struct.tree_int_cst, ptr %87, i64 0, i32 1, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !856
  %94 = tail call ptr @force_fit_type_double(ptr noundef %89, i64 noundef %91, i64 noundef %93, i32 noundef 0, i8 noundef zeroext 0) #21
  %95 = load ptr, ptr %88, align 8, !tbaa !856
  %96 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !856
  %98 = getelementptr inbounds %struct.tree_int_cst, ptr %86, i64 0, i32 1, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !856
  %100 = tail call ptr @force_fit_type_double(ptr noundef %95, i64 noundef %97, i64 noundef %99, i32 noundef 0, i8 noundef zeroext 0) #21
  switch i32 %34, label %105 [
    i32 98, label %101
    i32 99, label %103
  ], !prof !1566

101:                                              ; preds = %85
  %102 = load ptr, ptr %64, align 8, !tbaa !858
  tail call fastcc void @set_and_canonicalize_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %94, ptr noundef %100, ptr noundef %102) #20
  br label %247

103:                                              ; preds = %85
  %104 = load ptr, ptr %64, align 8, !tbaa !858
  tail call fastcc void @set_and_canonicalize_value_range(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %94, ptr noundef %100, ptr noundef %104) #20
  br label %247

105:                                              ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1511, ptr noundef nonnull @.str.28) #21
  br label %247

106:                                              ; preds = %68
  switch i32 %34, label %158 [
    i32 101, label %107
    i32 102, label %124
  ], !prof !1567

107:                                              ; preds = %106
  %108 = icmp eq ptr %63, null
  br i1 %108, label %115, label %109, !prof !1568

109:                                              ; preds = %107
  %110 = load i32, ptr %63, align 8, !tbaa !845
  %111 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !851
  %113 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !866
  br label %115

115:                                              ; preds = %107, %109
  %116 = phi ptr [ %114, %109 ], [ %37, %107 ]
  %117 = phi ptr [ %112, %109 ], [ %37, %107 ]
  %118 = phi i32 [ %110, %109 ], [ 1, %107 ]
  %119 = load ptr, ptr %64, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef %118, ptr noundef %117, ptr noundef %116, ptr noundef %119) #20
  %120 = load i64, ptr %37, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 141
  br i1 %122, label %123, label %247, !prof !1569

123:                                              ; preds = %115
  tail call fastcc void @add_equivalence(ptr noundef nonnull %64, ptr noundef nonnull %37) #20
  br label %247

124:                                              ; preds = %106
  %125 = icmp eq ptr %63, null
  br i1 %125, label %139, label %126, !prof !1570

126:                                              ; preds = %124
  %127 = load i32, ptr %63, align 8, !tbaa !845
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !851
  %132 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !866
  %134 = tail call fastcc i32 @compare_values(ptr noundef %131, ptr noundef %133) #20
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load ptr, ptr %130, align 8, !tbaa !851
  %138 = load ptr, ptr %132, align 8, !tbaa !866
  br label %139

139:                                              ; preds = %124, %126, %129, %136
  %140 = phi ptr [ %138, %136 ], [ %37, %129 ], [ %37, %126 ], [ %37, %124 ]
  %141 = phi ptr [ %137, %136 ], [ %37, %129 ], [ %37, %126 ], [ %37, %124 ]
  %142 = load i64, ptr %39, align 8
  %143 = trunc i64 %142 to i32
  %144 = and i32 %143, 65535
  %145 = add nsw i32 %144, -6
  %146 = icmp ult i32 %145, 3
  br i1 %146, label %147, label %154, !prof !1571

147:                                              ; preds = %139
  %148 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %141) #20, !range !862
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %154, label %150, !prof !1572

150:                                              ; preds = %147
  %151 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %140) #20, !range !862
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %154, label %153, !prof !1573

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %139, %153, %150, %147
  %155 = phi ptr [ %37, %153 ], [ %140, %150 ], [ %140, %147 ], [ %140, %139 ]
  %156 = phi ptr [ %37, %153 ], [ %141, %150 ], [ %141, %147 ], [ %141, %139 ]
  %157 = load ptr, ptr %64, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %156, ptr noundef %155, ptr noundef %157) #20
  br label %247

158:                                              ; preds = %106
  %159 = icmp eq i32 %34, 97
  %160 = add i32 %34, -97
  %161 = icmp ult i32 %160, 2
  br i1 %161, label %162, label %202, !prof !1574

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 13
  %164 = load ptr, ptr %163, align 8, !tbaa !856
  %165 = icmp eq ptr %63, null
  br i1 %165, label %172, label %166, !prof !1575

166:                                              ; preds = %162
  %167 = load i32, ptr %63, align 8, !tbaa !845
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !866
  br label %172

172:                                              ; preds = %162, %166, %169
  %173 = phi ptr [ %171, %169 ], [ %37, %166 ], [ %37, %162 ]
  br i1 %159, label %174, label %177, !prof !1575

174:                                              ; preds = %172
  %175 = tail call fastcc i32 @compare_values(ptr noundef %173, ptr noundef %164) #20
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %186, label %177, !prof !1576

177:                                              ; preds = %174, %172
  %178 = load i64, ptr %173, align 8
  %179 = and i64 %178, 65535
  %180 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !873
  %182 = icmp ne i32 %181, 1
  %183 = and i64 %178, 134217728
  %184 = icmp eq i64 %183, 0
  %185 = or i1 %182, %184
  br i1 %185, label %187, label %186, !prof !1577

186:                                              ; preds = %177, %174
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %247

187:                                              ; preds = %177
  br i1 %159, label %188, label %199, !prof !1575

188:                                              ; preds = %187
  %189 = tail call ptr @build_int_cst(ptr noundef nonnull %39, i64 noundef 1) #21
  %190 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef nonnull %39, ptr noundef nonnull %173, ptr noundef %189) #21
  %191 = load i64, ptr %190, align 8
  %192 = and i64 %191, 65535
  %193 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !873
  %195 = add i32 %194, -4
  %196 = icmp ult i32 %195, 7
  br i1 %196, label %197, label %199, !prof !1578

197:                                              ; preds = %188
  %198 = or i64 %191, 8388608
  store i64 %198, ptr %190, align 8
  br label %199

199:                                              ; preds = %188, %197, %187
  %200 = phi ptr [ %173, %187 ], [ %190, %197 ], [ %190, %188 ]
  %201 = load ptr, ptr %64, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %164, ptr noundef nonnull %200, ptr noundef %201) #20
  br label %247

202:                                              ; preds = %158
  %203 = icmp eq i32 %34, 99
  %204 = add i32 %34, -99
  %205 = icmp ult i32 %204, 2
  br i1 %205, label %206, label %246, !prof !1579

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 14
  %208 = load ptr, ptr %207, align 8, !tbaa !856
  %209 = icmp eq ptr %63, null
  br i1 %209, label %216, label %210, !prof !1575

210:                                              ; preds = %206
  %211 = load i32, ptr %63, align 8, !tbaa !845
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.value_range_d, ptr %63, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !851
  br label %216

216:                                              ; preds = %206, %210, %213
  %217 = phi ptr [ %215, %213 ], [ %37, %210 ], [ %37, %206 ]
  br i1 %203, label %218, label %221, !prof !1576

218:                                              ; preds = %216
  %219 = tail call fastcc i32 @compare_values(ptr noundef %217, ptr noundef %208) #20
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %230, label %221

221:                                              ; preds = %218, %216
  %222 = load i64, ptr %217, align 8
  %223 = and i64 %222, 65535
  %224 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !873
  %226 = icmp ne i32 %225, 1
  %227 = and i64 %222, 134217728
  %228 = icmp eq i64 %227, 0
  %229 = or i1 %226, %228
  br i1 %229, label %231, label %230, !prof !1577

230:                                              ; preds = %221, %218
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %247

231:                                              ; preds = %221
  br i1 %203, label %232, label %243, !prof !1576

232:                                              ; preds = %231
  %233 = tail call ptr @build_int_cst(ptr noundef nonnull %39, i64 noundef 1) #21
  %234 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %39, ptr noundef nonnull %217, ptr noundef %233) #21
  %235 = load i64, ptr %234, align 8
  %236 = and i64 %235, 65535
  %237 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !873
  %239 = add i32 %238, -4
  %240 = icmp ult i32 %239, 7
  br i1 %240, label %241, label %243

241:                                              ; preds = %232
  %242 = or i64 %235, 8388608
  store i64 %242, ptr %234, align 8
  br label %243

243:                                              ; preds = %232, %241, %231
  %244 = phi ptr [ %217, %231 ], [ %234, %241 ], [ %234, %232 ]
  %245 = load ptr, ptr %64, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %244, ptr noundef %208, ptr noundef %245) #20
  br label %247

246:                                              ; preds = %202
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1654, ptr noundef nonnull @.str.28) #21
  br label %247

247:                                              ; preds = %115, %123, %199, %186, %230, %243, %246, %154, %101, %105, %103
  %248 = tail call fastcc ptr @get_value_range(ptr noundef %4) #20
  %249 = load i32, ptr %0, align 8, !tbaa !845
  switch i32 %249, label %250 [
    i32 3, label %422
    i32 0, label %422
  ], !prof !1580

250:                                              ; preds = %247
  %251 = load i32, ptr %248, align 8, !tbaa !845
  switch i32 %251, label %252 [
    i32 3, label %422
    i32 0, label %422
  ], !prof !1581

252:                                              ; preds = %250
  %253 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !862
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %255, label %422, !prof !1582

255:                                              ; preds = %252
  %256 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %248) #20, !range !862
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %258, label %422, !prof !1582

258:                                              ; preds = %255
  %259 = load i32, ptr %248, align 8, !tbaa !845
  switch i32 %259, label %422 [
    i32 1, label %260
    i32 2, label %285
  ], !prof !1583

260:                                              ; preds = %258
  %261 = load i32, ptr %0, align 8, !tbaa !845
  switch i32 %261, label %422 [
    i32 1, label %262
    i32 2, label %288
  ], !prof !1584

262:                                              ; preds = %260
  %263 = tail call fastcc zeroext i8 @value_ranges_intersect_p(ptr noundef nonnull %248, ptr noundef nonnull %0) #20, !range !862
  %264 = icmp eq i8 %263, 0
  br i1 %264, label %284, label %265, !prof !1585

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !851
  %268 = getelementptr inbounds %struct.value_range_d, ptr %248, i64 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !851
  %270 = tail call fastcc i32 @compare_values(ptr noundef %267, ptr noundef %269) #20
  %271 = icmp eq i32 %270, -1
  %272 = select i1 %271, ptr %268, ptr %266, !prof !1585
  %273 = load ptr, ptr %272, align 8, !tbaa !851
  %274 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !866
  %276 = getelementptr inbounds %struct.value_range_d, ptr %248, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !866
  %278 = tail call fastcc i32 @compare_values(ptr noundef %275, ptr noundef %277) #20
  %279 = icmp eq i32 %278, 1
  %280 = select i1 %279, ptr %276, ptr %274, !prof !1585
  %281 = load ptr, ptr %280, align 8, !tbaa !866
  %282 = load i32, ptr %0, align 8, !tbaa !845
  %283 = load ptr, ptr %64, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef %282, ptr noundef %273, ptr noundef %281, ptr noundef %283) #20
  br label %422

284:                                              ; preds = %262
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %422

285:                                              ; preds = %258
  %286 = load i32, ptr %0, align 8, !tbaa !845
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %422, !prof !1586

288:                                              ; preds = %260, %285
  %289 = getelementptr inbounds %struct.value_range_d, ptr %248, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !851
  %291 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %292 = load ptr, ptr %291, align 8, !tbaa !851
  %293 = tail call fastcc i32 @compare_values(ptr noundef %290, ptr noundef %292) #20
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %303, !prof !1587

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.value_range_d, ptr %248, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !866
  %298 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !866
  %300 = tail call fastcc i32 @compare_values(ptr noundef %297, ptr noundef %299) #20
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %303, !prof !1588

302:                                              ; preds = %295
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %422

303:                                              ; preds = %295, %288
  %304 = load i32, ptr %0, align 8, !tbaa !845
  %305 = icmp eq i32 %304, 2
  %306 = select i1 %305, ptr %291, ptr %289, !prof !1589
  %307 = select i1 %305, ptr %0, ptr %248, !prof !1589
  %308 = select i1 %305, ptr %289, ptr %291, !prof !1589
  %309 = select i1 %305, ptr %248, ptr %0, !prof !1589
  %310 = getelementptr inbounds %struct.value_range_d, ptr %309, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !866
  %312 = load ptr, ptr %308, align 8, !tbaa !851
  %313 = getelementptr inbounds %struct.value_range_d, ptr %307, i64 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !866
  %315 = load ptr, ptr %306, align 8, !tbaa !851
  %316 = tail call fastcc i32 @compare_values(ptr noundef %314, ptr noundef %311) #20
  %317 = icmp eq i32 %316, -1
  br i1 %317, label %318, label %329, !prof !1590

318:                                              ; preds = %303
  %319 = tail call fastcc i32 @compare_values(ptr noundef %315, ptr noundef %312) #20
  %320 = icmp eq i32 %319, 1
  br i1 %320, label %321, label %329, !prof !1591

321:                                              ; preds = %318
  %322 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %312) #20, !range !862
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %327, label %324

324:                                              ; preds = %321
  %325 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %311) #20, !range !862
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %327, label %422

327:                                              ; preds = %324, %321
  %328 = load ptr, ptr %64, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %312, ptr noundef %311, ptr noundef %328) #20
  br label %422

329:                                              ; preds = %318, %303
  %330 = tail call fastcc i32 @compare_values(ptr noundef %315, ptr noundef %311) #20
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %335, label %332, !prof !1592

332:                                              ; preds = %329
  %333 = tail call fastcc i32 @compare_values(ptr noundef %314, ptr noundef %312) #20
  %334 = icmp eq i32 %333, -1
  br i1 %334, label %335, label %337, !prof !1593

335:                                              ; preds = %332, %329
  %336 = load ptr, ptr %64, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %312, ptr noundef %311, ptr noundef %336) #20
  br label %422

337:                                              ; preds = %332
  %338 = tail call fastcc i32 @compare_values(ptr noundef %314, ptr noundef %312) #20
  %339 = icmp ult i32 %338, 2
  br i1 %339, label %340, label %379, !prof !1594

340:                                              ; preds = %337
  %341 = tail call fastcc i32 @compare_values(ptr noundef %314, ptr noundef %311) #20
  %342 = icmp eq i32 %341, -1
  br i1 %342, label %343, label %379, !prof !1595

343:                                              ; preds = %340
  %344 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %314) #20, !range !862
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %347, label %346, !prof !1596

346:                                              ; preds = %343
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1819, ptr noundef nonnull @.str.28) #21
  br label %347

347:                                              ; preds = %343, %346
  %348 = getelementptr inbounds %struct.tree_common, ptr %314, i64 0, i32 2
  %349 = load ptr, ptr %348, align 8, !tbaa !856
  %350 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %349) #20, !range !862
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %364, label %352, !prof !1597

352:                                              ; preds = %347
  %353 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %314) #20, !range !862
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %364, label %355, !prof !1598

355:                                              ; preds = %352
  %356 = load ptr, ptr %289, align 8, !tbaa !851
  %357 = getelementptr inbounds %struct.tree_common, ptr %356, i64 0, i32 2
  %358 = load ptr, ptr %357, align 8, !tbaa !856
  %359 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %358) #20, !range !862
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %355
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %422

362:                                              ; preds = %355
  %363 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef %358) #20
  br label %376

364:                                              ; preds = %352, %347
  %365 = load ptr, ptr %289, align 8, !tbaa !851
  %366 = getelementptr inbounds %struct.tree_common, ptr %365, i64 0, i32 2
  %367 = load ptr, ptr %366, align 8, !tbaa !856
  %368 = load i64, ptr %367, align 8
  %369 = trunc i64 %368 to i16
  switch i16 %369, label %370 [
    i16 10, label %373
    i16 12, label %373
  ], !prof !1599

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
  %378 = load ptr, ptr %64, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %377, ptr noundef %311, ptr noundef %378) #20
  br label %422

379:                                              ; preds = %337, %340
  %380 = tail call fastcc i32 @compare_values(ptr noundef %315, ptr noundef %312) #20
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %382, label %422, !prof !1600

382:                                              ; preds = %379
  %383 = tail call fastcc i32 @compare_values(ptr noundef %315, ptr noundef %311) #20
  %384 = add i32 %383, 1
  %385 = icmp ult i32 %384, 2
  br i1 %385, label %386, label %422, !prof !1601

386:                                              ; preds = %382
  %387 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %315) #20, !range !862
  %388 = icmp eq i8 %387, 0
  br i1 %388, label %390, label %389, !prof !1600

389:                                              ; preds = %386
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1847, ptr noundef nonnull @.str.28) #21
  br label %390

390:                                              ; preds = %386, %389
  %391 = getelementptr inbounds %struct.tree_common, ptr %315, i64 0, i32 2
  %392 = load ptr, ptr %391, align 8, !tbaa !856
  %393 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %392) #20, !range !862
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %407, label %395, !prof !1600

395:                                              ; preds = %390
  %396 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %315) #20, !range !862
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %407, label %398

398:                                              ; preds = %395
  %399 = load ptr, ptr %289, align 8, !tbaa !851
  %400 = getelementptr inbounds %struct.tree_common, ptr %399, i64 0, i32 2
  %401 = load ptr, ptr %400, align 8, !tbaa !856
  %402 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %401) #20, !range !862
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %398
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %422

405:                                              ; preds = %398
  %406 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef %401) #20
  br label %419

407:                                              ; preds = %395, %390
  %408 = load ptr, ptr %289, align 8, !tbaa !851
  %409 = getelementptr inbounds %struct.tree_common, ptr %408, i64 0, i32 2
  %410 = load ptr, ptr %409, align 8, !tbaa !856
  %411 = load i64, ptr %410, align 8
  %412 = trunc i64 %411 to i16
  switch i16 %412, label %413 [
    i16 10, label %416
    i16 12, label %416
  ], !prof !1602

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
  %421 = load ptr, ptr %64, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %312, ptr noundef %420, ptr noundef %421) #20
  br label %422

422:                                              ; preds = %260, %258, %361, %404, %284, %265, %302, %285, %327, %324, %376, %382, %419, %379, %335, %252, %255, %247, %247, %250, %250, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @extract_range_from_ssa_name(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1603 !PGOFuncName !1604 {
  %3 = tail call fastcc ptr @get_value_range(ptr noundef %1) #20
  %4 = load i32, ptr %3, align 8, !tbaa !845
  switch i32 %4, label %5 [
    i32 0, label %6
    i32 3, label %6
  ], !prof !1605

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
define internal fastcc void @extract_range_from_binary_expr(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1606 !PGOFuncName !1607 {
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
  %25 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %19) #20, !range !862
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
  br i1 %32, label %33, label %35, !prof !1608

33:                                               ; preds = %29
  %34 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %34, i64 32, i1 false), !tbaa.struct !1050
  br label %40

35:                                               ; preds = %29
  %36 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %3) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38, !prof !1609

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
  br i1 %43, label %44, label %46, !prof !1610

44:                                               ; preds = %40
  %45 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %45, i64 32, i1 false), !tbaa.struct !1050
  br label %51

46:                                               ; preds = %40
  %47 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %4) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49, !prof !1611

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
  br i1 %56, label %57, label %58, !prof !1612

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
  br i1 %64, label %65, label %71, !prof !1613

65:                                               ; preds = %59
  %66 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %6) #20, !range !862
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %71, !prof !1614

68:                                               ; preds = %65
  %69 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !862
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %72, label %71, !prof !1614

71:                                               ; preds = %68, %65, %59
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

72:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %68
  %73 = load i64, ptr %2, align 8
  %74 = trunc i64 %73 to i16
  switch i16 %74, label %75 [
    i16 10, label %85
    i16 12, label %85
  ], !prof !1615

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !856
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i16
  switch i16 %79, label %80 [
    i16 10, label %85
    i16 12, label %85
  ], !prof !1615

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !856
  %83 = load i64, ptr %82, align 8
  %84 = trunc i64 %83 to i16
  switch i16 %84, label %121 [
    i16 10, label %85
    i16 12, label %85
  ], !prof !1615

85:                                               ; preds = %80, %80, %75, %75, %72, %72
  %86 = and i32 %1, -2
  %87 = icmp eq i32 %86, 80
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %6) #20, !range !862
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %7) #20, !range !862
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call fastcc void @set_value_range_to_nonnull(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %629

95:                                               ; preds = %91, %88
  %96 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %6) #20, !range !862
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %7) #20, !range !862
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
  %107 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %6) #20, !range !862
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %7) #20, !range !862
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109, %106
  tail call fastcc void @set_value_range_to_nonnull(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %629

113:                                              ; preds = %109
  %114 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %6) #20, !range !862
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %7) #20, !range !862
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
  br i1 %123, label %124, label %207, !prof !1616

124:                                              ; preds = %121
  switch i32 %1, label %177 [
    i32 93, label %125
    i32 94, label %151
  ], !prof !1617

125:                                              ; preds = %124
  %126 = icmp eq i32 %52, 1
  br i1 %126, label %127, label %137

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !851
  %130 = tail call i32 @integer_zerop(ptr noundef %129) #21
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !866
  %135 = tail call i32 @integer_zerop(ptr noundef %134) #21
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %132, %127, %125
  %138 = icmp eq i32 %54, 1
  br i1 %138, label %139, label %177

139:                                              ; preds = %137
  %140 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !851
  %142 = tail call i32 @integer_zerop(ptr noundef %141) #21
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %177, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !866
  %147 = tail call i32 @integer_zerop(ptr noundef %146) #21
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %177, label %149

149:                                              ; preds = %144, %132
  %150 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 0) #21
  br label %579

151:                                              ; preds = %124
  %152 = icmp eq i32 %52, 1
  br i1 %152, label %153, label %163, !prof !1618

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !851
  %156 = tail call i32 @integer_onep(ptr noundef %155) #21
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %163, label %158, !prof !1618

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !866
  %161 = tail call i32 @integer_onep(ptr noundef %160) #21
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %158, %153, %151
  %164 = icmp eq i32 %54, 1
  br i1 %164, label %165, label %177, !prof !1618

165:                                              ; preds = %163
  %166 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !851
  %168 = tail call i32 @integer_onep(ptr noundef %167) #21
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %177, label %170, !prof !1618

170:                                              ; preds = %165
  %171 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !866
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
  br i1 %182, label %183, label %206, !prof !1619

183:                                              ; preds = %177
  %184 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %6) #20, !range !862
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %206, !prof !1618

186:                                              ; preds = %183
  %187 = call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %6) #20, !range !862
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %206, !prof !1618

189:                                              ; preds = %186
  %190 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !862
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %192, label %206, !prof !1618

192:                                              ; preds = %189
  %193 = call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %7) #20, !range !862
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %206, !prof !1618

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !851
  %198 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !851
  %200 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %197, ptr noundef %199) #21
  %201 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !866
  %203 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !866
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
  br i1 %211, label %212, label %213, !prof !1620

212:                                              ; preds = %209
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !851
  %216 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !851
  %218 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %215, ptr noundef %217) #20
  %219 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !866
  %221 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !866
  %223 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %220, ptr noundef %222) #20
  br i1 %208, label %224, label %579, !prof !1621

224:                                              ; preds = %213
  %225 = load i64, ptr %218, align 8
  %226 = and i64 %225, 134217728
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %584, label %228, !prof !1622

228:                                              ; preds = %224
  %229 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %218) #20, !range !862
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %584, !prof !1621

231:                                              ; preds = %228
  %232 = load i64, ptr %223, align 8
  %233 = and i64 %232, 134217728
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %584, label %235, !prof !1622

235:                                              ; preds = %231
  %236 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %223) #20, !range !862
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %584, !prof !1621

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.tree_common, ptr %218, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !856
  %241 = getelementptr inbounds %struct.tree_int_cst, ptr %218, i64 0, i32 1
  %242 = load i64, ptr %241, align 8, !tbaa !856
  %243 = getelementptr inbounds %struct.tree_int_cst, ptr %218, i64 0, i32 1, i32 1
  %244 = load i64, ptr %243, align 8, !tbaa !856
  %245 = tail call ptr @build_int_cst_wide(ptr noundef %240, i64 noundef %242, i64 noundef %244) #21
  %246 = getelementptr inbounds %struct.tree_common, ptr %223, i64 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !856
  %248 = getelementptr inbounds %struct.tree_int_cst, ptr %223, i64 0, i32 1
  %249 = load i64, ptr %248, align 8, !tbaa !856
  %250 = getelementptr inbounds %struct.tree_int_cst, ptr %223, i64 0, i32 1, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !856
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
  ], !prof !1623

256:                                              ; preds = %253, %253, %253, %253, %253, %253, %253
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  %257 = icmp eq i32 %52, 2
  %258 = and i1 %254, %257
  br i1 %258, label %259, label %272, !prof !1624

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
  ], !prof !1625

273:                                              ; preds = %272
  %274 = icmp eq i32 %54, 2
  br i1 %274, label %291, label %275

275:                                              ; preds = %273
  %276 = call fastcc zeroext i8 @vrp_expr_computes_nonnegative(ptr noundef nonnull %4, ptr noundef nonnull %9) #20, !range !862
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %291, label %278

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !866
  %281 = getelementptr inbounds %struct.tree_common, ptr %280, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !856
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
  %295 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %6) #20, !range !862
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %306, label %297

297:                                              ; preds = %294, %292
  %298 = icmp eq i32 %54, 1
  br i1 %298, label %299, label %305

299:                                              ; preds = %297
  %300 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !862
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %7) #20, !range !862
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
  br i1 %311, label %319, label %357, !prof !1626

312:                                              ; preds = %302
  store i32 1, ptr %6, align 8, !tbaa !845
  %313 = load ptr, ptr %76, align 8, !tbaa !856
  %314 = tail call fastcc ptr @vrp_val_min(ptr noundef %313) #20
  %315 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  store ptr %314, ptr %315, align 8, !tbaa !851
  %316 = load ptr, ptr %81, align 8, !tbaa !856
  %317 = tail call fastcc ptr @vrp_val_max(ptr noundef %316) #20
  %318 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  store ptr %317, ptr %318, align 8, !tbaa !866
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
  %322 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %7) #20, !range !862
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %7) #20, !range !862
  %326 = icmp eq i8 %325, 0
  br i1 %326, label %366, label %327

327:                                              ; preds = %324, %321, %319
  %328 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8
  %330 = getelementptr inbounds %struct.tree_common, ptr %329, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !856
  %332 = call ptr @build_int_cst(ptr noundef %331, i64 noundef 0) #21
  store i8 0, ptr %9, align 1, !tbaa !856
  %333 = call fastcc zeroext i8 @vrp_expr_computes_nonnegative(ptr noundef nonnull %4, ptr noundef nonnull %9) #20, !range !862
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
  br i1 %364, label %366, label %365, !prof !1627

365:                                              ; preds = %357
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 2416, ptr noundef nonnull @.str.28) #21
  br label %366

366:                                              ; preds = %324, %357, %365
  %367 = phi i32 [ 1, %324 ], [ %359, %357 ], [ %359, %365 ]
  store i8 0, ptr %9, align 1, !tbaa !856
  %368 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !851
  %370 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %371 = load ptr, ptr %370, align 8, !tbaa !851
  %372 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %369, ptr noundef %371) #20
  store ptr %372, ptr %8, align 16, !tbaa !852
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %375, !prof !1628

374:                                              ; preds = %366
  store i8 1, ptr %9, align 1, !tbaa !856
  br label %375

375:                                              ; preds = %374, %366
  %376 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %377 = load ptr, ptr %376, align 8, !tbaa !866
  %378 = icmp eq ptr %377, %371
  br i1 %378, label %379, label %381, !prof !1629

379:                                              ; preds = %375
  %380 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 1
  store ptr null, ptr %380, align 8, !tbaa !852
  br label %386

381:                                              ; preds = %375
  %382 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %369, ptr noundef %377) #20
  %383 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 1
  store ptr %382, ptr %383, align 8, !tbaa !852
  %384 = icmp eq ptr %382, null
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  store i8 1, ptr %9, align 1, !tbaa !856
  br label %386

386:                                              ; preds = %381, %385, %379
  %387 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %388 = load ptr, ptr %387, align 8, !tbaa !866
  %389 = icmp eq ptr %388, %369
  br i1 %389, label %395, label %390, !prof !1628

390:                                              ; preds = %386
  %391 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %388, ptr noundef %371) #20
  %392 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 2
  store ptr %391, ptr %392, align 16, !tbaa !852
  %393 = icmp eq ptr %391, null
  br i1 %393, label %394, label %397, !prof !1628

394:                                              ; preds = %390
  store i8 1, ptr %9, align 1, !tbaa !856
  br label %397

395:                                              ; preds = %386
  %396 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 2
  store ptr null, ptr %396, align 16, !tbaa !852
  br label %398

397:                                              ; preds = %390, %394
  br i1 %378, label %398, label %400, !prof !1629

398:                                              ; preds = %395, %397
  %399 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 3
  store ptr null, ptr %399, align 8, !tbaa !852
  br label %405

400:                                              ; preds = %397
  %401 = call fastcc ptr @vrp_int_const_binop(i32 noundef %1, ptr noundef %388, ptr noundef %377) #20
  %402 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 3
  store ptr %401, ptr %402, align 8, !tbaa !852
  %403 = icmp eq ptr %401, null
  br i1 %403, label %404, label %405

404:                                              ; preds = %400
  store i8 1, ptr %9, align 1, !tbaa !856
  br label %408

405:                                              ; preds = %400, %398
  %406 = load i8, ptr %9, align 1, !tbaa !856
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %409, label %408, !prof !1630

408:                                              ; preds = %404, %405
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %464

409:                                              ; preds = %405, %455
  %410 = phi ptr [ %457, %455 ], [ %372, %405 ]
  %411 = phi ptr [ %456, %455 ], [ %372, %405 ]
  %412 = phi i64 [ %458, %455 ], [ 1, %405 ]
  %413 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %410) #21
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %460, label %415, !prof !1539

415:                                              ; preds = %409
  %416 = load i64, ptr %410, align 8
  %417 = and i64 %416, 134217728
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %422, label %419, !prof !1513

419:                                              ; preds = %415
  %420 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %410) #20, !range !862
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %460, label %422

422:                                              ; preds = %419, %415
  %423 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %411) #21
  %424 = icmp eq i8 %423, 0
  br i1 %424, label %460, label %425, !prof !1539

425:                                              ; preds = %422
  %426 = load i64, ptr %411, align 8
  %427 = and i64 %426, 134217728
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %432, label %429, !prof !1513

429:                                              ; preds = %425
  %430 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %411) #20, !range !862
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %460, label %432

432:                                              ; preds = %429, %425
  %433 = getelementptr inbounds [4 x ptr], ptr %8, i64 0, i64 %412
  %434 = load ptr, ptr %433, align 8, !tbaa !852
  %435 = icmp eq ptr %434, null
  br i1 %435, label %455, label %436, !prof !1631

436:                                              ; preds = %432
  %437 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %434) #21
  %438 = icmp eq i8 %437, 0
  br i1 %438, label %460, label %439, !prof !1628

439:                                              ; preds = %436
  %440 = load i64, ptr %434, align 8
  %441 = and i64 %440, 134217728
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %446, label %443, !prof !1628

443:                                              ; preds = %439
  %444 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %434) #20, !range !862
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %460, label %446, !prof !1629

446:                                              ; preds = %443, %439
  %447 = call fastcc i32 @compare_values(ptr noundef nonnull %434, ptr noundef nonnull %410) #20
  %448 = icmp eq i32 %447, -1
  %449 = load ptr, ptr %433, align 8, !tbaa !852
  %450 = select i1 %448, ptr %449, ptr %410
  %451 = call fastcc i32 @compare_values(ptr noundef %449, ptr noundef nonnull %411) #20
  %452 = icmp eq i32 %451, 1
  br i1 %452, label %453, label %455

453:                                              ; preds = %446
  %454 = load ptr, ptr %433, align 8, !tbaa !852
  br label %455

455:                                              ; preds = %432, %453, %446
  %456 = phi ptr [ %454, %453 ], [ %411, %446 ], [ %411, %432 ]
  %457 = phi ptr [ %450, %453 ], [ %450, %446 ], [ %410, %432 ]
  %458 = add nuw nsw i64 %412, 1
  %459 = icmp eq i64 %458, 4
  br i1 %459, label %460, label %409, !prof !1632, !llvm.loop !1633

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
  %470 = load ptr, ptr %469, align 8, !tbaa !851
  %471 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %472 = load ptr, ptr %471, align 8, !tbaa !866
  %473 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef 64, ptr noundef %470, ptr noundef %472) #20
  %474 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %475 = load ptr, ptr %474, align 8, !tbaa !866
  %476 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !851
  %478 = tail call fastcc ptr @vrp_int_const_binop(i32 noundef 64, ptr noundef %475, ptr noundef %477) #20
  br label %579

479:                                              ; preds = %253
  %480 = icmp eq i32 %52, 1
  br i1 %480, label %481, label %496, !prof !1634

481:                                              ; preds = %479
  %482 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %483 = load ptr, ptr %482, align 8, !tbaa !851
  %484 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !866
  %486 = icmp eq ptr %483, %485
  br i1 %486, label %487, label %496, !prof !1635

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
  br i1 %497, label %498, label %513, !prof !1636

498:                                              ; preds = %496
  %499 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !851
  %501 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %502 = load ptr, ptr %501, align 8, !tbaa !866
  %503 = icmp eq ptr %500, %502
  br i1 %503, label %504, label %513, !prof !1636

504:                                              ; preds = %498
  %505 = load i64, ptr %500, align 8
  %506 = and i64 %505, 134283263
  %507 = icmp eq i64 %506, 23
  br i1 %507, label %508, label %513, !prof !1637

508:                                              ; preds = %504
  %509 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %500) #21
  %510 = icmp sgt i32 %509, -1
  br i1 %510, label %511, label %513, !prof !1636

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
  br i1 %517, label %518, label %577, !prof !1638

518:                                              ; preds = %514
  %519 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 1
  %520 = load ptr, ptr %519, align 8, !tbaa !851
  %521 = load i64, ptr %520, align 8
  %522 = and i64 %521, 65535
  %523 = icmp eq i64 %522, 23
  br i1 %523, label %524, label %577, !prof !1639

524:                                              ; preds = %518
  %525 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 1
  %526 = load ptr, ptr %525, align 8, !tbaa !851
  %527 = load i64, ptr %526, align 8
  %528 = and i64 %527, 65535
  %529 = icmp eq i64 %528, 23
  br i1 %529, label %530, label %577, !prof !1639

530:                                              ; preds = %524
  %531 = getelementptr inbounds %struct.value_range_d, ptr %6, i64 0, i32 2
  %532 = load ptr, ptr %531, align 8, !tbaa !866
  %533 = load i64, ptr %532, align 8
  %534 = and i64 %533, 65535
  %535 = icmp eq i64 %534, 23
  br i1 %535, label %536, label %577, !prof !1639

536:                                              ; preds = %530
  %537 = getelementptr inbounds %struct.value_range_d, ptr %7, i64 0, i32 2
  %538 = load ptr, ptr %537, align 8, !tbaa !866
  %539 = load i64, ptr %538, align 8
  %540 = and i64 %539, 65535
  %541 = icmp eq i64 %540, 23
  br i1 %541, label %542, label %577, !prof !1639

542:                                              ; preds = %536
  %543 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %520) #21
  %544 = icmp sgt i32 %543, -1
  br i1 %544, label %545, label %577, !prof !1639

545:                                              ; preds = %542
  %546 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %526) #21
  %547 = icmp sgt i32 %546, -1
  br i1 %547, label %548, label %577, !prof !1639

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
  br i1 %557, label %564, label %558, !prof !1639

558:                                              ; preds = %548
  %559 = tail call i32 @floor_log2(i64 noundef %556) #21
  %560 = zext nneg i32 %559 to i64
  %561 = shl nsw i64 -1, %560
  %562 = xor i64 %561, -1
  %563 = or i64 %556, %562
  br label %572

564:                                              ; preds = %548
  %565 = icmp eq i64 %555, 0
  br i1 %565, label %572, label %566, !prof !1640

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
  br i1 %583, label %611, label %584, !prof !1641

584:                                              ; preds = %224, %231, %235, %228, %579
  %585 = phi i32 [ %582, %579 ], [ %52, %228 ], [ %52, %235 ], [ %52, %231 ], [ %52, %224 ]
  %586 = phi ptr [ %581, %579 ], [ %218, %228 ], [ %218, %235 ], [ %218, %231 ], [ %218, %224 ]
  %587 = phi ptr [ %580, %579 ], [ %223, %228 ], [ %223, %235 ], [ %223, %231 ], [ %223, %224 ]
  %588 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %586) #21
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %611, label %590, !prof !1642

590:                                              ; preds = %584
  %591 = load i64, ptr %586, align 8
  %592 = and i64 %591, 134217728
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %599, label %594, !prof !1643

594:                                              ; preds = %590
  %595 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %586) #20, !range !862
  %596 = icmp eq i8 %595, 0
  %597 = icmp eq ptr %587, null
  %598 = select i1 %596, i1 true, i1 %597
  br i1 %598, label %611, label %601, !prof !1644

599:                                              ; preds = %590
  %600 = icmp eq ptr %587, null
  br i1 %600, label %611, label %601, !prof !1645

601:                                              ; preds = %594, %599
  %602 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %587) #21
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %611, label %604, !prof !1645

604:                                              ; preds = %601
  %605 = load i64, ptr %587, align 8
  %606 = and i64 %605, 134217728
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %612, label %608, !prof !1646

608:                                              ; preds = %604
  %609 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %587) #20, !range !862
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %611, label %612

611:                                              ; preds = %608, %601, %599, %594, %584, %579
  call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %629

612:                                              ; preds = %608, %604
  %613 = call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %586) #20, !range !862
  %614 = icmp eq i8 %613, 0
  br i1 %614, label %615, label %618, !prof !1647

615:                                              ; preds = %612
  %616 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %586) #20, !range !862
  %617 = icmp eq i8 %616, 0
  br i1 %617, label %625, label %618, !prof !1648

618:                                              ; preds = %615, %612
  %619 = call fastcc zeroext i8 @vrp_val_is_max(ptr noundef nonnull %587) #20, !range !862
  %620 = icmp eq i8 %619, 0
  br i1 %620, label %621, label %624, !prof !1649

621:                                              ; preds = %618
  %622 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %587) #20, !range !862
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %625, label %624, !prof !1650

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
define internal fastcc void @extract_range_from_unary_expr(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1651 !PGOFuncName !1652 {
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
  %17 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %11) #20, !range !862
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
  br i1 %24, label %25, label %27, !prof !1653

25:                                               ; preds = %21
  %26 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %3) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %26, i64 32, i1 false), !tbaa.struct !1050
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
  br i1 %34, label %35, label %36, !prof !1654

35:                                               ; preds = %32
  tail call fastcc void @set_value_range_to_undefined(ptr noundef %0) #20
  br label %439

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !856
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i16
  switch i16 %40, label %46 [
    i16 6, label %41
    i16 7, label %41
    i16 8, label %41
    i16 10, label %41
    i16 12, label %41
  ], !prof !1655

41:                                               ; preds = %36, %36, %36, %36, %36
  %42 = icmp eq i32 %33, 3
  br i1 %42, label %47, label %43, !prof !1656

43:                                               ; preds = %41
  %44 = call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %5) #20, !range !862
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46, !prof !1657

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
  ], !prof !1658

52:                                               ; preds = %47
  %53 = load ptr, ptr %37, align 8, !tbaa !856
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = and i32 %55, 65535
  %57 = trunc i64 %54 to i16
  switch i16 %57, label %74 [
    i16 10, label %58
    i16 12, label %58
  ], !prof !1658

58:                                               ; preds = %52, %52, %47, %47
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  store i8 0, ptr %6, align 1, !tbaa !856
  %59 = call fastcc zeroext i8 @range_is_nonnull(ptr noundef nonnull %5) #20, !range !862
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
  %69 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %5) #20, !range !862
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
  br i1 %80, label %81, label %146, !prof !1659

81:                                               ; preds = %75
  br i1 %42, label %82, label %94, !prof !1656

82:                                               ; preds = %81
  %83 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 1023
  %86 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1023
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %90, label %145, !prof !1660

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 13
  %92 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %93 = load <2 x ptr>, ptr %91, align 8, !tbaa !856
  store <2 x ptr> %93, ptr %92, align 8, !tbaa !852
  br label %96

94:                                               ; preds = %81
  %95 = icmp ult i32 %33, 3
  br i1 %95, label %96, label %145, !prof !1110

96:                                               ; preds = %90, %94
  %97 = phi i32 [ 1, %90 ], [ %33, %94 ]
  %98 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !851
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 65535
  %102 = icmp eq i64 %101, 23
  br i1 %102, label %103, label %145, !prof !1661

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !866
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 23
  br i1 %108, label %109, label %145, !prof !1661

109:                                              ; preds = %103
  %110 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %99) #20, !range !862
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %145, !prof !1661

112:                                              ; preds = %109
  %113 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %105) #20, !range !862
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %145, !prof !1661

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 1023
  %119 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 1023
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %134, !prof !1662

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
  %136 = load i64, ptr %135, align 8, !tbaa !856
  %137 = getelementptr inbounds %struct.tree_int_cst, ptr %99, i64 0, i32 1, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !856
  %139 = tail call ptr @force_fit_type_double(ptr noundef nonnull %2, i64 noundef %136, i64 noundef %138, i32 noundef 0, i8 noundef zeroext 0) #21
  %140 = getelementptr inbounds %struct.tree_int_cst, ptr %105, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !856
  %142 = getelementptr inbounds %struct.tree_int_cst, ptr %105, i64 0, i32 1, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !856
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
  %154 = load ptr, ptr %153, align 8, !tbaa !866
  %155 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %154) #20, !range !862
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %152
  %158 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef nonnull %2) #20
  br label %189

159:                                              ; preds = %152
  %160 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %154) #20, !range !862
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %159
  %163 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %189

164:                                              ; preds = %159
  %165 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %154) #20, !range !862
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %154) #21
  br label %189

169:                                              ; preds = %164
  %170 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %186, label %172

172:                                              ; preds = %169
  %173 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %185, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !851
  %178 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %177) #20, !range !862
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %177) #20, !range !862
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
  %188 = load ptr, ptr %187, align 8, !tbaa !856
  br label %189

189:                                              ; preds = %162, %183, %186, %167, %157
  %190 = phi ptr [ %158, %157 ], [ %163, %162 ], [ %184, %183 ], [ %188, %186 ], [ %168, %167 ]
  %191 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !851
  %193 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %192) #20, !range !862
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %189
  %196 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

197:                                              ; preds = %189
  %198 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %192) #20, !range !862
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

202:                                              ; preds = %197
  %203 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %192) #20, !range !862
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %192) #21
  br label %432

207:                                              ; preds = %202
  %208 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %216, label %210

210:                                              ; preds = %207
  %211 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
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
  %218 = load ptr, ptr %217, align 8, !tbaa !856
  br label %432

219:                                              ; preds = %149
  %220 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %5) #20, !range !862
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %224 = load ptr, ptr %223, align 8, !tbaa !851
  %225 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %224) #21
  %226 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !866
  %228 = tail call ptr @fold_unary_to_constant(i32 noundef 79, ptr noundef nonnull %2, ptr noundef %227) #21
  br label %432

229:                                              ; preds = %219
  %230 = call fastcc zeroext i8 @range_is_null(ptr noundef nonnull %5) #20, !range !862
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
  %249 = load ptr, ptr %248, align 8, !tbaa !851
  %250 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %249) #20, !range !862
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %261, label %260

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !851
  %255 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %254) #20, !range !862
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %252
  %258 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %5) #20, !range !862
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %257, %247
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %439

261:                                              ; preds = %246, %247, %237, %257, %252
  %262 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !851
  %264 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %263) #20, !range !862
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %261
  %267 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %285

268:                                              ; preds = %261
  %269 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %263) #20, !range !862
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = tail call ptr @fold_unary_to_constant(i32 noundef 82, ptr noundef nonnull %2, ptr noundef %263) #21
  br label %285

273:                                              ; preds = %268
  %274 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %278 = load ptr, ptr %277, align 8, !tbaa !856
  br label %285

279:                                              ; preds = %273
  %280 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
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
  %288 = load ptr, ptr %287, align 8, !tbaa !866
  %289 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %288) #20, !range !862
  %290 = icmp eq i8 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %285
  %292 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef nonnull %2) #20
  br label %313

293:                                              ; preds = %285
  %294 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %288) #20, !range !862
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  %297 = tail call ptr @fold_unary_to_constant(i32 noundef 82, ptr noundef nonnull %2, ptr noundef %288) #21
  br label %313

298:                                              ; preds = %293
  %299 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %303 = load ptr, ptr %302, align 8, !tbaa !856
  br label %313

304:                                              ; preds = %298
  %305 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %304
  %308 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %286) #20, !range !862
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
  %317 = call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %5) #20, !range !862
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
  %331 = load ptr, ptr %330, align 8, !tbaa !856
  %332 = icmp eq ptr %263, %331
  br i1 %332, label %432, label %333

333:                                              ; preds = %329
  %334 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !852
  %335 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %331, ptr noundef %334, i32 noundef 0) #21
  br label %432

336:                                              ; preds = %320
  %337 = call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %5) #20, !range !862
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %341, label %339

339:                                              ; preds = %336
  %340 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef nonnull %2) #20
  br label %432

341:                                              ; preds = %336
  %342 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  %343 = load ptr, ptr %342, align 8, !tbaa !856
  br label %432

344:                                              ; preds = %319
  %345 = tail call ptr @build_int_cst(ptr noundef nonnull %2, i64 noundef 0) #21
  %346 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %354, label %348

348:                                              ; preds = %344
  %349 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
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
  %356 = load ptr, ptr %355, align 8, !tbaa !856
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
  %366 = load ptr, ptr %365, align 8, !tbaa !851
  %367 = tail call ptr @fold_unary_to_constant(i32 noundef %1, ptr noundef nonnull %2, ptr noundef %366) #21
  %368 = getelementptr inbounds %struct.value_range_d, ptr %5, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !866
  %370 = tail call ptr @fold_unary_to_constant(i32 noundef %1, ptr noundef nonnull %2, ptr noundef %369) #21
  %371 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %432, label %373

373:                                              ; preds = %364
  %374 = icmp eq i32 %1, 82
  br i1 %374, label %375, label %376

375:                                              ; preds = %373
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 2959, ptr noundef nonnull @.str.28) #21
  br label %376

376:                                              ; preds = %373, %375
  %377 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %366) #20, !range !862
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %376
  %380 = load i64, ptr %367, align 8
  %381 = and i64 %380, 134217728
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %379, %376
  %384 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %369) #20, !range !862
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
  %392 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %366) #20, !range !862
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %411

394:                                              ; preds = %391
  %395 = load i64, ptr %367, align 8
  %396 = and i64 %395, 134217728
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %411, label %398

398:                                              ; preds = %394
  %399 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %410, label %401

401:                                              ; preds = %398
  %402 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %367) #21
  %403 = icmp sgt i32 %402, -1
  %404 = getelementptr inbounds %struct.tree_common, ptr %367, i64 0, i32 2
  %405 = load ptr, ptr %404, align 8, !tbaa !856
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
  %413 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %369) #20, !range !862
  %414 = icmp eq i8 %413, 0
  br i1 %414, label %415, label %432

415:                                              ; preds = %411
  %416 = load i64, ptr %370, align 8
  %417 = and i64 %416, 134217728
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %432, label %419

419:                                              ; preds = %415
  %420 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef nonnull %2) #20, !range !862
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %431, label %422

422:                                              ; preds = %419
  %423 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %370) #21
  %424 = icmp sgt i32 %423, -1
  %425 = getelementptr inbounds %struct.tree_common, ptr %370, i64 0, i32 2
  %426 = load ptr, ptr %425, align 8, !tbaa !856
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
define internal fastcc void @extract_range_from_cond_expr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !844 !PGOFuncName !1663 {
  %3 = alloca %struct.value_range_d, align 8
  %4 = alloca %struct.value_range_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !856
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %6) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !1050
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
  %19 = load ptr, ptr %18, align 8, !tbaa !856
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %19) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 32, i1 false), !tbaa.struct !1050
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
define internal fastcc void @extract_range_from_comparison(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1664 !PGOFuncName !1665 {
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  store i8 0, ptr %6, align 1, !tbaa !856
  %7 = call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %1, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0, ptr noundef nonnull %6, ptr noundef null) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9, !prof !1666

9:                                                ; preds = %5
  %10 = call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %7) #20, !range !862
  %11 = icmp ne i8 %10, 0
  %12 = load i8, ptr %6, align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %23, label %15, !prof !1667

15:                                               ; preds = %9
  %16 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %2, ptr noundef nonnull %7) #21
  %17 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %16) #21
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !858
  br i1 %18, label %22, label %21, !prof !1668

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
define internal fastcc void @set_value_range_to_value(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1669 !PGOFuncName !1670 {
  %4 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %1) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !1671

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 515, ptr noundef nonnull @.str.28) #21
  br label %7

7:                                                ; preds = %3, %6
  %8 = tail call fastcc ptr @avoid_overflow_infinity(ptr noundef %1) #20
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %8, ptr noundef %8, ptr noundef %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @avoid_overflow_infinity(ptr noundef %0) unnamed_addr #0 !prof !1672 !PGOFuncName !1673 {
  %2 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %0) #20, !range !862
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !1674

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %0) #20, !range !862
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !856
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
define internal fastcc zeroext i8 @symbolic_range_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1675 !PGOFuncName !1676 {
  %2 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !851
  %4 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %3) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6, !prof !1677

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !866
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %8) #21
  %10 = icmp eq i8 %9, 0
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i8 [ 1, %1 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_equivalence(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1678 !PGOFuncName !1679 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !856
  %5 = load ptr, ptr @vr_value, align 8, !tbaa !852
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !852
  %9 = load ptr, ptr %0, align 8, !tbaa !852
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13, !prof !1680

11:                                               ; preds = %2
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %12, ptr %0, align 8, !tbaa !852
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ %12, %11 ], [ %9, %2 ]
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %4) #21
  %16 = icmp eq ptr %8, null
  br i1 %16, label %24, label %17, !prof !1681

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.value_range_d, ptr %8, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !858
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21, !prof !1682

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !852
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
define internal fastcc void @set_and_canonicalize_value_range(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !1683 !PGOFuncName !1684 {
  %6 = add i32 %1, -3
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %16, label %8, !prof !1685

8:                                                ; preds = %5
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 23
  br i1 %11, label %12, label %16, !prof !1686

12:                                               ; preds = %8
  %13 = load i64, ptr %3, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %17, label %16, !prof !1686

16:                                               ; preds = %5, %12, %8
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #20
  br label %70

17:                                               ; preds = %12
  %18 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %3, ptr noundef nonnull %2) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20, !prof !1686

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !856
  %23 = tail call ptr @build_int_cst(ptr noundef %22, i64 noundef 1) #21
  %24 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef nonnull %3, ptr noundef %23, i32 noundef 0) #21
  %25 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef nonnull %2, ptr noundef %23, i32 noundef 0) #21
  %26 = tail call i32 @tree_int_cst_lt(ptr noundef %25, ptr noundef %24) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = icmp eq i32 %1, 1
  br i1 %29, label %33, label %66

30:                                               ; preds = %20
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %70

31:                                               ; preds = %17
  %32 = icmp eq i32 %1, 2
  br i1 %32, label %33, label %66, !prof !1687

33:                                               ; preds = %28, %31
  %34 = phi ptr [ %2, %31 ], [ %24, %28 ]
  %35 = phi ptr [ %3, %31 ], [ %25, %28 ]
  %36 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %34) #20, !range !862
  %37 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %35) #20, !range !862
  %38 = icmp eq i8 %36, 0
  %39 = icmp eq i8 %37, 0
  br i1 %38, label %57, label %40, !prof !1688

40:                                               ; preds = %33
  br i1 %39, label %41, label %65

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !856
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 2097152
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = tail call i32 @integer_zerop(ptr noundef %35) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %47, %41
  %51 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !856
  %53 = tail call ptr @build_int_cst(ptr noundef %52, i64 noundef 1) #21
  %54 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %35, ptr noundef %53, i32 noundef 0) #21
  %55 = load ptr, ptr %51, align 8, !tbaa !856
  %56 = tail call fastcc ptr @vrp_val_max(ptr noundef %55) #20
  br label %66

57:                                               ; preds = %33
  br i1 %39, label %66, label %58, !prof !1689

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !856
  %61 = tail call ptr @build_int_cst(ptr noundef %60, i64 noundef 1) #21
  %62 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %34, ptr noundef %61, i32 noundef 0) #21
  %63 = load ptr, ptr %59, align 8, !tbaa !856
  %64 = tail call fastcc ptr @vrp_val_min(ptr noundef %63) #20
  br label %66

65:                                               ; preds = %40
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %70

66:                                               ; preds = %28, %47, %57, %58, %50, %31
  %67 = phi ptr [ %3, %31 ], [ %56, %50 ], [ %35, %57 ], [ %62, %58 ], [ %35, %47 ], [ %25, %28 ]
  %68 = phi ptr [ %2, %31 ], [ %54, %50 ], [ %34, %57 ], [ %64, %58 ], [ %34, %47 ], [ %24, %28 ]
  %69 = phi i32 [ 1, %31 ], [ 1, %50 ], [ 2, %57 ], [ 1, %58 ], [ 2, %47 ], [ 1, %28 ]
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef %69, ptr noundef %68, ptr noundef %67, ptr noundef %4) #20
  br label %70

70:                                               ; preds = %65, %30, %66, %16
  ret void
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @value_ranges_intersect_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1690 !PGOFuncName !1691 {
  %3 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !866
  %5 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !851
  %7 = tail call fastcc i32 @operand_less_p(ptr noundef %4, ptr noundef %6) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17, !prof !1692

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !866
  %12 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !851
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
define internal fastcc noundef ptr @negative_overflow_infinity(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !844 !PGOFuncName !1693 {
  %2 = tail call fastcc ptr @vrp_val_min(ptr noundef %0) #20
  %3 = tail call fastcc ptr @make_overflow_infinity(ptr noundef %2) #20
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_value_range(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1694 !PGOFuncName !1695 {
  %3 = load i32, ptr %1, align 8, !tbaa !845
  %4 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !851
  %6 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !866
  %8 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef %3, ptr noundef %5, ptr noundef %7, ptr noundef %9) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_with_constant_singleton_value_range(ptr noundef %0) unnamed_addr #0 !prof !844 !PGOFuncName !1696 {
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
  %10 = load i32, ptr %9, align 8, !tbaa !845
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.value_range_d, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !851
  %15 = getelementptr inbounds %struct.value_range_d, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !866
  %17 = tail call i32 @operand_equal_p(ptr noundef %14, ptr noundef %16, i32 noundef 0) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr %13, align 8, !tbaa !851
  %21 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %20) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 8, !tbaa !851
  br label %25

25:                                               ; preds = %8, %12, %19, %4, %1, %23
  %26 = phi ptr [ %24, %23 ], [ %0, %1 ], [ null, %4 ], [ null, %19 ], [ null, %12 ], [ null, %8 ]
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_undefined(ptr nocapture noundef %0) unnamed_addr #0 !prof !844 !PGOFuncName !1697 {
  store i32 0, ptr %0, align 8, !tbaa !845
  %2 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %4 = load ptr, ptr %3, align 8, !tbaa !858
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @bitmap_clear(ptr noundef nonnull %4) #21
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @range_is_null(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !844 !PGOFuncName !1698 {
  %2 = load i32, ptr %0, align 8, !tbaa !845
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !851
  %7 = tail call i32 @integer_zerop(ptr noundef %6) #21
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !866
  %12 = tail call i32 @integer_zerop(ptr noundef %11) #21
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %9, %4, %1
  %16 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %14, %9 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_null(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !844 !PGOFuncName !1699 {
  %3 = tail call ptr @build_int_cst(ptr noundef %1, i64 noundef 0) #21
  %4 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !858
  tail call fastcc void @set_value_range_to_value(ptr noundef %0, ptr noundef %3, ptr noundef %5) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @overflow_infinity_range_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1700 !PGOFuncName !1701 {
  %2 = load i32, ptr %0, align 8, !tbaa !845
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %13, !prof !1702

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !851
  %7 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %6) #20, !range !862
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13, !prof !1702

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !866
  %12 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %11) #20, !range !862
  br label %13

13:                                               ; preds = %4, %9, %1
  %14 = phi i8 [ 0, %1 ], [ 1, %4 ], [ %12, %9 ]
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_value_range_to_truthvalue(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1703 !PGOFuncName !1704 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1023
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %8, !prof !1705

7:                                                ; preds = %2
  tail call fastcc void @set_value_range_to_varying(ptr noundef %0) #20
  br label %13

8:                                                ; preds = %2
  %9 = tail call ptr @build_int_cst(ptr noundef nonnull %1, i64 noundef 0) #21
  %10 = tail call ptr @build_int_cst(ptr noundef nonnull %1, i64 noundef 1) #21
  %11 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef %0, i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %12) #20
  br label %13

13:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vrp_int_const_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1706 !PGOFuncName !1707 {
  %4 = tail call ptr @int_const_binop(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0) #21
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !856
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 2097152
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %28, label %10, !prof !1708

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @compare_values(ptr noundef %4, ptr noundef nonnull %1) #20
  switch i32 %0, label %123 [
    i32 63, label %12
    i32 64, label %14
    i32 65, label %17
  ], !prof !1709

12:                                               ; preds = %10
  %13 = icmp ult i32 %11, 2
  br i1 %13, label %123, label %24

14:                                               ; preds = %10
  %15 = add i32 %11, 1
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %123, label %24

17:                                               ; preds = %10
  %18 = tail call i32 @integer_zerop(ptr noundef nonnull %1) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %123, !prof !1631

20:                                               ; preds = %17
  %21 = tail call ptr @int_const_binop(i32 noundef 67, ptr noundef %4, ptr noundef nonnull %1, i32 noundef 0) #21
  %22 = tail call fastcc i32 @compare_values(ptr noundef %21, ptr noundef %2) #20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %123, label %24, !prof !1710

24:                                               ; preds = %14, %12, %20
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
  %44 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !862
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !862
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %123, label %49

49:                                               ; preds = %46, %43, %39
  %50 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %1) #21
  %51 = freeze i32 %50
  %52 = tail call i32 @tree_int_cst_sgn(ptr noundef %2) #21
  %53 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !856
  %55 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %54) #20, !range !862
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = tail call fastcc zeroext i8 @supports_overflow_infinity(ptr noundef %54) #20, !range !862
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
  %69 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !862
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !862
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
  %77 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !862
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %76
  %80 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !862
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
  %87 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %2) #20, !range !862
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %105, label %114

89:                                               ; preds = %84
  %90 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %2) #20, !range !862
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %114, label %105

92:                                               ; preds = %83
  br i1 %65, label %93, label %101

93:                                               ; preds = %92
  %94 = icmp sgt i32 %51, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %2) #20, !range !862
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %105, label %114

98:                                               ; preds = %93
  %99 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %2) #20, !range !862
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
  %106 = load ptr, ptr %53, align 8, !tbaa !856
  %107 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %106) #20, !range !862
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = tail call fastcc ptr @positive_overflow_infinity(ptr noundef %106) #20
  br label %123

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 14
  %113 = load ptr, ptr %112, align 8, !tbaa !856
  br label %123

114:                                              ; preds = %82, %86, %89, %98, %95, %104
  %115 = load ptr, ptr %53, align 8, !tbaa !856
  %116 = tail call fastcc zeroext i8 @needs_overflow_infinity(ptr noundef %115) #20, !range !862
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = tail call fastcc ptr @negative_overflow_infinity(ptr noundef %115) #20
  br label %123

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.tree_type, ptr %115, i64 0, i32 13
  %122 = load ptr, ptr %121, align 8, !tbaa !856
  br label %123

123:                                              ; preds = %14, %12, %46, %28, %17, %10, %24, %20, %57, %71, %79, %76, %111, %109, %120, %118
  %124 = phi ptr [ null, %57 ], [ null, %71 ], [ null, %79 ], [ null, %76 ], [ %110, %109 ], [ %113, %111 ], [ %119, %118 ], [ %122, %120 ], [ %4, %28 ], [ %4, %46 ], [ %25, %24 ], [ %4, %20 ], [ %4, %10 ], [ %4, %17 ], [ %4, %12 ], [ %4, %14 ]
  ret ptr %124
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_expr_computes_nonnegative(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !844 !PGOFuncName !1711 {
  %3 = tail call zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef %0, ptr noundef %1) #21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @ssa_name_nonnegative_p(ptr noundef nonnull %0) #20, !range !862
  br label %11

11:                                               ; preds = %5, %9, %2
  %12 = phi i8 [ 1, %2 ], [ 0, %5 ], [ %10, %9 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @range_includes_zero_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1712 !PGOFuncName !1713 {
  %2 = load i32, ptr %0, align 8, !tbaa !845
  switch i32 %2, label %3 [
    i32 0, label %6
    i32 3, label %6
  ], !prof !1714

3:                                                ; preds = %1
  %4 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !862
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !1715

6:                                                ; preds = %1, %1, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 1344, ptr noundef nonnull @.str.28) #21
  br label %7

7:                                                ; preds = %3, %6
  %8 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !851
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !856
  %12 = tail call ptr @build_int_cst(ptr noundef %11, i64 noundef 0) #21
  %13 = tail call fastcc i32 @value_inside_range(ptr noundef %12, ptr noundef nonnull %0) #20, !range !1716
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i8
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @abs_extent_range(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !844 !PGOFuncName !1717 {
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
  %15 = load ptr, ptr %14, align 8, !tbaa !856
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65535
  %19 = add nsw i32 %18, -6
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 601, ptr noundef nonnull @.str.28) #21
  %22 = load ptr, ptr %14, align 8, !tbaa !856
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
  %30 = load ptr, ptr %14, align 8, !tbaa !856
  br label %31

31:                                               ; preds = %24, %29
  %32 = phi ptr [ %26, %24 ], [ %30, %29 ]
  %33 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef 82, ptr noundef %32, ptr noundef nonnull %1) #21
  %34 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !856
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
  %54 = load ptr, ptr %53, align 8, !tbaa !856
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
define internal fastcc i32 @value_inside_range(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1718 !PGOFuncName !1719 {
  %3 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !851
  %5 = tail call fastcc i32 @operand_less_p(ptr noundef %0, ptr noundef %4) #20
  switch i32 %5, label %7 [
    i32 -2, label %15
    i32 1, label %6
  ], !prof !1720

6:                                                ; preds = %2
  br label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !866
  %10 = tail call fastcc i32 @operand_less_p(ptr noundef %9, ptr noundef %0) #20
  %11 = icmp eq i32 %10, -2
  br i1 %11, label %15, label %12, !prof !1721

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
define internal fastcc void @vrp_meet(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1722 !PGOFuncName !1723 {
  %3 = load i32, ptr %0, align 8, !tbaa !845
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !1724

5:                                                ; preds = %2
  tail call fastcc void @copy_value_range(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %191

6:                                                ; preds = %2
  %7 = load i32, ptr %1, align 8, !tbaa !845
  %8 = icmp eq i32 %7, 0
  %9 = icmp eq i32 %3, 3
  %10 = or i1 %9, %8
  br i1 %10, label %191, label %11, !prof !1725

11:                                               ; preds = %6
  %12 = icmp eq i32 %7, 3
  br i1 %12, label %13, label %14, !prof !1726

13:                                               ; preds = %11
  tail call fastcc void @set_value_range_to_varying(ptr noundef nonnull %0) #20
  br label %191

14:                                               ; preds = %11
  %15 = icmp eq i32 %3, 1
  %16 = icmp eq i32 %7, 1
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %77, !prof !1727

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !851
  %21 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !851
  %23 = tail call fastcc i32 @compare_values(ptr noundef %20, ptr noundef %22) #20
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %27, label %25, !prof !1728

25:                                               ; preds = %18
  %26 = icmp eq i32 %23, -1
  br i1 %26, label %27, label %147, !prof !1729

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %21, %18 ], [ %19, %25 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !851
  %30 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !866
  %32 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !866
  %34 = tail call fastcc i32 @compare_values(ptr noundef %31, ptr noundef %33) #20
  %35 = add i32 %34, 1
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %39, label %37, !prof !1730

37:                                               ; preds = %27
  %38 = icmp eq i32 %34, 1
  br i1 %38, label %39, label %147, !prof !1731

39:                                               ; preds = %37, %27
  %40 = phi ptr [ %32, %27 ], [ %30, %37 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !866
  %42 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !856
  %44 = load i64, ptr %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 65535
  %47 = add nsw i32 %46, -6
  %48 = icmp ult i32 %47, 3
  br i1 %48, label %49, label %61, !prof !1732

49:                                               ; preds = %39
  %50 = tail call fastcc zeroext i8 @vrp_val_is_min(ptr noundef nonnull %29) #20, !range !862
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55, !prof !1733

52:                                               ; preds = %49
  %53 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %29) #20, !range !862
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %61, label %55, !prof !1734

55:                                               ; preds = %52, %49
  %56 = tail call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %41) #20, !range !862
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %147, !prof !1735

58:                                               ; preds = %55
  %59 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %41) #20, !range !862
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %147, !prof !1736

61:                                               ; preds = %39, %58, %52
  %62 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !858
  %64 = icmp eq ptr %63, null
  br i1 %64, label %74, label %65, !prof !1737

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !858
  %68 = icmp eq ptr %67, null
  %69 = icmp eq ptr %63, %67
  %70 = or i1 %68, %69
  br i1 %70, label %72, label %71, !prof !1738

71:                                               ; preds = %65
  tail call void @bitmap_and_into(ptr noundef nonnull %63, ptr noundef nonnull %67) #21
  br label %74

72:                                               ; preds = %65
  br i1 %68, label %73, label %74, !prof !1739

73:                                               ; preds = %72
  tail call void @bitmap_clear(ptr noundef nonnull %63) #21
  br label %74

74:                                               ; preds = %61, %71, %73, %72
  %75 = load i32, ptr %0, align 8, !tbaa !845
  %76 = load ptr, ptr %62, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef %75, ptr noundef nonnull %29, ptr noundef %41, ptr noundef %76) #20
  br label %191

77:                                               ; preds = %14
  %78 = icmp eq i32 %3, 2
  %79 = icmp eq i32 %7, 2
  br i1 %78, label %80, label %113, !prof !1740

80:                                               ; preds = %77
  br i1 %79, label %81, label %114, !prof !1741

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !851
  %84 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !851
  %86 = tail call fastcc i32 @compare_values(ptr noundef %83, ptr noundef %85) #20
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %147, !prof !1742

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !866
  %91 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !866
  %93 = tail call fastcc i32 @compare_values(ptr noundef %90, ptr noundef %92) #20
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %147, !prof !1743

95:                                               ; preds = %88
  %96 = load ptr, ptr %82, align 8, !tbaa !851
  %97 = load ptr, ptr %89, align 8, !tbaa !866
  %98 = tail call fastcc i32 @compare_values(ptr noundef %96, ptr noundef %97) #20
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %147, !prof !1743

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !858
  %103 = icmp eq ptr %102, null
  br i1 %103, label %191, label %104, !prof !1744

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !858
  %107 = icmp eq ptr %106, null
  %108 = icmp eq ptr %102, %106
  %109 = or i1 %107, %108
  br i1 %109, label %111, label %110, !prof !1745

110:                                              ; preds = %104
  tail call void @bitmap_and_into(ptr noundef nonnull %102, ptr noundef nonnull %106) #21
  br label %191

111:                                              ; preds = %104
  br i1 %107, label %112, label %191

112:                                              ; preds = %111
  tail call void @bitmap_clear(ptr noundef nonnull %102) #21
  br label %191

113:                                              ; preds = %77
  br i1 %79, label %114, label %146, !prof !1746

114:                                              ; preds = %80, %113
  %115 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !862
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %147, !prof !1747

117:                                              ; preds = %114
  %118 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %1) #20, !range !862
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %147, !prof !1747

120:                                              ; preds = %117
  %121 = tail call fastcc zeroext i8 @value_ranges_intersect_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #20, !range !862
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %147, !prof !1748

123:                                              ; preds = %120
  %124 = load i32, ptr %1, align 8, !tbaa !845
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %133, !prof !1749

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !851
  %129 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !866
  %131 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %128, ptr noundef %130, ptr noundef %132) #20
  br label %133

133:                                              ; preds = %126, %123
  %134 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !858
  %136 = icmp eq ptr %135, null
  br i1 %136, label %191, label %137, !prof !1750

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !858
  %140 = icmp eq ptr %139, null
  %141 = icmp eq ptr %135, %139
  %142 = or i1 %140, %141
  br i1 %142, label %144, label %143, !prof !1751

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
  %148 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %0) #20, !range !862
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %190, !prof !1752

150:                                              ; preds = %147
  %151 = load i32, ptr %0, align 8, !tbaa !845
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %158, !prof !1753

153:                                              ; preds = %150
  %154 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %0) #20, !range !862
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %164, label %156, !prof !1754

156:                                              ; preds = %153
  %157 = load i32, ptr %0, align 8, !tbaa !845
  br label %158

158:                                              ; preds = %156, %150
  %159 = phi i32 [ %157, %156 ], [ %151, %150 ]
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %190, !prof !1755

161:                                              ; preds = %158
  %162 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %0) #20, !range !862
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %190, label %164, !prof !1756

164:                                              ; preds = %161, %153
  %165 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %1) #20, !range !862
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %190, !prof !1757

167:                                              ; preds = %164
  %168 = load i32, ptr %1, align 8, !tbaa !845
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %175, !prof !1758

170:                                              ; preds = %167
  %171 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %1) #20, !range !862
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %181, label %173, !prof !1759

173:                                              ; preds = %170
  %174 = load i32, ptr %1, align 8, !tbaa !845
  br label %175

175:                                              ; preds = %173, %167
  %176 = phi i32 [ %174, %173 ], [ %168, %167 ]
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %190, !prof !1760

178:                                              ; preds = %175
  %179 = tail call fastcc zeroext i8 @range_includes_zero_p(ptr noundef nonnull %1) #20, !range !862
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %190, label %181, !prof !1761

181:                                              ; preds = %178, %170
  %182 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !851
  %184 = getelementptr inbounds %struct.tree_common, ptr %183, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !856
  tail call fastcc void @set_value_range_to_nonnull(ptr noundef nonnull %0, ptr noundef %185) #20
  %186 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !858
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
define internal fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4, ptr noundef writeonly %5) unnamed_addr #0 !prof !1762 !PGOFuncName !1763 {
  %7 = icmp eq ptr %5, null
  br i1 %7, label %9, label %8, !prof !1764

8:                                                ; preds = %6
  store i8 1, ptr %5, align 1, !tbaa !856
  br label %9

9:                                                ; preds = %8, %6
  %10 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !856
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %38 [
    i16 6, label %14
    i16 7, label %14
    i16 8, label %14
    i16 10, label %14
    i16 12, label %14
  ], !prof !1765

14:                                               ; preds = %9, %9, %9, %9, %9
  %15 = icmp eq i8 %3, 0
  br i1 %15, label %36, label %16, !prof !1764

16:                                               ; preds = %14
  br i1 %7, label %20, label %17, !prof !1766

17:                                               ; preds = %16
  %18 = tail call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %4) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %38, !prof !1767

20:                                               ; preds = %17, %16
  store i8 0, ptr %5, align 1, !tbaa !856
  %21 = load i64, ptr %1, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 141
  %24 = load i64, ptr %2, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %23, label %27, label %32, !prof !1768

27:                                               ; preds = %20
  br i1 %26, label %28, label %30, !prof !1769

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
define internal fastcc ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1762 !PGOFuncName !1770 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !1771

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %1) #20
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  %12 = load i64, ptr %2, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %17, label %15, !prof !1772

15:                                               ; preds = %10
  %16 = icmp ne ptr %11, null
  br label %24

17:                                               ; preds = %10
  %18 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %2) #20
  %19 = icmp ne ptr %11, null
  %20 = icmp ne ptr %18, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %24, !prof !1773

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @compare_ranges(i32 noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %18, ptr noundef %3) #20
  br label %38

24:                                               ; preds = %15, %17
  %25 = phi i1 [ false, %15 ], [ %20, %17 ]
  %26 = phi i1 [ %16, %15 ], [ %19, %17 ]
  %27 = phi ptr [ null, %15 ], [ %18, %17 ]
  %28 = icmp eq ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %32, !prof !1774

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
define internal fastcc ptr @compare_names(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !1775 !PGOFuncName !1776 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !858
  %15 = tail call fastcc ptr @get_value_range(ptr noundef %2) #20
  %16 = getelementptr inbounds %struct.value_range_d, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !858
  %18 = load ptr, ptr @compare_names.s_obstack, align 8, !tbaa !852
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !1777

20:                                               ; preds = %4
  %21 = load ptr, ptr @compare_names.s_e2, align 8
  br label %28

22:                                               ; preds = %4
  %23 = tail call ptr @xmalloc(i64 noundef 104) #21
  store ptr %23, ptr @compare_names.s_obstack, align 8, !tbaa !852
  tail call void @bitmap_obstack_initialize(ptr noundef %23) #21
  %24 = load ptr, ptr @compare_names.s_obstack, align 8, !tbaa !852
  %25 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef %24) #21
  store ptr %25, ptr @compare_names.s_e1, align 8, !tbaa !852
  %26 = load ptr, ptr @compare_names.s_obstack, align 8, !tbaa !852
  %27 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef %26) #21
  store ptr %27, ptr @compare_names.s_e2, align 8, !tbaa !852
  br label %28

28:                                               ; preds = %20, %22
  %29 = phi ptr [ %21, %20 ], [ %27, %22 ]
  %30 = icmp eq ptr %14, null
  %31 = load ptr, ptr @compare_names.s_e1, align 8
  %32 = select i1 %30, ptr %31, ptr %14, !prof !1778
  %33 = icmp eq ptr %17, null
  %34 = select i1 %33, ptr %29, ptr %17, !prof !1778
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !856
  %37 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %32, i32 noundef %36) #21
  %38 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %39 = load i32, ptr %38, align 8, !tbaa !856
  %40 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %34, i32 noundef %39) #21
  %41 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef %32, ptr noundef %34) #21
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %55, label %43, !prof !1778

43:                                               ; preds = %28
  %44 = load i32, ptr %35, align 8, !tbaa !856
  %45 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %44) #21
  %46 = load i32, ptr %38, align 8, !tbaa !856
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
  %56 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %7) #20, !range !862
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %104, label %58, !prof !1779

58:                                               ; preds = %55, %100
  %59 = phi i32 [ %101, %100 ], [ -1, %55 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #22
  %60 = load i32, ptr %7, align 4, !tbaa !873
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %9, i32 noundef %60) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %34, ptr noundef nonnull %8) #20
  %61 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %8) #20, !range !862
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %100, label %63, !prof !1779

63:                                               ; preds = %58, %84
  %64 = phi i32 [ %86, %84 ], [ %59, %58 ]
  %65 = phi ptr [ %85, %84 ], [ null, %58 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  store i8 0, ptr %10, align 1, !tbaa !856
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #22
  %66 = load i32, ptr %8, align 4, !tbaa !873
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %11, i32 noundef %66) #20
  %67 = call fastcc ptr @compare_ranges(i32 noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10) #20
  %68 = icmp eq ptr %67, null
  br i1 %68, label %84, label %69, !prof !1778

69:                                               ; preds = %63
  %70 = icmp eq ptr %65, null
  %71 = icmp eq ptr %67, %65
  %72 = or i1 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i8, ptr %10, align 1, !tbaa !856
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = icmp slt i32 %64, 0
  %78 = select i1 %77, i32 1, i32 %64
  br label %84

79:                                               ; preds = %69
  %80 = load i32, ptr %35, align 8, !tbaa !856
  %81 = call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %80) #21
  %82 = load i32, ptr %38, align 8, !tbaa !856
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
  %87 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %8) #20, !range !862
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %63, !prof !1780, !llvm.loop !1781

89:                                               ; preds = %84
  %90 = icmp eq ptr %85, null
  br i1 %90, label %100, label %91, !prof !1782

91:                                               ; preds = %89
  %92 = load i32, ptr %35, align 8, !tbaa !856
  %93 = call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %92) #21
  %94 = load i32, ptr %38, align 8, !tbaa !856
  %95 = call zeroext i8 @bitmap_clear_bit(ptr noundef %34, i32 noundef %94) #21
  %96 = icmp sgt i32 %86, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i8 1, ptr %3, align 1, !tbaa !856
  br label %98

98:                                               ; preds = %79, %97, %91
  %99 = phi ptr [ %85, %91 ], [ %85, %97 ], [ null, %79 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #22
  br label %109

100:                                              ; preds = %58, %89
  %101 = phi i32 [ %86, %89 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #22
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %7) #20
  %102 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %7) #20, !range !862
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %58, !prof !1780, !llvm.loop !1783

104:                                              ; preds = %100, %55
  %105 = load i32, ptr %35, align 8, !tbaa !856
  %106 = call zeroext i8 @bitmap_clear_bit(ptr noundef %32, i32 noundef %105) #21
  %107 = load i32, ptr %38, align 8, !tbaa !856
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
define internal fastcc ptr @compare_name_with_value(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !1784 !PGOFuncName !1785 {
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
  %11 = load ptr, ptr %10, align 8, !tbaa !858
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !856
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %8, i32 noundef %13) #20
  store i8 0, ptr %7, align 1, !tbaa !856
  %14 = call fastcc ptr @compare_range_with_value(i32 noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %7) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18, !prof !1786

16:                                               ; preds = %4
  %17 = icmp eq ptr %11, null
  br i1 %17, label %57, label %24, !prof !1787

18:                                               ; preds = %4
  %19 = load i8, ptr %7, align 1, !tbaa !856
  %20 = icmp ne i8 %19, 0
  %21 = zext i1 %20 to i32
  %22 = icmp eq ptr %11, null
  br i1 %22, label %23, label %24, !prof !1787

23:                                               ; preds = %18
  br i1 %20, label %55, label %57

24:                                               ; preds = %18, %16
  %25 = phi i32 [ %21, %18 ], [ -1, %16 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %6) #20
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !862
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %49, label %28, !prof !1788

28:                                               ; preds = %24, %44
  %29 = phi i32 [ %46, %44 ], [ %25, %24 ]
  %30 = phi ptr [ %45, %44 ], [ %14, %24 ]
  %31 = load i32, ptr %6, align 4, !tbaa !873
  call fastcc void @get_vr_for_comparison(ptr dead_on_unwind nonnull writable sret(%struct.value_range_d) align 8 %8, i32 noundef %31) #20
  store i8 0, ptr %7, align 1, !tbaa !856
  %32 = call fastcc ptr @compare_range_with_value(i32 noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef nonnull %7) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34, !prof !1789

34:                                               ; preds = %28
  %35 = icmp eq ptr %30, null
  %36 = icmp eq ptr %32, %30
  %37 = or i1 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i8, ptr %7, align 1, !tbaa !856
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = icmp slt i32 %29, 0
  %43 = select i1 %42, i32 1, i32 %29
  br label %44

44:                                               ; preds = %38, %28, %41
  %45 = phi ptr [ %32, %41 ], [ %30, %28 ], [ %32, %38 ]
  %46 = phi i32 [ %43, %41 ], [ %29, %28 ], [ 0, %38 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %47 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !862
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %28, !prof !1790, !llvm.loop !1791

49:                                               ; preds = %44, %24
  %50 = phi ptr [ %14, %24 ], [ %45, %44 ]
  %51 = phi i32 [ %25, %24 ], [ %46, %44 ]
  %52 = icmp eq ptr %50, null
  br i1 %52, label %57, label %53, !prof !1792

53:                                               ; preds = %49
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %53, %23
  %56 = phi ptr [ %14, %23 ], [ %50, %53 ]
  store i8 1, ptr %3, align 1, !tbaa !856
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
define internal fastcc ptr @compare_ranges(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !prof !1793 !PGOFuncName !1794 {
  %5 = load i32, ptr %1, align 8, !tbaa !845
  switch i32 %5, label %6 [
    i32 3, label %193
    i32 0, label %193
  ], !prof !1795

6:                                                ; preds = %4
  %7 = load i32, ptr %2, align 8, !tbaa !845
  switch i32 %7, label %8 [
    i32 3, label %193
    i32 0, label %193
  ], !prof !1796

8:                                                ; preds = %6
  %9 = icmp eq i32 %5, 2
  %10 = icmp eq i32 %7, 2
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %44, !prof !1797

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
  %28 = load ptr, ptr %27, align 8, !tbaa !851
  %29 = getelementptr inbounds %struct.value_range_d, ptr %20, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !851
  %31 = tail call fastcc i32 @compare_values_warnv(ptr noundef %28, ptr noundef %30, ptr noundef %3) #20
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %193

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.value_range_d, ptr %21, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !866
  %36 = getelementptr inbounds %struct.value_range_d, ptr %20, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !866
  %38 = tail call fastcc i32 @compare_values_warnv(ptr noundef %35, ptr noundef %37, ptr noundef %3) #20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %193

40:                                               ; preds = %33
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %43 = select i1 %22, ptr %41, ptr %42
  br label %193

44:                                               ; preds = %8
  %45 = tail call fastcc zeroext i8 @usable_range_p(ptr noundef nonnull %1, ptr noundef %3) #20, !range !862
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %193, label %47, !prof !1798

47:                                               ; preds = %44
  %48 = tail call fastcc zeroext i8 @usable_range_p(ptr noundef nonnull %2, ptr noundef %3) #20, !range !862
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %193, label %50, !prof !1798

50:                                               ; preds = %47
  %51 = add i32 %0, -99
  %52 = icmp ult i32 %51, 2
  %53 = icmp eq i32 %0, 99
  %54 = select i1 %53, i32 97, i32 98
  %55 = select i1 %52, ptr %1, ptr %2, !prof !1797
  %56 = select i1 %52, ptr %2, ptr %1, !prof !1797
  %57 = select i1 %52, i32 %54, i32 %0, !prof !1797
  switch i32 %57, label %146 [
    i32 101, label %58
    i32 102, label %104
  ], !prof !1796

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !851
  %61 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !866
  %63 = tail call fastcc i32 @compare_values_warnv(ptr noundef %60, ptr noundef %62, ptr noundef %3) #20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !851
  %68 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !866
  %70 = tail call fastcc i32 @compare_values_warnv(ptr noundef %67, ptr noundef %69, ptr noundef %3) #20
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  %73 = load ptr, ptr %59, align 8, !tbaa !851
  %74 = load ptr, ptr %66, align 8, !tbaa !851
  %75 = tail call fastcc i32 @compare_values_warnv(ptr noundef %73, ptr noundef %74, ptr noundef %3) #20
  %76 = load ptr, ptr %61, align 8, !tbaa !866
  %77 = load ptr, ptr %68, align 8, !tbaa !866
  %78 = tail call fastcc i32 @compare_values_warnv(ptr noundef %76, ptr noundef %77, ptr noundef %3) #20
  %79 = icmp eq i32 %75, 0
  %80 = icmp eq i32 %78, 0
  %81 = select i1 %79, i1 %80, i1 false
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !852
  br label %193

84:                                               ; preds = %72
  %85 = icmp eq i32 %75, -2
  %86 = icmp eq i32 %78, -2
  %87 = select i1 %85, i1 true, i1 %86
  %88 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  br i1 %87, label %103, label %193

89:                                               ; preds = %65, %58
  %90 = load ptr, ptr %59, align 8, !tbaa !851
  %91 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !866
  %93 = tail call fastcc i32 @compare_values_warnv(ptr noundef %90, ptr noundef %92, ptr noundef %3) #20
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %101, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !851
  %98 = load ptr, ptr %61, align 8, !tbaa !866
  %99 = tail call fastcc i32 @compare_values_warnv(ptr noundef %97, ptr noundef %98, ptr noundef %3) #20
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %103

101:                                              ; preds = %95, %89
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !852
  br label %193

103:                                              ; preds = %84, %95
  br label %193

104:                                              ; preds = %50
  %105 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !866
  %107 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !851
  %109 = tail call fastcc i32 @compare_values_warnv(ptr noundef %106, ptr noundef %108, ptr noundef %3) #20
  %110 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !851
  %112 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !866
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
  %123 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !852
  br label %193

124:                                              ; preds = %118
  %125 = load ptr, ptr %110, align 8, !tbaa !851
  %126 = load ptr, ptr %105, align 8, !tbaa !866
  %127 = tail call fastcc i32 @compare_values_warnv(ptr noundef %125, ptr noundef %126, ptr noundef %3) #20
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %193

129:                                              ; preds = %124
  %130 = load ptr, ptr %107, align 8, !tbaa !851
  %131 = load ptr, ptr %112, align 8, !tbaa !866
  %132 = tail call fastcc i32 @compare_values_warnv(ptr noundef %130, ptr noundef %131, ptr noundef %3) #20
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %193

134:                                              ; preds = %129
  %135 = load ptr, ptr %110, align 8, !tbaa !851
  %136 = load ptr, ptr %107, align 8, !tbaa !851
  %137 = tail call fastcc i32 @compare_values_warnv(ptr noundef %135, ptr noundef %136, ptr noundef %3) #20
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %193

139:                                              ; preds = %134
  %140 = load ptr, ptr %105, align 8, !tbaa !866
  %141 = load ptr, ptr %112, align 8, !tbaa !866
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
  br i1 %150, label %151, label %192, !prof !1799

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !866
  %154 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !851
  %156 = tail call fastcc i32 @compare_values_warnv(ptr noundef %153, ptr noundef %155, ptr noundef %3) #20
  %157 = icmp eq i32 %156, -1
  %158 = select i1 %147, i1 %157, i1 false
  br i1 %158, label %163, label %159, !prof !1800

159:                                              ; preds = %151
  %160 = add i32 %156, 1
  %161 = icmp ult i32 %160, 2
  %162 = select i1 %148, i1 %161, i1 false
  br i1 %162, label %163, label %172, !prof !1801

163:                                              ; preds = %159, %151
  %164 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %56) #20, !range !862
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %55) #20, !range !862
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %166, %163
  store i8 1, ptr %3, align 1, !tbaa !856
  br label %170

170:                                              ; preds = %169, %166
  %171 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !852
  br label %193

172:                                              ; preds = %159
  %173 = getelementptr inbounds %struct.value_range_d, ptr %56, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !851
  %175 = getelementptr inbounds %struct.value_range_d, ptr %55, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !866
  %177 = tail call fastcc i32 @compare_values_warnv(ptr noundef %174, ptr noundef %176, ptr noundef %3) #20
  %178 = icmp ult i32 %177, 2
  %179 = select i1 %147, i1 %178, i1 false
  %180 = icmp eq i32 %177, 1
  %181 = select i1 %148, i1 %180, i1 false
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %183, label %193, !prof !1802

183:                                              ; preds = %172
  %184 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %56) #20, !range !862
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %55) #20, !range !862
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %186, %183
  store i8 1, ptr %3, align 1, !tbaa !856
  br label %190

190:                                              ; preds = %189, %186
  %191 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !852
  br label %193

192:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3488, ptr noundef nonnull @.str.28) #21
  br label %193

193:                                              ; preds = %82, %139, %170, %190, %172, %122, %134, %129, %124, %84, %44, %47, %26, %33, %17, %15, %4, %4, %6, %6, %192, %103, %101, %40
  %194 = phi ptr [ %43, %40 ], [ %88, %84 ], [ null, %103 ], [ %102, %101 ], [ null, %192 ], [ null, %6 ], [ null, %6 ], [ null, %4 ], [ null, %4 ], [ null, %15 ], [ null, %17 ], [ null, %33 ], [ null, %26 ], [ null, %47 ], [ null, %44 ], [ %123, %122 ], [ null, %134 ], [ null, %129 ], [ null, %124 ], [ %171, %170 ], [ %191, %190 ], [ null, %172 ], [ %145, %139 ], [ %83, %82 ]
  ret ptr %194
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @compare_range_with_value(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !1803 !PGOFuncName !1804 {
  %5 = load i32, ptr %1, align 8, !tbaa !845
  switch i32 %5, label %17 [
    i32 3, label %143
    i32 0, label %143
    i32 2, label %6
  ], !prof !1805

6:                                                ; preds = %4
  %7 = add i32 %0, -97
  %8 = icmp ult i32 %7, 4
  br i1 %8, label %143, label %9, !prof !1806

9:                                                ; preds = %6
  %10 = tail call fastcc i32 @value_inside_range(ptr noundef %2, ptr noundef nonnull %1) #20, !range !1716
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %143, !prof !1807

12:                                               ; preds = %9
  %13 = icmp eq i32 %0, 102
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %16 = select i1 %13, ptr %14, ptr %15, !prof !1808
  br label %143

17:                                               ; preds = %4
  %18 = tail call fastcc zeroext i8 @usable_range_p(ptr noundef nonnull %1, ptr noundef %3) #20, !range !862
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %143, label %20, !prof !1809

20:                                               ; preds = %17
  switch i32 %0, label %71 [
    i32 101, label %21
    i32 102, label %48
  ], !prof !1810

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !851
  %24 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !866
  %26 = tail call fastcc i32 @compare_values_warnv(ptr noundef %23, ptr noundef %25, ptr noundef %3) #20
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr %22, align 8, !tbaa !851
  br i1 %27, label %29, label %39, !prof !1811

29:                                               ; preds = %21
  %30 = tail call fastcc i32 @compare_values_warnv(ptr noundef %28, ptr noundef %2, ptr noundef %3) #20
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34, !prof !1812

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !852
  br label %143

34:                                               ; preds = %29
  %35 = add i32 %30, 1
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %37, label %143, !prof !1813

37:                                               ; preds = %34
  %38 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !852
  br label %143

39:                                               ; preds = %21
  %40 = tail call fastcc i32 @compare_values_warnv(ptr noundef %2, ptr noundef %28, ptr noundef %3) #20
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %46, label %42, !prof !1814

42:                                               ; preds = %39
  %43 = load ptr, ptr %24, align 8, !tbaa !866
  %44 = tail call fastcc i32 @compare_values_warnv(ptr noundef %43, ptr noundef %2, ptr noundef %3) #20
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %143, !prof !1815

46:                                               ; preds = %42, %39
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !852
  br label %143

48:                                               ; preds = %20
  %49 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !866
  %51 = tail call fastcc i32 @compare_values_warnv(ptr noundef %50, ptr noundef %2, ptr noundef %3) #20
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %58, label %53, !prof !1816

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !851
  %56 = tail call fastcc i32 @compare_values_warnv(ptr noundef %55, ptr noundef %2, ptr noundef %3) #20
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %60, !prof !1817

58:                                               ; preds = %53, %48
  %59 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !852
  br label %143

60:                                               ; preds = %53
  %61 = load ptr, ptr %54, align 8, !tbaa !851
  %62 = load ptr, ptr %49, align 8, !tbaa !866
  %63 = tail call fastcc i32 @compare_values_warnv(ptr noundef %61, ptr noundef %62, ptr noundef %3) #20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %143, !prof !1818

65:                                               ; preds = %60
  %66 = load ptr, ptr %54, align 8, !tbaa !851
  %67 = tail call fastcc i32 @compare_values_warnv(ptr noundef %66, ptr noundef %2, ptr noundef %3) #20
  %68 = icmp eq i32 %67, 0
  %69 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8
  %70 = select i1 %68, ptr %69, ptr null, !prof !1819
  br label %143

71:                                               ; preds = %20
  %72 = add i32 %0, -97
  %73 = icmp ult i32 %72, 2
  br i1 %73, label %74, label %106, !prof !1820

74:                                               ; preds = %71
  %75 = icmp eq i32 %0, 97
  %76 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !866
  %78 = tail call fastcc i32 @compare_values_warnv(ptr noundef %77, ptr noundef %2, ptr noundef %3) #20
  br i1 %75, label %79, label %81, !prof !1821

79:                                               ; preds = %74
  %80 = icmp eq i32 %78, -1
  br i1 %80, label %84, label %90, !prof !1822

81:                                               ; preds = %74
  %82 = add i32 %78, 1
  %83 = icmp ult i32 %82, 2
  br i1 %83, label %84, label %95, !prof !1823

84:                                               ; preds = %81, %79
  %85 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !862
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87, !prof !1824

87:                                               ; preds = %84
  store i8 1, ptr %3, align 1, !tbaa !856
  br label %88

88:                                               ; preds = %87, %84
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !852
  br label %143

90:                                               ; preds = %79
  %91 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !851
  %93 = tail call fastcc i32 @compare_values_warnv(ptr noundef %92, ptr noundef %2, ptr noundef %3) #20
  %94 = icmp ult i32 %93, 2
  br i1 %94, label %100, label %143, !prof !1825

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !851
  %98 = tail call fastcc i32 @compare_values_warnv(ptr noundef %97, ptr noundef %2, ptr noundef %3) #20
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %143, !prof !1826

100:                                              ; preds = %95, %90
  %101 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !862
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store i8 1, ptr %3, align 1, !tbaa !856
  br label %104

104:                                              ; preds = %103, %100
  %105 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !852
  br label %143

106:                                              ; preds = %71
  %107 = icmp eq i32 %0, 99
  %108 = icmp eq i32 %0, 100
  %109 = add i32 %0, -99
  %110 = icmp ult i32 %109, 2
  br i1 %110, label %111, label %142, !prof !1827

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !851
  %114 = tail call fastcc i32 @compare_values_warnv(ptr noundef %113, ptr noundef %2, ptr noundef %3) #20
  %115 = icmp eq i32 %114, 1
  %116 = select i1 %107, i1 %115, i1 false
  %117 = icmp ult i32 %114, 2
  %118 = select i1 %108, i1 %117, i1 false
  %119 = select i1 %116, i1 true, i1 %118
  br i1 %119, label %120, label %126, !prof !1828

120:                                              ; preds = %111
  %121 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !862
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %124, label %123, !prof !1829

123:                                              ; preds = %120
  store i8 1, ptr %3, align 1, !tbaa !856
  br label %124

124:                                              ; preds = %123, %120
  %125 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !852
  br label %143

126:                                              ; preds = %111
  %127 = getelementptr inbounds %struct.value_range_d, ptr %1, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !866
  %129 = tail call fastcc i32 @compare_values_warnv(ptr noundef %128, ptr noundef %2, ptr noundef %3) #20
  %130 = add i32 %129, 1
  %131 = icmp ult i32 %130, 2
  %132 = select i1 %107, i1 %131, i1 false
  %133 = icmp eq i32 %129, -1
  %134 = select i1 %108, i1 %133, i1 false
  %135 = select i1 %132, i1 true, i1 %134
  br i1 %135, label %136, label %143, !prof !1830

136:                                              ; preds = %126
  %137 = tail call fastcc zeroext i8 @overflow_infinity_range_p(ptr noundef nonnull %1) #20, !range !862
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  store i8 1, ptr %3, align 1, !tbaa !856
  br label %140

140:                                              ; preds = %139, %136
  %141 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !852
  br label %143

142:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 3620, ptr noundef nonnull @.str.28) #21
  br label %143

143:                                              ; preds = %37, %32, %42, %34, %65, %124, %140, %126, %88, %104, %90, %95, %60, %17, %9, %6, %4, %4, %142, %58, %46, %12
  %144 = phi ptr [ %16, %12 ], [ %47, %46 ], [ %59, %58 ], [ null, %142 ], [ null, %4 ], [ null, %4 ], [ null, %6 ], [ null, %9 ], [ null, %17 ], [ null, %60 ], [ %89, %88 ], [ %105, %104 ], [ null, %90 ], [ null, %95 ], [ %125, %124 ], [ %141, %140 ], [ null, %126 ], [ %70, %65 ], [ null, %34 ], [ null, %42 ], [ %38, %37 ], [ %33, %32 ]
  ret ptr %144
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @usable_range_p(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !1831 !PGOFuncName !1832 {
  %3 = load i32, ptr %0, align 8, !tbaa !845
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %6, label %5, !prof !1833

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 796, ptr noundef nonnull @.str.28) #21
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !851
  %9 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %8) #20, !range !862
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %27, label %11, !prof !1833

11:                                               ; preds = %6
  store i8 1, ptr %1, align 1, !tbaa !856
  %12 = load ptr, ptr %7, align 8, !tbaa !851
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !856
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
  %29 = load ptr, ptr %28, align 8, !tbaa !866
  %30 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %29) #20, !range !862
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %48, label %32, !prof !1833

32:                                               ; preds = %27
  store i8 1, ptr %1, align 1, !tbaa !856
  %33 = load ptr, ptr %28, align 8, !tbaa !866
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !856
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
define internal fastcc void @get_vr_for_comparison(ptr dead_on_unwind noalias nocapture writable sret(%struct.value_range_d) align 8 %0, i32 noundef %1) unnamed_addr #15 !prof !1834 !PGOFuncName !1835 {
  %3 = load ptr, ptr @vr_value, align 8, !tbaa !852
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !852
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !1050
  %7 = load i32, ptr %0, align 8
  switch i32 %7, label %17 [
    i32 3, label %8
    i32 0, label %8
  ]

8:                                                ; preds = %2, %2
  store i32 1, ptr %0, align 8, !tbaa !845
  %9 = load ptr, ptr @cfun, align 8, !tbaa !852
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !867
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !869
  %14 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %13, i32 noundef %1) #20
  %15 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !851
  %16 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  store ptr %14, ptr %16, align 8, !tbaa !866
  br label %17

17:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_operand_equal_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1836 !PGOFuncName !1837 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %16, label %4, !prof !1838

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %16, !prof !1839

8:                                                ; preds = %4
  %9 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !1840

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %0) #20, !range !862
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef nonnull %1) #20, !range !862
  br label %16

16:                                               ; preds = %11, %4, %8, %2, %14
  %17 = phi i8 [ %15, %14 ], [ 1, %2 ], [ 0, %8 ], [ 0, %4 ], [ 1, %11 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vrp_bitmap_equal_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1841 !PGOFuncName !1842 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %12, label %4, !prof !1843

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %12, !prof !1844

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
define internal fastcc zeroext i8 @find_case_label_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !844 !PGOFuncName !1845 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %8 = call fastcc zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef 1, ptr noundef %1, ptr noundef nonnull %6) #20
  %9 = load i64, ptr %6, align 8, !tbaa !904
  %10 = call fastcc zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef %9, ptr noundef %2, ptr noundef nonnull %7) #20
  %11 = load i64, ptr %7, align 8, !tbaa !904
  %12 = icmp eq i64 %9, %11
  %13 = or i8 %10, %8
  %14 = icmp eq i8 %13, 0
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i64 1, ptr %3, align 8, !tbaa !904
  store i64 0, ptr %4, align 8, !tbaa !904
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
  %26 = load ptr, ptr %25, align 8, !tbaa !856
  %27 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %23) #20
  %28 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !856
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %17
  %32 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %23) #20
  %33 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !856
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
  %45 = load ptr, ptr %44, align 8, !tbaa !856
  %46 = tail call ptr @int_const_binop(i32 noundef 64, ptr noundef %45, ptr noundef %41, i32 noundef 0) #21
  %47 = tail call i32 @integer_onep(ptr noundef %46) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %39
  %50 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %42) #20
  %51 = getelementptr inbounds %struct.tree_exp, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !856
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %42) #20
  %56 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !856
  br label %58

58:                                               ; preds = %49, %54
  %59 = phi ptr [ %57, %54 ], [ %45, %49 ]
  %60 = add i64 %40, 1
  %61 = icmp ugt i64 %60, %22
  br i1 %61, label %62, label %39, !llvm.loop !1846

62:                                               ; preds = %58, %39, %35
  %63 = phi i1 [ %20, %35 ], [ true, %39 ], [ %20, %58 ]
  store i64 %9, ptr %3, align 8, !tbaa !904
  store i64 %22, ptr %4, align 8, !tbaa !904
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
define internal fastcc noundef zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !prof !844 !PGOFuncName !1847 {
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
  %16 = load ptr, ptr %15, align 8, !tbaa !856
  %17 = tail call i32 @tree_int_cst_compare(ptr noundef %16, ptr noundef %2) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %8
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %19
  %22 = add nuw i64 %12, 1
  %23 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !856
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
  br i1 %32, label %33, label %8, !llvm.loop !1848

33:                                               ; preds = %29, %26, %8, %4
  %34 = phi i64 [ %1, %4 ], [ %12, %8 ], [ %12, %26 ], [ %30, %29 ]
  %35 = phi i8 [ 0, %4 ], [ 1, %8 ], [ 1, %26 ], [ 0, %29 ]
  store i64 %34, ptr %3, align 8, !tbaa !904
  ret i8 %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #8 !prof !1849 !PGOFuncName !1850 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %4 = load ptr, ptr %3, align 8, !tbaa !1269
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #20
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !1042 !PGOFuncName !1851 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !1056

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !1852
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_range_with_scev(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !844 !PGOFuncName !1853 {
  %5 = load i32, ptr %0, align 8, !tbaa !845
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
  %14 = load ptr, ptr %13, align 8, !tbaa !858
  tail call fastcc void @set_value_range_to_value(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %14) #20
  br label %105

15:                                               ; preds = %7
  %16 = load i64, ptr %9, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 146
  br i1 %18, label %19, label %105

19:                                               ; preds = %15
  %20 = load i32, ptr %1, align 8, !tbaa !1854
  %21 = tail call ptr @initial_condition_in_loop_num(ptr noundef nonnull %9, i32 noundef %20) #21
  %22 = load i32, ptr %1, align 8, !tbaa !1854
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
  %40 = load ptr, ptr %39, align 8, !tbaa !856
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i16
  switch i16 %42, label %43 [
    i16 10, label %47
    i16 12, label %47
  ]

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 13
  %45 = load ptr, ptr %44, align 8, !tbaa !856
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
  %56 = load ptr, ptr %55, align 8, !tbaa !856
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %51, %51, %54
  %59 = tail call ptr @upper_bound_in_type(ptr noundef nonnull %40, ptr noundef nonnull %40) #21
  br label %60

60:                                               ; preds = %54, %58
  %61 = phi ptr [ %59, %58 ], [ %56, %54 ]
  %62 = load i32, ptr %0, align 8, !tbaa !845
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
  %71 = load ptr, ptr %70, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %65, ptr noundef %66, ptr noundef %71) #20
  br label %105

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !851
  %75 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !866
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
  %86 = tail call fastcc zeroext i8 @is_negative_overflow_infinity(ptr noundef %74) #20, !range !862
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
  %97 = tail call fastcc zeroext i8 @is_positive_overflow_infinity(ptr noundef %76) #20, !range !862
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %98, ptr %76, ptr %61
  br label %100

100:                                              ; preds = %95, %84
  %101 = phi ptr [ %88, %84 ], [ %96, %95 ]
  %102 = phi ptr [ %85, %84 ], [ %99, %95 ]
  %103 = getelementptr inbounds %struct.value_range_d, ptr %0, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !858
  tail call fastcc void @set_value_range(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %101, ptr noundef %102, ptr noundef %104) #20
  br label %105

105:                                              ; preds = %69, %100, %60, %92, %81, %63, %31, %34, %19, %25, %28, %15, %4, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vrp_var_may_overflow(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !844 !PGOFuncName !1855 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !852
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !1055
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
  %20 = load i32, ptr %8, align 8, !tbaa !1854
  %21 = tail call ptr @initial_condition_in_loop_num(ptr noundef nonnull %15, i32 noundef %20) #21
  %22 = load i32, ptr %8, align 8, !tbaa !1854
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
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  tail call void @print_generic_expr(ptr noundef nonnull %36, ptr noundef %0, i32 noundef 0) #21
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %44 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 47, i64 1, ptr %43)
  br label %45

45:                                               ; preds = %35, %38, %42, %31, %19, %25, %28, %13, %7, %10, %2
  %46 = phi i8 [ 1, %2 ], [ 1, %10 ], [ 1, %7 ], [ 1, %13 ], [ 1, %28 ], [ 1, %25 ], [ 1, %19 ], [ 1, %31 ], [ 0, %42 ], [ 0, %38 ], [ 0, %35 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @instantiate_parameters(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !844 !PGOFuncName !1856 {
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
define internal fastcc zeroext i8 @valid_value_p(ptr noundef %0) unnamed_addr #0 !prof !844 !PGOFuncName !1857 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %17 [
    i16 141, label %19
    i16 63, label %4
    i16 64, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !856
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !856
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
define internal fastcc ptr @get_chrec_loop(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !844 !PGOFuncName !1858 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !856
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !856
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
define internal fastcc ptr @block_before_loop(ptr noundef %0) unnamed_addr #0 !prof !844 !PGOFuncName !1859 {
  %2 = tail call ptr @loop_preheader_edge(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !852
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1006
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !852
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #8 !prof !844 !PGOFuncName !1860 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !852
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !1055
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1861
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #20
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !844 !PGOFuncName !1863 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !852
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !844 !PGOFuncName !1864 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1865
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
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !844 !PGOFuncName !1866 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1867
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @substitute_and_fold(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @vrp_fold_stmt(ptr noundef %0) #0 !prof !1869 !PGOFuncName !1870 {
  %2 = tail call fastcc zeroext i8 @fold_predicate_in(ptr noundef %0) #20, !range !862
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6, !prof !1871

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @simplify_stmt_using_ranges(ptr noundef %0) #20
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i8 [ %5, %4 ], [ 1, %1 ]
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_all_array_refs() unnamed_addr #0 !prof !844 !PGOFuncName !1872 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #22
  %5 = load ptr, ptr @cfun, align 8, !tbaa !852
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1006
  %8 = load ptr, ptr %7, align 8, !tbaa !1007
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !1009
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !1010
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
  store i32 0, ptr %2, align 8, !tbaa.struct !1116
  store ptr %19, ptr %15, align 8, !tbaa.struct !1117
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %19, ptr noundef nonnull %3) #20, !range !862
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %65, label %22

22:                                               ; preds = %17, %22
  %23 = phi i8 [ %30, %22 ], [ 0, %17 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !852
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %26 = load i32, ptr %25, align 8, !tbaa !1047
  %27 = lshr i32 %26, 12
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = or i8 %29, %23
  call fastcc void @ei_next(ptr noundef nonnull %2) #20
  %31 = load i32, ptr %2, align 8
  %32 = load ptr, ptr %15, align 8
  %33 = call fastcc zeroext i8 @ei_cond(i32 %31, ptr %32, ptr noundef nonnull %3) #20, !range !862
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %22, !llvm.loop !1873

35:                                               ; preds = %22
  %36 = icmp eq i8 %30, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %35
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %18) #20
  %38 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !862
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %37, %62
  %41 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #22
  %42 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %41) #20, !range !862
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  %45 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %41) #20, !range !862
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
  br i1 %57, label %62, label %51, !llvm.loop !1874

58:                                               ; preds = %44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %59 = call fastcc ptr @gimple_location_ptr(ptr noundef %41) #20
  store ptr %59, ptr %16, align 8, !tbaa !1875
  %60 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  %61 = call ptr @walk_gimple_op(ptr noundef %60, ptr noundef nonnull @check_array_bounds, ptr noundef nonnull %4) #21
  br label %62

62:                                               ; preds = %51, %47, %58, %40
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #22
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  %63 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !862
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %40, label %65, !llvm.loop !1877

65:                                               ; preds = %62, %17, %37, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !1009
  %68 = load ptr, ptr @cfun, align 8, !tbaa !852
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !1006
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !1010
  %73 = icmp eq ptr %67, %72
  br i1 %73, label %74, label %17, !llvm.loop !1878

74:                                               ; preds = %65, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @identify_jump_threads() unnamed_addr #0 !prof !946 !PGOFuncName !1879 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  tail call void @calculate_dominance_info(i32 noundef 1) #21
  %4 = tail call zeroext i8 @mark_dfs_back_edges() #21
  %5 = load ptr, ptr @to_remove_edges, align 8
  %6 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %1) #20, !range !949
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8, !prof !950

8:                                                ; preds = %0, %8
  %9 = phi i32 [ %14, %8 ], [ 0, %0 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !852
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !1047
  %13 = or i32 %12, 32
  store i32 %13, ptr %11, align 8, !tbaa !1047
  %14 = add nuw nsw i32 %9, 1
  %15 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %5, i32 noundef %14, ptr noundef nonnull %1) #20, !range !949
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %8, !prof !951, !llvm.loop !1880

17:                                               ; preds = %8, %0
  %18 = tail call fastcc ptr @VEC_tree_heap_alloc() #20
  store ptr %18, ptr @stack, align 8, !tbaa !852
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !852
  %20 = tail call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %19, ptr noundef %19, ptr noundef null, ptr noundef null) #21
  %21 = load ptr, ptr @cfun, align 8, !tbaa !852
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !1006
  %24 = load ptr, ptr %23, align 8, !tbaa !1007
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !1009
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !1010
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %122, label %30, !prof !1011

30:                                               ; preds = %17
  %31 = getelementptr inbounds i8, ptr %3, i64 8
  br label %32

32:                                               ; preds = %30, %113
  %33 = phi ptr [ %26, %30 ], [ %115, %113 ]
  %34 = tail call zeroext i8 @potentially_threadable_block(ptr noundef %33) #21
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %113, label %36, !prof !1881

36:                                               ; preds = %32
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %33) #20
  %37 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #20
  %38 = tail call fastcc i32 @gimple_code(ptr noundef %37) #20, !range !1036
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %113, !prof !1882

40:                                               ; preds = %36
  %41 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 141
  br i1 %44, label %45, label %113, !prof !1883

45:                                               ; preds = %40
  %46 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !856
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 6
  br i1 %51, label %66, label %52, !prof !1884

52:                                               ; preds = %45
  %53 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !856
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 7
  br i1 %58, label %66, label %59, !prof !1885

59:                                               ; preds = %52
  %60 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %37) #20
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !856
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 8
  br i1 %65, label %66, label %113, !prof !1886

66:                                               ; preds = %59, %52, %45
  %67 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 141
  br i1 %70, label %75, label %71, !prof !1887

71:                                               ; preds = %66
  %72 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %73 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %72) #21
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %113, label %75, !prof !1887

75:                                               ; preds = %71, %66
  %76 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !856
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 6
  br i1 %81, label %96, label %82, !prof !1887

82:                                               ; preds = %75
  %83 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !856
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 7
  br i1 %88, label %96, label %89, !prof !1888

89:                                               ; preds = %82
  %90 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %37) #20
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !856
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 8
  br i1 %95, label %96, label %113, !prof !1889

96:                                               ; preds = %89, %82, %75
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %97 = tail call fastcc ptr @ei_start_1(ptr noundef %33) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !1116
  store ptr %97, ptr %31, align 8, !tbaa.struct !1117
  %98 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %97, ptr noundef nonnull %1) #20, !range !862
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %112, label %100, !prof !1291

100:                                              ; preds = %96, %107
  %101 = load ptr, ptr %1, align 8, !tbaa !852
  %102 = getelementptr inbounds %struct.edge_def, ptr %101, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !1047
  %104 = and i32 %103, 46
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107, !prof !1890

106:                                              ; preds = %100
  tail call void @thread_across_edge(ptr noundef %20, ptr noundef nonnull %101, i8 noundef zeroext 1, ptr noundef nonnull @stack, ptr noundef nonnull @simplify_stmt_for_jump_threading) #21
  br label %107

107:                                              ; preds = %100, %106
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %108 = load i32, ptr %3, align 8
  %109 = load ptr, ptr %31, align 8
  %110 = call fastcc zeroext i8 @ei_cond(i32 %108, ptr %109, ptr noundef nonnull %1) #20, !range !862
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %100, !prof !1891, !llvm.loop !1892

112:                                              ; preds = %107, %96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %113

113:                                              ; preds = %40, %59, %71, %89, %112, %36, %32
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !1009
  %116 = load ptr, ptr @cfun, align 8, !tbaa !852
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !1006
  %119 = getelementptr inbounds %struct.control_flow_graph, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !1010
  %121 = icmp eq ptr %115, %120
  br i1 %121, label %122, label %32, !prof !1025, !llvm.loop !1893

122:                                              ; preds = %113, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fold_predicate_in(ptr noundef %0) unnamed_addr #0 !prof !1869 !PGOFuncName !1894 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !862
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5, !prof !1895

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #20, !range !1079
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !873
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %20, label %11, !prof !1896

11:                                               ; preds = %5, %1
  %12 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !1036
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %58, !prof !1897

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @gimple_cond_code(ptr noundef %2) #20, !range !1079
  %16 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %2) #20
  %17 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %2) #20
  %18 = tail call fastcc ptr @vrp_evaluate_conditional(i32 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %2) #20
  %19 = icmp eq ptr %18, null
  br i1 %19, label %58, label %29, !prof !1898

20:                                               ; preds = %5
  %21 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #20, !range !1079
  %22 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %23 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #20
  %24 = tail call fastcc ptr @vrp_evaluate_conditional(i32 noundef %21, ptr noundef %22, ptr noundef %23, ptr noundef %2) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %58, label %26, !prof !1898

26:                                               ; preds = %20
  %27 = tail call fastcc ptr @gimple_expr_type(ptr noundef %2) #20
  %28 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %27, ptr noundef nonnull %24) #21
  br label %29

29:                                               ; preds = %14, %26
  %30 = phi ptr [ %28, %26 ], [ %18, %14 ]
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33, !prof !1899

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 18, i64 1, ptr nonnull %31)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_gimple_expr(ptr noundef %35, ptr noundef %2, i32 noundef 0, i32 noundef 0) #21
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %37 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 4, i64 1, ptr %36)
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_generic_expr(ptr noundef %38, ptr noundef %30, i32 noundef 0) #21
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %40 = tail call i32 @fputc(i32 10, ptr %39)
  br label %41

41:                                               ; preds = %33, %29
  %42 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !862
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44, !prof !1899

44:                                               ; preds = %41
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %30) #21
  br label %58

45:                                               ; preds = %41
  %46 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !1036
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %49, label %48, !prof !1899

48:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 7056, ptr noundef nonnull @.str.28) #21
  br label %49

49:                                               ; preds = %45, %48
  %50 = tail call i32 @integer_zerop(ptr noundef %30) #21
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52, !prof !1900

52:                                               ; preds = %49
  tail call fastcc void @gimple_cond_make_false(ptr noundef %2) #20
  br label %58

53:                                               ; preds = %49
  %54 = tail call i32 @integer_onep(ptr noundef %30) #21
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56, !prof !1901

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
define internal fastcc noundef zeroext i8 @simplify_stmt_using_ranges(ptr noundef %0) unnamed_addr #0 !prof !1902 !PGOFuncName !1903 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %2) #20, !range !862
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %86, label %5, !prof !1904

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #20, !range !1079
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
  ], !prof !1905

8:                                                ; preds = %5, %5, %5, %5, %5, %5
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !856
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 6
  br i1 %14, label %29, label %15, !prof !1906

15:                                               ; preds = %8
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !856
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 7
  br i1 %21, label %29, label %22, !prof !1907

22:                                               ; preds = %15
  %23 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !856
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 8
  br i1 %28, label %29, label %92, !prof !1908

29:                                               ; preds = %22, %15, %8
  %30 = tail call fastcc zeroext i8 @simplify_truth_ops_using_ranges(ptr noundef %0, ptr noundef %2) #20, !range !862
  br label %92

31:                                               ; preds = %5, %5
  %32 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !856
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 6
  br i1 %37, label %52, label %38

38:                                               ; preds = %31
  %39 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !856
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 7
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !856
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
  %57 = tail call fastcc zeroext i8 @simplify_div_or_mod_using_ranges(ptr noundef %2) #20, !range !862
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
  %66 = load ptr, ptr %65, align 8, !tbaa !856
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 6
  br i1 %69, label %84, label %70

70:                                               ; preds = %63
  %71 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !856
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 7
  br i1 %76, label %84, label %77

77:                                               ; preds = %70
  %78 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #20
  %79 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !856
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 8
  br i1 %83, label %84, label %92

84:                                               ; preds = %77, %70, %63
  %85 = tail call fastcc zeroext i8 @simplify_abs_using_ranges(ptr noundef %2) #20, !range !862
  br label %92

86:                                               ; preds = %1
  %87 = tail call fastcc i32 @gimple_code(ptr noundef %2) #20, !range !1036
  %88 = trunc i32 %87 to i8
  switch i8 %88, label %92 [
    i8 1, label %89
    i8 5, label %91
  ], !prof !1909

89:                                               ; preds = %86
  %90 = tail call fastcc zeroext i8 @simplify_cond_using_ranges(ptr noundef %2) #20, !range !862
  br label %92

91:                                               ; preds = %86
  tail call fastcc void @simplify_switch_using_ranges(ptr noundef %2) #20
  br label %92

92:                                               ; preds = %86, %22, %52, %45, %77, %58, %5, %29, %56, %84, %91, %89
  %93 = phi i8 [ %90, %89 ], [ 0, %91 ], [ %85, %84 ], [ %57, %56 ], [ %30, %29 ], [ 0, %5 ], [ 0, %58 ], [ 0, %77 ], [ 0, %45 ], [ 0, %52 ], [ 0, %22 ], [ 0, %86 ]
  ret i8 %93
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vrp_evaluate_conditional(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !1910 !PGOFuncName !1911 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %13, !prof !1766

10:                                               ; preds = %4
  %11 = and i64 %7, 134217728
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %94

13:                                               ; preds = %10, %4
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 134283263
  %16 = icmp eq i64 %15, 134217751
  br i1 %16, label %94, label %17, !prof !1912

17:                                               ; preds = %13
  store i8 0, ptr %5, align 1, !tbaa !856
  %18 = call fastcc ptr @vrp_evaluate_conditional_warnv_with_ops(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1, ptr noundef nonnull %5, ptr noundef nonnull %6) #20
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %40, !prof !1913

20:                                               ; preds = %17
  %21 = load i8, ptr %5, align 1, !tbaa !856
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %40, label %23, !prof !1914

23:                                               ; preds = %20
  %24 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %18) #21
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i32 3, i32 2
  %27 = select i1 %25, ptr @.str.57, ptr @.str.56
  %28 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !873
  %29 = icmp slt i32 %28, %26
  br i1 %29, label %40, label %30

30:                                               ; preds = %23
  %31 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %3) #20, !range !862
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, ptr @input_location, align 4, !tbaa !873
  br label %37

35:                                               ; preds = %30
  %36 = call fastcc i32 @gimple_location(ptr noundef %3) #20
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %36, %35 ], [ %34, %33 ]
  %39 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %38, i32 noundef 187, ptr noundef nonnull @.str.58, ptr noundef nonnull %27) #21
  br label %40

40:                                               ; preds = %23, %37, %20, %17
  %41 = load i32, ptr @warn_type_limits, align 4, !tbaa !873
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %94, label %43, !prof !1915

43:                                               ; preds = %40
  %44 = load i8, ptr %6, align 1
  %45 = icmp ne i8 %44, 0
  %46 = select i1 %19, i1 %45, i1 false
  br i1 %46, label %47, label %94

47:                                               ; preds = %43
  %48 = zext nneg i32 %0 to i64
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !873
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %94

52:                                               ; preds = %47
  %53 = load i64, ptr %1, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 141
  br i1 %55, label %56, label %94

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !856
  %59 = call fastcc ptr @get_value_range(ptr noundef nonnull %1) #20
  %60 = load i32, ptr %59, align 8, !tbaa !845
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
  %70 = load ptr, ptr %69, align 8, !tbaa !851
  %71 = call fastcc zeroext i8 @vrp_val_is_min(ptr noundef %70) #20, !range !862
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %94, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.value_range_d, ptr %59, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !866
  %76 = call fastcc zeroext i8 @vrp_val_is_max(ptr noundef %75) #20, !range !862
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %73
  %79 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %2) #21
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %78
  %82 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %3) #20, !range !862
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, ptr @input_location, align 4, !tbaa !873
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
declare void @print_gimple_expr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_false(ptr noundef %0) unnamed_addr #0 !prof !1916 !PGOFuncName !1917 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !852
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #20
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !852
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #20
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_true(ptr noundef %0) unnamed_addr #0 !prof !1918 !PGOFuncName !1919 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !852
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #20
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !852
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #20
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !844 !PGOFuncName !1920 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !844 !PGOFuncName !1921 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !856
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1922 !PGOFuncName !1923 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1922 !PGOFuncName !1924 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1925 !PGOFuncName !1926 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !862
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !1927

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !1928

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.31, i32 noundef 1665, ptr noundef nonnull @.str.28) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !852
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @simplify_truth_ops_using_ranges(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1929 !PGOFuncName !1930 {
  %3 = alloca i8, align 1
  %4 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #20, !range !1079
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  store i8 0, ptr %3, align 1, !tbaa !856
  %5 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #20
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !856
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1023
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %31, label %12, !prof !1931

12:                                               ; preds = %2
  %13 = load i64, ptr %5, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %133, !prof !1932

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %5) #20
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !852
  %19 = call fastcc ptr @compare_range_with_value(i32 noundef 100, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %3) #20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %133, label %21, !prof !1933

21:                                               ; preds = %16
  %22 = call i32 @integer_onep(ptr noundef nonnull %19) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %133, label %24, !prof !1934

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !852
  %26 = call fastcc ptr @compare_range_with_value(i32 noundef 98, ptr noundef %17, ptr noundef %25, ptr noundef nonnull %3) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %133, label %28, !prof !1935

28:                                               ; preds = %24
  %29 = call i32 @integer_onep(ptr noundef nonnull %26) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %133, label %31, !prof !1936

31:                                               ; preds = %28, %2
  %32 = icmp eq i32 %4, 96
  br i1 %32, label %33, label %36, !prof !1937

33:                                               ; preds = %31
  %34 = load ptr, ptr %6, align 8, !tbaa !856
  %35 = call ptr @build_int_cst(ptr noundef %34, i64 noundef 1) #21
  br label %81

36:                                               ; preds = %31
  %37 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #20
  %38 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %37) #21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %57, label %40, !prof !1938

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
  br i1 %44, label %45, label %51, !prof !1936

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
  br i1 %52, label %53, label %81, !prof !1939

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !856
  %56 = call ptr @fold_unary_loc(i32 noundef 0, i32 noundef 96, ptr noundef %55, ptr noundef %37) #21
  br label %81

57:                                               ; preds = %36
  %58 = icmp eq i32 %4, 101
  br i1 %58, label %133, label %59, !prof !1940

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !856
  %62 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 1023
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %81, label %66, !prof !1618

66:                                               ; preds = %59
  %67 = call fastcc ptr @get_value_range(ptr noundef nonnull %37) #20
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !852
  %69 = call fastcc ptr @compare_range_with_value(i32 noundef 100, ptr noundef %67, ptr noundef %68, ptr noundef nonnull %3) #20
  %70 = icmp eq ptr %69, null
  br i1 %70, label %133, label %71

71:                                               ; preds = %66
  %72 = call i32 @integer_onep(ptr noundef nonnull %69) #21
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %133, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !852
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
  %84 = load i8, ptr %3, align 1, !tbaa !856
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %102, label %86, !prof !1941

86:                                               ; preds = %81
  %87 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !873
  %88 = icmp sgt i32 %87, 3
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %1) #20, !range !862
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, ptr @input_location, align 4, !tbaa !873
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

102:                                              ; preds = %96, %86, %81
  %103 = call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #20
  %104 = getelementptr inbounds %struct.tree_common, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !856
  %106 = load ptr, ptr %6, align 8, !tbaa !856
  %107 = call zeroext i8 @useless_type_conversion_p(ptr noundef %105, ptr noundef %106) #21
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %119, !prof !1942

109:                                              ; preds = %102
  %110 = load ptr, ptr %6, align 8, !tbaa !856
  %111 = load i64, ptr %110, align 8
  %112 = and i64 %111, 2097152
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %119, !prof !1943

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.tree_type, ptr %110, i64 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 1023
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %133, label %119, !prof !1944

119:                                              ; preds = %114, %109, %102
  %120 = trunc i32 %82 to i16
  switch i16 %120, label %127 [
    i16 93, label %128
    i16 94, label %121
    i16 95, label %122
    i16 102, label %122
  ], !prof !1945

121:                                              ; preds = %119
  br label %128

122:                                              ; preds = %119, %119
  %123 = call i32 @integer_zerop(ptr noundef %83) #21
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125, !prof !1939

125:                                              ; preds = %122
  %126 = select i1 %108, i32 116, i32 141
  call void @gimple_assign_set_rhs_with_ops(ptr noundef %0, i32 noundef %126, ptr noundef nonnull %5, ptr noundef null) #21
  br label %131

127:                                              ; preds = %119
  call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 6568, ptr noundef nonnull @.str.28) #21
  br label %128

128:                                              ; preds = %122, %119, %127, %121
  %129 = phi i32 [ %82, %127 ], [ 87, %121 ], [ 89, %119 ], [ 88, %122 ]
  br i1 %108, label %133, label %130, !prof !1946

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
define internal fastcc noundef zeroext i8 @simplify_div_or_mod_using_ranges(ptr noundef %0) unnamed_addr #0 !prof !844 !PGOFuncName !1947 {
  %2 = alloca i8, align 1
  %3 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #20, !range !1079
  %4 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %5 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #20
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %7 = tail call fastcc ptr @get_value_range(ptr noundef %6) #20
  %8 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !856
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 2097152
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !852
  br label %39

15:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !856
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !852
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
  %29 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !862
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, ptr @input_location, align 4, !tbaa !873
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
  %53 = load ptr, ptr %52, align 8, !tbaa !856
  %54 = call ptr @build_int_cst(ptr noundef %53, i64 noundef 1) #21
  %55 = call ptr @int_const_binop(i32 noundef 64, ptr noundef %5, ptr noundef %54, i32 noundef 0) #21
  %56 = load ptr, ptr %8, align 8, !tbaa !856
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
define internal fastcc noundef zeroext i8 @simplify_abs_using_ranges(ptr noundef %0) unnamed_addr #0 !prof !844 !PGOFuncName !1948 {
  %2 = alloca i8, align 1
  %3 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !856
  %6 = tail call fastcc ptr @get_value_range(ptr noundef %3) #20
  %7 = load i64, ptr %5, align 8
  %8 = and i64 %7, 2097152
  %9 = icmp ne i64 %8, 0
  %10 = icmp eq ptr %6, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %58, label %12

12:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #22
  store i8 0, ptr %2, align 1, !tbaa !856
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !852
  %14 = call fastcc ptr @compare_range_with_value(i32 noundef 98, ptr noundef nonnull %6, ptr noundef %13, ptr noundef nonnull %2) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  store i8 0, ptr %2, align 1, !tbaa !856
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !852
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
  %38 = load i8, ptr %2, align 1, !tbaa !856
  %39 = icmp ne i8 %38, 0
  %40 = load i32, ptr @warn_strict_overflow, align 4
  %41 = icmp sgt i32 %40, 3
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !862
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, ptr @input_location, align 4, !tbaa !873
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
define internal fastcc noundef zeroext i8 @simplify_cond_using_ranges(ptr noundef %0) unnamed_addr #0 !prof !1949 !PGOFuncName !1950 {
  %2 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %3 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %4 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !1079
  %5 = add nsw i32 %4, -103
  %6 = icmp ult i32 %5, -2
  br i1 %6, label %7, label %59, !prof !1951

7:                                                ; preds = %1
  %8 = load i64, ptr %2, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 141
  br i1 %10, label %11, label %59, !prof !1952

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !856
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -6
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %59, !prof !1953

19:                                               ; preds = %11
  %20 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %3) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %59, label %22, !prof !1954

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %2) #20
  %24 = load i32, ptr %23, align 8, !tbaa !845
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %59, !prof !1955

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @test_for_singularity(i32 noundef %4, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %23) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %40, label %29, !prof !1956

29:                                               ; preds = %26
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 22, i64 1, ptr nonnull %30)
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_gimple_stmt(ptr noundef %34, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %36 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 6, i64 1, ptr %35)
  br label %37

37:                                               ; preds = %32, %29
  tail call fastcc void @gimple_cond_set_code(ptr noundef %0, i32 noundef 101) #20
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef nonnull %2) #20
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef nonnull %27) #20
  tail call fastcc void @update_stmt(ptr noundef %0) #20
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %55

40:                                               ; preds = %26
  %41 = tail call i32 @invert_tree_comparison(i32 noundef %4, i8 noundef zeroext 0) #21
  %42 = tail call fastcc ptr @test_for_singularity(i32 noundef %41, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %23) #20
  %43 = icmp eq ptr %42, null
  br i1 %43, label %59, label %44, !prof !1956

44:                                               ; preds = %40
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 22, i64 1, ptr nonnull %45)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !852
  tail call void @print_gimple_stmt(ptr noundef %49, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %51 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 6, i64 1, ptr %50)
  br label %52

52:                                               ; preds = %47, %44
  tail call fastcc void @gimple_cond_set_code(ptr noundef %0, i32 noundef 102) #20
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef nonnull %2) #20
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef nonnull %42) #20
  tail call fastcc void @update_stmt(ptr noundef %0) #20
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %52, %37
  %56 = phi ptr [ %38, %37 ], [ %53, %52 ]
  tail call void @print_gimple_stmt(ptr noundef nonnull %56, ptr noundef %0, i32 noundef 0, i32 noundef 0) #21
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %58 = tail call i32 @fputc(i32 10, ptr %57)
  br label %59

59:                                               ; preds = %55, %40, %22, %11, %1, %7, %19, %52, %37
  %60 = phi i8 [ 1, %37 ], [ 1, %52 ], [ 0, %11 ], [ 0, %19 ], [ 0, %7 ], [ 0, %1 ], [ 0, %22 ], [ 0, %40 ], [ 1, %55 ]
  ret i8 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simplify_switch_using_ranges(ptr noundef %0) unnamed_addr #0 !prof !1198 !PGOFuncName !1957 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.switch_update, align 8
  %7 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !tbaa !904
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store i64 0, ptr %5, align 8, !tbaa !904
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %124 [
    i16 141, label %10
    i16 23, label %26
  ], !prof !1958

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @get_value_range(ptr noundef nonnull %7) #20
  %12 = load i32, ptr %11, align 8, !tbaa !845
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %124, !prof !1505

14:                                               ; preds = %10
  %15 = tail call fastcc zeroext i8 @symbolic_range_p(ptr noundef nonnull %11) #20, !range !862
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %124

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.value_range_d, ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !851
  %20 = getelementptr inbounds %struct.value_range_d, ptr %11, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !866
  %22 = call fastcc zeroext i8 @find_case_label_range(ptr noundef %0, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %4, ptr noundef nonnull %5) #20, !range !862
  %23 = xor i8 %22, 1
  %24 = load i64, ptr %4, align 8, !tbaa !904
  %25 = load i64, ptr %5, align 8, !tbaa !904
  br label %33

26:                                               ; preds = %1
  %27 = call fastcc zeroext i8 @find_case_label_index(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %7, ptr noundef nonnull %4) #20
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  store i64 1, ptr %4, align 8, !tbaa !904
  store i64 0, ptr %5, align 8, !tbaa !904
  %30 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #20
  br label %39

31:                                               ; preds = %26
  %32 = load i64, ptr %4, align 8, !tbaa !904
  store i64 %32, ptr %5, align 8, !tbaa !904
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
  store ptr %60, ptr %61, align 8, !tbaa !856
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
  store ptr %72, ptr %73, align 8, !tbaa !856
  %74 = add i64 %70, 1
  %75 = add i64 %69, 1
  %76 = icmp ugt i64 %74, %50
  br i1 %76, label %65, label %68, !llvm.loop !1959

77:                                               ; preds = %65, %77
  %78 = phi i64 [ %88, %77 ], [ 0, %65 ]
  %79 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %80 = load ptr, ptr @cfun, align 8, !tbaa !852
  %81 = getelementptr inbounds %struct.tree_vec, ptr %57, i64 0, i32 2, i64 %78
  %82 = load ptr, ptr %81, align 8, !tbaa !856
  %83 = getelementptr inbounds %struct.tree_exp, ptr %82, i64 1, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !856
  %85 = tail call ptr @label_to_block_fn(ptr noundef %80, ptr noundef %84) #21
  %86 = tail call ptr @find_edge(ptr noundef %79, ptr noundef %85) #21
  %87 = getelementptr inbounds %struct.edge_def, ptr %86, i64 0, i32 3
  store ptr inttoptr (i64 -1 to ptr), ptr %87, align 8, !tbaa !1960
  %88 = add nuw i64 %78, 1
  %89 = icmp eq i64 %88, %66
  br i1 %89, label %90, label %77, !llvm.loop !1961

90:                                               ; preds = %77, %65
  %91 = phi ptr [ undef, %65 ], [ %86, %77 ]
  store i64 %66, ptr %4, align 8, !tbaa !904
  store ptr %91, ptr %2, align 8, !tbaa !852
  %92 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 1
  %94 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %93) #20
  store i32 0, ptr %3, align 8, !tbaa.struct !1116
  %95 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %94, ptr %95, align 8, !tbaa.struct !1117
  %96 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %94, ptr noundef nonnull %2) #20, !range !862
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %122, label %98

98:                                               ; preds = %90, %117
  %99 = load ptr, ptr %2, align 8, !tbaa !852
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !1960
  %102 = icmp eq ptr %101, inttoptr (i64 -1 to ptr)
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store ptr null, ptr %100, align 8, !tbaa !1960
  br label %117

104:                                              ; preds = %98
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !852
  %106 = icmp eq ptr %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr @dump_flags, align 4, !tbaa !873
  %109 = and i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 32, i64 1, ptr nonnull %105)
  br label %113

113:                                              ; preds = %111, %107, %104
  tail call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %99) #20
  %114 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 7
  %115 = load i32, ptr %114, align 8, !tbaa !1047
  %116 = and i32 %115, -4097
  store i32 %116, ptr %114, align 8, !tbaa !1047
  br label %117

117:                                              ; preds = %113, %103
  call fastcc void @ei_next(ptr noundef nonnull %3) #20
  %118 = load i32, ptr %3, align 8
  %119 = load ptr, ptr %95, align 8
  %120 = call fastcc zeroext i8 @ei_cond(i32 %118, ptr %119, ptr noundef nonnull %2) #20, !range !862
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %98, !llvm.loop !1962

122:                                              ; preds = %117, %90
  store ptr %0, ptr %6, align 8, !tbaa !955
  %123 = getelementptr inbounds %struct.switch_update, ptr %6, i64 0, i32 1
  store ptr %57, ptr %123, align 8, !tbaa !953
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
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !1963 !PGOFuncName !1964 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_with_ops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !1965 !PGOFuncName !1966 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !862
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !1967

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
define internal fastcc void @gimple_assign_set_rhs_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !844 !PGOFuncName !1968 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !844 !PGOFuncName !1969 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs2(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !844 !PGOFuncName !1970 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 2, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @test_for_singularity(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !1971 !PGOFuncName !1972 {
  %5 = add i32 %0, -97
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %27, !prof !1973

7:                                                ; preds = %4
  %8 = icmp eq i32 %0, 97
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !856
  %11 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !856
  br i1 %8, label %13, label %57, !prof !1974

13:                                               ; preds = %7
  %14 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !862
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 8, !tbaa !856
  %18 = tail call ptr @build_int_cst(ptr noundef %17, i64 noundef 1) #21
  %19 = load ptr, ptr %9, align 8, !tbaa !856
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %19, ptr noundef %2, ptr noundef %18) #21
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !873
  %25 = add i32 %24, -4
  %26 = icmp ult i32 %25, 7
  br i1 %26, label %51, label %57

27:                                               ; preds = %4
  %28 = add i32 %0, -99
  %29 = icmp ult i32 %28, 2
  br i1 %29, label %30, label %85, !prof !1975

30:                                               ; preds = %27
  %31 = icmp eq i32 %0, 99
  %32 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !856
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 14
  %35 = load ptr, ptr %34, align 8, !tbaa !856
  br i1 %31, label %36, label %57, !prof !1956

36:                                               ; preds = %30
  %37 = tail call fastcc zeroext i8 @is_overflow_infinity(ptr noundef %2) #20, !range !862
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %57, !prof !1956

39:                                               ; preds = %36
  %40 = load ptr, ptr %32, align 8, !tbaa !856
  %41 = tail call ptr @build_int_cst(ptr noundef %40, i64 noundef 1) #21
  %42 = load ptr, ptr %32, align 8, !tbaa !856
  %43 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %42, ptr noundef %2, ptr noundef %41) #21
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !873
  %48 = icmp ugt i32 %47, 3
  br i1 %48, label %49, label %57, !prof !1974

49:                                               ; preds = %39
  %50 = icmp ult i32 %47, 11
  br i1 %50, label %51, label %57

51:                                               ; preds = %49, %16
  %52 = phi i64 [ %21, %16 ], [ %44, %49 ]
  %53 = phi ptr [ %20, %16 ], [ %43, %49 ]
  %54 = phi ptr [ %20, %16 ], [ %35, %49 ]
  %55 = phi ptr [ %12, %16 ], [ %43, %49 ]
  %56 = or i64 %52, 8388608
  store i64 %56, ptr %53, align 8
  br label %57

57:                                               ; preds = %51, %39, %49, %16, %36, %30, %7, %13
  %58 = phi ptr [ %2, %13 ], [ %2, %7 ], [ %35, %36 ], [ %35, %30 ], [ %20, %16 ], [ %35, %49 ], [ %35, %39 ], [ %54, %51 ]
  %59 = phi ptr [ %12, %13 ], [ %12, %7 ], [ %2, %36 ], [ %2, %30 ], [ %12, %16 ], [ %43, %49 ], [ %43, %39 ], [ %55, %51 ]
  %60 = icmp ne ptr %59, null
  %61 = icmp ne ptr %58, null
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %63, label %85, !prof !1976

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !851
  %66 = tail call fastcc i32 @compare_values(ptr noundef %65, ptr noundef nonnull %59) #20
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %70, !prof !1977

68:                                               ; preds = %63
  %69 = load ptr, ptr %64, align 8, !tbaa !851
  br label %70

70:                                               ; preds = %68, %63
  %71 = phi ptr [ %69, %68 ], [ %59, %63 ]
  %72 = getelementptr inbounds %struct.value_range_d, ptr %3, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !866
  %74 = tail call fastcc i32 @compare_values(ptr noundef %73, ptr noundef nonnull %58) #20
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %78, !prof !1977

76:                                               ; preds = %70
  %77 = load ptr, ptr %72, align 8, !tbaa !866
  br label %78

78:                                               ; preds = %76, %70
  %79 = phi ptr [ %77, %76 ], [ %58, %70 ]
  %80 = tail call i32 @operand_equal_p(ptr noundef %71, ptr noundef %79, i32 noundef 0) #21
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82, !prof !1978

82:                                               ; preds = %78
  %83 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %71) #21
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %27, %78, %82, %57
  br label %86

86:                                               ; preds = %82, %85
  %87 = phi ptr [ null, %85 ], [ %71, %82 ]
  ret ptr %87
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #7 !prof !844 !PGOFuncName !1979 {
  %3 = load i32, ptr %0, align 8
  %4 = shl i32 %1, 16
  %5 = and i32 %3, 65535
  %6 = or disjoint i32 %5, %4
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !844 !PGOFuncName !1980 {
  tail call fastcc void @VEC_edge_heap_reserve() #20
  %2 = load ptr, ptr @to_remove_edges, align 8, !tbaa !852
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_switch_update_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !844 !PGOFuncName !1981 {
  tail call fastcc void @VEC_switch_update_heap_reserve() #20
  %2 = load ptr, ptr @to_update_switch_stmts, align 8, !tbaa !852
  tail call fastcc void @VEC_switch_update_base_quick_push(ptr noundef %2, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve() unnamed_addr #0 !prof !844 !PGOFuncName !1982 {
  %1 = load ptr, ptr @to_remove_edges, align 8, !tbaa !852
  %2 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #21
  store ptr %5, ptr @to_remove_edges, align 8, !tbaa !852
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !844 !PGOFuncName !1983 {
  %3 = load i32, ptr %0, align 8, !tbaa !1094
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1094
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !852
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !844 !PGOFuncName !1984 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1985
  %6 = load i32, ptr %0, align 8, !tbaa !1094
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
define internal fastcc void @VEC_switch_update_heap_reserve() unnamed_addr #0 !prof !844 !PGOFuncName !1986 {
  %1 = load ptr, ptr @to_update_switch_stmts, align 8, !tbaa !852
  %2 = tail call fastcc i32 @VEC_switch_update_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 16) #21
  store ptr %5, ptr @to_update_switch_stmts, align 8, !tbaa !852
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_switch_update_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #7 !prof !844 !PGOFuncName !1987 {
  %3 = load i32, ptr %0, align 8, !tbaa !1097
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1097
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_switch_update_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1988
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_switch_update_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !844 !PGOFuncName !1989 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_switch_update_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1990
  %6 = load i32, ptr %0, align 8, !tbaa !1097
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
define internal fastcc void @search_for_addr_array(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !844 !PGOFuncName !1991 {
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
  %9 = load ptr, ptr %8, align 8, !tbaa !856
  %10 = tail call fastcc i32 @gimple_code(ptr noundef %9) #20, !range !1036
  %11 = icmp eq i32 %10, 6
  br i1 %11, label %12, label %29

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %9) #20, !range !1079
  %14 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %13) #20, !range !1036
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
  %26 = load ptr, ptr %25, align 8, !tbaa !856
  %27 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %26) #20, !range !862
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %18, !llvm.loop !1992

29:                                               ; preds = %12, %7, %3, %24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_location_ptr(ptr noundef readnone %0) unnamed_addr #13 !prof !844 !PGOFuncName !1993 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @check_array_bounds(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !prof !844 !PGOFuncName !1994 {
  %4 = load ptr, ptr %0, align 8, !tbaa !852
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !873
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !856
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3, %11
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !1875
  %18 = load i32, ptr %17, align 4, !tbaa !873
  br label %19

19:                                               ; preds = %11, %15
  %20 = phi i32 [ %18, %15 ], [ %13, %11 ]
  store i32 1, ptr %1, align 4, !tbaa !873
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
  %31 = load ptr, ptr %30, align 8, !tbaa !856
  br label %36

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !856
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
  store i32 0, ptr %1, align 4, !tbaa !873
  br label %44

44:                                               ; preds = %43, %39
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_array_ref(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !844 !PGOFuncName !1995 {
  %4 = tail call ptr @array_ref_up_bound(ptr noundef %1) #21
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !856
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
  %18 = load ptr, ptr %17, align 8, !tbaa !856
  %19 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !856
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !856
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !856
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
  %40 = load i32, ptr %39, align 8, !tbaa !845
  %41 = add i32 %40, -1
  %42 = icmp ult i32 %41, 2
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = icmp eq i32 %40, 1
  %45 = getelementptr inbounds %struct.value_range_d, ptr %39, i64 0, i32 2
  %46 = getelementptr inbounds %struct.value_range_d, ptr %39, i64 0, i32 1
  %47 = select i1 %44, ptr %45, ptr %46
  %48 = load ptr, ptr %47, align 8, !tbaa !852
  %49 = select i1 %44, ptr %46, ptr %45
  %50 = load ptr, ptr %49, align 8, !tbaa !852
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
  %81 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !852
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
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !844 !PGOFuncName !1996 {
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
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 !prof !946 !PGOFuncName !1997 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #21
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @potentially_threadable_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !1998 !PGOFuncName !1999 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !942
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !1216
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1217
  ret void
}

; Function Attrs: optsize
declare void @thread_across_edge(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @simplify_stmt_for_jump_threading(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !prof !2000 !PGOFuncName !2001 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !1036
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %10, !prof !2002

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #20, !range !1079
  %7 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #20
  %8 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #20
  %9 = tail call fastcc ptr @vrp_evaluate_conditional(i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %1) #20
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 !prof !1998 !PGOFuncName !2003 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !2004

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !2005
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1460 !PGOFuncName !2006 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !2007
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1251
  store ptr %6, ptr %0, align 8, !tbaa !2009
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !862
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !2010

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #20
  br label %11

11:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !2011 !PGOFuncName !2012 {
  %2 = load ptr, ptr %0, align 8, !tbaa !2009
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !2007
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #4 !prof !2013 !PGOFuncName !2014 {
  %2 = load ptr, ptr %0, align 8, !tbaa !2009
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1251
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !2015
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #6 !prof !2016 !PGOFuncName !2017 {
  %2 = load ptr, ptr %0, align 8, !tbaa !2009
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !2018 !PGOFuncName !2019 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1297
  store ptr %1, ptr %4, align 8, !tbaa !852
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #4 !prof !2018 !PGOFuncName !2020 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !2015
  store ptr %3, ptr %0, align 8, !tbaa !2009
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #20, !range !862
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !2021

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !1251
  store ptr %8, ptr %2, align 8, !tbaa !2015
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !2013 !PGOFuncName !2022 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !2023
  store ptr %4, ptr %0, align 8, !tbaa !2009
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #20, !range !862
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !2024

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !2025
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !2026

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
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !2013 !PGOFuncName !2027 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !856
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #22
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #21
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #20, !range !1036
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !2028

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #20
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53, !prof !2029

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #20
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23, !prof !2030

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #20
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !prof !2031, !llvm.loop !2032

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !2033

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #20
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53, !prof !2034

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #20
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40, !prof !2035

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #20
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #20
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !prof !2036, !llvm.loop !2037

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
  %56 = load ptr, ptr %55, align 8, !tbaa !2025
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !2038

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #20
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #17 !prof !2018 !PGOFuncName !2039 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !2040

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1251
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9, !prof !2041

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #20
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #20
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !2042 !PGOFuncName !2043 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !2044

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.34, i32 noundef 771, ptr noundef nonnull @.str.28) #21
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #20
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !1224
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #20
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #8 !prof !844 !PGOFuncName !2045 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !862
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !856
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !2046
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
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #17 !prof !2047 !PGOFuncName !2048 {
  %2 = load ptr, ptr %0, align 8, !tbaa !2049
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !2050

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1251
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1251
  store ptr %2, ptr %6, align 8, !tbaa !2049
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !2047 !PGOFuncName !2051 {
  store ptr %1, ptr %0, align 8, !tbaa !2049
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1251
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !1251
  store ptr %0, ptr %4, align 8, !tbaa !2049
  store ptr %0, ptr %3, align 8, !tbaa !1251
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !2018 !PGOFuncName !2052 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4, !prof !2053

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8, !prof !1084

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !2049
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
define internal fastcc void @VEC_tree_heap_free() unnamed_addr #11 !prof !946 !PGOFuncName !2054 {
  %1 = load ptr, ptr @stack, align 8, !tbaa !852
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !960

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #20
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @stack, align 8, !tbaa !852
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_num_ops(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !prof !844 !PGOFuncName !2055 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 4, !tbaa !856
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!843}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842}
!35 = !{ptr @get_value_range, ptr @xcalloc, i64 513165}
!36 = !{ptr @get_value_range, ptr @nonnull_arg_p, i64 76}
!37 = !{ptr @get_value_range, ptr @set_value_range_to_nonnull, i64 1}
!38 = !{ptr @get_value_range, ptr @set_value_range_to_varying, i64 76}
!39 = !{ptr @compare_values, ptr @compare_values_warnv, i64 43082603}
!40 = !{ptr @compare_values, ptr @is_gimple_min_invariant, i64 2}
!41 = !{ptr @is_negative_overflow_infinity, ptr @needs_overflow_infinity, i64 3156}
!42 = !{ptr @is_negative_overflow_infinity, ptr @vrp_val_is_min, i64 1}
!43 = !{ptr @vrp_val_is_min, ptr @vrp_val_min, i64 21579458}
!44 = !{ptr @vrp_val_is_min, ptr @operand_equal_p, i64 21558277}
!45 = !{ptr @is_positive_overflow_infinity, ptr @needs_overflow_infinity, i64 3740}
!46 = !{ptr @is_positive_overflow_infinity, ptr @vrp_val_is_max, i64 1}
!47 = !{ptr @vrp_val_is_max, ptr @vrp_val_max, i64 49664}
!48 = !{ptr @vrp_val_is_max, ptr @operand_equal_p, i64 29669}
!49 = !{ptr @execute_vrp, ptr @loop_optimizer_init, i64 76}
!50 = !{ptr @execute_vrp, ptr @rewrite_into_loop_closed_ssa, i64 76}
!51 = !{ptr @execute_vrp, ptr @scev_initialize, i64 76}
!52 = !{ptr @execute_vrp, ptr @insert_range_assertions, i64 76}
!53 = !{ptr @execute_vrp, ptr @VEC_edge_heap_alloc, i64 76}
!54 = !{ptr @execute_vrp, ptr @VEC_switch_update_heap_alloc, i64 76}
!55 = !{ptr @execute_vrp, ptr @threadedge_initialize_values, i64 76}
!56 = !{ptr @execute_vrp, ptr @vrp_initialize, i64 76}
!57 = !{ptr @execute_vrp, ptr @ssa_propagate, i64 76}
!58 = !{ptr @execute_vrp, ptr @vrp_finalize, i64 76}
!59 = !{ptr @execute_vrp, ptr @remove_range_assertions, i64 76}
!60 = !{ptr @execute_vrp, ptr @update_ssa, i64 76}
!61 = !{ptr @execute_vrp, ptr @finalize_jump_threads, i64 76}
!62 = !{ptr @execute_vrp, ptr @VEC_edge_base_iterate, i64 77}
!63 = !{ptr @execute_vrp, ptr @VEC_switch_update_base_iterate, i64 77}
!64 = !{ptr @execute_vrp, ptr @remove_edge, i64 1}
!65 = !{ptr @execute_vrp, ptr @gimple_switch_set_num_labels, i64 1}
!66 = !{ptr @execute_vrp, ptr @gimple_switch_set_label, i64 20}
!67 = !{ptr @execute_vrp, ptr @gimple_switch_default_label, i64 1}
!68 = !{ptr @execute_vrp, ptr @VEC_edge_base_length, i64 76}
!69 = !{ptr @execute_vrp, ptr @free_dominance_info, i64 1}
!70 = !{ptr @execute_vrp, ptr @VEC_edge_heap_free, i64 76}
!71 = !{ptr @execute_vrp, ptr @VEC_switch_update_heap_free, i64 76}
!72 = !{ptr @execute_vrp, ptr @threadedge_finalize_values, i64 76}
!73 = !{ptr @execute_vrp, ptr @scev_finalize, i64 76}
!74 = !{ptr @execute_vrp, ptr @loop_optimizer_finalize, i64 76}
!75 = !{ptr @nonnull_arg_p, ptr @fancy_abort, i64 1}
!76 = !{ptr @nonnull_arg_p, ptr @lookup_attribute, i64 75}
!77 = !{ptr @nonnull_arg_p, ptr @compare_tree_int, i64 6}
!78 = !{ptr @set_value_range_to_nonnull, ptr @build_int_cst, i64 12}
!79 = !{ptr @set_value_range_to_nonnull, ptr @set_value_range, i64 12}
!80 = !{ptr @set_value_range_to_varying, ptr @bitmap_clear, i64 2715}
!81 = !{ptr @set_value_range, ptr @bitmap_obstack_alloc_stat, i64 46516}
!82 = !{ptr @set_value_range, ptr @bitmap_copy, i64 45471}
!83 = !{ptr @set_value_range, ptr @bitmap_clear, i64 3285}
!84 = !{ptr @compare_values_warnv, ptr @fancy_abort, i64 1}
!85 = !{ptr @compare_values_warnv, ptr @fold_convert_loc, i64 44715743}
!86 = !{ptr @compare_values_warnv, ptr @tree_ssa_strip_useless_type_conversions, i64 44715743}
!87 = !{ptr @compare_values_warnv, ptr @tree_int_cst_sgn, i64 4}
!88 = !{ptr @compare_values_warnv, ptr @is_negative_overflow_infinity, i64 6}
!89 = !{ptr @compare_values_warnv, ptr @fold_unary_to_constant, i64 2}
!90 = !{ptr @compare_values_warnv, ptr @is_gimple_min_invariant, i64 88815873}
!91 = !{ptr @compare_values_warnv, ptr @tree_int_cst_compare, i64 44100128}
!92 = !{ptr @compare_values_warnv, ptr @operand_equal_p, i64 1}
!93 = !{ptr @operand_less_p, ptr @fold_defer_overflow_warnings, i64 2}
!94 = !{ptr @operand_less_p, ptr @fold_binary_to_constant, i64 2}
!95 = !{ptr @operand_less_p, ptr @fold_undefer_and_ignore_overflow_warnings, i64 2}
!96 = !{ptr @operand_less_p, ptr @integer_zerop, i64 1}
!97 = !{ptr @operand_less_p, ptr @is_negative_overflow_infinity, i64 3154}
!98 = !{ptr @operand_less_p, ptr @is_positive_overflow_infinity, i64 3153}
!99 = !{ptr @insert_range_assertions, ptr @bitmap_obstack_alloc_stat, i64 76}
!100 = !{ptr @insert_range_assertions, ptr @VEC_tree_base_length, i64 76}
!101 = !{ptr @insert_range_assertions, ptr @xcalloc, i64 76}
!102 = !{ptr @insert_range_assertions, ptr @calculate_dominance_info, i64 76}
!103 = !{ptr @insert_range_assertions, ptr @find_assert_locations, i64 76}
!104 = !{ptr @insert_range_assertions, ptr @process_assert_insertions, i64 75}
!105 = !{ptr @insert_range_assertions, ptr @update_ssa, i64 75}
!106 = !{ptr @insert_range_assertions, ptr @free, i64 76}
!107 = !{ptr @insert_range_assertions, ptr @bitmap_obstack_free, i64 76}
!108 = !{ptr @VEC_edge_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 76}
!109 = !{ptr @VEC_switch_update_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 76}
!110 = !{ptr @vrp_initialize, ptr @VEC_tree_base_length, i64 152}
!111 = !{ptr @vrp_initialize, ptr @xcalloc, i64 152}
!112 = !{ptr @vrp_initialize, ptr @gsi_start_phis, i64 309097}
!113 = !{ptr @vrp_initialize, ptr @gsi_end_p, i64 1415787}
!114 = !{ptr @vrp_initialize, ptr @gsi_stmt, i64 797593}
!115 = !{ptr @vrp_initialize, ptr @stmt_interesting_for_vrp, i64 516680}
!116 = !{ptr @vrp_initialize, ptr @gimple_phi_result_ptr, i64 88651}
!117 = !{ptr @vrp_initialize, ptr @get_def_from_ptr, i64 88651}
!118 = !{ptr @vrp_initialize, ptr @get_value_range, i64 374349}
!119 = !{ptr @vrp_initialize, ptr @set_value_range_to_varying, i64 374349}
!120 = !{ptr @vrp_initialize, ptr @prop_set_simulate_again, i64 797594}
!121 = !{ptr @vrp_initialize, ptr @gsi_next, i64 797593}
!122 = !{ptr @vrp_initialize, ptr @gsi_start_bb, i64 309097}
!123 = !{ptr @vrp_initialize, ptr @stmt_ends_bb_p, i64 705907}
!124 = !{ptr @vrp_initialize, ptr @op_iter_init_tree, i64 295950}
!125 = !{ptr @vrp_initialize, ptr @op_iter_done, i64 581648}
!126 = !{ptr @vrp_initialize, ptr @op_iter_next_tree, i64 285698}
!127 = !{ptr @vrp_visit_stmt, ptr @fwrite, i64 1}
!128 = !{ptr @vrp_visit_stmt, ptr @print_gimple_stmt, i64 1}
!129 = !{ptr @vrp_visit_stmt, ptr @fputc, i64 1}
!130 = !{ptr @vrp_visit_stmt, ptr @stmt_interesting_for_vrp, i64 421248}
!131 = !{ptr @vrp_visit_stmt, ptr @stmt_ends_bb_p, i64 203}
!132 = !{ptr @vrp_visit_stmt, ptr @fancy_abort, i64 1}
!133 = !{ptr @vrp_visit_stmt, ptr @is_gimple_assign, i64 421045}
!134 = !{ptr @vrp_visit_stmt, ptr @is_gimple_call, i64 421046}
!135 = !{ptr @vrp_visit_stmt, ptr @gimple_call_fndecl, i64 2}
!136 = !{ptr @vrp_visit_stmt, ptr @gimple_vuse, i64 135674}
!137 = !{ptr @vrp_visit_stmt, ptr @vrp_visit_assignment_or_call, i64 135673}
!138 = !{ptr @vrp_visit_stmt, ptr @gimple_code, i64 285371}
!139 = !{ptr @vrp_visit_stmt, ptr @vrp_visit_cond_stmt, i64 285290}
!140 = !{ptr @vrp_visit_stmt, ptr @vrp_visit_switch_stmt, i64 80}
!141 = !{ptr @vrp_visit_stmt, ptr @op_iter_init_tree, i64 205}
!142 = !{ptr @vrp_visit_stmt, ptr @op_iter_done, i64 206}
!143 = !{ptr @vrp_visit_stmt, ptr @get_value_range, i64 1}
!144 = !{ptr @vrp_visit_stmt, ptr @set_value_range_to_varying, i64 1}
!145 = !{ptr @vrp_visit_stmt, ptr @op_iter_next_tree, i64 1}
!146 = !{ptr @vrp_visit_phi_node, ptr @gimple_phi_result_ptr, i64 12896}
!147 = !{ptr @vrp_visit_phi_node, ptr @get_def_from_ptr, i64 12896}
!148 = !{ptr @vrp_visit_phi_node, ptr @get_value_range, i64 13821}
!149 = !{ptr @vrp_visit_phi_node, ptr @copy_value_range, i64 12896}
!150 = !{ptr @vrp_visit_phi_node, ptr @gimple_phi_num_args, i64 471370}
!151 = !{ptr @vrp_visit_phi_node, ptr @gimple_phi_arg_edge, i64 471163}
!152 = !{ptr @vrp_visit_phi_node, ptr @gimple_phi_arg_imm_use_ptr, i64 406051}
!153 = !{ptr @vrp_visit_phi_node, ptr @get_use_from_ptr, i64 406051}
!154 = !{ptr @vrp_visit_phi_node, ptr @is_overflow_infinity, i64 405126}
!155 = !{ptr @vrp_visit_phi_node, ptr @vrp_meet, i64 406051}
!156 = !{ptr @vrp_visit_phi_node, ptr @loop_containing_stmt, i64 12895}
!157 = !{ptr @vrp_visit_phi_node, ptr @gimple_bb, i64 12894}
!158 = !{ptr @vrp_visit_phi_node, ptr @adjust_range_with_scev, i64 1}
!159 = !{ptr @vrp_visit_phi_node, ptr @compare_values, i64 2966}
!160 = !{ptr @vrp_visit_phi_node, ptr @vrp_val_is_max, i64 2}
!161 = !{ptr @vrp_visit_phi_node, ptr @vrp_val_is_min, i64 2}
!162 = !{ptr @vrp_visit_phi_node, ptr @update_value_range, i64 11204}
!163 = !{ptr @vrp_visit_phi_node, ptr @set_value_range_to_varying, i64 1692}
!164 = !{ptr @vrp_finalize, ptr @fwrite, i64 1}
!165 = !{ptr @vrp_finalize, ptr @dump_all_value_ranges, i64 1}
!166 = !{ptr @vrp_finalize, ptr @fputc, i64 1}
!167 = !{ptr @vrp_finalize, ptr @VEC_tree_base_length, i64 1571828}
!168 = !{ptr @vrp_finalize, ptr @xcalloc, i64 76}
!169 = !{ptr @vrp_finalize, ptr @is_gimple_min_invariant, i64 7567}
!170 = !{ptr @vrp_finalize, ptr @free, i64 506768}
!171 = !{ptr @vrp_finalize, ptr @substitute_and_fold, i64 76}
!172 = !{ptr @vrp_finalize, ptr @check_all_array_refs, i64 1}
!173 = !{ptr @vrp_finalize, ptr @identify_jump_threads, i64 76}
!174 = !{ptr @vrp_finalize, ptr @bitmap_obstack_free, i64 506501}
!175 = !{ptr @remove_range_assertions, ptr @gsi_start_bb, i64 309097}
!176 = !{ptr @remove_range_assertions, ptr @gsi_end_p, i64 1014904}
!177 = !{ptr @remove_range_assertions, ptr @gsi_stmt, i64 705807}
!178 = !{ptr @remove_range_assertions, ptr @is_gimple_assign, i64 705807}
!179 = !{ptr @remove_range_assertions, ptr @gimple_assign_rhs_code, i64 282745}
!180 = !{ptr @remove_range_assertions, ptr @gimple_assign_rhs1, i64 35122}
!181 = !{ptr @remove_range_assertions, ptr @fold, i64 35122}
!182 = !{ptr @remove_range_assertions, ptr @fancy_abort, i64 2}
!183 = !{ptr @remove_range_assertions, ptr @gimple_assign_lhs, i64 35122}
!184 = !{ptr @remove_range_assertions, ptr @first_imm_use_stmt, i64 35122}
!185 = !{ptr @remove_range_assertions, ptr @end_imm_use_stmt_p, i64 179218}
!186 = !{ptr @remove_range_assertions, ptr @first_imm_use_on_stmt, i64 144096}
!187 = !{ptr @remove_range_assertions, ptr @end_imm_use_on_stmt_p, i64 295840}
!188 = !{ptr @remove_range_assertions, ptr @set_ssa_use_from_ptr, i64 151744}
!189 = !{ptr @remove_range_assertions, ptr @next_imm_use_on_stmt, i64 151744}
!190 = !{ptr @remove_range_assertions, ptr @next_imm_use_stmt, i64 144096}
!191 = !{ptr @remove_range_assertions, ptr @gsi_remove, i64 35122}
!192 = !{ptr @remove_range_assertions, ptr @release_defs, i64 35122}
!193 = !{ptr @remove_range_assertions, ptr @gsi_next, i64 670685}
!194 = !{ptr @finalize_jump_threads, ptr @thread_through_all_blocks, i64 76}
!195 = !{ptr @finalize_jump_threads, ptr @VEC_tree_heap_free, i64 76}
!196 = !{ptr @VEC_edge_heap_free, ptr @free, i64 75}
!197 = !{ptr @VEC_switch_update_heap_free, ptr @free, i64 75}
!198 = !{ptr @find_assert_locations, ptr @xcalloc, i64 304}
!199 = !{ptr @find_assert_locations, ptr @pre_and_rev_post_order_compute, i64 76}
!200 = !{ptr @find_assert_locations, ptr @VEC_basic_block_base_index, i64 298124}
!201 = !{ptr @find_assert_locations, ptr @VEC_tree_base_length, i64 298198}
!202 = !{ptr @find_assert_locations, ptr @sbitmap_alloc, i64 298198}
!203 = !{ptr @find_assert_locations, ptr @sbitmap_zero, i64 298198}
!204 = !{ptr @find_assert_locations, ptr @find_assert_locations_1, i64 298124}
!205 = !{ptr @find_assert_locations, ptr @sbitmap_empty_p, i64 298124}
!206 = !{ptr @find_assert_locations, ptr @ei_start_1, i64 596202}
!207 = !{ptr @find_assert_locations, ptr @ei_cond, i64 1764872}
!208 = !{ptr @find_assert_locations, ptr @sbitmap_a_or_b, i64 584304}
!209 = !{ptr @find_assert_locations, ptr @ei_next, i64 1168670}
!210 = !{ptr @find_assert_locations, ptr @free, i64 596702}
!211 = !{ptr @process_assert_insertions, ptr @bmp_iter_set_init, i64 76}
!212 = !{ptr @process_assert_insertions, ptr @bmp_iter_set, i64 17973}
!213 = !{ptr @process_assert_insertions, ptr @fancy_abort, i64 1}
!214 = !{ptr @process_assert_insertions, ptr @VEC_tree_base_index, i64 35122}
!215 = !{ptr @process_assert_insertions, ptr @process_assert_insertions_for, i64 35122}
!216 = !{ptr @process_assert_insertions, ptr @free, i64 35122}
!217 = !{ptr @process_assert_insertions, ptr @bmp_iter_next, i64 17897}
!218 = !{ptr @process_assert_insertions, ptr @gsi_commit_edge_inserts, i64 66}
!219 = !{ptr @process_assert_insertions, ptr @statistics_counter_event, i64 76}
!220 = !{ptr @find_assert_locations_1, ptr @last_stmt, i64 302046}
!221 = !{ptr @find_assert_locations_1, ptr @gimple_code, i64 573368}
!222 = !{ptr @find_assert_locations_1, ptr @fp_predicate, i64 284325}
!223 = !{ptr @find_assert_locations_1, ptr @zero_ssa_operands, i64 284405}
!224 = !{ptr @find_assert_locations_1, ptr @find_conditional_asserts, i64 284323}
!225 = !{ptr @find_assert_locations_1, ptr @find_switch_asserts, i64 80}
!226 = !{ptr @find_assert_locations_1, ptr @gsi_start_bb, i64 302046}
!227 = !{ptr @find_assert_locations_1, ptr @gsi_end_p, i64 1376594}
!228 = !{ptr @find_assert_locations_1, ptr @gsi_stmt, i64 772502}
!229 = !{ptr @find_assert_locations_1, ptr @is_gimple_debug, i64 679610}
!230 = !{ptr @find_assert_locations_1, ptr @op_iter_init_tree, i64 679609}
!231 = !{ptr @find_assert_locations_1, ptr @op_iter_done, i64 1444120}
!232 = !{ptr @find_assert_locations_1, ptr @SET_BIT, i64 546398}
!233 = !{ptr @find_assert_locations_1, ptr @infer_value_range, i64 538978}
!234 = !{ptr @find_assert_locations_1, ptr @integer_zerop, i64 568}
!235 = !{ptr @find_assert_locations_1, ptr @is_gimple_assign, i64 568}
!236 = !{ptr @find_assert_locations_1, ptr @gimple_assign_rhs_code, i64 284}
!237 = !{ptr @find_assert_locations_1, ptr @gimple_assign_rhs1, i64 4}
!238 = !{ptr @find_assert_locations_1, ptr @has_single_use, i64 570}
!239 = !{ptr @find_assert_locations_1, ptr @register_new_assert_for, i64 477}
!240 = !{ptr @find_assert_locations_1, ptr @op_iter_next_tree, i64 538978}
!241 = !{ptr @find_assert_locations_1, ptr @gsi_next, i64 772502}
!242 = !{ptr @find_assert_locations_1, ptr @gsi_start_phis, i64 302046}
!243 = !{ptr @find_assert_locations_1, ptr @op_iter_init_phiuse, i64 92892}
!244 = !{ptr @find_assert_locations_1, ptr @get_use_from_ptr, i64 132641}
!245 = !{ptr @find_assert_locations_1, ptr @op_iter_next_use, i64 132641}
!246 = !{ptr @ei_cond, ptr @ei_end_p, i64 2983476}
!247 = !{ptr @ei_cond, ptr @ei_edge, i64 1999172}
!248 = !{ptr @ei_next, ptr @ei_container, i64 3998343}
!249 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1999172}
!250 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!251 = !{ptr @fp_predicate, ptr @gimple_cond_lhs, i64 852980}
!252 = !{ptr @zero_ssa_operands, ptr @op_iter_init_tree, i64 284407}
!253 = !{ptr @zero_ssa_operands, ptr @op_iter_done, i64 284407}
!254 = !{ptr @find_conditional_asserts, ptr @gsi_for_stmt, i64 284327}
!255 = !{ptr @find_conditional_asserts, ptr @ei_start_1, i64 284327}
!256 = !{ptr @find_conditional_asserts, ptr @ei_cond, i64 852980}
!257 = !{ptr @find_conditional_asserts, ptr @op_iter_init_tree, i64 568652}
!258 = !{ptr @find_conditional_asserts, ptr @op_iter_done, i64 1137304}
!259 = !{ptr @find_conditional_asserts, ptr @gimple_cond_code, i64 568652}
!260 = !{ptr @find_conditional_asserts, ptr @gimple_cond_lhs, i64 568652}
!261 = !{ptr @find_conditional_asserts, ptr @gimple_cond_rhs, i64 568652}
!262 = !{ptr @find_conditional_asserts, ptr @register_edge_assert_for, i64 568652}
!263 = !{ptr @find_conditional_asserts, ptr @op_iter_next_tree, i64 568652}
!264 = !{ptr @find_conditional_asserts, ptr @ei_next, i64 568653}
!265 = !{ptr @find_switch_asserts, ptr @gimple_switch_num_labels, i64 80}
!266 = !{ptr @find_switch_asserts, ptr @gsi_for_stmt, i64 80}
!267 = !{ptr @find_switch_asserts, ptr @gimple_switch_index, i64 80}
!268 = !{ptr @find_switch_asserts, ptr @make_tree_vec_stat, i64 79}
!269 = !{ptr @find_switch_asserts, ptr @gimple_switch_label, i64 18048}
!270 = !{ptr @find_switch_asserts, ptr @spec_qsort, i64 79}
!271 = !{ptr @find_switch_asserts, ptr @label_to_block_fn, i64 5664}
!272 = !{ptr @find_switch_asserts, ptr @find_edge, i64 5664}
!273 = !{ptr @find_switch_asserts, ptr @fold_convert_loc, i64 8991}
!274 = !{ptr @find_switch_asserts, ptr @register_edge_assert_for, i64 8991}
!275 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 928372}
!276 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 928372}
!277 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 734784}
!278 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 1832718}
!279 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 1832718}
!280 = !{ptr @infer_value_range, ptr @stmt_could_throw_p, i64 538979}
!281 = !{ptr @infer_value_range, ptr @stmt_ends_bb_p, i64 538978}
!282 = !{ptr @infer_value_range, ptr @gimple_bb, i64 284560}
!283 = !{ptr @infer_value_range, ptr @VEC_edge_base_length, i64 284560}
!284 = !{ptr @infer_value_range, ptr @gimple_code, i64 138828}
!285 = !{ptr @infer_value_range, ptr @count_uses_and_derefs, i64 138827}
!286 = !{ptr @infer_value_range, ptr @build_int_cst, i64 569}
!287 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 3833705}
!288 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 2072797}
!289 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 2072797}
!290 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 686651}
!291 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 1167226}
!292 = !{ptr @has_single_use, ptr @is_gimple_debug, i64 55172}
!293 = !{ptr @has_single_use, ptr @single_imm_use_1, i64 1}
!294 = !{ptr @register_new_assert_for, ptr @build_int_cst_wide, i64 1}
!295 = !{ptr @register_new_assert_for, ptr @operand_equal_p, i64 21048}
!296 = !{ptr @register_new_assert_for, ptr @dominated_by_p, i64 1622}
!297 = !{ptr @register_new_assert_for, ptr @VEC_edge_base_length, i64 4219}
!298 = !{ptr @register_new_assert_for, ptr @xmalloc, i64 35580}
!299 = !{ptr @register_new_assert_for, ptr @bitmap_set_bit, i64 35580}
!300 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 1392041}
!301 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 289458}
!302 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 95930}
!303 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 95930}
!304 = !{ptr @op_iter_init_phiuse, ptr @fancy_abort, i64 1}
!305 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 95930}
!306 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 6114}
!307 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 6114}
!308 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 139210}
!309 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 2752626}
!310 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 6710768}
!311 = !{ptr @gimple_op, ptr @gimple_ops, i64 6710767}
!312 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 8696573}
!313 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 6711322}
!314 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!315 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 6711322}
!316 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 6711322}
!317 = !{ptr @register_edge_assert_for, ptr @extract_code_and_val_from_cond_with_ops, i64 577869}
!318 = !{ptr @register_edge_assert_for, ptr @register_edge_assert_for_2, i64 577868}
!319 = !{ptr @register_edge_assert_for, ptr @integer_onep, i64 570164}
!320 = !{ptr @register_edge_assert_for, ptr @integer_zerop, i64 570164}
!321 = !{ptr @register_edge_assert_for, ptr @is_gimple_assign, i64 305854}
!322 = !{ptr @register_edge_assert_for, ptr @gimple_assign_rhs_code, i64 258648}
!323 = !{ptr @register_edge_assert_for, ptr @gimple_assign_rhs1, i64 35844}
!324 = !{ptr @register_edge_assert_for, ptr @gimple_assign_rhs2, i64 35844}
!325 = !{ptr @register_edge_assert_for, ptr @register_edge_assert_for_1, i64 71688}
!326 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 2137408}
!327 = !{ptr @extract_code_and_val_from_cond_with_ops, ptr @swap_tree_comparison, i64 1}
!328 = !{ptr @extract_code_and_val_from_cond_with_ops, ptr @invert_tree_comparison, i64 607128}
!329 = !{ptr @extract_code_and_val_from_cond_with_ops, ptr @compare_values, i64 753047}
!330 = !{ptr @register_edge_assert_for_2, ptr @extract_code_and_val_from_cond_with_ops, i64 616344}
!331 = !{ptr @register_edge_assert_for_2, ptr @live_on_edge, i64 621832}
!332 = !{ptr @register_edge_assert_for_2, ptr @has_single_use, i64 35340}
!333 = !{ptr @register_edge_assert_for_2, ptr @register_new_assert_for, i64 35338}
!334 = !{ptr @register_edge_assert_for_2, ptr @is_gimple_assign, i64 5492}
!335 = !{ptr @register_edge_assert_for_2, ptr @gimple_assign_rhs_code, i64 5492}
!336 = !{ptr @register_edge_assert_for_2, ptr @gimple_assign_rhs1, i64 5491}
!337 = !{ptr @register_edge_assert_for_2, ptr @gimple_assign_rhs2, i64 5490}
!338 = !{ptr @register_edge_assert_for_2, ptr @gimple_assign_cast_p, i64 5492}
!339 = !{ptr @register_edge_assert_for_2, ptr @build1_stat, i64 892}
!340 = !{ptr @register_edge_assert_for_2, ptr @build2_stat, i64 893}
!341 = !{ptr @register_edge_assert_for_2, ptr @fwrite, i64 2}
!342 = !{ptr @register_edge_assert_for_2, ptr @print_generic_expr, i64 2}
!343 = !{ptr @register_edge_assert_for_2, ptr @fputc, i64 1}
!344 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 322176}
!345 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 322175}
!346 = !{ptr @register_edge_assert_for_1, ptr @has_single_use, i64 71684}
!347 = !{ptr @register_edge_assert_for_1, ptr @build_int_cst, i64 1}
!348 = !{ptr @register_edge_assert_for_1, ptr @register_new_assert_for, i64 1}
!349 = !{ptr @register_edge_assert_for_1, ptr @gimple_code, i64 71684}
!350 = !{ptr @register_edge_assert_for_1, ptr @gimple_assign_rhs_code, i64 201338}
!351 = !{ptr @register_edge_assert_for_1, ptr @gimple_assign_rhs1, i64 50081}
!352 = !{ptr @register_edge_assert_for_1, ptr @gimple_assign_rhs2, i64 50072}
!353 = !{ptr @register_edge_assert_for_1, ptr @register_edge_assert_for_2, i64 50068}
!354 = !{ptr @register_edge_assert_for_1, ptr @register_edge_assert_for_1, i64 14}
!355 = !{ptr @register_edge_assert_for_1, ptr @invert_tree_comparison, i64 1}
!356 = !{ptr @gimple_assign_cast_p, ptr @is_gimple_assign, i64 5492}
!357 = !{ptr @gimple_assign_cast_p, ptr @gimple_assign_rhs_code, i64 5230}
!358 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 273986}
!359 = !{ptr @gimple_expr_type, ptr @gimple_call_return_type, i64 1}
!360 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 273985}
!361 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 19}
!362 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 273966}
!363 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 267422}
!364 = !{ptr @gimple_switch_num_labels, ptr @gimple_num_ops, i64 80}
!365 = !{ptr @gimple_switch_num_labels, ptr @fancy_abort, i64 1}
!366 = !{ptr @gimple_switch_index, ptr @gimple_op, i64 240}
!367 = !{ptr @gimple_switch_label, ptr @gimple_num_ops, i64 18498}
!368 = !{ptr @gimple_switch_label, ptr @fancy_abort, i64 1}
!369 = !{ptr @gimple_switch_label, ptr @gimple_op, i64 18498}
!370 = !{ptr @compare_case_labels, ptr @tree_int_cst_compare, i64 51059}
!371 = !{ptr @op_iter_init, ptr @fancy_abort, i64 1}
!372 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 300047}
!373 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 293959}
!374 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 1675624}
!375 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 1669735}
!376 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 300046}
!377 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 293958}
!378 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 1675625}
!379 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 2361281}
!380 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 2655239}
!381 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 2072797}
!382 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 21662488}
!383 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!384 = !{ptr @ei_end_p, ptr @ei_container, i64 5966951}
!385 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 2983476}
!386 = !{ptr @ei_edge, ptr @ei_container, i64 3998343}
!387 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1999172}
!388 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!389 = !{ptr @process_assert_insertions_for, ptr @build2_stat, i64 35582}
!390 = !{ptr @process_assert_insertions_for, ptr @build_assert_expr_for, i64 35582}
!391 = !{ptr @process_assert_insertions_for, ptr @gsi_insert_on_edge, i64 35331}
!392 = !{ptr @process_assert_insertions_for, ptr @gsi_stmt, i64 251}
!393 = !{ptr @process_assert_insertions_for, ptr @stmt_ends_bb_p, i64 251}
!394 = !{ptr @process_assert_insertions_for, ptr @gsi_insert_after, i64 250}
!395 = !{ptr @process_assert_insertions_for, ptr @ei_start_1, i64 1}
!396 = !{ptr @process_assert_insertions_for, ptr @ei_cond, i64 11}
!397 = !{ptr @process_assert_insertions_for, ptr @ei_next, i64 10}
!398 = !{ptr @process_assert_insertions_for, ptr @fancy_abort, i64 1}
!399 = !{ptr @build_assert_expr_for, ptr @fancy_abort, i64 1}
!400 = !{ptr @build_assert_expr_for, ptr @duplicate_ssa_name, i64 35583}
!401 = !{ptr @build_assert_expr_for, ptr @build2_stat, i64 35582}
!402 = !{ptr @build_assert_expr_for, ptr @gimple_build_assign_stat, i64 35582}
!403 = !{ptr @build_assert_expr_for, ptr @register_new_name_mapping, i64 35583}
!404 = !{ptr @stmt_interesting_for_vrp, ptr @gimple_code, i64 1326809}
!405 = !{ptr @stmt_interesting_for_vrp, ptr @gimple_phi_result, i64 95967}
!406 = !{ptr @stmt_interesting_for_vrp, ptr @is_gimple_reg, i64 92892}
!407 = !{ptr @stmt_interesting_for_vrp, ptr @is_gimple_assign, i64 943955}
!408 = !{ptr @stmt_interesting_for_vrp, ptr @is_gimple_call, i64 1077911}
!409 = !{ptr @stmt_interesting_for_vrp, ptr @gimple_get_lhs, i64 561871}
!410 = !{ptr @stmt_interesting_for_vrp, ptr @gimple_call_fndecl, i64 268075}
!411 = !{ptr @stmt_interesting_for_vrp, ptr @gimple_vuse, i64 557229}
!412 = !{ptr @prop_set_simulate_again, ptr @gimple_set_visited, i64 808085}
!413 = !{ptr @is_gimple_call, ptr @gimple_code, i64 1496327}
!414 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 267422}
!415 = !{ptr @vrp_visit_assignment_or_call, ptr @gimple_code, i64 135673}
!416 = !{ptr @vrp_visit_assignment_or_call, ptr @gimple_get_lhs, i64 135673}
!417 = !{ptr @vrp_visit_assignment_or_call, ptr @extract_range_basic, i64 1}
!418 = !{ptr @vrp_visit_assignment_or_call, ptr @extract_range_from_assignment, i64 135670}
!419 = !{ptr @vrp_visit_assignment_or_call, ptr @update_value_range, i64 135671}
!420 = !{ptr @vrp_visit_assignment_or_call, ptr @op_iter_init_tree, i64 2}
!421 = !{ptr @vrp_visit_assignment_or_call, ptr @op_iter_done, i64 20}
!422 = !{ptr @vrp_visit_assignment_or_call, ptr @get_value_range, i64 18}
!423 = !{ptr @vrp_visit_assignment_or_call, ptr @set_value_range_to_varying, i64 18}
!424 = !{ptr @vrp_visit_assignment_or_call, ptr @op_iter_next_tree, i64 18}
!425 = !{ptr @vrp_visit_cond_stmt, ptr @fputc, i64 6}
!426 = !{ptr @vrp_visit_cond_stmt, ptr @print_generic_expr, i64 6}
!427 = !{ptr @vrp_visit_cond_stmt, ptr @fwrite, i64 6}
!428 = !{ptr @vrp_visit_cond_stmt, ptr @dump_value_range, i64 6}
!429 = !{ptr @vrp_visit_cond_stmt, ptr @op_iter_next_tree, i64 6}
!430 = !{ptr @vrp_visit_cond_stmt, ptr @op_iter_done, i64 6}
!431 = !{ptr @vrp_visit_cond_stmt, ptr @gimple_cond_code, i64 285293}
!432 = !{ptr @vrp_visit_cond_stmt, ptr @gimple_cond_lhs, i64 285293}
!433 = !{ptr @vrp_visit_cond_stmt, ptr @gimple_cond_rhs, i64 285293}
!434 = !{ptr @vrp_visit_cond_stmt, ptr @vrp_evaluate_conditional_warnv_with_ops, i64 285293}
!435 = !{ptr @vrp_visit_cond_stmt, ptr @gimple_bb, i64 1443}
!436 = !{ptr @vrp_visit_cond_stmt, ptr @find_taken_edge, i64 1443}
!437 = !{ptr @vrp_visit_switch_stmt, ptr @gimple_switch_index, i64 80}
!438 = !{ptr @vrp_visit_switch_stmt, ptr @get_value_range, i64 79}
!439 = !{ptr @vrp_visit_switch_stmt, ptr @symbolic_range_p, i64 1}
!440 = !{ptr @vrp_visit_switch_stmt, ptr @gimple_switch_label, i64 2}
!441 = !{ptr @extract_range_basic, ptr @gimple_expr_type, i64 79493}
!442 = !{ptr @extract_range_basic, ptr @gimple_stmt_nonnegative_warnv_p, i64 79474}
!443 = !{ptr @extract_range_basic, ptr @stmt_overflow_infinity, i64 63769}
!444 = !{ptr @extract_range_basic, ptr @set_value_range_to_nonnegative, i64 63770}
!445 = !{ptr @extract_range_basic, ptr @vrp_stmt_computes_nonzero, i64 15723}
!446 = !{ptr @extract_range_basic, ptr @set_value_range_to_nonnull, i64 12}
!447 = !{ptr @extract_range_basic, ptr @set_value_range_to_varying, i64 15711}
!448 = !{ptr @extract_range_from_assignment, ptr @gimple_assign_rhs_code, i64 234978}
!449 = !{ptr @extract_range_from_assignment, ptr @gimple_assign_rhs1, i64 135673}
!450 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_assert, i64 36347}
!451 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_ssa_name, i64 7}
!452 = !{ptr @extract_range_from_assignment, ptr @gimple_expr_type, i64 99305}
!453 = !{ptr @extract_range_from_assignment, ptr @gimple_assign_rhs2, i64 99166}
!454 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_binary_expr, i64 58389}
!455 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_unary_expr, i64 139}
!456 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_cond_expr, i64 1}
!457 = !{ptr @extract_range_from_assignment, ptr @extract_range_from_comparison, i64 40777}
!458 = !{ptr @extract_range_from_assignment, ptr @get_gimple_rhs_class, i64 13}
!459 = !{ptr @extract_range_from_assignment, ptr @is_gimple_min_invariant, i64 12}
!460 = !{ptr @extract_range_from_assignment, ptr @set_value_range_to_value, i64 1}
!461 = !{ptr @extract_range_from_assignment, ptr @set_value_range_to_varying, i64 12}
!462 = !{ptr @extract_range_from_assignment, ptr @extract_range_basic, i64 79493}
!463 = !{ptr @update_value_range, ptr @get_value_range, i64 146881}
!464 = !{ptr @update_value_range, ptr @vrp_operand_equal_p, i64 23219}
!465 = !{ptr @update_value_range, ptr @vrp_bitmap_equal_p, i64 8920}
!466 = !{ptr @update_value_range, ptr @set_value_range, i64 138353}
!467 = !{ptr @update_value_range, ptr @bitmap_obstack_free, i64 146881}
!468 = !{ptr @gimple_stmt_nonnegative_warnv_p, ptr @gimple_code, i64 79475}
!469 = !{ptr @gimple_stmt_nonnegative_warnv_p, ptr @gimple_assign_nonnegative_warnv_p, i64 79473}
!470 = !{ptr @gimple_stmt_nonnegative_warnv_p, ptr @gimple_call_nonnegative_warnv_p, i64 1}
!471 = !{ptr @gimple_stmt_nonnegative_warnv_p, ptr @fancy_abort, i64 1}
!472 = !{ptr @set_value_range_to_nonnegative, ptr @supports_overflow_infinity, i64 1}
!473 = !{ptr @set_value_range_to_nonnegative, ptr @build_int_cst, i64 63771}
!474 = !{ptr @set_value_range_to_nonnegative, ptr @positive_overflow_infinity, i64 1}
!475 = !{ptr @set_value_range_to_nonnegative, ptr @set_value_range, i64 63771}
!476 = !{ptr @stmt_overflow_infinity, ptr @is_gimple_assign, i64 63771}
!477 = !{ptr @stmt_overflow_infinity, ptr @gimple_assign_rhs_code, i64 63770}
!478 = !{ptr @stmt_overflow_infinity, ptr @get_gimple_rhs_class, i64 63770}
!479 = !{ptr @stmt_overflow_infinity, ptr @gimple_assign_rhs1, i64 1}
!480 = !{ptr @stmt_overflow_infinity, ptr @is_overflow_infinity, i64 1}
!481 = !{ptr @vrp_stmt_computes_nonzero, ptr @gimple_stmt_nonzero_warnv_p, i64 15722}
!482 = !{ptr @vrp_stmt_computes_nonzero, ptr @is_gimple_assign, i64 15721}
!483 = !{ptr @vrp_stmt_computes_nonzero, ptr @gimple_assign_rhs_code, i64 15720}
!484 = !{ptr @vrp_stmt_computes_nonzero, ptr @gimple_assign_rhs1, i64 13}
!485 = !{ptr @vrp_stmt_computes_nonzero, ptr @get_base_address, i64 13}
!486 = !{ptr @vrp_stmt_computes_nonzero, ptr @get_value_range, i64 10}
!487 = !{ptr @vrp_stmt_computes_nonzero, ptr @range_is_nonnull, i64 10}
!488 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @gimple_assign_rhs_code, i64 158947}
!489 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @get_gimple_rhs_class, i64 79475}
!490 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @gimple_expr_type, i64 79472}
!491 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @gimple_assign_rhs1, i64 79473}
!492 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @tree_unary_nonnegative_warnv_p, i64 23}
!493 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @gimple_assign_rhs2, i64 79449}
!494 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @tree_binary_nonnegative_warnv_p, i64 79449}
!495 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @tree_single_nonnegative_warnv_p, i64 1}
!496 = !{ptr @gimple_assign_nonnegative_warnv_p, ptr @fancy_abort, i64 3}
!497 = !{ptr @is_overflow_infinity, ptr @needs_overflow_infinity, i64 44482186}
!498 = !{ptr @is_overflow_infinity, ptr @vrp_val_is_min, i64 1}
!499 = !{ptr @gimple_stmt_nonzero_warnv_p, ptr @gimple_code, i64 15722}
!500 = !{ptr @gimple_stmt_nonzero_warnv_p, ptr @gimple_assign_nonzero_warnv_p, i64 15720}
!501 = !{ptr @gimple_stmt_nonzero_warnv_p, ptr @gimple_alloca_call_p, i64 1}
!502 = !{ptr @gimple_stmt_nonzero_warnv_p, ptr @fancy_abort, i64 1}
!503 = !{ptr @range_is_nonnull, ptr @integer_zerop, i64 21}
!504 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @gimple_assign_rhs_code, i64 31429}
!505 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @get_gimple_rhs_class, i64 15722}
!506 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @gimple_expr_type, i64 15707}
!507 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @gimple_assign_rhs1, i64 15720}
!508 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @tree_unary_nonzero_warnv_p, i64 1}
!509 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @gimple_assign_rhs2, i64 15706}
!510 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @tree_binary_nonzero_warnv_p, i64 15706}
!511 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @tree_single_nonzero_warnv_p, i64 13}
!512 = !{ptr @gimple_assign_nonzero_warnv_p, ptr @fancy_abort, i64 3}
!513 = !{ptr @extract_range_from_assert, ptr @fancy_abort, i64 6}
!514 = !{ptr @extract_range_from_assert, ptr @avoid_overflow_infinity, i64 36347}
!515 = !{ptr @extract_range_from_assert, ptr @get_value_range, i64 36348}
!516 = !{ptr @extract_range_from_assert, ptr @add_equivalence, i64 36348}
!517 = !{ptr @extract_range_from_assert, ptr @fold_build1_stat_loc, i64 895}
!518 = !{ptr @extract_range_from_assert, ptr @int_const_binop, i64 895}
!519 = !{ptr @extract_range_from_assert, ptr @build_int_cst, i64 618}
!520 = !{ptr @extract_range_from_assert, ptr @force_fit_type_double, i64 1792}
!521 = !{ptr @extract_range_from_assert, ptr @set_and_canonicalize_value_range, i64 895}
!522 = !{ptr @extract_range_from_assert, ptr @set_value_range, i64 37337}
!523 = !{ptr @extract_range_from_assert, ptr @vrp_val_is_min, i64 28005}
!524 = !{ptr @extract_range_from_assert, ptr @vrp_val_is_max, i64 622}
!525 = !{ptr @extract_range_from_assert, ptr @compare_values, i64 9381}
!526 = !{ptr @extract_range_from_assert, ptr @set_value_range_to_varying, i64 5}
!527 = !{ptr @extract_range_from_assert, ptr @fold_build2_stat_loc, i64 620}
!528 = !{ptr @extract_range_from_assert, ptr @symbolic_range_p, i64 20065}
!529 = !{ptr @extract_range_from_assert, ptr @value_ranges_intersect_p, i64 541}
!530 = !{ptr @extract_range_from_assert, ptr @is_positive_overflow_infinity, i64 585}
!531 = !{ptr @extract_range_from_assert, ptr @needs_overflow_infinity, i64 589}
!532 = !{ptr @extract_range_from_assert, ptr @supports_overflow_infinity, i64 1}
!533 = !{ptr @extract_range_from_assert, ptr @positive_overflow_infinity, i64 1}
!534 = !{ptr @extract_range_from_assert, ptr @size_int_kind, i64 3}
!535 = !{ptr @extract_range_from_assert, ptr @is_negative_overflow_infinity, i64 4}
!536 = !{ptr @extract_range_from_ssa_name, ptr @get_value_range, i64 6}
!537 = !{ptr @extract_range_from_ssa_name, ptr @copy_value_range, i64 5}
!538 = !{ptr @extract_range_from_ssa_name, ptr @set_value_range, i64 1}
!539 = !{ptr @extract_range_from_ssa_name, ptr @add_equivalence, i64 6}
!540 = !{ptr @extract_range_from_binary_expr, ptr @op_with_constant_singleton_value_range, i64 6870}
!541 = !{ptr @extract_range_from_binary_expr, ptr @fold_binary_loc, i64 27653}
!542 = !{ptr @extract_range_from_binary_expr, ptr @is_gimple_min_invariant, i64 129714}
!543 = !{ptr @extract_range_from_binary_expr, ptr @is_overflow_infinity, i64 77629}
!544 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range, i64 7117}
!545 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_varying, i64 50901}
!546 = !{ptr @extract_range_from_binary_expr, ptr @get_value_range, i64 75787}
!547 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_value, i64 34115}
!548 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_undefined, i64 2}
!549 = !{ptr @extract_range_from_binary_expr, ptr @symbolic_range_p, i64 37164}
!550 = !{ptr @extract_range_from_binary_expr, ptr @range_is_nonnull, i64 13}
!551 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_nonnull, i64 6}
!552 = !{ptr @extract_range_from_binary_expr, ptr @range_is_null, i64 5}
!553 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_null, i64 1}
!554 = !{ptr @extract_range_from_binary_expr, ptr @fancy_abort, i64 287}
!555 = !{ptr @extract_range_from_binary_expr, ptr @integer_zerop, i64 2}
!556 = !{ptr @extract_range_from_binary_expr, ptr @integer_onep, i64 25953}
!557 = !{ptr @extract_range_from_binary_expr, ptr @build_int_cst, i64 1489}
!558 = !{ptr @extract_range_from_binary_expr, ptr @overflow_infinity_range_p, i64 25942}
!559 = !{ptr @extract_range_from_binary_expr, ptr @set_value_range_to_truthvalue, i64 10}
!560 = !{ptr @extract_range_from_binary_expr, ptr @vrp_int_const_binop, i64 60507}
!561 = !{ptr @extract_range_from_binary_expr, ptr @build_int_cst_wide, i64 54138}
!562 = !{ptr @extract_range_from_binary_expr, ptr @vrp_expr_computes_nonnegative, i64 829}
!563 = !{ptr @extract_range_from_binary_expr, ptr @operand_less_p, i64 75}
!564 = !{ptr @extract_range_from_binary_expr, ptr @range_includes_zero_p, i64 1276}
!565 = !{ptr @extract_range_from_binary_expr, ptr @vrp_val_min, i64 400}
!566 = !{ptr @extract_range_from_binary_expr, ptr @vrp_val_max, i64 400}
!567 = !{ptr @extract_range_from_binary_expr, ptr @compare_values, i64 21794}
!568 = !{ptr @extract_range_from_binary_expr, ptr @abs_extent_range, i64 355}
!569 = !{ptr @extract_range_from_binary_expr, ptr @tree_int_cst_sgn, i64 1671}
!570 = !{ptr @extract_range_from_binary_expr, ptr @tree_to_double_int, i64 968}
!571 = !{ptr @extract_range_from_binary_expr, ptr @floor_log2, i64 453}
!572 = !{ptr @extract_range_from_binary_expr, ptr @double_int_to_tree, i64 484}
!573 = !{ptr @extract_range_from_binary_expr, ptr @vrp_val_is_min, i64 43993}
!574 = !{ptr @extract_range_from_binary_expr, ptr @vrp_val_is_max, i64 24256}
!575 = !{ptr @extract_range_from_unary_expr, ptr @op_with_constant_singleton_value_range, i64 110}
!576 = !{ptr @extract_range_from_unary_expr, ptr @fold_unary_loc, i64 69}
!577 = !{ptr @extract_range_from_unary_expr, ptr @is_gimple_min_invariant, i64 43}
!578 = !{ptr @extract_range_from_unary_expr, ptr @is_overflow_infinity, i64 59}
!579 = !{ptr @extract_range_from_unary_expr, ptr @set_value_range, i64 11}
!580 = !{ptr @extract_range_from_unary_expr, ptr @set_value_range_to_varying, i64 111}
!581 = !{ptr @extract_range_from_unary_expr, ptr @get_value_range, i64 27}
!582 = !{ptr @extract_range_from_unary_expr, ptr @symbolic_range_p, i64 18}
!583 = !{ptr @extract_range_from_unary_expr, ptr @range_is_nonnull, i64 1}
!584 = !{ptr @extract_range_from_unary_expr, ptr @set_value_range_to_nonnull, i64 1}
!585 = !{ptr @extract_range_from_unary_expr, ptr @force_fit_type_double, i64 28}
!586 = !{ptr @extract_range_from_unary_expr, ptr @set_and_canonicalize_value_range, i64 14}
!587 = !{ptr @extract_range_from_unary_expr, ptr @is_positive_overflow_infinity, i64 2}
!588 = !{ptr @extract_range_from_unary_expr, ptr @range_includes_zero_p, i64 2}
!589 = !{ptr @extract_range_from_unary_expr, ptr @compare_values, i64 4}
!590 = !{ptr @extract_range_from_unary_expr, ptr @fold_unary_to_constant, i64 4}
!591 = !{ptr @extract_range_from_unary_expr, ptr @needs_overflow_infinity, i64 2}
!592 = !{ptr @extract_range_from_unary_expr, ptr @fancy_abort, i64 1}
!593 = !{ptr @extract_range_from_comparison, ptr @vrp_evaluate_conditional_warnv_with_ops, i64 40783}
!594 = !{ptr @extract_range_from_comparison, ptr @is_overflow_infinity, i64 1847}
!595 = !{ptr @extract_range_from_comparison, ptr @fold_convert_loc, i64 1845}
!596 = !{ptr @extract_range_from_comparison, ptr @is_gimple_min_invariant, i64 1845}
!597 = !{ptr @extract_range_from_comparison, ptr @set_value_range_to_value, i64 1844}
!598 = !{ptr @extract_range_from_comparison, ptr @set_value_range, i64 1}
!599 = !{ptr @extract_range_from_comparison, ptr @set_value_range_to_truthvalue, i64 38938}
!600 = !{ptr @set_value_range_to_value, ptr @is_gimple_min_invariant, i64 38095}
!601 = !{ptr @set_value_range_to_value, ptr @fancy_abort, i64 1}
!602 = !{ptr @set_value_range_to_value, ptr @avoid_overflow_infinity, i64 38095}
!603 = !{ptr @set_value_range_to_value, ptr @set_value_range, i64 38095}
!604 = !{ptr @avoid_overflow_infinity, ptr @is_overflow_infinity, i64 74442}
!605 = !{ptr @avoid_overflow_infinity, ptr @vrp_val_is_max, i64 1}
!606 = !{ptr @avoid_overflow_infinity, ptr @vrp_val_max, i64 1}
!607 = !{ptr @symbolic_range_p, ptr @is_gimple_min_invariant, i64 145739}
!608 = !{ptr @add_equivalence, ptr @bitmap_obstack_alloc_stat, i64 36346}
!609 = !{ptr @add_equivalence, ptr @bitmap_set_bit, i64 36353}
!610 = !{ptr @add_equivalence, ptr @bitmap_ior_into, i64 9733}
!611 = !{ptr @set_and_canonicalize_value_range, ptr @set_value_range, i64 1009}
!612 = !{ptr @set_and_canonicalize_value_range, ptr @tree_int_cst_lt, i64 1008}
!613 = !{ptr @set_and_canonicalize_value_range, ptr @build_int_cst, i64 2}
!614 = !{ptr @set_and_canonicalize_value_range, ptr @int_const_binop, i64 3}
!615 = !{ptr @set_and_canonicalize_value_range, ptr @set_value_range_to_varying, i64 2}
!616 = !{ptr @set_and_canonicalize_value_range, ptr @vrp_val_is_min, i64 882}
!617 = !{ptr @set_and_canonicalize_value_range, ptr @vrp_val_is_max, i64 882}
!618 = !{ptr @set_and_canonicalize_value_range, ptr @vrp_val_min, i64 1}
!619 = !{ptr @value_ranges_intersect_p, ptr @operand_less_p, i64 6451}
!620 = !{ptr @copy_value_range, ptr @set_value_range, i64 15976}
!621 = !{ptr @overflow_infinity_range_p, ptr @is_overflow_infinity, i64 38583}
!622 = !{ptr @set_value_range_to_truthvalue, ptr @set_value_range_to_varying, i64 38598}
!623 = !{ptr @set_value_range_to_truthvalue, ptr @build_int_cst, i64 678}
!624 = !{ptr @set_value_range_to_truthvalue, ptr @set_value_range, i64 339}
!625 = !{ptr @vrp_int_const_binop, ptr @int_const_binop, i64 11574}
!626 = !{ptr @vrp_int_const_binop, ptr @compare_values, i64 11573}
!627 = !{ptr @vrp_int_const_binop, ptr @integer_zerop, i64 7}
!628 = !{ptr @vrp_int_const_binop, ptr @copy_node_stat, i64 2893}
!629 = !{ptr @range_includes_zero_p, ptr @symbolic_range_p, i64 1686}
!630 = !{ptr @range_includes_zero_p, ptr @fancy_abort, i64 3}
!631 = !{ptr @range_includes_zero_p, ptr @build_int_cst, i64 1688}
!632 = !{ptr @range_includes_zero_p, ptr @value_inside_range, i64 1688}
!633 = !{ptr @value_inside_range, ptr @operand_less_p, i64 167412}
!634 = !{ptr @vrp_meet, ptr @copy_value_range, i64 3075}
!635 = !{ptr @vrp_meet, ptr @set_value_range_to_varying, i64 1547}
!636 = !{ptr @vrp_meet, ptr @compare_values, i64 43034211}
!637 = !{ptr @vrp_meet, ptr @vrp_val_is_min, i64 21513121}
!638 = !{ptr @vrp_meet, ptr @is_overflow_infinity, i64 21513035}
!639 = !{ptr @vrp_meet, ptr @vrp_val_is_max, i64 27520}
!640 = !{ptr @vrp_meet, ptr @bitmap_and_into, i64 7959}
!641 = !{ptr @vrp_meet, ptr @bitmap_clear, i64 23}
!642 = !{ptr @vrp_meet, ptr @set_value_range, i64 21514072}
!643 = !{ptr @vrp_meet, ptr @symbolic_range_p, i64 9077}
!644 = !{ptr @vrp_meet, ptr @value_ranges_intersect_p, i64 3686}
!645 = !{ptr @vrp_meet, ptr @fancy_abort, i64 1}
!646 = !{ptr @vrp_meet, ptr @range_includes_zero_p, i64 1699}
!647 = !{ptr @vrp_meet, ptr @set_value_range_to_nonnull, i64 2}
!648 = !{ptr @vrp_evaluate_conditional_warnv_with_ops, ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges, i64 893675}
!649 = !{ptr @vrp_evaluate_conditional_warnv_with_ops, ptr @compare_names, i64 29}
!650 = !{ptr @vrp_evaluate_conditional_warnv_with_ops, ptr @compare_name_with_value, i64 563709}
!651 = !{ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges, ptr @get_value_range, i64 893733}
!652 = !{ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges, ptr @compare_ranges, i64 57}
!653 = !{ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges, ptr @compare_range_with_value, i64 893619}
!654 = !{ptr @vrp_evaluate_conditional_warnv_with_ops_using_ranges, ptr @swap_tree_comparison, i64 1}
!655 = !{ptr @compare_names, ptr @get_value_range, i64 56}
!656 = !{ptr @compare_names, ptr @xmalloc, i64 2}
!657 = !{ptr @compare_names, ptr @bitmap_obstack_initialize, i64 2}
!658 = !{ptr @compare_names, ptr @bitmap_obstack_alloc_stat, i64 4}
!659 = !{ptr @compare_names, ptr @bitmap_set_bit, i64 56}
!660 = !{ptr @compare_names, ptr @bitmap_intersect_p, i64 28}
!661 = !{ptr @compare_names, ptr @bitmap_clear_bit, i64 56}
!662 = !{ptr @compare_names, ptr @bmp_iter_set_init, i64 54}
!663 = !{ptr @compare_names, ptr @bmp_iter_set, i64 107}
!664 = !{ptr @compare_names, ptr @get_vr_for_comparison, i64 54}
!665 = !{ptr @compare_names, ptr @compare_ranges, i64 27}
!666 = !{ptr @compare_names, ptr @bmp_iter_next, i64 53}
!667 = !{ptr @compare_name_with_value, ptr @get_value_range, i64 563713}
!668 = !{ptr @compare_name_with_value, ptr @get_vr_for_comparison, i64 596193}
!669 = !{ptr @compare_name_with_value, ptr @compare_range_with_value, i64 596193}
!670 = !{ptr @compare_name_with_value, ptr @bmp_iter_set_init, i64 28591}
!671 = !{ptr @compare_name_with_value, ptr @bmp_iter_set, i64 61071}
!672 = !{ptr @compare_name_with_value, ptr @bmp_iter_next, i64 32480}
!673 = !{ptr @compare_ranges, ptr @compare_values_warnv, i64 44}
!674 = !{ptr @compare_ranges, ptr @usable_range_p, i64 47}
!675 = !{ptr @compare_ranges, ptr @overflow_infinity_range_p, i64 4}
!676 = !{ptr @compare_ranges, ptr @fancy_abort, i64 1}
!677 = !{ptr @compare_range_with_value, ptr @value_inside_range, i64 88523}
!678 = !{ptr @compare_range_with_value, ptr @usable_range_p, i64 680821}
!679 = !{ptr @compare_range_with_value, ptr @compare_values_warnv, i64 1633089}
!680 = !{ptr @compare_range_with_value, ptr @overflow_infinity_range_p, i64 242}
!681 = !{ptr @compare_range_with_value, ptr @fancy_abort, i64 1}
!682 = !{ptr @usable_range_p, ptr @fancy_abort, i64 1}
!683 = !{ptr @usable_range_p, ptr @is_overflow_infinity, i64 1361757}
!684 = !{ptr @get_vr_for_comparison, ptr @VEC_tree_base_index, i64 397499}
!685 = !{ptr @vrp_operand_equal_p, ptr @operand_equal_p, i64 2990}
!686 = !{ptr @vrp_operand_equal_p, ptr @is_overflow_infinity, i64 2}
!687 = !{ptr @vrp_bitmap_equal_p, ptr @bitmap_equal_p, i64 3473}
!688 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 24974622}
!689 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 24974622}
!690 = !{ptr @loop_containing_stmt, ptr @gimple_bb, i64 12896}
!691 = !{ptr @vrp_fold_stmt, ptr @fold_predicate_in, i64 679509}
!692 = !{ptr @vrp_fold_stmt, ptr @simplify_stmt_using_ranges, i64 679231}
!693 = !{ptr @identify_jump_threads, ptr @calculate_dominance_info, i64 76}
!694 = !{ptr @identify_jump_threads, ptr @mark_dfs_back_edges, i64 76}
!695 = !{ptr @identify_jump_threads, ptr @VEC_edge_base_iterate, i64 77}
!696 = !{ptr @identify_jump_threads, ptr @VEC_tree_heap_alloc, i64 76}
!697 = !{ptr @identify_jump_threads, ptr @gimple_build_cond, i64 76}
!698 = !{ptr @identify_jump_threads, ptr @potentially_threadable_block, i64 309097}
!699 = !{ptr @identify_jump_threads, ptr @gsi_last_bb, i64 94771}
!700 = !{ptr @identify_jump_threads, ptr @gsi_stmt, i64 94771}
!701 = !{ptr @identify_jump_threads, ptr @gimple_code, i64 94771}
!702 = !{ptr @identify_jump_threads, ptr @gimple_cond_lhs, i64 229472}
!703 = !{ptr @identify_jump_threads, ptr @gimple_cond_rhs, i64 464132}
!704 = !{ptr @identify_jump_threads, ptr @is_gimple_min_invariant, i64 94682}
!705 = !{ptr @identify_jump_threads, ptr @ei_start_1, i64 94681}
!706 = !{ptr @identify_jump_threads, ptr @ei_cond, i64 337939}
!707 = !{ptr @identify_jump_threads, ptr @thread_across_edge, i64 243257}
!708 = !{ptr @identify_jump_threads, ptr @ei_next, i64 243258}
!709 = !{ptr @fold_predicate_in, ptr @gsi_stmt, i64 679509}
!710 = !{ptr @fold_predicate_in, ptr @is_gimple_assign, i64 679787}
!711 = !{ptr @fold_predicate_in, ptr @gimple_assign_rhs_code, i64 289329}
!712 = !{ptr @fold_predicate_in, ptr @gimple_code, i64 641339}
!713 = !{ptr @fold_predicate_in, ptr @gimple_cond_code, i64 284327}
!714 = !{ptr @fold_predicate_in, ptr @gimple_cond_lhs, i64 284327}
!715 = !{ptr @fold_predicate_in, ptr @gimple_cond_rhs, i64 284327}
!716 = !{ptr @fold_predicate_in, ptr @vrp_evaluate_conditional, i64 322774}
!717 = !{ptr @fold_predicate_in, ptr @gimple_assign_rhs1, i64 38447}
!718 = !{ptr @fold_predicate_in, ptr @gimple_assign_rhs2, i64 38447}
!719 = !{ptr @fold_predicate_in, ptr @gimple_expr_type, i64 33}
!720 = !{ptr @fold_predicate_in, ptr @fold_convert_loc, i64 33}
!721 = !{ptr @fold_predicate_in, ptr @fwrite, i64 2}
!722 = !{ptr @fold_predicate_in, ptr @print_gimple_expr, i64 1}
!723 = !{ptr @fold_predicate_in, ptr @print_generic_expr, i64 1}
!724 = !{ptr @fold_predicate_in, ptr @fputc, i64 1}
!725 = !{ptr @fold_predicate_in, ptr @gimple_assign_set_rhs_from_tree, i64 1}
!726 = !{ptr @fold_predicate_in, ptr @fancy_abort, i64 2}
!727 = !{ptr @fold_predicate_in, ptr @integer_zerop, i64 277}
!728 = !{ptr @fold_predicate_in, ptr @gimple_cond_make_false, i64 111}
!729 = !{ptr @fold_predicate_in, ptr @integer_onep, i64 166}
!730 = !{ptr @fold_predicate_in, ptr @gimple_cond_make_true, i64 165}
!731 = !{ptr @simplify_stmt_using_ranges, ptr @gsi_stmt, i64 679232}
!732 = !{ptr @simplify_stmt_using_ranges, ptr @is_gimple_assign, i64 679232}
!733 = !{ptr @simplify_stmt_using_ranges, ptr @gimple_assign_rhs_code, i64 250882}
!734 = !{ptr @simplify_stmt_using_ranges, ptr @gimple_assign_rhs1, i64 52855}
!735 = !{ptr @simplify_stmt_using_ranges, ptr @simplify_truth_ops_using_ranges, i64 42994}
!736 = !{ptr @simplify_stmt_using_ranges, ptr @gimple_assign_rhs2, i64 2}
!737 = !{ptr @simplify_stmt_using_ranges, ptr @integer_pow2p, i64 2}
!738 = !{ptr @simplify_stmt_using_ranges, ptr @simplify_div_or_mod_using_ranges, i64 1}
!739 = !{ptr @simplify_stmt_using_ranges, ptr @gimple_code, i64 428350}
!740 = !{ptr @simplify_stmt_using_ranges, ptr @simplify_cond_using_ranges, i64 284050}
!741 = !{ptr @simplify_stmt_using_ranges, ptr @simplify_switch_using_ranges, i64 81}
!742 = !{ptr @vrp_evaluate_conditional, ptr @vrp_evaluate_conditional_warnv_with_ops, i64 567600}
!743 = !{ptr @vrp_evaluate_conditional, ptr @is_gimple_min_invariant, i64 1}
!744 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_lhs, i64 111}
!745 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_rhs, i64 111}
!746 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_lhs, i64 166}
!747 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_rhs, i64 166}
!748 = !{ptr @gimple_cond_set_lhs, ptr @gimple_set_op, i64 277}
!749 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 277}
!750 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 554}
!751 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 553}
!752 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!753 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 554}
!754 = !{ptr @simplify_truth_ops_using_ranges, ptr @gimple_assign_rhs_code, i64 42991}
!755 = !{ptr @simplify_truth_ops_using_ranges, ptr @gimple_assign_rhs1, i64 42991}
!756 = !{ptr @simplify_truth_ops_using_ranges, ptr @get_value_range, i64 33461}
!757 = !{ptr @simplify_truth_ops_using_ranges, ptr @compare_range_with_value, i64 33522}
!758 = !{ptr @simplify_truth_ops_using_ranges, ptr @integer_onep, i64 123}
!759 = !{ptr @simplify_truth_ops_using_ranges, ptr @build_int_cst, i64 1}
!760 = !{ptr @simplify_truth_ops_using_ranges, ptr @gimple_assign_rhs2, i64 9587}
!761 = !{ptr @simplify_truth_ops_using_ranges, ptr @is_gimple_min_invariant, i64 9587}
!762 = !{ptr @simplify_truth_ops_using_ranges, ptr @integer_zerop, i64 108}
!763 = !{ptr @simplify_truth_ops_using_ranges, ptr @fold_unary_loc, i64 16}
!764 = !{ptr @simplify_truth_ops_using_ranges, ptr @gimple_assign_lhs, i64 9570}
!765 = !{ptr @simplify_truth_ops_using_ranges, ptr @useless_type_conversion_p, i64 9570}
!766 = !{ptr @simplify_truth_ops_using_ranges, ptr @gimple_assign_set_rhs_with_ops, i64 9560}
!767 = !{ptr @simplify_truth_ops_using_ranges, ptr @fancy_abort, i64 1}
!768 = !{ptr @simplify_truth_ops_using_ranges, ptr @gsi_stmt, i64 9560}
!769 = !{ptr @simplify_truth_ops_using_ranges, ptr @update_stmt, i64 9560}
!770 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_lhs, i64 284050}
!771 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_rhs, i64 284050}
!772 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_code, i64 284050}
!773 = !{ptr @simplify_cond_using_ranges, ptr @is_gimple_min_invariant, i64 441}
!774 = !{ptr @simplify_cond_using_ranges, ptr @get_value_range, i64 440}
!775 = !{ptr @simplify_cond_using_ranges, ptr @test_for_singularity, i64 537}
!776 = !{ptr @simplify_cond_using_ranges, ptr @fwrite, i64 4}
!777 = !{ptr @simplify_cond_using_ranges, ptr @print_gimple_stmt, i64 3}
!778 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_set_code, i64 2}
!779 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_set_lhs, i64 2}
!780 = !{ptr @simplify_cond_using_ranges, ptr @gimple_cond_set_rhs, i64 2}
!781 = !{ptr @simplify_cond_using_ranges, ptr @update_stmt, i64 2}
!782 = !{ptr @simplify_cond_using_ranges, ptr @invert_tree_comparison, i64 268}
!783 = !{ptr @simplify_cond_using_ranges, ptr @fputc, i64 1}
!784 = !{ptr @simplify_switch_using_ranges, ptr @gimple_switch_index, i64 80}
!785 = !{ptr @simplify_switch_using_ranges, ptr @get_value_range, i64 79}
!786 = !{ptr @simplify_switch_using_ranges, ptr @symbolic_range_p, i64 1}
!787 = !{ptr @simplify_switch_using_ranges, ptr @gimple_switch_num_labels, i64 1}
!788 = !{ptr @simplify_switch_using_ranges, ptr @make_tree_vec_stat, i64 1}
!789 = !{ptr @simplify_switch_using_ranges, ptr @gimple_switch_label, i64 9}
!790 = !{ptr @simplify_switch_using_ranges, ptr @gimple_bb, i64 13}
!791 = !{ptr @simplify_switch_using_ranges, ptr @label_to_block_fn, i64 12}
!792 = !{ptr @simplify_switch_using_ranges, ptr @find_edge, i64 12}
!793 = !{ptr @simplify_switch_using_ranges, ptr @ei_start_1, i64 1}
!794 = !{ptr @simplify_switch_using_ranges, ptr @ei_cond, i64 13}
!795 = !{ptr @simplify_switch_using_ranges, ptr @fwrite, i64 2}
!796 = !{ptr @simplify_switch_using_ranges, ptr @VEC_edge_heap_safe_push, i64 7}
!797 = !{ptr @simplify_switch_using_ranges, ptr @ei_next, i64 12}
!798 = !{ptr @simplify_switch_using_ranges, ptr @VEC_switch_update_heap_safe_push, i64 1}
!799 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 45172}
!800 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 9580}
!801 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 9579}
!802 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 9579}
!803 = !{ptr @test_for_singularity, ptr @is_overflow_infinity, i64 268}
!804 = !{ptr @test_for_singularity, ptr @build_int_cst, i64 266}
!805 = !{ptr @test_for_singularity, ptr @fold_build2_stat_loc, i64 266}
!806 = !{ptr @test_for_singularity, ptr @compare_values, i64 1076}
!807 = !{ptr @test_for_singularity, ptr @operand_equal_p, i64 538}
!808 = !{ptr @test_for_singularity, ptr @is_gimple_min_invariant, i64 1}
!809 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 76}
!810 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 96017}
!811 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 96017}
!812 = !{ptr @simplify_stmt_for_jump_threading, ptr @gimple_code, i64 578842}
!813 = !{ptr @simplify_stmt_for_jump_threading, ptr @gimple_cond_code, i64 244828}
!814 = !{ptr @simplify_stmt_for_jump_threading, ptr @gimple_cond_lhs, i64 244828}
!815 = !{ptr @simplify_stmt_for_jump_threading, ptr @gimple_cond_rhs, i64 244828}
!816 = !{ptr @simplify_stmt_for_jump_threading, ptr @vrp_evaluate_conditional, i64 244828}
!817 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 35583}
!818 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 21649}
!819 = !{ptr @set_ssa_use_from_ptr, ptr @delink_imm_use, i64 153740}
!820 = !{ptr @set_ssa_use_from_ptr, ptr @link_imm_use, i64 153740}
!821 = !{ptr @next_imm_use_on_stmt, ptr @end_imm_use_on_stmt_p, i64 153740}
!822 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 145992}
!823 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 21649}
!824 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 124342}
!825 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 303429}
!826 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 145992}
!827 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 145992}
!828 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 3040}
!829 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 303427}
!830 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 153737}
!831 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 157436}
!832 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 142951}
!833 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 1}
!834 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 124342}
!835 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 145992}
!836 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 1}
!837 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 1}
!838 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!839 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 142953}
!840 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 142953}
!841 = !{ptr @link_imm_use, ptr @link_imm_use_to_list, i64 153738}
!842 = !{ptr @VEC_tree_heap_free, ptr @free, i64 75}
!843 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!844 = !{!"function_entry_count", i64 0}
!845 = !{!846, !847, i64 0}
!846 = !{!"value_range_d", !847, i64 0, !850, i64 8, !850, i64 16, !850, i64 24}
!847 = !{!"int", !848, i64 0}
!848 = !{!"omnipotent char", !849, i64 0}
!849 = !{!"Simple C/C++ TBAA"}
!850 = !{!"any pointer", !848, i64 0}
!851 = !{!846, !850, i64 8}
!852 = !{!850, !850, i64 0}
!853 = !{!"function_entry_count", i64 2196682}
!854 = !{!"tree-vrp.c:get_value_range"}
!855 = !{!"branch_weights", i32 1, i32 2196683}
!856 = !{!848, !848, i64 0}
!857 = !{!"branch_weights", i32 513166, i32 1683518}
!858 = !{!846, !850, i64 24}
!859 = !{!"branch_weights", i32 513090, i32 77}
!860 = !{!"branch_weights", i32 77, i32 1}
!861 = !{!"branch_weights", i32 1, i32 154, i32 1}
!862 = !{i8 0, i8 2}
!863 = !{!"function_entry_count", i64 43082603}
!864 = !{!"tree-vrp.c:compare_values"}
!865 = !{!"branch_weights", i32 43082604, i32 1}
!866 = !{!846, !850, i64 16}
!867 = !{!868, !850, i64 24}
!868 = !{!"function", !850, i64 0, !850, i64 8, !850, i64 16, !850, i64 24, !850, i64 32, !850, i64 40, !850, i64 48, !850, i64 56, !850, i64 64, !850, i64 72, !850, i64 80, !850, i64 88, !850, i64 96, !847, i64 104, !847, i64 108, !847, i64 112, !847, i64 116, !847, i64 120, !847, i64 124, !850, i64 128, !847, i64 136, !847, i64 137, !847, i64 138, !847, i64 138, !847, i64 138, !847, i64 138, !847, i64 138, !847, i64 138, !847, i64 138, !847, i64 139, !847, i64 139, !847, i64 139, !847, i64 139, !847, i64 139, !847, i64 139, !847, i64 139}
!869 = !{!870, !850, i64 16}
!870 = !{!"gimple_df", !850, i64 0, !850, i64 8, !850, i64 16, !850, i64 24, !871, i64 32, !871, i64 48, !850, i64 64, !850, i64 72, !850, i64 80, !850, i64 88, !847, i64 96, !872, i64 104}
!871 = !{!"pt_solution", !847, i64 0, !847, i64 0, !847, i64 0, !847, i64 0, !847, i64 0, !847, i64 0, !850, i64 8}
!872 = !{!"ssa_operands", !850, i64 0, !847, i64 8, !847, i64 12, !848, i64 16, !850, i64 24, !850, i64 32}
!873 = !{!847, !847, i64 0}
!874 = distinct !{!874, !875}
!875 = !{!"llvm.loop.mustprogress"}
!876 = !{!"function_entry_count", i64 3156}
!877 = !{!"tree-vrp.c:is_negative_overflow_infinity"}
!878 = !{!"branch_weights", i32 5, i32 3153}
!879 = !{!"branch_weights", i32 9944563, i32 3153}
!880 = !{!"function_entry_count", i64 21579458}
!881 = !{!"tree-vrp.c:vrp_val_is_min"}
!882 = !{!"branch_weights", i32 21180, i32 21558280}
!883 = !{!"branch_weights", i32 1, i32 21558280}
!884 = !{!"function_entry_count", i64 3740}
!885 = !{!"tree-vrp.c:is_positive_overflow_infinity"}
!886 = !{!"branch_weights", i32 408, i32 3334}
!887 = !{!"branch_weights", i32 11118891, i32 3334}
!888 = !{!"function_entry_count", i64 49664}
!889 = !{!"tree-vrp.c:vrp_val_is_max"}
!890 = !{!"branch_weights", i32 19995, i32 29671}
!891 = !{!"branch_weights", i32 1, i32 29671}
!892 = !{!"function_entry_count", i64 28722}
!893 = !{!"tree-vrp.c:bmp_iter_set_init"}
!894 = !{!895, !850, i64 0}
!895 = !{!"bitmap_head_def", !850, i64 0, !850, i64 8, !847, i64 16, !850, i64 24}
!896 = !{!897, !850, i64 0}
!897 = !{!"", !850, i64 0, !850, i64 8, !847, i64 16, !898, i64 24}
!898 = !{!"long", !848, i64 0}
!899 = !{!897, !850, i64 8}
!900 = !{!"branch_weights", i32 4320, i32 24404}
!901 = !{!902, !847, i64 16}
!902 = !{!"bitmap_element_def", !850, i64 0, !850, i64 8, !847, i64 16, !848, i64 24}
!903 = !{!897, !847, i64 16}
!904 = !{!898, !898, i64 0}
!905 = !{!897, !898, i64 24}
!906 = !{!"function_entry_count", i64 79388}
!907 = !{!"tree-vrp.c:bmp_iter_set"}
!908 = !{!"branch_weights", i32 52192, i32 27198}
!909 = !{!"branch_weights", i32 50666, i32 1}
!910 = !{!"branch_weights", i32 1150950, i32 50666}
!911 = distinct !{!911, !875}
!912 = !{!"branch_weights", i32 1, i32 36931}
!913 = !{!"branch_weights", i32 21672, i32 23470}
!914 = !{!"branch_weights", i32 36931, i32 8210}
!915 = distinct !{!915, !875}
!916 = !{!902, !850, i64 0}
!917 = !{!"branch_weights", i32 28723, i32 8210}
!918 = !{!"function_entry_count", i64 1010453}
!919 = !{!"tree-vrp.c:VEC_tree_base_index"}
!920 = !{!"function_entry_count", i64 50666}
!921 = !{!"tree-vrp.c:bmp_iter_next"}
!922 = distinct !{!922, !875}
!923 = !{!"function_entry_count", i64 1894854}
!924 = !{!"tree-vrp.c:VEC_tree_base_length"}
!925 = !{!"branch_weights", i32 1, i32 1894855}
!926 = !{!927, !847, i64 0}
!927 = !{!"VEC_tree_base", !847, i64 0, !847, i64 4, !848, i64 8}
!928 = !{!929, !850, i64 0}
!929 = !{!"assert_locus_d", !850, i64 0, !850, i64 8, !930, i64 16, !847, i64 40, !850, i64 48, !850, i64 56, !850, i64 64}
!930 = !{!"", !850, i64 0, !850, i64 8, !850, i64 16}
!931 = !{!932, !847, i64 80}
!932 = !{!"basic_block_def", !850, i64 0, !850, i64 8, !850, i64 16, !850, i64 24, !848, i64 32, !850, i64 48, !850, i64 56, !848, i64 64, !898, i64 72, !847, i64 80, !847, i64 84, !847, i64 88, !847, i64 92, !847, i64 96}
!933 = !{!929, !850, i64 8}
!934 = !{!935, !850, i64 0}
!935 = !{!"edge_def", !850, i64 0, !850, i64 8, !848, i64 16, !850, i64 24, !850, i64 32, !847, i64 40, !847, i64 44, !847, i64 48, !847, i64 52, !898, i64 56}
!936 = !{!935, !850, i64 8}
!937 = !{!929, !847, i64 40}
!938 = !{!929, !850, i64 48}
!939 = distinct !{!939, !875}
!940 = !{!"function_entry_count", i64 3760267}
!941 = !{!"tree-vrp.c:gsi_stmt"}
!942 = !{!930, !850, i64 0}
!943 = !{!944, !850, i64 0}
!944 = !{!"gimple_seq_node_d", !850, i64 0, !850, i64 8, !850, i64 16}
!945 = distinct !{!945, !875}
!946 = !{!"function_entry_count", i64 76}
!947 = !{!"tree-vrp.c:gate_vrp"}
!948 = !{!"tree-vrp.c:execute_vrp"}
!949 = !{i32 0, i32 2}
!950 = !{!"branch_weights", i32 76, i32 1}
!951 = !{!"branch_weights", i32 1, i32 0}
!952 = distinct !{!952, !875}
!953 = !{!954, !850, i64 8}
!954 = !{!"", !850, i64 0, !850, i64 8}
!955 = !{!954, !850, i64 0}
!956 = distinct !{!956, !875}
!957 = distinct !{!957, !875}
!958 = !{!"tree-vrp.c:nonnull_arg_p"}
!959 = !{!868, !850, i64 56}
!960 = !{!"branch_weights", i32 1, i32 77}
!961 = distinct !{!961, !875}
!962 = distinct !{!962, !875}
!963 = !{!"function_entry_count", i64 12}
!964 = !{!"tree-vrp.c:set_value_range_to_nonnull"}
!965 = !{!"function_entry_count", i64 477780}
!966 = !{!"tree-vrp.c:set_value_range_to_varying"}
!967 = !{!"branch_weights", i32 475067, i32 2715}
!968 = !{!"function_entry_count", i64 21826514}
!969 = !{!"tree-vrp.c:set_value_range"}
!970 = !{!"branch_weights", i32 7730408, i32 -675389090}
!971 = !{!"branch_weights", i32 21777760, i32 48756}
!972 = !{!"branch_weights", i32 48756, i32 1}
!973 = !{!"branch_weights", i32 3284, i32 45473}
!974 = !{!"function_entry_count", i64 44715761}
!975 = !{!"tree-vrp.c:compare_values_warnv"}
!976 = !{!"branch_weights", i32 1, i32 2157497}
!977 = !{!"branch_weights", i32 1, i32 42558265}
!978 = !{!"branch_weights", i32 -91860547, i32 58672351, i32 100, i32 100}
!979 = !{!"branch_weights", i32 -1297879249, i32 5114, i32 5114, i32 5115}
!980 = !{!"branch_weights", i32 2157497, i32 40400768}
!981 = !{!"branch_weights", i32 585904, i32 41972362}
!982 = !{!"branch_weights", i32 1, i32 41972362}
!983 = !{!"branch_weights", i32 -934830937, i32 80, i32 80}
!984 = !{!"branch_weights", i32 41972362, i32 1}
!985 = !{!"function_entry_count", i64 173865}
!986 = !{!"tree-vrp.c:operand_less_p"}
!987 = !{!"branch_weights", i32 173866, i32 1}
!988 = !{!"branch_weights", i32 6090, i32 167777}
!989 = !{!"branch_weights", i32 1, i32 167777}
!990 = !{!"branch_weights", i32 167777, i32 1}
!991 = !{!"branch_weights", i32 1, i32 6090}
!992 = !{!"branch_weights", i32 6090, i32 1}
!993 = !{!"branch_weights", i32 2938, i32 3153}
!994 = !{!"branch_weights", i32 3153, i32 1}
!995 = !{!"function_entry_count", i64 44489674}
!996 = !{!"tree-vrp.c:needs_overflow_infinity"}
!997 = !{!"branch_weights", i32 -1901719637, i32 15761}
!998 = !{!"tree-vrp.c:vrp_val_min"}
!999 = !{!"branch_weights", i32 -2019737299, i32 105}
!1000 = !{!"tree-vrp.c:vrp_val_max"}
!1001 = !{!"branch_weights", i32 -962940558, i32 66753}
!1002 = !{!"tree-vrp.c:insert_range_assertions"}
!1003 = !{!"tree-vrp.c:VEC_edge_heap_alloc"}
!1004 = !{!"tree-vrp.c:VEC_switch_update_heap_alloc"}
!1005 = !{!"tree-vrp.c:vrp_initialize"}
!1006 = !{!868, !850, i64 8}
!1007 = !{!1008, !850, i64 0}
!1008 = !{!"control_flow_graph", !850, i64 0, !850, i64 8, !850, i64 16, !847, i64 24, !847, i64 28, !847, i64 32, !850, i64 40, !847, i64 48, !848, i64 52, !848, i64 60, !847, i64 68, !847, i64 72}
!1009 = !{!932, !850, i64 56}
!1010 = !{!1008, !850, i64 8}
!1011 = !{!"branch_weights", i32 1, i32 153}
!1012 = !{!"branch_weights", i32 92892, i32 220272}
!1013 = !{!"branch_weights", i32 89818, i32 3075}
!1014 = !{!"branch_weights", i32 0, i32 92892}
!1015 = distinct !{!1015, !875}
!1016 = !{i64 0, i64 8, !852, i64 8, i64 8, !852, i64 16, i64 8, !852}
!1017 = !{!"branch_weights", i32 313163, i32 1}
!1018 = !{!"branch_weights", i32 430586, i32 284610}
!1019 = !{!"branch_weights", i32 299845, i32 130742}
!1020 = !{!"branch_weights", i32 289458, i32 10387}
!1021 = !{!"branch_weights", i32 0, i32 289458}
!1022 = distinct !{!1022, !875}
!1023 = !{!"branch_weights", i32 402032, i32 313163}
!1024 = distinct !{!1024, !875}
!1025 = !{!"branch_weights", i32 153, i32 626175}
!1026 = distinct !{!1026, !875}
!1027 = !{!"function_entry_count", i64 421248}
!1028 = !{!"tree-vrp.c:vrp_visit_stmt"}
!1029 = !{!"branch_weights", i32 421249, i32 1}
!1030 = !{!"branch_weights", i32 203, i32 421047}
!1031 = !{!"branch_weights", i32 1, i32 203}
!1032 = !{!"branch_weights", i32 285374, i32 135674}
!1033 = !{!"branch_weights", i32 285374, i32 1}
!1034 = !{!"branch_weights", i32 135674, i32 1}
!1035 = !{i32 0, i32 3}
!1036 = !{i32 0, i32 256}
!1037 = !{!"branch_weights", i32 81, i32 23394108, i32 6561}
!1038 = !{i32 1, i32 3}
!1039 = !{!"branch_weights", i32 1, i32 202}
!1040 = !{!"branch_weights", i32 0, i32 1}
!1041 = distinct !{!1041, !875}
!1042 = !{!"function_entry_count", i64 12896}
!1043 = !{!"tree-vrp.c:vrp_visit_phi_node"}
!1044 = !{!"branch_weights", i32 12897, i32 1}
!1045 = !{!"branch_weights", i32 1, i32 11208}
!1046 = !{!"branch_weights", i32 24974623, i32 1}
!1047 = !{!935, !847, i64 48}
!1048 = !{!"branch_weights", i32 3451345, i32 21523279}
!1049 = !{!"branch_weights", i32 49038, i32 21474242}
!1050 = !{i64 0, i64 4, !873, i64 8, i64 8, !852, i64 16, i64 8, !852, i64 24, i64 8, !852}
!1051 = !{!"branch_weights", i32 21474242, i32 1}
!1052 = !{!"branch_weights", i32 21523279, i32 1}
!1053 = !{!"branch_weights", i32 24963415, i32 11208}
!1054 = distinct !{!1054, !875}
!1055 = !{!868, !850, i64 32}
!1056 = !{!"branch_weights", i32 1, i32 12897}
!1057 = !{!1058, !850, i64 8}
!1058 = !{!"loop", !847, i64 0, !847, i64 4, !850, i64 8, !850, i64 16, !1059, i64 24, !847, i64 32, !847, i64 36, !850, i64 40, !850, i64 48, !850, i64 56, !850, i64 64, !850, i64 72, !1060, i64 80, !1060, i64 96, !848, i64 112, !848, i64 113, !847, i64 116, !850, i64 120, !850, i64 128, !848, i64 136, !850, i64 144}
!1059 = !{!"lpt_decision", !847, i64 0, !847, i64 4}
!1060 = !{!"", !898, i64 0, !898, i64 8}
!1061 = !{!"branch_weights", i32 1689, i32 11209}
!1062 = !{!"branch_weights", i32 -1965507830, i32 355557981}
!1063 = !{!"branch_weights", i32 2205225, i32 1486, i32 1485}
!1064 = !{!"branch_weights", i32 2205225, i32 2971}
!1065 = !{!"tree-vrp.c:vrp_finalize"}
!1066 = !{!"branch_weights", i32 282974, i32 513166}
!1067 = !{!"branch_weights", i32 87360, i32 425807}
!1068 = !{!"branch_weights", i32 7667, i32 79694}
!1069 = !{!"branch_weights", i32 1, i32 7667}
!1070 = !{!1071, !850, i64 8}
!1071 = !{!"prop_value_d", !847, i64 0, !850, i64 8}
!1072 = !{!"branch_weights", i32 1592125, i32 153}
!1073 = distinct !{!1073, !875}
!1074 = !{!"branch_weights", i32 1094435692, i32 1053047956}
!1075 = distinct !{!1075, !875}
!1076 = !{!"tree-vrp.c:remove_range_assertions"}
!1077 = distinct !{!1077, !875}
!1078 = !{!"branch_weights", i32 428628, i32 286466}
!1079 = !{i32 0, i32 65536}
!1080 = !{!"branch_weights", i32 35584, i32 250883}
!1081 = !{!"branch_weights", i32 1, i32 35584}
!1082 = !{!"branch_weights", i32 35583, i32 1}
!1083 = !{!"branch_weights", i32 145992, i32 1}
!1084 = !{!"branch_weights", i32 153741, i32 1}
!1085 = !{!"branch_weights", i32 7749, i32 145992}
!1086 = distinct !{!1086, !875}
!1087 = !{!"branch_weights", i32 110410, i32 35583}
!1088 = distinct !{!1088, !875}
!1089 = !{!"branch_weights", i32 401930, i32 313163}
!1090 = distinct !{!1090, !875}
!1091 = !{!"tree-vrp.c:finalize_jump_threads"}
!1092 = !{!"function_entry_count", i64 152}
!1093 = !{!"tree-vrp.c:VEC_edge_base_iterate"}
!1094 = !{!1095, !847, i64 0}
!1095 = !{!"VEC_edge_base", !847, i64 0, !847, i64 4, !848, i64 8}
!1096 = !{!"tree-vrp.c:VEC_switch_update_base_iterate"}
!1097 = !{!1098, !847, i64 0}
!1098 = !{!"VEC_switch_update_base", !847, i64 0, !847, i64 4, !848, i64 8}
!1099 = !{!"tree-vrp.c:gimple_switch_set_num_labels"}
!1100 = !{!"tree-vrp.c:gimple_switch_set_label"}
!1101 = !{!"tree-vrp.c:gimple_switch_default_label"}
!1102 = !{!"function_entry_count", i64 5271483}
!1103 = !{!"tree-vrp.c:VEC_edge_base_length"}
!1104 = !{!"branch_weights", i32 1, i32 5271484}
!1105 = !{!"tree-vrp.c:VEC_edge_heap_free"}
!1106 = !{!"tree-vrp.c:VEC_switch_update_heap_free"}
!1107 = !{!"tree-vrp.c:find_assert_locations"}
!1108 = !{!1008, !847, i64 32}
!1109 = !{!"branch_weights", i32 153, i32 1}
!1110 = !{!"branch_weights", i32 -2147483648, i32 0}
!1111 = !{!"branch_weights", i32 153, i32 603941}
!1112 = distinct !{!1112, !875}
!1113 = !{!1008, !850, i64 16}
!1114 = !{!"branch_weights", i32 203, i32 301845}
!1115 = !{!"branch_weights", i32 302001, i32 47}
!1116 = !{i64 0, i64 4, !873, i64 8, i64 8, !852}
!1117 = !{i64 0, i64 8, !852}
!1118 = !{!"branch_weights", i32 1, i32 302000}
!1119 = !{!"branch_weights", i32 591995, i32 1}
!1120 = !{!"branch_weights", i32 301921, i32 290075}
!1121 = !{!"branch_weights", i32 302000, i32 289995}
!1122 = distinct !{!1122, !875}
!1123 = !{!1124, !850, i64 0}
!1124 = !{!"simple_bitmap_def", !850, i64 0, !847, i64 8, !847, i64 12, !848, i64 16}
!1125 = !{!"branch_weights", i32 1, i32 302046}
!1126 = !{!"branch_weights", i32 301925, i32 290130}
!1127 = !{!"branch_weights", i32 1, i32 301925}
!1128 = !{!"branch_weights", i32 302046, i32 290008}
!1129 = distinct !{!1129, !875}
!1130 = !{!"branch_weights", i32 603941, i32 153}
!1131 = distinct !{!1131, !875}
!1132 = !{!"branch_weights", i32 302199, i32 153}
!1133 = !{!"branch_weights", i32 153, i32 604549}
!1134 = distinct !{!1134, !875}
!1135 = !{!"tree-vrp.c:process_assert_insertions"}
!1136 = !{!"branch_weights", i32 18131, i32 328751292}
!1137 = !{!929, !850, i64 64}
!1138 = !{!"branch_weights", i32 18131, i32 17453}
!1139 = distinct !{!1139, !875}
!1140 = !{!"branch_weights", i32 153, i32 36111}
!1141 = distinct !{!1141, !875}
!1142 = !{!"branch_weights", i32 263082042, i32 1884401606}
!1143 = !{!"function_entry_count", i64 302046}
!1144 = !{!"tree-vrp.c:VEC_basic_block_base_index"}
!1145 = !{!"tree-vrp.c:find_assert_locations_1"}
!1146 = !{!"branch_weights", i32 15362, i32 286686}
!1147 = !{!"branch_weights", i32 284328, i32 2359}
!1148 = !{!"branch_weights", i32 284328, i32 1}
!1149 = !{!"branch_weights", i32 81, i32 286606}
!1150 = !{!"branch_weights", i32 81, i32 1}
!1151 = !{!"branch_weights", i32 302046, i32 1}
!1152 = !{!"branch_weights", i32 679612, i32 1}
!1153 = !{!"branch_weights", i32 538981, i32 140631}
!1154 = !{!"branch_weights", i32 538413, i32 569}
!1155 = !{!"branch_weights", i32 569, i32 1}
!1156 = !{!"branch_weights", i32 1, i32 569}
!1157 = !{!"branch_weights", i32 190, i32 190}
!1158 = !{!"branch_weights", i32 1, i32 190}
!1159 = !{!"branch_weights", i32 190, i32 0}
!1160 = distinct !{!1160, !875}
!1161 = !{!"branch_weights", i32 478, i32 92}
!1162 = !{!"branch_weights", i32 0, i32 538981}
!1163 = distinct !{!1163, !875}
!1164 = !{!"branch_weights", i32 377566, i32 302046}
!1165 = distinct !{!1165, !875}
!1166 = !{!"branch_weights", i32 92892, i32 209155}
!1167 = !{!"branch_weights", i32 92891, i32 1}
!1168 = !{!"branch_weights", i32 7420, i32 125222}
!1169 = !{!"branch_weights", i32 39750, i32 92891}
!1170 = distinct !{!1170, !875}
!1171 = distinct !{!1171, !875}
!1172 = !{!"function_entry_count", i64 984304}
!1173 = !{!"tree-vrp.c:ei_start_1"}
!1174 = !{!"function_entry_count", i64 2983476}
!1175 = !{!"tree-vrp.c:ei_cond"}
!1176 = !{!"branch_weights", i32 1999173, i32 984305}
!1177 = !{!"function_entry_count", i64 1999172}
!1178 = !{!"tree-vrp.c:ei_next"}
!1179 = !{!"branch_weights", i32 1, i32 1999173}
!1180 = !{!"branch_weights", i32 1999173, i32 1}
!1181 = !{!1182, !847, i64 0}
!1182 = !{!"", !847, i64 0, !850, i64 8}
!1183 = !{!"function_entry_count", i64 41424362}
!1184 = !{!"tree-vrp.c:gimple_code"}
!1185 = !{!"function_entry_count", i64 284327}
!1186 = !{!"tree-vrp.c:fp_predicate"}
!1187 = !{!"branch_weights", i32 1, i32 284328}
!1188 = !{!"function_entry_count", i64 284407}
!1189 = !{!"tree-vrp.c:zero_ssa_operands"}
!1190 = !{!"tree-vrp.c:find_conditional_asserts"}
!1191 = !{!"branch_weights", i32 1, i32 284327}
!1192 = !{!"branch_weights", i32 1, i32 568655}
!1193 = !{!"branch_weights", i32 568654, i32 1}
!1194 = !{!"branch_weights", i32 1, i32 568654}
!1195 = distinct !{!1195, !875}
!1196 = !{!"branch_weights", i32 284327, i32 284328}
!1197 = distinct !{!1197, !875}
!1198 = !{!"function_entry_count", i64 80}
!1199 = !{!"tree-vrp.c:find_switch_asserts"}
!1200 = !{!"branch_weights", i32 1, i32 161}
!1201 = !{!"branch_weights", i32 161, i32 36837}
!1202 = distinct !{!1202, !875}
!1203 = !{!"branch_weights", i32 0, i32 -2147483648}
!1204 = !{!"branch_weights", i32 5851, i32 37}
!1205 = !{!"branch_weights", i32 2537, i32 3315}
!1206 = !{!"branch_weights", i32 15105, i32 45}
!1207 = !{!"branch_weights", i32 12613, i32 2537}
!1208 = distinct !{!1208, !875}
!1209 = !{!"branch_weights", i32 1495, i32 1043}
!1210 = !{!"branch_weights", i32 81, i32 5807}
!1211 = !{!"branch_weights", i32 2397, i32 3411}
!1212 = !{!"branch_weights", i32 11613, i32 161}
!1213 = distinct !{!1213, !875}
!1214 = !{!"function_entry_count", i64 928372}
!1215 = !{!"tree-vrp.c:gsi_start_bb"}
!1216 = !{!930, !850, i64 8}
!1217 = !{!930, !850, i64 16}
!1218 = !{!"function_entry_count", i64 3839260}
!1219 = !{!"tree-vrp.c:gsi_end_p"}
!1220 = !{!"function_entry_count", i64 734784}
!1221 = !{!"tree-vrp.c:is_gimple_debug"}
!1222 = !{!"function_entry_count", i64 1832718}
!1223 = !{!"tree-vrp.c:op_iter_init_tree"}
!1224 = !{!1225, !847, i64 4}
!1225 = !{!"ssa_operand_iterator_d", !848, i64 0, !847, i64 4, !850, i64 8, !850, i64 16, !847, i64 24, !847, i64 28, !850, i64 32}
!1226 = !{!"function_entry_count", i64 3758769}
!1227 = !{!"tree-vrp.c:op_iter_done"}
!1228 = !{!1225, !848, i64 0}
!1229 = !{!"function_entry_count", i64 546399}
!1230 = !{!"tree-vrp.c:SET_BIT"}
!1231 = !{!"branch_weights", i32 546400, i32 1}
!1232 = !{!"function_entry_count", i64 538980}
!1233 = !{!"tree-vrp.c:infer_value_range"}
!1234 = !{!"branch_weights", i32 538981, i32 1}
!1235 = !{!"branch_weights", i32 254420, i32 284562}
!1236 = !{!932, !850, i64 8}
!1237 = !{!"branch_weights", i32 686492, i32 -1899535511}
!1238 = !{!"branch_weights", i32 1, i32 538901}
!1239 = !{!"branch_weights", i32 -1794054713, i32 867841771, i32 6251}
!1240 = !{!"branch_weights", i32 1, i32 138829}
!1241 = !{!"branch_weights", i32 138261, i32 569}
!1242 = !{!"function_entry_count", i64 3833705}
!1243 = !{!"tree-vrp.c:is_gimple_assign"}
!1244 = !{!"function_entry_count", i64 2072797}
!1245 = !{!"tree-vrp.c:gimple_assign_rhs_code"}
!1246 = !{!"branch_weights", i32 686652, i32 1386147}
!1247 = !{!"function_entry_count", i64 1167226}
!1248 = !{!"tree-vrp.c:gimple_assign_rhs1"}
!1249 = !{!"function_entry_count", i64 90989}
!1250 = !{!"tree-vrp.c:has_single_use"}
!1251 = !{!1252, !850, i64 8}
!1252 = !{!"ssa_use_operand_d", !850, i64 0, !850, i64 8, !848, i64 16, !850, i64 24}
!1253 = !{!"branch_weights", i32 1, i32 90990}
!1254 = !{!"branch_weights", i32 55174, i32 35817}
!1255 = !{!"branch_weights", i32 35817, i32 1}
!1256 = !{!"function_entry_count", i64 35816}
!1257 = !{!"tree-vrp.c:register_new_assert_for"}
!1258 = !{!"branch_weights", i32 35817, i32 1282893307}
!1259 = !{!"branch_weights", i32 35340, i32 478}
!1260 = !{!"branch_weights", i32 1, i32 35583}
!1261 = !{!"branch_weights", i32 23438, i32 21910}
!1262 = !{!"branch_weights", i32 2497, i32 20942}
!1263 = !{!"branch_weights", i32 20928, i32 15}
!1264 = !{!929, !850, i64 56}
!1265 = !{!"branch_weights", i32 2511, i32 1}
!1266 = !{!"branch_weights", i32 412, i32 2100}
!1267 = !{!"branch_weights", i32 332, i32 81}
!1268 = !{!"branch_weights", i32 2100, i32 1}
!1269 = !{!932, !850, i64 0}
!1270 = !{!"branch_weights", i32 1230, i32 871}
!1271 = !{!"branch_weights", i32 1049, i32 154}
!1272 = !{!"branch_weights", i32 35583, i32 9764}
!1273 = distinct !{!1273, !875}
!1274 = !{!"branch_weights", i32 18132, i32 17453}
!1275 = !{!"function_entry_count", i64 3229809}
!1276 = !{!"tree-vrp.c:op_iter_next_tree"}
!1277 = !{!1225, !850, i64 16}
!1278 = !{!"branch_weights", i32 1837769, i32 1392042}
!1279 = !{!1280, !850, i64 0}
!1280 = !{!"use_optype_d", !850, i64 0, !1252, i64 8}
!1281 = !{!1225, !850, i64 8}
!1282 = !{!"branch_weights", i32 1548312, i32 289458}
!1283 = !{!1284, !850, i64 8}
!1284 = !{!"def_optype_d", !850, i64 0, !850, i64 8}
!1285 = !{!1284, !850, i64 0}
!1286 = !{!"function_entry_count", i64 2260096}
!1287 = !{!"tree-vrp.c:gsi_next"}
!1288 = !{!944, !850, i64 16}
!1289 = !{!"function_entry_count", i64 95930}
!1290 = !{!"tree-vrp.c:op_iter_init_phiuse"}
!1291 = !{!"branch_weights", i32 1, i32 95931}
!1292 = !{!"branch_weights", i32 89818, i32 6114}
!1293 = !{!1225, !850, i64 32}
!1294 = !{!1225, !847, i64 28}
!1295 = !{!"function_entry_count", i64 23351388}
!1296 = !{!"tree-vrp.c:get_use_from_ptr"}
!1297 = !{!1252, !850, i64 24}
!1298 = !{!"function_entry_count", i64 439143}
!1299 = !{!"tree-vrp.c:op_iter_next_use"}
!1300 = !{!"branch_weights", i32 288277, i32 150868}
!1301 = !{!1225, !847, i64 24}
!1302 = !{!"branch_weights", i32 139211, i32 149067}
!1303 = !{!"function_entry_count", i64 2752626}
!1304 = !{!"tree-vrp.c:gimple_cond_lhs"}
!1305 = !{!"function_entry_count", i64 6710768}
!1306 = !{!"tree-vrp.c:gimple_op"}
!1307 = !{!"branch_weights", i32 1, i32 6710769}
!1308 = !{!"function_entry_count", i64 8696573}
!1309 = !{!"tree-vrp.c:gimple_has_ops"}
!1310 = !{!"function_entry_count", i64 6711322}
!1311 = !{!"tree-vrp.c:gimple_ops"}
!1312 = !{!"branch_weights", i32 1, i32 6711323}
!1313 = !{!"tree-vrp.c:gimple_statement_structure"}
!1314 = !{!"tree-vrp.c:gss_for_code"}
!1315 = !{!"function_entry_count", i64 577870}
!1316 = !{!"tree-vrp.c:register_edge_assert_for"}
!1317 = !{!"branch_weights", i32 577871, i32 1}
!1318 = !{!"branch_weights", i32 1, i32 577871}
!1319 = !{!"branch_weights", i32 286282, i32 291590}
!1320 = !{!"branch_weights", i32 236399, i32 49884}
!1321 = !{!"branch_weights", i32 2090742444, i32 56741204}
!1322 = !{!"branch_weights", i32 180839, i32 103048}
!1323 = !{!"branch_weights", i32 81324, i32 71608}
!1324 = !{!"branch_weights", i32 1, i32 71608}
!1325 = !{!"branch_weights", i32 16606, i32 55003}
!1326 = !{!"branch_weights", i32 700475960, i32 1447007688}
!1327 = !{!"branch_weights", i32 183235, i32 103048}
!1328 = !{!"branch_weights", i32 234009, i32 49878}
!1329 = !{!"branch_weights", i32 81324, i32 71602}
!1330 = !{!"branch_weights", i32 9755, i32 61848}
!1331 = !{!"branch_weights", i32 43836, i32 18013}
!1332 = !{!"branch_weights", i32 9484, i32 34353}
!1333 = !{!"function_entry_count", i64 1667152}
!1334 = !{!"tree-vrp.c:gimple_cond_code"}
!1335 = !{!"function_entry_count", i64 2137408}
!1336 = !{!"tree-vrp.c:gimple_cond_rhs"}
!1337 = !{!"function_entry_count", i64 1194214}
!1338 = !{!"tree-vrp.c:extract_code_and_val_from_cond_with_ops"}
!1339 = !{!"branch_weights", i32 1, i32 1194215}
!1340 = !{!"branch_weights", i32 587087, i32 607129}
!1341 = !{!"branch_weights", i32 -1186559955, i32 532352}
!1342 = !{!"branch_weights", i32 1833165, i32 32138190, i32 110889}
!1343 = !{!"branch_weights", i32 1, i32 5505}
!1344 = !{!"branch_weights", i32 1, i32 333}
!1345 = !{!"function_entry_count", i64 616344}
!1346 = !{!"tree-vrp.c:register_edge_assert_for_2"}
!1347 = !{!"branch_weights", i32 1, i32 616345}
!1348 = !{!"branch_weights", i32 581900, i32 34446}
!1349 = !{!"branch_weights", i32 34446, i32 1}
!1350 = !{!"branch_weights", i32 42675557, i32 -1387560507}
!1351 = !{!"branch_weights", i32 8915, i32 1}
!1352 = !{!"branch_weights", i32 3423, i32 5493}
!1353 = !{!"branch_weights", i32 1, i32 5493}
!1354 = !{!"branch_weights", i32 5493, i32 1}
!1355 = !{!"branch_weights", i32 21975, i32 1}
!1356 = !{!"branch_weights", i32 4599, i32 895}
!1357 = !{!"branch_weights", i32 895, i32 1}
!1358 = !{!"branch_weights", i32 1, i32 895}
!1359 = !{!"function_entry_count", i64 322176}
!1360 = !{!"tree-vrp.c:gimple_assign_rhs2"}
!1361 = !{!"branch_weights", i32 322177, i32 1}
!1362 = !{!"function_entry_count", i64 71687}
!1363 = !{!"tree-vrp.c:register_edge_assert_for_1"}
!1364 = !{!"branch_weights", i32 16605, i32 1}
!1365 = !{!"branch_weights", i32 1, i32 55083}
!1366 = !{!"branch_weights", i32 55083, i32 1}
!1367 = !{!"branch_weights", i32 38475, i32 16609}
!1368 = !{!"branch_weights", i32 38475, i32 1}
!1369 = !{!"branch_weights", i32 1, i32 38475}
!1370 = !{!"branch_weights", i32 16609, i32 275875490, i32 1}
!1371 = !{!"branch_weights", i32 1, i32 16609}
!1372 = !{!"branch_weights", i32 38478, i32 16605}
!1373 = !{!"branch_weights", i32 4, i32 16606}
!1374 = !{!"branch_weights", i32 1, i32 16606}
!1375 = !{!"function_entry_count", i64 621836}
!1376 = !{!"tree-vrp.c:live_on_edge"}
!1377 = !{!"branch_weights", i32 58, i32 621780}
!1378 = !{!"function_entry_count", i64 5492}
!1379 = !{!"tree-vrp.c:gimple_assign_cast_p"}
!1380 = !{!"branch_weights", i32 262, i32 5232}
!1381 = !{!"function_entry_count", i64 273986}
!1382 = !{!"tree-vrp.c:gimple_expr_type"}
!1383 = !{!"branch_weights", i32 1, i32 2, i32 1095948, i32 1}
!1384 = !{!"branch_weights", i32 19, i32 273969}
!1385 = !{!"tree-vrp.c:gimple_call_return_type"}
!1386 = !{!"function_entry_count", i64 267422}
!1387 = !{!"tree-vrp.c:gimple_call_fn"}
!1388 = !{!"function_entry_count", i64 341308}
!1389 = !{!"tree-vrp.c:gimple_num_ops"}
!1390 = !{!"tree-vrp.c:gimple_switch_num_labels"}
!1391 = !{!"function_entry_count", i64 240}
!1392 = !{!"tree-vrp.c:gimple_switch_index"}
!1393 = !{!"function_entry_count", i64 18498}
!1394 = !{!"tree-vrp.c:gimple_switch_label"}
!1395 = !{!"branch_weights", i32 18499, i32 1}
!1396 = !{!"function_entry_count", i64 163798}
!1397 = !{!"tree-vrp.c:compare_case_labels"}
!1398 = !{!"branch_weights", i32 56945, i32 106855}
!1399 = !{!"branch_weights", i32 51062, i32 55794}
!1400 = !{!"branch_weights", i32 1, i32 51062}
!1401 = !{!"function_entry_count", i64 1024389}
!1402 = !{!"tree-vrp.c:bb_seq"}
!1403 = !{!932, !847, i64 96}
!1404 = !{!"branch_weights", i32 1024390, i32 1}
!1405 = !{!"branch_weights", i32 1, i32 1024390}
!1406 = !{!1407, !850, i64 0}
!1407 = !{!"gimple_bb_info", !850, i64 0, !850, i64 8}
!1408 = !{!"tree-vrp.c:gimple_seq_first"}
!1409 = !{!"branch_weights", i32 1, i32 928373}
!1410 = !{!1411, !850, i64 0}
!1411 = !{!"gimple_seq_d", !850, i64 0, !850, i64 8, !850, i64 16}
!1412 = !{!"function_entry_count", i64 1975671}
!1413 = !{!"tree-vrp.c:op_iter_init"}
!1414 = !{!"branch_weights", i32 1975672, i32 1}
!1415 = !{!"branch_weights", i32 1675626, i32 300047}
!1416 = !{!"branch_weights", i32 43572773, i32 2103910875}
!1417 = !{!"branch_weights", i32 155747, i32 138213}
!1418 = !{!"branch_weights", i32 300047, i32 1675626}
!1419 = !{!"branch_weights", i32 7547149, i32 2139936499}
!1420 = !{!"branch_weights", i32 1265045, i32 404694}
!1421 = !{!"function_entry_count", i64 300046}
!1422 = !{!"tree-vrp.c:gimple_def_ops"}
!1423 = !{!"branch_weights", i32 1, i32 300047}
!1424 = !{!"function_entry_count", i64 293958}
!1425 = !{!"tree-vrp.c:gimple_vdef"}
!1426 = !{!"branch_weights", i32 1, i32 293959}
!1427 = !{!"function_entry_count", i64 1675625}
!1428 = !{!"tree-vrp.c:gimple_use_ops"}
!1429 = !{!"branch_weights", i32 1, i32 1675626}
!1430 = !{!"function_entry_count", i64 2361281}
!1431 = !{!"tree-vrp.c:gimple_vuse"}
!1432 = !{!"branch_weights", i32 1142363, i32 1218920}
!1433 = !{!"function_entry_count", i64 2655239}
!1434 = !{!"tree-vrp.c:gimple_has_mem_ops"}
!1435 = !{!"function_entry_count", i64 50545601}
!1436 = !{!"tree-vrp.c:gimple_bb"}
!1437 = !{!"tree-vrp.c:gimple_expr_code"}
!1438 = !{!"branch_weights", i32 1, i32 8291192, i32 2, i32 1}
!1439 = !{!"function_entry_count", i64 2231777}
!1440 = !{!"tree-vrp.c:get_gimple_rhs_class"}
!1441 = !{!"function_entry_count", i64 392170}
!1442 = !{!"tree-vrp.c:get_def_from_ptr"}
!1443 = !{!"function_entry_count", i64 192657}
!1444 = !{!"tree-vrp.c:gimple_phi_result"}
!1445 = !{!"tree-vrp.c:clear_and_done_ssa_iter"}
!1446 = !{!"function_entry_count", i64 24991943}
!1447 = !{!"tree-vrp.c:gimple_phi_num_args"}
!1448 = !{!"function_entry_count", i64 21662488}
!1449 = !{!"tree-vrp.c:gimple_phi_arg_imm_use_ptr"}
!1450 = !{!"tree-vrp.c:gimple_phi_arg"}
!1451 = !{!"branch_weights", i32 1, i32 21662489}
!1452 = !{!"tree-vrp.c:ei_end_p"}
!1453 = !{!"branch_weights", i32 1, i32 2983477}
!1454 = !{!"tree-vrp.c:ei_edge"}
!1455 = !{!"function_entry_count", i64 13963640}
!1456 = !{!"tree-vrp.c:ei_container"}
!1457 = !{!"branch_weights", i32 1, i32 13963641}
!1458 = !{!"function_entry_count", i64 26973794}
!1459 = !{!"tree-vrp.c:VEC_edge_base_index"}
!1460 = !{!"function_entry_count", i64 35583}
!1461 = !{!"tree-vrp.c:process_assert_insertions_for"}
!1462 = !{!"branch_weights", i32 251, i32 35334}
!1463 = !{!"branch_weights", i32 251, i32 1}
!1464 = distinct !{!1464, !875}
!1465 = !{!"tree-vrp.c:build_assert_expr_for"}
!1466 = !{!"branch_weights", i32 35584, i32 1}
!1467 = !{!"function_entry_count", i64 944724}
!1468 = !{!"tree-vrp.c:stmt_interesting_for_vrp"}
!1469 = !{!"branch_weights", i32 92892, i32 851834}
!1470 = !{!"branch_weights", i32 519411, i32 422241}
!1471 = !{!"branch_weights", i32 381153, i32 138259}
!1472 = !{!"branch_weights", i32 4548, i32 555952}
!1473 = !{!"branch_weights", i32 555872, i32 81}
!1474 = !{!"branch_weights", i32 6287, i32 -1233934077, i32 1511452862, i32 2056408290, i32 361745257, i32 6287}
!1475 = !{!"branch_weights", i32 422161, i32 133712}
!1476 = !{!"branch_weights", i32 1, i32 133712}
!1477 = !{!"branch_weights", i32 266415, i32 289458}
!1478 = !{!"function_entry_count", i64 102713}
!1479 = !{!"tree-vrp.c:gimple_phi_result_ptr"}
!1480 = !{!"function_entry_count", i64 808085}
!1481 = !{!"tree-vrp.c:prop_set_simulate_again"}
!1482 = !{!"function_entry_count", i64 1496327}
!1483 = !{!"tree-vrp.c:is_gimple_call"}
!1484 = !{!"tree-vrp.c:gimple_call_fndecl"}
!1485 = !{!"branch_weights", i32 267423, i32 1}
!1486 = !{!"tree-vrp.c:gimple_set_visited"}
!1487 = !{!"function_entry_count", i64 135673}
!1488 = !{!"tree-vrp.c:vrp_visit_assignment_or_call"}
!1489 = !{!"branch_weights", i32 -2010735313, i32 4943476}
!1490 = !{!"branch_weights", i32 1, i32 135382}
!1491 = !{!"branch_weights", i32 1, i32 586, i32 1}
!1492 = !{!"branch_weights", i32 1, i32 135674}
!1493 = !{!"branch_weights", i32 1519, i32 134156}
!1494 = !{!"branch_weights", i32 134156, i32 1}
!1495 = !{!"branch_weights", i32 15711, i32 118446}
!1496 = distinct !{!1496, !875}
!1497 = !{!"function_entry_count", i64 285293}
!1498 = !{!"tree-vrp.c:vrp_visit_cond_stmt"}
!1499 = !{!"branch_weights", i32 285294, i32 1}
!1500 = distinct !{!1500, !875}
!1501 = !{!"branch_weights", i32 283851, i32 1444}
!1502 = !{!"branch_weights", i32 1444, i32 1}
!1503 = !{!"branch_weights", i32 2147476121, i32 7527}
!1504 = !{!"tree-vrp.c:vrp_visit_switch_stmt"}
!1505 = !{!"branch_weights", i32 1, i32 81}
!1506 = distinct !{!1506, !875}
!1507 = !{!"function_entry_count", i64 79493}
!1508 = !{!"tree-vrp.c:extract_range_basic"}
!1509 = !{!"branch_weights", i32 -247726776, i32 967498}
!1510 = !{!"branch_weights", i32 15705, i32 63772}
!1511 = !{!"branch_weights", i32 63772, i32 1}
!1512 = !{!"branch_weights", i32 15711, i32 13}
!1513 = !{!"branch_weights", i32 13, i32 1}
!1514 = !{!"tree-vrp.c:extract_range_from_assignment"}
!1515 = !{!"branch_weights", i32 -1828653055, i32 902593536, i32 173822}
!1516 = !{!"branch_weights", i32 -1460500490, i32 1986939464}
!1517 = !{!"branch_weights", i32 139, i32 40796}
!1518 = !{!"branch_weights", i32 1, i32 40796}
!1519 = !{!"branch_weights", i32 40784, i32 13}
!1520 = !{!"branch_weights", i32 79494, i32 56181}
!1521 = !{!"function_entry_count", i64 146881}
!1522 = !{!"tree-vrp.c:update_value_range"}
!1523 = !{!"branch_weights", i32 11913, i32 134970}
!1524 = !{!"branch_weights", i32 607, i32 11307}
!1525 = !{!"branch_weights", i32 2386, i32 8922}
!1526 = !{!"branch_weights", i32 94480102, i32 2053003546}
!1527 = !{!"function_entry_count", i64 79475}
!1528 = !{!"tree-vrp.c:gimple_stmt_nonnegative_warnv_p"}
!1529 = !{!"branch_weights", i32 1, i32 79476, i32 1}
!1530 = !{!"function_entry_count", i64 63771}
!1531 = !{!"tree-vrp.c:set_value_range_to_nonnegative"}
!1532 = !{!"tree-vrp.c:stmt_overflow_infinity"}
!1533 = !{!"branch_weights", i32 1, i32 63772}
!1534 = !{!"function_entry_count", i64 15722}
!1535 = !{!"tree-vrp.c:vrp_stmt_computes_nonzero"}
!1536 = !{!"branch_weights", i32 15723, i32 1}
!1537 = !{!"branch_weights", i32 1, i32 15723}
!1538 = !{!"branch_weights", i32 13, i32 15711}
!1539 = !{!"branch_weights", i32 1, i32 13}
!1540 = !{!"tree-vrp.c:gimple_assign_nonnegative_warnv_p"}
!1541 = !{!"branch_weights", i32 1, i32 23, i32 79454, i32 1, i32 1}
!1542 = !{!"tree-vrp.c:gimple_call_nonnegative_warnv_p"}
!1543 = !{!"tree-vrp.c:gimple_call_num_args"}
!1544 = !{!"tree-vrp.c:gimple_call_arg"}
!1545 = !{!"tree-vrp.c:supports_overflow_infinity"}
!1546 = !{!"tree-vrp.c:positive_overflow_infinity"}
!1547 = !{!"tree-vrp.c:make_overflow_infinity"}
!1548 = !{!"function_entry_count", i64 44482186}
!1549 = !{!"tree-vrp.c:is_overflow_infinity"}
!1550 = !{!"branch_weights", i32 1206642, i32 43275546}
!1551 = !{!"branch_weights", i32 -735891646, i32 82}
!1552 = !{!"tree-vrp.c:gimple_stmt_nonzero_warnv_p"}
!1553 = !{!"branch_weights", i32 1, i32 15723, i32 1}
!1554 = !{!"tree-vrp.c:range_is_nonnull"}
!1555 = !{!"tree-vrp.c:gimple_assign_nonzero_warnv_p"}
!1556 = !{!"branch_weights", i32 1, i32 1, i32 15711, i32 13, i32 1}
!1557 = !{!"function_entry_count", i64 36347}
!1558 = !{!"tree-vrp.c:extract_range_from_assert"}
!1559 = !{!"branch_weights", i32 36348, i32 1}
!1560 = !{!"branch_weights", i32 35454, i32 895}
!1561 = !{!"branch_weights", i32 1, i32 1790, i32 1}
!1562 = !{!"branch_weights", i32 1, i32 36348}
!1563 = !{!"branch_weights", i32 1301766400, i32 9705789, i32 36080}
!1564 = !{!"branch_weights", i32 539, i32 1}
!1565 = !{!"branch_weights", i32 1288681992, i32 36349, i32 32531460}
!1566 = !{!"branch_weights", i32 887, i32 7992, i32 786769}
!1567 = !{!"branch_weights", i32 1898914, i32 201603759, i32 801398392}
!1568 = !{!"branch_weights", i32 7113, i32 1}
!1569 = !{!"branch_weights", i32 1, i32 7113}
!1570 = !{!"branch_weights", i32 28276, i32 1}
!1571 = !{!"branch_weights", i32 -1114740855, i32 30541302}
!1572 = !{!"branch_weights", i32 27568, i32 441}
!1573 = !{!"branch_weights", i32 441, i32 1}
!1574 = !{!"branch_weights", i32 2346, i32 2278}
!1575 = !{!"branch_weights", i32 34, i32 1}
!1576 = !{!"branch_weights", i32 1, i32 34}
!1577 = !{!"branch_weights", i32 1191, i32 34}
!1578 = !{!"branch_weights", i32 1, i32 69}
!1579 = !{!"branch_weights", i32 69, i32 1}
!1580 = !{!"branch_weights", i32 1321177104, i32 36349, i32 36348}
!1581 = !{!"branch_weights", i32 100701225, i32 264087304, i32 10035}
!1582 = !{!"branch_weights", i32 10035, i32 1}
!1583 = !{!"branch_weights", i32 221, i32 451674112, i32 -2115764446}
!1584 = !{!"branch_weights", i32 1182, i32 641186, i32 1397124}
!1585 = !{!"branch_weights", i32 1, i32 542}
!1586 = !{!"branch_weights", i32 175, i32 8139}
!1587 = !{!"branch_weights", i32 589, i32 768}
!1588 = !{!"branch_weights", i32 1, i32 589}
!1589 = !{!"branch_weights", i32 1182, i32 175}
!1590 = !{!"branch_weights", i32 1214, i32 143}
!1591 = !{!"branch_weights", i32 1, i32 1214}
!1592 = !{!"branch_weights", i32 139, i32 1218}
!1593 = !{!"branch_weights", i32 626, i32 593}
!1594 = !{!"branch_weights", i32 349871, i32 589}
!1595 = !{!"branch_weights", i32 589, i32 5}
!1596 = !{!"branch_weights", i32 589, i32 1}
!1597 = !{!"branch_weights", i32 408, i32 182}
!1598 = !{!"branch_weights", i32 182, i32 1}
!1599 = !{!"branch_weights", i32 346921, i32 590, i32 589}
!1600 = !{!"branch_weights", i32 5, i32 1}
!1601 = !{!"branch_weights", i32 31, i32 5}
!1602 = !{!"branch_weights", i32 25, i32 6, i32 5}
!1603 = !{!"function_entry_count", i64 6}
!1604 = !{!"tree-vrp.c:extract_range_from_ssa_name"}
!1605 = !{!"branch_weights", i32 49, i32 8, i32 7}
!1606 = !{!"function_entry_count", i64 58387}
!1607 = !{!"tree-vrp.c:extract_range_from_binary_expr"}
!1608 = !{!"branch_weights", i32 44192, i32 14197}
!1609 = !{!"branch_weights", i32 1, i32 14197}
!1610 = !{!"branch_weights", i32 36335, i32 22054}
!1611 = !{!"branch_weights", i32 1, i32 22054}
!1612 = !{!"branch_weights", i32 116777, i32 -885808752}
!1613 = !{!"branch_weights", i32 -2024131965, i32 -140681224}
!1614 = !{!"branch_weights", i32 11452, i32 1}
!1615 = !{!"branch_weights", i32 1401903364, i32 37443, i32 37442}
!1616 = !{!"branch_weights", i32 356859703, i32 1045118546}
!1617 = !{!"branch_weights", i32 9530, i32 9531, i32 90820900}
!1618 = !{!"branch_weights", i32 9530, i32 1}
!1619 = !{!"branch_weights", i32 -914017386, i32 1064419}
!1620 = !{!"branch_weights", i32 115, i32 13341}
!1621 = !{!"branch_weights", i32 115, i32 1}
!1622 = !{!"branch_weights", i32 1, i32 115}
!1623 = !{!"branch_weights", i32 153784, i32 -20155070, i32 -20155070, i32 -20155070, i32 -20155070, i32 -20155070, i32 -20155070, i32 -20155070, i32 153803, i32 -1763146509, i32 1742683851}
!1624 = !{!"branch_weights", i32 7, i32 57}
!1625 = !{!"branch_weights", i32 48963240, i32 69564212, i32 405791239, i32 405791239, i32 405791239, i32 405791239, i32 405791239}
!1626 = !{!"branch_weights", i32 647619071, i32 1499864577}
!1627 = !{!"branch_weights", i32 -777069073, i32 777069073}
!1628 = !{!"branch_weights", i32 1, i32 7}
!1629 = !{!"branch_weights", i32 7, i32 1}
!1630 = !{!"branch_weights", i32 1959414816, i32 188068832}
!1631 = !{!"branch_weights", i32 7, i32 7}
!1632 = !{!"branch_weights", i32 1, i32 12}
!1633 = distinct !{!1633, !875}
!1634 = !{!"branch_weights", i32 8, i32 16455}
!1635 = !{!"branch_weights", i32 1, i32 8}
!1636 = !{!"branch_weights", i32 16462, i32 1}
!1637 = !{!"branch_weights", i32 270997444, i32 32925}
!1638 = !{!"branch_weights", i32 128414224, i32 22665}
!1639 = !{!"branch_weights", i32 11332, i32 1}
!1640 = !{!"branch_weights", i32 725, i32 10608}
!1641 = !{!"branch_weights", i32 58551, i32 2147425097}
!1642 = !{!"branch_weights", i32 1, i32 37442}
!1643 = !{!"branch_weights", i32 37436, i32 7}
!1644 = !{!"branch_weights", i32 262060, i32 37436}
!1645 = !{!"branch_weights", i32 1, i32 37436}
!1646 = !{!"branch_weights", i32 37436, i32 1}
!1647 = !{!"branch_weights", i32 16797, i32 20640}
!1648 = !{!"branch_weights", i32 16797, i32 1}
!1649 = !{!"branch_weights", i32 732, i32 19909}
!1650 = !{!"branch_weights", i32 732, i32 1}
!1651 = !{!"function_entry_count", i64 138}
!1652 = !{!"tree-vrp.c:extract_range_from_unary_expr"}
!1653 = !{!"branch_weights", i32 139, i32 1}
!1654 = !{!"branch_weights", i32 1, i32 139}
!1655 = !{!"branch_weights", i32 6533, i32 26880, i32 2481984, i32 1228204, i32 13066, i32 6533}
!1656 = !{!"branch_weights", i32 47, i32 93}
!1657 = !{!"branch_weights", i32 93, i32 1}
!1658 = !{!"branch_weights", i32 19321, i32 140, i32 139}
!1659 = !{!"branch_weights", i32 -1809051598, i32 35134301}
!1660 = !{!"branch_weights", i32 25, i32 23}
!1661 = !{!"branch_weights", i32 117, i32 1}
!1662 = !{!"branch_weights", i32 1, i32 117}
!1663 = !{!"tree-vrp.c:extract_range_from_cond_expr"}
!1664 = !{!"function_entry_count", i64 40783}
!1665 = !{!"tree-vrp.c:extract_range_from_comparison"}
!1666 = !{!"branch_weights", i32 38938, i32 1847}
!1667 = !{!"branch_weights", i32 3695, i32 3411409}
!1668 = !{!"branch_weights", i32 1, i32 1847}
!1669 = !{!"function_entry_count", i64 38095}
!1670 = !{!"tree-vrp.c:set_value_range_to_value"}
!1671 = !{!"branch_weights", i32 1, i32 38096}
!1672 = !{!"function_entry_count", i64 74442}
!1673 = !{!"tree-vrp.c:avoid_overflow_infinity"}
!1674 = !{!"branch_weights", i32 74443, i32 1}
!1675 = !{!"function_entry_count", i64 72870}
!1676 = !{!"tree-vrp.c:symbolic_range_p"}
!1677 = !{!"branch_weights", i32 1, i32 72871}
!1678 = !{!"function_entry_count", i64 36353}
!1679 = !{!"tree-vrp.c:add_equivalence"}
!1680 = !{!"branch_weights", i32 36348, i32 7}
!1681 = !{!"branch_weights", i32 77, i32 36278}
!1682 = !{!"branch_weights", i32 26545, i32 9734}
!1683 = !{!"function_entry_count", i64 1010}
!1684 = !{!"tree-vrp.c:set_and_canonicalize_value_range"}
!1685 = !{!"branch_weights", i32 887, i32 897769}
!1686 = !{!"branch_weights", i32 1011, i32 1}
!1687 = !{!"branch_weights", i32 1882531106, i32 264952542}
!1688 = !{!"branch_weights", i32 887, i32 1}
!1689 = !{!"branch_weights", i32 2145064991, i32 2418657}
!1690 = !{!"function_entry_count", i64 4228}
!1691 = !{!"tree-vrp.c:value_ranges_intersect_p"}
!1692 = !{!"branch_weights", i32 2224, i32 2006}
!1693 = !{!"tree-vrp.c:negative_overflow_infinity"}
!1694 = !{!"function_entry_count", i64 15976}
!1695 = !{!"tree-vrp.c:copy_value_range"}
!1696 = !{!"tree-vrp.c:op_with_constant_singleton_value_range"}
!1697 = !{!"tree-vrp.c:set_value_range_to_undefined"}
!1698 = !{!"tree-vrp.c:range_is_null"}
!1699 = !{!"tree-vrp.c:set_value_range_to_null"}
!1700 = !{!"function_entry_count", i64 19293}
!1701 = !{!"tree-vrp.c:overflow_infinity_range_p"}
!1702 = !{!"branch_weights", i32 19294, i32 1}
!1703 = !{!"function_entry_count", i64 38937}
!1704 = !{!"tree-vrp.c:set_value_range_to_truthvalue"}
!1705 = !{!"branch_weights", i32 38600, i32 339}
!1706 = !{!"function_entry_count", i64 11571}
!1707 = !{!"tree-vrp.c:vrp_int_const_binop"}
!1708 = !{!"branch_weights", i32 1, i32 11572}
!1709 = !{!"branch_weights", i32 128550208, i32 128709025, i32 11345, i32 147472}
!1710 = !{!"branch_weights", i32 11338, i32 235}
!1711 = !{!"tree-vrp.c:vrp_expr_computes_nonnegative"}
!1712 = !{!"function_entry_count", i64 1688}
!1713 = !{!"tree-vrp.c:range_includes_zero_p"}
!1714 = !{!"branch_weights", i32 2852721, i32 1690, i32 1689}
!1715 = !{!"branch_weights", i32 1689, i32 1}
!1716 = !{i32 -2, i32 2}
!1717 = !{!"tree-vrp.c:abs_extent_range"}
!1718 = !{!"function_entry_count", i64 90214}
!1719 = !{!"tree-vrp.c:value_inside_range"}
!1720 = !{!"branch_weights", i32 -812623189, i32 45108, i32 587074112}
!1721 = !{!"branch_weights", i32 1, i32 77201}
!1722 = !{!"function_entry_count", i64 21523278}
!1723 = !{!"tree-vrp.c:vrp_meet"}
!1724 = !{!"branch_weights", i32 3075, i32 21520205}
!1725 = !{!"branch_weights", i32 328, i32 -761648027}
!1726 = !{!"branch_weights", i32 483, i32 21519723}
!1727 = !{!"branch_weights", i32 -763707119, i32 1082368}
!1728 = !{!"branch_weights", i32 136882551, i32 -1043412398}
!1729 = !{!"branch_weights", i32 20644068, i32 1}
!1730 = !{!"branch_weights", i32 94991713, i32 -956635186}
!1731 = !{!"branch_weights", i32 20917917, i32 1}
!1732 = !{!"branch_weights", i32 -2036894562, i32 104}
!1733 = !{!"branch_weights", i32 21485613, i32 27519}
!1734 = !{!"branch_weights", i32 21485613, i32 1}
!1735 = !{!"branch_weights", i32 27433, i32 87}
!1736 = !{!"branch_weights", i32 27433, i32 1}
!1737 = !{!"branch_weights", i32 21510665, i32 2381}
!1738 = !{!"branch_weights", i32 49622, i32 5579044}
!1739 = !{!"branch_weights", i32 20, i32 1}
!1740 = !{!"branch_weights", i32 4988, i32 1606}
!1741 = !{!"branch_weights", i32 2906, i32 2083}
!1742 = !{!"branch_weights", i32 2531, i32 376}
!1743 = !{!"branch_weights", i32 2531, i32 1}
!1744 = !{!"branch_weights", i32 13, i32 2519}
!1745 = !{!"branch_weights", i32 5039, i32 6345361}
!1746 = !{!"branch_weights", i32 1606, i32 1}
!1747 = !{!"branch_weights", i32 3688, i32 1}
!1748 = !{!"branch_weights", i32 3092, i32 597}
!1749 = !{!"branch_weights", i32 1039, i32 2054}
!1750 = !{!"branch_weights", i32 1, i32 3092}
!1751 = !{!"branch_weights", i32 6185, i32 9560464}
!1752 = !{!"branch_weights", i32 1058, i32 1}
!1753 = !{!"branch_weights", i32 654, i32 405}
!1754 = !{!"branch_weights", i32 631, i32 24}
!1755 = !{!"branch_weights", i32 405, i32 24}
!1756 = !{!"branch_weights", i32 404, i32 2}
!1757 = !{!"branch_weights", i32 632, i32 1}
!1758 = !{!"branch_weights", i32 65, i32 568}
!1759 = !{!"branch_weights", i32 1, i32 65}
!1760 = !{!"branch_weights", i32 568, i32 65}
!1761 = !{!"branch_weights", i32 568, i32 1}
!1762 = !{!"function_entry_count", i64 893677}
!1763 = !{!"tree-vrp.c:vrp_evaluate_conditional_warnv_with_ops"}
!1764 = !{!"branch_weights", i32 326077, i32 567602}
!1765 = !{!"branch_weights", i32 2581, i32 -1016179329, i32 331768817, i32 1098085500, i32 253020, i32 2581}
!1766 = !{!"branch_weights", i32 1, i32 567602}
!1767 = !{!"branch_weights", i32 563742, i32 3861}
!1768 = !{!"branch_weights", i32 563742, i32 1}
!1769 = !{!"branch_weights", i32 29, i32 563714}
!1770 = !{!"tree-vrp.c:vrp_evaluate_conditional_warnv_with_ops_using_ranges"}
!1771 = !{!"branch_weights", i32 893678, i32 1}
!1772 = !{!"branch_weights", i32 57, i32 893622}
!1773 = !{!"branch_weights", i32 2147467969, i32 15679}
!1774 = !{!"branch_weights", i32 -1175591207, i32 6981}
!1775 = !{!"function_entry_count", i64 28}
!1776 = !{!"tree-vrp.c:compare_names"}
!1777 = !{!"branch_weights", i32 2, i32 28}
!1778 = !{!"branch_weights", i32 29, i32 1}
!1779 = !{!"branch_weights", i32 1, i32 231}
!1780 = !{!"branch_weights", i32 231, i32 1}
!1781 = distinct !{!1781, !875}
!1782 = !{!"branch_weights", i32 2075590653, i32 71892995}
!1783 = distinct !{!1783, !875}
!1784 = !{!"function_entry_count", i64 563713}
!1785 = !{!"tree-vrp.c:compare_name_with_value"}
!1786 = !{!"branch_weights", i32 563714, i32 1}
!1787 = !{!"branch_weights", i32 535124, i32 28591}
!1788 = !{!"branch_weights", i32 1, i32 28590}
!1789 = !{!"branch_weights", i32 32480, i32 1}
!1790 = !{!"branch_weights", i32 28590, i32 3890}
!1791 = distinct !{!1791, !875}
!1792 = !{!"branch_weights", i32 2147408541, i32 75107}
!1793 = !{!"function_entry_count", i64 84}
!1794 = !{!"tree-vrp.c:compare_ranges"}
!1795 = !{!"branch_weights", i32 841, i32 1710, i32 29}
!1796 = !{!"branch_weights", i32 841, i32 30, i32 29}
!1797 = !{!"branch_weights", i32 59, i32 841}
!1798 = !{!"branch_weights", i32 1, i32 29}
!1799 = !{!"branch_weights", i32 871, i32 29}
!1800 = !{!"branch_weights", i32 1, i32 59}
!1801 = !{!"branch_weights", i32 1711, i32 25289}
!1802 = !{!"branch_weights", i32 2611, i32 51389}
!1803 = !{!"function_entry_count", i64 1523336}
!1804 = !{!"tree-vrp.c:compare_range_with_value"}
!1805 = !{!"branch_weights", i32 -1144528139, i32 -892655216, i32 4626, i32 496343261}
!1806 = !{!"branch_weights", i32 458462435, i32 -2129142691}
!1807 = !{!"branch_weights", i32 2157, i32 86371}
!1808 = !{!"branch_weights", i32 354, i32 1804}
!1809 = !{!"branch_weights", i32 1, i32 680824}
!1810 = !{!"branch_weights", i32 115406813, i32 -1173835094, i32 1314414421}
!1811 = !{!"branch_weights", i32 441682, i32 25242}
!1812 = !{!"branch_weights", i32 969, i32 440714}
!1813 = !{!"branch_weights", i32 15106316, i32 -1777706926}
!1814 = !{!"branch_weights", i32 9, i32 25234}
!1815 = !{!"branch_weights", i32 1, i32 25234}
!1816 = !{!"branch_weights", i32 1, i32 196638}
!1817 = !{!"branch_weights", i32 289, i32 196350}
!1818 = !{!"branch_weights", i32 50110, i32 146241}
!1819 = !{!"branch_weights", i32 990, i32 49121}
!1820 = !{!"branch_weights", i32 293915052, i32 1368080}
!1821 = !{!"branch_weights", i32 165, i32 17022}
!1822 = !{!"branch_weights", i32 1, i32 165}
!1823 = !{!"branch_weights", i32 22200150, i32 2125283498}
!1824 = !{!"branch_weights", i32 175, i32 1}
!1825 = !{!"branch_weights", i32 46552983, i32 -484594728}
!1826 = !{!"branch_weights", i32 16848, i32 286635189}
!1827 = !{!"branch_weights", i32 6481, i32 80}
!1828 = !{!"branch_weights", i32 16347140, i32 4910500}
!1829 = !{!"branch_weights", i32 62, i32 1}
!1830 = !{!"branch_weights", i32 1141, i32 14859}
!1831 = !{!"function_entry_count", i64 680879}
!1832 = !{!"tree-vrp.c:usable_range_p"}
!1833 = !{!"branch_weights", i32 680880, i32 1}
!1834 = !{!"function_entry_count", i64 596248}
!1835 = !{!"tree-vrp.c:get_vr_for_comparison"}
!1836 = !{!"function_entry_count", i64 23218}
!1837 = !{!"tree-vrp.c:vrp_operand_equal_p"}
!1838 = !{!"branch_weights", i32 20228, i32 2992}
!1839 = !{!"branch_weights", i32 8952064, i32 5985}
!1840 = !{!"branch_weights", i32 2992, i32 1}
!1841 = !{!"function_entry_count", i64 8921}
!1842 = !{!"tree-vrp.c:vrp_bitmap_equal_p"}
!1843 = !{!"branch_weights", i32 5447, i32 3476}
!1844 = !{!"branch_weights", i32 12082576, i32 6953}
!1845 = !{!"tree-vrp.c:find_case_label_range"}
!1846 = distinct !{!1846, !875}
!1847 = !{!"tree-vrp.c:find_case_label_index"}
!1848 = distinct !{!1848, !875}
!1849 = !{!"function_entry_count", i64 24974622}
!1850 = !{!"tree-vrp.c:gimple_phi_arg_edge"}
!1851 = !{!"tree-vrp.c:loop_containing_stmt"}
!1852 = !{!932, !850, i64 24}
!1853 = !{!"tree-vrp.c:adjust_range_with_scev"}
!1854 = !{!1058, !847, i64 0}
!1855 = !{!"tree-vrp.c:vrp_var_may_overflow"}
!1856 = !{!"tree-vrp.c:instantiate_parameters"}
!1857 = !{!"tree-vrp.c:valid_value_p"}
!1858 = !{!"tree-vrp.c:get_chrec_loop"}
!1859 = !{!"tree-vrp.c:block_before_loop"}
!1860 = !{!"tree-vrp.c:get_loop"}
!1861 = !{!1862, !850, i64 8}
!1862 = !{!"loops", !847, i64 0, !850, i64 8, !850, i64 16, !850, i64 24}
!1863 = !{!"tree-vrp.c:VEC_loop_p_base_index"}
!1864 = !{!"tree-vrp.c:loop_outer"}
!1865 = !{!1058, !850, i64 40}
!1866 = !{!"tree-vrp.c:VEC_loop_p_base_length"}
!1867 = !{!1868, !847, i64 0}
!1868 = !{!"VEC_loop_p_base", !847, i64 0, !847, i64 4, !848, i64 8}
!1869 = !{!"function_entry_count", i64 679509}
!1870 = !{!"tree-vrp.c:vrp_fold_stmt"}
!1871 = !{!"branch_weights", i32 679233, i32 278}
!1872 = !{!"tree-vrp.c:check_all_array_refs"}
!1873 = distinct !{!1873, !875}
!1874 = distinct !{!1874, !875}
!1875 = !{!1876, !850, i64 24}
!1876 = !{!"walk_stmt_info", !930, i64 0, !850, i64 24, !850, i64 32, !848, i64 40, !848, i64 41, !848, i64 42, !848, i64 43, !850, i64 48}
!1877 = distinct !{!1877, !875}
!1878 = distinct !{!1878, !875}
!1879 = !{!"tree-vrp.c:identify_jump_threads"}
!1880 = distinct !{!1880, !875}
!1881 = !{!"branch_weights", i32 217147, i32 96018}
!1882 = !{!"branch_weights", i32 95938, i32 81}
!1883 = !{!"branch_weights", i32 95932, i32 7}
!1884 = !{!"branch_weights", i32 70920, i32 25013}
!1885 = !{!"branch_weights", i32 9400, i32 15614}
!1886 = !{!"branch_weights", i32 15614, i32 1}
!1887 = !{!"branch_weights", i32 1, i32 95932}
!1888 = !{!"branch_weights", i32 9400, i32 86533}
!1889 = !{!"branch_weights", i32 86533, i32 1}
!1890 = !{!"branch_weights", i32 246472, i32 1}
!1891 = !{!"branch_weights", i32 95931, i32 150541}
!1892 = distinct !{!1892, !875}
!1893 = distinct !{!1893, !875}
!1894 = !{!"tree-vrp.c:fold_predicate_in"}
!1895 = !{!"branch_weights", i32 428628, i32 250883}
!1896 = !{!"branch_weights", i32 38447, i32 212437}
!1897 = !{!"branch_weights", i32 284328, i32 356737}
!1898 = !{!"branch_weights", i32 322497, i32 278}
!1899 = !{!"branch_weights", i32 278, i32 1}
!1900 = !{!"branch_weights", i32 167, i32 112}
!1901 = !{!"branch_weights", i32 1, i32 167}
!1902 = !{!"function_entry_count", i64 679232}
!1903 = !{!"tree-vrp.c:simplify_stmt_using_ranges"}
!1904 = !{!"branch_weights", i32 428351, i32 250883}
!1905 = !{!"branch_weights", i32 207892, i32 33338, i32 126, i32 1, i32 1, i32 9530, i32 1, i32 1, i32 1, i32 1}
!1906 = !{!"branch_weights", i32 33301, i32 9692}
!1907 = !{!"branch_weights", i32 9530, i32 163}
!1908 = !{!"branch_weights", i32 163, i32 1}
!1909 = !{!"branch_weights", i32 1300702157, i32 -1733146834, i32 730523}
!1910 = !{!"function_entry_count", i64 567601}
!1911 = !{!"tree-vrp.c:vrp_evaluate_conditional"}
!1912 = !{!"branch_weights", i32 4434, i32 -1778118038}
!1913 = !{!"branch_weights", i32 3861, i32 563742}
!1914 = !{!"branch_weights", i32 3861, i32 1}
!1915 = !{!"branch_weights", i32 567602, i32 1}
!1916 = !{!"function_entry_count", i64 111}
!1917 = !{!"tree-vrp.c:gimple_cond_make_false"}
!1918 = !{!"function_entry_count", i64 166}
!1919 = !{!"tree-vrp.c:gimple_cond_make_true"}
!1920 = !{!"tree-vrp.c:gimple_has_location"}
!1921 = !{!"tree-vrp.c:gimple_location"}
!1922 = !{!"function_entry_count", i64 277}
!1923 = !{!"tree-vrp.c:gimple_cond_set_lhs"}
!1924 = !{!"tree-vrp.c:gimple_cond_set_rhs"}
!1925 = !{!"function_entry_count", i64 554}
!1926 = !{!"tree-vrp.c:gimple_set_op"}
!1927 = !{!"branch_weights", i32 1, i32 555}
!1928 = !{!"branch_weights", i32 555, i32 1}
!1929 = !{!"function_entry_count", i64 42991}
!1930 = !{!"tree-vrp.c:simplify_truth_ops_using_ranges"}
!1931 = !{!"branch_weights", i32 9530, i32 33463}
!1932 = !{!"branch_weights", i32 33463, i32 1}
!1933 = !{!"branch_weights", i32 33402, i32 62}
!1934 = !{!"branch_weights", i32 1, i32 62}
!1935 = !{!"branch_weights", i32 2, i32 61}
!1936 = !{!"branch_weights", i32 1, i32 61}
!1937 = !{!"branch_weights", i32 1, i32 9590}
!1938 = !{!"branch_weights", i32 9530, i32 61}
!1939 = !{!"branch_weights", i32 22, i32 40}
!1940 = !{!"branch_weights", i32 1, i32 9530}
!1941 = !{!"branch_weights", i32 9590, i32 1}
!1942 = !{!"branch_weights", i32 27, i32 9564}
!1943 = !{!"branch_weights", i32 27, i32 1}
!1944 = !{!"branch_weights", i32 1, i32 27}
!1945 = !{!"branch_weights", i32 1, i32 1, i32 9530, i32 1, i32 61}
!1946 = !{!"branch_weights", i32 10, i32 9542}
!1947 = !{!"tree-vrp.c:simplify_div_or_mod_using_ranges"}
!1948 = !{!"tree-vrp.c:simplify_abs_using_ranges"}
!1949 = !{!"function_entry_count", i64 284050}
!1950 = !{!"tree-vrp.c:simplify_cond_using_ranges"}
!1951 = !{!"branch_weights", i32 5968760, i32 -473743682}
!1952 = !{!"branch_weights", i32 443, i32 1}
!1953 = !{!"branch_weights", i32 87332135, i32 196249}
!1954 = !{!"branch_weights", i32 1, i32 443}
!1955 = !{!"branch_weights", i32 271, i32 173}
!1956 = !{!"branch_weights", i32 271, i32 1}
!1957 = !{!"tree-vrp.c:simplify_switch_using_ranges"}
!1958 = !{!"branch_weights", i32 1, i32 162, i32 1}
!1959 = distinct !{!1959, !875}
!1960 = !{!935, !850, i64 24}
!1961 = distinct !{!1961, !875}
!1962 = distinct !{!1962, !875}
!1963 = !{!"function_entry_count", i64 45172}
!1964 = !{!"tree-vrp.c:gimple_assign_lhs"}
!1965 = !{!"function_entry_count", i64 9580}
!1966 = !{!"tree-vrp.c:update_stmt"}
!1967 = !{!"branch_weights", i32 1, i32 9581}
!1968 = !{!"tree-vrp.c:gimple_assign_set_rhs_code"}
!1969 = !{!"tree-vrp.c:gimple_assign_set_rhs1"}
!1970 = !{!"tree-vrp.c:gimple_assign_set_rhs2"}
!1971 = !{!"function_entry_count", i64 540}
!1972 = !{!"tree-vrp.c:test_for_singularity"}
!1973 = !{!"branch_weights", i32 73983, i32 73441}
!1974 = !{!"branch_weights", i32 1, i32 271}
!1975 = !{!"branch_weights", i32 73713, i32 271}
!1976 = !{!"branch_weights", i32 2143477962, i32 4005686}
!1977 = !{!"branch_weights", i32 1, i32 541}
!1978 = !{!"branch_weights", i32 541, i32 1}
!1979 = !{!"tree-vrp.c:gimple_cond_set_code"}
!1980 = !{!"tree-vrp.c:VEC_edge_heap_safe_push"}
!1981 = !{!"tree-vrp.c:VEC_switch_update_heap_safe_push"}
!1982 = !{!"tree-vrp.c:VEC_edge_heap_reserve"}
!1983 = !{!"tree-vrp.c:VEC_edge_base_quick_push"}
!1984 = !{!"tree-vrp.c:VEC_edge_base_space"}
!1985 = !{!1095, !847, i64 4}
!1986 = !{!"tree-vrp.c:VEC_switch_update_heap_reserve"}
!1987 = !{!"tree-vrp.c:VEC_switch_update_base_quick_push"}
!1988 = !{i64 0, i64 8, !852, i64 8, i64 8, !852}
!1989 = !{!"tree-vrp.c:VEC_switch_update_base_space"}
!1990 = !{!1098, !847, i64 4}
!1991 = !{!"tree-vrp.c:search_for_addr_array"}
!1992 = distinct !{!1992, !875}
!1993 = !{!"tree-vrp.c:gimple_location_ptr"}
!1994 = !{!"tree-vrp.c:check_array_bounds"}
!1995 = !{!"tree-vrp.c:check_array_ref"}
!1996 = !{!"tree-vrp.c:handled_component_p"}
!1997 = !{!"tree-vrp.c:VEC_tree_heap_alloc"}
!1998 = !{!"function_entry_count", i64 96017}
!1999 = !{!"tree-vrp.c:gsi_last_bb"}
!2000 = !{!"function_entry_count", i64 578842}
!2001 = !{!"tree-vrp.c:simplify_stmt_for_jump_threading"}
!2002 = !{!"branch_weights", i32 244829, i32 334015}
!2003 = !{!"tree-vrp.c:gimple_seq_last"}
!2004 = !{!"branch_weights", i32 1, i32 96018}
!2005 = !{!1411, !850, i64 8}
!2006 = !{!"tree-vrp.c:first_imm_use_stmt"}
!2007 = !{!2008, !850, i64 8}
!2008 = !{!"immediate_use_iterator_d", !850, i64 0, !850, i64 8, !1252, i64 16, !850, i64 48}
!2009 = !{!2008, !850, i64 0}
!2010 = !{!"branch_weights", i32 21650, i32 13935}
!2011 = !{!"function_entry_count", i64 363150}
!2012 = !{!"tree-vrp.c:end_imm_use_stmt_p"}
!2013 = !{!"function_entry_count", i64 145992}
!2014 = !{!"tree-vrp.c:first_imm_use_on_stmt"}
!2015 = !{!2008, !850, i64 48}
!2016 = !{!"function_entry_count", i64 453472}
!2017 = !{!"tree-vrp.c:end_imm_use_on_stmt_p"}
!2018 = !{!"function_entry_count", i64 153740}
!2019 = !{!"tree-vrp.c:set_ssa_use_from_ptr"}
!2020 = !{!"tree-vrp.c:next_imm_use_on_stmt"}
!2021 = !{!"branch_weights", i32 7749, i32 145993}
!2022 = !{!"tree-vrp.c:next_imm_use_stmt"}
!2023 = !{!2008, !850, i64 24}
!2024 = !{!"branch_weights", i32 124344, i32 21650}
!2025 = !{!2008, !850, i64 16}
!2026 = !{!"branch_weights", i32 1, i32 21650}
!2027 = !{!"tree-vrp.c:link_use_stmts_after"}
!2028 = !{!"branch_weights", i32 3040, i32 142954}
!2029 = !{!"branch_weights", i32 3039, i32 1}
!2030 = !{!"branch_weights", i32 3040, i32 3532}
!2031 = !{!"branch_weights", i32 3532, i32 3039}
!2032 = distinct !{!2032, !875}
!2033 = !{!"branch_weights", i32 1, i32 142954}
!2034 = !{!"branch_weights", i32 142953, i32 1}
!2035 = !{!"branch_weights", i32 150702, i32 167}
!2036 = !{!"branch_weights", i32 7915, i32 142953}
!2037 = distinct !{!2037, !875}
!2038 = !{!"branch_weights", i32 21650, i32 124344}
!2039 = !{!"tree-vrp.c:move_use_after_head"}
!2040 = !{!"branch_weights", i32 145993, i32 7749}
!2041 = !{!"branch_weights", i32 7749, i32 1}
!2042 = !{!"function_entry_count", i64 142953}
!2043 = !{!"tree-vrp.c:op_iter_init_use"}
!2044 = !{!"branch_weights", i32 -1740486532, i32 35738}
!2045 = !{!"tree-vrp.c:gimple_vuse_op"}
!2046 = !{!1280, !850, i64 32}
!2047 = !{!"function_entry_count", i64 299732}
!2048 = !{!"tree-vrp.c:delink_imm_use"}
!2049 = !{!1252, !850, i64 0}
!2050 = !{!"branch_weights", i32 1, i32 299733}
!2051 = !{!"tree-vrp.c:link_imm_use_to_list"}
!2052 = !{!"tree-vrp.c:link_imm_use"}
!2053 = !{!"branch_weights", i32 1, i32 153741}
!2054 = !{!"tree-vrp.c:VEC_tree_heap_free"}
!2055 = !{!"tree-vrp.c:gimple_set_num_ops"}
