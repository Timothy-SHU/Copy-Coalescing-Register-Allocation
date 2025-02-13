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
define dso_local ptr @find_replaceable_exprs(ptr noundef %0) local_unnamed_addr #0 !prof !163 {
  %2 = tail call fastcc ptr @new_temp_expr_table(ptr noundef %0) #12
  %3 = load ptr, ptr @cfun, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !168
  %6 = load ptr, ptr %5, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !173
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !176
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %22, label %12, !prof !177

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %15, %12 ], [ %8, %1 ]
  tail call fastcc void @find_replaceable_in_bb(ptr noundef %2, ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !173
  %16 = load ptr, ptr @cfun, align 8, !tbaa !164
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !168
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !176
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %22, label %12, !prof !178, !llvm.loop !179

22:                                               ; preds = %12, %1
  %23 = tail call fastcc ptr @free_temp_expr_table(ptr noundef %2) #12
  ret ptr %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_temp_expr_table(ptr noundef %0) unnamed_addr #0 !prof !163 !PGOFuncName !181 {
  %2 = tail call ptr @xmalloc(i64 noundef 72) #13
  store ptr %0, ptr %2, align 8, !tbaa !182
  %3 = load ptr, ptr @cfun, align 8, !tbaa !164
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !185
  %8 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %7) #12
  %9 = add i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 8) #13
  %12 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !189
  %13 = load ptr, ptr @cfun, align 8, !tbaa !164
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !184
  %16 = getelementptr inbounds %struct.gimple_df, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %17) #12
  %19 = add i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = tail call ptr @xcalloc(i64 noundef %20, i64 noundef 8) #13
  %22 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !190
  %23 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #12
  %24 = add i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = tail call ptr @xcalloc(i64 noundef %25, i64 noundef 8) #13
  %27 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 4
  store ptr %26, ptr %27, align 8, !tbaa !191
  %28 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %29 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 6
  store ptr %28, ptr %29, align 8, !tbaa !192
  %30 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #12
  %31 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 5
  store i32 %30, ptr %31, align 8, !tbaa !193
  %32 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %33 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 7
  store ptr %32, ptr %33, align 8, !tbaa !194
  %34 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 2
  store ptr null, ptr %34, align 8, !tbaa !195
  %35 = tail call fastcc i32 @num_var_partitions(ptr noundef %0) #12
  %36 = zext i32 %35 to i64
  %37 = tail call ptr @xcalloc(i64 noundef %36, i64 noundef 4) #13
  %38 = getelementptr inbounds %struct.temp_expr_table_d, ptr %2, i64 0, i32 8
  store ptr %37, ptr %38, align 8, !tbaa !196
  %39 = load ptr, ptr @cfun, align 8, !tbaa !164
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !184
  %42 = getelementptr inbounds %struct.gimple_df, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !185
  %44 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %43) #12
  %45 = icmp ugt i32 %44, 1
  br i1 %45, label %46, label %69, !prof !197

46:                                               ; preds = %1, %60
  %47 = phi ptr [ %66, %60 ], [ %43, %1 ]
  %48 = phi i32 [ %61, %60 ], [ 1, %1 ]
  %49 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %47, i32 noundef %48) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %60, label %51, !prof !198

51:                                               ; preds = %46
  %52 = tail call fastcc i32 @var_to_partition(ptr noundef %0, ptr noundef nonnull %49) #12
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %60, label %54, !prof !199

54:                                               ; preds = %51
  %55 = load ptr, ptr %38, align 8, !tbaa !196
  %56 = sext i32 %52 to i64
  %57 = getelementptr inbounds i32, ptr %55, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !200
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %57, align 4, !tbaa !200
  br label %60

60:                                               ; preds = %51, %54, %46
  %61 = add nuw i32 %48, 1
  %62 = load ptr, ptr @cfun, align 8, !tbaa !164
  %63 = getelementptr inbounds %struct.function, ptr %62, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !184
  %65 = getelementptr inbounds %struct.gimple_df, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !185
  %67 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %66) #12
  %68 = icmp ult i32 %61, %67
  br i1 %68, label %46, label %69, !prof !201, !llvm.loop !202

69:                                               ; preds = %60, %1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_replaceable_in_bb(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !203 !PGOFuncName !204 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #12
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12, !range !205
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %90, !prof !206

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 7
  br label %13

13:                                               ; preds = %9, %87
  %14 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12
  %15 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %14) #12, !range !205
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %87, !prof !207

17:                                               ; preds = %13
  %18 = tail call fastcc zeroext i8 @is_replaceable_p(ptr noundef %14) #12, !range !205
  %19 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %14, i32 noundef 1) #12
  %20 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %60, !prof !208

22:                                               ; preds = %17, %56
  %23 = phi ptr [ %57, %56 ], [ %19, %17 ]
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %23, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !209
  %26 = load ptr, ptr %10, align 8, !tbaa !190
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !164
  %30 = icmp eq ptr %29, null
  br i1 %30, label %56, label %31, !prof !210

31:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #14
  %32 = load ptr, ptr %29, align 8, !tbaa !211
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34, !prof !213

34:                                               ; preds = %31
  %35 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %5, ptr noundef %14, i32 noundef 2) #12
  %36 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #12
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %50, !prof !214

38:                                               ; preds = %34, %46
  %39 = phi ptr [ %47, %46 ], [ %35, %34 ]
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !209
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %41, i64 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !209
  %44 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %29, i32 noundef %43) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53, !prof !215

46:                                               ; preds = %38
  %47 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %5) #12
  %48 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #12
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %38, label %50, !prof !216, !llvm.loop !217

50:                                               ; preds = %46, %34, %31
  %51 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %14) #12, !range !205
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %54, label %53, !prof !218

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
  br i1 %59, label %22, label %60, !prof !219, !llvm.loop !220

60:                                               ; preds = %56, %17
  %61 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %4, ptr noundef %14, i32 noundef 2) #12
  %62 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #12
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %79, !prof !221

64:                                               ; preds = %60, %75
  %65 = phi ptr [ %76, %75 ], [ %61, %60 ]
  %66 = tail call fastcc i32 @var_to_partition(ptr noundef %6, ptr noundef %65) #12
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %75, label %68, !prof !222

68:                                               ; preds = %64
  %69 = load ptr, ptr %11, align 8, !tbaa !191
  %70 = sext i32 %66 to i64
  %71 = getelementptr inbounds ptr, ptr %69, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !164
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74, !prof !223

74:                                               ; preds = %68
  tail call fastcc void @kill_expr(ptr noundef nonnull %0, i32 noundef %66) #12
  br label %75

75:                                               ; preds = %64, %68, %74
  %76 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %4) #12
  %77 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #12
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %64, label %79, !prof !224, !llvm.loop !225

79:                                               ; preds = %75, %60
  %80 = icmp eq i8 %18, 0
  br i1 %80, label %82, label %81, !prof !226

81:                                               ; preds = %79
  tail call fastcc void @process_replaceable(ptr noundef nonnull %0, ptr noundef %14) #12
  br label %82

82:                                               ; preds = %81, %79
  %83 = load ptr, ptr %12, align 8, !tbaa !194
  tail call void @bitmap_clear(ptr noundef %83) #13
  %84 = tail call fastcc ptr @gimple_vdef(ptr noundef %14) #12
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86, !prof !227

86:                                               ; preds = %82
  tail call fastcc void @kill_virtual_exprs(ptr noundef nonnull %0) #12
  br label %87

87:                                               ; preds = %82, %86, %13
  call fastcc void @gsi_next(ptr noundef nonnull %3) #12
  %88 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #12, !range !205
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %13, label %90, !prof !228, !llvm.loop !229

90:                                               ; preds = %87, %2
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @free_temp_expr_table(ptr nocapture noundef %0) unnamed_addr #0 !prof !163 !PGOFuncName !230 {
  %2 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !192
  tail call void @bitmap_obstack_free(ptr noundef %3) #13
  store ptr null, ptr %2, align 8, !tbaa !192
  %4 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !194
  tail call void @bitmap_obstack_free(ptr noundef %5) #13
  store ptr null, ptr %4, align 8, !tbaa !194
  %6 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !190
  tail call void @free(ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !191
  tail call void @free(ptr noundef %9) #12
  %10 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !189
  tail call void @free(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !196
  tail call void @free(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !195
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
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !231 !PGOFuncName !232 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !233

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !234
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @num_var_partitions(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !236 !PGOFuncName !237 {
  %2 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !238
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !240 !PGOFuncName !241 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @var_to_partition(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !242 !PGOFuncName !243 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %7, label %6, !prof !244

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 147, ptr noundef nonnull @.str.1) #13
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !245
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !209
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.partition_def, ptr %8, i64 0, i32 1, i64 %11
  %13 = load i32, ptr %12, align 8, !tbaa !246
  %14 = getelementptr inbounds %struct._var_map, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !248
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !249

17:                                               ; preds = %7
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds i32, ptr %15, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !200
  br label %21

21:                                               ; preds = %17, %7
  %22 = phi i32 [ %20, %17 ], [ %13, %7 ]
  ret i32 %22
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !203 !PGOFuncName !250 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #12
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #12
  store ptr %4, ptr %0, align 8, !tbaa !251
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !253
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !254
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !255 !PGOFuncName !256 {
  %2 = load ptr, ptr %0, align 8, !tbaa !251
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !257 !PGOFuncName !258 {
  %2 = load ptr, ptr %0, align 8, !tbaa !251
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !261 !PGOFuncName !262 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !263
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_replaceable_p(ptr noundef %0) unnamed_addr #0 !prof !257 !PGOFuncName !264 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %4 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #12, !range !205
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %92, label %6, !prof !265

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef %0) #13
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %92, !prof !266

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @single_ssa_tree_operand(ptr noundef %0) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %92, label %12, !prof !267

12:                                               ; preds = %9
  %13 = call fastcc zeroext i8 @single_imm_use(ptr noundef nonnull %10, ptr noundef nonnull %2, ptr noundef nonnull %3) #12
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %92, label %15, !prof !268

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 8, !tbaa !164
  %17 = call fastcc ptr @gimple_bb(ptr noundef %16) #12
  %18 = call fastcc ptr @gimple_bb(ptr noundef %0) #12
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %92, !prof !269

20:                                               ; preds = %15
  %21 = call fastcc i32 @gimple_location(ptr noundef %0) #12
  %22 = call fastcc ptr @gimple_block(ptr noundef %0) #12
  %23 = call fastcc i32 @gimple_code(ptr noundef %16) #12, !range !263
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %28, !prof !270

25:                                               ; preds = %20
  %26 = load i32, ptr @optimize, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %92, !prof !271

28:                                               ; preds = %20
  %29 = call fastcc i32 @gimple_location(ptr noundef %16) #12
  %30 = call fastcc ptr @gimple_block(ptr noundef %16) #12
  %31 = load i32, ptr @optimize, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44, !prof !271

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
  br i1 %43, label %92, label %44, !prof !272

44:                                               ; preds = %28, %39
  %45 = phi i1 [ false, %39 ], [ true, %28 ]
  %46 = call fastcc ptr @gimple_vdef(ptr noundef %0) #12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %92, !prof !273

48:                                               ; preds = %44
  %49 = call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %0) #12, !range !205
  %50 = icmp eq i8 %49, 0
  %51 = or i1 %45, %50
  br i1 %51, label %52, label %92, !prof !274

52:                                               ; preds = %48
  %53 = load i32, ptr @flag_float_store, align 4, !tbaa !200
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %77, label %55, !prof !273

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
  %73 = load ptr, ptr %72, align 8, !tbaa !209
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 9
  br i1 %76, label %92, label %77

77:                                               ; preds = %70, %65, %52
  %78 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #12, !range !275
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %80, label %86, !prof !276

80:                                               ; preds = %77
  %81 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #12
  %82 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %81, i64 0, i32 4
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 2
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92, !prof !277

86:                                               ; preds = %80, %77
  %87 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #12, !range !205
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %92, !prof !273

89:                                               ; preds = %86
  %90 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %0) #12, !range !205
  %91 = xor i8 %90, 1
  br label %92

92:                                               ; preds = %25, %39, %89, %86, %80, %55, %70, %48, %44, %33, %15, %12, %9, %6, %1
  %93 = phi i8 [ 0, %1 ], [ 0, %6 ], [ 0, %9 ], [ 0, %12 ], [ 0, %15 ], [ 0, %39 ], [ 0, %33 ], [ 0, %44 ], [ 0, %48 ], [ 0, %70 ], [ 0, %55 ], [ 0, %80 ], [ 0, %86 ], [ %91, %89 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret i8 %93
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 !prof !278 !PGOFuncName !279 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !280
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #12
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !282 !PGOFuncName !283 {
  %2 = load i8, ptr %0, align 8, !tbaa !284
  ret i8 %2
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #4 !prof !282 !PGOFuncName !285 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !286
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !287

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #12
  %8 = load ptr, ptr %3, align 8, !tbaa !288
  store ptr %8, ptr %2, align 8, !tbaa !286
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !291
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !292

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !293
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #12
  %17 = load ptr, ptr %11, align 8, !tbaa !295
  store ptr %17, ptr %10, align 8, !tbaa !291
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !284
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !296 !PGOFuncName !297 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #12, !range !205
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !298

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
define internal fastcc void @finished_with_expr(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !299 !PGOFuncName !300 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !189
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !164
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12, !prof !301

12:                                               ; preds = %3
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %10, ptr noundef nonnull %4) #12
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #12, !range !205
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %23, label %15, !prof !302

15:                                               ; preds = %12, %15
  %16 = load i32, ptr %4, align 4, !tbaa !200
  tail call fastcc void @remove_from_partition_kill_list(ptr noundef %0, i32 noundef %16, i32 noundef %1) #12
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #12
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #12, !range !205
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %15, !prof !303, !llvm.loop !304

19:                                               ; preds = %15
  %20 = load ptr, ptr %6, align 8, !tbaa !189
  %21 = getelementptr inbounds ptr, ptr %20, i64 %8
  %22 = load ptr, ptr %21, align 8, !tbaa !164
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi ptr [ %22, %19 ], [ %10, %12 ]
  tail call void @bitmap_obstack_free(ptr noundef %24) #13
  %25 = load ptr, ptr %6, align 8, !tbaa !189
  %26 = getelementptr inbounds ptr, ptr %25, i64 %8
  store ptr null, ptr %26, align 8, !tbaa !164
  br label %27

27:                                               ; preds = %23, %3
  %28 = icmp eq i8 %2, 0
  br i1 %28, label %36, label %29, !prof !305

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !190
  %32 = getelementptr inbounds ptr, ptr %31, i64 %8
  %33 = load ptr, ptr %32, align 8, !tbaa !164
  tail call void @bitmap_obstack_free(ptr noundef %33) #13
  %34 = load ptr, ptr %30, align 8, !tbaa !190
  %35 = getelementptr inbounds ptr, ptr %34, i64 %8
  store ptr null, ptr %35, align 8, !tbaa !164
  br label %36

36:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_replaceable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !306 !PGOFuncName !307 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !209
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %18, label %7, !prof !308

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !164
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14, !prof !309

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %16, ptr noundef nonnull %12) #13
  br label %18

18:                                               ; preds = %14, %7, %3
  %19 = zext i1 %6 to i8
  tail call fastcc void @finished_with_expr(ptr noundef %0, i32 noundef %5, i8 noundef zeroext %19) #12
  %20 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !195
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25, !prof !310

23:                                               ; preds = %18
  %24 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  store ptr %24, ptr %20, align 8, !tbaa !195
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %21, %18 ]
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %26, i32 noundef %5) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @kill_expr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !311 !PGOFuncName !312 {
  %3 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 4
  %4 = sext i32 %1 to i64
  %5 = load ptr, ptr %3, align 8, !tbaa !191
  %6 = getelementptr inbounds ptr, ptr %5, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9, !prof !313

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %14, %9 ], [ %7, %2 ]
  %11 = tail call i32 @bitmap_first_set_bit(ptr noundef nonnull %10) #13
  tail call fastcc void @finished_with_expr(ptr noundef nonnull %0, i32 noundef %11, i8 noundef zeroext 1) #12
  %12 = load ptr, ptr %3, align 8, !tbaa !191
  %13 = getelementptr inbounds ptr, ptr %12, i64 %4
  %14 = load ptr, ptr %13, align 8, !tbaa !164
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %9, !prof !314, !llvm.loop !315

16:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_replaceable(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !299 !PGOFuncName !316 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #14
  %4 = tail call fastcc ptr @single_ssa_tree_operand(ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !209
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !209
  %9 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !209
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %11) #13
  %13 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 1) #12
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %44, !prof !317

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 3
  br label %18

18:                                               ; preds = %16, %40
  %19 = phi ptr [ %13, %16 ], [ %41, %40 ]
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !209
  %22 = load ptr, ptr %17, align 8, !tbaa !190
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !164
  tail call fastcc void @add_dependence(ptr noundef %0, i32 noundef %6, ptr noundef %19) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27, !prof !318

27:                                               ; preds = %18
  %28 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %9, ptr noundef nonnull %25) #13
  %29 = load ptr, ptr %17, align 8, !tbaa !190
  %30 = getelementptr inbounds ptr, ptr %29, i64 %23
  %31 = load ptr, ptr %30, align 8, !tbaa !164
  tail call void @bitmap_obstack_free(ptr noundef %31) #13
  %32 = load ptr, ptr %17, align 8, !tbaa !190
  %33 = getelementptr inbounds ptr, ptr %32, i64 %23
  store ptr null, ptr %33, align 8, !tbaa !164
  br label %40

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !209
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !209
  %39 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %9, i32 noundef %38) #13
  br label %40

40:                                               ; preds = %34, %27
  %41 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #12
  %42 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #12
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %18, label %44, !prof !319, !llvm.loop !320

44:                                               ; preds = %40, %2
  %45 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !190
  %47 = sext i32 %6 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr %9, ptr %48, align 8, !tbaa !164
  %49 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51, !prof !321

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !193
  tail call fastcc void @make_dependent_on_partition(ptr noundef nonnull %0, i32 noundef %6, i32 noundef %53) #12
  %54 = load i32, ptr %52, align 8, !tbaa !193
  tail call fastcc void @add_to_partition_kill_list(ptr noundef nonnull %0, i32 noundef %54, i32 noundef %6) #12
  br label %55

55:                                               ; preds = %51, %44
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !322 !PGOFuncName !323 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #12, !range !205
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !324

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @kill_virtual_exprs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !325 !PGOFuncName !326 {
  %2 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !193
  tail call fastcc void @kill_expr(ptr noundef %0, i32 noundef %3) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 !prof !257 !PGOFuncName !327 {
  %2 = load ptr, ptr %0, align 8, !tbaa !251
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !328
  store ptr %4, ptr %0, align 8, !tbaa !251
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !203 !PGOFuncName !329 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !330
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !331

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !209
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !332

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !333
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !203 !PGOFuncName !335 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !332

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !336
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !338 !PGOFuncName !339 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !257 !PGOFuncName !340 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !263
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @single_ssa_tree_operand(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !341 !PGOFuncName !342 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #14
  %3 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 2) #12
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11, !prof !343

6:                                                ; preds = %1
  %7 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #12
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #12
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr null, ptr %3, !prof !344
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ null, %1 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #14
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !345 !PGOFuncName !346 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !347
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9, !prof !348

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !164
  store ptr null, ptr %2, align 8, !tbaa !164
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !347
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22, !prof !349

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !209
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #12, !range !205
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8, !prof !350

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !164
  %19 = load ptr, ptr %5, align 8, !tbaa !347
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !209
  store ptr %21, ptr %2, align 8, !tbaa !164
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !200
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25, !prof !351

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #13
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !352 !PGOFuncName !353 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !354 !PGOFuncName !355 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !209
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !354 !PGOFuncName !356 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !357 !PGOFuncName !358 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #12, !range !205
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !359

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
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !360 !PGOFuncName !361 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !263
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
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #12, !range !275
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #12
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !209
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #13
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !209
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !164
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !164
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !357 !PGOFuncName !362 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #12, !range !275
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #12, !range !263
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !363

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
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !364 !PGOFuncName !365 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !357 !PGOFuncName !366 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !263
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !367 !PGOFuncName !368 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !263
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !369 !PGOFuncName !370 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #12, !range !205
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !371

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !360 !PGOFuncName !372 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !209
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !209
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !360 !PGOFuncName !373 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #12
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 !prof !364 !PGOFuncName !374 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !205
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !375

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #12
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !376 !PGOFuncName !377 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !263
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !364 !PGOFuncName !378 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #12
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !379
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !375

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.1) #13
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !364 !PGOFuncName !380 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !263
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #12
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !364 !PGOFuncName !381 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !200
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !357 !PGOFuncName !382 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #12, !range !263
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !383

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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #6 !prof !357 !PGOFuncName !384 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !209
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 !prof !278 !PGOFuncName !385 {
  %4 = and i32 %2, 10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !386

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !291
  br label %17

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #12
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !291
  %11 = icmp eq ptr %9, null
  br i1 %11, label %17, label %12, !prof !387

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !388

15:                                               ; preds = %12
  %16 = load ptr, ptr %9, align 8, !tbaa !295
  store ptr %16, ptr %10, align 8, !tbaa !291
  br label %17

17:                                               ; preds = %6, %15, %12, %8
  %18 = and i32 %2, 5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22, !prof !389

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %21, align 8, !tbaa !286
  br label %31

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #12
  %24 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !286
  %25 = icmp eq ptr %23, null
  br i1 %25, label %31, label %26, !prof !390

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !391

29:                                               ; preds = %26
  %30 = load ptr, ptr %23, align 8, !tbaa !288
  store ptr %30, ptr %24, align 8, !tbaa !286
  br label %31

31:                                               ; preds = %20, %29, %26, %22
  store i8 0, ptr %0, align 8, !tbaa !284
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !392 !PGOFuncName !393 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !205
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !394

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !395 !PGOFuncName !396 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #12, !range !205
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !397

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !398 !PGOFuncName !399 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !400
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !401 !PGOFuncName !402 {
  %2 = load ptr, ptr %0, align 8, !tbaa !164
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !403 !PGOFuncName !404 {
  %4 = load ptr, ptr %1, align 8, !tbaa !211
  store ptr %4, ptr %0, align 8, !tbaa !405
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !407
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !408

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !405
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !409
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !411
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !379
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !412
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !200
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !413 !PGOFuncName !414 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !412
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !415

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !416

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !200
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !417, !llvm.loop !418

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !200
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !200
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !411
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !405
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !411
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !419

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !379
  store i64 %35, ptr %3, align 8, !tbaa !412
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !420

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !200
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !200
  %40 = load i32, ptr %23, align 8, !tbaa !411
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !411
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !421, !llvm.loop !422

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !423
  store ptr %44, ptr %0, align 8, !tbaa !405
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !424

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !409
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !200
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !412
  store i32 %16, ptr %1, align 4, !tbaa !200
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_from_partition_kill_list(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !425 !PGOFuncName !426 {
  %4 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !191
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %8, i32 noundef %2) #13
  %10 = load ptr, ptr %4, align 8, !tbaa !191
  %11 = getelementptr inbounds ptr, ptr %10, i64 %6
  %12 = load ptr, ptr %11, align 8, !tbaa !164
  %13 = load ptr, ptr %12, align 8, !tbaa !211
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24, !prof !427

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !192
  %18 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %17, i32 noundef %1) #13
  %19 = load ptr, ptr %4, align 8, !tbaa !191
  %20 = getelementptr inbounds ptr, ptr %19, i64 %6
  %21 = load ptr, ptr %20, align 8, !tbaa !164
  tail call void @bitmap_obstack_free(ptr noundef %21) #13
  %22 = load ptr, ptr %4, align 8, !tbaa !191
  %23 = getelementptr inbounds ptr, ptr %22, i64 %6
  store ptr null, ptr %23, align 8, !tbaa !164
  br label %24

24:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !428 !PGOFuncName !429 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !412
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !412
  %6 = load i32, ptr %1, align 4, !tbaa !200
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !200
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
define internal fastcc void @add_dependence(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !prof !430 !PGOFuncName !431 {
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !209
  %8 = tail call fastcc zeroext i8 @version_to_be_replaced_p(ptr noundef %0, i32 noundef %7) #12
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %45, label %10, !prof !318

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = load ptr, ptr %12, align 8, !tbaa !211
  %14 = icmp eq ptr %13, null
  br i1 %14, label %55, label %15, !prof !432

15:                                               ; preds = %10
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %12, ptr noundef nonnull %5) #12
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !range !205
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18, !prof !433

18:                                               ; preds = %15, %18
  %19 = load i32, ptr %5, align 4, !tbaa !200
  tail call fastcc void @add_to_partition_kill_list(ptr noundef %0, i32 noundef %19, i32 noundef %1) #12
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #12, !range !205
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %18, !prof !434, !llvm.loop !435

22:                                               ; preds = %18, %15
  %23 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !189
  %25 = sext i32 %1 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !164
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36, !prof !436

29:                                               ; preds = %22
  %30 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %31 = load ptr, ptr %23, align 8, !tbaa !189
  %32 = getelementptr inbounds ptr, ptr %31, i64 %25
  store ptr %30, ptr %32, align 8, !tbaa !164
  %33 = load ptr, ptr %23, align 8, !tbaa !189
  %34 = getelementptr inbounds ptr, ptr %33, i64 %25
  %35 = load ptr, ptr %34, align 8, !tbaa !164
  br label %36

36:                                               ; preds = %29, %22
  %37 = phi ptr [ %35, %29 ], [ %27, %22 ]
  %38 = load ptr, ptr %11, align 8, !tbaa !194
  %39 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %37, ptr noundef %38) #13
  %40 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !192
  %42 = load ptr, ptr %11, align 8, !tbaa !194
  %43 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %41, ptr noundef %42) #13
  %44 = load ptr, ptr %11, align 8, !tbaa !194
  tail call void @bitmap_clear(ptr noundef %44) #13
  br label %55

45:                                               ; preds = %3
  %46 = load ptr, ptr %0, align 8, !tbaa !182
  %47 = tail call fastcc i32 @var_to_partition(ptr noundef %46, ptr noundef nonnull %2) #12
  %48 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !196
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds i32, ptr %49, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !200
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %55, !prof !437

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
define internal fastcc void @make_dependent_on_partition(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !438 !PGOFuncName !439 {
  %4 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !189
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17, !prof !440

10:                                               ; preds = %3
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %12 = load ptr, ptr %4, align 8, !tbaa !189
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %11, ptr %13, align 8, !tbaa !164
  %14 = load ptr, ptr %4, align 8, !tbaa !189
  %15 = getelementptr inbounds ptr, ptr %14, i64 %6
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  br label %17

17:                                               ; preds = %10, %3
  %18 = phi ptr [ %16, %10 ], [ %8, %3 ]
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_partition_kill_list(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !441 !PGOFuncName !442 {
  %4 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !191
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20, !prof !443

10:                                               ; preds = %3
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #13
  %12 = load ptr, ptr %4, align 8, !tbaa !191
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %11, ptr %13, align 8, !tbaa !164
  %14 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !192
  %16 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %15, i32 noundef %1) #13
  %17 = load ptr, ptr %4, align 8, !tbaa !191
  %18 = getelementptr inbounds ptr, ptr %17, i64 %6
  %19 = load ptr, ptr %18, align 8, !tbaa !164
  br label %20

20:                                               ; preds = %10, %3
  %21 = phi ptr [ %19, %10 ], [ %8, %3 ]
  %22 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @version_to_be_replaced_p(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !430 !PGOFuncName !444 {
  %3 = getelementptr inbounds %struct.temp_expr_table_d, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !195
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !445

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
define dso_local void @dump_replaceable_exprs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !360 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 23, i64 1, ptr %0)
  %4 = load ptr, ptr @cfun, align 8, !tbaa !164
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %8) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %2, %26
  %12 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %13 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %12) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @cfun, align 8, !tbaa !164
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !184
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !185
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %12) #12
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %21, i32 noundef 2) #13
  %22 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 18, i64 1, ptr %0)
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !209
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %24, i32 noundef 0, i32 noundef 2) #13
  %25 = tail call i32 @fputc(i32 10, ptr %0)
  br label %26

26:                                               ; preds = %11, %15
  %27 = add nuw i32 %12, 1
  %28 = load ptr, ptr @cfun, align 8, !tbaa !164
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !184
  %31 = getelementptr inbounds %struct.gimple_df, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !185
  %33 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %32) #12
  %34 = icmp ult i32 %27, %33
  br i1 %34, label %11, label %35, !llvm.loop !446

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!162}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!36 = !{ptr @find_replaceable_exprs, ptr @new_temp_expr_table, i64 6652}
!37 = !{ptr @find_replaceable_exprs, ptr @find_replaceable_in_bb, i64 239622}
!38 = !{ptr @find_replaceable_exprs, ptr @free_temp_expr_table, i64 6652}
!39 = !{ptr @new_temp_expr_table, ptr @xmalloc, i64 6652}
!40 = !{ptr @new_temp_expr_table, ptr @VEC_tree_base_length, i64 1222150}
!41 = !{ptr @new_temp_expr_table, ptr @xcalloc, i64 26608}
!42 = !{ptr @new_temp_expr_table, ptr @num_var_partitions, i64 19956}
!43 = !{ptr @new_temp_expr_table, ptr @bitmap_obstack_alloc_stat, i64 13304}
!44 = !{ptr @new_temp_expr_table, ptr @VEC_tree_base_index, i64 1202194}
!45 = !{ptr @new_temp_expr_table, ptr @var_to_partition, i64 886852}
!46 = !{ptr @find_replaceable_in_bb, ptr @gsi_start_bb, i64 239657}
!47 = !{ptr @find_replaceable_in_bb, ptr @gsi_end_p, i64 922711}
!48 = !{ptr @find_replaceable_in_bb, ptr @gsi_stmt, i64 683054}
!49 = !{ptr @find_replaceable_in_bb, ptr @is_gimple_debug, i64 683054}
!50 = !{ptr @find_replaceable_in_bb, ptr @is_replaceable_p, i64 683053}
!51 = !{ptr @find_replaceable_in_bb, ptr @op_iter_init_tree, i64 1587834}
!52 = !{ptr @find_replaceable_in_bb, ptr @op_iter_done, i64 2837308}
!53 = !{ptr @find_replaceable_in_bb, ptr @bitmap_bit_p, i64 128260}
!54 = !{ptr @find_replaceable_in_bb, ptr @op_iter_next_tree, i64 1249474}
!55 = !{ptr @find_replaceable_in_bb, ptr @gimple_has_volatile_ops, i64 218700}
!56 = !{ptr @find_replaceable_in_bb, ptr @finished_with_expr, i64 3033}
!57 = !{ptr @find_replaceable_in_bb, ptr @mark_replaceable, i64 218697}
!58 = !{ptr @find_replaceable_in_bb, ptr @var_to_partition, i64 409268}
!59 = !{ptr @find_replaceable_in_bb, ptr @kill_expr, i64 144}
!60 = !{ptr @find_replaceable_in_bb, ptr @process_replaceable, i64 224372}
!61 = !{ptr @find_replaceable_in_bb, ptr @bitmap_clear, i64 683053}
!62 = !{ptr @find_replaceable_in_bb, ptr @gimple_vdef, i64 683053}
!63 = !{ptr @find_replaceable_in_bb, ptr @kill_virtual_exprs, i64 143564}
!64 = !{ptr @find_replaceable_in_bb, ptr @gsi_next, i64 683054}
!65 = !{ptr @free_temp_expr_table, ptr @bitmap_obstack_free, i64 13304}
!66 = !{ptr @free_temp_expr_table, ptr @free, i64 33260}
!67 = !{ptr @var_to_partition, ptr @fancy_abort, i64 1}
!68 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 239657}
!69 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 239657}
!70 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 945881}
!71 = !{ptr @is_replaceable_p, ptr @is_gimple_assign, i64 683056}
!72 = !{ptr @is_replaceable_p, ptr @stmt_could_throw_p, i64 416201}
!73 = !{ptr @is_replaceable_p, ptr @single_ssa_tree_operand, i64 416200}
!74 = !{ptr @is_replaceable_p, ptr @single_imm_use, i64 356577}
!75 = !{ptr @is_replaceable_p, ptr @gimple_bb, i64 525646}
!76 = !{ptr @is_replaceable_p, ptr @gimple_location, i64 449028}
!77 = !{ptr @is_replaceable_p, ptr @gimple_block, i64 449028}
!78 = !{ptr @is_replaceable_p, ptr @gimple_code, i64 224653}
!79 = !{ptr @is_replaceable_p, ptr @gimple_vdef, i64 224374}
!80 = !{ptr @is_replaceable_p, ptr @gimple_references_memory_p, i64 224373}
!81 = !{ptr @is_replaceable_p, ptr @gimple_expr_type, i64 1}
!82 = !{ptr @is_replaceable_p, ptr @gimple_assign_rhs_code, i64 224371}
!83 = !{ptr @is_replaceable_p, ptr @gimple_assign_rhs1, i64 24695}
!84 = !{ptr @is_replaceable_p, ptr @is_gimple_call, i64 224370}
!85 = !{ptr @is_replaceable_p, ptr @gimple_has_volatile_ops, i64 224369}
!86 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 2452789}
!87 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 2452789}
!88 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 925050}
!89 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 1116753}
!90 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 446108}
!91 = !{ptr @finished_with_expr, ptr @bmp_iter_set_init, i64 187555}
!92 = !{ptr @finished_with_expr, ptr @bmp_iter_set, i64 423444}
!93 = !{ptr @finished_with_expr, ptr @remove_from_partition_kill_list, i64 235889}
!94 = !{ptr @finished_with_expr, ptr @bmp_iter_next, i64 235889}
!95 = !{ptr @finished_with_expr, ptr @bitmap_obstack_free, i64 333287}
!96 = !{ptr @mark_replaceable, ptr @bitmap_ior_into, i64 62273}
!97 = !{ptr @mark_replaceable, ptr @finished_with_expr, i64 218740}
!98 = !{ptr @mark_replaceable, ptr @bitmap_obstack_alloc_stat, i64 5646}
!99 = !{ptr @mark_replaceable, ptr @bitmap_set_bit, i64 218740}
!100 = !{ptr @kill_expr, ptr @bitmap_first_set_bit, i64 2644}
!101 = !{ptr @kill_expr, ptr @finished_with_expr, i64 2644}
!102 = !{ptr @process_replaceable, ptr @single_ssa_tree_operand, i64 224373}
!103 = !{ptr @process_replaceable, ptr @bitmap_obstack_alloc_stat, i64 224373}
!104 = !{ptr @process_replaceable, ptr @bitmap_set_bit, i64 355802}
!105 = !{ptr @process_replaceable, ptr @op_iter_init_tree, i64 224373}
!106 = !{ptr @process_replaceable, ptr @op_iter_done, i64 434443}
!107 = !{ptr @process_replaceable, ptr @add_dependence, i64 210070}
!108 = !{ptr @process_replaceable, ptr @bitmap_ior_into, i64 78641}
!109 = !{ptr @process_replaceable, ptr @bitmap_obstack_free, i64 78641}
!110 = !{ptr @process_replaceable, ptr @op_iter_next_tree, i64 210070}
!111 = !{ptr @process_replaceable, ptr @gimple_vuse, i64 224373}
!112 = !{ptr @process_replaceable, ptr @make_dependent_on_partition, i64 128378}
!113 = !{ptr @process_replaceable, ptr @add_to_partition_kill_list, i64 128378}
!114 = !{ptr @gimple_vdef, ptr @gimple_has_mem_ops, i64 2212594}
!115 = !{ptr @kill_virtual_exprs, ptr @kill_expr, i64 143564}
!116 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 683056}
!117 = !{ptr @single_ssa_tree_operand, ptr @op_iter_init_tree, i64 640574}
!118 = !{ptr @single_ssa_tree_operand, ptr @op_iter_done, i64 1221525}
!119 = !{ptr @single_ssa_tree_operand, ptr @op_iter_next_tree, i64 580951}
!120 = !{ptr @single_imm_use, ptr @is_gimple_debug, i64 262824}
!121 = !{ptr @single_imm_use, ptr @single_imm_use_1, i64 1}
!122 = !{ptr @gimple_references_memory_p, ptr @gimple_has_mem_ops, i64 224378}
!123 = !{ptr @gimple_references_memory_p, ptr @gimple_vuse, i64 224377}
!124 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 224378}
!125 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 224378}
!126 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 133641}
!127 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 158336}
!128 = !{ptr @is_gimple_call, ptr @gimple_code, i64 224378}
!129 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 4213548}
!130 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 1330468}
!131 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 158336}
!132 = !{ptr @gimple_op, ptr @gimple_ops, i64 158335}
!133 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 2611125}
!134 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 158336}
!135 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!136 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 158336}
!137 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 158336}
!138 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 224378}
!139 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 1545360}
!140 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1305160}
!141 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 907429}
!142 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 881717}
!143 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 1545360}
!144 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 907429}
!145 = !{ptr @remove_from_partition_kill_list, ptr @bitmap_clear_bit, i64 451262}
!146 = !{ptr @remove_from_partition_kill_list, ptr @bitmap_obstack_free, i64 215372}
!147 = !{ptr @add_dependence, ptr @version_to_be_replaced_p, i64 210070}
!148 = !{ptr @add_dependence, ptr @bmp_iter_set_init, i64 58460}
!149 = !{ptr @add_dependence, ptr @bmp_iter_set, i64 133733}
!150 = !{ptr @add_dependence, ptr @add_to_partition_kill_list, i64 119922}
!151 = !{ptr @add_dependence, ptr @bmp_iter_next, i64 75273}
!152 = !{ptr @add_dependence, ptr @bitmap_obstack_alloc_stat, i64 57254}
!153 = !{ptr @add_dependence, ptr @bitmap_ior_into, i64 116920}
!154 = !{ptr @add_dependence, ptr @bitmap_clear, i64 58460}
!155 = !{ptr @add_dependence, ptr @var_to_partition, i64 131429}
!156 = !{ptr @add_dependence, ptr @make_dependent_on_partition, i64 44649}
!157 = !{ptr @make_dependent_on_partition, ptr @bitmap_obstack_alloc_stat, i64 130300}
!158 = !{ptr @make_dependent_on_partition, ptr @bitmap_set_bit, i64 173027}
!159 = !{ptr @add_to_partition_kill_list, ptr @bitmap_obstack_alloc_stat, i64 215372}
!160 = !{ptr @add_to_partition_kill_list, ptr @bitmap_set_bit, i64 463673}
!161 = !{ptr @version_to_be_replaced_p, ptr @bitmap_bit_p, i64 205088}
!162 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!163 = !{!"function_entry_count", i64 6652}
!164 = !{!165, !165, i64 0}
!165 = !{!"any pointer", !166, i64 0}
!166 = !{!"omnipotent char", !167, i64 0}
!167 = !{!"Simple C/C++ TBAA"}
!168 = !{!169, !165, i64 8}
!169 = !{!"function", !165, i64 0, !165, i64 8, !165, i64 16, !165, i64 24, !165, i64 32, !165, i64 40, !165, i64 48, !165, i64 56, !165, i64 64, !165, i64 72, !165, i64 80, !165, i64 88, !165, i64 96, !170, i64 104, !170, i64 108, !170, i64 112, !170, i64 116, !170, i64 120, !170, i64 124, !165, i64 128, !170, i64 136, !170, i64 137, !170, i64 138, !170, i64 138, !170, i64 138, !170, i64 138, !170, i64 138, !170, i64 138, !170, i64 138, !170, i64 139, !170, i64 139, !170, i64 139, !170, i64 139, !170, i64 139, !170, i64 139, !170, i64 139}
!170 = !{!"int", !166, i64 0}
!171 = !{!172, !165, i64 0}
!172 = !{!"control_flow_graph", !165, i64 0, !165, i64 8, !165, i64 16, !170, i64 24, !170, i64 28, !170, i64 32, !165, i64 40, !170, i64 48, !166, i64 52, !166, i64 60, !170, i64 68, !170, i64 72}
!173 = !{!174, !165, i64 56}
!174 = !{!"basic_block_def", !165, i64 0, !165, i64 8, !165, i64 16, !165, i64 24, !166, i64 32, !165, i64 48, !165, i64 56, !166, i64 64, !175, i64 72, !170, i64 80, !170, i64 84, !170, i64 88, !170, i64 92, !170, i64 96}
!175 = !{!"long", !166, i64 0}
!176 = !{!172, !165, i64 8}
!177 = !{!"branch_weights", i32 1, i32 6652}
!178 = !{!"branch_weights", i32 6652, i32 233006}
!179 = distinct !{!179, !180}
!180 = !{!"llvm.loop.mustprogress"}
!181 = !{!"tree-ssa-ter.c:new_temp_expr_table"}
!182 = !{!183, !165, i64 0}
!183 = !{!"temp_expr_table_d", !165, i64 0, !165, i64 8, !165, i64 16, !165, i64 24, !165, i64 32, !170, i64 40, !165, i64 48, !165, i64 56, !165, i64 64}
!184 = !{!169, !165, i64 24}
!185 = !{!186, !165, i64 16}
!186 = !{!"gimple_df", !165, i64 0, !165, i64 8, !165, i64 16, !165, i64 24, !187, i64 32, !187, i64 48, !165, i64 64, !165, i64 72, !165, i64 80, !165, i64 88, !170, i64 96, !188, i64 104}
!187 = !{!"pt_solution", !170, i64 0, !170, i64 0, !170, i64 0, !170, i64 0, !170, i64 0, !170, i64 0, !165, i64 8}
!188 = !{!"ssa_operands", !165, i64 0, !170, i64 8, !170, i64 12, !166, i64 16, !165, i64 24, !165, i64 32}
!189 = !{!183, !165, i64 8}
!190 = !{!183, !165, i64 24}
!191 = !{!183, !165, i64 32}
!192 = !{!183, !165, i64 48}
!193 = !{!183, !170, i64 40}
!194 = !{!183, !165, i64 56}
!195 = !{!183, !165, i64 16}
!196 = !{!183, !165, i64 64}
!197 = !{!"branch_weights", i32 6652, i32 1}
!198 = !{!"branch_weights", i32 315390, i32 886986}
!199 = !{!"branch_weights", i32 160273, i32 726714}
!200 = !{!170, !170, i64 0}
!201 = !{!"branch_weights", i32 1195723, i32 6652}
!202 = distinct !{!202, !180}
!203 = !{!"function_entry_count", i64 239657}
!204 = !{!"tree-ssa-ter.c:find_replaceable_in_bb"}
!205 = !{i8 0, i8 2}
!206 = !{!"branch_weights", i32 239657, i32 1}
!207 = !{!"branch_weights", i32 683057, i32 1}
!208 = !{!"branch_weights", i32 683056, i32 1}
!209 = !{!166, !166, i64 0}
!210 = !{!"branch_weights", i32 493250, i32 221731}
!211 = !{!212, !165, i64 0}
!212 = !{!"bitmap_head_def", !165, i64 0, !165, i64 8, !170, i64 16, !165, i64 24}
!213 = !{!"branch_weights", i32 1, i32 221731}
!214 = !{!"branch_weights", i32 126533, i32 92210}
!215 = !{!"branch_weights", i32 123545, i32 2989}
!216 = !{!"branch_weights", i32 0, i32 126533}
!217 = distinct !{!217, !180}
!218 = !{!"branch_weights", i32 2147453967, i32 29681}
!219 = !{!"branch_weights", i32 31924, i32 683056}
!220 = distinct !{!220, !180}
!221 = !{!"branch_weights", i32 409270, i32 273787}
!222 = !{!"branch_weights", i32 1, i32 409270}
!223 = !{!"branch_weights", i32 409127, i32 144}
!224 = !{!"branch_weights", i32 0, i32 409270}
!225 = distinct !{!225, !180}
!226 = !{!"branch_weights", i32 458684, i32 224374}
!227 = !{!"branch_weights", i32 539493, i32 143565}
!228 = !{!"branch_weights", i32 443400, i32 239657}
!229 = distinct !{!229, !180}
!230 = !{!"tree-ssa-ter.c:free_temp_expr_table"}
!231 = !{!"function_entry_count", i64 1222330}
!232 = !{!"tree-ssa-ter.c:VEC_tree_base_length"}
!233 = !{!"branch_weights", i32 1, i32 1222331}
!234 = !{!235, !170, i64 0}
!235 = !{!"VEC_tree_base", !170, i64 0, !170, i64 4, !166, i64 8}
!236 = !{!"function_entry_count", i64 19956}
!237 = !{!"tree-ssa-ter.c:num_var_partitions"}
!238 = !{!239, !170, i64 24}
!239 = !{!"_var_map", !165, i64 0, !165, i64 8, !165, i64 16, !170, i64 24, !170, i64 28, !170, i64 32, !165, i64 40, !165, i64 48}
!240 = !{!"function_entry_count", i64 1202374}
!241 = !{!"tree-ssa-ter.c:VEC_tree_base_index"}
!242 = !{!"function_entry_count", i64 1427683}
!243 = !{!"tree-ssa-ter.c:var_to_partition"}
!244 = !{!"branch_weights", i32 1427684, i32 1}
!245 = !{!239, !165, i64 0}
!246 = !{!247, !170, i64 0}
!247 = !{!"partition_elem", !170, i64 0, !165, i64 8, !170, i64 16}
!248 = !{!239, !165, i64 8}
!249 = !{!"branch_weights", i32 1, i32 1427684}
!250 = !{!"tree-ssa-ter.c:gsi_start_bb"}
!251 = !{!252, !165, i64 0}
!252 = !{!"", !165, i64 0, !165, i64 8, !165, i64 16}
!253 = !{!252, !165, i64 8}
!254 = !{!252, !165, i64 16}
!255 = !{!"function_entry_count", i64 922713}
!256 = !{!"tree-ssa-ter.c:gsi_end_p"}
!257 = !{!"function_entry_count", i64 683056}
!258 = !{!"tree-ssa-ter.c:gsi_stmt"}
!259 = !{!260, !165, i64 0}
!260 = !{!"gimple_seq_node_d", !165, i64 0, !165, i64 8, !165, i64 16}
!261 = !{!"function_entry_count", i64 945881}
!262 = !{!"tree-ssa-ter.c:is_gimple_debug"}
!263 = !{i32 0, i32 256}
!264 = !{!"tree-ssa-ter.c:is_replaceable_p"}
!265 = !{!"branch_weights", i32 266856, i32 416202}
!266 = !{!"branch_weights", i32 416202, i32 1}
!267 = !{!"branch_weights", i32 59623, i32 356580}
!268 = !{!"branch_weights", i32 93755, i32 262826}
!269 = !{!"branch_weights", i32 224656, i32 38171}
!270 = !{!"branch_weights", i32 278, i32 224379}
!271 = !{!"branch_weights", i32 1, i32 224656}
!272 = !{!"branch_weights", i32 224935, i32 224379}
!273 = !{!"branch_weights", i32 224379, i32 1}
!274 = !{!"branch_weights", i32 -694105057, i32 16048}
!275 = !{i32 0, i32 65536}
!276 = !{!"branch_weights", i32 24696, i32 199684}
!277 = !{!"branch_weights", i32 24696, i32 1}
!278 = !{!"function_entry_count", i64 2452789}
!279 = !{!"tree-ssa-ter.c:op_iter_init_tree"}
!280 = !{!281, !170, i64 4}
!281 = !{!"ssa_operand_iterator_d", !166, i64 0, !170, i64 4, !165, i64 8, !165, i64 16, !170, i64 24, !170, i64 28, !165, i64 32}
!282 = !{!"function_entry_count", i64 4491603}
!283 = !{!"tree-ssa-ter.c:op_iter_done"}
!284 = !{!281, !166, i64 0}
!285 = !{!"tree-ssa-ter.c:op_iter_next_tree"}
!286 = !{!281, !165, i64 16}
!287 = !{!"branch_weights", i32 3566555, i32 925050}
!288 = !{!289, !165, i64 0}
!289 = !{!"use_optype_d", !165, i64 0, !290, i64 8}
!290 = !{!"ssa_use_operand_d", !165, i64 0, !165, i64 8, !166, i64 16, !165, i64 24}
!291 = !{!281, !165, i64 8}
!292 = !{!"branch_weights", i32 2449802, i32 1116754}
!293 = !{!294, !165, i64 8}
!294 = !{!"def_optype_d", !165, i64 0, !165, i64 8}
!295 = !{!294, !165, i64 0}
!296 = !{!"function_entry_count", i64 446108}
!297 = !{!"tree-ssa-ter.c:gimple_has_volatile_ops"}
!298 = !{!"branch_weights", i32 62303, i32 383807}
!299 = !{!"function_entry_count", i64 224373}
!300 = !{!"tree-ssa-ter.c:finished_with_expr"}
!301 = !{!"branch_weights", i32 36818, i32 187557}
!302 = !{!"branch_weights", i32 1, i32 187556}
!303 = !{!"branch_weights", i32 187556, i32 48335}
!304 = distinct !{!304, !180}
!305 = !{!"branch_weights", i32 78642, i32 145733}
!306 = !{!"function_entry_count", i64 218740}
!307 = !{!"tree-ssa-ter.c:mark_replaceable"}
!308 = !{!"branch_weights", i32 140100, i32 78642}
!309 = !{!"branch_weights", i32 16369, i32 62274}
!310 = !{!"branch_weights", i32 5646, i32 213096}
!311 = !{!"function_entry_count", i64 143707}
!312 = !{!"tree-ssa-ter.c:kill_expr"}
!313 = !{!"branch_weights", i32 141064, i32 2644}
!314 = !{!"branch_weights", i32 2644, i32 0}
!315 = distinct !{!315, !180}
!316 = !{!"tree-ssa-ter.c:process_replaceable"}
!317 = !{!"branch_weights", i32 210071, i32 14303}
!318 = !{!"branch_weights", i32 131430, i32 78642}
!319 = !{!"branch_weights", i32 0, i32 210071}
!320 = distinct !{!320, !180}
!321 = !{!"branch_weights", i32 95996, i32 128379}
!322 = !{!"function_entry_count", i64 2212594}
!323 = !{!"tree-ssa-ter.c:gimple_vdef"}
!324 = !{!"branch_weights", i32 167450, i32 2045146}
!325 = !{!"function_entry_count", i64 143564}
!326 = !{!"tree-ssa-ter.c:kill_virtual_exprs"}
!327 = !{!"tree-ssa-ter.c:gsi_next"}
!328 = !{!260, !165, i64 16}
!329 = !{!"tree-ssa-ter.c:bb_seq"}
!330 = !{!174, !170, i64 96}
!331 = !{!"branch_weights", i32 239658, i32 1}
!332 = !{!"branch_weights", i32 1, i32 239658}
!333 = !{!334, !165, i64 0}
!334 = !{!"gimple_bb_info", !165, i64 0, !165, i64 8}
!335 = !{!"tree-ssa-ter.c:gimple_seq_first"}
!336 = !{!337, !165, i64 0}
!337 = !{!"gimple_seq_d", !165, i64 0, !165, i64 8, !165, i64 16}
!338 = !{!"function_entry_count", i64 15959628}
!339 = !{!"tree-ssa-ter.c:gimple_code"}
!340 = !{!"tree-ssa-ter.c:is_gimple_assign"}
!341 = !{!"function_entry_count", i64 640574}
!342 = !{!"tree-ssa-ter.c:single_ssa_tree_operand"}
!343 = !{!"branch_weights", i32 580953, i32 59623}
!344 = !{!"branch_weights", i32 1, i32 580953}
!345 = !{!"function_entry_count", i64 356579}
!346 = !{!"tree-ssa-ter.c:single_imm_use"}
!347 = !{!290, !165, i64 8}
!348 = !{!"branch_weights", i32 26, i32 356555}
!349 = !{!"branch_weights", i32 262826, i32 93730}
!350 = !{!"branch_weights", i32 262826, i32 1}
!351 = !{!"branch_weights", i32 93730, i32 1}
!352 = !{!"function_entry_count", i64 525650}
!353 = !{!"tree-ssa-ter.c:gimple_bb"}
!354 = !{!"function_entry_count", i64 449033}
!355 = !{!"tree-ssa-ter.c:gimple_location"}
!356 = !{!"tree-ssa-ter.c:gimple_block"}
!357 = !{!"function_entry_count", i64 224378}
!358 = !{!"tree-ssa-ter.c:gimple_references_memory_p"}
!359 = !{!"branch_weights", i32 1, i32 224379}
!360 = !{!"function_entry_count", i64 0}
!361 = !{!"tree-ssa-ter.c:gimple_expr_type"}
!362 = !{!"tree-ssa-ter.c:gimple_assign_rhs_code"}
!363 = !{!"branch_weights", i32 133642, i32 90738}
!364 = !{!"function_entry_count", i64 158336}
!365 = !{!"tree-ssa-ter.c:gimple_assign_rhs1"}
!366 = !{!"tree-ssa-ter.c:is_gimple_call"}
!367 = !{!"function_entry_count", i64 4213548}
!368 = !{!"tree-ssa-ter.c:gimple_has_mem_ops"}
!369 = !{!"function_entry_count", i64 1330468}
!370 = !{!"tree-ssa-ter.c:gimple_vuse"}
!371 = !{!"branch_weights", i32 145410, i32 1185060}
!372 = !{!"tree-ssa-ter.c:gimple_call_return_type"}
!373 = !{!"tree-ssa-ter.c:gimple_call_fn"}
!374 = !{!"tree-ssa-ter.c:gimple_op"}
!375 = !{!"branch_weights", i32 1, i32 158337}
!376 = !{!"function_entry_count", i64 2611125}
!377 = !{!"tree-ssa-ter.c:gimple_has_ops"}
!378 = !{!"tree-ssa-ter.c:gimple_ops"}
!379 = !{!175, !175, i64 0}
!380 = !{!"tree-ssa-ter.c:gimple_statement_structure"}
!381 = !{!"tree-ssa-ter.c:gss_for_code"}
!382 = !{!"tree-ssa-ter.c:gimple_expr_code"}
!383 = !{!"branch_weights", i32 1, i32 897516, i32 2, i32 1}
!384 = !{!"tree-ssa-ter.c:get_gimple_rhs_class"}
!385 = !{!"tree-ssa-ter.c:op_iter_init"}
!386 = !{!"branch_weights", i32 907430, i32 1545361}
!387 = !{!"branch_weights", i32 333789692, i32 1813693956}
!388 = !{!"branch_weights", i32 1051620, i32 253542}
!389 = !{!"branch_weights", i32 1545361, i32 907430}
!390 = !{!"branch_weights", i32 60848879, i32 2086634769}
!391 = !{!"branch_weights", i32 384000, i32 497719}
!392 = !{!"function_entry_count", i64 1545360}
!393 = !{!"tree-ssa-ter.c:gimple_def_ops"}
!394 = !{!"branch_weights", i32 104, i32 1545258}
!395 = !{!"function_entry_count", i64 907429}
!396 = !{!"tree-ssa-ter.c:gimple_use_ops"}
!397 = !{!"branch_weights", i32 104, i32 907327}
!398 = !{!"function_entry_count", i64 925049}
!399 = !{!"tree-ssa-ter.c:get_use_from_ptr"}
!400 = !{!290, !165, i64 24}
!401 = !{!"function_entry_count", i64 1116753}
!402 = !{!"tree-ssa-ter.c:get_def_from_ptr"}
!403 = !{!"function_entry_count", i64 246016}
!404 = !{!"tree-ssa-ter.c:bmp_iter_set_init"}
!405 = !{!406, !165, i64 0}
!406 = !{!"", !165, i64 0, !165, i64 8, !170, i64 16, !175, i64 24}
!407 = !{!406, !165, i64 8}
!408 = !{!"branch_weights", i32 1, i32 246017}
!409 = !{!410, !170, i64 16}
!410 = !{!"bitmap_element_def", !165, i64 0, !165, i64 8, !170, i64 16, !166, i64 24}
!411 = !{!406, !170, i64 16}
!412 = !{!406, !175, i64 24}
!413 = !{!"function_entry_count", i64 557180}
!414 = !{!"tree-ssa-ter.c:bmp_iter_set"}
!415 = !{!"branch_weights", i32 392832, i32 164350}
!416 = !{!"branch_weights", i32 311164, i32 1}
!417 = !{!"branch_weights", i32 8413436, i32 311164}
!418 = distinct !{!418, !180}
!419 = !{!"branch_weights", i32 1, i32 291473}
!420 = !{!"branch_weights", i32 190116, i32 146816}
!421 = !{!"branch_weights", i32 291473, i32 45458}
!422 = distinct !{!422, !180}
!423 = !{!410, !165, i64 0}
!424 = !{!"branch_weights", i32 246017, i32 45458}
!425 = !{!"function_entry_count", i64 235890}
!426 = !{!"tree-ssa-ter.c:remove_from_partition_kill_list"}
!427 = !{!"branch_weights", i32 215374, i32 20518}
!428 = !{!"function_entry_count", i64 311164}
!429 = !{!"tree-ssa-ter.c:bmp_iter_next"}
!430 = !{!"function_entry_count", i64 210070}
!431 = !{!"tree-ssa-ter.c:add_dependence"}
!432 = !{!"branch_weights", i32 20182, i32 58461}
!433 = !{!"branch_weights", i32 1, i32 58460}
!434 = !{!"branch_weights", i32 58460, i32 16815}
!435 = distinct !{!435, !180}
!436 = !{!"branch_weights", i32 57256, i32 1206}
!437 = !{!"branch_weights", i32 44650, i32 86781}
!438 = !{!"function_entry_count", i64 173027}
!439 = !{!"tree-ssa-ter.c:make_dependent_on_partition"}
!440 = !{!"branch_weights", i32 130302, i32 42727}
!441 = !{!"function_entry_count", i64 248301}
!442 = !{!"tree-ssa-ter.c:add_to_partition_kill_list"}
!443 = !{!"branch_weights", i32 215374, i32 32929}
!444 = !{!"tree-ssa-ter.c:version_to_be_replaced_p"}
!445 = !{!"branch_weights", i32 4982, i32 205090}
!446 = distinct !{!446, !180}
