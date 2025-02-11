; ModuleID = 'tree-ssa-propagate.c'
source_filename = "tree-ssa-propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.prop_stats_d = type { i64, i64, i64, i64 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.edge_iterator = type { i32, ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.prop_value_d = type { i32, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }

@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"tree-ssa-propagate.c\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@ssa_prop_visit_stmt = internal unnamed_addr global ptr null, align 8
@ssa_prop_visit_phi = internal unnamed_addr global ptr null, align 8
@interesting_ssa_edges = internal global ptr null, align 8
@varying_ssa_edges = internal global ptr null, align 8
@executable_blocks = internal unnamed_addr global ptr null, align 8
@bb_in_list = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@cfg_blocks = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Adding Destination of edge (%d -> %d) to worklist\0A\0A\00", align 1
@cfg_blocks_head = internal unnamed_addr global i32 0, align 4
@cfg_blocks_tail = internal unnamed_addr global i32 0, align 4
@cfg_blocks_num = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"\0ASimulating block %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\0ASimulating statement (from ssa_edges): \00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"\0ASubstituting values and folding statements\0A\0A\00", align 1
@prop_stats = internal unnamed_addr global %struct.prop_stats_d zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"Removing dead stmt \00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Folding statement: \00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Folded into: \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Not folded\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Constants propagated\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Copies propagated\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"Statements folded\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"Statements deleted\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Folding PHI node: \00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"No folding possible\0A\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gt_ggc_r_gt_tree_ssa_propagate_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @varying_ssa_edges, i64 1, i64 8, ptr @gt_ggc_mx_VEC_gimple_gc, ptr @gt_pch_nx_VEC_gimple_gc }, %struct.ggc_root_tab { ptr @interesting_ssa_edges, i64 1, i64 8, ptr @gt_ggc_mx_VEC_gimple_gc, ptr @gt_pch_nx_VEC_gimple_gc }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @valid_gimple_rhs_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !6
  switch i32 %5, label %73 [
    i32 3, label %6
    i32 1, label %72
    i32 7, label %9
    i32 5, label %9
    i32 6, label %19
    i32 10, label %24
    i32 0, label %70
  ]

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @is_gimple_variable(ptr noundef nonnull %0) #17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %73, label %72

9:                                                ; preds = %1, %1
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = tail call zeroext i8 @is_gimple_val(ptr noundef %11) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %73, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !10
  %17 = tail call zeroext i8 @is_gimple_val(ptr noundef %16) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %73, label %72

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = tail call zeroext i8 @is_gimple_val(ptr noundef %21) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %73, label %72

24:                                               ; preds = %1
  %25 = trunc i64 %2 to i16
  switch i16 %25, label %73 [
    i16 121, label %26
    i16 96, label %55
    i16 93, label %60
    i16 95, label %60
    i16 94, label %60
  ]

26:                                               ; preds = %24
  %27 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !10
  %32 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %31) #18, !range !11
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %29, %46
  %35 = phi ptr [ %48, %46 ], [ %31, %29 ]
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = and i32 %37, 65535
  %39 = add nsw i32 %38, -45
  %40 = icmp ult i32 %39, 2
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !10
  %44 = tail call zeroext i8 @is_gimple_val(ptr noundef %43) #17
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %73, label %46

46:                                               ; preds = %34, %41
  %47 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !10
  %49 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %48) #18, !range !11
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %34, !llvm.loop !12

51:                                               ; preds = %46, %29
  %52 = phi ptr [ %31, %29 ], [ %48, %46 ]
  %53 = tail call zeroext i8 @is_gimple_id(ptr noundef %52) #17
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %73, label %72

55:                                               ; preds = %24
  %56 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !10
  %58 = tail call zeroext i8 @is_gimple_val(ptr noundef %57) #17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %73, label %72

60:                                               ; preds = %24, %24, %24
  %61 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !10
  %63 = tail call zeroext i8 @is_gimple_val(ptr noundef %62) #17
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !10
  %68 = tail call zeroext i8 @is_gimple_val(ptr noundef %67) #17
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %72

70:                                               ; preds = %1
  %71 = icmp eq i64 %3, 141
  br i1 %71, label %72, label %73

72:                                               ; preds = %70, %51, %55, %65, %19, %14, %6, %1
  br label %73

73:                                               ; preds = %41, %26, %1, %70, %24, %60, %65, %55, %19, %9, %14, %6, %51, %72
  %74 = phi i8 [ 1, %72 ], [ 0, %51 ], [ 0, %6 ], [ 0, %14 ], [ 0, %9 ], [ 0, %19 ], [ 0, %55 ], [ 0, %65 ], [ 0, %60 ], [ 0, %24 ], [ 0, %70 ], [ 0, %1 ], [ 1, %26 ], [ 0, %41 ]
  ret i8 %74
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_variable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
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
declare zeroext i8 @is_gimple_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @valid_gimple_call_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 59
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.tree_int_cst, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !10
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %10, -3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %5
  %14 = zext i32 %11 to i64
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %19, 1
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %26, label %18, !llvm.loop !14

18:                                               ; preds = %13, %15
  %19 = phi i64 [ 0, %13 ], [ %16, %15 ]
  %20 = add nuw i64 %19, 3
  %21 = and i64 %20, 4294967295
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = tail call zeroext i8 @is_gimple_operand(ptr noundef %23) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15

26:                                               ; preds = %18, %15, %5, %1
  %27 = phi i8 [ 0, %1 ], [ 1, %5 ], [ 0, %18 ], [ 1, %15 ]
  ret i8 %27
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_operand(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @move_ssa_defining_stmt_for_defs(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  %4 = load ptr, ptr @cfun, align 8, !tbaa !15
  %5 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %4) #18, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %1) #18
  %9 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7, %18
  %12 = phi ptr [ %19, %18 ], [ %8, %7 ]
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  store ptr %0, ptr %17, align 8, !tbaa !10
  br label %18

18:                                               ; preds = %11, %16
  %19 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #18
  %20 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %11, label %22, !llvm.loop !17

22:                                               ; preds = %18, %7, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #18
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !20
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i8, ptr %0, align 8, !tbaa !22
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #18
  %8 = load ptr, ptr %3, align 8, !tbaa !24
  store ptr %8, ptr %2, align 8, !tbaa !23
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !27
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #18
  %17 = load ptr, ptr %11, align 8, !tbaa !30
  store ptr %17, ptr %10, align 8, !tbaa !27
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !22
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
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
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 747, ptr noundef nonnull @.str.1) #17
  br label %12

12:                                               ; preds = %3, %11
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !27
  br label %26

16:                                               ; preds = %12
  %17 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #18
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !27
  %19 = icmp eq ptr %17, null
  %20 = select i1 %5, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %17, align 8, !tbaa !30
  store ptr %25, ptr %18, align 8, !tbaa !27
  br label %26

26:                                               ; preds = %14, %24, %21, %16
  %27 = icmp eq i32 %8, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !23
  br label %42

30:                                               ; preds = %26
  %31 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #18
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !23
  %33 = and i32 %2, 4
  %34 = icmp ne i32 %33, 0
  %35 = icmp eq ptr %31, null
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #18
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 8, !tbaa !24
  store ptr %41, ptr %32, align 8, !tbaa !23
  br label %42

42:                                               ; preds = %28, %40, %37, %30
  store i8 0, ptr %0, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !31
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !31
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !32
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @update_call_from_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %4) #18, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 703, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %4) #18
  %10 = tail call zeroext i8 @valid_gimple_call_p(ptr noundef %1) #18, !range !11
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !10
  %16 = load ptr, ptr %13, align 8, !tbaa !10
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %16, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !10
  %19 = trunc i64 %18 to i32
  %20 = add nsw i32 %19, -3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %12
  %23 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %20) #18
  store ptr %23, ptr %3, align 8, !tbaa !15
  call fastcc void @VEC_tree_heap_safe_grow(ptr noundef nonnull %3, i32 noundef %20) #18
  %24 = load ptr, ptr %3, align 8
  %25 = zext i32 %20 to i64
  br label %26

26:                                               ; preds = %22, %26
  %27 = phi i64 [ 0, %22 ], [ %33, %26 ]
  %28 = trunc i64 %27 to i32
  %29 = add nuw i64 %27, 3
  %30 = and i64 %29, 4294967295
  %31 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !10
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %24, i32 noundef %28, ptr noundef %32) #18
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, %25
  br i1 %34, label %35, label %26, !llvm.loop !33

35:                                               ; preds = %26, %12
  %36 = phi ptr [ null, %12 ], [ %24, %26 ]
  %37 = tail call ptr @gimple_build_call_vec(ptr noundef %15, ptr noundef %36) #17
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %37, ptr noundef %9) #18
  tail call void @move_ssa_defining_stmt_for_defs(ptr noundef %37, ptr noundef %4) #18
  %38 = tail call fastcc ptr @gimple_vuse(ptr noundef %4) #18
  tail call fastcc void @gimple_set_vuse(ptr noundef %37, ptr noundef %38) #18
  %39 = tail call fastcc ptr @gimple_vdef(ptr noundef %4) #18
  tail call fastcc void @gimple_set_vdef(ptr noundef %37, ptr noundef %39) #18
  %40 = tail call fastcc i32 @gimple_location(ptr noundef %4) #18
  tail call fastcc void @gimple_set_location(ptr noundef %37, i32 noundef %40) #18
  tail call void @gsi_replace(ptr noundef %0, ptr noundef %37, i8 noundef zeroext 0) #17
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  br label %70

41:                                               ; preds = %8
  %42 = tail call zeroext i8 @valid_gimple_rhs_p(ptr noundef %1) #18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %41
  %45 = icmp eq ptr %9, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %44
  %47 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %1) #17
  %48 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %9, ptr noundef %47) #17
  tail call void @move_ssa_defining_stmt_for_defs(ptr noundef %48, ptr noundef %4) #18
  %49 = tail call fastcc ptr @gimple_vuse(ptr noundef %4) #18
  tail call fastcc void @gimple_set_vuse(ptr noundef %48, ptr noundef %49) #18
  %50 = tail call fastcc ptr @gimple_vdef(ptr noundef %4) #18
  tail call fastcc void @gimple_set_vdef(ptr noundef %48, ptr noundef %50) #18
  br label %67

51:                                               ; preds = %44
  %52 = load i64, ptr %1, align 8
  %53 = and i64 %52, 65536
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = tail call ptr @gimple_build_nop() #17
  tail call void @unlink_stmt_vdef(ptr noundef %4) #17
  tail call void @release_defs(ptr noundef %4) #17
  br label %67

57:                                               ; preds = %51
  %58 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %1) #17
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !10
  %61 = tail call ptr @create_tmp_var(ptr noundef %60, ptr noundef null) #17
  %62 = tail call ptr @gimple_build_assign_stat(ptr noundef %61, ptr noundef %58) #17
  %63 = tail call zeroext i8 @add_referenced_var(ptr noundef %61) #17
  %64 = tail call fastcc ptr @make_ssa_name(ptr noundef %61, ptr noundef %62) #18
  tail call fastcc void @gimple_assign_set_lhs(ptr noundef %62, ptr noundef %64) #18
  %65 = tail call fastcc ptr @gimple_vuse(ptr noundef %4) #18
  tail call fastcc void @gimple_set_vuse(ptr noundef %62, ptr noundef %65) #18
  %66 = tail call fastcc ptr @gimple_vdef(ptr noundef %4) #18
  tail call fastcc void @gimple_set_vdef(ptr noundef %62, ptr noundef %66) #18
  tail call void @move_ssa_defining_stmt_for_defs(ptr noundef %62, ptr noundef %4) #18
  br label %67

67:                                               ; preds = %55, %57, %46
  %68 = phi ptr [ %48, %46 ], [ %62, %57 ], [ %56, %55 ]
  %69 = tail call fastcc i32 @gimple_location(ptr noundef %4) #18
  tail call fastcc void @gimple_set_location(ptr noundef %68, i32 noundef %69) #18
  tail call void @gsi_replace(ptr noundef %0, ptr noundef %68, i8 noundef zeroext 0) #17
  br label %70

70:                                               ; preds = %41, %67, %35
  %71 = phi i8 [ 1, %35 ], [ 1, %67 ], [ 0, %41 ]
  ret i8 %71
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !31
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !38
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_tree_heap_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #18
  %10 = load ptr, ptr %0, align 8, !tbaa !15, !nonnull !40, !noundef !40
  store i32 %1, ptr %10, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #18
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1407, ptr noundef nonnull @.str.1) #17
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vdef(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1416, ptr noundef nonnull @.str.1) #17
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !10
  ret i32 %3
}

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #2

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !15
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #18
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !41
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
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !31
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !15
  %4 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %3, i32 noundef %1) #18, !range !43
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %3, i32 noundef %1) #17
  store ptr %7, ptr %0, align 8, !tbaa !15
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !44
  %7 = load i32, ptr %0, align 8, !tbaa !38
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #17
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  store ptr %1, ptr %10, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !10
  ret i32 %3
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ssa_propagate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store ptr %0, ptr @ssa_prop_visit_stmt, align 8, !tbaa !15
  store ptr %1, ptr @ssa_prop_visit_phi, align 8, !tbaa !15
  tail call fastcc void @ssa_prop_init() #18
  br label %3

3:                                                ; preds = %16, %2
  %4 = tail call fastcc zeroext i8 @cfg_blocks_empty_p() #18, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @interesting_ssa_edges, align 8
  %8 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %7) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load ptr, ptr @varying_ssa_edges, align 8
  %12 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %11) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %16

14:                                               ; preds = %3
  %15 = tail call fastcc ptr @cfg_blocks_get() #18
  tail call fastcc void @simulate_block(ptr noundef %15) #18
  br label %16

16:                                               ; preds = %10, %6, %14
  tail call fastcc void @process_ssa_edge_worklist(ptr noundef nonnull @varying_ssa_edges) #18
  tail call fastcc void @process_ssa_edge_worklist(ptr noundef nonnull @interesting_ssa_edges) #18
  br label %3, !llvm.loop !45

17:                                               ; preds = %10
  tail call fastcc void @ssa_prop_fini() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ssa_prop_init() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %4 = tail call fastcc ptr @VEC_gimple_gc_alloc() #18
  store ptr %4, ptr @interesting_ssa_edges, align 8, !tbaa !15
  %5 = tail call fastcc ptr @VEC_gimple_gc_alloc() #18
  store ptr %5, ptr @varying_ssa_edges, align 8, !tbaa !15
  %6 = load ptr, ptr @cfun, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %10) #17
  store ptr %11, ptr @executable_blocks, align 8, !tbaa !15
  tail call void @sbitmap_zero(ptr noundef %11) #17
  %12 = load ptr, ptr @cfun, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !47
  %17 = tail call ptr @sbitmap_alloc(i32 noundef %16) #17
  store ptr %17, ptr @bb_in_list, align 8, !tbaa !15
  tail call void @sbitmap_zero(ptr noundef %17) #17
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %0
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @dump_immediate_uses(ptr noundef nonnull %18) #17
  br label %25

25:                                               ; preds = %24, %20, %0
  %26 = tail call fastcc ptr @VEC_basic_block_heap_alloc() #18
  store ptr %26, ptr @cfg_blocks, align 8, !tbaa !15
  tail call fastcc void @VEC_basic_block_heap_safe_grow(i32 noundef 20) #18
  %27 = load ptr, ptr @cfun, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %72, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, ptr %2, i64 8
  br label %34

34:                                               ; preds = %32, %63
  %35 = phi ptr [ %30, %32 ], [ %65, %63 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %35) #18
  %36 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !11
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34, %38
  %39 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  call fastcc void @gimple_set_plf(ptr noundef %39, i8 noundef zeroext 0) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %40 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !11
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %38, label %42, !llvm.loop !49

42:                                               ; preds = %38, %34
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %35) #17
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !11
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42, %45
  %46 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  call fastcc void @gimple_set_plf(ptr noundef %46, i8 noundef zeroext 0) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %47 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !11
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %45, label %49, !llvm.loop !50

49:                                               ; preds = %45, %42
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 1
  %51 = call fastcc ptr @ei_start_1(ptr noundef nonnull %50) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !51
  store ptr %51, ptr %33, align 8, !tbaa.struct !52
  %52 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %51, ptr noundef nonnull %1) #18, !range !11
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49, %54
  %55 = load ptr, ptr %1, align 8, !tbaa !15
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !53
  %58 = and i32 %57, -4097
  store i32 %58, ptr %56, align 8, !tbaa !53
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %59 = load i32, ptr %2, align 8
  %60 = load ptr, ptr %33, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %1) #18, !range !11
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %54, !llvm.loop !55

63:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !15
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %34, !llvm.loop !56

67:                                               ; preds = %63
  %68 = load ptr, ptr @cfun, align 8, !tbaa !15
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = load ptr, ptr %70, align 8, !tbaa !57
  br label %72

72:                                               ; preds = %67, %25
  %73 = phi ptr [ %71, %67 ], [ null, %25 ]
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 1
  %75 = call fastcc ptr @ei_start_1(ptr noundef nonnull %74) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !51
  %76 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %75, ptr %76, align 8, !tbaa.struct !52
  %77 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %75, ptr noundef nonnull %1) #18, !range !11
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %72, %79
  %80 = load ptr, ptr %1, align 8, !tbaa !15
  call fastcc void @add_control_edge(ptr noundef %80) #18
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %81 = load i32, ptr %2, align 8
  %82 = load ptr, ptr %76, align 8
  %83 = call fastcc zeroext i8 @ei_cond(i32 %81, ptr %82, ptr noundef nonnull %1) #18, !range !11
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %79, !llvm.loop !58

85:                                               ; preds = %79, %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cfg_blocks_empty_p() unnamed_addr #11 {
  %1 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !6
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !59
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cfg_blocks_get() unnamed_addr #0 {
  %1 = load ptr, ptr @cfg_blocks, align 8
  %2 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !6
  %3 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %2) #18
  %4 = tail call fastcc zeroext i8 @cfg_blocks_empty_p() #18, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 240, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %0, %6
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 241, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %7, %9
  %11 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !6
  %12 = add nsw i32 %11, 1
  %13 = load ptr, ptr @cfg_blocks, align 8
  %14 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %13) #18
  %15 = urem i32 %12, %14
  store i32 %15, ptr @cfg_blocks_head, align 4, !tbaa !6
  %16 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !6
  %17 = add i32 %16, -1
  store i32 %17, ptr @cfg_blocks_num, align 4, !tbaa !6
  %18 = load ptr, ptr @bb_in_list, align 8, !tbaa !15
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !61
  tail call fastcc void @RESET_BIT(ptr noundef %18, i32 noundef %20) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simulate_block(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %6 = load ptr, ptr @cfun, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %82, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.6, i32 noundef %21) #18
  br label %23

23:                                               ; preds = %19, %15, %12
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #17
  %24 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18, !range !11
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %26
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18
  call fastcc void @simulate_stmt(ptr noundef %27) #18
  call fastcc void @gsi_next(ptr noundef nonnull %2) #18
  %28 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18, !range !11
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %26, label %30, !llvm.loop !64

30:                                               ; preds = %26, %23
  %31 = load ptr, ptr @executable_blocks, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !61
  %34 = lshr i32 %33, 6
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds %struct.simple_bitmap_def, ptr %31, i64 0, i32 3, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !41
  %38 = and i32 %33, 63
  %39 = zext nneg i32 %38 to i64
  %40 = shl nuw i64 1, %39
  %41 = and i64 %40, %37
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call fastcc void @SET_BIT(ptr noundef nonnull %31, i32 noundef %33) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %0) #18
  %44 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !11
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43, %51
  %47 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  %48 = call fastcc i32 @gimple_plf(ptr noundef %47) #18
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  call fastcc void @gimple_set_plf(ptr noundef %47, i8 noundef zeroext 0) #18
  br label %51

51:                                               ; preds = %50, %46
  call fastcc void @simulate_stmt(ptr noundef %47) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %52 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !11
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %46, label %54, !llvm.loop !65

54:                                               ; preds = %51, %43
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %56 = call fastcc ptr @ei_start_1(ptr noundef nonnull %55) #18
  store i32 0, ptr %5, align 8, !tbaa.struct !51
  %57 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %56, ptr %57, align 8, !tbaa.struct !52
  %58 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %56, ptr noundef nonnull %4) #18, !range !11
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %54, %71
  %61 = phi i32 [ %73, %71 ], [ 0, %54 ]
  %62 = phi ptr [ %72, %71 ], [ null, %54 ]
  %63 = load ptr, ptr %4, align 8, !tbaa !15
  %64 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !53
  %66 = and i32 %65, 10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  call fastcc void @add_control_edge(ptr noundef nonnull %63) #18
  br label %71

69:                                               ; preds = %60
  %70 = add i32 %61, 1
  br label %71

71:                                               ; preds = %68, %69
  %72 = phi ptr [ %62, %68 ], [ %63, %69 ]
  %73 = phi i32 [ %61, %68 ], [ %70, %69 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #18
  %74 = load i32, ptr %5, align 8
  %75 = load ptr, ptr %57, align 8
  %76 = call fastcc zeroext i8 @ei_cond(i32 %74, ptr %75, ptr noundef nonnull %4) #18, !range !11
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %60, !llvm.loop !66

78:                                               ; preds = %71
  %79 = icmp eq i32 %73, 1
  br i1 %79, label %80, label %81

80:                                               ; preds = %78
  call fastcc void @add_control_edge(ptr noundef %72) #18
  br label %81

81:                                               ; preds = %54, %80, %78
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  br label %82

82:                                               ; preds = %30, %81, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_ssa_edge_worklist(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %43, label %5

5:                                                ; preds = %1, %39
  %6 = phi ptr [ %40, %39 ], [ %2, %1 ]
  %7 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %6) #18
  %8 = tail call fastcc i32 @gimple_plf(ptr noundef %7) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %39, label %10, !llvm.loop !67

10:                                               ; preds = %5
  tail call fastcc void @gimple_set_plf(ptr noundef %7, i8 noundef zeroext 0) #18
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr nonnull %11)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %20 = load i32, ptr @dump_flags, align 4, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %19, ptr noundef %7, i32 noundef 0, i32 noundef %20) #17
  br label %21

21:                                               ; preds = %17, %13, %10
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %7) #18, !range !31
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %38, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_bb(ptr noundef %7) #18
  %26 = load ptr, ptr @executable_blocks, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !61
  %29 = lshr i32 %28, 6
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %26, i64 0, i32 3, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !41
  %33 = and i32 %28, 63
  %34 = zext nneg i32 %33 to i64
  %35 = shl nuw i64 1, %34
  %36 = and i64 %35, %32
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %24, %21
  tail call fastcc void @simulate_stmt(ptr noundef %7) #18
  br label %39

39:                                               ; preds = %24, %38, %5
  %40 = load ptr, ptr %0, align 8, !tbaa !15
  %41 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %40) #18
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %5

43:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ssa_prop_fini() unnamed_addr #0 {
  tail call fastcc void @VEC_gimple_gc_free(ptr noundef nonnull @interesting_ssa_edges) #18
  tail call fastcc void @VEC_gimple_gc_free(ptr noundef nonnull @varying_ssa_edges) #18
  tail call fastcc void @VEC_basic_block_heap_free() #18
  store ptr null, ptr @cfg_blocks, align 8, !tbaa !15
  %1 = load ptr, ptr @bb_in_list, align 8, !tbaa !15
  %2 = load ptr, ptr %1, align 8, !tbaa !68
  tail call void @free(ptr noundef %2) #18
  tail call void @free(ptr noundef %1) #18
  %3 = load ptr, ptr @executable_blocks, align 8, !tbaa !15
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  tail call void @free(ptr noundef %4) #18
  tail call void @free(ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_gc_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 20) #17
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_immediate_uses(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #17
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfg_blocks, align 8, !tbaa !15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !70
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_basic_block_heap_reserve_exact(i32 noundef %8) #18
  %9 = load ptr, ptr @cfg_blocks, align 8, !tbaa !15, !nonnull !40, !noundef !40
  store i32 %0, ptr %9, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #6 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -2049
  %6 = select i1 %3, i32 0, i32 2048
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  store ptr %4, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !15
  ret i8 %10
}

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
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !75
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_control_edge(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = load ptr, ptr @cfun, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %44, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = or disjoint i32 %12, 4096
  store i32 %16, ptr %11, align 8, !tbaa !53
  %17 = load ptr, ptr @bb_in_list, align 8, !tbaa !15
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !61
  %20 = lshr i32 %19, 6
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !41
  %24 = and i32 %19, 63
  %25 = zext nneg i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = and i64 %26, %23
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %15
  tail call fastcc void @cfg_blocks_add(ptr noundef nonnull %3) #18
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8, !tbaa !78
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !61
  %40 = load ptr, ptr %2, align 8, !tbaa !77
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !61
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %30, ptr noundef nonnull @.str.5, i32 noundef %39, i32 noundef %42) #18
  br label %44

44:                                               ; preds = %29, %32, %36, %15, %10, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !70
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfg_blocks, align 8, !tbaa !15
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2, i32 noundef %0) #18, !range !43
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #17
  store ptr %6, ptr @cfg_blocks, align 8, !tbaa !15
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !79
  %7 = load i32, ptr %0, align 8, !tbaa !70
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !80
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !81
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
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
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
  %4 = load i32, ptr %0, align 8, !tbaa !85
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !15
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cfg_blocks_add(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @.str.1) #17
  br label %12

12:                                               ; preds = %7, %11
  %13 = load ptr, ptr @bb_in_list, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !61
  %16 = lshr i32 %15, 6
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds %struct.simple_bitmap_def, ptr %13, i64 0, i32 3, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !41
  %20 = and i32 %15, 63
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = and i64 %22, %19
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 186, ptr noundef nonnull @.str.1) #17
  br label %26

26:                                               ; preds = %12, %25
  %27 = tail call fastcc zeroext i8 @cfg_blocks_empty_p() #18, !range !11
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !6
  store i32 0, ptr @cfg_blocks_tail, align 4, !tbaa !6
  store i32 1, ptr @cfg_blocks_num, align 4, !tbaa !6
  br label %55

30:                                               ; preds = %26
  %31 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !6
  %32 = add i32 %31, 1
  store i32 %32, ptr @cfg_blocks_num, align 4, !tbaa !6
  %33 = load ptr, ptr @cfg_blocks, align 8
  %34 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %33) #18
  %35 = icmp ugt i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  store i32 %34, ptr @cfg_blocks_tail, align 4, !tbaa !6
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !6
  %37 = shl nsw i32 %34, 1
  tail call fastcc void @VEC_basic_block_heap_safe_grow(i32 noundef %37) #18
  %38 = load i32, ptr @cfg_blocks_tail, align 4
  br label %55

39:                                               ; preds = %30
  %40 = load ptr, ptr %0, align 8, !tbaa !87
  %41 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #18
  %42 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !6
  %43 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %33, i32 noundef %42) #18
  %44 = load ptr, ptr %43, align 8, !tbaa !87
  %45 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %44) #18
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load i32, ptr @cfg_blocks_tail, align 4, !tbaa !6
  %49 = add nsw i32 %48, 1
  %50 = urem i32 %49, %34
  store i32 %50, ptr @cfg_blocks_tail, align 4, !tbaa !6
  br label %55

51:                                               ; preds = %39
  %52 = icmp eq i32 %42, 0
  %53 = select i1 %52, i32 %34, i32 %42
  %54 = add nsw i32 %53, -1
  store i32 %54, ptr @cfg_blocks_head, align 4, !tbaa !6
  br label %58

55:                                               ; preds = %29, %36, %47
  %56 = phi i32 [ 0, %29 ], [ %38, %36 ], [ %50, %47 ]
  %57 = load ptr, ptr @cfg_blocks, align 8
  br label %58

58:                                               ; preds = %51, %55
  %59 = phi ptr [ %57, %55 ], [ %33, %51 ]
  %60 = phi i32 [ %56, %55 ], [ %54, %51 ]
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %59, i32 noundef %60, ptr noundef nonnull %0) #18
  %61 = load ptr, ptr @bb_in_list, align 8, !tbaa !15
  %62 = load i32, ptr %14, align 8, !tbaa !61
  tail call fastcc void @SET_BIT(ptr noundef %61, i32 noundef %62) #18
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
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
  %15 = load i64, ptr %14, align 8, !tbaa !41
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !10
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !10
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !41
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
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
  %15 = load i64, ptr %14, align 8, !tbaa !41
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !10
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !10
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !41
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simulate_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr null, ptr %2, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !15
  %6 = tail call fastcc zeroext i8 @prop_simulate_again_p(ptr noundef %0) #18, !range !11
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !31
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load ptr, ptr @ssa_prop_visit_phi, align 8, !tbaa !15
  %13 = tail call i32 %12(ptr noundef %0) #17
  %14 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #18
  store ptr %14, ptr %3, align 8, !tbaa !15
  br label %18

15:                                               ; preds = %8
  %16 = load ptr, ptr @ssa_prop_visit_stmt, align 8, !tbaa !15
  %17 = call i32 %16(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ %13, %11 ], [ %17, %15 ]
  switch i32 %19, label %49 [
    i32 2, label %20
    i32 1, label %41
  ]

20:                                               ; preds = %18
  call fastcc void @prop_set_simulate_again(ptr noundef %0) #18
  %21 = load ptr, ptr %3, align 8, !tbaa !15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call fastcc void @add_ssa_edge(ptr noundef nonnull %21, i8 noundef zeroext 1) #18
  br label %24

24:                                               ; preds = %23, %20
  %25 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  %28 = call fastcc ptr @gimple_bb(ptr noundef %0) #18
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 1
  %30 = call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #18
  store i32 0, ptr %5, align 8, !tbaa.struct !51
  %31 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %30, ptr %31, align 8, !tbaa.struct !52
  %32 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %4) #18, !range !11
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27, %34
  %35 = load ptr, ptr %4, align 8, !tbaa !15
  call fastcc void @add_control_edge(ptr noundef %35) #18
  call fastcc void @ei_next(ptr noundef nonnull %5) #18
  %36 = load i32, ptr %5, align 8
  %37 = load ptr, ptr %31, align 8
  %38 = call fastcc zeroext i8 @ei_cond(i32 %36, ptr %37, ptr noundef nonnull %4) #18, !range !11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %34, !llvm.loop !88

40:                                               ; preds = %34, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %49

41:                                               ; preds = %18
  %42 = load ptr, ptr %3, align 8, !tbaa !15
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call fastcc void @add_ssa_edge(ptr noundef nonnull %42, i8 noundef zeroext 0) #18
  br label %45

45:                                               ; preds = %44, %41
  %46 = load ptr, ptr %2, align 8, !tbaa !15
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call fastcc void @add_control_edge(ptr noundef nonnull %46) #18
  br label %49

49:                                               ; preds = %40, %24, %45, %48, %18, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @prop_simulate_again_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_visited_p(ptr noundef %0) #18, !range !11
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @prop_set_simulate_again(ptr nocapture noundef %0) unnamed_addr #6 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_ssa_edge(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #19
  %4 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %0) #18
  %5 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #18, !range !11
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0
  %9 = select i1 %8, ptr @interesting_ssa_edges, ptr @varying_ssa_edges
  br label %10

10:                                               ; preds = %7, %20
  %11 = phi ptr [ %4, %7 ], [ %21, %20 ]
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !10
  %14 = tail call fastcc zeroext i8 @prop_simulate_again_p(ptr noundef %13) #18, !range !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = tail call fastcc i32 @gimple_plf(ptr noundef %13) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call fastcc void @gimple_set_plf(ptr noundef %13, i8 noundef zeroext 1) #18
  tail call fastcc void @VEC_gimple_gc_safe_push(ptr noundef nonnull %9, ptr noundef %13) #18
  br label %20

20:                                               ; preds = %19, %16, %10
  %21 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #18
  %22 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #18, !range !11
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %10, label %24, !llvm.loop !89

24:                                               ; preds = %20, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_visited_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 9
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, -513
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !92
  store ptr %6, ptr %0, align 8, !tbaa !93
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #18, !range !11
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !93
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_gimple_gc_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !15
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !93
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  store ptr %4, ptr %0, align 8, !tbaa !93
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #18, !range !11
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #17
  store ptr %6, ptr %0, align 8, !tbaa !15
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load i32, ptr %0, align 8, !tbaa !59
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !59
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !94
  %6 = load i32, ptr %0, align 8, !tbaa !59
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8, !tbaa !59
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !59
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  ret ptr %6
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free() unnamed_addr #8 {
  %1 = load ptr, ptr @cfg_blocks, align 8, !tbaa !15
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @cfg_blocks, align 8, !tbaa !15
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_makes_single_store(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !31
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %22 [
    i8 6, label %4
    i8 8, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @gimple_get_lhs(ptr noundef %0) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 524288
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = and i64 %11, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !6
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = icmp eq i32 %17, 4
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %1, %10, %19, %14, %7, %4
  %23 = phi i8 [ 0, %4 ], [ 0, %7 ], [ 0, %10 ], [ 1, %14 ], [ %21, %19 ], [ 0, %1 ]
  ret i8 %23
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @substitute_and_fold(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %1, null
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %181

11:                                               ; preds = %2
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 45, i64 1, ptr nonnull %12)
  br label %20

20:                                               ; preds = %18, %14, %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @prop_stats, i8 0, i64 32, i1 false)
  %21 = load ptr, ptr @cfun, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %168, label %30

30:                                               ; preds = %20
  %31 = icmp eq ptr %0, null
  br label %32

32:                                               ; preds = %30, %155
  %33 = phi ptr [ %26, %30 ], [ %158, %155 ]
  %34 = phi i8 [ 0, %30 ], [ %156, %155 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  br i1 %8, label %35, label %42

35:                                               ; preds = %32
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %33) #17
  %36 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !11
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35, %38
  %39 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  call fastcc void @replace_phi_args_in(ptr noundef %39, ptr noundef nonnull %0) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %40 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !11
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %38, label %42, !llvm.loop !96

42:                                               ; preds = %38, %35, %32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %33) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !11
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %155

45:                                               ; preds = %42, %151
  %46 = phi i8 [ %152, %151 ], [ %34, %42 ]
  %47 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  %48 = call fastcc i32 @gimple_code(ptr noundef %47) #18, !range !31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !97
  call fastcc void @gsi_prev(ptr noundef nonnull %3) #18
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %47) #18
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 148
  br i1 %54, label %151, label %55, !llvm.loop !98

55:                                               ; preds = %50, %45
  %56 = call ptr @gimple_get_lhs(ptr noundef %47) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %88, label %58

58:                                               ; preds = %55
  %59 = call ptr @gimple_get_lhs(ptr noundef %47) #17
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 141
  br i1 %62, label %63, label %88

63:                                               ; preds = %58
  %64 = call ptr @gimple_get_lhs(ptr noundef %47) #17
  %65 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %64) #18
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %63
  %68 = call zeroext i8 @stmt_could_throw_p(ptr noundef %47) #17
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %67
  %71 = call zeroext i8 @gimple_has_side_effects(ptr noundef %47) #17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %75 = icmp eq ptr %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = call i64 @fwrite(ptr nonnull @.str.9, i64 19, i64 1, ptr nonnull %74)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !15
  call void @print_gimple_stmt(ptr noundef %82, ptr noundef %47, i32 noundef 0, i32 noundef 0) #17
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %84 = call i32 @fputc(i32 10, ptr %83)
  br label %85

85:                                               ; preds = %80, %76, %73
  %86 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 3), align 8, !tbaa !99
  %87 = add nsw i64 %86, 1
  store i64 %87, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 3), align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %47) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #17
  call void @release_defs(ptr noundef %47) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  br label %151

88:                                               ; preds = %70, %67, %63, %58, %55
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %93 = and i32 %92, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = call i64 @fwrite(ptr nonnull @.str.11, i64 19, i64 1, ptr nonnull %89)
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !15
  call void @print_gimple_stmt(ptr noundef %97, ptr noundef %47, i32 noundef 0, i32 noundef 2) #17
  br label %98

98:                                               ; preds = %95, %91, %88
  br i1 %9, label %99, label %105

99:                                               ; preds = %98
  %100 = call zeroext i8 %1(ptr noundef nonnull %5) #17
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 2), align 8, !tbaa !101
  %104 = add nsw i64 %103, 1
  store i64 %104, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 2), align 8, !tbaa !101
  br label %109

105:                                              ; preds = %99, %98
  br i1 %31, label %133, label %106

106:                                              ; preds = %105
  %107 = call fastcc zeroext i8 @replace_uses_in(ptr noundef %47, ptr noundef nonnull %0) #18, !range !11
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %133, label %109

109:                                              ; preds = %102, %106
  %110 = call zeroext i8 @fold_stmt(ptr noundef nonnull %5) #17
  %111 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #18
  %112 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %47, ptr noundef %111) #17
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %109
  %115 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %33) #17
  br label %116

116:                                              ; preds = %114, %109
  %117 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %111) #18, !range !11
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %116
  %120 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %111) #18, !range !102
  %121 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %120) #18, !range !31
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %111) #18
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 121
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %124) #17
  br label %129

129:                                              ; preds = %123, %128, %119, %116
  call fastcc void @update_stmt(ptr noundef %111) #18
  %130 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %111) #18, !range !11
  %131 = icmp eq i8 %130, 0
  %132 = select i1 %131, i8 1, i8 %46
  br label %133

133:                                              ; preds = %105, %129, %106
  %134 = phi i1 [ false, %129 ], [ true, %106 ], [ true, %105 ]
  %135 = phi ptr [ %111, %129 ], [ %47, %106 ], [ %47, %105 ]
  %136 = phi i8 [ %132, %129 ], [ %46, %106 ], [ %46, %105 ]
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %138 = icmp eq ptr %137, null
  br i1 %138, label %151, label %139

139:                                              ; preds = %133
  %140 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %141 = and i32 %140, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  br i1 %134, label %149, label %144

144:                                              ; preds = %143
  %145 = call i64 @fwrite(ptr nonnull @.str.12, i64 13, i64 1, ptr nonnull %137)
  %146 = load ptr, ptr @dump_file, align 8, !tbaa !15
  call void @print_gimple_stmt(ptr noundef %146, ptr noundef %135, i32 noundef 0, i32 noundef 2) #17
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %148 = call i32 @fputc(i32 10, ptr %147)
  br label %151

149:                                              ; preds = %143
  %150 = call i64 @fwrite(ptr nonnull @.str.13, i64 11, i64 1, ptr nonnull %137)
  br label %151

151:                                              ; preds = %133, %139, %149, %144, %50, %85
  %152 = phi i8 [ %46, %85 ], [ %46, %50 ], [ %136, %144 ], [ %136, %149 ], [ %136, %139 ], [ %136, %133 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %153 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !11
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %45, label %155

155:                                              ; preds = %151, %42
  %156 = phi i8 [ %34, %42 ], [ %152, %151 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %158 = load ptr, ptr %157, align 8, !tbaa !95
  %159 = load ptr, ptr @cfun, align 8, !tbaa !15
  %160 = getelementptr inbounds %struct.function, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !46
  %162 = getelementptr inbounds %struct.control_flow_graph, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !63
  %164 = icmp eq ptr %158, %163
  br i1 %164, label %165, label %32, !llvm.loop !103

165:                                              ; preds = %155
  %166 = load i64, ptr @prop_stats, align 8, !tbaa !104
  %167 = trunc i64 %166 to i32
  br label %168

168:                                              ; preds = %165, %20
  %169 = phi i32 [ 0, %20 ], [ %167, %165 ]
  %170 = phi i8 [ 0, %20 ], [ %156, %165 ]
  %171 = phi ptr [ %21, %20 ], [ %159, %165 ]
  call void @statistics_counter_event(ptr noundef nonnull %171, ptr noundef nonnull @.str.14, i32 noundef %169) #17
  %172 = load ptr, ptr @cfun, align 8, !tbaa !15
  %173 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 1), align 8, !tbaa !105
  %174 = trunc i64 %173 to i32
  call void @statistics_counter_event(ptr noundef %172, ptr noundef nonnull @.str.15, i32 noundef %174) #17
  %175 = load ptr, ptr @cfun, align 8, !tbaa !15
  %176 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 2), align 8, !tbaa !101
  %177 = trunc i64 %176 to i32
  call void @statistics_counter_event(ptr noundef %175, ptr noundef nonnull @.str.16, i32 noundef %177) #17
  %178 = load ptr, ptr @cfun, align 8, !tbaa !15
  %179 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 3), align 8, !tbaa !99
  %180 = trunc i64 %179 to i32
  call void @statistics_counter_event(ptr noundef %178, ptr noundef nonnull @.str.17, i32 noundef %180) #17
  br label %181

181:                                              ; preds = %2, %168
  %182 = phi i8 [ %170, %168 ], [ 0, %2 ]
  ret i8 %182
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_phi_args_in(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !15
  tail call void @print_gimple_stmt(ptr noundef %11, ptr noundef %0, i32 noundef 0, i32 noundef 2) #17
  br label %12

12:                                               ; preds = %9, %5, %2
  %13 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %62, label %15

15:                                               ; preds = %12, %54
  %16 = phi i64 [ %56, %54 ], [ 0, %12 ]
  %17 = phi i8 [ %55, %54 ], [ 0, %12 ]
  %18 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %16) #18
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %54

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !10
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.prop_value_d, ptr %1, i64 %25, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !106
  %28 = icmp eq ptr %27, null
  %29 = icmp eq ptr %27, %18
  %30 = or i1 %28, %29
  br i1 %30, label %54, label %31

31:                                               ; preds = %22
  %32 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %18, ptr noundef nonnull %27) #17
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %31
  %35 = load i64, ptr %27, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  %38 = select i1 %37, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 1), ptr @prop_stats
  %39 = load i64, ptr %38, align 8, !tbaa !41
  %40 = add nsw i64 %39, 1
  store i64 %40, ptr %38, align 8, !tbaa !41
  %41 = trunc i64 %16 to i32
  %42 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %41) #18
  tail call void @propagate_value(ptr noundef nonnull %42, ptr noundef nonnull %27) #17
  %43 = load i64, ptr %27, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %16) #18
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !53
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = or i64 %43, 4194304
  store i64 %53, ptr %27, align 8
  br label %54

54:                                               ; preds = %22, %31, %52, %46, %34, %15
  %55 = phi i8 [ %17, %15 ], [ 1, %52 ], [ 1, %46 ], [ 1, %34 ], [ %17, %31 ], [ %17, %22 ]
  %56 = add nuw nsw i64 %16, 1
  %57 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #18
  %58 = zext i32 %57 to i64
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %15, label %60, !llvm.loop !108

60:                                               ; preds = %54
  %61 = icmp eq i8 %55, 0
  br label %62

62:                                               ; preds = %60, %12
  %63 = phi i1 [ true, %12 ], [ %61, %60 ]
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  br i1 %63, label %71, label %73

71:                                               ; preds = %70
  %72 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 20, i64 1, ptr nonnull %64)
  br label %78

73:                                               ; preds = %70
  %74 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 13, i64 1, ptr nonnull %64)
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !15
  tail call void @print_gimple_stmt(ptr noundef %75, ptr noundef %0, i32 noundef 0, i32 noundef 2) #17
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !15
  %77 = tail call i32 @fputc(i32 10, ptr %76)
  br label %78

78:                                               ; preds = %71, %73, %66, %62
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  store ptr %4, ptr %0, align 8, !tbaa !34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #17
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @replace_uses_in(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  %4 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %0) #18
  %5 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %2, %35
  %8 = phi i8 [ %36, %35 ], [ 0, %2 ]
  %9 = phi ptr [ %37, %35 ], [ %4, %2 ]
  %10 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %9) #18
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !10
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.prop_value_d, ptr %1, i64 %13, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  %16 = icmp eq ptr %15, %10
  %17 = icmp eq ptr %15, null
  %18 = or i1 %16, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %7
  %20 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !31
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @may_propagate_copy_into_asm(ptr noundef nonnull %10) #17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22, %19
  %26 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %10, ptr noundef nonnull %15) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load i64, ptr %15, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  %32 = select i1 %31, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 1), ptr @prop_stats
  %33 = load i64, ptr %32, align 8, !tbaa !41
  %34 = add nsw i64 %33, 1
  store i64 %34, ptr %32, align 8, !tbaa !41
  tail call void @propagate_value(ptr noundef %9, ptr noundef nonnull %15) #17
  br label %35

35:                                               ; preds = %25, %22, %7, %28
  %36 = phi i8 [ 1, %28 ], [ %8, %7 ], [ %8, %22 ], [ %8, %25 ]
  %37 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #18
  %38 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %7, label %40, !llvm.loop !110

40:                                               ; preds = %35, %2
  %41 = phi i8 [ 0, %2 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  ret i8 %41
}

; Function Attrs: optsize
declare zeroext i8 @fold_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !31
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #9 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #18, !range !102
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #18, !range !31
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

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !11
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !31
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !10
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #18
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #18
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @propagate_value(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #18
  ret ptr %3
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
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !10
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 1) #18
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !20
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #18
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy_into_asm(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !23
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !24
  store ptr %7, ptr %2, align 8, !tbaa !23
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !112
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !113
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !112
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #18
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !22
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !31
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

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_VEC_gimple_gc(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_VEC_gimple_gc(ptr noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{i8 0, i8 2}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !8, i64 0}
!17 = distinct !{!17, !13}
!18 = !{!19, !16, i64 24}
!19 = !{!"function", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !16, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!20 = !{!21, !7, i64 4}
!21 = !{!"ssa_operand_iterator_d", !8, i64 0, !7, i64 4, !16, i64 8, !16, i64 16, !7, i64 24, !7, i64 28, !16, i64 32}
!22 = !{!21, !8, i64 0}
!23 = !{!21, !16, i64 16}
!24 = !{!25, !16, i64 0}
!25 = !{!"use_optype_d", !16, i64 0, !26, i64 8}
!26 = !{!"ssa_use_operand_d", !16, i64 0, !16, i64 8, !8, i64 16, !16, i64 24}
!27 = !{!21, !16, i64 8}
!28 = !{!29, !16, i64 8}
!29 = !{!"def_optype_d", !16, i64 0, !16, i64 8}
!30 = !{!29, !16, i64 0}
!31 = !{i32 0, i32 256}
!32 = !{!26, !16, i64 24}
!33 = distinct !{!33, !13}
!34 = !{!35, !16, i64 0}
!35 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16}
!36 = !{!37, !16, i64 0}
!37 = !{!"gimple_seq_node_d", !16, i64 0, !16, i64 8, !16, i64 16}
!38 = !{!39, !7, i64 0}
!39 = !{!"VEC_tree_base", !7, i64 0, !7, i64 4, !8, i64 8}
!40 = !{}
!41 = !{!42, !42, i64 0}
!42 = !{!"long", !8, i64 0}
!43 = !{i32 0, i32 2}
!44 = !{!39, !7, i64 4}
!45 = distinct !{!45, !13}
!46 = !{!19, !16, i64 8}
!47 = !{!48, !7, i64 32}
!48 = !{!"control_flow_graph", !16, i64 0, !16, i64 8, !16, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !16, i64 40, !7, i64 48, !8, i64 52, !8, i64 60, !7, i64 68, !7, i64 72}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = !{i64 0, i64 4, !6, i64 8, i64 8, !15}
!52 = !{i64 0, i64 8, !15}
!53 = !{!54, !7, i64 48}
!54 = !{!"edge_def", !16, i64 0, !16, i64 8, !8, i64 16, !16, i64 24, !16, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !42, i64 56}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = !{!48, !16, i64 0}
!58 = distinct !{!58, !13}
!59 = !{!60, !7, i64 0}
!60 = !{!"VEC_gimple_base", !7, i64 0, !7, i64 4, !8, i64 8}
!61 = !{!62, !7, i64 80}
!62 = !{!"basic_block_def", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !8, i64 32, !16, i64 48, !16, i64 56, !8, i64 64, !42, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!63 = !{!48, !16, i64 8}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = !{!69, !16, i64 0}
!69 = !{!"simple_bitmap_def", !16, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!70 = !{!71, !7, i64 0}
!71 = !{!"VEC_basic_block_base", !7, i64 0, !7, i64 4, !8, i64 8}
!72 = !{!35, !16, i64 8}
!73 = !{!35, !16, i64 16}
!74 = !{!37, !16, i64 16}
!75 = !{!76, !7, i64 0}
!76 = !{!"", !7, i64 0, !16, i64 8}
!77 = !{!54, !16, i64 8}
!78 = !{!54, !16, i64 0}
!79 = !{!71, !7, i64 4}
!80 = !{!62, !7, i64 96}
!81 = !{!82, !16, i64 0}
!82 = !{!"gimple_bb_info", !16, i64 0, !16, i64 8}
!83 = !{!84, !16, i64 0}
!84 = !{!"gimple_seq_d", !16, i64 0, !16, i64 8, !16, i64 16}
!85 = !{!86, !7, i64 0}
!86 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!87 = !{!62, !16, i64 0}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13}
!90 = !{!91, !16, i64 8}
!91 = !{!"immediate_use_iterator_d", !16, i64 0, !16, i64 8, !26, i64 16, !16, i64 48}
!92 = !{!26, !16, i64 8}
!93 = !{!91, !16, i64 0}
!94 = !{!60, !7, i64 4}
!95 = !{!62, !16, i64 56}
!96 = distinct !{!96, !13}
!97 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15}
!98 = distinct !{!98, !13}
!99 = !{!100, !42, i64 24}
!100 = !{!"prop_stats_d", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!101 = !{!100, !42, i64 16}
!102 = !{i32 0, i32 65536}
!103 = distinct !{!103, !13}
!104 = !{!100, !42, i64 0}
!105 = !{!100, !42, i64 8}
!106 = !{!107, !16, i64 8}
!107 = !{!"prop_value_d", !7, i64 0, !16, i64 8}
!108 = distinct !{!108, !13}
!109 = !{!37, !16, i64 8}
!110 = distinct !{!110, !13}
!111 = !{!84, !16, i64 8}
!112 = !{!21, !7, i64 24}
!113 = !{!21, !7, i64 28}
!114 = !{!21, !16, i64 32}
