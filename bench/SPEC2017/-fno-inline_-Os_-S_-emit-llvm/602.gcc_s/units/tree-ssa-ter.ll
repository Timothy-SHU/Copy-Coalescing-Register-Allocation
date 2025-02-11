; ModuleID = 'tree-ssa-ter.c'
source_filename = "tree-ssa-ter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.temp_expr_table_d = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct._var_map = type { ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, ptr, i32 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }

@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@flag_float_store = external local_unnamed_addr global i32, align 4
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"\0AReplacing Expressions\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c" replace with --> \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_replaceable_exprs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @new_temp_expr_table(ptr noundef %0) #12
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !18
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %15, %12 ], [ %8, %1 ]
  tail call fastcc void @find_replaceable_in_bb(ptr noundef %2, ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = load ptr, ptr @cfun, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %22, label %12, !llvm.loop !19

22:                                               ; preds = %12, %1
  %23 = tail call fastcc ptr @free_temp_expr_table(ptr noundef %2) #12
  ret ptr %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_temp_expr_table(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @xmalloc(i64 noundef 72) #13
  store ptr %0, ptr %2, align 8, !tbaa !21
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %7) #12
  %9 = add i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #13
  %12 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !28
  %13 = load ptr, ptr @cfun, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.gimple_df, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %17) #12
  %19 = add i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = tail call ptr @xcalloc(i64 noundef %20, i64 noundef 8) #13
  %22 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !29
  %23 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #12
  %24 = add i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = tail call ptr @xcalloc(i64 noundef %25, i64 noundef 8) #13
  %27 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 4
  store ptr %26, ptr %27, align 8, !tbaa !30
  %28 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %29 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 6
  store ptr %28, ptr %29, align 8, !tbaa !31
  %30 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #12
  %31 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 5
  store i32 %30, ptr %31, align 8, !tbaa !32
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %33 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 7
  store ptr %32, ptr %33, align 8, !tbaa !33
  %34 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 2
  store ptr null, ptr %34, align 8, !tbaa !34
  %35 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #12
  %36 = zext i32 %35 to i64
  %37 = tail call ptr @xcalloc(i64 noundef %36, i64 noundef 4) #13
  %38 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 8
  store ptr %37, ptr %38, align 8, !tbaa !35
  %39 = load ptr, ptr @cfun, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !23
  %42 = getelementptr inbounds %struct.gimple_df, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !24
  %44 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %43) #12
  %45 = icmp ugt i32 %44, 1
  br i1 %45, label %46, label %69

46:                                               ; preds = %1, %60
  %47 = phi ptr [ %66, %60 ], [ %43, %1 ]
  %48 = phi i32 [ %61, %60 ], [ 1, %1 ]
  %49 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %47, i32 noundef %48) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %46
  %52 = tail call fastcc i32 @var_to_partition(ptr noundef %0, ptr noundef nonnull %49) #12
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %38, align 8, !tbaa !35
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds i32, ptr %55, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !36
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %57, align 4, !tbaa !36
  br label %60

60:                                               ; preds = %51, %54, %46
  %61 = add nuw i32 %48, 1
  %62 = load ptr, ptr @cfun, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.function, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !23
  %65 = getelementptr inbounds %struct.gimple_df, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !24
  %67 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %66) #12
  %68 = icmp ult i32 %61, %67
  br i1 %68, label %46, label %69, !llvm.loop !37

69:                                               ; preds = %60, %1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_replaceable_in_bb(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #12
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12, !range !38
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %90

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 7
  br label %13

13:                                               ; preds = %9, %87
  %14 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12
  %15 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %14) #12, !range !38
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %13
  %18 = tail call fastcc zeroext i8 @is_replaceable_p(ptr noundef %14) #12, !range !38
  %19 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %14, i32 noundef 1) #12
  %20 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %17, %56
  %23 = phi ptr [ %57, %56 ], [ %19, %17 ]
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !39
  %26 = load ptr, ptr %10, align 8, !tbaa !29
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %56, label %31

31:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #14
  %32 = load ptr, ptr %29, align 8, !tbaa !40
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %31
  %35 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %5, ptr noundef %14, i32 noundef 2) #12
  %36 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #12
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %34, %46
  %39 = phi ptr [ %47, %46 ], [ %35, %34 ]
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !39
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !39
  %44 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %29, i32 noundef %43) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %5) #12
  %48 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #12
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %38, label %50, !llvm.loop !42

50:                                               ; preds = %46, %34, %31
  %51 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %14) #12, !range !38
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38, %50
  tail call fastcc void @finished_with_expr(ptr noundef nonnull %0, i32 noundef %25, i8 noundef zeroext 1) #12
  br label %55

54:                                               ; preds = %50
  tail call fastcc void @mark_replaceable(ptr noundef nonnull %0, ptr noundef %23, i8 noundef zeroext %18) #12
  br label %55

55:                                               ; preds = %54, %53
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  br label %56

56:                                               ; preds = %55, %22
  %57 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #12
  %58 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #12
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %22, label %60, !llvm.loop !43

60:                                               ; preds = %56, %17
  %61 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %14, i32 noundef 2) #12
  %62 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #12
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %60, %75
  %65 = phi ptr [ %76, %75 ], [ %61, %60 ]
  %66 = tail call fastcc i32 @var_to_partition(ptr noundef %6, ptr noundef %65) #12
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %11, align 8, !tbaa !30
  %70 = sext i32 %66 to i64
  %71 = getelementptr inbounds ptr, ptr %69, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  tail call fastcc void @kill_expr(ptr noundef nonnull %0, i32 noundef %66) #12
  br label %75

75:                                               ; preds = %64, %68, %74
  %76 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #12
  %77 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #12
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %64, label %79, !llvm.loop !44

79:                                               ; preds = %75, %60
  %80 = icmp eq i8 %18, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %79
  tail call fastcc void @process_replaceable(ptr noundef nonnull %0, ptr noundef %14) #12
  br label %82

82:                                               ; preds = %81, %79
  %83 = load ptr, ptr %12, align 8, !tbaa !33
  tail call void @bitmap_clear(ptr noundef %83) #13
  %84 = tail call fastcc ptr @gimple_vdef(ptr noundef %14) #12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call fastcc void @kill_virtual_exprs(ptr noundef nonnull %0) #12
  br label %87

87:                                               ; preds = %82, %86, %13
  call fastcc void @gsi_next(ptr noundef nonnull %3) #12
  %88 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12, !range !38
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %13, label %90, !llvm.loop !45

90:                                               ; preds = %87, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @free_temp_expr_table(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !31
  tail call void @bitmap_obstack_free(ptr noundef %3) #13
  store ptr null, ptr %2, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !33
  tail call void @bitmap_obstack_free(ptr noundef %5) #13
  store ptr null, ptr %4, align 8, !tbaa !33
  %6 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  tail call void @free(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  tail call void @free(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !28
  tail call void @free(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  tail call void @free(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  tail call void @free(ptr noundef %0) #12
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !46
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @num_var_partitions(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !48
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @var_to_partition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 147, ptr noundef nonnull @.str.1) #13
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !39
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.partition_def, ptr %8, i64 0, i32 1, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %7
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !36
  br label %21

21:                                               ; preds = %17, %7
  %22 = phi i32 [ %20, %17 ], [ %13, %7 ]
  ret i32 %22
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #12
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #12
  store ptr %4, ptr %0, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !60
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_replaceable_p(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #12, !range !38
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %92, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %92

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @single_ssa_tree_operand(ptr noundef %0) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %92, label %12

12:                                               ; preds = %9
  %13 = call fastcc zeroext i8 @single_imm_use(ptr noundef nonnull %10, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %92, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 8, !tbaa !6
  %17 = call fastcc ptr @gimple_bb(ptr noundef %16) #12
  %18 = call fastcc ptr @gimple_bb(ptr noundef %0) #12
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %92

20:                                               ; preds = %15
  %21 = call fastcc i32 @gimple_location(ptr noundef %0) #12
  %22 = call fastcc ptr @gimple_block(ptr noundef %0) #12
  %23 = call fastcc i32 @gimple_code(ptr noundef %16) #12, !range !60
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, ptr @optimize, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %92

28:                                               ; preds = %20
  %29 = call fastcc i32 @gimple_location(ptr noundef %16) #12
  %30 = call fastcc ptr @gimple_block(ptr noundef %16) #12
  %31 = load i32, ptr @optimize, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28, %25
  %34 = phi ptr [ %30, %28 ], [ null, %25 ]
  %35 = phi i32 [ %29, %28 ], [ 0, %25 ]
  %36 = icmp eq i32 %21, 0
  %37 = icmp eq i32 %21, %35
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %92

39:                                               ; preds = %33
  %40 = icmp ne ptr %22, null
  %41 = icmp ne ptr %22, %34
  %42 = select i1 %40, i1 %41, i1 false
  %43 = or i1 %24, %42
  br i1 %43, label %92, label %44

44:                                               ; preds = %28, %39
  %45 = phi i1 [ false, %39 ], [ true, %28 ]
  %46 = call fastcc ptr @gimple_vdef(ptr noundef %0) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %92

48:                                               ; preds = %44
  %49 = call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %0) #12, !range !38
  %50 = icmp eq i8 %49, 0
  %51 = or i1 %45, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %48
  %53 = load i32, ptr @flag_float_store, align 4, !tbaa !36
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %52
  %56 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #12
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 9
  br i1 %59, label %92, label %60

60:                                               ; preds = %55
  %61 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #12
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 13
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #12
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 14
  br i1 %69, label %70, label %77

70:                                               ; preds = %65, %60
  %71 = call fastcc ptr @gimple_expr_type(ptr noundef %0) #12
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !39
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 9
  br i1 %76, label %92, label %77

77:                                               ; preds = %70, %65, %52
  %78 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #12, !range !61
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #12
  %82 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %81, i64 0, i32 4
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80, %77
  %87 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #12, !range !38
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #12, !range !38
  %91 = xor i8 %90, 1
  br label %92

92:                                               ; preds = %25, %39, %89, %86, %80, %55, %70, %48, %44, %33, %15, %12, %9, %6, %1
  %93 = phi i8 [ 0, %1 ], [ 0, %6 ], [ 0, %9 ], [ 0, %12 ], [ 0, %15 ], [ 0, %39 ], [ 0, %33 ], [ 0, %44 ], [ 0, %48 ], [ 0, %70 ], [ 0, %55 ], [ 0, %80 ], [ 0, %86 ], [ %91, %89 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret i8 %93
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !62
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i8, ptr %0, align 8, !tbaa !64
  ret i8 %2
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #12
  %8 = load ptr, ptr %3, align 8, !tbaa !66
  store ptr %8, ptr %2, align 8, !tbaa !65
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #12
  %17 = load ptr, ptr %11, align 8, !tbaa !72
  store ptr %17, ptr %10, align 8, !tbaa !69
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #12, !range !38
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
define internal fastcc void @finished_with_expr(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !28
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %4) #12
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #12, !range !38
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %12, %15
  %16 = load i32, ptr %4, align 4, !tbaa !36
  tail call fastcc void @remove_from_partition_kill_list(ptr noundef %0, i32 noundef %16, i32 noundef %1) #12
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #12
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #12, !range !38
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %15, !llvm.loop !73

19:                                               ; preds = %15
  %20 = load ptr, ptr %6, align 8, !tbaa !28
  %21 = getelementptr inbounds ptr, ptr %20, i64 %8
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi ptr [ %22, %19 ], [ %10, %12 ]
  tail call void @bitmap_obstack_free(ptr noundef %24) #13
  %25 = load ptr, ptr %6, align 8, !tbaa !28
  %26 = getelementptr inbounds ptr, ptr %25, i64 %8
  store ptr null, ptr %26, align 8, !tbaa !6
  br label %27

27:                                               ; preds = %23, %3
  %28 = icmp eq i8 %2, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = getelementptr inbounds ptr, ptr %31, i64 %8
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %33) #13
  %34 = load ptr, ptr %30, align 8, !tbaa !29
  %35 = getelementptr inbounds ptr, ptr %34, i64 %8
  store ptr null, ptr %35, align 8, !tbaa !6
  br label %36

36:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_replaceable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !39
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !33
  %17 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %16, ptr noundef nonnull %12) #13
  br label %18

18:                                               ; preds = %14, %7, %3
  %19 = zext i1 %6 to i8
  tail call fastcc void @finished_with_expr(ptr noundef %0, i32 noundef %5, i8 noundef zeroext %19) #12
  %20 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  store ptr %24, ptr %20, align 8, !tbaa !34
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %21, %18 ]
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %26, i32 noundef %5) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @kill_expr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 4
  %4 = sext i32 %1 to i64
  %5 = load ptr, ptr %3, align 8, !tbaa !30
  %6 = getelementptr inbounds ptr, ptr %5, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %2 ]
  %11 = tail call i32 @bitmap_first_set_bit(ptr noundef nonnull %10) #13
  tail call fastcc void @finished_with_expr(ptr noundef nonnull %0, i32 noundef %11, i8 noundef zeroext 1) #12
  %12 = load ptr, ptr %3, align 8, !tbaa !30
  %13 = getelementptr inbounds ptr, ptr %12, i64 %4
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !llvm.loop !74

16:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_replaceable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #14
  %4 = tail call fastcc ptr @single_ssa_tree_operand(ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !39
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %11) #13
  %13 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 1) #12
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %16, %40
  %19 = phi ptr [ %13, %16 ], [ %41, %40 ]
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !39
  %22 = load ptr, ptr %17, align 8, !tbaa !29
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  tail call fastcc void @add_dependence(ptr noundef %0, i32 noundef %6, ptr noundef %19) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %18
  %28 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %9, ptr noundef nonnull %25) #13
  %29 = load ptr, ptr %17, align 8, !tbaa !29
  %30 = getelementptr inbounds ptr, ptr %29, i64 %23
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %31) #13
  %32 = load ptr, ptr %17, align 8, !tbaa !29
  %33 = getelementptr inbounds ptr, ptr %32, i64 %23
  store ptr null, ptr %33, align 8, !tbaa !6
  br label %40

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !39
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %38) #13
  br label %40

40:                                               ; preds = %34, %27
  %41 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #12
  %42 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #12
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %18, label %44, !llvm.loop !75

44:                                               ; preds = %40, %2
  %45 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !29
  %47 = sext i32 %6 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr %9, ptr %48, align 8, !tbaa !6
  %49 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !32
  tail call fastcc void @make_dependent_on_partition(ptr noundef nonnull %0, i32 noundef %6, i32 noundef %53) #12
  %54 = load i32, ptr %52, align 8, !tbaa !32
  tail call fastcc void @add_to_partition_kill_list(ptr noundef nonnull %0, i32 noundef %54, i32 noundef %6) #12
  br label %55

55:                                               ; preds = %51, %44
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #12, !range !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @kill_virtual_exprs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !32
  tail call fastcc void @kill_expr(ptr noundef %0, i32 noundef %3) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  store ptr %4, ptr %0, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !77
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !39
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !60
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @single_ssa_tree_operand(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14
  %3 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 2) #12
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #12
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #12
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr null, ptr %3
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ null, %1 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !6
  store ptr null, ptr %2, align 8, !tbaa !6
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #12, !range !38
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !6
  %19 = load ptr, ptr %5, align 8, !tbaa !82
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !39
  store ptr %21, ptr %2, align 8, !tbaa !6
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !36
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #13
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !39
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #12, !range !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #12
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !60
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #12
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #12, !range !61
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #12
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #13
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #12, !range !61
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #12, !range !60
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #12
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
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !60
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !60
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #12, !range !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #12
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !60
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #12
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !83
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !60
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #12
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !36
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !60
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.1) #13
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #6 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !39
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = and i32 %2, 10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !69
  br label %17

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #12
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !69
  %11 = icmp eq ptr %9, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %9, align 8, !tbaa !72
  store ptr %16, ptr %10, align 8, !tbaa !69
  br label %17

17:                                               ; preds = %6, %15, %12, %8
  %18 = and i32 %2, 5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %21, align 8, !tbaa !65
  br label %31

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #12
  %24 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !65
  %25 = icmp eq ptr %23, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %23, align 8, !tbaa !66
  store ptr %30, ptr %24, align 8, !tbaa !65
  br label %31

31:                                               ; preds = %20, %29, %26, %22
  store i8 0, ptr %0, align 8, !tbaa !64
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !38
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = load ptr, ptr %1, align 8, !tbaa !40
  store ptr %4, ptr %0, align 8, !tbaa !85
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !87
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !85
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !88
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !83
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !91
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !36
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !36
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !92

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !36
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !36
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !90
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !85
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !90
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !83
  store i64 %35, ptr %3, align 8, !tbaa !91
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !36
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !36
  %40 = load i32, ptr %23, align 8, !tbaa !90
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !90
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !93

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !94
  store ptr %44, ptr %0, align 8, !tbaa !85
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !88
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !36
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !91
  store i32 %16, ptr %1, align 4, !tbaa !36
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_from_partition_kill_list(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %8, i32 noundef %2) #13
  %10 = load ptr, ptr %4, align 8, !tbaa !30
  %11 = getelementptr inbounds ptr, ptr %10, i64 %6
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %17, i32 noundef %1) #13
  %19 = load ptr, ptr %4, align 8, !tbaa !30
  %20 = getelementptr inbounds ptr, ptr %19, i64 %6
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  tail call void @bitmap_obstack_free(ptr noundef %21) #13
  %22 = load ptr, ptr %4, align 8, !tbaa !30
  %23 = getelementptr inbounds ptr, ptr %22, i64 %6
  store ptr null, ptr %23, align 8, !tbaa !6
  br label %24

24:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !91
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !91
  %6 = load i32, ptr %1, align 4, !tbaa !36
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_dependence(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !39
  %8 = tail call fastcc zeroext i8 @version_to_be_replaced_p(ptr noundef %0, i32 noundef %7) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %55, label %15

15:                                               ; preds = %10
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %12, ptr noundef nonnull %5) #12
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !range !38
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15, %18
  %19 = load i32, ptr %5, align 4, !tbaa !36
  tail call fastcc void @add_to_partition_kill_list(ptr noundef %0, i32 noundef %19, i32 noundef %1) #12
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !range !38
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %18, !llvm.loop !95

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %31 = load ptr, ptr %23, align 8, !tbaa !28
  %32 = getelementptr inbounds ptr, ptr %31, i64 %25
  store ptr %30, ptr %32, align 8, !tbaa !6
  %33 = load ptr, ptr %23, align 8, !tbaa !28
  %34 = getelementptr inbounds ptr, ptr %33, i64 %25
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi ptr [ %35, %29 ], [ %27, %22 ]
  %38 = load ptr, ptr %11, align 8, !tbaa !33
  %39 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %37, ptr noundef %38) #13
  %40 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !31
  %42 = load ptr, ptr %11, align 8, !tbaa !33
  %43 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %41, ptr noundef %42) #13
  %44 = load ptr, ptr %11, align 8, !tbaa !33
  tail call void @bitmap_clear(ptr noundef %44) #13
  br label %55

45:                                               ; preds = %3
  %46 = load ptr, ptr %0, align 8, !tbaa !21
  %47 = tail call fastcc i32 @var_to_partition(ptr noundef %46, ptr noundef nonnull %2) #12
  %48 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds i32, ptr %49, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !36
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  tail call fastcc void @add_to_partition_kill_list(ptr noundef nonnull %0, i32 noundef %47, i32 noundef %1) #12
  tail call fastcc void @make_dependent_on_partition(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %47) #12
  br label %55

55:                                               ; preds = %45, %54, %10, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_dependent_on_partition(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %12 = load ptr, ptr %4, align 8, !tbaa !28
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %11, ptr %13, align 8, !tbaa !6
  %14 = load ptr, ptr %4, align 8, !tbaa !28
  %15 = getelementptr inbounds ptr, ptr %14, i64 %6
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %10, %3
  %18 = phi ptr [ %16, %10 ], [ %8, %3 ]
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_partition_kill_list(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %12 = load ptr, ptr %4, align 8, !tbaa !30
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %11, ptr %13, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %1) #13
  %17 = load ptr, ptr %4, align 8, !tbaa !30
  %18 = getelementptr inbounds ptr, ptr %17, i64 %6
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %10, %3
  %21 = phi ptr [ %19, %10 ], [ %8, %3 ]
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @version_to_be_replaced_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %4, i32 noundef %1) #13
  %8 = trunc i32 %7 to i8
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i8 [ %8, %6 ], [ 0, %2 ]
  ret i8 %10
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_replaceable_exprs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 23, i64 1, ptr %0)
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %2, %26
  %12 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %13 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %12) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @cfun, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !23
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %12) #12
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %21, i32 noundef 2) #13
  %22 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 18, i64 1, ptr %0)
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %24, i32 noundef 0, i32 noundef 2) #13
  %25 = tail call i32 @fputc(i32 10, ptr %0)
  br label %26

26:                                               ; preds = %11, %15
  %27 = add nuw i32 %12, 1
  %28 = load ptr, ptr @cfun, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !23
  %31 = getelementptr inbounds %struct.gimple_df, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !24
  %33 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %32) #12
  %34 = icmp ult i32 %27, %33
  br i1 %34, label %11, label %35, !llvm.loop !96

35:                                               ; preds = %26, %2
  %36 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 8}
!11 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!12 = !{!"int", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 60, !12, i64 68, !12, i64 72}
!15 = !{!16, !7, i64 56}
!16 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !17, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!17 = !{!"long", !8, i64 0}
!18 = !{!14, !7, i64 8}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!22, !7, i64 0}
!22 = !{!"temp_expr_table_d", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !7, i64 48, !7, i64 56, !7, i64 64}
!23 = !{!11, !7, i64 24}
!24 = !{!25, !7, i64 16}
!25 = !{!"gimple_df", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !26, i64 32, !26, i64 48, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !12, i64 96, !27, i64 104}
!26 = !{!"pt_solution", !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !12, i64 0, !7, i64 8}
!27 = !{!"ssa_operands", !7, i64 0, !12, i64 8, !12, i64 12, !8, i64 16, !7, i64 24, !7, i64 32}
!28 = !{!22, !7, i64 8}
!29 = !{!22, !7, i64 24}
!30 = !{!22, !7, i64 32}
!31 = !{!22, !7, i64 48}
!32 = !{!22, !12, i64 40}
!33 = !{!22, !7, i64 56}
!34 = !{!22, !7, i64 16}
!35 = !{!22, !7, i64 64}
!36 = !{!12, !12, i64 0}
!37 = distinct !{!37, !20}
!38 = !{i8 0, i8 2}
!39 = !{!8, !8, i64 0}
!40 = !{!41, !7, i64 0}
!41 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !12, i64 16, !7, i64 24}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = distinct !{!45, !20}
!46 = !{!47, !12, i64 0}
!47 = !{!"VEC_tree_base", !12, i64 0, !12, i64 4, !8, i64 8}
!48 = !{!49, !12, i64 24}
!49 = !{!"_var_map", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !7, i64 48}
!50 = !{!49, !7, i64 0}
!51 = !{!52, !12, i64 0}
!52 = !{!"partition_elem", !12, i64 0, !7, i64 8, !12, i64 16}
!53 = !{!49, !7, i64 8}
!54 = !{!55, !7, i64 0}
!55 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!56 = !{!55, !7, i64 8}
!57 = !{!55, !7, i64 16}
!58 = !{!59, !7, i64 0}
!59 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!60 = !{i32 0, i32 256}
!61 = !{i32 0, i32 65536}
!62 = !{!63, !12, i64 4}
!63 = !{!"ssa_operand_iterator_d", !8, i64 0, !12, i64 4, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !7, i64 32}
!64 = !{!63, !8, i64 0}
!65 = !{!63, !7, i64 16}
!66 = !{!67, !7, i64 0}
!67 = !{!"use_optype_d", !7, i64 0, !68, i64 8}
!68 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!69 = !{!63, !7, i64 8}
!70 = !{!71, !7, i64 8}
!71 = !{!"def_optype_d", !7, i64 0, !7, i64 8}
!72 = !{!71, !7, i64 0}
!73 = distinct !{!73, !20}
!74 = distinct !{!74, !20}
!75 = distinct !{!75, !20}
!76 = !{!59, !7, i64 16}
!77 = !{!16, !12, i64 96}
!78 = !{!79, !7, i64 0}
!79 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!80 = !{!81, !7, i64 0}
!81 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!82 = !{!68, !7, i64 8}
!83 = !{!17, !17, i64 0}
!84 = !{!68, !7, i64 24}
!85 = !{!86, !7, i64 0}
!86 = !{!"", !7, i64 0, !7, i64 8, !12, i64 16, !17, i64 24}
!87 = !{!86, !7, i64 8}
!88 = !{!89, !12, i64 16}
!89 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !12, i64 16, !8, i64 24}
!90 = !{!86, !12, i64 16}
!91 = !{!86, !17, i64 24}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = !{!89, !7, i64 0}
!95 = distinct !{!95, !20}
!96 = distinct !{!96, !20}
