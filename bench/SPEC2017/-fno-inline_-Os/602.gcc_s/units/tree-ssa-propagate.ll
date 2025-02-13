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
define dso_local noundef zeroext i8 @valid_gimple_rhs_p(ptr noundef %0) local_unnamed_addr #0 !prof !287 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !288
  switch i32 %5, label %73 [
    i32 3, label %6
    i32 1, label %72
    i32 7, label %9
    i32 5, label %9
    i32 6, label %19
    i32 10, label %24
    i32 0, label %70
  ], !prof !292

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @is_gimple_variable(ptr noundef nonnull %0) #17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %73, label %72

9:                                                ; preds = %1, %1
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !293
  %12 = tail call zeroext i8 @is_gimple_val(ptr noundef %11) #17
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %73, label %14, !prof !294

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !293
  %17 = tail call zeroext i8 @is_gimple_val(ptr noundef %16) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %73, label %72, !prof !295

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !293
  %22 = tail call zeroext i8 @is_gimple_val(ptr noundef %21) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %73, label %72, !prof !296

24:                                               ; preds = %1
  %25 = trunc i64 %2 to i16
  switch i16 %25, label %73 [
    i16 121, label %26
    i16 96, label %55
    i16 93, label %60
    i16 95, label %60
    i16 94, label %60
  ], !prof !297

26:                                               ; preds = %24
  %27 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %73, !prof !298

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !293
  %32 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %31) #18, !range !299
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %51, label %34, !prof !300

34:                                               ; preds = %29, %46
  %35 = phi ptr [ %48, %46 ], [ %31, %29 ]
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = and i32 %37, 65535
  %39 = add nsw i32 %38, -45
  %40 = icmp ult i32 %39, 2
  br i1 %40, label %41, label %46, !prof !301

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !293
  %44 = tail call zeroext i8 @is_gimple_val(ptr noundef %43) #17
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %73, label %46, !prof !302

46:                                               ; preds = %34, %41
  %47 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !293
  %49 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %48) #18, !range !299
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %34, !prof !303, !llvm.loop !304

51:                                               ; preds = %46, %29
  %52 = phi ptr [ %31, %29 ], [ %48, %46 ]
  %53 = tail call zeroext i8 @is_gimple_id(ptr noundef %52) #17
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %73, label %72

55:                                               ; preds = %24
  %56 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !293
  %58 = tail call zeroext i8 @is_gimple_val(ptr noundef %57) #17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %73, label %72

60:                                               ; preds = %24, %24, %24
  %61 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !293
  %63 = tail call zeroext i8 @is_gimple_val(ptr noundef %62) #17
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %73, label %65, !prof !306

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !293
  %68 = tail call zeroext i8 @is_gimple_val(ptr noundef %67) #17
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %73, label %72, !prof !306

70:                                               ; preds = %1
  %71 = icmp eq i64 %3, 141
  br i1 %71, label %72, label %73, !prof !307

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
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !308 !PGOFuncName !309 {
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
  ], !prof !310

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
define dso_local noundef zeroext i8 @valid_gimple_call_p(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !311 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 59
  br i1 %4, label %5, label %26, !prof !312

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !293
  %8 = getelementptr inbounds %struct.tree_int_cst, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !293
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %10, -3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13, !prof !313

13:                                               ; preds = %5
  %14 = zext i32 %11 to i64
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %19, 1
  %17 = icmp eq i64 %16, %14
  br i1 %17, label %26, label %18, !prof !314, !llvm.loop !315

18:                                               ; preds = %13, %15
  %19 = phi i64 [ 0, %13 ], [ %16, %15 ]
  %20 = add nuw i64 %19, 3
  %21 = and i64 %20, 4294967295
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !293
  %24 = tail call zeroext i8 @is_gimple_operand(ptr noundef %23) #17
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %15, !prof !316

26:                                               ; preds = %18, %15, %5, %1
  %27 = phi i8 [ 0, %1 ], [ 1, %5 ], [ 0, %18 ], [ 1, %15 ]
  ret i8 %27
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_operand(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @move_ssa_defining_stmt_for_defs(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !317 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  %4 = load ptr, ptr @cfun, align 8, !tbaa !318
  %5 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %4) #18, !range !299
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %22, label %7, !prof !320

7:                                                ; preds = %2
  %8 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %1) #18
  %9 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %22, !prof !321

11:                                               ; preds = %7, %18
  %12 = phi ptr [ %19, %18 ], [ %8, %7 ]
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %18, !prof !322

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 2
  store ptr %0, ptr %17, align 8, !tbaa !293
  br label %18

18:                                               ; preds = %11, %16
  %19 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #18
  %20 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %11, label %22, !prof !323, !llvm.loop !324

22:                                               ; preds = %18, %7, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #4 !prof !317 !PGOFuncName !325 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !320

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !326
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !320

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
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !317 !PGOFuncName !328 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #18
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !329
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !331 !PGOFuncName !332 {
  %2 = load i8, ptr %0, align 8, !tbaa !333
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #5 !prof !334 !PGOFuncName !335 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !336
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !337

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #18
  %8 = load ptr, ptr %3, align 8, !tbaa !338
  store ptr %8, ptr %2, align 8, !tbaa !336
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !341
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !342

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !343
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #18
  %17 = load ptr, ptr %11, align 8, !tbaa !345
  store ptr %17, ptr %10, align 8, !tbaa !341
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !333
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !346 !PGOFuncName !347 {
  %4 = and i32 %2, 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9, !prof !348

6:                                                ; preds = %3
  %7 = and i32 %2, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !prof !320

9:                                                ; preds = %6, %3
  %10 = and i32 %2, 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !349

12:                                               ; preds = %9
  %13 = and i32 %2, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 747, ptr noundef nonnull @.str.1) #17
  br label %16

16:                                               ; preds = %9, %12, %15
  %17 = and i32 %2, 10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21, !prof !350

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %20, align 8, !tbaa !341
  br label %31

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #18
  %23 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !341
  %24 = icmp eq ptr %22, null
  %25 = select i1 %5, i1 true, i1 %24
  br i1 %25, label %31, label %26, !prof !351

26:                                               ; preds = %21
  %27 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #18
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %22, align 8, !tbaa !345
  store ptr %30, ptr %23, align 8, !tbaa !341
  br label %31

31:                                               ; preds = %19, %29, %26, %21
  %32 = and i32 %2, 5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36, !prof !348

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %35, align 8, !tbaa !336
  br label %48

36:                                               ; preds = %31
  %37 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #18
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %37, ptr %38, align 8, !tbaa !336
  %39 = and i32 %2, 4
  %40 = icmp ne i32 %39, 0
  %41 = icmp eq ptr %37, null
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %48, label %43, !prof !352

43:                                               ; preds = %36
  %44 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !353

46:                                               ; preds = %43
  %47 = load ptr, ptr %37, align 8, !tbaa !338
  store ptr %47, ptr %38, align 8, !tbaa !336
  br label %48

48:                                               ; preds = %34, %46, %43, %36
  store i8 0, ptr %0, align 8, !tbaa !333
  %49 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !317 !PGOFuncName !354 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !299
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !320

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !355 !PGOFuncName !356 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !299
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !357

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !358 !PGOFuncName !359 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !299
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !360

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !361 !PGOFuncName !362 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !299
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !363

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !364 !PGOFuncName !365 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !366
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !367 !PGOFuncName !368 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !369 !PGOFuncName !370 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !366
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !371 !PGOFuncName !372 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !373
  %4 = load ptr, ptr %3, align 8, !tbaa !318
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !374 !PGOFuncName !375 {
  %2 = load ptr, ptr %0, align 8, !tbaa !318
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @update_call_from_tree(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !311 {
  %3 = alloca ptr, align 8
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %4) #18, !range !299
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !376

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 703, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %4) #18
  %10 = tail call zeroext i8 @valid_gimple_call_p(ptr noundef %1) #18, !range !299
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %41, label %12, !prof !377

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !293
  %16 = load ptr, ptr %13, align 8, !tbaa !293
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %16, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !293
  %19 = trunc i64 %18 to i32
  %20 = add nsw i32 %19, -3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !318
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %35, label %22, !prof !378

22:                                               ; preds = %12
  %23 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %20) #18
  store ptr %23, ptr %3, align 8, !tbaa !318
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
  %32 = load ptr, ptr %31, align 8, !tbaa !293
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %24, i32 noundef %28, ptr noundef %32) #18
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, %25
  br i1 %34, label %35, label %26, !prof !379, !llvm.loop !380

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
  br i1 %43, label %70, label %44, !prof !381

44:                                               ; preds = %41
  %45 = icmp eq ptr %9, null
  br i1 %45, label %51, label %46, !prof !382

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
  br i1 %54, label %55, label %57, !prof !383

55:                                               ; preds = %51
  %56 = tail call ptr @gimple_build_nop() #17
  tail call void @unlink_stmt_vdef(ptr noundef %4) #17
  tail call void @release_defs(ptr noundef %4) #17
  br label %67

57:                                               ; preds = %51
  %58 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %1) #17
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !293
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
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !384 !PGOFuncName !385 {
  %2 = load ptr, ptr %0, align 8, !tbaa !386
  %3 = load ptr, ptr %2, align 8, !tbaa !388
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !311 !PGOFuncName !390 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !366
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !311 !PGOFuncName !391 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !392 !PGOFuncName !393 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !392 !PGOFuncName !394 {
  %3 = load ptr, ptr %0, align 8, !tbaa !318
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !378

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !395
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_tree_heap_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #18
  %10 = load ptr, ptr %0, align 8, !tbaa !318, !nonnull !397, !noundef !397
  store i32 %1, ptr %10, align 8, !tbaa !395
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !398 !PGOFuncName !399 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !318
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !392 !PGOFuncName !400 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #18
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !401

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !293
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !402 !PGOFuncName !403 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !299
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !404

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1407, ptr noundef nonnull @.str.1) #17
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !293
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_vdef(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !402 !PGOFuncName !405 {
  %3 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !299
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !404

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1416, ptr noundef nonnull @.str.1) #17
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !293
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #7 !prof !406 !PGOFuncName !407 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !293
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !406 !PGOFuncName !408 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !293
  ret i32 %3
}

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !392 !PGOFuncName !409 {
  %2 = load ptr, ptr %0, align 8, !tbaa !318
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !378

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !318
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
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !410 !PGOFuncName !411 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !318
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #17
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !410 !PGOFuncName !412 {
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
  store ptr %0, ptr %9, align 8, !tbaa !293
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !413 !PGOFuncName !414 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !299
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !415

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !318
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !416 !PGOFuncName !417 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !418
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !420

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !416 !PGOFuncName !421 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !366
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 !prof !416 !PGOFuncName !422 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !288
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !392 !PGOFuncName !423 {
  %3 = load ptr, ptr %0, align 8, !tbaa !318
  %4 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %3, i32 noundef %1) #18, !range !424
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !378

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %3, i32 noundef %1) #17
  store ptr %7, ptr %0, align 8, !tbaa !318
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !392 !PGOFuncName !425 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !378

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !426
  %7 = load i32, ptr %0, align 8, !tbaa !395
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
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !392 !PGOFuncName !427 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !299
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5, !prof !378

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #18
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !378

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #17
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  store ptr %1, ptr %10, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !392 !PGOFuncName !428 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !293
  ret i32 %3
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ssa_propagate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !429 {
  store ptr %0, ptr @ssa_prop_visit_stmt, align 8, !tbaa !318
  store ptr %1, ptr @ssa_prop_visit_phi, align 8, !tbaa !318
  tail call fastcc void @ssa_prop_init() #18
  br label %3

3:                                                ; preds = %16, %2
  %4 = tail call fastcc zeroext i8 @cfg_blocks_empty_p() #18, !range !299
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6, !prof !430

6:                                                ; preds = %3
  %7 = load ptr, ptr @interesting_ssa_edges, align 8
  %8 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %7) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16, !prof !431

10:                                               ; preds = %6
  %11 = load ptr, ptr @varying_ssa_edges, align 8
  %12 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %11) #18
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %16, !prof !432

14:                                               ; preds = %3
  %15 = tail call fastcc ptr @cfg_blocks_get() #18
  tail call fastcc void @simulate_block(ptr noundef %15) #18
  br label %16

16:                                               ; preds = %10, %6, %14
  tail call fastcc void @process_ssa_edge_worklist(ptr noundef nonnull @varying_ssa_edges) #18
  tail call fastcc void @process_ssa_edge_worklist(ptr noundef nonnull @interesting_ssa_edges) #18
  br label %3, !llvm.loop !433

17:                                               ; preds = %10
  tail call fastcc void @ssa_prop_fini() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ssa_prop_init() unnamed_addr #0 !prof !429 !PGOFuncName !434 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %4 = tail call fastcc ptr @VEC_gimple_gc_alloc() #18
  store ptr %4, ptr @interesting_ssa_edges, align 8, !tbaa !318
  %5 = tail call fastcc ptr @VEC_gimple_gc_alloc() #18
  store ptr %5, ptr @varying_ssa_edges, align 8, !tbaa !318
  %6 = load ptr, ptr @cfun, align 8, !tbaa !318
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !435
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !436
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %10) #17
  store ptr %11, ptr @executable_blocks, align 8, !tbaa !318
  tail call void @sbitmap_zero(ptr noundef %11) #17
  %12 = load ptr, ptr @cfun, align 8, !tbaa !318
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !435
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !436
  %17 = tail call ptr @sbitmap_alloc(i32 noundef %16) #17
  store ptr %17, ptr @bb_in_list, align 8, !tbaa !318
  tail call void @sbitmap_zero(ptr noundef %17) #17
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20, !prof !438

20:                                               ; preds = %0
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !288
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @dump_immediate_uses(ptr noundef nonnull %18) #17
  br label %25

25:                                               ; preds = %24, %20, %0
  %26 = tail call fastcc ptr @VEC_basic_block_heap_alloc() #18
  store ptr %26, ptr @cfg_blocks, align 8, !tbaa !318
  tail call fastcc void @VEC_basic_block_heap_safe_grow(i32 noundef 20) #18
  %27 = load ptr, ptr @cfun, align 8, !tbaa !318
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !435
  %30 = load ptr, ptr %29, align 8, !tbaa !318
  %31 = icmp eq ptr %30, null
  br i1 %31, label %72, label %32, !prof !439

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, ptr %2, i64 8
  br label %34

34:                                               ; preds = %32, %63
  %35 = phi ptr [ %30, %32 ], [ %65, %63 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %35) #18
  %36 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !299
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42, !prof !440

38:                                               ; preds = %34, %38
  %39 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  call fastcc void @gimple_set_plf(ptr noundef %39, i8 noundef zeroext 0) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %40 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !299
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %38, label %42, !prof !441, !llvm.loop !442

42:                                               ; preds = %38, %34
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %35) #17
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !299
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %49, !prof !443

45:                                               ; preds = %42, %45
  %46 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  call fastcc void @gimple_set_plf(ptr noundef %46, i8 noundef zeroext 0) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %47 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !299
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %45, label %49, !prof !444, !llvm.loop !445

49:                                               ; preds = %45, %42
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 1
  %51 = call fastcc ptr @ei_start_1(ptr noundef nonnull %50) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !446
  store ptr %51, ptr %33, align 8, !tbaa.struct !447
  %52 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %51, ptr noundef nonnull %1) #18, !range !299
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %54, !prof !448

54:                                               ; preds = %49, %54
  %55 = load ptr, ptr %1, align 8, !tbaa !318
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !449
  %58 = and i32 %57, -4097
  store i32 %58, ptr %56, align 8, !tbaa !449
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %59 = load i32, ptr %2, align 8
  %60 = load ptr, ptr %33, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %1) #18, !range !299
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %54, !prof !451, !llvm.loop !452

63:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !318
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %34, !prof !453, !llvm.loop !454

67:                                               ; preds = %63
  %68 = load ptr, ptr @cfun, align 8, !tbaa !318
  %69 = getelementptr inbounds %struct.function, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !435
  %71 = load ptr, ptr %70, align 8, !tbaa !455
  br label %72

72:                                               ; preds = %67, %25
  %73 = phi ptr [ %71, %67 ], [ null, %25 ]
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 1
  %75 = call fastcc ptr @ei_start_1(ptr noundef nonnull %74) #18
  store i32 0, ptr %2, align 8, !tbaa.struct !446
  %76 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %75, ptr %76, align 8, !tbaa.struct !447
  %77 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %75, ptr noundef nonnull %1) #18, !range !299
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %85, label %79, !prof !439

79:                                               ; preds = %72, %79
  %80 = load ptr, ptr %1, align 8, !tbaa !318
  call fastcc void @add_control_edge(ptr noundef %80) #18
  call fastcc void @ei_next(ptr noundef nonnull %2) #18
  %81 = load i32, ptr %2, align 8
  %82 = load ptr, ptr %76, align 8
  %83 = call fastcc zeroext i8 @ei_cond(i32 %81, ptr %82, ptr noundef nonnull %1) #18, !range !299
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %79, !prof !456, !llvm.loop !457

85:                                               ; preds = %79, %72
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cfg_blocks_empty_p() unnamed_addr #11 !prof !458 !PGOFuncName !459 {
  %1 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !288
  %2 = icmp eq i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !460 !PGOFuncName !461 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !462

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !463
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @cfg_blocks_get() unnamed_addr #0 !prof !465 !PGOFuncName !466 {
  %1 = load ptr, ptr @cfg_blocks, align 8
  %2 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !288
  %3 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %1, i32 noundef %2) #18
  %4 = tail call fastcc zeroext i8 @cfg_blocks_empty_p() #18, !range !299
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !467

6:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 240, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %0, %6
  %8 = icmp eq ptr %3, null
  br i1 %8, label %9, label %10, !prof !468

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 241, ptr noundef nonnull @.str.1) #17
  br label %10

10:                                               ; preds = %7, %9
  %11 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !288
  %12 = add nsw i32 %11, 1
  %13 = load ptr, ptr @cfg_blocks, align 8
  %14 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %13) #18
  %15 = urem i32 %12, %14
  store i32 %15, ptr @cfg_blocks_head, align 4, !tbaa !288
  %16 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !288
  %17 = add i32 %16, -1
  store i32 %17, ptr @cfg_blocks_num, align 4, !tbaa !288
  %18 = load ptr, ptr @bb_in_list, align 8, !tbaa !318
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !469
  tail call fastcc void @RESET_BIT(ptr noundef %18, i32 noundef %20) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simulate_block(ptr noundef %0) unnamed_addr #0 !prof !465 !PGOFuncName !471 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  %6 = load ptr, ptr @cfun, align 8, !tbaa !318
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !435
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !472
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %82, label %12, !prof !468

12:                                               ; preds = %1
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15, !prof !467

15:                                               ; preds = %12
  %16 = load i32, ptr @dump_flags, align 4, !tbaa !288
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !469
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %13, ptr noundef nonnull @.str.6, i32 noundef %21) #18
  br label %23

23:                                               ; preds = %19, %15, %12
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #17
  %24 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18, !range !299
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30, !prof !473

26:                                               ; preds = %23, %26
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18
  call fastcc void @simulate_stmt(ptr noundef %27) #18
  call fastcc void @gsi_next(ptr noundef nonnull %2) #18
  %28 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #18, !range !299
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %26, label %30, !prof !474, !llvm.loop !475

30:                                               ; preds = %26, %23
  %31 = load ptr, ptr @executable_blocks, align 8, !tbaa !318
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !469
  %34 = lshr i32 %33, 6
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds %struct.simple_bitmap_def, ptr %31, i64 0, i32 3, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !418
  %38 = and i32 %33, 63
  %39 = zext nneg i32 %38 to i64
  %40 = shl nuw i64 1, %39
  %41 = and i64 %40, %37
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %82, !prof !476

43:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call fastcc void @SET_BIT(ptr noundef nonnull %31, i32 noundef %33) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %0) #18
  %44 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !299
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %54, !prof !477

46:                                               ; preds = %43, %51
  %47 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  %48 = call fastcc i32 @gimple_plf(ptr noundef %47) #18
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !478

50:                                               ; preds = %46
  call fastcc void @gimple_set_plf(ptr noundef %47, i8 noundef zeroext 0) #18
  br label %51

51:                                               ; preds = %50, %46
  call fastcc void @simulate_stmt(ptr noundef %47) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %52 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !299
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %46, label %54, !prof !479, !llvm.loop !480

54:                                               ; preds = %51, %43
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %56 = call fastcc ptr @ei_start_1(ptr noundef nonnull %55) #18
  store i32 0, ptr %5, align 8, !tbaa.struct !446
  %57 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %56, ptr %57, align 8, !tbaa.struct !447
  %58 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %56, ptr noundef nonnull %4) #18, !range !299
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %81, label %60, !prof !481

60:                                               ; preds = %54, %71
  %61 = phi i32 [ %73, %71 ], [ 0, %54 ]
  %62 = phi ptr [ %72, %71 ], [ null, %54 ]
  %63 = load ptr, ptr %4, align 8, !tbaa !318
  %64 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !449
  %66 = and i32 %65, 10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68, !prof !482

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
  %76 = call fastcc zeroext i8 @ei_cond(i32 %74, ptr %75, ptr noundef nonnull %4) #18, !range !299
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %60, !prof !483, !llvm.loop !484

78:                                               ; preds = %71
  %79 = icmp eq i32 %73, 1
  br i1 %79, label %80, label %81, !prof !485

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
define internal fastcc void @process_ssa_edge_worklist(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !486 !PGOFuncName !487 {
  %2 = load ptr, ptr %0, align 8, !tbaa !318
  %3 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %43, label %5, !prof !488

5:                                                ; preds = %1, %39
  %6 = phi ptr [ %40, %39 ], [ %2, %1 ]
  %7 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %6) #18
  %8 = tail call fastcc i32 @gimple_plf(ptr noundef %7) #18
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %39, label %10, !prof !489, !llvm.loop !490

10:                                               ; preds = %5
  tail call fastcc void @gimple_set_plf(ptr noundef %7, i8 noundef zeroext 0) #18
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13, !prof !491

13:                                               ; preds = %10
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !288
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 40, i64 1, ptr nonnull %11)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %20 = load i32, ptr @dump_flags, align 4, !tbaa !288
  tail call void @print_gimple_stmt(ptr noundef %19, ptr noundef %7, i32 noundef 0, i32 noundef %20) #17
  br label %21

21:                                               ; preds = %17, %13, %10
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %7) #18, !range !366
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %38, label %24, !prof !492

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_bb(ptr noundef %7) #18
  %26 = load ptr, ptr @executable_blocks, align 8, !tbaa !318
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !469
  %29 = lshr i32 %28, 6
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.simple_bitmap_def, ptr %26, i64 0, i32 3, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !418
  %33 = and i32 %28, 63
  %34 = zext nneg i32 %33 to i64
  %35 = shl nuw i64 1, %34
  %36 = and i64 %35, %32
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %39, label %38, !prof !493

38:                                               ; preds = %24, %21
  tail call fastcc void @simulate_stmt(ptr noundef %7) #18
  br label %39

39:                                               ; preds = %24, %38, %5
  %40 = load ptr, ptr %0, align 8, !tbaa !318
  %41 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %40) #18
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %5, !prof !494

43:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ssa_prop_fini() unnamed_addr #0 !prof !429 !PGOFuncName !495 {
  tail call fastcc void @VEC_gimple_gc_free(ptr noundef nonnull @interesting_ssa_edges) #18
  tail call fastcc void @VEC_gimple_gc_free(ptr noundef nonnull @varying_ssa_edges) #18
  tail call fastcc void @VEC_basic_block_heap_free() #18
  store ptr null, ptr @cfg_blocks, align 8, !tbaa !318
  %1 = load ptr, ptr @bb_in_list, align 8, !tbaa !318
  %2 = load ptr, ptr %1, align 8, !tbaa !496
  tail call void @free(ptr noundef %2) #18
  tail call void @free(ptr noundef %1) #18
  %3 = load ptr, ptr @executable_blocks, align 8, !tbaa !318
  %4 = load ptr, ptr %3, align 8, !tbaa !496
  tail call void @free(ptr noundef %4) #18
  tail call void @free(ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_gc_alloc() unnamed_addr #0 !prof !498 !PGOFuncName !499 {
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
define internal fastcc ptr @VEC_basic_block_heap_alloc() unnamed_addr #0 !prof !429 !PGOFuncName !500 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 20) #17
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_grow(i32 noundef %0) unnamed_addr #0 !prof !501 !PGOFuncName !502 {
  %2 = load ptr, ptr @cfg_blocks, align 8, !tbaa !318
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !503

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !504
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_basic_block_heap_reserve_exact(i32 noundef %8) #18
  %9 = load ptr, ptr @cfg_blocks, align 8, !tbaa !318, !nonnull !397, !noundef !397
  store i32 %0, ptr %9, align 8, !tbaa !504
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !506 !PGOFuncName !507 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !386
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !508
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !509
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !510 !PGOFuncName !511 {
  %2 = load ptr, ptr %0, align 8, !tbaa !386
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #6 !prof !512 !PGOFuncName !513 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -2049
  %6 = select i1 %3, i32 0, i32 2048, !prof !514
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !515 !PGOFuncName !516 {
  %2 = load ptr, ptr %0, align 8, !tbaa !386
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !517
  store ptr %4, ptr %0, align 8, !tbaa !386
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #9 !prof !518 !PGOFuncName !519 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !520 !PGOFuncName !521 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #18, !range !299
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !522

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #18
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !318
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !523 !PGOFuncName !524 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !525

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #18
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #18
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !526

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.1) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !527
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !527
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_control_edge(ptr nocapture noundef %0) unnamed_addr #0 !prof !529 !PGOFuncName !530 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !531
  %4 = load ptr, ptr @cfun, align 8, !tbaa !318
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !435
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !472
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %44, label %10, !prof !532

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !449
  %13 = and i32 %12, 4096
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44, !prof !533

15:                                               ; preds = %10
  %16 = or disjoint i32 %12, 4096
  store i32 %16, ptr %11, align 8, !tbaa !449
  %17 = load ptr, ptr @bb_in_list, align 8, !tbaa !318
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !469
  %20 = lshr i32 %19, 6
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %21
  %23 = load i64, ptr %22, align 8, !tbaa !418
  %24 = and i32 %19, 63
  %25 = zext nneg i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = and i64 %26, %23
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %44, !prof !534

29:                                               ; preds = %15
  tail call fastcc void @cfg_blocks_add(ptr noundef nonnull %3) #18
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32, !prof !467

32:                                               ; preds = %29
  %33 = load i32, ptr @dump_flags, align 4, !tbaa !288
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8, !tbaa !535
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !469
  %40 = load ptr, ptr %2, align 8, !tbaa !531
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !469
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %30, ptr noundef nonnull @.str.5, i32 noundef %39, i32 noundef %42) #18
  br label %44

44:                                               ; preds = %29, %32, %36, %15, %10, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !536 !PGOFuncName !537 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !538

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !504
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 !prof !501 !PGOFuncName !539 {
  %2 = load ptr, ptr @cfg_blocks, align 8, !tbaa !318
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2, i32 noundef %0) #18, !range !424
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !540

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #17
  store ptr %6, ptr @cfg_blocks, align 8, !tbaa !318
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !501 !PGOFuncName !541 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !503

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !542
  %7 = load i32, ptr %0, align 8, !tbaa !504
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
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !543 !PGOFuncName !544 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !545
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !546

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !293
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !547

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !548
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !506 !PGOFuncName !550 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !551

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !552
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !520 !PGOFuncName !554 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !555

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !523 !PGOFuncName !556 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #18
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !525

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #18
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !557 !PGOFuncName !558 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !559

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !560
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !562 !PGOFuncName !563 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !564

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.1) #17
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !318
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !565 !PGOFuncName !566 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !318
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cfg_blocks_add(ptr noundef %0) unnamed_addr #0 !prof !465 !PGOFuncName !567 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !318
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !435
  %5 = load ptr, ptr %4, align 8, !tbaa !455
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %11, label %7, !prof !468

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !472
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %12, !prof !468

11:                                               ; preds = %7, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 185, ptr noundef nonnull @.str.1) #17
  br label %12

12:                                               ; preds = %7, %11
  %13 = load ptr, ptr @bb_in_list, align 8, !tbaa !318
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !469
  %16 = lshr i32 %15, 6
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds %struct.simple_bitmap_def, ptr %13, i64 0, i32 3, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !418
  %20 = and i32 %15, 63
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = and i64 %22, %19
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %26, label %25, !prof !467

25:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 186, ptr noundef nonnull @.str.1) #17
  br label %26

26:                                               ; preds = %12, %25
  %27 = tail call fastcc zeroext i8 @cfg_blocks_empty_p() #18, !range !299
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29, !prof !568

29:                                               ; preds = %26
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !288
  store i32 0, ptr @cfg_blocks_tail, align 4, !tbaa !288
  store i32 1, ptr @cfg_blocks_num, align 4, !tbaa !288
  br label %55

30:                                               ; preds = %26
  %31 = load i32, ptr @cfg_blocks_num, align 4, !tbaa !288
  %32 = add i32 %31, 1
  store i32 %32, ptr @cfg_blocks_num, align 4, !tbaa !288
  %33 = load ptr, ptr @cfg_blocks, align 8
  %34 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %33) #18
  %35 = icmp ugt i32 %32, %34
  br i1 %35, label %36, label %39, !prof !569

36:                                               ; preds = %30
  store i32 %34, ptr @cfg_blocks_tail, align 4, !tbaa !288
  store i32 0, ptr @cfg_blocks_head, align 4, !tbaa !288
  %37 = shl nsw i32 %34, 1
  tail call fastcc void @VEC_basic_block_heap_safe_grow(i32 noundef %37) #18
  %38 = load i32, ptr @cfg_blocks_tail, align 4
  br label %55

39:                                               ; preds = %30
  %40 = load ptr, ptr %0, align 8, !tbaa !570
  %41 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %40) #18
  %42 = load i32, ptr @cfg_blocks_head, align 4, !tbaa !288
  %43 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %33, i32 noundef %42) #18
  %44 = load ptr, ptr %43, align 8, !tbaa !570
  %45 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %44) #18
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %51, label %47, !prof !571

47:                                               ; preds = %39
  %48 = load i32, ptr @cfg_blocks_tail, align 4, !tbaa !288
  %49 = add nsw i32 %48, 1
  %50 = urem i32 %49, %34
  store i32 %50, ptr @cfg_blocks_tail, align 4, !tbaa !288
  br label %55

51:                                               ; preds = %39
  %52 = icmp eq i32 %42, 0
  %53 = select i1 %52, i32 %34, i32 %42, !prof !572
  %54 = add nsw i32 %53, -1
  store i32 %54, ptr @cfg_blocks_head, align 4, !tbaa !288
  br label %58

55:                                               ; preds = %29, %36, %47
  %56 = phi i32 [ 0, %29 ], [ %38, %36 ], [ %50, %47 ]
  %57 = load ptr, ptr @cfg_blocks, align 8
  br label %58

58:                                               ; preds = %51, %55
  %59 = phi ptr [ %57, %55 ], [ %33, %51 ]
  %60 = phi i32 [ %56, %55 ], [ %54, %51 ]
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %59, i32 noundef %60, ptr noundef nonnull %0) #18
  %61 = load ptr, ptr @bb_in_list, align 8, !tbaa !318
  %62 = load i32, ptr %14, align 8, !tbaa !469
  tail call fastcc void @SET_BIT(ptr noundef %61, i32 noundef %62) #18
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !573 !PGOFuncName !574 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !318
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !465 !PGOFuncName !575 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 !prof !576 !PGOFuncName !577 {
  %3 = load ptr, ptr %0, align 8, !tbaa !496
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !578

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
  %15 = load i64, ptr %14, align 8, !tbaa !418
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !293
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !293
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !418
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !418
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #14 !prof !465 !PGOFuncName !579 {
  %3 = load ptr, ptr %0, align 8, !tbaa !496
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !467

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
  %15 = load i64, ptr %14, align 8, !tbaa !418
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !293
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !293
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !418
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !418
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @simulate_stmt(ptr noundef %0) unnamed_addr #0 !prof !580 !PGOFuncName !581 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  store ptr null, ptr %2, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr null, ptr %3, align 8, !tbaa !318
  %6 = tail call fastcc zeroext i8 @prop_simulate_again_p(ptr noundef %0) #18, !range !299
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %49, label %8, !prof !582

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !366
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %15, !prof !583

11:                                               ; preds = %8
  %12 = load ptr, ptr @ssa_prop_visit_phi, align 8, !tbaa !318
  %13 = tail call i32 %12(ptr noundef %0) #17
  %14 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #18
  store ptr %14, ptr %3, align 8, !tbaa !318
  br label %18

15:                                               ; preds = %8
  %16 = load ptr, ptr @ssa_prop_visit_stmt, align 8, !tbaa !318
  %17 = call i32 %16(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #17
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ %13, %11 ], [ %17, %15 ]
  switch i32 %19, label %49 [
    i32 2, label %20
    i32 1, label %41
  ], !prof !584

20:                                               ; preds = %18
  call fastcc void @prop_set_simulate_again(ptr noundef %0) #18
  %21 = load ptr, ptr %3, align 8, !tbaa !318
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !585

23:                                               ; preds = %20
  call fastcc void @add_ssa_edge(ptr noundef nonnull %21, i8 noundef zeroext 1) #18
  br label %24

24:                                               ; preds = %23, %20
  %25 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %0) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %49, label %27, !prof !586

27:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  %28 = call fastcc ptr @gimple_bb(ptr noundef %0) #18
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 1
  %30 = call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #18
  store i32 0, ptr %5, align 8, !tbaa.struct !446
  %31 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %30, ptr %31, align 8, !tbaa.struct !447
  %32 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %30, ptr noundef nonnull %4) #18, !range !299
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %40, label %34, !prof !587

34:                                               ; preds = %27, %34
  %35 = load ptr, ptr %4, align 8, !tbaa !318
  call fastcc void @add_control_edge(ptr noundef %35) #18
  call fastcc void @ei_next(ptr noundef nonnull %5) #18
  %36 = load i32, ptr %5, align 8
  %37 = load ptr, ptr %31, align 8
  %38 = call fastcc zeroext i8 @ei_cond(i32 %36, ptr %37, ptr noundef nonnull %4) #18, !range !299
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %34, !prof !588, !llvm.loop !589

40:                                               ; preds = %34, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  br label %49

41:                                               ; preds = %18
  %42 = load ptr, ptr %3, align 8, !tbaa !318
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !590

44:                                               ; preds = %41
  call fastcc void @add_ssa_edge(ptr noundef nonnull %42, i8 noundef zeroext 0) #18
  br label %45

45:                                               ; preds = %44, %41
  %46 = load ptr, ptr %2, align 8, !tbaa !318
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48, !prof !591

48:                                               ; preds = %45
  call fastcc void @add_control_edge(ptr noundef nonnull %46) #18
  br label %49

49:                                               ; preds = %40, %24, %45, %48, %18, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !592 !PGOFuncName !593 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @prop_simulate_again_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !594 !PGOFuncName !595 {
  %2 = tail call fastcc zeroext i8 @gimple_visited_p(ptr noundef %0) #18, !range !299
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !596 !PGOFuncName !597 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !293
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @prop_set_simulate_again(ptr nocapture noundef %0) unnamed_addr #6 !prof !598 !PGOFuncName !599 {
  tail call fastcc void @gimple_set_visited(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_ssa_edge(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !600 !PGOFuncName !601 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #19
  %4 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %0) #18
  %5 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #18, !range !299
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %23, !prof !602

7:                                                ; preds = %2, %19
  %8 = phi ptr [ %20, %19 ], [ %4, %2 ]
  %9 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !293
  %11 = tail call fastcc zeroext i8 @prop_simulate_again_p(ptr noundef %10) #18, !range !299
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %13, !prof !603

13:                                               ; preds = %7
  %14 = tail call fastcc i32 @gimple_plf(ptr noundef %10) #18
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19, !prof !604

16:                                               ; preds = %13
  %17 = icmp eq i8 %1, 0
  %18 = select i1 %17, ptr @interesting_ssa_edges, ptr @varying_ssa_edges
  tail call fastcc void @gimple_set_plf(ptr noundef %10, i8 noundef zeroext 1) #18
  tail call fastcc void @VEC_gimple_gc_safe_push(ptr noundef nonnull %18, ptr noundef %10) #18
  br label %19

19:                                               ; preds = %16, %13, %7
  %20 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #18
  %21 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #18, !range !299
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %7, label %23, !prof !605, !llvm.loop !606

23:                                               ; preds = %19, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !607 !PGOFuncName !608 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !293
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_visited_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !594 !PGOFuncName !609 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 9
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_visited(ptr nocapture noundef %0) unnamed_addr #6 !prof !598 !PGOFuncName !610 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, -513
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #6 !prof !600 !PGOFuncName !611 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !612
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !614
  store ptr %6, ptr %0, align 8, !tbaa !615
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #18, !range !299
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null, !prof !616
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !617 !PGOFuncName !618 {
  %2 = load ptr, ptr %0, align 8, !tbaa !615
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !612
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !619 !PGOFuncName !620 {
  tail call fastcc void @VEC_gimple_gc_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !318
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #5 !prof !621 !PGOFuncName !622 {
  %2 = load ptr, ptr %0, align 8, !tbaa !615
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !614
  store ptr %4, ptr %0, align 8, !tbaa !615
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #18, !range !299
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null, !prof !623
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !619 !PGOFuncName !624 {
  %2 = load ptr, ptr %0, align 8, !tbaa !318
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !625

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #17
  store ptr %6, ptr %0, align 8, !tbaa !318
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !619 !PGOFuncName !626 {
  %3 = load i32, ptr %0, align 8, !tbaa !463
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !463
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !619 !PGOFuncName !627 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !628

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !629
  %6 = load i32, ptr %0, align 8, !tbaa !463
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
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #6 !prof !619 !PGOFuncName !630 {
  %2 = load i32, ptr %0, align 8, !tbaa !463
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !463
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !318
  ret ptr %6
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_gc_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !498 !PGOFuncName !631 {
  %2 = load ptr, ptr %0, align 8, !tbaa !318
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !632

4:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !318
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free() unnamed_addr #8 !prof !429 !PGOFuncName !633 {
  %1 = load ptr, ptr @cfg_blocks, align 8, !tbaa !318
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !634

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #18
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @cfg_blocks, align 8, !tbaa !318
  ret void
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_makes_single_store(ptr noundef %0) local_unnamed_addr #0 !prof !635 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !366
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %22 [
    i8 6, label %4
    i8 8, label %4
  ], !prof !636

4:                                                ; preds = %1, %1
  %5 = tail call fastcc ptr @gimple_vdef(ptr noundef %0) #18
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7, !prof !637

7:                                                ; preds = %4
  %8 = tail call ptr @gimple_get_lhs(ptr noundef %0) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10, !prof !638

10:                                               ; preds = %7
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 524288
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %22, !prof !639

14:                                               ; preds = %10
  %15 = and i64 %11, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !288
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %22, label %19, !prof !640

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
define dso_local zeroext i8 @substitute_and_fold(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !429 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %1, null
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %181, !prof !641

11:                                               ; preds = %2
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !438

14:                                               ; preds = %11
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !288
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 45, i64 1, ptr nonnull %12)
  br label %20

20:                                               ; preds = %18, %14, %11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) @prop_stats, i8 0, i64 32, i1 false)
  %21 = load ptr, ptr @cfun, align 8, !tbaa !318
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !435
  %24 = load ptr, ptr %23, align 8, !tbaa !455
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !642
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !472
  %29 = icmp eq ptr %26, %28
  br i1 %29, label %168, label %30, !prof !439

30:                                               ; preds = %20
  %31 = icmp eq ptr %0, null
  br label %32

32:                                               ; preds = %30, %155
  %33 = phi ptr [ %26, %30 ], [ %158, %155 ]
  %34 = phi i8 [ 0, %30 ], [ %156, %155 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  br i1 %8, label %35, label %42, !prof !643

35:                                               ; preds = %32
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %33) #17
  %36 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !299
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %42, !prof !644

38:                                               ; preds = %35, %38
  %39 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  call fastcc void @replace_phi_args_in(ptr noundef %39, ptr noundef nonnull %0) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #18
  %40 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !299
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %38, label %42, !prof !645, !llvm.loop !646

42:                                               ; preds = %38, %35, %32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %33) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !647
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %43 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !299
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %155, !prof !648

45:                                               ; preds = %42, %151
  %46 = phi i8 [ %152, %151 ], [ %34, %42 ]
  %47 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18
  %48 = call fastcc i32 @gimple_code(ptr noundef %47) #18, !range !366
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !647
  call fastcc void @gsi_prev(ptr noundef nonnull %3) #18
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %50, label %55, !prof !649

50:                                               ; preds = %45
  %51 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %47) #18
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 148
  br i1 %54, label %151, label %55, !prof !650, !llvm.loop !651

55:                                               ; preds = %50, %45
  %56 = call ptr @gimple_get_lhs(ptr noundef %47) #17
  %57 = icmp eq ptr %56, null
  br i1 %57, label %88, label %58, !prof !652

58:                                               ; preds = %55
  %59 = call ptr @gimple_get_lhs(ptr noundef %47) #17
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 141
  br i1 %62, label %63, label %88, !prof !653

63:                                               ; preds = %58
  %64 = call ptr @gimple_get_lhs(ptr noundef %47) #17
  %65 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %64) #18
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %88, label %67, !prof !654

67:                                               ; preds = %63
  %68 = call zeroext i8 @stmt_could_throw_p(ptr noundef %47) #17
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %88, !prof !655

70:                                               ; preds = %67
  %71 = call zeroext i8 @gimple_has_side_effects(ptr noundef %47) #17
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %88, !prof !656

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %75 = icmp eq ptr %74, null
  br i1 %75, label %85, label %76, !prof !657

76:                                               ; preds = %73
  %77 = load i32, ptr @dump_flags, align 4, !tbaa !288
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = call i64 @fwrite(ptr nonnull @.str.9, i64 19, i64 1, ptr nonnull %74)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !318
  call void @print_gimple_stmt(ptr noundef %82, ptr noundef %47, i32 noundef 0, i32 noundef 0) #17
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %84 = call i32 @fputc(i32 10, ptr %83)
  br label %85

85:                                               ; preds = %80, %76, %73
  %86 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 3), align 8, !tbaa !658
  %87 = add nsw i64 %86, 1
  store i64 %87, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 3), align 8, !tbaa !658
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %47) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !647
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #17
  call void @release_defs(ptr noundef %47) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  br label %151

88:                                               ; preds = %70, %67, %63, %58, %55
  %89 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91, !prof !660

91:                                               ; preds = %88
  %92 = load i32, ptr @dump_flags, align 4, !tbaa !288
  %93 = and i32 %92, 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = call i64 @fwrite(ptr nonnull @.str.11, i64 19, i64 1, ptr nonnull %89)
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !318
  call void @print_gimple_stmt(ptr noundef %97, ptr noundef %47, i32 noundef 0, i32 noundef 2) #17
  br label %98

98:                                               ; preds = %95, %91, %88
  br i1 %9, label %99, label %105, !prof !661

99:                                               ; preds = %98
  %100 = call zeroext i8 %1(ptr noundef nonnull %5) #17
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %105, label %102, !prof !662

102:                                              ; preds = %99
  %103 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 2), align 8, !tbaa !663
  %104 = add nsw i64 %103, 1
  store i64 %104, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 2), align 8, !tbaa !663
  br label %109

105:                                              ; preds = %99, %98
  br i1 %31, label %133, label %106, !prof !664

106:                                              ; preds = %105
  %107 = call fastcc zeroext i8 @replace_uses_in(ptr noundef %47, ptr noundef nonnull %0) #18, !range !299
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %133, label %109, !prof !665

109:                                              ; preds = %102, %106
  %110 = call zeroext i8 @fold_stmt(ptr noundef nonnull %5) #17
  %111 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #18
  %112 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %47, ptr noundef %111) #17
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %116, label %114, !prof !666

114:                                              ; preds = %109
  %115 = call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %33) #17
  br label %116

116:                                              ; preds = %114, %109
  %117 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %111) #18, !range !299
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %129, label %119, !prof !667

119:                                              ; preds = %116
  %120 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %111) #18, !range !668
  %121 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %120) #18, !range !366
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %129, !prof !669

123:                                              ; preds = %119
  %124 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %111) #18
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 121
  br i1 %127, label %128, label %129, !prof !670

128:                                              ; preds = %123
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %124) #17
  br label %129

129:                                              ; preds = %123, %128, %119, %116
  call fastcc void @update_stmt(ptr noundef %111) #18
  %130 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %111) #18, !range !299
  %131 = icmp eq i8 %130, 0
  %132 = select i1 %131, i8 1, i8 %46, !prof !666
  br label %133

133:                                              ; preds = %105, %129, %106
  %134 = phi i1 [ false, %129 ], [ true, %106 ], [ true, %105 ]
  %135 = phi ptr [ %111, %129 ], [ %47, %106 ], [ %47, %105 ]
  %136 = phi i8 [ %132, %129 ], [ %46, %106 ], [ %46, %105 ]
  %137 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %138 = icmp eq ptr %137, null
  br i1 %138, label %151, label %139, !prof !660

139:                                              ; preds = %133
  %140 = load i32, ptr @dump_flags, align 4, !tbaa !288
  %141 = and i32 %140, 8
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  br i1 %134, label %149, label %144

144:                                              ; preds = %143
  %145 = call i64 @fwrite(ptr nonnull @.str.12, i64 13, i64 1, ptr nonnull %137)
  %146 = load ptr, ptr @dump_file, align 8, !tbaa !318
  call void @print_gimple_stmt(ptr noundef %146, ptr noundef %135, i32 noundef 0, i32 noundef 2) #17
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %148 = call i32 @fputc(i32 10, ptr %147)
  br label %151

149:                                              ; preds = %143
  %150 = call i64 @fwrite(ptr nonnull @.str.13, i64 11, i64 1, ptr nonnull %137)
  br label %151

151:                                              ; preds = %133, %139, %149, %144, %50, %85
  %152 = phi i8 [ %46, %85 ], [ %46, %50 ], [ %136, %144 ], [ %136, %149 ], [ %136, %139 ], [ %136, %133 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  %153 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #18, !range !299
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %45, label %155, !prof !671

155:                                              ; preds = %151, %42
  %156 = phi i8 [ %34, %42 ], [ %152, %151 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %157 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %158 = load ptr, ptr %157, align 8, !tbaa !642
  %159 = load ptr, ptr @cfun, align 8, !tbaa !318
  %160 = getelementptr inbounds %struct.function, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !435
  %162 = getelementptr inbounds %struct.control_flow_graph, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !472
  %164 = icmp eq ptr %158, %163
  br i1 %164, label %165, label %32, !prof !672, !llvm.loop !673

165:                                              ; preds = %155
  %166 = load i64, ptr @prop_stats, align 8, !tbaa !674
  %167 = trunc i64 %166 to i32
  br label %168

168:                                              ; preds = %165, %20
  %169 = phi i32 [ 0, %20 ], [ %167, %165 ]
  %170 = phi i8 [ 0, %20 ], [ %156, %165 ]
  %171 = phi ptr [ %21, %20 ], [ %159, %165 ]
  call void @statistics_counter_event(ptr noundef nonnull %171, ptr noundef nonnull @.str.14, i32 noundef %169) #17
  %172 = load ptr, ptr @cfun, align 8, !tbaa !318
  %173 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 1), align 8, !tbaa !675
  %174 = trunc i64 %173 to i32
  call void @statistics_counter_event(ptr noundef %172, ptr noundef nonnull @.str.15, i32 noundef %174) #17
  %175 = load ptr, ptr @cfun, align 8, !tbaa !318
  %176 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 2), align 8, !tbaa !663
  %177 = trunc i64 %176 to i32
  call void @statistics_counter_event(ptr noundef %175, ptr noundef nonnull @.str.16, i32 noundef %177) #17
  %178 = load ptr, ptr @cfun, align 8, !tbaa !318
  %179 = load i64, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 3), align 8, !tbaa !658
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
define internal fastcc void @replace_phi_args_in(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !676 !PGOFuncName !677 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5, !prof !678

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !288
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !318
  tail call void @print_gimple_stmt(ptr noundef %11, ptr noundef %0, i32 noundef 0, i32 noundef 2) #17
  br label %12

12:                                               ; preds = %9, %5, %2
  %13 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #18
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %62, label %15, !prof !679

15:                                               ; preds = %12, %54
  %16 = phi i64 [ %56, %54 ], [ 0, %12 ]
  %17 = phi i8 [ %55, %54 ], [ 0, %12 ]
  %18 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %16) #18
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 141
  br i1 %21, label %22, label %54, !prof !680

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %18, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !293
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.prop_value_d, ptr %1, i64 %25, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !681
  %28 = icmp eq ptr %27, null
  %29 = icmp eq ptr %27, %18
  %30 = or i1 %28, %29
  br i1 %30, label %54, label %31, !prof !683

31:                                               ; preds = %22
  %32 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %18, ptr noundef nonnull %27) #17
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %54, label %34, !prof !684

34:                                               ; preds = %31
  %35 = load i64, ptr %27, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 141
  %38 = select i1 %37, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 1), ptr @prop_stats, !prof !685
  %39 = load i64, ptr %38, align 8, !tbaa !418
  %40 = add nsw i64 %39, 1
  store i64 %40, ptr %38, align 8, !tbaa !418
  %41 = trunc i64 %16 to i32
  %42 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %41) #18
  tail call void @propagate_value(ptr noundef nonnull %42, ptr noundef nonnull %27) #17
  %43 = load i64, ptr %27, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 141
  br i1 %45, label %46, label %54, !prof !685

46:                                               ; preds = %34
  %47 = tail call fastcc ptr @gimple_phi_arg_edge(ptr noundef %0, i64 noundef %16) #18
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !449
  %50 = and i32 %49, 2
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %52, !prof !686

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
  br i1 %59, label %15, label %60, !prof !687, !llvm.loop !688

60:                                               ; preds = %54
  %61 = icmp eq i8 %55, 0
  br label %62

62:                                               ; preds = %60, %12
  %63 = phi i1 [ true, %12 ], [ %61, %60 ]
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %65 = icmp eq ptr %64, null
  br i1 %65, label %78, label %66, !prof !678

66:                                               ; preds = %62
  %67 = load i32, ptr @dump_flags, align 4, !tbaa !288
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
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !318
  tail call void @print_gimple_stmt(ptr noundef %75, ptr noundef %0, i32 noundef 0, i32 noundef 2) #17
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !318
  %77 = tail call i32 @fputc(i32 10, ptr %76)
  br label %78

78:                                               ; preds = %71, %73, %66, %62
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !689 !PGOFuncName !690 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !386
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !508
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !509
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #5 !prof !691 !PGOFuncName !692 {
  %2 = load ptr, ptr %0, align 8, !tbaa !386
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !693
  store ptr %4, ptr %0, align 8, !tbaa !386
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !694 !PGOFuncName !695 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 !prof !696 !PGOFuncName !697 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !614
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !698

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !288
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9, !prof !699

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
define internal fastcc zeroext i8 @replace_uses_in(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !358 !PGOFuncName !700 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  %4 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %0) #18
  %5 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %40, !prof !701

7:                                                ; preds = %2, %35
  %8 = phi i8 [ %36, %35 ], [ 0, %2 ]
  %9 = phi ptr [ %37, %35 ], [ %4, %2 ]
  %10 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %9) #18
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !293
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.prop_value_d, ptr %1, i64 %13, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !681
  %16 = icmp eq ptr %15, %10
  %17 = icmp eq ptr %15, null
  %18 = or i1 %16, %17
  br i1 %18, label %35, label %19, !prof !702

19:                                               ; preds = %7
  %20 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !366
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %22, label %25, !prof !703

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @may_propagate_copy_into_asm(ptr noundef nonnull %10) #17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %22, %19
  %26 = tail call zeroext i8 @may_propagate_copy(ptr noundef nonnull %10, ptr noundef nonnull %15) #17
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28, !prof !704

28:                                               ; preds = %25
  %29 = load i64, ptr %15, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  %32 = select i1 %31, ptr getelementptr inbounds (%struct.prop_stats_d, ptr @prop_stats, i64 0, i32 1), ptr @prop_stats, !prof !705
  %33 = load i64, ptr %32, align 8, !tbaa !418
  %34 = add nsw i64 %33, 1
  store i64 %34, ptr %32, align 8, !tbaa !418
  tail call void @propagate_value(ptr noundef %9, ptr noundef nonnull %15) #17
  br label %35

35:                                               ; preds = %25, %22, %7, %28
  %36 = phi i8 [ 1, %28 ], [ %8, %7 ], [ %8, %22 ], [ %8, %25 ]
  %37 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #18
  %38 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %7, label %40, !prof !706, !llvm.loop !707

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
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !708 !PGOFuncName !709 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !366
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #9 !prof !710 !PGOFuncName !711 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !293
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !712 !PGOFuncName !713 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #18, !range !668
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #18, !range !366
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !669

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
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !708 !PGOFuncName !714 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !299
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !715

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !708 !PGOFuncName !716 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !366
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !717 !PGOFuncName !718 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !293
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !719 !PGOFuncName !720 {
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
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !721 !PGOFuncName !722 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #4 !prof !723 !PGOFuncName !724 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #18
  %4 = load ptr, ptr %3, align 8, !tbaa !570
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !725 !PGOFuncName !726 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !293
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !727

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3103, ptr noundef nonnull @.str.1) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #3 !prof !689 !PGOFuncName !728 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !729

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !730
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !358 !PGOFuncName !731 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 1) #18
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !329
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #18
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy_into_asm(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !732 !PGOFuncName !733 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !336
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !734

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !338
  store ptr %7, ptr %2, align 8, !tbaa !336
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !735
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !736
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !737

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !738
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !735
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #18
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !333
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !712 !PGOFuncName !739 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !366
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !740

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!286}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!36 = !{ptr @valid_gimple_rhs_p, ptr @is_gimple_variable, i64 1}
!37 = !{ptr @valid_gimple_rhs_p, ptr @is_gimple_val, i64 93080}
!38 = !{ptr @valid_gimple_rhs_p, ptr @is_gimple_min_invariant, i64 1460}
!39 = !{ptr @valid_gimple_rhs_p, ptr @handled_component_p, i64 323}
!40 = !{ptr @valid_gimple_rhs_p, ptr @is_gimple_id, i64 133}
!41 = !{ptr @valid_gimple_call_p, ptr @is_gimple_operand, i64 90}
!42 = !{ptr @move_ssa_defining_stmt_for_defs, ptr @gimple_in_ssa_p, i64 234}
!43 = !{ptr @move_ssa_defining_stmt_for_defs, ptr @op_iter_init_tree, i64 233}
!44 = !{ptr @move_ssa_defining_stmt_for_defs, ptr @op_iter_done, i64 469}
!45 = !{ptr @move_ssa_defining_stmt_for_defs, ptr @op_iter_next_tree, i64 236}
!46 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 234}
!47 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 234}
!48 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 1}
!49 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 236}
!50 = !{ptr @op_iter_init, ptr @fancy_abort, i64 1}
!51 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 235}
!52 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!53 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 6074934}
!54 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 5832548}
!55 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 234}
!56 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 24531}
!57 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 6074935}
!58 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 5832612}
!59 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 10897059}
!60 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 5857267}
!61 = !{ptr @update_call_from_tree, ptr @gsi_stmt, i64 192}
!62 = !{ptr @update_call_from_tree, ptr @is_gimple_call, i64 192}
!63 = !{ptr @update_call_from_tree, ptr @fancy_abort, i64 1}
!64 = !{ptr @update_call_from_tree, ptr @gimple_call_lhs, i64 192}
!65 = !{ptr @update_call_from_tree, ptr @valid_gimple_call_p, i64 192}
!66 = !{ptr @update_call_from_tree, ptr @VEC_tree_heap_alloc, i64 29}
!67 = !{ptr @update_call_from_tree, ptr @VEC_tree_heap_safe_grow, i64 29}
!68 = !{ptr @update_call_from_tree, ptr @VEC_tree_base_replace, i64 89}
!69 = !{ptr @update_call_from_tree, ptr @gimple_build_call_vec, i64 30}
!70 = !{ptr @update_call_from_tree, ptr @gimple_call_set_lhs, i64 30}
!71 = !{ptr @update_call_from_tree, ptr @move_ssa_defining_stmt_for_defs, i64 64}
!72 = !{ptr @update_call_from_tree, ptr @gimple_vuse, i64 64}
!73 = !{ptr @update_call_from_tree, ptr @gimple_set_vuse, i64 64}
!74 = !{ptr @update_call_from_tree, ptr @gimple_vdef, i64 64}
!75 = !{ptr @update_call_from_tree, ptr @gimple_set_vdef, i64 64}
!76 = !{ptr @update_call_from_tree, ptr @gimple_location, i64 126}
!77 = !{ptr @update_call_from_tree, ptr @gimple_set_location, i64 126}
!78 = !{ptr @update_call_from_tree, ptr @gsi_replace, i64 126}
!79 = !{ptr @update_call_from_tree, ptr @VEC_tree_heap_free, i64 30}
!80 = !{ptr @update_call_from_tree, ptr @valid_gimple_rhs_p, i64 162}
!81 = !{ptr @update_call_from_tree, ptr @tree_ssa_strip_useless_type_conversions, i64 34}
!82 = !{ptr @update_call_from_tree, ptr @gimple_build_assign_stat, i64 34}
!83 = !{ptr @update_call_from_tree, ptr @gimple_build_nop, i64 62}
!84 = !{ptr @update_call_from_tree, ptr @unlink_stmt_vdef, i64 62}
!85 = !{ptr @update_call_from_tree, ptr @release_defs, i64 62}
!86 = !{ptr @update_call_from_tree, ptr @create_tmp_var, i64 1}
!87 = !{ptr @update_call_from_tree, ptr @add_referenced_var, i64 1}
!88 = !{ptr @update_call_from_tree, ptr @make_ssa_name, i64 1}
!89 = !{ptr @update_call_from_tree, ptr @gimple_assign_set_lhs, i64 1}
!90 = !{ptr @is_gimple_call, ptr @gimple_code, i64 192}
!91 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 192}
!92 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 29}
!93 = !{ptr @VEC_tree_heap_safe_grow, ptr @VEC_tree_heap_reserve_exact, i64 29}
!94 = !{ptr @gimple_call_set_lhs, ptr @gimple_set_op, i64 29}
!95 = !{ptr @gimple_set_vuse, ptr @gimple_has_mem_ops, i64 62}
!96 = !{ptr @gimple_set_vuse, ptr @fancy_abort, i64 1}
!97 = !{ptr @gimple_set_vdef, ptr @gimple_has_mem_ops, i64 62}
!98 = !{ptr @gimple_set_vdef, ptr @fancy_abort, i64 1}
!99 = !{ptr @VEC_tree_heap_free, ptr @free, i64 28}
!100 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 4637155}
!101 = !{ptr @gimple_op, ptr @gimple_ops, i64 4637154}
!102 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 4637184}
!103 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!104 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 4637184}
!105 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 4637184}
!106 = !{ptr @VEC_tree_heap_reserve_exact, ptr @VEC_tree_base_space, i64 29}
!107 = !{ptr @VEC_tree_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 1}
!108 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 29}
!109 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 28}
!110 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!111 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 29}
!112 = !{ptr @ssa_propagate, ptr @ssa_prop_init, i64 64492}
!113 = !{ptr @ssa_propagate, ptr @cfg_blocks_empty_p, i64 130403672}
!114 = !{ptr @ssa_propagate, ptr @VEC_gimple_base_length, i64 5807727}
!115 = !{ptr @ssa_propagate, ptr @cfg_blocks_get, i64 127499786}
!116 = !{ptr @ssa_propagate, ptr @simulate_block, i64 127499786}
!117 = !{ptr @ssa_propagate, ptr @process_ssa_edge_worklist, i64 260678360}
!118 = !{ptr @ssa_propagate, ptr @ssa_prop_fini, i64 64492}
!119 = !{ptr @ssa_prop_init, ptr @VEC_gimple_gc_alloc, i64 128984}
!120 = !{ptr @ssa_prop_init, ptr @sbitmap_alloc, i64 128984}
!121 = !{ptr @ssa_prop_init, ptr @sbitmap_zero, i64 128984}
!122 = !{ptr @ssa_prop_init, ptr @VEC_basic_block_heap_alloc, i64 64492}
!123 = !{ptr @ssa_prop_init, ptr @VEC_basic_block_heap_safe_grow, i64 64492}
!124 = !{ptr @ssa_prop_init, ptr @gsi_start_bb, i64 2544638}
!125 = !{ptr @ssa_prop_init, ptr @gsi_end_p, i64 12860030}
!126 = !{ptr @ssa_prop_init, ptr @gsi_stmt, i64 7770754}
!127 = !{ptr @ssa_prop_init, ptr @gimple_set_plf, i64 7770754}
!128 = !{ptr @ssa_prop_init, ptr @gsi_next, i64 7770754}
!129 = !{ptr @ssa_prop_init, ptr @gsi_start_phis, i64 2544638}
!130 = !{ptr @ssa_prop_init, ptr @ei_start_1, i64 2609130}
!131 = !{ptr @ssa_prop_init, ptr @ei_cond, i64 6518306}
!132 = !{ptr @ssa_prop_init, ptr @ei_next, i64 3909176}
!133 = !{ptr @ssa_prop_init, ptr @add_control_edge, i64 64492}
!134 = !{ptr @cfg_blocks_get, ptr @VEC_basic_block_base_index, i64 2839220}
!135 = !{ptr @cfg_blocks_get, ptr @cfg_blocks_empty_p, i64 2839220}
!136 = !{ptr @cfg_blocks_get, ptr @fancy_abort, i64 2}
!137 = !{ptr @cfg_blocks_get, ptr @VEC_basic_block_base_length, i64 2839220}
!138 = !{ptr @cfg_blocks_get, ptr @RESET_BIT, i64 2839220}
!139 = !{ptr @simulate_block, ptr @gsi_start_phis, i64 2839219}
!140 = !{ptr @simulate_block, ptr @gsi_end_p, i64 13665031}
!141 = !{ptr @simulate_block, ptr @gsi_stmt, i64 8412949}
!142 = !{ptr @simulate_block, ptr @simulate_stmt, i64 8412949}
!143 = !{ptr @simulate_block, ptr @gsi_next, i64 8412949}
!144 = !{ptr @simulate_block, ptr @SET_BIT, i64 2412863}
!145 = !{ptr @simulate_block, ptr @gsi_start_bb, i64 2412863}
!146 = !{ptr @simulate_block, ptr @gimple_plf, i64 6856913}
!147 = !{ptr @simulate_block, ptr @gimple_set_plf, i64 1232158}
!148 = !{ptr @simulate_block, ptr @ei_start_1, i64 2412863}
!149 = !{ptr @simulate_block, ptr @ei_cond, i64 6189923}
!150 = !{ptr @simulate_block, ptr @add_control_edge, i64 1082376}
!151 = !{ptr @simulate_block, ptr @ei_next, i64 3777060}
!152 = !{ptr @process_ssa_edge_worklist, ptr @VEC_gimple_base_length, i64 8360139}
!153 = !{ptr @process_ssa_edge_worklist, ptr @VEC_gimple_base_pop, i64 2681355}
!154 = !{ptr @process_ssa_edge_worklist, ptr @gimple_plf, i64 2681355}
!155 = !{ptr @process_ssa_edge_worklist, ptr @gimple_set_plf, i64 1449196}
!156 = !{ptr @process_ssa_edge_worklist, ptr @fwrite, i64 1}
!157 = !{ptr @process_ssa_edge_worklist, ptr @print_gimple_stmt, i64 1}
!158 = !{ptr @process_ssa_edge_worklist, ptr @gimple_code, i64 1449196}
!159 = !{ptr @process_ssa_edge_worklist, ptr @gimple_bb, i64 981902}
!160 = !{ptr @process_ssa_edge_worklist, ptr @simulate_stmt, i64 609508}
!161 = !{ptr @ssa_prop_fini, ptr @VEC_gimple_gc_free, i64 128984}
!162 = !{ptr @ssa_prop_fini, ptr @VEC_basic_block_heap_free, i64 64492}
!163 = !{ptr @ssa_prop_fini, ptr @free, i64 257968}
!164 = !{ptr @VEC_gimple_gc_alloc, ptr @vec_gc_p_reserve_exact, i64 128984}
!165 = !{ptr @VEC_basic_block_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 64492}
!166 = !{ptr @VEC_basic_block_heap_safe_grow, ptr @VEC_basic_block_heap_reserve_exact, i64 67611}
!167 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 4957541}
!168 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 4957541}
!169 = !{ptr @ei_cond, ptr @ei_end_p, i64 16851658}
!170 = !{ptr @ei_cond, ptr @ei_edge, i64 10438339}
!171 = !{ptr @ei_next, ptr @ei_container, i64 20876677}
!172 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 10438339}
!173 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!174 = !{ptr @add_control_edge, ptr @cfg_blocks_add, i64 2839218}
!175 = !{ptr @VEC_basic_block_heap_reserve_exact, ptr @VEC_basic_block_base_space, i64 67611}
!176 = !{ptr @VEC_basic_block_heap_reserve_exact, ptr @vec_heap_p_reserve_exact, i64 3120}
!177 = !{ptr @ei_end_p, ptr @ei_container, i64 33623914}
!178 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 16851658}
!179 = !{ptr @ei_edge, ptr @ei_container, i64 20876677}
!180 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 10438339}
!181 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!182 = !{ptr @cfg_blocks_add, ptr @fancy_abort, i64 3}
!183 = !{ptr @cfg_blocks_add, ptr @cfg_blocks_empty_p, i64 2839220}
!184 = !{ptr @cfg_blocks_add, ptr @VEC_basic_block_base_length, i64 2646772}
!185 = !{ptr @cfg_blocks_add, ptr @VEC_basic_block_heap_safe_grow, i64 3120}
!186 = !{ptr @cfg_blocks_add, ptr @VEC_edge_base_length, i64 5287304}
!187 = !{ptr @cfg_blocks_add, ptr @VEC_basic_block_base_index, i64 2643652}
!188 = !{ptr @cfg_blocks_add, ptr @VEC_basic_block_base_replace, i64 2839220}
!189 = !{ptr @cfg_blocks_add, ptr @SET_BIT, i64 2839220}
!190 = !{ptr @simulate_stmt, ptr @prop_simulate_again_p, i64 9022462}
!191 = !{ptr @simulate_stmt, ptr @gimple_code, i64 4588699}
!192 = !{ptr @simulate_stmt, ptr @gimple_phi_result, i64 1010814}
!193 = !{ptr @simulate_stmt, ptr @prop_set_simulate_again, i64 3142477}
!194 = !{ptr @simulate_stmt, ptr @add_ssa_edge, i64 2872329}
!195 = !{ptr @simulate_stmt, ptr @stmt_ends_bb_p, i64 3142477}
!196 = !{ptr @simulate_stmt, ptr @gimple_bb, i64 1391286}
!197 = !{ptr @simulate_stmt, ptr @ei_start_1, i64 1391286}
!198 = !{ptr @simulate_stmt, ptr @ei_cond, i64 4143326}
!199 = !{ptr @simulate_stmt, ptr @add_control_edge, i64 2775234}
!200 = !{ptr @simulate_stmt, ptr @ei_next, i64 2752040}
!201 = !{ptr @prop_simulate_again_p, ptr @gimple_visited_p, i64 14257341}
!202 = !{ptr @prop_set_simulate_again, ptr @gimple_set_visited, i64 3142477}
!203 = !{ptr @add_ssa_edge, ptr @first_readonly_imm_use, i64 2872330}
!204 = !{ptr @add_ssa_edge, ptr @end_readonly_imm_use_p, i64 8107208}
!205 = !{ptr @add_ssa_edge, ptr @prop_simulate_again_p, i64 5234878}
!206 = !{ptr @add_ssa_edge, ptr @gimple_plf, i64 3169985}
!207 = !{ptr @add_ssa_edge, ptr @gimple_set_plf, i64 2681353}
!208 = !{ptr @add_ssa_edge, ptr @VEC_gimple_gc_safe_push, i64 2681353}
!209 = !{ptr @add_ssa_edge, ptr @next_readonly_imm_use, i64 5234878}
!210 = !{ptr @first_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 2872330}
!211 = !{ptr @VEC_gimple_gc_safe_push, ptr @VEC_gimple_gc_reserve, i64 2681354}
!212 = !{ptr @VEC_gimple_gc_safe_push, ptr @VEC_gimple_base_quick_push, i64 2681354}
!213 = !{ptr @next_readonly_imm_use, ptr @end_readonly_imm_use_p, i64 5234879}
!214 = !{ptr @VEC_gimple_gc_reserve, ptr @VEC_gimple_base_space, i64 2681354}
!215 = !{ptr @VEC_gimple_gc_reserve, ptr @vec_gc_p_reserve, i64 4189}
!216 = !{ptr @VEC_gimple_gc_free, ptr @ggc_free, i64 128983}
!217 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 64491}
!218 = !{ptr @stmt_makes_single_store, ptr @gimple_code, i64 30674}
!219 = !{ptr @stmt_makes_single_store, ptr @gimple_vdef, i64 24469}
!220 = !{ptr @stmt_makes_single_store, ptr @gimple_get_lhs, i64 24464}
!221 = !{ptr @substitute_and_fold, ptr @gsi_start_phis, i64 2328954}
!222 = !{ptr @substitute_and_fold, ptr @gsi_end_p, i64 12480428}
!223 = !{ptr @substitute_and_fold, ptr @gsi_stmt, i64 7920557}
!224 = !{ptr @substitute_and_fold, ptr @replace_phi_args_in, i64 872628}
!225 = !{ptr @substitute_and_fold, ptr @gsi_next, i64 872628}
!226 = !{ptr @substitute_and_fold, ptr @gsi_last_bb, i64 2415618}
!227 = !{ptr @substitute_and_fold, ptr @gimple_code, i64 6863228}
!228 = !{ptr @substitute_and_fold, ptr @gsi_prev, i64 6863228}
!229 = !{ptr @substitute_and_fold, ptr @gimple_assign_rhs1, i64 4540526}
!230 = !{ptr @substitute_and_fold, ptr @gimple_get_lhs, i64 15269519}
!231 = !{ptr @substitute_and_fold, ptr @has_zero_uses, i64 4110206}
!232 = !{ptr @substitute_and_fold, ptr @stmt_could_throw_p, i64 184799}
!233 = !{ptr @substitute_and_fold, ptr @gimple_has_side_effects, i64 184798}
!234 = !{ptr @substitute_and_fold, ptr @gsi_for_stmt, i64 184174}
!235 = !{ptr @substitute_and_fold, ptr @gsi_remove, i64 184174}
!236 = !{ptr @substitute_and_fold, ptr @release_defs, i64 184174}
!237 = !{ptr @substitute_and_fold, ptr @replace_uses_in, i64 6074746}
!238 = !{ptr @substitute_and_fold, ptr @fold_stmt, i64 184701}
!239 = !{ptr @substitute_and_fold, ptr @maybe_clean_or_replace_eh_stmt, i64 184701}
!240 = !{ptr @substitute_and_fold, ptr @gimple_purge_dead_eh_edges, i64 1}
!241 = !{ptr @substitute_and_fold, ptr @is_gimple_assign, i64 184701}
!242 = !{ptr @substitute_and_fold, ptr @gimple_assign_rhs_code, i64 127340}
!243 = !{ptr @substitute_and_fold, ptr @get_gimple_rhs_class, i64 127340}
!244 = !{ptr @substitute_and_fold, ptr @recompute_tree_invariant_for_addr_expr, i64 3442}
!245 = !{ptr @substitute_and_fold, ptr @update_stmt, i64 184701}
!246 = !{ptr @substitute_and_fold, ptr @is_gimple_debug, i64 184701}
!247 = !{ptr @substitute_and_fold, ptr @statistics_counter_event, i64 257964}
!248 = !{ptr @replace_phi_args_in, ptr @fwrite, i64 1}
!249 = !{ptr @replace_phi_args_in, ptr @print_gimple_stmt, i64 1}
!250 = !{ptr @replace_phi_args_in, ptr @gimple_phi_num_args, i64 3402052}
!251 = !{ptr @replace_phi_args_in, ptr @gimple_phi_arg_def, i64 2529398}
!252 = !{ptr @replace_phi_args_in, ptr @may_propagate_copy, i64 70832}
!253 = !{ptr @replace_phi_args_in, ptr @gimple_phi_arg_imm_use_ptr, i64 70736}
!254 = !{ptr @replace_phi_args_in, ptr @propagate_value, i64 70736}
!255 = !{ptr @replace_phi_args_in, ptr @gimple_phi_arg_edge, i64 24557}
!256 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 2415692}
!257 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 2415692}
!258 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 4636963}
!259 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!260 = !{ptr @replace_uses_in, ptr @op_iter_init_use, i64 6074935}
!261 = !{ptr @replace_uses_in, ptr @op_iter_done, i64 12346809}
!262 = !{ptr @replace_uses_in, ptr @get_use_from_ptr, i64 6271874}
!263 = !{ptr @replace_uses_in, ptr @gimple_code, i64 145313}
!264 = !{ptr @replace_uses_in, ptr @may_propagate_copy_into_asm, i64 1}
!265 = !{ptr @replace_uses_in, ptr @may_propagate_copy, i64 145313}
!266 = !{ptr @replace_uses_in, ptr @propagate_value, i64 144493}
!267 = !{ptr @replace_uses_in, ptr @op_iter_next_use, i64 6271874}
!268 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 184706}
!269 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 127344}
!270 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 127344}
!271 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 96296}
!272 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 184706}
!273 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 184696}
!274 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 184696}
!275 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 184706}
!276 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 2529400}
!277 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 2529400}
!278 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 70737}
!279 = !{ptr @gimple_phi_arg_edge, ptr @gimple_bb, i64 24557}
!280 = !{ptr @gimple_phi_arg_edge, ptr @VEC_edge_base_index, i64 24557}
!281 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!282 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 6074935}
!283 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 6074935}
!284 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!285 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 127344}
!286 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!287 = !{!"function_entry_count", i64 98058}
!288 = !{!289, !289, i64 0}
!289 = !{!"int", !290, i64 0}
!290 = !{!"omnipotent char", !291, i64 0}
!291 = !{!"Simple C/C++ TBAA"}
!292 = !{!"branch_weights", i32 2, i32 1, i32 29432, i32 39024, i32 13557, i32 5287, i32 1629, i32 9135}
!293 = !{!290, !290, i64 0}
!294 = !{!"branch_weights", i32 17691, i32 34890}
!295 = !{!"branch_weights", i32 627, i32 34264}
!296 = !{!"branch_weights", i32 41, i32 5247}
!297 = !{!"branch_weights", i32 90, i32 1465, i32 1, i32 63, i32 1, i32 14}
!298 = !{!"branch_weights", i32 157, i32 1309}
!299 = !{i8 0, i8 2}
!300 = !{!"branch_weights", i32 1, i32 136}
!301 = !{!"branch_weights", i32 2685, i32 256}
!302 = !{!"branch_weights", i32 21, i32 137}
!303 = !{!"branch_weights", i32 136, i32 36}
!304 = distinct !{!304, !305}
!305 = !{!"llvm.loop.mustprogress"}
!306 = !{!"branch_weights", i32 1, i32 76}
!307 = !{!"branch_weights", i32 9135, i32 1}
!308 = !{!"function_entry_count", i64 307}
!309 = !{!"tree-ssa-propagate.c:handled_component_p"}
!310 = !{!"branch_weights", i32 137, i32 1, i32 16, i32 157, i32 1, i32 1, i32 1, i32 1}
!311 = !{!"function_entry_count", i64 192}
!312 = !{!"branch_weights", i32 30, i32 164}
!313 = !{!"branch_weights", i32 1, i32 239}
!314 = !{!"branch_weights", i32 239, i32 505}
!315 = distinct !{!315, !305}
!316 = !{!"branch_weights", i32 1, i32 93}
!317 = !{!"function_entry_count", i64 234}
!318 = !{!319, !319, i64 0}
!319 = !{!"any pointer", !290, i64 0}
!320 = !{!"branch_weights", i32 1, i32 235}
!321 = !{!"branch_weights", i32 234, i32 1}
!322 = !{!"branch_weights", i32 224, i32 15}
!323 = !{!"branch_weights", i32 4, i32 234}
!324 = distinct !{!324, !305}
!325 = !{!"tree-ssa-propagate.c:gimple_in_ssa_p"}
!326 = !{!327, !319, i64 24}
!327 = !{!"function", !319, i64 0, !319, i64 8, !319, i64 16, !319, i64 24, !319, i64 32, !319, i64 40, !319, i64 48, !319, i64 56, !319, i64 64, !319, i64 72, !319, i64 80, !319, i64 88, !319, i64 96, !289, i64 104, !289, i64 108, !289, i64 112, !289, i64 116, !289, i64 120, !289, i64 124, !319, i64 128, !289, i64 136, !289, i64 137, !289, i64 138, !289, i64 138, !289, i64 138, !289, i64 138, !289, i64 138, !289, i64 138, !289, i64 138, !289, i64 139, !289, i64 139, !289, i64 139, !289, i64 139, !289, i64 139, !289, i64 139, !289, i64 139}
!328 = !{!"tree-ssa-propagate.c:op_iter_init_tree"}
!329 = !{!330, !289, i64 4}
!330 = !{!"ssa_operand_iterator_d", !290, i64 0, !289, i64 4, !319, i64 8, !319, i64 16, !289, i64 24, !289, i64 28, !319, i64 32}
!331 = !{!"function_entry_count", i64 12347280}
!332 = !{!"tree-ssa-propagate.c:op_iter_done"}
!333 = !{!330, !290, i64 0}
!334 = !{!"function_entry_count", i64 471}
!335 = !{!"tree-ssa-propagate.c:op_iter_next_tree"}
!336 = !{!330, !319, i64 16}
!337 = !{!"branch_weights", i32 472, i32 1}
!338 = !{!339, !319, i64 0}
!339 = !{!"use_optype_d", !319, i64 0, !340, i64 8}
!340 = !{!"ssa_use_operand_d", !319, i64 0, !319, i64 8, !290, i64 16, !319, i64 24}
!341 = !{!330, !319, i64 8}
!342 = !{!"branch_weights", i32 235, i32 238}
!343 = !{!344, !319, i64 8}
!344 = !{!"def_optype_d", !319, i64 0, !319, i64 8}
!345 = !{!344, !319, i64 0}
!346 = !{!"function_entry_count", i64 6075169}
!347 = !{!"tree-ssa-propagate.c:op_iter_init"}
!348 = !{!"branch_weights", i32 235, i32 6074936}
!349 = !{!"branch_weights", i32 6075170, i32 1}
!350 = !{!"branch_weights", i32 6074936, i32 235}
!351 = !{!"branch_weights", i32 2138357961, i32 9125687}
!352 = !{!"branch_weights", i32 85683188, i32 2061800460}
!353 = !{!"branch_weights", i32 2556580, i32 3275972}
!354 = !{!"tree-ssa-propagate.c:gimple_def_ops"}
!355 = !{!"function_entry_count", i64 24531}
!356 = !{!"tree-ssa-propagate.c:gimple_vdef"}
!357 = !{!"branch_weights", i32 1, i32 24532}
!358 = !{!"function_entry_count", i64 6074935}
!359 = !{!"tree-ssa-propagate.c:gimple_use_ops"}
!360 = !{!"branch_weights", i32 3538, i32 6071399}
!361 = !{!"function_entry_count", i64 5832612}
!362 = !{!"tree-ssa-propagate.c:gimple_vuse"}
!363 = !{!"branch_weights", i32 1257738, i32 4574876}
!364 = !{!"function_entry_count", i64 10897059}
!365 = !{!"tree-ssa-propagate.c:gimple_has_ops"}
!366 = !{i32 0, i32 256}
!367 = !{!"function_entry_count", i64 50468581}
!368 = !{!"tree-ssa-propagate.c:gimple_code"}
!369 = !{!"function_entry_count", i64 5857267}
!370 = !{!"tree-ssa-propagate.c:gimple_has_mem_ops"}
!371 = !{!"function_entry_count", i64 8801274}
!372 = !{!"tree-ssa-propagate.c:get_use_from_ptr"}
!373 = !{!340, !319, i64 24}
!374 = !{!"function_entry_count", i64 237}
!375 = !{!"tree-ssa-propagate.c:get_def_from_ptr"}
!376 = !{!"branch_weights", i32 1, i32 193}
!377 = !{!"branch_weights", i32 164, i32 30}
!378 = !{!"branch_weights", i32 1, i32 30}
!379 = !{!"branch_weights", i32 30, i32 63}
!380 = distinct !{!380, !305}
!381 = !{!"branch_weights", i32 67, i32 98}
!382 = !{!"branch_weights", i32 65, i32 34}
!383 = !{!"branch_weights", i32 65, i32 1}
!384 = !{!"function_entry_count", i64 24104819}
!385 = !{!"tree-ssa-propagate.c:gsi_stmt"}
!386 = !{!387, !319, i64 0}
!387 = !{!"", !319, i64 0, !319, i64 8, !319, i64 16}
!388 = !{!389, !319, i64 0}
!389 = !{!"gimple_seq_node_d", !319, i64 0, !319, i64 8, !319, i64 16}
!390 = !{!"tree-ssa-propagate.c:is_gimple_call"}
!391 = !{!"tree-ssa-propagate.c:gimple_call_lhs"}
!392 = !{!"function_entry_count", i64 29}
!393 = !{!"tree-ssa-propagate.c:VEC_tree_heap_alloc"}
!394 = !{!"tree-ssa-propagate.c:VEC_tree_heap_safe_grow"}
!395 = !{!396, !289, i64 0}
!396 = !{!"VEC_tree_base", !289, i64 0, !289, i64 4, !290, i64 8}
!397 = !{}
!398 = !{!"function_entry_count", i64 92}
!399 = !{!"tree-ssa-propagate.c:VEC_tree_base_replace"}
!400 = !{!"tree-ssa-propagate.c:gimple_call_set_lhs"}
!401 = !{!"branch_weights", i32 30, i32 1}
!402 = !{!"function_entry_count", i64 62}
!403 = !{!"tree-ssa-propagate.c:gimple_set_vuse"}
!404 = !{!"branch_weights", i32 1, i32 63}
!405 = !{!"tree-ssa-propagate.c:gimple_set_vdef"}
!406 = !{!"function_entry_count", i64 126}
!407 = !{!"tree-ssa-propagate.c:gimple_set_location"}
!408 = !{!"tree-ssa-propagate.c:gimple_location"}
!409 = !{!"tree-ssa-propagate.c:VEC_tree_heap_free"}
!410 = !{!"function_entry_count", i64 0}
!411 = !{!"tree-ssa-propagate.c:make_ssa_name"}
!412 = !{!"tree-ssa-propagate.c:gimple_assign_set_lhs"}
!413 = !{!"function_entry_count", i64 4637155}
!414 = !{!"tree-ssa-propagate.c:gimple_op"}
!415 = !{!"branch_weights", i32 1, i32 4637156}
!416 = !{!"function_entry_count", i64 4637184}
!417 = !{!"tree-ssa-propagate.c:gimple_ops"}
!418 = !{!419, !419, i64 0}
!419 = !{!"long", !290, i64 0}
!420 = !{!"branch_weights", i32 1, i32 4637185}
!421 = !{!"tree-ssa-propagate.c:gimple_statement_structure"}
!422 = !{!"tree-ssa-propagate.c:gss_for_code"}
!423 = !{!"tree-ssa-propagate.c:VEC_tree_heap_reserve_exact"}
!424 = !{i32 0, i32 2}
!425 = !{!"tree-ssa-propagate.c:VEC_tree_base_space"}
!426 = !{!396, !289, i64 4}
!427 = !{!"tree-ssa-propagate.c:gimple_set_op"}
!428 = !{!"tree-ssa-propagate.c:gimple_num_ops"}
!429 = !{!"function_entry_count", i64 64492}
!430 = !{!"branch_weights", i32 2839221, i32 64665}
!431 = !{!"branch_weights", i32 64665, i32 1}
!432 = !{!"branch_weights", i32 64493, i32 2839393}
!433 = distinct !{!433, !305}
!434 = !{!"tree-ssa-propagate.c:ssa_prop_init"}
!435 = !{!327, !319, i64 8}
!436 = !{!437, !289, i64 32}
!437 = !{!"control_flow_graph", !319, i64 0, !319, i64 8, !319, i64 16, !289, i64 24, !289, i64 28, !289, i64 32, !319, i64 40, !289, i64 48, !290, i64 52, !290, i64 60, !289, i64 68, !289, i64 72}
!438 = !{!"branch_weights", i32 64493, i32 1}
!439 = !{!"branch_weights", i32 1, i32 64492}
!440 = !{!"branch_weights", i32 2544676, i32 1}
!441 = !{!"branch_weights", i32 4318765, i32 2544676}
!442 = distinct !{!442, !305}
!443 = !{!"branch_weights", i32 907433, i32 1637244}
!444 = !{!"branch_weights", i32 0, i32 907433}
!445 = distinct !{!445, !305}
!446 = !{i64 0, i64 4, !288, i64 8, i64 8, !318}
!447 = !{i64 0, i64 8, !318}
!448 = !{!"branch_weights", i32 1, i32 2544676}
!449 = !{!450, !289, i64 48}
!450 = !{!"edge_def", !319, i64 0, !319, i64 8, !290, i64 16, !319, i64 24, !319, i64 32, !289, i64 40, !289, i64 44, !289, i64 48, !289, i64 52, !419, i64 56}
!451 = !{!"branch_weights", i32 2544676, i32 1300068}
!452 = distinct !{!452, !305}
!453 = !{!"branch_weights", i32 64492, i32 2480185}
!454 = distinct !{!454, !305}
!455 = !{!437, !319, i64 0}
!456 = !{!"branch_weights", i32 64492, i32 1}
!457 = distinct !{!457, !305}
!458 = !{!"function_entry_count", i64 11421716}
!459 = !{!"tree-ssa-propagate.c:cfg_blocks_empty_p"}
!460 = !{!"function_entry_count", i64 8489466}
!461 = !{!"tree-ssa-propagate.c:VEC_gimple_base_length"}
!462 = !{!"branch_weights", i32 1, i32 8489467}
!463 = !{!464, !289, i64 0}
!464 = !{!"VEC_gimple_base", !289, i64 0, !289, i64 4, !290, i64 8}
!465 = !{!"function_entry_count", i64 2839220}
!466 = !{!"tree-ssa-propagate.c:cfg_blocks_get"}
!467 = !{!"branch_weights", i32 2839221, i32 1}
!468 = !{!"branch_weights", i32 1, i32 2839221}
!469 = !{!470, !289, i64 80}
!470 = !{!"basic_block_def", !319, i64 0, !319, i64 8, !319, i64 16, !319, i64 24, !290, i64 32, !319, i64 48, !319, i64 56, !290, i64 64, !419, i64 72, !289, i64 80, !289, i64 84, !289, i64 88, !289, i64 92, !289, i64 96}
!471 = !{!"tree-ssa-propagate.c:simulate_block"}
!472 = !{!437, !319, i64 8}
!473 = !{!"branch_weights", i32 1556037, i32 1283184}
!474 = !{!"branch_weights", i32 0, i32 1556037}
!475 = distinct !{!475, !305}
!476 = !{!"branch_weights", i32 2412866, i32 426356}
!477 = !{!"branch_weights", i32 2412865, i32 1}
!478 = !{!"branch_weights", i32 5624762, i32 1232159}
!479 = !{!"branch_weights", i32 4444055, i32 2412865}
!480 = distinct !{!480, !305}
!481 = !{!"branch_weights", i32 1, i32 2412865}
!482 = !{!"branch_weights", i32 3777064, i32 1}
!483 = !{!"branch_weights", i32 2412865, i32 1364199}
!484 = distinct !{!484, !305}
!485 = !{!"branch_weights", i32 963330292, i32 1184153356}
!486 = !{!"function_entry_count", i64 5678784}
!487 = !{!"tree-ssa-propagate.c:process_ssa_edge_worklist"}
!488 = !{!"branch_weights", i32 2997430, i32 2681355}
!489 = !{!"branch_weights", i32 1232159, i32 1449197}
!490 = distinct !{!490, !305}
!491 = !{!"branch_weights", i32 1449197, i32 1}
!492 = !{!"branch_weights", i32 467295, i32 981903}
!493 = !{!"branch_weights", i32 839690, i32 142214}
!494 = !{!"branch_weights", i32 2681355, i32 0}
!495 = !{!"tree-ssa-propagate.c:ssa_prop_fini"}
!496 = !{!497, !319, i64 0}
!497 = !{!"simple_bitmap_def", !319, i64 0, !289, i64 8, !289, i64 12, !290, i64 16}
!498 = !{!"function_entry_count", i64 128984}
!499 = !{!"tree-ssa-propagate.c:VEC_gimple_gc_alloc"}
!500 = !{!"tree-ssa-propagate.c:VEC_basic_block_heap_alloc"}
!501 = !{!"function_entry_count", i64 67611}
!502 = !{!"tree-ssa-propagate.c:VEC_basic_block_heap_safe_grow"}
!503 = !{!"branch_weights", i32 1, i32 67612}
!504 = !{!505, !289, i64 0}
!505 = !{!"VEC_basic_block_base", !289, i64 0, !289, i64 4, !290, i64 8}
!506 = !{!"function_entry_count", i64 4957541}
!507 = !{!"tree-ssa-propagate.c:gsi_start_bb"}
!508 = !{!387, !319, i64 8}
!509 = !{!387, !319, i64 16}
!510 = !{!"function_entry_count", i64 39006076}
!511 = !{!"tree-ssa-propagate.c:gsi_end_p"}
!512 = !{!"function_entry_count", i64 13133580}
!513 = !{!"tree-ssa-propagate.c:gimple_set_plf"}
!514 = !{!"branch_weights", i32 10452227, i32 2681355}
!515 = !{!"function_entry_count", i64 17056481}
!516 = !{!"tree-ssa-propagate.c:gsi_next"}
!517 = !{!389, !319, i64 16}
!518 = !{!"function_entry_count", i64 6413319}
!519 = !{!"tree-ssa-propagate.c:ei_start_1"}
!520 = !{!"function_entry_count", i64 16851658}
!521 = !{!"tree-ssa-propagate.c:ei_cond"}
!522 = !{!"branch_weights", i32 10438340, i32 6413320}
!523 = !{!"function_entry_count", i64 10438339}
!524 = !{!"tree-ssa-propagate.c:ei_next"}
!525 = !{!"branch_weights", i32 1, i32 10438340}
!526 = !{!"branch_weights", i32 10438340, i32 1}
!527 = !{!528, !289, i64 0}
!528 = !{!"", !289, i64 0, !319, i64 8}
!529 = !{!"function_entry_count", i64 3922102}
!530 = !{!"tree-ssa-propagate.c:add_control_edge"}
!531 = !{!450, !319, i64 8}
!532 = !{!"branch_weights", i32 128553, i32 3793551}
!533 = !{!"branch_weights", i32 3773816, i32 19736}
!534 = !{!"branch_weights", i32 2839221, i32 934596}
!535 = !{!450, !319, i64 0}
!536 = !{!"function_entry_count", i64 7265168}
!537 = !{!"tree-ssa-propagate.c:VEC_basic_block_base_length"}
!538 = !{!"branch_weights", i32 1, i32 7265169}
!539 = !{!"tree-ssa-propagate.c:VEC_basic_block_heap_reserve_exact"}
!540 = !{!"branch_weights", i32 3120, i32 64493}
!541 = !{!"tree-ssa-propagate.c:VEC_basic_block_base_space"}
!542 = !{!505, !289, i64 4}
!543 = !{!"function_entry_count", i64 7373233}
!544 = !{!"tree-ssa-propagate.c:bb_seq"}
!545 = !{!470, !289, i64 96}
!546 = !{!"branch_weights", i32 7373234, i32 1}
!547 = !{!"branch_weights", i32 128985, i32 7244250}
!548 = !{!549, !319, i64 0}
!549 = !{!"gimple_bb_info", !319, i64 0, !319, i64 8}
!550 = !{!"tree-ssa-propagate.c:gimple_seq_first"}
!551 = !{!"branch_weights", i32 128985, i32 4828558}
!552 = !{!553, !319, i64 0}
!553 = !{!"gimple_seq_d", !319, i64 0, !319, i64 8, !319, i64 16}
!554 = !{!"tree-ssa-propagate.c:ei_end_p"}
!555 = !{!"branch_weights", i32 79402, i32 16772258}
!556 = !{!"tree-ssa-propagate.c:ei_edge"}
!557 = !{!"function_entry_count", i64 32577305}
!558 = !{!"tree-ssa-propagate.c:VEC_edge_base_length"}
!559 = !{!"branch_weights", i32 79402, i32 32497905}
!560 = !{!561, !289, i64 0}
!561 = !{!"VEC_edge_base", !289, i64 0, !289, i64 4, !290, i64 8}
!562 = !{!"function_entry_count", i64 75377271}
!563 = !{!"tree-ssa-propagate.c:ei_container"}
!564 = !{!"branch_weights", i32 1, i32 75377272}
!565 = !{!"function_entry_count", i64 10462896}
!566 = !{!"tree-ssa-propagate.c:VEC_edge_base_index"}
!567 = !{!"tree-ssa-propagate.c:cfg_blocks_add"}
!568 = !{!"branch_weights", i32 2646774, i32 192448}
!569 = !{!"branch_weights", i32 3120, i32 2643655}
!570 = !{!470, !319, i64 0}
!571 = !{!"branch_weights", i32 1009464, i32 1634192}
!572 = !{!"branch_weights", i32 74255, i32 935210}
!573 = !{!"function_entry_count", i64 8126528}
!574 = !{!"tree-ssa-propagate.c:VEC_basic_block_base_index"}
!575 = !{!"tree-ssa-propagate.c:VEC_basic_block_base_replace"}
!576 = !{!"function_entry_count", i64 5252085}
!577 = !{!"tree-ssa-propagate.c:SET_BIT"}
!578 = !{!"branch_weights", i32 5252086, i32 1}
!579 = !{!"tree-ssa-propagate.c:RESET_BIT"}
!580 = !{!"function_entry_count", i64 9022462}
!581 = !{!"tree-ssa-propagate.c:simulate_stmt"}
!582 = !{!"branch_weights", i32 4433764, i32 4588700}
!583 = !{!"branch_weights", i32 1010814, i32 3577887}
!584 = !{!"branch_weights", i32 213184427, i32 -2075862266, i32 808086281}
!585 = !{!"branch_weights", i32 1391287, i32 1751192}
!586 = !{!"branch_weights", i32 1751192, i32 1391287}
!587 = !{!"branch_weights", i32 1, i32 1391286}
!588 = !{!"branch_weights", i32 1391286, i32 1360756}
!589 = distinct !{!589, !305}
!590 = !{!"branch_weights", i32 23194, i32 1121140}
!591 = !{!"branch_weights", i32 1121140, i32 23194}
!592 = !{!"function_entry_count", i64 12708259}
!593 = !{!"tree-ssa-propagate.c:gimple_plf"}
!594 = !{!"function_entry_count", i64 14257341}
!595 = !{!"tree-ssa-propagate.c:prop_simulate_again_p"}
!596 = !{!"function_entry_count", i64 1010813}
!597 = !{!"tree-ssa-propagate.c:gimple_phi_result"}
!598 = !{!"function_entry_count", i64 3142477}
!599 = !{!"tree-ssa-propagate.c:prop_set_simulate_again"}
!600 = !{!"function_entry_count", i64 2872330}
!601 = !{!"tree-ssa-propagate.c:add_ssa_edge"}
!602 = !{!"branch_weights", i32 2872330, i32 1}
!603 = !{!"branch_weights", i32 2064894, i32 3169987}
!604 = !{!"branch_weights", i32 2681355, i32 488633}
!605 = !{!"branch_weights", i32 2362550, i32 2872330}
!606 = distinct !{!606, !305}
!607 = !{!"function_entry_count", i64 2889596}
!608 = !{!"tree-ssa-propagate.c:gimple_bb"}
!609 = !{!"tree-ssa-propagate.c:gimple_visited_p"}
!610 = !{!"tree-ssa-propagate.c:gimple_set_visited"}
!611 = !{!"tree-ssa-propagate.c:first_readonly_imm_use"}
!612 = !{!613, !319, i64 8}
!613 = !{!"immediate_use_iterator_d", !319, i64 0, !319, i64 8, !340, i64 16, !319, i64 48}
!614 = !{!340, !319, i64 8}
!615 = !{!613, !319, i64 0}
!616 = !{!"branch_weights", i32 2737211, i32 135121}
!617 = !{!"function_entry_count", i64 16214418}
!618 = !{!"tree-ssa-propagate.c:end_readonly_imm_use_p"}
!619 = !{!"function_entry_count", i64 2681354}
!620 = !{!"tree-ssa-propagate.c:VEC_gimple_gc_safe_push"}
!621 = !{!"function_entry_count", i64 5234879}
!622 = !{!"tree-ssa-propagate.c:next_readonly_imm_use"}
!623 = !{!"branch_weights", i32 2497670, i32 2737211}
!624 = !{!"tree-ssa-propagate.c:VEC_gimple_gc_reserve"}
!625 = !{!"branch_weights", i32 4189, i32 2677167}
!626 = !{!"tree-ssa-propagate.c:VEC_gimple_base_quick_push"}
!627 = !{!"tree-ssa-propagate.c:VEC_gimple_base_space"}
!628 = !{!"branch_weights", i32 1, i32 2681355}
!629 = !{!464, !289, i64 4}
!630 = !{!"tree-ssa-propagate.c:VEC_gimple_base_pop"}
!631 = !{!"tree-ssa-propagate.c:VEC_gimple_gc_free"}
!632 = !{!"branch_weights", i32 1, i32 128985}
!633 = !{!"tree-ssa-propagate.c:VEC_basic_block_heap_free"}
!634 = !{!"branch_weights", i32 1, i32 64493}
!635 = !{!"function_entry_count", i64 30674}
!636 = !{!"branch_weights", i32 38564084, i32 152031330, i32 55926}
!637 = !{!"branch_weights", i32 5, i32 24466}
!638 = !{!"branch_weights", i32 1, i32 24466}
!639 = !{!"branch_weights", i32 24464, i32 3}
!640 = !{!"branch_weights", i32 2314, i32 22151}
!641 = !{!"branch_weights", i32 534195520, i32 8282}
!642 = !{!470, !319, i64 56}
!643 = !{!"branch_weights", i32 2329027, i32 86667}
!644 = !{!"branch_weights", i32 872655, i32 1456372}
!645 = !{!"branch_weights", i32 0, i32 872655}
!646 = distinct !{!646, !305}
!647 = !{i64 0, i64 8, !318, i64 8, i64 8, !318, i64 16, i64 8, !318}
!648 = !{!"branch_weights", i32 2415692, i32 1}
!649 = !{!"branch_weights", i32 4444370, i32 2419072}
!650 = !{!"branch_weights", i32 315192, i32 4129179}
!651 = distinct !{!651, !305}
!652 = !{!"branch_weights", i32 1936840, i32 4611411}
!653 = !{!"branch_weights", i32 4110336, i32 501076}
!654 = !{!"branch_weights", i32 3925532, i32 184805}
!655 = !{!"branch_weights", i32 184805, i32 1}
!656 = !{!"branch_weights", i32 184182, i32 624}
!657 = !{!"branch_weights", i32 184182, i32 1}
!658 = !{!659, !419, i64 24}
!659 = !{!"prop_stats_d", !419, i64 0, !419, i64 8, !419, i64 16, !419, i64 24}
!660 = !{!"branch_weights", i32 6364069, i32 1}
!661 = !{!"branch_weights", i32 3601782, i32 2762288}
!662 = !{!"branch_weights", i32 3556955, i32 44828}
!663 = !{!659, !419, i64 16}
!664 = !{!"branch_weights", i32 83023453, i32 2064460195}
!665 = !{!"branch_weights", i32 2098036554, i32 49447094}
!666 = !{!"branch_weights", i32 184707, i32 1}
!667 = !{!"branch_weights", i32 57363, i32 127345}
!668 = !{i32 0, i32 65536}
!669 = !{!"branch_weights", i32 96298, i32 31048}
!670 = !{!"branch_weights", i32 3442, i32 92857}
!671 = !{!"branch_weights", i32 4447749, i32 2415692}
!672 = !{!"branch_weights", i32 64492, i32 2351201}
!673 = distinct !{!673, !305}
!674 = !{!659, !419, i64 0}
!675 = !{!659, !419, i64 8}
!676 = !{!"function_entry_count", i64 872654}
!677 = !{!"tree-ssa-propagate.c:replace_phi_args_in"}
!678 = !{!"branch_weights", i32 872655, i32 1}
!679 = !{!"branch_weights", i32 1, i32 872654}
!680 = !{!"branch_weights", i32 2121507, i32 407895}
!681 = !{!682, !319, i64 8}
!682 = !{!"prop_value_d", !289, i64 0, !319, i64 8}
!683 = !{!"branch_weights", i32 -2025317550, i32 78395529}
!684 = !{!"branch_weights", i32 96, i32 70738}
!685 = !{!"branch_weights", i32 24558, i32 46181}
!686 = !{!"branch_weights", i32 24558, i32 1}
!687 = !{!"branch_weights", i32 1656747, i32 872654}
!688 = distinct !{!688, !305}
!689 = !{!"function_entry_count", i64 2415692}
!690 = !{!"tree-ssa-propagate.c:gsi_last_bb"}
!691 = !{!"function_entry_count", i64 6863440}
!692 = !{!"tree-ssa-propagate.c:gsi_prev"}
!693 = !{!389, !319, i64 8}
!694 = !{!"function_entry_count", i64 4636963}
!695 = !{!"tree-ssa-propagate.c:gimple_assign_rhs1"}
!696 = !{!"function_entry_count", i64 4110335}
!697 = !{!"tree-ssa-propagate.c:has_zero_uses"}
!698 = !{!"branch_weights", i32 184805, i32 3925532}
!699 = !{!"branch_weights", i32 3925532, i32 1}
!700 = !{!"tree-ssa-propagate.c:replace_uses_in"}
!701 = !{!"branch_weights", i32 6074935, i32 1}
!702 = !{!"branch_weights", i32 -1949688757, i32 55626524}
!703 = !{!"branch_weights", i32 1, i32 145313}
!704 = !{!"branch_weights", i32 820, i32 144494}
!705 = !{!"branch_weights", i32 127331, i32 17164}
!706 = !{!"branch_weights", i32 196940, i32 6074935}
!707 = distinct !{!707, !305}
!708 = !{!"function_entry_count", i64 184706}
!709 = !{!"tree-ssa-propagate.c:is_gimple_assign"}
!710 = !{!"function_entry_count", i64 254688}
!711 = !{!"tree-ssa-propagate.c:get_gimple_rhs_class"}
!712 = !{!"function_entry_count", i64 127344}
!713 = !{!"tree-ssa-propagate.c:gimple_assign_rhs_code"}
!714 = !{!"tree-ssa-propagate.c:update_stmt"}
!715 = !{!"branch_weights", i32 10, i32 184698}
!716 = !{!"tree-ssa-propagate.c:is_gimple_debug"}
!717 = !{!"function_entry_count", i64 3402054}
!718 = !{!"tree-ssa-propagate.c:gimple_phi_num_args"}
!719 = !{!"function_entry_count", i64 2529400}
!720 = !{!"tree-ssa-propagate.c:gimple_phi_arg_def"}
!721 = !{!"function_entry_count", i64 70737}
!722 = !{!"tree-ssa-propagate.c:gimple_phi_arg_imm_use_ptr"}
!723 = !{!"function_entry_count", i64 24557}
!724 = !{!"tree-ssa-propagate.c:gimple_phi_arg_edge"}
!725 = !{!"function_entry_count", i64 2600137}
!726 = !{!"tree-ssa-propagate.c:gimple_phi_arg"}
!727 = !{!"branch_weights", i32 1, i32 2600138}
!728 = !{!"tree-ssa-propagate.c:gimple_seq_last"}
!729 = !{!"branch_weights", i32 1, i32 2415693}
!730 = !{!553, !319, i64 8}
!731 = !{!"tree-ssa-propagate.c:op_iter_init_use"}
!732 = !{!"function_entry_count", i64 12346809}
!733 = !{!"tree-ssa-propagate.c:op_iter_next_use"}
!734 = !{!"branch_weights", i32 6074936, i32 6271875}
!735 = !{!330, !289, i64 24}
!736 = !{!330, !289, i64 28}
!737 = !{!"branch_weights", i32 1, i32 6074936}
!738 = !{!330, !319, i64 32}
!739 = !{!"tree-ssa-propagate.c:gimple_expr_code"}
!740 = !{!"branch_weights", i32 1, i32 509380, i32 2, i32 1}
