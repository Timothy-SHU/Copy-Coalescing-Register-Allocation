; ModuleID = 'tree-ssa-copy.c'
source_filename = "tree-ssa-copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.prop_value_d = type { i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [16 x i8] c"tree-ssa-copy.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"copyprop\00", align 1
@pass_copy_prop = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_copy_prop, ptr @execute_copy_prop, ptr null, ptr null, i32 0, i32 53, i32 40, i32 0, i32 0, i32 0, i32 2087 } }, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_tree_copy_prop = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@copy_of = internal unnamed_addr global ptr null, align 8
@cached_last_copy_of = internal unnamed_addr global ptr null, align 8
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"\0AVisiting statement:\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"No interesting values produced.\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Trying to determine truth value of \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"predicate \00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"\0AConditional will always take edge %d->%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"\0AVisiting PHI node: \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"\09Argument #%d: \00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"\0APHI node \00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"\0ATelling the propagator to \00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"add SSA edges out of this PHI and continue.\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"add SSA edges out of this PHI and never visit again.\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"do nothing with SSA edges and keep iterating.\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c" copy-of chain: \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"-> \00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"[UNDEFINED]\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"[COPY]\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"[NOT A COPY]\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @may_propagate_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 4259839
  %9 = icmp eq i64 %8, 4194445
  br i1 %9, label %32, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 4259839
  %13 = icmp eq i64 %12, 4194445
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %4, ptr noundef %6) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 141
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %0) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i64, ptr %1, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 141
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #17
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 86, ptr noundef nonnull @.str.1) #17
  br label %32

32:                                               ; preds = %17, %21, %31, %28, %14, %10, %2
  %33 = phi i8 [ 0, %2 ], [ 0, %10 ], [ 0, %14 ], [ 1, %28 ], [ 1, %31 ], [ 1, %21 ], [ 1, %17 ]
  ret i8 %33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @may_propagate_copy_into_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #17
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %7 = tail call zeroext i8 @may_propagate_copy(ptr noundef %6, ptr noundef %1) #18, !range !8
  br label %44

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !9
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #18
  %13 = tail call zeroext i8 @may_propagate_copy(ptr noundef %12, ptr noundef %1) #18, !range !8
  br label %44

14:                                               ; preds = %8
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 4259839
  %17 = icmp eq i64 %16, 4194445
  br i1 %17, label %44, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #18, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #18
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  br label %36

24:                                               ; preds = %18
  %25 = icmp eq i32 %9, 1
  br i1 %25, label %36, label %26

26:                                               ; preds = %24
  %27 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #18, !range !8
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #18
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  br label %36

35:                                               ; preds = %29, %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 133, ptr noundef nonnull @.str.1) #17
  unreachable

36:                                               ; preds = %24, %32, %21
  %37 = phi ptr [ %23, %21 ], [ %34, %32 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %24 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %38, ptr noundef %40) #17
  %42 = icmp ne i8 %41, 0
  %43 = zext i1 %42 to i8
  br label %44

44:                                               ; preds = %36, %14, %11, %5
  %45 = phi i8 [ %7, %5 ], [ %13, %11 ], [ 0, %14 ], [ %43, %36 ]
  ret i8 %45
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !9
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !9
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @may_propagate_copy_into_asm(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 32
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %11, %5, %1
  %18 = phi i8 [ 1, %5 ], [ 1, %1 ], [ %16, %11 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @propagate_value(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @replace_exp_1(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_exp_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef nonnull %1) #18
  br label %9

7:                                                ; preds = %2
  %8 = tail call ptr @unsave_expr_now(ptr noundef nonnull %1) #17
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %8) #18
  br label %9

9:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @replace_exp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @replace_exp_1(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @propagate_tree_value(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @unsave_expr_now(ptr noundef nonnull %1) #17
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ %1, %2 ]
  store ptr %9, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare ptr @unsave_expr_now(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @propagate_tree_value_into_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18
  %7 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %6) #18, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !10
  %10 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %6) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %6) #18
  store ptr %13, ptr %3, align 8, !tbaa !10
  br label %14

14:                                               ; preds = %12, %9
  call void @propagate_tree_value(ptr noundef nonnull %3, ptr noundef %1) #18
  %15 = load ptr, ptr %3, align 8, !tbaa !10
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  br label %41

16:                                               ; preds = %2
  %17 = tail call fastcc i32 @gimple_code(ptr noundef %6) #18, !range !9
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !10
  %20 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !10
  %23 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %21, ptr noundef %22) #17
  call void @propagate_tree_value(ptr noundef nonnull %4, ptr noundef %1) #18
  tail call fastcc void @gimple_cond_set_code(ptr noundef %6) #18
  %24 = load ptr, ptr %4, align 8, !tbaa !10
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %6, ptr noundef %24) #18
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %6, ptr noundef %23) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %41

25:                                               ; preds = %16
  %26 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %6) #18, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %6) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !10
  call void @propagate_tree_value(ptr noundef nonnull %5, ptr noundef %1) #18
  %32 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %6) #18
  %33 = load ptr, ptr %5, align 8, !tbaa !10
  %34 = tail call ptr @gimple_build_assign_stat(ptr noundef %32, ptr noundef %33) #17
  tail call void @move_ssa_defining_stmt_for_defs(ptr noundef %34, ptr noundef %6) #17
  tail call void @gsi_replace(ptr noundef %0, ptr noundef %34, i8 noundef zeroext 0) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  br label %41

35:                                               ; preds = %28, %25
  %36 = tail call fastcc i32 @gimple_code(ptr noundef %6) #18, !range !9
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = tail call fastcc ptr @gimple_switch_index_ptr(ptr noundef %6) #18
  tail call void @propagate_tree_value(ptr noundef %39, ptr noundef %1) #18
  br label %41

40:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 273, ptr noundef nonnull @.str.1) #17
  br label %41

41:                                               ; preds = %19, %38, %40, %31, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  ret ptr %3
}

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_cond_set_code(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = or disjoint i32 %3, 6684672
  store i32 %4, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #18
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @move_ssa_defining_stmt_for_defs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_copy_prop() #6 {
  %1 = load i32, ptr @flag_tree_copy_prop, align 4, !tbaa !16
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_copy_prop() #0 {
  tail call fastcc void @init_copy_prop() #18
  tail call void @ssa_propagate(ptr noundef nonnull @copy_prop_visit_stmt, ptr noundef nonnull @copy_prop_visit_phi_node) #17
  tail call fastcc void @fini_copy_prop() #18
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !9
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !18
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !9
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !16
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  store ptr %1, ptr %4, align 8, !tbaa !10
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !22
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !23
  store ptr %2, ptr %6, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !22
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #18
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  store ptr %1, ptr %0, align 8, !tbaa !22
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !23
  store ptr %0, ptr %4, align 8, !tbaa !22
  store ptr %0, ptr %3, align 8, !tbaa !23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #18
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !5
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_copy_prop() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr @cfun, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %9) #18
  %11 = zext i32 %10 to i64
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 16) #17
  store ptr %12, ptr @copy_of, align 8, !tbaa !10
  %13 = load ptr, ptr @cfun, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.gimple_df, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !26
  %18 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %17) #18
  %19 = zext i32 %18 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 8) #17
  store ptr %20, ptr @cached_last_copy_of, align 8, !tbaa !10
  %21 = load ptr, ptr @cfun, align 8, !tbaa !10
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !30
  %24 = load ptr, ptr %23, align 8, !tbaa !31
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !33
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %137, label %30

30:                                               ; preds = %0
  %31 = getelementptr inbounds i8, ptr %3, i64 8
  br label %32

32:                                               ; preds = %30, %128
  %33 = phi ptr [ %26, %30 ], [ %130, %128 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #19
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 10
  %35 = load i32, ptr %34, align 4, !tbaa !36
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %33) #18
  %36 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %32, %72
  %39 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #19
  %40 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %39) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = call fastcc zeroext i8 @stmt_may_generate_copy(ptr noundef %39) #18, !range !8
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %39) #18
  %47 = call i32 @loop_depth_of_name(ptr noundef %46) #17
  %48 = icmp sgt i32 %47, %35
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %42
  br label %50

50:                                               ; preds = %45, %38, %49
  %51 = phi i8 [ 0, %49 ], [ 1, %38 ], [ 1, %45 ]
  call fastcc void @prop_set_simulate_again(ptr noundef %39, i8 noundef zeroext %51) #18
  %52 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %39) #18
  %53 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #18
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load ptr, ptr @cached_last_copy_of, align 8
  br label %57

57:                                               ; preds = %55, %68
  %58 = phi ptr [ %52, %55 ], [ %69, %68 ]
  %59 = call fastcc zeroext i8 @prop_simulate_again_p(ptr noundef %39) #18, !range !8
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call fastcc zeroext i8 @set_copy_of_val(ptr noundef %58, ptr noundef %58) #18, !range !8
  br label %68

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.tree_ssa_name, ptr %58, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !5
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %56, i64 %66
  store ptr %58, ptr %67, align 8, !tbaa !10
  br label %68

68:                                               ; preds = %61, %63
  %69 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #18
  %70 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #18
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %57, label %72, !llvm.loop !37

72:                                               ; preds = %68, %50
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #19
  call fastcc void @gsi_next(ptr noundef nonnull %1) #18
  %73 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !8
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %38, label %75, !llvm.loop !39

75:                                               ; preds = %72, %32
  %76 = load ptr, ptr @cfun, align 8, !tbaa !10
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !40
  %79 = icmp eq ptr %78, null
  br i1 %79, label %102, label %80

80:                                               ; preds = %75
  %81 = call fastcc zeroext i8 @loops_state_satisfies_p() #18
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  %84 = call fastcc ptr @ei_start_1(ptr noundef %33) #18
  store i32 0, ptr %3, align 8, !tbaa.struct !41
  store ptr %84, ptr %31, align 8, !tbaa.struct !42
  %85 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %84, ptr noundef nonnull %4) #18, !range !8
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %83, %87
  %88 = phi i8 [ %95, %87 ], [ 0, %83 ]
  %89 = load ptr, ptr %4, align 8, !tbaa !10
  %90 = load ptr, ptr %89, align 8, !tbaa !43
  %91 = getelementptr inbounds %struct.basic_block_def, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !45
  %93 = call zeroext i8 @loop_exit_edge_p(ptr noundef %92, ptr noundef nonnull %89) #17
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i8 %88, i8 1
  call fastcc void @ei_next(ptr noundef nonnull %3) #18
  %96 = load i32, ptr %3, align 8
  %97 = load ptr, ptr %31, align 8
  %98 = call fastcc zeroext i8 @ei_cond(i32 %96, ptr %97, ptr noundef nonnull %4) #18, !range !8
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %87, !llvm.loop !46

100:                                              ; preds = %87, %83
  %101 = phi i8 [ 0, %83 ], [ %95, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  br label %102

102:                                              ; preds = %100, %80, %75
  %103 = phi i8 [ %101, %100 ], [ 0, %80 ], [ 0, %75 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %33) #17
  %104 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !8
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %102
  %107 = icmp eq i8 %103, 0
  br label %108

108:                                              ; preds = %106, %125
  %109 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  %110 = call fastcc ptr @gimple_phi_result(ptr noundef %109) #18
  %111 = call zeroext i8 @is_gimple_reg(ptr noundef %110) #17
  %112 = icmp ne i8 %111, 0
  %113 = select i1 %112, i1 %107, i1 false
  %114 = zext i1 %113 to i8
  call fastcc void @prop_set_simulate_again(ptr noundef %109, i8 noundef zeroext %114) #18
  %115 = call fastcc zeroext i8 @prop_simulate_again_p(ptr noundef %109) #18, !range !8
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = call fastcc zeroext i8 @set_copy_of_val(ptr noundef %110, ptr noundef %110) #18, !range !8
  br label %125

119:                                              ; preds = %108
  %120 = load ptr, ptr @cached_last_copy_of, align 8, !tbaa !10
  %121 = getelementptr inbounds %struct.tree_ssa_name, ptr %110, i64 0, i32 3
  %122 = load i32, ptr %121, align 8, !tbaa !5
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %120, i64 %123
  store ptr %110, ptr %124, align 8, !tbaa !10
  br label %125

125:                                              ; preds = %119, %117
  call fastcc void @gsi_next(ptr noundef nonnull %1) #18
  %126 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !8
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %108, label %128, !llvm.loop !47

128:                                              ; preds = %125, %102
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #19
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !33
  %131 = load ptr, ptr @cfun, align 8, !tbaa !10
  %132 = getelementptr inbounds %struct.function, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !30
  %134 = getelementptr inbounds %struct.control_flow_graph, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !35
  %136 = icmp eq ptr %130, %135
  br i1 %136, label %137, label %32, !llvm.loop !48

137:                                              ; preds = %128, %0
  ret void
}

; Function Attrs: optsize
declare void @ssa_propagate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @copy_prop_visit_stmt(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !16
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !16
  tail call void @print_gimple_stmt(ptr noundef %13, ptr noundef %0, i32 noundef 0, i32 noundef %14) #17
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %16 = tail call i32 @fputc(i32 10, ptr %15)
  br label %17

17:                                               ; preds = %11, %7, %3
  %18 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #18
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 141
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @copy_prop_visit_assignment(ptr noundef %0, ptr noundef %2) #18, !range !49
  br label %37

32:                                               ; preds = %25, %20, %17
  %33 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !9
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = tail call fastcc i32 @copy_prop_visit_cond_stmt(ptr noundef %0, ptr noundef %1) #18, !range !50
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i32 [ %31, %30 ], [ %36, %35 ]
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %60

40:                                               ; preds = %32, %37
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !16
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 32, i64 1, ptr nonnull %41)
  br label %49

49:                                               ; preds = %47, %43, %40
  %50 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %0) #18
  %51 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #18
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49, %53
  %54 = phi ptr [ %56, %53 ], [ %50, %49 ]
  %55 = tail call fastcc zeroext i8 @set_copy_of_val(ptr noundef %54, ptr noundef %54) #18, !range !8
  %56 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #18
  %57 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #18
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %53, label %59, !llvm.loop !51

59:                                               ; preds = %53, %49
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  br label %60

60:                                               ; preds = %59, %37
  %61 = phi i32 [ 2, %59 ], [ %38, %37 ]
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @copy_prop_visit_phi_node(ptr noundef %0) #0 {
  %2 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #18
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !16
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 20, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !16
  tail call void @print_gimple_stmt(ptr noundef %11, ptr noundef %0, i32 noundef 0, i32 noundef %12) #17
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %14 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %13)
  br label %15

15:                                               ; preds = %9, %5, %1
  %16 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %86, label %18

18:                                               ; preds = %15, %68
  %19 = phi i64 [ %70, %68 ], [ 0, %15 ]
  %20 = phi ptr [ %69, %68 ], [ null, %15 ]
  %21 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %19) #18
  %22 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %19) #18
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !52
  %25 = and i32 %24, 4096
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %68, label %27

27:                                               ; preds = %18
  %28 = load i64, ptr %21, align 8
  %29 = and i64 %28, 4259839
  %30 = icmp eq i64 %29, 141
  br i1 %30, label %31, label %74

31:                                               ; preds = %27
  %32 = tail call zeroext i8 @is_gimple_reg(ptr noundef %2) #17
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @loop_depth_of_name(ptr noundef nonnull %21) #17
  %36 = tail call i32 @loop_depth_of_name(ptr noundef %2) #17
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %74, label %38

38:                                               ; preds = %34, %31
  %39 = icmp eq ptr %21, %2
  br i1 %39, label %68, label %40

40:                                               ; preds = %38
  %41 = tail call fastcc ptr @get_last_copy_of(ptr noundef nonnull %21) #18
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %68, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr @dump_flags, align 4, !tbaa !16
  %48 = and i32 %47, 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = trunc i64 %19 to i32
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.14, i32 noundef %51) #18
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call fastcc void @dump_copy_of(ptr noundef %53, ptr noundef nonnull %21) #18
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %55 = tail call i32 @fputc(i32 10, ptr %54)
  br label %56

56:                                               ; preds = %50, %46, %43
  %57 = tail call fastcc ptr @get_copy_of_val(ptr noundef nonnull %21) #18
  %58 = icmp eq ptr %20, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.prop_value_d, ptr %57, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !53
  %62 = icmp eq ptr %61, null
  %63 = select i1 %62, ptr %21, ptr %61
  br label %68

64:                                               ; preds = %56
  %65 = tail call fastcc ptr @get_last_copy_of(ptr noundef nonnull %20) #18
  %66 = tail call fastcc ptr @get_last_copy_of(ptr noundef nonnull %21) #18
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %38, %40, %18, %59, %64
  %69 = phi ptr [ %20, %64 ], [ %20, %38 ], [ %20, %40 ], [ %20, %18 ], [ %63, %59 ]
  %70 = add nuw nsw i64 %19, 1
  %71 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #18
  %72 = zext i32 %71 to i64
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %18, label %74, !llvm.loop !55

74:                                               ; preds = %68, %64, %27, %34
  %75 = phi ptr [ %69, %68 ], [ %2, %64 ], [ %2, %27 ], [ %2, %34 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = tail call zeroext i8 @may_propagate_copy(ptr noundef %2, ptr noundef nonnull %75) #18, !range !8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = tail call fastcc zeroext i8 @set_copy_of_val(ptr noundef %2, ptr noundef nonnull %75) #18, !range !8
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = icmp eq ptr %75, %2
  %85 = select i1 %84, i32 2, i32 1
  br label %86

86:                                               ; preds = %15, %74, %77, %80, %83
  %87 = phi i32 [ %85, %83 ], [ 0, %80 ], [ 0, %77 ], [ 0, %74 ], [ 0, %15 ]
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %89 = icmp eq ptr %88, null
  br i1 %89, label %109, label %90

90:                                               ; preds = %86
  %91 = load i32, ptr @dump_flags, align 4, !tbaa !16
  %92 = and i32 %91, 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %90
  %95 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 10, i64 1, ptr nonnull %88)
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call fastcc void @dump_copy_of(ptr noundef %96, ptr noundef %2) #18
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %98 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 27, i64 1, ptr %97)
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !10
  switch i32 %87, label %104 [
    i32 1, label %100
    i32 2, label %102
  ]

100:                                              ; preds = %94
  %101 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 43, i64 1, ptr %99)
  br label %106

102:                                              ; preds = %94
  %103 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 52, i64 1, ptr %99)
  br label %106

104:                                              ; preds = %94
  %105 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 45, i64 1, ptr %99)
  br label %106

106:                                              ; preds = %102, %104, %100
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %108 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %107)
  br label %109

109:                                              ; preds = %106, %90, %86
  ret i32 %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fini_copy_prop() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !26
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %5) #18
  %7 = zext i32 %6 to i64
  %8 = tail call ptr @xcalloc(i64 noundef %7, i64 noundef 16) #17
  %9 = load ptr, ptr @cfun, align 8, !tbaa !10
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #18
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %57

16:                                               ; preds = %0, %47
  %17 = phi ptr [ %53, %47 ], [ %13, %0 ]
  %18 = phi i64 [ %48, %47 ], [ 1, %0 ]
  %19 = trunc i64 %18 to i32
  %20 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %17, i32 noundef %19) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr @copy_of, align 8, !tbaa !10
  %24 = getelementptr inbounds %struct.prop_value_d, ptr %23, i64 %18, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  %27 = icmp eq ptr %25, %20
  %28 = or i1 %26, %27
  br i1 %28, label %47, label %29

29:                                               ; preds = %22
  %30 = tail call fastcc ptr @get_last_copy_of(ptr noundef nonnull %20) #18
  %31 = getelementptr inbounds %struct.prop_value_d, ptr %8, i64 %18, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !53
  %32 = icmp eq ptr %30, %20
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %47 [
    i16 10, label %38
    i16 12, label %38
  ]

38:                                               ; preds = %33, %33
  %39 = getelementptr inbounds %struct.tree_ssa_name, ptr %20, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @duplicate_ssa_name_ptr_info(ptr noundef nonnull %30, ptr noundef nonnull %40) #17
  br label %47

47:                                               ; preds = %29, %38, %42, %46, %33, %16, %22
  %48 = add nuw nsw i64 %18, 1
  %49 = load ptr, ptr @cfun, align 8, !tbaa !10
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !24
  %52 = getelementptr inbounds %struct.gimple_df, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !26
  %54 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %53) #18
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %48, %55
  br i1 %56, label %16, label %57, !llvm.loop !56

57:                                               ; preds = %47, %0
  %58 = tail call zeroext i8 @substitute_and_fold(ptr noundef %8, ptr noundef null) #17
  %59 = load ptr, ptr @cached_last_copy_of, align 8, !tbaa !10
  tail call void @free(ptr noundef %59) #18
  %60 = load ptr, ptr @copy_of, align 8, !tbaa !10
  tail call void @free(ptr noundef %60) #18
  tail call void @free(ptr noundef %8) #18
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !57
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @prop_set_simulate_again(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #5 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0, i8 noundef zeroext %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @stmt_may_generate_copy(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !9
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %23 [
    i8 16, label %4
    i8 6, label %6
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #18
  br label %17

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #18, !range !8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #18, !range !61
  %14 = icmp eq i32 %13, 141
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  br label %17

17:                                               ; preds = %4, %15
  %18 = phi ptr [ %16, %15 ], [ %5, %4 ]
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 4194304
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %17, %1, %12, %9, %6
  %24 = phi i8 [ 0, %6 ], [ 0, %9 ], [ 0, %12 ], [ 0, %1 ], [ %22, %17 ]
  ret i8 %24
}

; Function Attrs: optsize
declare i32 @loop_depth_of_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #18
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !62
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i8, ptr %0, align 8, !tbaa !64
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @prop_simulate_again_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_visited_p(ptr noundef %0) #18, !range !8
  ret i8 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @set_copy_of_val(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr @copy_of, align 8, !tbaa !10
  %6 = zext i32 %4 to i64
  %7 = getelementptr inbounds %struct.prop_value_d, ptr %5, i64 %6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  store ptr %1, ptr %7, align 8, !tbaa !53
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load ptr, ptr @cached_last_copy_of, align 8, !tbaa !10
  %12 = getelementptr inbounds ptr, ptr %11, i64 %6
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  %14 = tail call fastcc ptr @get_last_copy_of(ptr noundef nonnull %0) #18
  store ptr %14, ptr %12, align 8, !tbaa !10
  %15 = icmp ne ptr %13, %14
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %2, %10
  %18 = phi i8 [ %16, %10 ], [ 1, %2 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #18
  %8 = load ptr, ptr %3, align 8, !tbaa !66
  store ptr %8, ptr %2, align 8, !tbaa !65
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #18
  %17 = load ptr, ptr %11, align 8, !tbaa !71
  store ptr %17, ptr %10, align 8, !tbaa !68
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  store ptr %4, ptr %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p() unnamed_addr #4 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = load i32, ptr %3, align 8, !tbaa !73
  %5 = trunc i32 %4 to i8
  %6 = lshr i8 %5, 5
  %7 = and i8 %6, 1
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #7 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !10
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @loop_exit_edge_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !75
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !77
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !78
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !80
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8
  %4 = and i8 %1, 1
  %5 = zext nneg i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 9
  %7 = and i32 %3, -513
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !8
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #18, !range !61
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #18, !range !9
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !9
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !9
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #7 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #18
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store i8 0, ptr %0, align 8, !tbaa !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !8
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_visited_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 9
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_last_copy_of(ptr noundef readonly %0) unnamed_addr #11 {
  %2 = load ptr, ptr @copy_of, align 8, !tbaa !10
  br label %6

3:                                                ; preds = %6
  %4 = add nuw nsw i32 %8, 1
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %17, label %6, !llvm.loop !82

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %0, %1 ], [ %13, %3 ]
  %8 = phi i32 [ 0, %1 ], [ %4, %3 ]
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !5
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.prop_value_d, ptr %2, i64 %11, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  %15 = icmp eq ptr %13, %7
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %3

17:                                               ; preds = %6, %3
  %18 = phi ptr [ %7, %6 ], [ %0, %3 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #18
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !83
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @copy_prop_visit_assignment(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #18
  %4 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #18, !range !61
  %6 = icmp eq i32 %5, 141
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 483, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @get_copy_of_val(ptr noundef %4) #18
  %10 = load i64, ptr %3, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %3, ptr noundef %4) #18, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  store ptr %3, ptr %1, align 8, !tbaa !10
  %17 = getelementptr inbounds %struct.prop_value_d, ptr %9, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = tail call fastcc zeroext i8 @set_copy_of_val(ptr noundef nonnull %3, ptr noundef %18) #18, !range !8
  %20 = zext nneg i8 %19 to i32
  br label %21

21:                                               ; preds = %8, %16, %13
  %22 = phi i32 [ 2, %13 ], [ %20, %16 ], [ 2, %8 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @copy_prop_visit_cond_stmt(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #18
  %4 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #18
  %5 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #18
  %6 = load i64, ptr %4, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load i64, ptr %5, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %39

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @get_last_copy_of(ptr noundef nonnull %4) #18
  %15 = tail call fastcc ptr @get_last_copy_of(ptr noundef nonnull %5) #18
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load i32, ptr @dump_flags, align 4, !tbaa !16
  %20 = and i32 %19, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 35, i64 1, ptr nonnull %16)
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %25 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 10, i64 1, ptr %24)
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_gimple_stmt(ptr noundef %26, ptr noundef %0, i32 noundef 0, i32 noundef 0) #17
  br label %27

27:                                               ; preds = %22, %18, %13
  %28 = icmp eq ptr %14, %15
  br i1 %28, label %29, label %39

29:                                               ; preds = %27
  %30 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #18, !range !61
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %32 = tail call ptr @fold_binary_loc(i32 noundef %3, i32 noundef %30, ptr noundef %31, ptr noundef %14, ptr noundef %14) #17
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #18
  %36 = tail call ptr @find_taken_edge(ptr noundef %35, ptr noundef nonnull %32) #17
  store ptr %36, ptr %1, align 8, !tbaa !10
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, i32 2, i32 1
  br label %39

39:                                               ; preds = %29, %34, %27, %9, %2
  %40 = phi i32 [ 2, %27 ], [ 2, %9 ], [ 2, %2 ], [ %38, %34 ], [ 2, %29 ]
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %42 = icmp eq ptr %41, null
  br i1 %42, label %59, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !16
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %1, align 8, !tbaa !10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %48, align 8, !tbaa !43
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !85
  %54 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !86
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 9
  %57 = load i32, ptr %56, align 8, !tbaa !85
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str.11, i32 noundef %53, i32 noundef %57) #18
  br label %59

59:                                               ; preds = %50, %47, %43, %39
  ret i32 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_copy_of_val(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @copy_of, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.prop_value_d, ptr %2, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call fastcc zeroext i8 @stmt_may_generate_copy(ptr noundef %11) #18, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store ptr %0, ptr %6, align 8, !tbaa !53
  br label %15

15:                                               ; preds = %14, %9, %1
  %16 = getelementptr inbounds %struct.prop_value_d, ptr %2, i64 %5
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !5
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @find_taken_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !5
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #18
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #18
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_copy_of(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @dump_flags, align 4, !tbaa !16
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef %3) #17
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 141
  br i1 %6, label %7, label %67

7:                                                ; preds = %2
  %8 = load ptr, ptr @cfun, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #18
  %14 = tail call ptr @sbitmap_alloc(i32 noundef %13) #17
  tail call void @sbitmap_zero(ptr noundef %14) #17
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !5
  tail call fastcc void @SET_BIT(ptr noundef %14, i32 noundef %16) #18
  %17 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 16, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #17
  %18 = tail call i32 @fputc(i32 32, ptr %0)
  %19 = load ptr, ptr @copy_of, align 8, !tbaa !10
  %20 = load i32, ptr %15, align 8, !tbaa !5
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.prop_value_d, ptr %19, i64 %21, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25

25:                                               ; preds = %7, %45
  %26 = phi ptr [ %34, %45 ], [ %15, %7 ]
  %27 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 3, i64 1, ptr %0)
  %28 = load ptr, ptr @copy_of, align 8, !tbaa !10
  %29 = load i32, ptr %26, align 8, !tbaa !5
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.prop_value_d, ptr %28, i64 %30, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !53
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %32, i32 noundef 0) #17
  %33 = tail call i32 @fputc(i32 32, ptr %0)
  %34 = getelementptr inbounds %struct.tree_ssa_name, ptr %32, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !5
  %36 = lshr i32 %35, 6
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds %struct.simple_bitmap_def, ptr %14, i64 0, i32 3, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !18
  %40 = and i32 %35, 63
  %41 = zext nneg i32 %40 to i64
  %42 = shl nuw i64 1, %41
  %43 = and i64 %42, %39
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %25
  tail call fastcc void @SET_BIT(ptr noundef nonnull %14, i32 noundef %35) #18
  %46 = load ptr, ptr @copy_of, align 8, !tbaa !10
  %47 = load i32, ptr %34, align 8, !tbaa !5
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.prop_value_d, ptr %46, i64 %48, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !53
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %25, !llvm.loop !88

52:                                               ; preds = %45, %25, %7
  %53 = tail call fastcc ptr @get_copy_of_val(ptr noundef nonnull %1) #18
  %54 = getelementptr inbounds %struct.prop_value_d, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !53
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 11, i64 1, ptr %0)
  br label %65

59:                                               ; preds = %52
  %60 = icmp eq ptr %55, %1
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 6, i64 1, ptr %0)
  br label %65

63:                                               ; preds = %59
  %64 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 12, i64 1, ptr %0)
  br label %65

65:                                               ; preds = %61, %63, %57
  %66 = load ptr, ptr %14, align 8, !tbaa !89
  tail call void @free(ptr noundef %66) #18
  tail call void @free(ptr noundef %14) #18
  br label %67

67:                                               ; preds = %2, %65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 {
  %3 = load ptr, ptr %0, align 8, !tbaa !89
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
  %15 = load i64, ptr %14, align 8, !tbaa !18
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !5
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !18
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: optsize
declare void @duplicate_ssa_name_ptr_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @substitute_and_fold(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i32 0, i32 256}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!14 = !{!15, !11, i64 0}
!15 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !6, i64 0}
!20 = !{!21, !11, i64 24}
!21 = !{!"ssa_use_operand_d", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24}
!22 = !{!21, !11, i64 0}
!23 = !{!21, !11, i64 8}
!24 = !{!25, !11, i64 24}
!25 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !17, i64 104, !17, i64 108, !17, i64 112, !17, i64 116, !17, i64 120, !17, i64 124, !11, i64 128, !17, i64 136, !17, i64 137, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139}
!26 = !{!27, !11, i64 16}
!27 = !{!"gimple_df", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !28, i64 32, !28, i64 48, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !17, i64 96, !29, i64 104}
!28 = !{!"pt_solution", !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !11, i64 8}
!29 = !{!"ssa_operands", !11, i64 0, !17, i64 8, !17, i64 12, !6, i64 16, !11, i64 24, !11, i64 32}
!30 = !{!25, !11, i64 8}
!31 = !{!32, !11, i64 0}
!32 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !11, i64 40, !17, i64 48, !6, i64 52, !6, i64 60, !17, i64 68, !17, i64 72}
!33 = !{!34, !11, i64 56}
!34 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !11, i64 48, !11, i64 56, !6, i64 64, !19, i64 72, !17, i64 80, !17, i64 84, !17, i64 88, !17, i64 92, !17, i64 96}
!35 = !{!32, !11, i64 8}
!36 = !{!34, !17, i64 84}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = distinct !{!39, !38}
!40 = !{!25, !11, i64 32}
!41 = !{i64 0, i64 4, !16, i64 8, i64 8, !10}
!42 = !{i64 0, i64 8, !10}
!43 = !{!44, !11, i64 0}
!44 = !{!"edge_def", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24, !11, i64 32, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !19, i64 56}
!45 = !{!34, !11, i64 24}
!46 = distinct !{!46, !38}
!47 = distinct !{!47, !38}
!48 = distinct !{!48, !38}
!49 = !{i32 0, i32 3}
!50 = !{i32 1, i32 3}
!51 = distinct !{!51, !38}
!52 = !{!44, !17, i64 48}
!53 = !{!54, !11, i64 8}
!54 = !{!"prop_value_d", !17, i64 0, !11, i64 8}
!55 = distinct !{!55, !38}
!56 = distinct !{!56, !38}
!57 = !{!58, !17, i64 0}
!58 = !{!"VEC_tree_base", !17, i64 0, !17, i64 4, !6, i64 8}
!59 = !{!13, !11, i64 8}
!60 = !{!13, !11, i64 16}
!61 = !{i32 0, i32 65536}
!62 = !{!63, !17, i64 4}
!63 = !{!"ssa_operand_iterator_d", !6, i64 0, !17, i64 4, !11, i64 8, !11, i64 16, !17, i64 24, !17, i64 28, !11, i64 32}
!64 = !{!63, !6, i64 0}
!65 = !{!63, !11, i64 16}
!66 = !{!67, !11, i64 0}
!67 = !{!"use_optype_d", !11, i64 0, !21, i64 8}
!68 = !{!63, !11, i64 8}
!69 = !{!70, !11, i64 8}
!70 = !{!"def_optype_d", !11, i64 0, !11, i64 8}
!71 = !{!70, !11, i64 0}
!72 = !{!15, !11, i64 16}
!73 = !{!74, !17, i64 0}
!74 = !{!"loops", !17, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!75 = !{!76, !17, i64 0}
!76 = !{!"", !17, i64 0, !11, i64 8}
!77 = !{!34, !17, i64 96}
!78 = !{!79, !11, i64 0}
!79 = !{!"gimple_bb_info", !11, i64 0, !11, i64 8}
!80 = !{!81, !11, i64 0}
!81 = !{!"gimple_seq_d", !11, i64 0, !11, i64 8, !11, i64 16}
!82 = distinct !{!82, !38}
!83 = !{!84, !17, i64 0}
!84 = !{!"VEC_edge_base", !17, i64 0, !17, i64 4, !6, i64 8}
!85 = !{!34, !17, i64 80}
!86 = !{!44, !11, i64 8}
!87 = !{!34, !11, i64 0}
!88 = distinct !{!88, !38}
!89 = !{!90, !11, i64 0}
!90 = !{!"simple_bitmap_def", !11, i64 0, !17, i64 8, !17, i64 12, !6, i64 16}
