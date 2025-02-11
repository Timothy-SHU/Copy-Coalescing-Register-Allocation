; ModuleID = 'tree-ssa-pre.c'
source_filename = "tree-ssa-pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, i32, i32, i32 }
%struct.pre_expr_d = type { i32, i32, %union.pre_expr_union_d }
%union.pre_expr_union_d = type { ptr }
%struct.vn_ssa_aux = type { ptr, ptr, i32, i32, i32, i8 }
%struct.VEC_bitmap_set_t_base = type { i32, i32, [1 x ptr] }
%struct.bitmap_set = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_unsigned_base = type { i32, i32, [1 x i32] }
%struct.VEC_pre_expr_base = type { i32, i32, [1 x ptr] }
%struct.vn_nary_op_s = type { i32, i32, i32, ptr, ptr, [4 x ptr] }
%struct.vn_reference_s = type { i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.vn_reference_op_struct = type { i32, ptr, ptr, ptr, ptr }
%struct.VEC_vn_reference_op_s_base = type { i32, i32, [1 x %struct.vn_reference_op_struct] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.bb_bitmap_sets = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.expr_pred_trans_d = type { ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.ao_ref_s = type { ptr, ptr, i64, i64, i64, i32, i32 }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.affine_iv = type { ptr, ptr, i8 }

@.str = private unnamed_addr constant [15 x i8] c"tree-ssa-pre.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@value_expressions = internal unnamed_addr global ptr null, align 8
@bitmap_set_pool = internal unnamed_addr global ptr null, align 8
@grand_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@name_to_id = internal unnamed_addr global ptr null, align 8
@expression_to_id = internal unnamed_addr global ptr null, align 8
@next_expression_id = internal unnamed_addr global i32 0, align 4
@expressions = internal global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"{%s,\00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"%s[%d] := { \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" (%04d)\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c"%04d\00", align 1
@pass_pre = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.17, ptr @gate_pre, ptr @do_pre, ptr null, ptr null, i32 0, i32 69, i32 104, i32 0, i32 0, i32 1048576, i32 16391 } }, align 8
@.str.17 = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@flag_tree_pre = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@do_partial_partial = internal unnamed_addr global i8 0, align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"exp_gen\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"phi_gen\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"tmp_gen\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"avail_out\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Insertions\00", align 1
@pre_stats = internal unnamed_addr global %struct.anon zeroinitializer, align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"PA inserted\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"New PHIs\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Eliminated\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"Constified\00", align 1
@inserted_exprs = internal global ptr null, align 8
@.str.27 = private unnamed_addr constant [32 x i8] c"Removing unnecessary insertion:\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@in_fre = internal unnamed_addr global i8 0, align 1
@need_creation = internal global ptr null, align 8
@pretemp = internal unnamed_addr global ptr null, align 8
@prephitemp = internal unnamed_addr global ptr null, align 8
@postorder = internal unnamed_addr global ptr null, align 8
@inserted_phi_names = internal unnamed_addr global ptr null, align 8
@phi_translate_table = internal unnamed_addr global ptr null, align 8
@.str.30 = private unnamed_addr constant [12 x i8] c"Bitmap sets\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"pre_expr nodes\00", align 1
@pre_expr_pool = internal unnamed_addr global ptr null, align 8
@need_eh_cleanup = internal unnamed_addr global ptr null, align 8
@.str.32 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@has_abnormal_preds = internal unnamed_addr global ptr null, align 8
@changed_blocks = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [23 x i8] c"Starting iteration %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"compute_antic iterations\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"compute_partial_antic iterations\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"ANTIC_OUT\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"ANTIC_IN\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"Block %d was deferred for a future iteration.\0A\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"Could not find SSA_NAME representative for expression:\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"pretmp\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"Created SSA_NAME representative \00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c" for expression:\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"PA_OUT\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"PA_IN\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"insert iterations\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"Found fully redundant value\0A\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"Found partial redundancy for expression \00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c" (%04d)\0A\00", align 1
@.str.50 = private unnamed_addr constant [84 x i8] c"Skipping insertion of phi for partial redundancy: Looks like an induction variable\0A\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"prephitmp\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"Created phi \00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c" in block %d\0A\00", align 1
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.54 = private unnamed_addr constant [10 x i8] c"Inserted \00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c" in predecessor %d\0A\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"Replaced \00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c" with \00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@VN_TOP = external local_unnamed_addr global ptr, align 8
@.str.59 = private unnamed_addr constant [28 x i8] c"  Removed EH side effects.\0A\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"Deleted redundant store \00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"Replacing call target with \00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"Replaced redundant PHI node defining \00", align 1
@pass_fre = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.63, ptr @gate_fre, ptr @execute_fre, ptr null, ptr null, i32 0, i32 71, i32 40, i32 0, i32 0, i32 0, i32 7 } }, align 8
@.str.63 = private unnamed_addr constant [4 x i8] c"fre\00", align 1
@flag_tree_fre = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_to_value(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = icmp eq i32 %3, %0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 601, ptr noundef nonnull @.str.1) #20
  br label %6

6:                                                ; preds = %2, %5
  %7 = load ptr, ptr @value_expressions, align 8
  %8 = tail call fastcc i32 @VEC_bitmap_set_t_base_length(ptr noundef %7) #19
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = add i32 %0, 1
  tail call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %11) #19
  %12 = load ptr, ptr @value_expressions, align 8
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %12, %10 ], [ %7, %6 ]
  %15 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %14, i32 noundef %0) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @bitmap_set_new() #19
  %19 = load ptr, ptr @value_expressions, align 8
  tail call fastcc void @VEC_bitmap_set_t_base_replace(ptr noundef %19, i32 noundef %0, ptr noundef %18) #19
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi ptr [ %15, %13 ], [ %18, %17 ]
  tail call fastcc void @bitmap_insert_into_set_1(ptr noundef %21, ptr noundef %1, i32 noundef %0, i8 noundef zeroext 1) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_expr_value_id(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !6
  switch i32 %2, label %25 [
    i32 3, label %3
    i32 0, label %11
    i32 1, label %17
    i32 2, label %21
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = tail call i32 @get_constant_value_id(ptr noundef %5) #20
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !11
  %10 = tail call i32 @get_or_alloc_constant_value_id(ptr noundef %9) #20
  tail call void @add_to_value(i32 noundef %10, ptr noundef nonnull %0) #19
  br label %26

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = tail call ptr @VN_INFO(ptr noundef %13) #20
  %15 = getelementptr inbounds %struct.vn_ssa_aux, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !12
  br label %26

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = load i32, ptr %19, align 8, !tbaa !15
  br label %26

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = load i32, ptr %23, align 8, !tbaa !17
  br label %26

25:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #20
  br label %26

26:                                               ; preds = %3, %8, %25, %21, %17, %11
  %27 = phi i32 [ 0, %25 ], [ %24, %21 ], [ %20, %17 ], [ %16, %11 ], [ %10, %8 ], [ %6, %3 ]
  ret i32 %27
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_bitmap_set_t_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !19
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @value_expressions, align 8, !tbaa !21
  %3 = tail call fastcc i32 @VEC_bitmap_set_t_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_bitmap_set_t_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @value_expressions, align 8, !tbaa !21
  %5 = tail call fastcc ptr @VEC_bitmap_set_t_base_address(ptr noundef %4) #19
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_bitmap_set_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bitmap_set_new() unnamed_addr #0 {
  %1 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !21
  %2 = tail call ptr @pool_alloc(ptr noundef %1) #20
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  store ptr %3, ptr %2, align 8, !tbaa !22
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %5 = getelementptr inbounds %struct.bitmap_set, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !24
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_bitmap_set_t_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_insert_into_set_1(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = tail call zeroext i8 @value_id_constant_p(i32 noundef %2) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6, %4
  %10 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  %12 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %11, i32 noundef %2) #20
  %13 = load ptr, ptr %0, align 8, !tbaa !22
  %14 = tail call fastcc i32 @get_or_alloc_expression_id(ptr noundef %1) #19
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %13, i32 noundef %14) #20
  br label %16

16:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @get_constant_value_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_or_alloc_constant_value_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @VN_INFO(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_set_t_heap_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @value_expressions, align 8, !tbaa !21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_bitmap_set_t_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @value_expressions, align 8, !tbaa !21, !nonnull !25, !noundef !25
  store i32 %0, ptr %9, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_bitmap_set_t_base_address(ptr noundef readnone %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_bitmap_set_t_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @value_expressions, align 8, !tbaa !21
  %3 = tail call fastcc i32 @VEC_bitmap_set_t_base_space(ptr noundef %2, i32 noundef %0) #19, !range !26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %2, i32 noundef %0) #20
  store ptr %6, ptr @value_expressions, align 8, !tbaa !21
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_bitmap_set_t_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_bitmap_set_t_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !27
  %7 = load i32, ptr %0, align 8, !tbaa !19
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

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @value_id_constant_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_or_alloc_expression_id(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @lookup_expression_id(ptr noundef %0) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @alloc_expression_id(ptr noundef %0) #19
  br label %8

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 1
  store i32 %2, ptr %7, align 4, !tbaa !28
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %5, %4 ], [ %2, %6 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @lookup_expression_id(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !11
  %9 = load ptr, ptr @name_to_id, align 8
  %10 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %9) #19
  %11 = icmp ugt i32 %10, %8
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = tail call fastcc i32 @VEC_unsigned_base_index(ptr noundef %9, i32 noundef %8) #19
  br label %22

14:                                               ; preds = %1
  %15 = load ptr, ptr @expression_to_id, align 8, !tbaa !21
  %16 = tail call ptr @htab_find_slot(ptr noundef %15, ptr noundef nonnull %0, i32 noundef 0) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !21
  %20 = getelementptr inbounds %struct.pre_expr_d, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !28
  br label %22

22:                                               ; preds = %14, %12, %4, %18
  %23 = phi i32 [ %21, %18 ], [ %13, %12 ], [ 0, %4 ], [ 0, %14 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @alloc_expression_id(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @next_expression_id, align 4, !tbaa !29
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 254, ptr noundef nonnull @.str.1) #20
  %5 = load i32, ptr @next_expression_id, align 4, !tbaa !29
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %2, %1 ], [ %5, %4 ]
  %8 = add i32 %7, 1
  store i32 %8, ptr @next_expression_id, align 4, !tbaa !29
  %9 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 1
  store i32 %7, ptr %9, align 4, !tbaa !28
  tail call fastcc void @VEC_pre_expr_heap_safe_push(ptr noundef nonnull @expressions, ptr noundef %0) #19
  %10 = load i32, ptr %0, align 8, !tbaa !6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !11
  %17 = load ptr, ptr @cfun, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct.gimple_df, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !32
  %22 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %21) #19
  tail call fastcc void @VEC_unsigned_heap_reserve(i32 noundef %22) #19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  %26 = getelementptr inbounds %struct.gimple_df, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !32
  %28 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %27) #19
  tail call fastcc void @VEC_unsigned_heap_safe_grow_cleared(i32 noundef %28) #19
  %29 = load ptr, ptr @name_to_id, align 8
  %30 = tail call fastcc i32 @VEC_unsigned_base_index(ptr noundef %29, i32 noundef %16) #19
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 265, ptr noundef nonnull @.str.1) #20
  %33 = load ptr, ptr @name_to_id, align 8
  br label %34

34:                                               ; preds = %12, %32
  %35 = phi ptr [ %29, %12 ], [ %33, %32 ]
  %36 = load i32, ptr %9, align 4, !tbaa !28
  tail call fastcc void @VEC_unsigned_base_replace(ptr noundef %35, i32 noundef %16, i32 noundef %36) #19
  br label %44

37:                                               ; preds = %6
  %38 = load ptr, ptr @expression_to_id, align 8, !tbaa !21
  %39 = tail call ptr @htab_find_slot(ptr noundef %38, ptr noundef nonnull %0, i32 noundef 1) #20
  %40 = load ptr, ptr %39, align 8, !tbaa !21
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 271, ptr noundef nonnull @.str.1) #20
  br label %43

43:                                               ; preds = %37, %42
  store ptr %0, ptr %39, align 8, !tbaa !21
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, ptr @next_expression_id, align 4, !tbaa !29
  %46 = add i32 %45, -1
  ret i32 %46
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !36
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !29
  ret i32 %5
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_pre_expr_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_pre_expr_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !21
  tail call fastcc void @VEC_pre_expr_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_reserve(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !21
  %3 = tail call fastcc i32 @VEC_unsigned_base_space(ptr noundef %2, i32 noundef %0) #19, !range !26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  store ptr %6, ptr @name_to_id, align 8, !tbaa !21
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !38
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_safe_grow_cleared(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !21
  %3 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %2) #19
  tail call fastcc void @VEC_unsigned_heap_safe_grow(i32 noundef %0) #19
  %4 = load ptr, ptr @name_to_id, align 8, !tbaa !21
  %5 = tail call fastcc ptr @VEC_unsigned_base_address(ptr noundef %4) #19
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = sub nsw i32 %0, %3
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_unsigned_base_replace(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %4
  store i32 %2, ptr %5, align 4, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_pre_expr_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = tail call fastcc i32 @VEC_pre_expr_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #20
  store ptr %6, ptr %0, align 8, !tbaa !21
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_pre_expr_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 8, !tbaa !40
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !40
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_pre_expr_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = load i32, ptr %0, align 8, !tbaa !40
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = load i32, ptr %0, align 4, !tbaa !36
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

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_safe_grow(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !36
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_unsigned_heap_reserve_exact(i32 noundef %8) #19
  %9 = load ptr, ptr @name_to_id, align 8, !tbaa !21, !nonnull !25, !noundef !25
  store i32 %0, ptr %9, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_unsigned_base_address(ptr noundef readnone %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_reserve_exact(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @name_to_id, align 8, !tbaa !21
  %3 = tail call fastcc i32 @VEC_unsigned_base_space(ptr noundef %2, i32 noundef %0) #19, !range !26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  store ptr %6, ptr @name_to_id, align 8, !tbaa !21
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_pre_expr(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !21
  tail call fastcc void @print_pre_expr(ptr noundef %2, ptr noundef %0) #19
  %3 = load ptr, ptr @stderr, align 8, !tbaa !21
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_pre_expr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = load i32, ptr %1, align 8, !tbaa !6
  switch i32 %4, label %115 [
    i32 3, label %5
    i32 0, label %8
    i32 1, label %11
    i32 2, label %43
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %7, i32 noundef 0) #20
  br label %115

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %10, i32 noundef 0) #20
  br label %115

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.vn_nary_op_s, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 65535
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %19) #19
  %21 = load i32, ptr %14, align 4
  %22 = icmp ult i32 %21, 65536
  br i1 %22, label %41, label %23

23:                                               ; preds = %11, %36
  %24 = phi i64 [ %38, %36 ], [ 0, %11 ]
  %25 = getelementptr inbounds %struct.vn_nary_op_s, ptr %13, i64 0, i32 5, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %26, i32 noundef 0) #20
  %27 = load i32, ptr %14, align 4
  %28 = lshr i32 %27, 16
  %29 = add nsw i32 %28, -1
  %30 = zext i32 %29 to i64
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %23
  %33 = tail call i32 @fputc(i32 44, ptr %0)
  %34 = load i32, ptr %14, align 4
  %35 = lshr i32 %34, 16
  br label %36

36:                                               ; preds = %23, %32
  %37 = phi i32 [ %28, %23 ], [ %35, %32 ]
  %38 = add nuw nsw i64 %24, 1
  %39 = zext nneg i32 %37 to i64
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %23, label %41, !llvm.loop !44

41:                                               ; preds = %36, %11
  %42 = tail call i32 @fputc(i32 125, ptr %0)
  br label %115

43:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %44 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  %46 = tail call i32 @fputc(i32 123, ptr %0)
  %47 = getelementptr inbounds %struct.vn_reference_s, ptr %45, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %48, i32 noundef 0, ptr noundef nonnull %3) #19, !range !26
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %106, label %51

51:                                               ; preds = %43, %101
  %52 = phi i32 [ %103, %101 ], [ 0, %43 ]
  %53 = load ptr, ptr %3, align 8, !tbaa !21
  %54 = load i32, ptr %53, align 8, !tbaa !47
  %55 = icmp eq i32 %54, 141
  br i1 %55, label %71, label %56

56:                                               ; preds = %51
  %57 = sext i32 %54 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !29
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = zext i32 %54 to i64
  %63 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !21
  %65 = tail call i32 @fputs(ptr %64, ptr %0)
  %66 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !49
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = tail call i32 @fputc(i32 60, ptr %0)
  br label %71

71:                                               ; preds = %61, %69, %56, %51
  %72 = phi i1 [ false, %69 ], [ true, %61 ], [ true, %56 ], [ true, %51 ]
  %73 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !49
  %75 = icmp eq ptr %74, null
  br i1 %75, label %90, label %76

76:                                               ; preds = %71
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef nonnull %74, i32 noundef 0) #20
  %77 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !50
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = tail call i32 @fputc(i32 44, ptr %0)
  %82 = load ptr, ptr %77, align 8, !tbaa !50
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %82, i32 noundef 0) #20
  br label %83

83:                                               ; preds = %80, %76
  %84 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %53, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !51
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = tail call i32 @fputc(i32 44, ptr %0)
  %89 = load ptr, ptr %84, align 8, !tbaa !51
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %89, i32 noundef 0) #20
  br label %90

90:                                               ; preds = %83, %87, %71
  br i1 %72, label %93, label %91

91:                                               ; preds = %90
  %92 = tail call i32 @fputc(i32 62, ptr %0)
  br label %93

93:                                               ; preds = %91, %90
  %94 = load ptr, ptr %47, align 8, !tbaa !46
  %95 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %94) #19
  %96 = add i32 %95, -1
  %97 = icmp eq i32 %52, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %93
  %99 = tail call i32 @fputc(i32 44, ptr %0)
  %100 = load ptr, ptr %47, align 8, !tbaa !46
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi ptr [ %100, %98 ], [ %94, %93 ]
  %103 = add i32 %52, 1
  %104 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %102, i32 noundef %103, ptr noundef nonnull %3) #19, !range !26
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %51, !llvm.loop !52

106:                                              ; preds = %101, %43
  %107 = tail call i32 @fputc(i32 125, ptr %0)
  %108 = getelementptr inbounds %struct.vn_reference_s, ptr %45, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !53
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = tail call i32 @fputc(i32 64, ptr %0)
  %113 = load ptr, ptr %108, align 8, !tbaa !53
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %113, i32 noundef 0) #20
  br label %114

114:                                              ; preds = %111, %106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %115

115:                                              ; preds = %2, %114, %41, %8, %5
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !54
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !21
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !54
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_bitmap_set(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !21
  tail call fastcc void @print_bitmap_set(ptr noundef %2, ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_bitmap_set(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_iterator, align 8
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %2, i32 noundef %3) #19
  %8 = icmp eq ptr %1, null
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #21
  %10 = load ptr, ptr %1, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %10, ptr noundef nonnull %5) #19
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !56
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9, %19
  %14 = phi i1 [ true, %19 ], [ false, %9 ]
  %15 = load i32, ptr %5, align 4, !tbaa !29
  %16 = tail call fastcc ptr @expression_for_id(i32 noundef %15) #19
  br i1 %14, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %0)
  br label %19

19:                                               ; preds = %17, %13
  tail call fastcc void @print_pre_expr(ptr noundef %0, ptr noundef %16) #19
  %20 = tail call fastcc i32 @get_expr_value_id(ptr noundef %16) #19
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %20) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !56
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %13, !llvm.loop !57

24:                                               ; preds = %19, %9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %25

25:                                               ; preds = %24, %4
  %26 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 3, i64 1, ptr %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %4, ptr %0, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !63
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !60
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !64
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !68
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !68
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !29
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !69

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !29
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !29
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !66
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !60
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !66
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !67
  store i64 %35, ptr %3, align 8, !tbaa !68
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !29
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !29
  %40 = load i32, ptr %23, align 8, !tbaa !66
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !66
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !70

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !71
  store ptr %44, ptr %0, align 8, !tbaa !60
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !64
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !29
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !68
  store i32 %16, ptr %1, align 4, !tbaa !29
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @expression_for_id(i32 noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr @expressions, align 8
  %3 = tail call fastcc ptr @VEC_pre_expr_base_index(ptr noundef %2, i32 noundef %0) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !68
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !68
  %6 = load i32, ptr %1, align 4, !tbaa !29
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_pre_expr_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_value_expressions(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [10 x i8], align 1
  %4 = load ptr, ptr @value_expressions, align 8
  %5 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %4, i32 noundef %1) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #21
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %1) #19
  call fastcc void @print_bitmap_set(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #21
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_value_expressions(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !21
  tail call void @print_value_expressions(ptr noundef %2, i32 noundef %0) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_pre() #11 {
  %1 = load i32, ptr @flag_tree_pre, align 4, !tbaa !29
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @do_pre() #0 {
  %1 = tail call fastcc i32 @execute_pre(i8 noundef zeroext 0) #19
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @execute_pre(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = load i32, ptr @optimize, align 4, !tbaa !29
  %3 = icmp sgt i32 %2, 2
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !21
  %6 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %5) #20
  %7 = icmp ne i8 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  store i8 %10, ptr @do_partial_partial, align 1, !tbaa !11
  %11 = icmp eq i8 %0, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  tail call void @loop_optimizer_init(i32 noundef 7) #20
  %13 = tail call zeroext i8 @run_scc_vn(i8 noundef zeroext 0) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %19

15:                                               ; preds = %9
  %16 = tail call zeroext i8 @run_scc_vn(i8 noundef zeroext %0) #20
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %81, label %19

18:                                               ; preds = %12
  tail call fastcc void @remove_dead_inserted_code() #19
  tail call void @loop_optimizer_finalize() #20
  br label %81

19:                                               ; preds = %15, %12
  tail call fastcc void @init_pre(i8 noundef zeroext %0) #19
  tail call void @scev_initialize() #20
  tail call fastcc void @compute_avail() #19
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %21 = icmp eq ptr %20, null
  br i1 %21, label %58, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @cfun, align 8, !tbaa !21
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = load ptr, ptr %29, align 8, !tbaa !21
  %31 = icmp eq ptr %30, null
  br i1 %31, label %58, label %32

32:                                               ; preds = %26, %32
  %33 = phi ptr [ %56, %32 ], [ %30, %26 ]
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = load ptr, ptr %36, align 8, !tbaa !75
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !77
  tail call fastcc void @print_bitmap_set(ptr noundef %34, ptr noundef %37, ptr noundef nonnull @.str.18, i32 noundef %39) #19
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %41 = load ptr, ptr %35, align 8, !tbaa !73
  %42 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !78
  %44 = load i32, ptr %38, align 8, !tbaa !77
  tail call fastcc void @print_bitmap_set(ptr noundef %40, ptr noundef %43, ptr noundef nonnull @.str.19, i32 noundef %44) #19
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %46 = load ptr, ptr %35, align 8, !tbaa !73
  %47 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !79
  %49 = load i32, ptr %38, align 8, !tbaa !77
  tail call fastcc void @print_bitmap_set(ptr noundef %45, ptr noundef %48, ptr noundef nonnull @.str.20, i32 noundef %49) #19
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %51 = load ptr, ptr %35, align 8, !tbaa !73
  %52 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %51, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = load i32, ptr %38, align 8, !tbaa !77
  tail call fastcc void @print_bitmap_set(ptr noundef %50, ptr noundef %53, ptr noundef nonnull @.str.21, i32 noundef %54) #19
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %32, !llvm.loop !81

58:                                               ; preds = %32, %26, %22, %19
  br i1 %11, label %59, label %67

59:                                               ; preds = %58
  %60 = load ptr, ptr @cfun, align 8, !tbaa !21
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !72
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !82
  %65 = icmp slt i32 %64, 4000
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  tail call fastcc void @compute_antic() #19
  tail call fastcc void @insert() #19
  br label %67

67:                                               ; preds = %66, %59, %58
  %68 = tail call fastcc i32 @eliminate() #19
  %69 = load ptr, ptr @cfun, align 8, !tbaa !21
  %70 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !84
  tail call void @statistics_counter_event(ptr noundef %69, ptr noundef nonnull @.str.22, i32 noundef %70) #20
  %71 = load ptr, ptr @cfun, align 8, !tbaa !21
  %72 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !86
  tail call void @statistics_counter_event(ptr noundef %71, ptr noundef nonnull @.str.23, i32 noundef %72) #20
  %73 = load ptr, ptr @cfun, align 8, !tbaa !21
  %74 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !87
  tail call void @statistics_counter_event(ptr noundef %73, ptr noundef nonnull @.str.24, i32 noundef %74) #20
  %75 = load ptr, ptr @cfun, align 8, !tbaa !21
  %76 = load i32, ptr @pre_stats, align 4, !tbaa !88
  tail call void @statistics_counter_event(ptr noundef %75, ptr noundef nonnull @.str.25, i32 noundef %76) #20
  %77 = load ptr, ptr @cfun, align 8, !tbaa !21
  %78 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !89
  tail call void @statistics_counter_event(ptr noundef %77, ptr noundef nonnull @.str.26, i32 noundef %78) #20
  tail call void @remove_fake_exit_edges() #20
  tail call void @gsi_commit_edge_inserts() #20
  tail call fastcc void @clear_expression_ids() #19
  tail call void @free_scc_vn() #20
  br i1 %11, label %79, label %80

79:                                               ; preds = %67
  tail call fastcc void @remove_dead_inserted_code() #19
  br label %80

80:                                               ; preds = %79, %67
  tail call void @scev_finalize() #20
  tail call fastcc void @fini_pre(i8 noundef zeroext %0) #19
  br label %81

81:                                               ; preds = %15, %18, %80
  %82 = phi i32 [ %68, %80 ], [ 0, %18 ], [ 0, %15 ]
  ret i32 %82
}

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @run_scc_vn(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_dead_inserted_code() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %6 = load ptr, ptr @inserted_exprs, align 8
  %7 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %6) #19
  %8 = tail call fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %7) #19
  store ptr %8, ptr %1, align 8, !tbaa !21
  %9 = load ptr, ptr @inserted_exprs, align 8
  %10 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %2) #19, !range !26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %25, %0
  %13 = phi ptr [ %9, %0 ], [ %26, %25 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !21
  %15 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %8) #19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %37

17:                                               ; preds = %0, %25
  %18 = phi ptr [ %26, %25 ], [ %9, %0 ]
  %19 = phi i32 [ %27, %25 ], [ 0, %0 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !21
  %21 = tail call fastcc i32 @gimple_plf(ptr noundef %20) #19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %8, ptr noundef %20) #19
  %24 = load ptr, ptr @inserted_exprs, align 8
  br label %25

25:                                               ; preds = %17, %23
  %26 = phi ptr [ %18, %17 ], [ %24, %23 ]
  %27 = add nuw nsw i32 %19, 1
  %28 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %26, i32 noundef %27, ptr noundef nonnull %2) #19, !range !26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %12, label %17, !llvm.loop !90

30:                                               ; preds = %79
  %31 = load ptr, ptr @inserted_exprs, align 8
  br label %32

32:                                               ; preds = %30, %12
  %33 = phi ptr [ %13, %12 ], [ %31, %30 ]
  %34 = phi ptr [ %14, %12 ], [ %39, %30 ]
  store ptr %34, ptr %2, align 8, !tbaa !21
  %35 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %2) #19, !range !26
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %111, label %83

37:                                               ; preds = %12, %79
  %38 = phi ptr [ %80, %79 ], [ %8, %12 ]
  %39 = tail call fastcc ptr @VEC_gimple_base_pop(ptr noundef %38) #19
  %40 = tail call fastcc i32 @gimple_code(ptr noundef %39) #19, !range !91
  %41 = icmp eq i32 %40, 16
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %39) #19
  call fastcc void @VEC_gimple_heap_reserve(ptr noundef nonnull %1, i32 noundef %43) #19
  %44 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %39) #19
  %45 = icmp eq i32 %44, 0
  %46 = load ptr, ptr %1, align 8
  br i1 %45, label %79, label %47

47:                                               ; preds = %42, %58
  %48 = phi i32 [ %59, %58 ], [ 0, %42 ]
  %49 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %39, i32 noundef %48) #19
  %50 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %49) #19
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 141
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = tail call fastcc ptr @mark_operand_necessary(ptr noundef nonnull %50) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %46, ptr noundef nonnull %55) #19
  br label %58

58:                                               ; preds = %54, %57, %47
  %59 = add nuw i32 %48, 1
  %60 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %39) #19
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %47, label %79, !llvm.loop !92

62:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %63 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %39, i32 noundef 5) #19
  %64 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %62, %71
  %67 = phi ptr [ %72, %71 ], [ %63, %62 ]
  %68 = tail call fastcc ptr @mark_operand_necessary(ptr noundef %67) #19
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %68) #19
  br label %71

71:                                               ; preds = %70, %66
  %72 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %73 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %66, label %75, !llvm.loop !93

75:                                               ; preds = %71
  %76 = load ptr, ptr %1, align 8
  br label %77

77:                                               ; preds = %75, %62
  %78 = phi ptr [ %76, %75 ], [ %38, %62 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  br label %79

79:                                               ; preds = %58, %42, %77
  %80 = phi ptr [ %46, %42 ], [ %78, %77 ], [ %46, %58 ]
  %81 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %80) #19
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %30, label %37, !llvm.loop !94

83:                                               ; preds = %32, %106
  %84 = phi ptr [ %107, %106 ], [ %33, %32 ]
  %85 = phi i32 [ %108, %106 ], [ 0, %32 ]
  %86 = load ptr, ptr %2, align 8, !tbaa !21
  %87 = call fastcc i32 @gimple_plf(ptr noundef %86) #19
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = call i64 @fwrite(ptr nonnull @.str.27, i64 31, i64 1, ptr nonnull %90)
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_gimple_stmt(ptr noundef %98, ptr noundef %86, i32 noundef 0, i32 noundef 0) #20
  br label %99

99:                                               ; preds = %96, %92, %89
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %86) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %100 = call fastcc i32 @gimple_code(ptr noundef %86) #19, !range !91
  %101 = icmp eq i32 %100, 16
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  call void @remove_phi_node(ptr noundef nonnull %4, i8 noundef zeroext 1) #20
  br label %104

103:                                              ; preds = %99
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 1) #20
  call void @release_defs(ptr noundef %86) #20
  br label %104

104:                                              ; preds = %103, %102
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %105 = load ptr, ptr @inserted_exprs, align 8
  br label %106

106:                                              ; preds = %83, %104
  %107 = phi ptr [ %84, %83 ], [ %105, %104 ]
  %108 = add nuw nsw i32 %85, 1
  %109 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %107, i32 noundef %108, ptr noundef nonnull %2) #19, !range !26
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %83, !llvm.loop !96

111:                                              ; preds = %106, %32
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret void
}

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_pre(i8 noundef zeroext %0) unnamed_addr #0 {
  store i32 1, ptr @next_expression_id, align 4, !tbaa !29
  store ptr null, ptr @expressions, align 8, !tbaa !21
  tail call fastcc void @VEC_pre_expr_heap_safe_push(ptr noundef nonnull @expressions, ptr noundef null) #19
  %2 = tail call i32 @get_max_value_id() #20
  %3 = add i32 %2, 1
  %4 = tail call fastcc ptr @VEC_bitmap_set_t_heap_alloc(i32 noundef %3) #19
  store ptr %4, ptr @value_expressions, align 8, !tbaa !21
  %5 = tail call i32 @get_max_value_id() #20
  %6 = add i32 %5, 1
  tail call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %6) #19
  store ptr null, ptr @name_to_id, align 8, !tbaa !21
  store i8 %0, ptr @in_fre, align 1, !tbaa !11
  store ptr null, ptr @inserted_exprs, align 8, !tbaa !21
  store ptr null, ptr @need_creation, align 8, !tbaa !21
  store ptr null, ptr @pretemp, align 8, !tbaa !21
  store ptr null, ptr @prephitemp, align 8, !tbaa !21
  tail call void @connect_infinite_loops_to_exit() #20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) @pre_stats, i8 0, i64 20, i1 false)
  %7 = load ptr, ptr @cfun, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !82
  %12 = add nsw i32 %11, -2
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr @xmalloc(i64 noundef %14) #20
  store ptr %15, ptr @postorder, align 8, !tbaa !21
  tail call fastcc void @my_rev_post_order_compute(ptr noundef %15) #19
  %16 = load ptr, ptr @cfun, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %1, %21
  %22 = phi ptr [ %26, %21 ], [ %19, %1 ]
  %23 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #20
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !73
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %21, !llvm.loop !97

28:                                               ; preds = %21, %1
  tail call void @calculate_dominance_info(i32 noundef 2) #20
  tail call void @calculate_dominance_info(i32 noundef 1) #20
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @grand_bitmap_obstack) #20
  %29 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  store ptr %29, ptr @inserted_phi_names, align 8, !tbaa !21
  %30 = tail call ptr @htab_create(i64 noundef 5110, ptr noundef nonnull @expr_pred_trans_hash, ptr noundef nonnull @expr_pred_trans_eq, ptr noundef nonnull @free) #20
  store ptr %30, ptr @phi_translate_table, align 8, !tbaa !21
  %31 = load ptr, ptr @cfun, align 8, !tbaa !21
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !30
  %34 = getelementptr inbounds %struct.gimple_df, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !32
  %36 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %35) #19
  %37 = mul i32 %36, 3
  %38 = zext i32 %37 to i64
  %39 = tail call ptr @htab_create(i64 noundef %38, ptr noundef nonnull @pre_expr_hash, ptr noundef nonnull @pre_expr_eq, ptr noundef null) #20
  store ptr %39, ptr @expression_to_id, align 8, !tbaa !21
  %40 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.30, i64 noundef 16, i64 noundef 30) #20
  store ptr %40, ptr @bitmap_set_pool, align 8, !tbaa !21
  %41 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.31, i64 noundef 16, i64 noundef 30) #20
  store ptr %41, ptr @pre_expr_pool, align 8, !tbaa !21
  %42 = load ptr, ptr @cfun, align 8, !tbaa !21
  %43 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = load ptr, ptr %44, align 8, !tbaa !21
  %46 = icmp eq ptr %45, null
  br i1 %46, label %64, label %47

47:                                               ; preds = %28, %47
  %48 = phi ptr [ %62, %47 ], [ %45, %28 ]
  %49 = tail call fastcc ptr @bitmap_set_new() #19
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  store ptr %49, ptr %51, align 8, !tbaa !75
  %52 = tail call fastcc ptr @bitmap_set_new() #19
  %53 = load ptr, ptr %50, align 8, !tbaa !73
  %54 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %53, i64 0, i32 1
  store ptr %52, ptr %54, align 8, !tbaa !78
  %55 = tail call fastcc ptr @bitmap_set_new() #19
  %56 = load ptr, ptr %50, align 8, !tbaa !73
  %57 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %56, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !79
  %58 = tail call fastcc ptr @bitmap_set_new() #19
  %59 = load ptr, ptr %50, align 8, !tbaa !73
  %60 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %59, i64 0, i32 3
  store ptr %58, ptr %60, align 8, !tbaa !80
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %47, !llvm.loop !98

64:                                               ; preds = %47, %28
  %65 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #20
  store ptr %65, ptr @need_eh_cleanup, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare void @scev_initialize() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_avail() unnamed_addr #0 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = load ptr, ptr @cfun, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !32
  %15 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %14) #19
  %16 = icmp ugt i32 %15, 1
  br i1 %16, label %17, label %64

17:                                               ; preds = %0, %55
  %18 = phi ptr [ %61, %55 ], [ %14, %0 ]
  %19 = phi i32 [ %56, %55 ], [ 1, %0 ]
  %20 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %18, i32 noundef %19) #19
  %21 = icmp eq ptr %20, null
  br i1 %21, label %55, label %22

22:                                               ; preds = %17
  %23 = load i64, ptr %20, align 8
  %24 = and i64 %23, 4294967296
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %55, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %20) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %20) #20
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %20) #19
  %34 = tail call fastcc i32 @get_expr_value_id(ptr noundef %33) #19
  tail call void @add_to_value(i32 noundef %34, ptr noundef %33) #19
  %35 = load i8, ptr @in_fre, align 1, !tbaa !11
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load ptr, ptr @cfun, align 8, !tbaa !21
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !79
  tail call fastcc void @bitmap_insert_into_set(ptr noundef %45, ptr noundef %33) #19
  br label %46

46:                                               ; preds = %37, %32
  %47 = load ptr, ptr @cfun, align 8, !tbaa !21
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  %50 = load ptr, ptr %49, align 8, !tbaa !99
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !73
  %53 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %52, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !80
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %54, ptr noundef %33) #19
  br label %55

55:                                               ; preds = %17, %22, %26, %29, %46
  %56 = add nuw i32 %19, 1
  %57 = load ptr, ptr @cfun, align 8, !tbaa !21
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !30
  %60 = getelementptr inbounds %struct.gimple_df, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !32
  %62 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %61) #19
  %63 = icmp ult i32 %56, %62
  br i1 %63, label %17, label %64, !llvm.loop !100

64:                                               ; preds = %55, %0
  %65 = phi ptr [ %10, %0 ], [ %57, %55 ]
  %66 = getelementptr inbounds %struct.function, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !72
  %68 = getelementptr inbounds %struct.control_flow_graph, ptr %67, i64 0, i32 3
  %69 = load i32, ptr %68, align 8, !tbaa !82
  %70 = sext i32 %69 to i64
  %71 = shl nsw i64 %70, 3
  %72 = tail call ptr @xmalloc(i64 noundef %71) #20
  %73 = load ptr, ptr @cfun, align 8, !tbaa !21
  %74 = getelementptr inbounds %struct.function, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !72
  %76 = load ptr, ptr %75, align 8, !tbaa !99
  %77 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %76) #20
  %78 = icmp eq ptr %77, null
  br i1 %78, label %373, label %81

79:                                               ; preds = %81
  %80 = icmp eq i64 %84, 0
  br i1 %80, label %373, label %88

81:                                               ; preds = %64, %81
  %82 = phi ptr [ %86, %81 ], [ %77, %64 ]
  %83 = phi i64 [ %84, %81 ], [ 0, %64 ]
  %84 = add i64 %83, 1
  %85 = getelementptr inbounds ptr, ptr %72, i64 %83
  store ptr %82, ptr %85, align 8, !tbaa !21
  %86 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %82) #20
  %87 = icmp eq ptr %86, null
  br i1 %87, label %79, label %81, !llvm.loop !101

88:                                               ; preds = %79, %370
  %89 = phi i64 [ %371, %370 ], [ %84, %79 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  %90 = add i64 %89, -1
  %91 = getelementptr inbounds ptr, ptr %72, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !21
  %93 = call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %92) #20
  %94 = icmp eq ptr %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !73
  %98 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %97, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !80
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !73
  %102 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %101, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !80
  call fastcc void @bitmap_set_copy(ptr noundef %99, ptr noundef %103) #19
  br label %104

104:                                              ; preds = %95, %88
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %92) #20
  %105 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !56
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104, %107
  %108 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19
  call fastcc void @make_values_for_phi(ptr noundef %108, ptr noundef %92) #19
  call fastcc void @gsi_next(ptr noundef nonnull %1) #19
  %109 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !56
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %107, label %111, !llvm.loop !102

111:                                              ; preds = %107, %104
  %112 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !73
  %114 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %113, i64 0, i32 8
  %115 = load i8, ptr %114, align 8
  %116 = and i8 %115, -5
  store i8 %116, ptr %114, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %92) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  %117 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !56
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %360

119:                                              ; preds = %111, %357
  %120 = phi i32 [ %122, %357 ], [ 1, %111 ]
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #21
  %121 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19
  %122 = add i32 %120, 1
  call fastcc void @gimple_set_uid(ptr noundef %121, i32 noundef %120) #19
  %123 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %121) #19, !range !56
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %119
  %126 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %121) #20
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = call i32 @gimple_call_flags(ptr noundef %121) #20
  %130 = and i32 %129, 5
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %137, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %112, align 8, !tbaa !73
  %134 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %133, i64 0, i32 8
  %135 = load i8, ptr %134, align 8
  %136 = or i8 %135, 4
  store i8 %136, ptr %134, align 8
  br label %137

137:                                              ; preds = %132, %128, %125, %119
  %138 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %121, i32 noundef 2) #19
  %139 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %158

141:                                              ; preds = %137, %151
  %142 = phi ptr [ %155, %151 ], [ %138, %137 ]
  %143 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %142) #19
  %144 = call fastcc i32 @get_expr_value_id(ptr noundef %143) #19
  call void @add_to_value(i32 noundef %144, ptr noundef %143) #19
  %145 = load i8, ptr @in_fre, align 1, !tbaa !11
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load ptr, ptr %112, align 8, !tbaa !73
  %149 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !79
  call fastcc void @bitmap_insert_into_set(ptr noundef %150, ptr noundef %143) #19
  br label %151

151:                                              ; preds = %147, %141
  %152 = load ptr, ptr %112, align 8, !tbaa !73
  %153 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %152, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !80
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %154, ptr noundef %143) #19
  %155 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %156 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %141, label %158, !llvm.loop !103

158:                                              ; preds = %151, %137
  %159 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %121) #19, !range !56
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %357

161:                                              ; preds = %158
  %162 = call zeroext i8 @stmt_could_throw_p(ptr noundef %121) #20
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %357

164:                                              ; preds = %161
  %165 = call fastcc i32 @gimple_code(ptr noundef %121) #19, !range !91
  %166 = trunc i32 %165 to i8
  switch i8 %166, label %357 [
    i8 9, label %167
    i8 8, label %176
    i8 6, label %241
  ]

167:                                              ; preds = %164
  %168 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %121, i32 noundef 1) #19
  %169 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %171, label %357

171:                                              ; preds = %167, %171
  %172 = phi ptr [ %173, %171 ], [ %168, %167 ]
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef %172) #19
  %173 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %174 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %171, label %357, !llvm.loop !104

176:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !21
  %177 = call fastcc zeroext i8 @can_value_number_call(ptr noundef %121) #19, !range !56
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %240, label %179

179:                                              ; preds = %176
  call void @copy_reference_ops_from_call(ptr noundef %121, ptr noundef nonnull %6) #20
  %180 = call fastcc ptr @gimple_vuse(ptr noundef %121) #19
  %181 = call fastcc ptr @gimple_expr_type(ptr noundef %121) #19
  %182 = load ptr, ptr %6, align 8, !tbaa !21
  %183 = call ptr @vn_reference_lookup_pieces(ptr noundef %180, i32 noundef 0, ptr noundef %181, ptr noundef %182, ptr noundef nonnull %4, i8 noundef zeroext 0) #20
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %6) #19
  %184 = load ptr, ptr %4, align 8, !tbaa !21
  %185 = icmp eq ptr %184, null
  br i1 %185, label %240, label %186

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.vn_reference_s, ptr %184, i64 0, i32 5
  %188 = load ptr, ptr %187, align 8, !tbaa !46
  %189 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %188, i32 noundef 0, ptr noundef nonnull %5) #19, !range !26
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %227, label %191

191:                                              ; preds = %186, %220
  %192 = phi i32 [ %221, %220 ], [ 0, %186 ]
  %193 = load ptr, ptr %5, align 8, !tbaa !21
  %194 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %193, i64 0, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !49
  %196 = icmp eq ptr %195, null
  br i1 %196, label %202, label %197

197:                                              ; preds = %191
  %198 = load i64, ptr %195, align 8
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 141
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %195) #19
  br label %202

202:                                              ; preds = %201, %197, %191
  %203 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %193, i64 0, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !50
  %205 = icmp eq ptr %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %202
  %207 = load i64, ptr %204, align 8
  %208 = and i64 %207, 65535
  %209 = icmp eq i64 %208, 141
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %204) #19
  br label %211

211:                                              ; preds = %210, %206, %202
  %212 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %193, i64 0, i32 4
  %213 = load ptr, ptr %212, align 8, !tbaa !51
  %214 = icmp eq ptr %213, null
  br i1 %214, label %220, label %215

215:                                              ; preds = %211
  %216 = load i64, ptr %213, align 8
  %217 = and i64 %216, 65535
  %218 = icmp eq i64 %217, 141
  br i1 %218, label %219, label %220

219:                                              ; preds = %215
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %213) #19
  br label %220

220:                                              ; preds = %211, %215, %219
  %221 = add i32 %192, 1
  %222 = load ptr, ptr %4, align 8, !tbaa !21
  %223 = getelementptr inbounds %struct.vn_reference_s, ptr %222, i64 0, i32 5
  %224 = load ptr, ptr %223, align 8, !tbaa !46
  %225 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %224, i32 noundef %221, ptr noundef nonnull %5) #19, !range !26
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %191, !llvm.loop !105

227:                                              ; preds = %220, %186
  %228 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !21
  %229 = call ptr @pool_alloc(ptr noundef %228) #20
  store i32 2, ptr %229, align 8, !tbaa !6
  %230 = getelementptr inbounds %struct.pre_expr_d, ptr %229, i64 0, i32 1
  store i32 0, ptr %230, align 4, !tbaa !28
  %231 = load ptr, ptr %4, align 8, !tbaa !21
  %232 = getelementptr inbounds %struct.pre_expr_d, ptr %229, i64 0, i32 2
  store ptr %231, ptr %232, align 8, !tbaa !11
  %233 = call fastcc i32 @get_or_alloc_expression_id(ptr noundef nonnull %229) #19
  %234 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %229) #19
  call void @add_to_value(i32 noundef %234, ptr noundef nonnull %229) #19
  %235 = load i8, ptr @in_fre, align 1, !tbaa !11
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %227
  %238 = load ptr, ptr %112, align 8, !tbaa !73
  %239 = load ptr, ptr %238, align 8, !tbaa !75
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %239, ptr noundef nonnull %229) #19
  br label %240

240:                                              ; preds = %227, %237, %179, %176
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %357

241:                                              ; preds = %164
  %242 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %121) #19, !range !106
  %243 = zext nneg i32 %242 to i64
  %244 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !29
  switch i32 %245, label %339 [
    i32 6, label %246
    i32 7, label %246
    i32 5, label %246
    i32 3, label %285
    i32 4, label %285
  ]

246:                                              ; preds = %241, %241, %241
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %247 = call fastcc i32 @gimple_num_ops(ptr noundef %121) #19
  %248 = add i32 %247, -1
  %249 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %121) #19, !range !106
  %250 = call fastcc ptr @gimple_expr_type(ptr noundef %121) #19
  %251 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %121) #19
  %252 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %121) #19
  %253 = call ptr @vn_nary_op_lookup_pieces(i32 noundef %248, i32 noundef %249, ptr noundef %250, ptr noundef %251, ptr noundef %252, ptr noundef null, ptr noundef null, ptr noundef nonnull %7) #20
  %254 = load ptr, ptr %7, align 8, !tbaa !21
  %255 = icmp eq ptr %254, null
  br i1 %255, label %260, label %256

256:                                              ; preds = %246
  %257 = getelementptr inbounds %struct.vn_nary_op_s, ptr %254, i64 0, i32 1
  %258 = load i32, ptr %257, align 4
  %259 = icmp ult i32 %258, 65536
  br i1 %259, label %279, label %261

260:                                              ; preds = %246
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %357

261:                                              ; preds = %256, %271
  %262 = phi ptr [ %272, %271 ], [ %254, %256 ]
  %263 = phi i64 [ %273, %271 ], [ 0, %256 ]
  %264 = getelementptr inbounds %struct.vn_nary_op_s, ptr %262, i64 0, i32 5, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !21
  %266 = load i64, ptr %265, align 8
  %267 = and i64 %266, 65535
  %268 = icmp eq i64 %267, 141
  br i1 %268, label %269, label %271

269:                                              ; preds = %261
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %265) #19
  %270 = load ptr, ptr %7, align 8, !tbaa !21
  br label %271

271:                                              ; preds = %261, %269
  %272 = phi ptr [ %262, %261 ], [ %270, %269 ]
  %273 = add nuw nsw i64 %263, 1
  %274 = getelementptr inbounds %struct.vn_nary_op_s, ptr %272, i64 0, i32 1
  %275 = load i32, ptr %274, align 4
  %276 = lshr i32 %275, 16
  %277 = zext nneg i32 %276 to i64
  %278 = icmp ult i64 %273, %277
  br i1 %278, label %261, label %279, !llvm.loop !107

279:                                              ; preds = %271, %256
  %280 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !21
  %281 = call ptr @pool_alloc(ptr noundef %280) #20
  store i32 1, ptr %281, align 8, !tbaa !6
  %282 = getelementptr inbounds %struct.pre_expr_d, ptr %281, i64 0, i32 1
  store i32 0, ptr %282, align 4, !tbaa !28
  %283 = load ptr, ptr %7, align 8, !tbaa !21
  %284 = getelementptr inbounds %struct.pre_expr_d, ptr %281, i64 0, i32 2
  store ptr %283, ptr %284, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %348

285:                                              ; preds = %241, %241
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %286 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %121) #19
  %287 = call fastcc ptr @gimple_vuse(ptr noundef %121) #19
  %288 = call ptr @vn_reference_lookup(ptr noundef %286, ptr noundef %287, i8 noundef zeroext 1, ptr noundef nonnull %8) #20
  %289 = load ptr, ptr %8, align 8, !tbaa !21
  %290 = icmp eq ptr %289, null
  br i1 %290, label %296, label %291

291:                                              ; preds = %285
  %292 = getelementptr inbounds %struct.vn_reference_s, ptr %289, i64 0, i32 5
  %293 = load ptr, ptr %292, align 8, !tbaa !46
  %294 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %293, i32 noundef 0, ptr noundef nonnull %9) #19, !range !26
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %333, label %297

296:                                              ; preds = %285
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %357

297:                                              ; preds = %291, %326
  %298 = phi i32 [ %327, %326 ], [ 0, %291 ]
  %299 = load ptr, ptr %9, align 8, !tbaa !21
  %300 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %299, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !49
  %302 = icmp eq ptr %301, null
  br i1 %302, label %308, label %303

303:                                              ; preds = %297
  %304 = load i64, ptr %301, align 8
  %305 = and i64 %304, 65535
  %306 = icmp eq i64 %305, 141
  br i1 %306, label %307, label %308

307:                                              ; preds = %303
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %301) #19
  br label %308

308:                                              ; preds = %307, %303, %297
  %309 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %299, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !50
  %311 = icmp eq ptr %310, null
  br i1 %311, label %317, label %312

312:                                              ; preds = %308
  %313 = load i64, ptr %310, align 8
  %314 = and i64 %313, 65535
  %315 = icmp eq i64 %314, 141
  br i1 %315, label %316, label %317

316:                                              ; preds = %312
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %310) #19
  br label %317

317:                                              ; preds = %316, %312, %308
  %318 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %299, i64 0, i32 4
  %319 = load ptr, ptr %318, align 8, !tbaa !51
  %320 = icmp eq ptr %319, null
  br i1 %320, label %326, label %321

321:                                              ; preds = %317
  %322 = load i64, ptr %319, align 8
  %323 = and i64 %322, 65535
  %324 = icmp eq i64 %323, 141
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef nonnull %319) #19
  br label %326

326:                                              ; preds = %317, %321, %325
  %327 = add i32 %298, 1
  %328 = load ptr, ptr %8, align 8, !tbaa !21
  %329 = getelementptr inbounds %struct.vn_reference_s, ptr %328, i64 0, i32 5
  %330 = load ptr, ptr %329, align 8, !tbaa !46
  %331 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %330, i32 noundef %327, ptr noundef nonnull %9) #19, !range !26
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %297, !llvm.loop !108

333:                                              ; preds = %326, %291
  %334 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !21
  %335 = call ptr @pool_alloc(ptr noundef %334) #20
  store i32 2, ptr %335, align 8, !tbaa !6
  %336 = getelementptr inbounds %struct.pre_expr_d, ptr %335, i64 0, i32 1
  store i32 0, ptr %336, align 4, !tbaa !28
  %337 = load ptr, ptr %8, align 8, !tbaa !21
  %338 = getelementptr inbounds %struct.pre_expr_d, ptr %335, i64 0, i32 2
  store ptr %337, ptr %338, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %348

339:                                              ; preds = %241
  %340 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %121, i32 noundef 1) #19
  %341 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %343, label %357

343:                                              ; preds = %339, %343
  %344 = phi ptr [ %345, %343 ], [ %340, %339 ]
  call fastcc void @add_to_exp_gen(ptr noundef %92, ptr noundef %344) #19
  %345 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #19
  %346 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #19
  %347 = icmp eq i8 %346, 0
  br i1 %347, label %343, label %357, !llvm.loop !109

348:                                              ; preds = %279, %333
  %349 = phi ptr [ %335, %333 ], [ %281, %279 ]
  %350 = call fastcc i32 @get_or_alloc_expression_id(ptr noundef nonnull %349) #19
  %351 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %349) #19
  call void @add_to_value(i32 noundef %351, ptr noundef nonnull %349) #19
  %352 = load i8, ptr @in_fre, align 1, !tbaa !11
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %348
  %355 = load ptr, ptr %112, align 8, !tbaa !73
  %356 = load ptr, ptr %355, align 8, !tbaa !75
  call fastcc void @bitmap_value_insert_into_set(ptr noundef %356, ptr noundef nonnull %349) #19
  br label %357

357:                                              ; preds = %343, %171, %339, %167, %296, %260, %164, %354, %348, %158, %161, %240
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #21
  call fastcc void @gsi_next(ptr noundef nonnull %1) #19
  %358 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #19, !range !56
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %119, label %360, !llvm.loop !110

360:                                              ; preds = %357, %111
  %361 = call ptr @first_dom_son(i32 noundef 1, ptr noundef %92) #20
  %362 = icmp eq ptr %361, null
  br i1 %362, label %370, label %363

363:                                              ; preds = %360, %363
  %364 = phi ptr [ %368, %363 ], [ %361, %360 ]
  %365 = phi i64 [ %366, %363 ], [ %90, %360 ]
  %366 = add i64 %365, 1
  %367 = getelementptr inbounds ptr, ptr %72, i64 %365
  store ptr %364, ptr %367, align 8, !tbaa !21
  %368 = call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %364) #20
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %363, !llvm.loop !111

370:                                              ; preds = %363, %360
  %371 = phi i64 [ %90, %360 ], [ %366, %363 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #21
  %372 = icmp eq i64 %371, 0
  br i1 %372, label %373, label %88, !llvm.loop !112

373:                                              ; preds = %370, %64, %79
  call void @free(ptr noundef %72) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_antic() unnamed_addr #0 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !113
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %7) #20
  store ptr %8, ptr @has_abnormal_preds, align 8, !tbaa !21
  tail call void @sbitmap_zero(ptr noundef %8) #20
  %9 = load ptr, ptr @cfun, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !115
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %65, label %18

18:                                               ; preds = %0
  %19 = getelementptr inbounds i8, ptr %1, i64 8
  br label %20

20:                                               ; preds = %18, %41
  %21 = phi ptr [ %14, %18 ], [ %58, %41 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %22 = tail call fastcc ptr @ei_start_1(ptr noundef %21) #19
  store i32 0, ptr %1, align 8, !tbaa.struct !116
  store ptr %22, ptr %19, align 8, !tbaa.struct !117
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %22, ptr noundef nonnull %2) #19, !range !56
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20, %36
  %26 = load ptr, ptr %2, align 8, !tbaa !21
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 7
  %28 = load i32, ptr %27, align 8, !tbaa !118
  %29 = and i32 %28, -33
  store i32 %29, ptr %27, align 8, !tbaa !118
  %30 = and i32 %28, 2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !21
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !77
  tail call fastcc void @SET_BIT(ptr noundef %33, i32 noundef %35) #19
  br label %41

36:                                               ; preds = %25
  call fastcc void @ei_next(ptr noundef nonnull %1) #19
  %37 = load i32, ptr %1, align 8
  %38 = load ptr, ptr %19, align 8
  %39 = call fastcc zeroext i8 @ei_cond(i32 %37, ptr %38, ptr noundef nonnull %2) #19, !range !56
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %25, !llvm.loop !120

41:                                               ; preds = %36, %20, %32
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %43, i64 0, i32 8
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %45, -2
  store i8 %46, ptr %44, align 8
  %47 = load ptr, ptr %42, align 8, !tbaa !73
  %48 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %47, i64 0, i32 8
  %49 = load i8, ptr %48, align 8
  %50 = and i8 %49, -3
  store i8 %50, ptr %48, align 8
  %51 = tail call fastcc ptr @bitmap_set_new() #19
  %52 = load ptr, ptr %42, align 8, !tbaa !73
  %53 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %52, i64 0, i32 4
  store ptr %51, ptr %53, align 8, !tbaa !121
  %54 = tail call fastcc ptr @bitmap_set_new() #19
  %55 = load ptr, ptr %42, align 8, !tbaa !73
  %56 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %55, i64 0, i32 5
  store ptr %54, ptr %56, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !114
  %59 = load ptr, ptr @cfun, align 8, !tbaa !21
  %60 = getelementptr inbounds %struct.function, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !72
  %62 = getelementptr inbounds %struct.control_flow_graph, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !115
  %64 = icmp eq ptr %58, %63
  br i1 %64, label %65, label %20, !llvm.loop !123

65:                                               ; preds = %41, %0
  %66 = tail call fastcc ptr @bitmap_set_new() #19
  %67 = load ptr, ptr @cfun, align 8, !tbaa !21
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !72
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !115
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !73
  %74 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %73, i64 0, i32 4
  store ptr %66, ptr %74, align 8, !tbaa !121
  %75 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %73, i64 0, i32 8
  %76 = load i8, ptr %75, align 8
  %77 = or i8 %76, 1
  store i8 %77, ptr %75, align 8
  %78 = tail call fastcc ptr @bitmap_set_new() #19
  %79 = load ptr, ptr @cfun, align 8, !tbaa !21
  %80 = getelementptr inbounds %struct.function, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !72
  %82 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !115
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !73
  %86 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %85, i64 0, i32 5
  store ptr %78, ptr %86, align 8, !tbaa !122
  %87 = getelementptr inbounds %struct.control_flow_graph, ptr %81, i64 0, i32 5
  %88 = load i32, ptr %87, align 8, !tbaa !113
  %89 = add nsw i32 %88, 1
  %90 = tail call ptr @sbitmap_alloc(i32 noundef %89) #20
  store ptr %90, ptr @changed_blocks, align 8, !tbaa !21
  tail call void @sbitmap_ones(ptr noundef %90) #20
  br label %93

91:                                               ; preds = %155
  %92 = icmp eq i8 %158, 0
  br i1 %92, label %161, label %93, !llvm.loop !124

93:                                               ; preds = %65, %91
  %94 = phi i32 [ 0, %65 ], [ %104, %91 ]
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %96 = icmp eq ptr %95, null
  br i1 %96, label %103, label %97

97:                                               ; preds = %93
  %98 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %99 = and i32 %98, 8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %95, ptr noundef nonnull @.str.33, i32 noundef %94) #19
  br label %103

103:                                              ; preds = %101, %97, %93
  %104 = add nuw nsw i32 %94, 1
  %105 = load ptr, ptr @cfun, align 8, !tbaa !21
  %106 = getelementptr inbounds %struct.function, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !72
  %108 = getelementptr inbounds %struct.control_flow_graph, ptr %107, i64 0, i32 3
  %109 = load i32, ptr %108, align 8, !tbaa !82
  %110 = icmp sgt i32 %109, 2
  br i1 %110, label %111, label %161

111:                                              ; preds = %103
  %112 = add nsw i32 %109, -3
  %113 = zext nneg i32 %112 to i64
  %114 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %115 = load ptr, ptr @postorder, align 8, !tbaa !21
  br label %116

116:                                              ; preds = %111, %155
  %117 = phi ptr [ %115, %111 ], [ %156, %155 ]
  %118 = phi ptr [ %114, %111 ], [ %157, %155 ]
  %119 = phi i64 [ %113, %111 ], [ %159, %155 ]
  %120 = phi i8 [ 0, %111 ], [ %158, %155 ]
  %121 = getelementptr inbounds i32, ptr %117, i64 %119
  %122 = load i32, ptr %121, align 4, !tbaa !29
  %123 = lshr i32 %122, 6
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds %struct.simple_bitmap_def, ptr %118, i64 0, i32 3, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !67
  %127 = and i32 %122, 63
  %128 = zext nneg i32 %127 to i64
  %129 = shl nuw i64 1, %128
  %130 = and i64 %129, %126
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %155, label %132

132:                                              ; preds = %116
  %133 = load ptr, ptr @cfun, align 8, !tbaa !21
  %134 = getelementptr inbounds %struct.function, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !72
  %136 = getelementptr inbounds %struct.control_flow_graph, ptr %135, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !125
  %138 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %137, i32 noundef %122) #19
  %139 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !21
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %138, i64 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !77
  %142 = lshr i32 %141, 6
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds %struct.simple_bitmap_def, ptr %139, i64 0, i32 3, i64 %143
  %145 = load i64, ptr %144, align 8, !tbaa !67
  %146 = and i32 %141, 63
  %147 = zext nneg i32 %146 to i64
  %148 = lshr i64 %145, %147
  %149 = trunc i64 %148 to i8
  %150 = and i8 %149, 1
  %151 = tail call fastcc zeroext i8 @compute_antic_aux(ptr noundef %138, i8 noundef zeroext %150) #19
  %152 = or i8 %151, %120
  %153 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %154 = load ptr, ptr @postorder, align 8, !tbaa !21
  br label %155

155:                                              ; preds = %116, %132
  %156 = phi ptr [ %154, %132 ], [ %117, %116 ]
  %157 = phi ptr [ %153, %132 ], [ %118, %116 ]
  %158 = phi i8 [ %152, %132 ], [ %120, %116 ]
  %159 = add nsw i64 %119, -1
  %160 = icmp sgt i64 %119, 0
  br i1 %160, label %116, label %91, !llvm.loop !126

161:                                              ; preds = %103, %91
  %162 = load ptr, ptr @cfun, align 8, !tbaa !21
  tail call void @statistics_histogram_event(ptr noundef %162, ptr noundef nonnull @.str.34, i32 noundef %104) #20
  %163 = load i8, ptr @do_partial_partial, align 1, !tbaa !11
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %240, label %165

165:                                              ; preds = %161
  %166 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  tail call void @sbitmap_ones(ptr noundef %166) #20
  %167 = tail call zeroext i8 @mark_dfs_back_edges() #20
  br label %170

168:                                              ; preds = %232
  %169 = icmp eq i8 %235, 0
  br i1 %169, label %238, label %170, !llvm.loop !127

170:                                              ; preds = %165, %168
  %171 = phi i32 [ 0, %165 ], [ %181, %168 ]
  %172 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %173 = icmp eq ptr %172, null
  br i1 %173, label %180, label %174

174:                                              ; preds = %170
  %175 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %176 = and i32 %175, 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %172, ptr noundef nonnull @.str.33, i32 noundef %171) #19
  br label %180

180:                                              ; preds = %178, %174, %170
  %181 = add nuw nsw i32 %171, 1
  %182 = load ptr, ptr @cfun, align 8, !tbaa !21
  %183 = getelementptr inbounds %struct.function, ptr %182, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !72
  %185 = getelementptr inbounds %struct.control_flow_graph, ptr %184, i64 0, i32 3
  %186 = load i32, ptr %185, align 8, !tbaa !82
  %187 = icmp sgt i32 %186, 2
  br i1 %187, label %188, label %238

188:                                              ; preds = %180
  %189 = add nsw i32 %186, -3
  %190 = zext nneg i32 %189 to i64
  %191 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %192 = load ptr, ptr @postorder, align 8, !tbaa !21
  br label %193

193:                                              ; preds = %188, %232
  %194 = phi ptr [ %192, %188 ], [ %233, %232 ]
  %195 = phi ptr [ %191, %188 ], [ %234, %232 ]
  %196 = phi i64 [ %190, %188 ], [ %236, %232 ]
  %197 = phi i8 [ 0, %188 ], [ %235, %232 ]
  %198 = getelementptr inbounds i32, ptr %194, i64 %196
  %199 = load i32, ptr %198, align 4, !tbaa !29
  %200 = lshr i32 %199, 6
  %201 = zext nneg i32 %200 to i64
  %202 = getelementptr inbounds %struct.simple_bitmap_def, ptr %195, i64 0, i32 3, i64 %201
  %203 = load i64, ptr %202, align 8, !tbaa !67
  %204 = and i32 %199, 63
  %205 = zext nneg i32 %204 to i64
  %206 = shl nuw i64 1, %205
  %207 = and i64 %206, %203
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %232, label %209

209:                                              ; preds = %193
  %210 = load ptr, ptr @cfun, align 8, !tbaa !21
  %211 = getelementptr inbounds %struct.function, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !72
  %213 = getelementptr inbounds %struct.control_flow_graph, ptr %212, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !125
  %215 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %214, i32 noundef %199) #19
  %216 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !21
  %217 = getelementptr inbounds %struct.basic_block_def, ptr %215, i64 0, i32 9
  %218 = load i32, ptr %217, align 8, !tbaa !77
  %219 = lshr i32 %218, 6
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds %struct.simple_bitmap_def, ptr %216, i64 0, i32 3, i64 %220
  %222 = load i64, ptr %221, align 8, !tbaa !67
  %223 = and i32 %218, 63
  %224 = zext nneg i32 %223 to i64
  %225 = lshr i64 %222, %224
  %226 = trunc i64 %225 to i8
  %227 = and i8 %226, 1
  %228 = tail call fastcc zeroext i8 @compute_partial_antic_aux(ptr noundef %215, i8 noundef zeroext %227) #19, !range !56
  %229 = or i8 %228, %197
  %230 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %231 = load ptr, ptr @postorder, align 8, !tbaa !21
  br label %232

232:                                              ; preds = %193, %209
  %233 = phi ptr [ %231, %209 ], [ %194, %193 ]
  %234 = phi ptr [ %230, %209 ], [ %195, %193 ]
  %235 = phi i8 [ %229, %209 ], [ %197, %193 ]
  %236 = add nsw i64 %196, -1
  %237 = icmp sgt i64 %196, 0
  br i1 %237, label %193, label %168, !llvm.loop !128

238:                                              ; preds = %180, %168
  %239 = load ptr, ptr @cfun, align 8, !tbaa !21
  tail call void @statistics_histogram_event(ptr noundef %239, ptr noundef nonnull @.str.35, i32 noundef %181) #20
  br label %240

240:                                              ; preds = %238, %161
  %241 = load ptr, ptr @has_abnormal_preds, align 8, !tbaa !21
  %242 = load ptr, ptr %241, align 8, !tbaa !129
  tail call void @free(ptr noundef %242) #19
  tail call void @free(ptr noundef %241) #19
  %243 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %244 = load ptr, ptr %243, align 8, !tbaa !129
  tail call void @free(ptr noundef %244) #19
  tail call void @free(ptr noundef %243) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert() unnamed_addr #0 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !21
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %0, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %0 ]
  %8 = tail call fastcc ptr @bitmap_set_new() #19
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 6
  store ptr %8, ptr %11, align 8, !tbaa !131
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !132

15:                                               ; preds = %6, %0
  br label %16

16:                                               ; preds = %15, %16
  %17 = phi i32 [ %18, %16 ], [ 0, %15 ]
  %18 = add nuw nsw i32 %17, 1
  %19 = load ptr, ptr @cfun, align 8, !tbaa !21
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = load ptr, ptr %21, align 8, !tbaa !99
  %23 = tail call fastcc zeroext i8 @insert_aux(ptr noundef %22) #19, !range !56
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %16, !llvm.loop !133

25:                                               ; preds = %16
  %26 = load ptr, ptr @cfun, align 8, !tbaa !21
  tail call void @statistics_histogram_event(ptr noundef %26, ptr noundef nonnull @.str.46, i32 noundef %18) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @eliminate() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  store ptr null, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %11 = load ptr, ptr @cfun, align 8, !tbaa !21
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = load ptr, ptr %13, align 8, !tbaa !99
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !114
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %31, label %36

20:                                               ; preds = %454, %373
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !114
  %23 = load ptr, ptr @cfun, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !115
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %29, label %36, !llvm.loop !134

29:                                               ; preds = %20
  %30 = load ptr, ptr %1, align 8
  br label %31

31:                                               ; preds = %29, %0
  %32 = phi ptr [ null, %0 ], [ %30, %29 ]
  %33 = phi i32 [ 0, %0 ], [ %374, %29 ]
  %34 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %32, i32 noundef 0, ptr noundef nonnull %3) #19, !range !26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %493, label %457

36:                                               ; preds = %0, %20
  %37 = phi ptr [ %22, %20 ], [ %16, %0 ]
  %38 = phi i32 [ %374, %20 ], [ 0, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %37) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !56
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %373

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 2
  br label %43

43:                                               ; preds = %41, %369
  %44 = phi i32 [ %38, %41 ], [ %370, %369 ]
  %45 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %45, ptr %3, align 8, !tbaa !21
  %46 = call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %45) #19, !range !56
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %234, label %48

48:                                               ; preds = %43
  %49 = call ptr @gimple_get_lhs(ptr noundef %45) #20
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 141
  br i1 %52, label %53, label %234

53:                                               ; preds = %48
  %54 = call zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef %45) #20
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %234

56:                                               ; preds = %53
  %57 = call zeroext i8 @gimple_assign_single_p(ptr noundef %45) #20
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #19
  %61 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %60) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %234

63:                                               ; preds = %59, %56
  %64 = call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %45) #19, !range !56
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %234

66:                                               ; preds = %63
  %67 = call ptr @gimple_get_lhs(ptr noundef %45) #20
  %68 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %67) #19
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %234

70:                                               ; preds = %66
  %71 = call ptr @gimple_get_lhs(ptr noundef %45) #20
  %72 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %71) #19
  %73 = call zeroext i8 @gimple_assign_single_p(ptr noundef %45) #20
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #19
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi ptr [ %76, %75 ], [ null, %70 ]
  %79 = load ptr, ptr %42, align 8, !tbaa !73
  %80 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !80
  %82 = call fastcc i32 @get_expr_value_id(ptr noundef %72) #19
  %83 = call fastcc ptr @bitmap_find_leader(ptr noundef %81, i32 noundef %82, ptr noundef null) #19
  %84 = icmp eq ptr %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %77
  %86 = load i32, ptr %83, align 8, !tbaa !6
  switch i32 %86, label %87 [
    i32 3, label %88
    i32 0, label %88
  ]

87:                                               ; preds = %85
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4163, ptr noundef nonnull @.str.1) #20
  br label %92

88:                                               ; preds = %85, %85
  %89 = getelementptr inbounds %struct.pre_expr_d, ptr %83, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !11
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %126

92:                                               ; preds = %77, %87, %88
  %93 = call ptr @VN_INFO(ptr noundef %71) #20
  %94 = load ptr, ptr %93, align 8, !tbaa !135
  %95 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %94) #20
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %128, label %97

97:                                               ; preds = %92
  %98 = call ptr @VN_INFO(ptr noundef %71) #20
  %99 = load ptr, ptr %98, align 8, !tbaa !135
  %100 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !11
  %102 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !11
  %104 = call zeroext i8 @useless_type_conversion_p(ptr noundef %101, ptr noundef %103) #20
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %97
  %107 = load ptr, ptr %100, align 8, !tbaa !11
  %108 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %107, ptr noundef nonnull %99) #20
  br label %109

109:                                              ; preds = %106, %97
  %110 = phi ptr [ %99, %97 ], [ %108, %106 ]
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %112 = icmp eq ptr %111, null
  br i1 %112, label %230, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %115 = and i32 %114, 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %230, label %117

117:                                              ; preds = %113
  %118 = call i64 @fwrite(ptr nonnull @.str.56, i64 9, i64 1, ptr nonnull %111)
  %119 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_gimple_expr(ptr noundef %119, ptr noundef %45, i32 noundef 0, i32 noundef 0) #20
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %121 = call i64 @fwrite(ptr nonnull @.str.57, i64 6, i64 1, ptr %120)
  %122 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_generic_expr(ptr noundef %122, ptr noundef %110, i32 noundef 0) #20
  %123 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %124 = call i64 @fwrite(ptr nonnull @.str.58, i64 4, i64 1, ptr %123)
  %125 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_gimple_stmt(ptr noundef %125, ptr noundef %45, i32 noundef 0, i32 noundef 0) #20
  br label %230

126:                                              ; preds = %88
  %127 = icmp eq ptr %90, %71
  br i1 %127, label %128, label %150

128:                                              ; preds = %92, %126
  %129 = phi ptr [ %71, %126 ], [ null, %92 ]
  %130 = call ptr @VN_INFO(ptr noundef %71) #20
  %131 = load ptr, ptr %130, align 8, !tbaa !135
  %132 = load ptr, ptr @VN_TOP, align 8, !tbaa !21
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %150, label %134

134:                                              ; preds = %128
  %135 = load i64, ptr %131, align 8
  %136 = and i64 %135, 65535
  %137 = icmp eq i64 %136, 141
  br i1 %137, label %138, label %150

138:                                              ; preds = %134
  %139 = call ptr @VN_INFO(ptr noundef nonnull %131) #20
  %140 = getelementptr inbounds %struct.vn_ssa_aux, ptr %139, i64 0, i32 5
  %141 = load i8, ptr %140, align 4
  %142 = and i8 %141, 16
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = call ptr @vn_get_expr_for(ptr noundef nonnull %131) #20
  %146 = call fastcc zeroext i8 @can_PRE_operation(ptr noundef %145) #19, !range !56
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %144
  %149 = call fastcc ptr @do_SCCVN_insertion(ptr noundef %45, ptr noundef nonnull %131) #19
  br label %150

150:                                              ; preds = %128, %134, %138, %144, %148, %126
  %151 = phi ptr [ %90, %126 ], [ %149, %148 ], [ %129, %144 ], [ %129, %138 ], [ %129, %134 ], [ %129, %128 ]
  %152 = icmp eq ptr %151, null
  %153 = icmp eq ptr %151, %71
  %154 = or i1 %152, %153
  br i1 %154, label %314, label %155

155:                                              ; preds = %150
  %156 = icmp eq ptr %78, null
  br i1 %156, label %166, label %157

157:                                              ; preds = %155
  %158 = load i64, ptr %78, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 141
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = call zeroext i8 @may_propagate_copy(ptr noundef nonnull %78, ptr noundef nonnull %151) #20
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load ptr, ptr %3, align 8, !tbaa !21
  br label %314

166:                                              ; preds = %161, %157, %155
  %167 = icmp eq ptr %151, %78
  br i1 %167, label %168, label %169

168:                                              ; preds = %166
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4209, ptr noundef nonnull @.str.1) #20
  br label %169

169:                                              ; preds = %166, %168
  %170 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %171 = icmp eq ptr %170, null
  br i1 %171, label %187, label %172

172:                                              ; preds = %169
  %173 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %174 = and i32 %173, 8
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %187, label %176

176:                                              ; preds = %172
  %177 = call i64 @fwrite(ptr nonnull @.str.56, i64 9, i64 1, ptr nonnull %170)
  %178 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %179 = load ptr, ptr %3, align 8, !tbaa !21
  call void @print_gimple_expr(ptr noundef %178, ptr noundef %179, i32 noundef 0, i32 noundef 0) #20
  %180 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %181 = call i64 @fwrite(ptr nonnull @.str.57, i64 6, i64 1, ptr %180)
  %182 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_generic_expr(ptr noundef %182, ptr noundef nonnull %151, i32 noundef 0) #20
  %183 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %184 = call i64 @fwrite(ptr nonnull @.str.58, i64 4, i64 1, ptr %183)
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %186 = load ptr, ptr %3, align 8, !tbaa !21
  call void @print_gimple_stmt(ptr noundef %185, ptr noundef %186, i32 noundef 0, i32 noundef 0) #20
  br label %187

187:                                              ; preds = %176, %172, %169
  %188 = load i64, ptr %151, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 141
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.tree_ssa_name, ptr %151, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !11
  call fastcc void @gimple_set_plf(ptr noundef %193, i8 noundef zeroext 1) #19
  br label %194

194:                                              ; preds = %191, %187
  br i1 %156, label %199, label %195

195:                                              ; preds = %194
  %196 = load i64, ptr %78, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 141
  br i1 %198, label %209, label %199

199:                                              ; preds = %195, %194
  %200 = load ptr, ptr %3, align 8, !tbaa !21
  %201 = call fastcc ptr @gimple_expr_type(ptr noundef %200) #19
  %202 = getelementptr inbounds %struct.tree_common, ptr %151, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !11
  %204 = call zeroext i8 @useless_type_conversion_p(ptr noundef %201, ptr noundef %203) #20
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = call fastcc ptr @gimple_expr_type(ptr noundef %200) #19
  %208 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %207, ptr noundef nonnull %151) #20
  br label %209

209:                                              ; preds = %206, %199, %195
  %210 = phi ptr [ %151, %199 ], [ %208, %206 ], [ %151, %195 ]
  %211 = load i32, ptr @pre_stats, align 4, !tbaa !88
  %212 = add nsw i32 %211, 1
  store i32 %212, ptr @pre_stats, align 4, !tbaa !88
  call void @propagate_tree_value_into_stmt(ptr noundef nonnull %2, ptr noundef %210) #20
  %213 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %213, ptr %3, align 8, !tbaa !21
  call fastcc void @update_stmt(ptr noundef %213) #19
  %214 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %213, ptr noundef %213) #20
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %314, label %216

216:                                              ; preds = %209
  %217 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !21
  %218 = call fastcc ptr @gimple_bb(ptr noundef %213) #19
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 9
  %220 = load i32, ptr %219, align 8, !tbaa !77
  %221 = call zeroext i8 @bitmap_set_bit(ptr noundef %217, i32 noundef %220) #20
  %222 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %223 = icmp eq ptr %222, null
  br i1 %223, label %314, label %224

224:                                              ; preds = %216
  %225 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %226 = and i32 %225, 8
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %314, label %228

228:                                              ; preds = %224
  %229 = call i64 @fwrite(ptr nonnull @.str.59, i64 27, i64 1, ptr nonnull %222)
  br label %314

230:                                              ; preds = %109, %113, %117
  %231 = load i32, ptr @pre_stats, align 4, !tbaa !88
  %232 = add nsw i32 %231, 1
  store i32 %232, ptr @pre_stats, align 4, !tbaa !88
  call void @propagate_tree_value_into_stmt(ptr noundef nonnull %2, ptr noundef %110) #20
  %233 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  store ptr %233, ptr %3, align 8, !tbaa !21
  call fastcc void @update_stmt(ptr noundef %233) #19
  br label %369

234:                                              ; preds = %66, %63, %59, %53, %48, %43
  %235 = call zeroext i8 @gimple_assign_single_p(ptr noundef %45) #20
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %278, label %237

237:                                              ; preds = %234
  %238 = call fastcc ptr @gimple_assign_lhs(ptr noundef %45) #19
  %239 = call zeroext i8 @is_gimple_reg(ptr noundef %238) #20
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %278

241:                                              ; preds = %237
  %242 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #19
  %243 = load i64, ptr %242, align 8
  %244 = and i64 %243, 65535
  %245 = icmp eq i64 %244, 141
  br i1 %245, label %250, label %246

246:                                              ; preds = %241
  %247 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #19
  %248 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %247) #20
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %278, label %250

250:                                              ; preds = %246, %241
  %251 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %45) #19
  %252 = call fastcc ptr @gimple_assign_lhs(ptr noundef %45) #19
  %253 = call fastcc ptr @gimple_vuse(ptr noundef %45) #19
  %254 = call ptr @vn_reference_lookup(ptr noundef %252, ptr noundef %253, i8 noundef zeroext 1, ptr noundef null) #20
  %255 = load i64, ptr %251, align 8
  %256 = and i64 %255, 65535
  %257 = icmp eq i64 %256, 141
  br i1 %257, label %258, label %261

258:                                              ; preds = %250
  %259 = call ptr @VN_INFO(ptr noundef nonnull %251) #20
  %260 = load ptr, ptr %259, align 8, !tbaa !135
  br label %261

261:                                              ; preds = %258, %250
  %262 = phi ptr [ %260, %258 ], [ %251, %250 ]
  %263 = icmp eq ptr %254, null
  br i1 %263, label %314, label %264

264:                                              ; preds = %261
  %265 = call i32 @operand_equal_p(ptr noundef nonnull %254, ptr noundef %262, i32 noundef 0) #20
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %314, label %267

267:                                              ; preds = %264
  %268 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %269 = icmp eq ptr %268, null
  br i1 %269, label %277, label %270

270:                                              ; preds = %267
  %271 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %272 = and i32 %271, 8
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %270
  %275 = call i64 @fwrite(ptr nonnull @.str.60, i64 24, i64 1, ptr nonnull %268)
  %276 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_gimple_stmt(ptr noundef %276, ptr noundef %45, i32 noundef 0, i32 noundef 0) #20
  br label %277

277:                                              ; preds = %274, %270, %267
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %1, ptr noundef %45) #19
  br label %314

278:                                              ; preds = %246, %237, %234
  %279 = call fastcc i32 @gimple_code(ptr noundef %45) #19, !range !91
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %314

281:                                              ; preds = %278
  %282 = call fastcc ptr @gimple_cond_lhs(ptr noundef %45) #19
  %283 = call fastcc ptr @gimple_cond_rhs(ptr noundef %45) #19
  %284 = load i64, ptr %282, align 8
  %285 = and i64 %284, 65535
  %286 = icmp eq i64 %285, 141
  br i1 %286, label %287, label %290

287:                                              ; preds = %281
  %288 = call ptr @VN_INFO(ptr noundef nonnull %282) #20
  %289 = load ptr, ptr %288, align 8, !tbaa !135
  br label %290

290:                                              ; preds = %287, %281
  %291 = phi ptr [ %289, %287 ], [ %282, %281 ]
  %292 = load i64, ptr %283, align 8
  %293 = and i64 %292, 65535
  %294 = icmp eq i64 %293, 141
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = call ptr @VN_INFO(ptr noundef nonnull %283) #20
  %297 = load ptr, ptr %296, align 8, !tbaa !135
  br label %298

298:                                              ; preds = %295, %290
  %299 = phi ptr [ %297, %295 ], [ %283, %290 ]
  %300 = call fastcc i32 @gimple_cond_code(ptr noundef %45) #19, !range !106
  %301 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !21
  %302 = call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %300, ptr noundef %301, ptr noundef %291, ptr noundef %299) #20
  %303 = icmp eq ptr %302, null
  br i1 %303, label %314, label %304

304:                                              ; preds = %298
  %305 = load i64, ptr %302, align 8
  %306 = and i64 %305, 65535
  %307 = icmp eq i64 %306, 23
  br i1 %307, label %308, label %314

308:                                              ; preds = %304
  %309 = call i32 @integer_zerop(ptr noundef nonnull %302) #20
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %312, label %311

311:                                              ; preds = %308
  call fastcc void @gimple_cond_make_false(ptr noundef %45) #19
  br label %313

312:                                              ; preds = %308
  call fastcc void @gimple_cond_make_true(ptr noundef %45) #19
  br label %313

313:                                              ; preds = %312, %311
  call fastcc void @update_stmt(ptr noundef %45) #19
  br label %314

314:                                              ; preds = %164, %150, %216, %224, %228, %209, %298, %304, %313, %261, %264, %277, %278
  %315 = phi ptr [ %45, %278 ], [ %45, %277 ], [ %45, %264 ], [ %45, %261 ], [ %45, %313 ], [ %45, %304 ], [ %45, %298 ], [ %213, %209 ], [ %213, %228 ], [ %213, %224 ], [ %213, %216 ], [ %165, %164 ], [ %45, %150 ]
  %316 = phi i32 [ %44, %278 ], [ %44, %277 ], [ %44, %264 ], [ %44, %261 ], [ 32, %313 ], [ %44, %304 ], [ %44, %298 ], [ %44, %209 ], [ %44, %228 ], [ %44, %224 ], [ %44, %216 ], [ %44, %164 ], [ %44, %150 ]
  %317 = call fastcc i32 @gimple_code(ptr noundef %315) #19, !range !91
  %318 = icmp eq i32 %317, 8
  br i1 %318, label %319, label %369

319:                                              ; preds = %314
  %320 = call fastcc ptr @gimple_call_fn(ptr noundef %315) #19
  %321 = load i64, ptr %320, align 8
  %322 = and i64 %321, 65535
  %323 = icmp eq i64 %322, 141
  br i1 %323, label %324, label %369

324:                                              ; preds = %319
  %325 = call fastcc ptr @gimple_call_fn(ptr noundef %315) #19
  %326 = call ptr @VN_INFO(ptr noundef %325) #20
  %327 = load ptr, ptr %326, align 8, !tbaa !135
  %328 = load i64, ptr %327, align 8
  %329 = and i64 %328, 65535
  %330 = icmp eq i64 %329, 121
  br i1 %330, label %331, label %369

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.tree_exp, ptr %327, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8, !tbaa !11
  %334 = load i64, ptr %333, align 8
  %335 = and i64 %334, 65535
  %336 = icmp eq i64 %335, 29
  br i1 %336, label %337, label %369

337:                                              ; preds = %331
  %338 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %339 = icmp eq ptr %338, null
  br i1 %339, label %350, label %340

340:                                              ; preds = %337
  %341 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %342 = and i32 %341, 8
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %350, label %344

344:                                              ; preds = %340
  %345 = call i64 @fwrite(ptr nonnull @.str.61, i64 27, i64 1, ptr nonnull %338)
  %346 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_generic_expr(ptr noundef %346, ptr noundef nonnull %327, i32 noundef 0) #20
  %347 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %348 = call i64 @fwrite(ptr nonnull @.str.58, i64 4, i64 1, ptr %347)
  %349 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_gimple_stmt(ptr noundef %349, ptr noundef %315, i32 noundef 0, i32 noundef 0) #20
  br label %350

350:                                              ; preds = %344, %340, %337
  call fastcc void @gimple_call_set_fn(ptr noundef %315, ptr noundef nonnull %327) #19
  call fastcc void @update_stmt(ptr noundef %315) #19
  %351 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %315, ptr noundef %315) #20
  %352 = icmp eq i8 %351, 0
  br i1 %352, label %367, label %353

353:                                              ; preds = %350
  %354 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !21
  %355 = call fastcc ptr @gimple_bb(ptr noundef %315) #19
  %356 = getelementptr inbounds %struct.basic_block_def, ptr %355, i64 0, i32 9
  %357 = load i32, ptr %356, align 8, !tbaa !77
  %358 = call zeroext i8 @bitmap_set_bit(ptr noundef %354, i32 noundef %357) #20
  %359 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %360 = icmp eq ptr %359, null
  br i1 %360, label %367, label %361

361:                                              ; preds = %353
  %362 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %363 = and i32 %362, 8
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %361
  %366 = call i64 @fwrite(ptr nonnull @.str.59, i64 27, i64 1, ptr nonnull %359)
  br label %367

367:                                              ; preds = %353, %361, %365, %350
  %368 = or i32 %316, 16384
  br label %369

369:                                              ; preds = %230, %324, %331, %367, %314, %319
  %370 = phi i32 [ %316, %319 ], [ %316, %314 ], [ %44, %230 ], [ %368, %367 ], [ %316, %331 ], [ %316, %324 ]
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %371 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !56
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %43, label %373, !llvm.loop !136

373:                                              ; preds = %369, %36
  %374 = phi i32 [ %38, %36 ], [ %370, %369 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #21
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %37) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #21
  %375 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !56
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %377, label %20

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 2
  br label %379

379:                                              ; preds = %377, %454
  %380 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %381 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %380) #19
  %382 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %381) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #21
  %383 = call fastcc i32 @gimple_phi_num_args(ptr noundef %380) #19
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %394, label %385

385:                                              ; preds = %379
  %386 = call zeroext i8 @is_gimple_reg(ptr noundef %382) #20
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %394, label %388

388:                                              ; preds = %385
  %389 = load ptr, ptr @inserted_phi_names, align 8, !tbaa !21
  %390 = getelementptr inbounds %struct.tree_ssa_name, ptr %382, i64 0, i32 3
  %391 = load i32, ptr %390, align 8, !tbaa !11
  %392 = call i32 @bitmap_bit_p(ptr noundef %389, i32 noundef %391) #20
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %395, label %394

394:                                              ; preds = %388, %385, %379
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  br label %454, !llvm.loop !137

395:                                              ; preds = %388
  %396 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %382) #19
  %397 = load ptr, ptr %378, align 8, !tbaa !73
  %398 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %397, i64 0, i32 3
  %399 = load ptr, ptr %398, align 8, !tbaa !80
  %400 = call fastcc i32 @get_expr_value_id(ptr noundef %396) #19
  %401 = call fastcc ptr @bitmap_find_leader(ptr noundef %399, i32 noundef %400, ptr noundef null) #19
  %402 = icmp eq ptr %401, null
  br i1 %402, label %415, label %403

403:                                              ; preds = %395
  %404 = load i32, ptr %401, align 8, !tbaa !6
  switch i32 %404, label %411 [
    i32 3, label %405
    i32 0, label %408
  ]

405:                                              ; preds = %403
  %406 = getelementptr inbounds %struct.pre_expr_d, ptr %401, i64 0, i32 2
  %407 = load ptr, ptr %406, align 8, !tbaa !11
  br label %412

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.pre_expr_d, ptr %401, i64 0, i32 2
  %410 = load ptr, ptr %409, align 8, !tbaa !11
  br label %412

411:                                              ; preds = %403
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4362, ptr noundef nonnull @.str.1) #20
  br label %412

412:                                              ; preds = %405, %411, %408
  %413 = phi ptr [ %407, %405 ], [ %410, %408 ], [ null, %411 ]
  %414 = icmp eq ptr %413, %382
  br i1 %414, label %415, label %416

415:                                              ; preds = %395, %412
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  br label %454, !llvm.loop !137

416:                                              ; preds = %412
  %417 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %418 = icmp eq ptr %417, null
  br i1 %418, label %431, label %419

419:                                              ; preds = %416
  %420 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %421 = and i32 %420, 8
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %431, label %423

423:                                              ; preds = %419
  %424 = call i64 @fwrite(ptr nonnull @.str.62, i64 37, i64 1, ptr nonnull %417)
  %425 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_generic_expr(ptr noundef %425, ptr noundef nonnull %382, i32 noundef 0) #20
  %426 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %427 = call i64 @fwrite(ptr nonnull @.str.57, i64 6, i64 1, ptr %426)
  %428 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_generic_expr(ptr noundef %428, ptr noundef %413, i32 noundef 0) #20
  %429 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %430 = call i32 @fputc(i32 10, ptr %429)
  br label %431

431:                                              ; preds = %423, %419, %416
  call void @remove_phi_node(ptr noundef nonnull %2, i8 noundef zeroext 0) #20
  %432 = getelementptr inbounds %struct.tree_common, ptr %382, i64 0, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !11
  %434 = getelementptr inbounds %struct.tree_common, ptr %413, i64 0, i32 2
  %435 = load ptr, ptr %434, align 8, !tbaa !11
  %436 = call zeroext i8 @useless_type_conversion_p(ptr noundef %433, ptr noundef %435) #20
  %437 = icmp eq i8 %436, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %431
  %439 = load ptr, ptr %432, align 8, !tbaa !11
  %440 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %439, ptr noundef nonnull %413) #20
  br label %441

441:                                              ; preds = %438, %431
  %442 = phi ptr [ %413, %431 ], [ %440, %438 ]
  %443 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %382, ptr noundef %442) #20
  %444 = getelementptr inbounds %struct.tree_ssa_name, ptr %382, i64 0, i32 2
  store ptr %443, ptr %444, align 8, !tbaa !11
  %445 = load i64, ptr %442, align 8
  %446 = and i64 %445, 65535
  %447 = icmp eq i64 %446, 141
  br i1 %447, label %448, label %451

448:                                              ; preds = %441
  %449 = getelementptr inbounds %struct.tree_ssa_name, ptr %442, i64 0, i32 2
  %450 = load ptr, ptr %449, align 8, !tbaa !11
  call fastcc void @gimple_set_plf(ptr noundef %450, i8 noundef zeroext 1) #19
  br label %451

451:                                              ; preds = %448, %441
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %37) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %443, i32 noundef 0) #20
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %1, ptr noundef %443) #19
  %452 = load i32, ptr @pre_stats, align 4, !tbaa !88
  %453 = add nsw i32 %452, 1
  store i32 %453, ptr @pre_stats, align 4, !tbaa !88
  br label %454

454:                                              ; preds = %451, %415, %394
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #21
  %455 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !56
  %456 = icmp eq i8 %455, 0
  br i1 %456, label %379, label %20

457:                                              ; preds = %31, %489
  %458 = phi i32 [ %490, %489 ], [ 0, %31 ]
  %459 = load ptr, ptr %3, align 8, !tbaa !21
  %460 = call fastcc ptr @gimple_assign_lhs(ptr noundef %459) #19
  %461 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %459) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %462 = load i64, ptr %460, align 8
  %463 = and i64 %462, 65535
  %464 = icmp eq i64 %463, 141
  br i1 %464, label %465, label %481

465:                                              ; preds = %457
  %466 = load i64, ptr %461, align 8
  %467 = and i64 %466, 65535
  %468 = icmp eq i64 %467, 141
  br i1 %468, label %469, label %481

469:                                              ; preds = %465
  %470 = call fastcc zeroext i8 @single_imm_use(ptr noundef nonnull %460, ptr noundef nonnull %8, ptr noundef nonnull %9) #19
  %471 = icmp eq i8 %470, 0
  br i1 %471, label %481, label %472

472:                                              ; preds = %469
  %473 = load ptr, ptr %8, align 8, !tbaa !21
  %474 = call fastcc ptr @get_use_from_ptr(ptr noundef %473) #19
  %475 = call zeroext i8 @may_propagate_copy(ptr noundef %474, ptr noundef nonnull %461) #20
  %476 = icmp eq i8 %475, 0
  br i1 %476, label %481, label %477

477:                                              ; preds = %472
  %478 = load ptr, ptr %8, align 8, !tbaa !21
  %479 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %459) #19
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %478, ptr noundef %479) #19
  %480 = load ptr, ptr %9, align 8, !tbaa !21
  call fastcc void @update_stmt(ptr noundef %480) #19
  br label %481

481:                                              ; preds = %477, %472, %469, %465, %457
  %482 = load i64, ptr %460, align 8
  %483 = and i64 %482, 65535
  %484 = icmp eq i64 %483, 141
  br i1 %484, label %485, label %488

485:                                              ; preds = %481
  %486 = call fastcc zeroext i8 @has_zero_uses(ptr noundef nonnull %460) #19
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %489, label %488

488:                                              ; preds = %485, %481
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #21
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %459) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !95
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #21
  call void @unlink_stmt_vdef(ptr noundef %459) #20
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #20
  call void @release_defs(ptr noundef %459) #20
  br label %489

489:                                              ; preds = %488, %485
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  %490 = add i32 %458, 1
  %491 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %32, i32 noundef %490, ptr noundef nonnull %3) #19, !range !26
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %457, !llvm.loop !138

493:                                              ; preds = %489, %31
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  ret i32 %33
}

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_fake_exit_edges() local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @clear_expression_ids() unnamed_addr #12 {
  tail call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull @expressions) #19
  ret void
}

; Function Attrs: optsize
declare void @free_scc_vn() local_unnamed_addr #2

; Function Attrs: optsize
declare void @scev_finalize() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fini_pre(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = load ptr, ptr @postorder, align 8, !tbaa !21
  tail call void @free(ptr noundef %2) #19
  tail call fastcc void @VEC_bitmap_set_t_heap_free() #19
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull @inserted_exprs) #19
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull @need_creation) #19
  tail call void @bitmap_obstack_release(ptr noundef nonnull @grand_bitmap_obstack) #20
  %3 = load ptr, ptr @bitmap_set_pool, align 8, !tbaa !21
  tail call void @free_alloc_pool(ptr noundef %3) #20
  %4 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !21
  tail call void @free_alloc_pool(ptr noundef %4) #20
  %5 = load ptr, ptr @phi_translate_table, align 8, !tbaa !21
  tail call void @htab_delete(ptr noundef %5) #20
  %6 = load ptr, ptr @expression_to_id, align 8, !tbaa !21
  tail call void @htab_delete(ptr noundef %6) #20
  tail call fastcc void @VEC_unsigned_heap_free() #19
  %7 = load ptr, ptr @cfun, align 8, !tbaa !21
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %17, %12 ], [ %10, %1 ]
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  tail call void @free(ptr noundef %15) #19
  store ptr null, ptr %14, align 8, !tbaa !73
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !21
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !llvm.loop !139

19:                                               ; preds = %12, %1
  tail call void @free_dominance_info(i32 noundef 2) #20
  %20 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !21
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = tail call zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef nonnull %20) #20
  %25 = tail call zeroext i8 @cleanup_tree_cfg() #20
  %26 = load ptr, ptr @need_eh_cleanup, align 8, !tbaa !21
  br label %27

27:                                               ; preds = %23, %19
  %28 = phi ptr [ %26, %23 ], [ %20, %19 ]
  tail call void @bitmap_obstack_free(ptr noundef %28) #20
  store ptr null, ptr @need_eh_cleanup, align 8, !tbaa !21
  %29 = icmp eq i8 %0, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  tail call void @loop_optimizer_finalize() #20
  br label %31

31:                                               ; preds = %30, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !140
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !140
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !21
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 8, !tbaa !140
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !140
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8, !tbaa !140
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !140
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !21
  %4 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %3, i32 noundef %1) #19, !range !26
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @vec_heap_p_reserve(ptr noundef %3, i32 noundef %1) #20
  store ptr %7, ptr %0, align 8, !tbaa !21
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !11
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mark_operand_necessary(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4446, ptr noundef nonnull @.str.1) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4452, ptr noundef nonnull @.str.1) #20
  br label %13

13:                                               ; preds = %8, %12
  %14 = tail call fastcc i32 @gimple_plf(ptr noundef %10) #19
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %10) #19, !range !56
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call fastcc void @gimple_set_plf(ptr noundef %10, i8 noundef zeroext 1) #19
  br label %20

20:                                               ; preds = %13, %16, %4, %19
  %21 = phi ptr [ %10, %19 ], [ null, %4 ], [ null, %16 ], [ null, %13 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #19
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 4, !tbaa !144
  %5 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i8, ptr %0, align 8, !tbaa !146
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0, i32 noundef 1) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !21
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #19
  %8 = load ptr, ptr %3, align 8, !tbaa !148
  store ptr %8, ptr %2, align 8, !tbaa !147
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !151
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #19
  %17 = load ptr, ptr %11, align 8, !tbaa !153
  store ptr %17, ptr %10, align 8, !tbaa !150
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !146
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !154
  %7 = load i32, ptr %0, align 8, !tbaa !140
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
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !11
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 3103, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !91
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -2049
  %6 = select i1 %3, i32 0, i32 2048
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 747, ptr noundef nonnull @.str.1) #20
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !150
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #19
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !150
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !153
  store ptr %22, ptr %16, align 8, !tbaa !150
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !147
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #19
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !147
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !148
  store ptr %36, ptr %29, align 8, !tbaa !147
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !146
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !56
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !56
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !56
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !56
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !91
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !91
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  ret ptr %2
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_bitmap_set_t_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @get_max_value_id() local_unnamed_addr #2

; Function Attrs: optsize
declare void @connect_infinite_loops_to_exit() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @my_rev_post_order_compute(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 4
  %10 = tail call ptr @xmalloc(i64 noundef %9) #20
  %11 = load ptr, ptr @cfun, align 8, !tbaa !21
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !113
  %16 = tail call ptr @sbitmap_alloc(i32 noundef %15) #20
  tail call void @sbitmap_zero(ptr noundef %16) #20
  %17 = load ptr, ptr @cfun, align 8, !tbaa !21
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = tail call fastcc ptr @ei_start_1(ptr noundef %21) #19
  store i32 0, ptr %10, align 8, !tbaa.struct !116
  %23 = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %22, ptr %23, align 8, !tbaa.struct !117
  br label %24

24:                                               ; preds = %1, %91
  %25 = phi i32 [ 1, %1 ], [ %93, %91 ]
  %26 = phi i32 [ 0, %1 ], [ %92, %91 ]
  %27 = sext i32 %25 to i64
  %28 = getelementptr %struct.edge_iterator, ptr %10, i64 %27
  %29 = getelementptr %struct.edge_iterator, ptr %28, i64 -1
  %30 = load i32, ptr %29, align 8, !tbaa.struct !116
  %31 = getelementptr %struct.edge_iterator, ptr %28, i64 -1, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa.struct !117
  %33 = tail call fastcc ptr @ei_edge(i32 %30, ptr %32) #19
  %34 = load ptr, ptr %33, align 8, !tbaa !155
  %35 = tail call fastcc ptr @ei_edge(i32 %30, ptr %32) #19
  %36 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !156
  %38 = load ptr, ptr @cfun, align 8, !tbaa !21
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = icmp eq ptr %34, %41
  br i1 %42, label %68, label %43

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !77
  %46 = lshr i32 %45, 6
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !67
  %50 = and i32 %45, 63
  %51 = zext nneg i32 %50 to i64
  %52 = shl nuw i64 1, %51
  %53 = and i64 %52, %49
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %43
  tail call fastcc void @SET_BIT(ptr noundef nonnull %16, i32 noundef %45) #19
  %56 = load ptr, ptr %34, align 8, !tbaa !157
  %57 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %56) #19
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = add nsw i32 %25, 1
  %61 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %34) #19
  store i32 0, ptr %28, align 8, !tbaa.struct !116
  %62 = getelementptr inbounds i8, ptr %28, i64 8
  store ptr %61, ptr %62, align 8, !tbaa.struct !117
  br label %91

63:                                               ; preds = %55
  %64 = load i32, ptr %44, align 8, !tbaa !77
  %65 = add nsw i32 %26, 1
  %66 = sext i32 %26 to i64
  %67 = getelementptr inbounds i32, ptr %0, i64 %66
  store i32 %64, ptr %67, align 4, !tbaa !29
  br label %91

68:                                               ; preds = %43, %24
  %69 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %30, ptr %32) #19, !range !56
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %68
  %72 = load ptr, ptr @cfun, align 8, !tbaa !21
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !72
  %75 = getelementptr inbounds %struct.control_flow_graph, ptr %74, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !115
  %77 = icmp eq ptr %37, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %80 = load i32, ptr %79, align 8, !tbaa !77
  %81 = add nsw i32 %26, 1
  %82 = sext i32 %26 to i64
  %83 = getelementptr inbounds i32, ptr %0, i64 %82
  store i32 %80, ptr %83, align 4, !tbaa !29
  br label %84

84:                                               ; preds = %78, %71, %68
  %85 = phi i32 [ %81, %78 ], [ %26, %71 ], [ %26, %68 ]
  %86 = tail call fastcc zeroext i8 @ei_one_before_end_p(i32 %30, ptr %32) #19, !range !56
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  tail call fastcc void @ei_next(ptr noundef nonnull %29) #19
  br label %91

89:                                               ; preds = %84
  %90 = add nsw i32 %25, -1
  br label %91

91:                                               ; preds = %88, %89, %59, %63
  %92 = phi i32 [ %85, %89 ], [ %85, %88 ], [ %26, %59 ], [ %65, %63 ]
  %93 = phi i32 [ %90, %89 ], [ %25, %88 ], [ %60, %59 ], [ %25, %63 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %24, !llvm.loop !158

95:                                               ; preds = %91
  tail call void @free(ptr noundef nonnull %10) #19
  %96 = load ptr, ptr %16, align 8, !tbaa !129
  tail call void @free(ptr noundef %96) #19
  tail call void @free(ptr noundef %16) #19
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @expr_pred_trans_hash(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !159
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @expr_pred_trans_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !161
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !162
  %10 = load ptr, ptr %1, align 8, !tbaa !162
  %11 = tail call i32 @pre_expr_eq(ptr noundef %9, ptr noundef %10) #19
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_expr_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !6
  switch i32 %2, label %22 [
    i32 3, label %3
    i32 0, label %7
    i32 1, label %12
    i32 2, label %17
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = tail call fastcc i32 @vn_hash_constant_with_type(ptr noundef %5) #19
  br label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !11
  br label %23

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.vn_nary_op_s, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !163
  br label %23

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.vn_reference_s, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !164
  br label %23

22:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 229, ptr noundef nonnull @.str.1) #20
  br label %23

23:                                               ; preds = %22, %17, %12, %7, %3
  %24 = phi i32 [ 0, %22 ], [ %21, %17 ], [ %16, %12 ], [ %11, %7 ], [ %6, %3 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pre_expr_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !6
  %4 = load i32, ptr %1, align 8, !tbaa !6
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %34

6:                                                ; preds = %2
  switch i32 %3, label %33 [
    i32 3, label %7
    i32 0, label %14
    i32 1, label %21
    i32 2, label %27
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = tail call fastcc zeroext i8 @vn_constant_eq_with_type(ptr noundef %9, ptr noundef %11) #19, !range !56
  %13 = zext nneg i8 %12 to i32
  br label %34

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = icmp eq ptr %16, %18
  %20 = zext i1 %19 to i32
  br label %34

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = tail call i32 @vn_nary_op_eq(ptr noundef %23, ptr noundef %25) #20
  br label %34

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = tail call i32 @vn_reference_eq(ptr noundef %29, ptr noundef %31) #20
  br label %34

33:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 207, ptr noundef nonnull @.str.1) #20
  br label %34

34:                                               ; preds = %2, %33, %27, %21, %14, %7
  %35 = phi i32 [ 0, %33 ], [ %32, %27 ], [ %26, %21 ], [ %20, %14 ], [ %13, %7 ], [ 0, %2 ]
  ret i32 %35
}

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #5 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = load ptr, ptr %0, align 8, !tbaa !129
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
  %15 = load i64, ptr %14, align 8, !tbaa !67
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !11
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !11
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !67
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !165
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_one_before_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = add i32 %0, 1
  %10 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #19
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i8
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 738, ptr noundef nonnull @.str.1) #20
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !167
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !167
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 687, ptr noundef nonnull @.str.1) #20
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @vn_hash_constant_with_type(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = tail call i32 @iterative_hash_expr(ptr noundef %0, i32 noundef 0) #20
  %5 = load i64, ptr %3, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -6
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1023
  %14 = lshr i32 %6, 21
  %15 = and i32 %14, 1
  %16 = add nuw nsw i32 %13, %15
  br label %17

17:                                               ; preds = %1, %10
  %18 = phi i32 [ %16, %10 ], [ 0, %1 ]
  %19 = zext i1 %9 to i32
  %20 = add i32 %4, %19
  %21 = add i32 %20, %18
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @vn_constant_eq_with_type(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call zeroext i8 @expressions_equal_p(ptr noundef %0, ptr noundef %1) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = tail call zeroext i8 @types_compatible_p(ptr noundef %7, ptr noundef %9) #20
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i8 [ 0, %2 ], [ %12, %5 ]
  ret i8 %14
}

; Function Attrs: optsize
declare i32 @vn_nary_op_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @vn_reference_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @expressions_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @has_zero_uses(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !29
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #20
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.pre_expr_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  store i32 0, ptr %2, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !28
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  store ptr %0, ptr %4, align 8, !tbaa !11
  %5 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %2) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call fastcc ptr @expression_for_id(i32 noundef %5) #19
  br label %14

9:                                                ; preds = %1
  %10 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !21
  %11 = call ptr @pool_alloc(ptr noundef %10) #20
  store i32 0, ptr %11, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.pre_expr_d, ptr %11, i64 0, i32 2
  store ptr %0, ptr %12, align 8, !tbaa !11
  %13 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %11) #19
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi ptr [ %8, %7 ], [ %11, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_insert_into_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  tail call fastcc void @bitmap_insert_into_set_1(ptr noundef %0, ptr noundef %1, i32 noundef %3, i8 noundef zeroext 0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_value_insert_into_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = tail call zeroext i8 @value_id_constant_p(i32 noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %8, i32 noundef %3) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %0, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !28
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #20
  br label %16

16:                                               ; preds = %6, %11, %2
  ret void
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_set_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !22
  %4 = load ptr, ptr %1, align 8, !tbaa !22
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %4) #20
  %5 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  tail call void @bitmap_copy(ptr noundef %6, ptr noundef %8) #20
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !170
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_values_for_phi(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #19
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %3) #19
  %8 = tail call fastcc i32 @get_expr_value_id(ptr noundef %7) #19
  tail call void @add_to_value(i32 noundef %8, ptr noundef %7) #19
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  tail call fastcc void @bitmap_insert_into_set(ptr noundef %12, ptr noundef %7) #19
  %13 = load ptr, ptr %9, align 8, !tbaa !73
  %14 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %15, ptr noundef %7) #19
  %16 = load i8, ptr @in_fre, align 1, !tbaa !11
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %6
  %19 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %18, %30
  %22 = phi i64 [ %31, %30 ], [ 0, %18 ]
  %23 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %22) #19
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 141
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %23) #19
  %29 = tail call fastcc i32 @get_expr_value_id(ptr noundef %28) #19
  tail call void @add_to_value(i32 noundef %29, ptr noundef %28) #19
  br label %30

30:                                               ; preds = %27, %21
  %31 = add nuw nsw i64 %22, 1
  %32 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #19
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %21, label %35, !llvm.loop !172

35:                                               ; preds = %30, %18, %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !170
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !170
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !175
  store ptr %4, ptr %0, align 8, !tbaa !170
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !170
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !176
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_uid(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #16 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !91
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @stmt_ends_bb_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !56
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

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_to_exp_gen(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i8, ptr @in_fre, align 1, !tbaa !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 141
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %1) #20
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9, %5
  %13 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %1) #19
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %16, ptr noundef %13) #19
  br label %17

17:                                               ; preds = %12, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @can_value_number_call(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #20
  %3 = and i32 %2, 3
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @copy_reference_ops_from_call(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vn_reference_lookup_pieces(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !91
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #19
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #19, !range !106
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #20
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !21
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !21
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_vn_reference_op_s_heap_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #19, !range !106
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #19, !range !91
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @vn_nary_op_lookup_pieces(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !11
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #19
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @vn_reference_lookup(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @has_zero_uses_1(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #19
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #19
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !178
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !179
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
  %4 = load ptr, ptr %0, align 8, !tbaa !181
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @ssa_undefined_value_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !56
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !67
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1622, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !91
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !29
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !91
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1446, ptr noundef nonnull @.str.1) #20
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #5 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !11
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !56
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !21
  ret i8 %10
}

; Function Attrs: optsize
declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @compute_antic_aux(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 8
  %12 = load i8, ptr %11, align 8
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 8
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %15, label %172

15:                                               ; preds = %2
  %16 = load ptr, ptr %9, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = tail call fastcc ptr @bitmap_set_new() #19
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !183
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %113, label %24

24:                                               ; preds = %15
  %25 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #19, !range !56
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #19
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !121
  %33 = tail call fastcc zeroext i8 @defer_or_phi_translate_block(ptr noundef %19, ptr noundef %32, ptr noundef nonnull %0, ptr noundef %28) #19, !range !56
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %172, label %113

35:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %36 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %22) #19
  store ptr %36, ptr %7, align 8, !tbaa !21
  %37 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %20) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !116
  %38 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %37, ptr %38, align 8, !tbaa.struct !117
  %39 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %37, ptr noundef nonnull %5) #19, !range !56
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %101, label %41

41:                                               ; preds = %35, %57
  %42 = phi ptr [ %58, %57 ], [ null, %35 ]
  %43 = icmp eq ptr %42, null
  %44 = load ptr, ptr %5, align 8, !tbaa !21
  %45 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !156
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  %49 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %48, i64 0, i32 8
  %50 = load i8, ptr %49, align 8
  %51 = and i8 %50, 1
  %52 = icmp eq i8 %51, 0
  br i1 %43, label %53, label %55

53:                                               ; preds = %41
  %54 = select i1 %52, ptr null, ptr %46
  br label %57

55:                                               ; preds = %41
  br i1 %52, label %57, label %56

56:                                               ; preds = %55
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %36, ptr noundef nonnull %46) #19
  br label %57

57:                                               ; preds = %53, %56, %55
  %58 = phi ptr [ %42, %56 ], [ %42, %55 ], [ %54, %53 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %59 = load i32, ptr %6, align 8
  %60 = load ptr, ptr %38, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %5) #19, !range !56
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %41, !llvm.loop !184

63:                                               ; preds = %57
  %64 = icmp eq ptr %58, null
  br i1 %64, label %101, label %65

65:                                               ; preds = %63
  %66 = tail call fastcc ptr @phi_nodes(ptr noundef nonnull %58) #19
  %67 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %66) #19, !range !56
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !73
  %71 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !121
  br i1 %68, label %73, label %74

73:                                               ; preds = %65
  tail call fastcc void @phi_translate_set(ptr noundef %19, ptr noundef %72, ptr noundef %0, ptr noundef nonnull %58) #19
  br label %75

74:                                               ; preds = %65
  tail call fastcc void @bitmap_set_copy(ptr noundef %19, ptr noundef %72) #19
  br label %75

75:                                               ; preds = %74, %73
  %76 = load ptr, ptr %7, align 8
  %77 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %76, i32 noundef 0, ptr noundef nonnull %8) #19, !range !26
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %75, %96
  %80 = phi i32 [ %97, %96 ], [ 0, %75 ]
  %81 = load ptr, ptr %8, align 8, !tbaa !21
  %82 = tail call fastcc ptr @phi_nodes(ptr noundef %81) #19
  %83 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %82) #19, !range !56
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = tail call fastcc ptr @bitmap_set_new() #19
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !73
  %89 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %88, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !121
  tail call fastcc void @phi_translate_set(ptr noundef %86, ptr noundef %90, ptr noundef %0, ptr noundef %81) #19
  tail call fastcc void @bitmap_set_and(ptr noundef %19, ptr noundef %86) #19
  tail call fastcc void @bitmap_set_free(ptr noundef %86) #19
  br label %96

91:                                               ; preds = %79
  %92 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !73
  %94 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %93, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !121
  tail call fastcc void @bitmap_set_and(ptr noundef %19, ptr noundef %95) #19
  br label %96

96:                                               ; preds = %85, %91
  %97 = add i32 %80, 1
  %98 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %76, i32 noundef %97, ptr noundef nonnull %8) #19, !range !26
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %79, !llvm.loop !185

100:                                              ; preds = %96, %75
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %113

101:                                              ; preds = %35, %63
  %102 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %103 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !77
  tail call fastcc void @SET_BIT(ptr noundef %102, i32 noundef %104) #19
  %105 = load ptr, ptr %9, align 8, !tbaa !73
  %106 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %105, i64 0, i32 8
  %107 = load i8, ptr %106, align 8
  %108 = and i8 %107, -2
  store i8 %108, ptr %106, align 8
  %109 = load ptr, ptr %9, align 8, !tbaa !73
  %110 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %109, i64 0, i32 8
  %111 = load i8, ptr %110, align 8
  %112 = or i8 %111, 2
  store i8 %112, ptr %110, align 8
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %172

113:                                              ; preds = %100, %27, %15
  %114 = load ptr, ptr %9, align 8, !tbaa !73
  %115 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !79
  %117 = tail call fastcc ptr @bitmap_set_subtract(ptr noundef %19, ptr noundef %116) #19
  %118 = load ptr, ptr %9, align 8, !tbaa !73
  %119 = load ptr, ptr %118, align 8, !tbaa !75
  %120 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %118, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !79
  %122 = tail call fastcc ptr @bitmap_set_subtract(ptr noundef %119, ptr noundef %121) #19
  %123 = load ptr, ptr %9, align 8, !tbaa !73
  %124 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %123, i64 0, i32 4
  store ptr %122, ptr %124, align 8, !tbaa !121
  %125 = load ptr, ptr %117, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %125, ptr noundef nonnull %4) #19
  %126 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !56
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %113, %128
  %129 = load ptr, ptr %9, align 8, !tbaa !73
  %130 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %129, i64 0, i32 4
  %131 = load ptr, ptr %130, align 8, !tbaa !121
  %132 = load i32, ptr %4, align 4, !tbaa !29
  %133 = tail call fastcc ptr @expression_for_id(i32 noundef %132) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %131, ptr noundef %133) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %134 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !56
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %128, !llvm.loop !186

136:                                              ; preds = %128
  %137 = load ptr, ptr %9, align 8, !tbaa !73
  %138 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %137, i64 0, i32 4
  %139 = load ptr, ptr %138, align 8, !tbaa !121
  br label %140

140:                                              ; preds = %136, %113
  %141 = phi ptr [ %139, %136 ], [ %122, %113 ]
  tail call fastcc void @clean(ptr noundef %141, ptr noundef nonnull %0) #19
  %142 = load ptr, ptr %18, align 8, !tbaa !22
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr %9, align 8, !tbaa !73
  %146 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %145, i64 0, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !121
  %148 = tail call fastcc zeroext i8 @bitmap_set_equal(ptr noundef nonnull %18, ptr noundef %147) #19
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %144, %140
  %151 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %152 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %153 = load i32, ptr %152, align 8, !tbaa !77
  tail call fastcc void @SET_BIT(ptr noundef %151, i32 noundef %153) #19
  %154 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !116
  %155 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %154, ptr %155, align 8, !tbaa.struct !117
  %156 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %154, ptr noundef nonnull %5) #19, !range !56
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %172, label %158

158:                                              ; preds = %150, %158
  %159 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %160 = load ptr, ptr %5, align 8, !tbaa !21
  %161 = load ptr, ptr %160, align 8, !tbaa !155
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 9
  %163 = load i32, ptr %162, align 8, !tbaa !77
  tail call fastcc void @SET_BIT(ptr noundef %159, i32 noundef %163) #19
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %164 = load i32, ptr %6, align 8
  %165 = load ptr, ptr %155, align 8
  %166 = call fastcc zeroext i8 @ei_cond(i32 %164, ptr %165, ptr noundef nonnull %5) #19, !range !56
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %172, label %158, !llvm.loop !187

168:                                              ; preds = %144
  %169 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %171 = load i32, ptr %170, align 8, !tbaa !77
  tail call fastcc void @RESET_BIT(ptr noundef %169, i32 noundef %171) #19
  br label %172

172:                                              ; preds = %158, %150, %101, %27, %168, %2
  %173 = phi ptr [ null, %2 ], [ %19, %168 ], [ %19, %27 ], [ %19, %101 ], [ %19, %150 ], [ %19, %158 ]
  %174 = phi ptr [ null, %2 ], [ %18, %168 ], [ %18, %27 ], [ %18, %101 ], [ %18, %150 ], [ %18, %158 ]
  %175 = phi ptr [ null, %2 ], [ %117, %168 ], [ null, %27 ], [ null, %101 ], [ %117, %150 ], [ %117, %158 ]
  %176 = phi i8 [ 0, %2 ], [ 0, %168 ], [ 1, %27 ], [ 1, %101 ], [ 1, %150 ], [ 1, %158 ]
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %178 = icmp eq ptr %177, null
  br i1 %178, label %211, label %179

179:                                              ; preds = %172
  %180 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %181 = and i32 %180, 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %211, label %183

183:                                              ; preds = %179
  %184 = load ptr, ptr %9, align 8, !tbaa !73
  %185 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %184, i64 0, i32 8
  %186 = load i8, ptr %185, align 8
  %187 = and i8 %186, 3
  %188 = icmp eq i8 %187, 2
  br i1 %188, label %207, label %189

189:                                              ; preds = %183
  %190 = icmp eq ptr %173, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %193 = load i32, ptr %192, align 8, !tbaa !77
  tail call fastcc void @print_bitmap_set(ptr noundef nonnull %177, ptr noundef nonnull %173, ptr noundef nonnull @.str.36, i32 noundef %193) #19
  %194 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %195 = load ptr, ptr %9, align 8, !tbaa !73
  br label %196

196:                                              ; preds = %191, %189
  %197 = phi ptr [ %195, %191 ], [ %184, %189 ]
  %198 = phi ptr [ %194, %191 ], [ %177, %189 ]
  %199 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %197, i64 0, i32 4
  %200 = load ptr, ptr %199, align 8, !tbaa !121
  %201 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %202 = load i32, ptr %201, align 8, !tbaa !77
  tail call fastcc void @print_bitmap_set(ptr noundef %198, ptr noundef %200, ptr noundef nonnull @.str.37, i32 noundef %202) #19
  %203 = icmp eq ptr %175, null
  br i1 %203, label %211, label %204

204:                                              ; preds = %196
  %205 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %206 = load i32, ptr %201, align 8, !tbaa !77
  tail call fastcc void @print_bitmap_set(ptr noundef %205, ptr noundef nonnull %175, ptr noundef nonnull @.str.38, i32 noundef %206) #19
  br label %211

207:                                              ; preds = %183
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %209 = load i32, ptr %208, align 8, !tbaa !77
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %177, ptr noundef nonnull @.str.39, i32 noundef %209) #19
  br label %211

211:                                              ; preds = %207, %204, %196, %179, %172
  %212 = icmp eq ptr %174, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %211
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %174) #19
  br label %214

214:                                              ; preds = %213, %211
  %215 = icmp eq ptr %175, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %214
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %175) #19
  br label %217

217:                                              ; preds = %216, %214
  %218 = icmp eq ptr %173, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %217
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %173) #19
  br label %220

220:                                              ; preds = %217, %219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret i8 %176
}

; Function Attrs: optsize
declare void @statistics_histogram_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @compute_partial_antic_aux(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.param_info, ptr %9, i64 103, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !188
  %12 = sext i32 %11 to i64
  %13 = icmp eq i8 %1, 0
  br i1 %13, label %14, label %186

14:                                               ; preds = %2
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %14
  %17 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !56
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @single_succ(ptr noundef %0) #19
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !122
  %25 = getelementptr inbounds %struct.bitmap_set, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !24
  %27 = tail call i64 @bitmap_count_bits(ptr noundef %26) #20
  %28 = icmp ugt i64 %27, %12
  br i1 %28, label %186, label %29

29:                                               ; preds = %19, %16, %14
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !122
  %34 = tail call fastcc ptr @bitmap_set_new() #19
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !183
  %37 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %36) #19
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %130, label %39

39:                                               ; preds = %29
  %40 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #19, !range !56
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @single_succ(ptr noundef nonnull %0) #19
  %44 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #19
  %45 = getelementptr inbounds %struct.edge_def, ptr %44, i64 0, i32 7
  %46 = load i32, ptr %45, align 8, !tbaa !118
  %47 = and i32 %46, 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %130

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  %52 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %51, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !122
  tail call fastcc void @phi_translate_set(ptr noundef %34, ptr noundef %53, ptr noundef nonnull %0, ptr noundef %43) #19
  br label %130

54:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %55 = tail call fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %37) #19
  store ptr %55, ptr %5, align 8, !tbaa !21
  %56 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %35) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !116
  %57 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %56, ptr %57, align 8, !tbaa.struct !117
  %58 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %56, ptr noundef nonnull %3) #19, !range !56
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %54, %69
  %61 = load ptr, ptr %3, align 8, !tbaa !21
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !118
  %64 = and i32 %63, 32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !156
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %55, ptr noundef %68) #19
  br label %69

69:                                               ; preds = %60, %66
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %70 = load i32, ptr %4, align 8
  %71 = load ptr, ptr %57, align 8
  %72 = call fastcc zeroext i8 @ei_cond(i32 %70, ptr %71, ptr noundef nonnull %3) #19, !range !56
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %60, !llvm.loop !190

74:                                               ; preds = %69, %54
  %75 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %55) #19
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %129, label %77

77:                                               ; preds = %74
  %78 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %55, i32 noundef 0, ptr noundef nonnull %6) #19, !range !26
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %129, label %80

80:                                               ; preds = %77, %125
  %81 = phi i32 [ %126, %125 ], [ 0, %77 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  %82 = load ptr, ptr %6, align 8, !tbaa !21
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !73
  %85 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %84, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !121
  %87 = load ptr, ptr %86, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %87, ptr noundef nonnull %7) #19
  %88 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !56
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %80, %90
  %91 = load i32, ptr %7, align 4, !tbaa !29
  %92 = tail call fastcc ptr @expression_for_id(i32 noundef %91) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %34, ptr noundef %92) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %93 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !56
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %90, !llvm.loop !191

95:                                               ; preds = %90, %80
  %96 = tail call fastcc ptr @phi_nodes(ptr noundef %82) #19
  %97 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %96) #19, !range !56
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = tail call fastcc ptr @bitmap_set_new() #19
  %101 = load ptr, ptr %83, align 8, !tbaa !73
  %102 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %101, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !122
  tail call fastcc void @phi_translate_set(ptr noundef %100, ptr noundef %103, ptr noundef %0, ptr noundef %82) #19
  %104 = load ptr, ptr %100, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %104, ptr noundef nonnull %7) #19
  %105 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !56
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %99, %107
  %108 = load i32, ptr %7, align 4, !tbaa !29
  %109 = tail call fastcc ptr @expression_for_id(i32 noundef %108) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %34, ptr noundef %109) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %110 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !56
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %107, !llvm.loop !192

112:                                              ; preds = %107, %99
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %100) #19
  br label %125

113:                                              ; preds = %95
  %114 = load ptr, ptr %83, align 8, !tbaa !73
  %115 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %114, i64 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !122
  %117 = load ptr, ptr %116, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %117, ptr noundef nonnull %7) #19
  %118 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !56
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %113, %120
  %121 = load i32, ptr %7, align 4, !tbaa !29
  %122 = tail call fastcc ptr @expression_for_id(i32 noundef %121) #19
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %34, ptr noundef %122) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %123 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !56
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %120, !llvm.loop !193

125:                                              ; preds = %120, %113, %112
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  %126 = add i32 %81, 1
  %127 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %55, i32 noundef %126, ptr noundef nonnull %6) #19, !range !26
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %80, !llvm.loop !194

129:                                              ; preds = %125, %77, %74
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %130

130:                                              ; preds = %42, %49, %129, %29
  %131 = load ptr, ptr %30, align 8, !tbaa !73
  %132 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !79
  %134 = tail call fastcc ptr @bitmap_set_subtract(ptr noundef %34, ptr noundef %133) #19
  %135 = load ptr, ptr %30, align 8, !tbaa !73
  %136 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %135, i64 0, i32 5
  store ptr %134, ptr %136, align 8, !tbaa !122
  %137 = getelementptr inbounds %struct.bitmap_set, ptr %134, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !24
  %139 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %135, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !78
  %141 = getelementptr inbounds %struct.bitmap_set, ptr %140, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !24
  %143 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %138, ptr noundef %142) #20
  %144 = load ptr, ptr %30, align 8, !tbaa !73
  %145 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %144, i64 0, i32 5
  %146 = load ptr, ptr %145, align 8, !tbaa !122
  %147 = load ptr, ptr %146, align 8, !tbaa !22
  %148 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %144, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !78
  %150 = load ptr, ptr %149, align 8, !tbaa !22
  %151 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %147, ptr noundef %150) #20
  %152 = load ptr, ptr %30, align 8, !tbaa !73
  %153 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %152, i64 0, i32 5
  %154 = load ptr, ptr %153, align 8, !tbaa !122
  %155 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %152, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !121
  tail call fastcc void @bitmap_set_subtract_values(ptr noundef %154, ptr noundef %156) #19
  %157 = load ptr, ptr %30, align 8, !tbaa !73
  %158 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %157, i64 0, i32 5
  %159 = load ptr, ptr %158, align 8, !tbaa !122
  %160 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %157, i64 0, i32 4
  %161 = load ptr, ptr %160, align 8, !tbaa !121
  tail call fastcc void @dependent_clean(ptr noundef %159, ptr noundef %161, ptr noundef %0) #19
  %162 = load ptr, ptr %30, align 8, !tbaa !73
  %163 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %162, i64 0, i32 5
  %164 = load ptr, ptr %163, align 8, !tbaa !122
  %165 = tail call fastcc zeroext i8 @bitmap_set_equal(ptr noundef %33, ptr noundef %164) #19
  %166 = icmp eq i8 %165, 0
  %167 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %169 = load i32, ptr %168, align 8, !tbaa !77
  br i1 %166, label %170, label %185

170:                                              ; preds = %130
  tail call fastcc void @SET_BIT(ptr noundef %167, i32 noundef %169) #19
  %171 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !116
  %172 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %171, ptr %172, align 8, !tbaa.struct !117
  %173 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %171, ptr noundef nonnull %3) #19, !range !56
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %170, %175
  %176 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %177 = load ptr, ptr %3, align 8, !tbaa !21
  %178 = load ptr, ptr %177, align 8, !tbaa !155
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 9
  %180 = load i32, ptr %179, align 8, !tbaa !77
  tail call fastcc void @SET_BIT(ptr noundef %176, i32 noundef %180) #19
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %181 = load i32, ptr %4, align 8
  %182 = load ptr, ptr %172, align 8
  %183 = call fastcc zeroext i8 @ei_cond(i32 %181, ptr %182, ptr noundef nonnull %3) #19, !range !56
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %186, label %175, !llvm.loop !195

185:                                              ; preds = %130
  tail call fastcc void @RESET_BIT(ptr noundef %167, i32 noundef %169) #19
  br label %186

186:                                              ; preds = %175, %170, %185, %19, %2
  %187 = phi ptr [ null, %2 ], [ null, %19 ], [ %34, %185 ], [ %34, %170 ], [ %34, %175 ]
  %188 = phi ptr [ null, %2 ], [ null, %19 ], [ %33, %185 ], [ %33, %170 ], [ %33, %175 ]
  %189 = phi i8 [ 0, %2 ], [ 0, %19 ], [ 0, %185 ], [ 1, %170 ], [ 1, %175 ]
  %190 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %191 = icmp eq ptr %190, null
  br i1 %191, label %210, label %192

192:                                              ; preds = %186
  %193 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %194 = and i32 %193, 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %192
  %197 = icmp eq ptr %187, null
  br i1 %197, label %202, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %200 = load i32, ptr %199, align 8, !tbaa !77
  tail call fastcc void @print_bitmap_set(ptr noundef nonnull %190, ptr noundef nonnull %187, ptr noundef nonnull @.str.44, i32 noundef %200) #19
  %201 = load ptr, ptr @dump_file, align 8, !tbaa !21
  br label %202

202:                                              ; preds = %198, %196
  %203 = phi ptr [ %201, %198 ], [ %190, %196 ]
  %204 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !73
  %206 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %205, i64 0, i32 5
  %207 = load ptr, ptr %206, align 8, !tbaa !122
  %208 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %209 = load i32, ptr %208, align 8, !tbaa !77
  tail call fastcc void @print_bitmap_set(ptr noundef %203, ptr noundef %207, ptr noundef nonnull @.str.45, i32 noundef %209) #19
  br label %210

210:                                              ; preds = %202, %192, %186
  %211 = icmp eq ptr %188, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %210
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %188) #19
  br label %213

213:                                              ; preds = %212, %210
  %214 = icmp eq ptr %187, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %213
  tail call fastcc void @bitmap_set_free(ptr noundef nonnull %187) #19
  br label %216

216:                                              ; preds = %215, %213
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %189
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !183
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !156
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @defer_or_phi_translate_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %6, i64 0, i32 8
  %8 = load i8, ptr %7, align 8
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load ptr, ptr @changed_blocks, align 8, !tbaa !21
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !77
  tail call fastcc void @SET_BIT(ptr noundef %12, i32 noundef %14) #19
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %16, i64 0, i32 8
  %18 = load i8, ptr %17, align 8
  %19 = and i8 %18, -2
  store i8 %19, ptr %17, align 8
  %20 = load ptr, ptr %15, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %20, i64 0, i32 8
  %22 = load i8, ptr %21, align 8
  %23 = or i8 %22, 2
  store i8 %23, ptr %21, align 8
  br label %25

24:                                               ; preds = %4
  tail call fastcc void @phi_translate_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) #19
  br label %25

25:                                               ; preds = %24, %11
  %26 = phi i8 [ 1, %24 ], [ 0, %11 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr %0, align 8, !tbaa !196
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !196
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !181
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !178
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 510, ptr noundef nonnull @.str.1) #20
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !198
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @phi_translate_set(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %7 = tail call fastcc ptr @phi_nodes(ptr noundef %3) #19
  %8 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %7) #19, !range !56
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call fastcc void @bitmap_set_copy(ptr noundef %0, ptr noundef %1) #19
  br label %30

11:                                               ; preds = %4
  %12 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %1) #19
  store ptr %12, ptr %5, align 8, !tbaa !21
  %13 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %6) #19, !range !26
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %11, %25
  %16 = phi i32 [ %26, %25 ], [ 0, %11 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !21
  %18 = tail call fastcc ptr @phi_translate(ptr noundef %17, ptr noundef %1, ptr noundef null, ptr noundef %2, ptr noundef %3) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i32, ptr %18, align 8, !tbaa !6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %0, ptr noundef nonnull %18) #19
  br label %25

24:                                               ; preds = %20
  tail call fastcc void @bitmap_value_insert_into_set(ptr noundef %0, ptr noundef nonnull %18) #19
  br label %25

25:                                               ; preds = %23, %24, %15
  %26 = add nuw nsw i32 %16, 1
  %27 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %12, i32 noundef %26, ptr noundef nonnull %6) #19, !range !26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %15, !llvm.loop !199

29:                                               ; preds = %25, %11
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %5) #19
  br label %30

30:                                               ; preds = %29, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !196
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !21
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_set_and(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %8 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  tail call void @bitmap_and_into(ptr noundef %9, ptr noundef %11) #20
  %12 = load ptr, ptr %0, align 8, !tbaa !22
  tail call void @bitmap_copy(ptr noundef %7, ptr noundef %12) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %7, ptr noundef nonnull %4) #19
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !56
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %6, %25
  %16 = load i32, ptr %4, align 4, !tbaa !29
  %17 = tail call fastcc ptr @expression_for_id(i32 noundef %16) #19
  %18 = tail call fastcc i32 @get_expr_value_id(ptr noundef %17) #19
  %19 = load ptr, ptr %8, align 8, !tbaa !24
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %19, i32 noundef %18) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !22
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %23, i32 noundef %16) #20
  br label %25

25:                                               ; preds = %22, %15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !56
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %15, !llvm.loop !200

28:                                               ; preds = %25, %6
  tail call void @bitmap_obstack_free(ptr noundef %7) #20
  br label %29

29:                                               ; preds = %28, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_set_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !22
  tail call void @bitmap_obstack_free(ptr noundef %2) #20
  store ptr null, ptr %0, align 8, !tbaa !22
  %3 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  tail call void @bitmap_obstack_free(ptr noundef %4) #20
  store ptr null, ptr %3, align 8, !tbaa !24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bitmap_set_subtract(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  %5 = tail call fastcc ptr @bitmap_set_new() #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = load ptr, ptr %0, align 8, !tbaa !22
  %8 = load ptr, ptr %1, align 8, !tbaa !22
  %9 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %6, ptr noundef %7, ptr noundef %8) #20
  %10 = load ptr, ptr %5, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %10, ptr noundef nonnull %4) #19
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !56
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.bitmap_set, ptr %5, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %15
  %16 = load i32, ptr %4, align 4, !tbaa !29
  %17 = tail call fastcc ptr @expression_for_id(i32 noundef %16) #19
  %18 = tail call fastcc i32 @get_expr_value_id(ptr noundef %17) #19
  %19 = load ptr, ptr %14, align 8, !tbaa !24
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %19, i32 noundef %18) #20
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #19, !range !56
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %15, !llvm.loop !201

23:                                               ; preds = %15, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %5 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %0) #19
  store ptr %5, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %4) #19, !range !26
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %14
  %9 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %10 = load ptr, ptr %4, align 8, !tbaa !21
  %11 = tail call fastcc zeroext i8 @valid_in_sets(ptr noundef %0, ptr noundef null, ptr noundef %10, ptr noundef %1) #19
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call fastcc void @bitmap_remove_from_set(ptr noundef %0, ptr noundef %10) #19
  br label %14

14:                                               ; preds = %8, %13
  %15 = add nuw nsw i32 %9, 1
  %16 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %5, i32 noundef %15, ptr noundef nonnull %4) #19, !range !26
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %8, !llvm.loop !202

18:                                               ; preds = %14, %2
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_set_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.bitmap_set, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %4, ptr noundef %6) #20
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = load ptr, ptr %0, align 8, !tbaa !129
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
  %15 = load i64, ptr %14, align 8, !tbaa !67
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !11
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !11
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !67
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !67
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !56
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 645, ptr noundef nonnull @.str.1) #20
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !183
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @sorted_array_from_bitmap_set(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %7 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = tail call i64 @bitmap_count_bits(ptr noundef %8) #20
  %10 = trunc i64 %9 to i32
  %11 = tail call fastcc ptr @VEC_pre_expr_heap_alloc(i32 noundef %10) #19
  store ptr %11, ptr %6, align 8, !tbaa !21
  %12 = load ptr, ptr %7, align 8, !tbaa !24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %12, ptr noundef nonnull %2) #19
  %13 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #19, !range !56
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %1, %32
  %16 = load ptr, ptr @value_expressions, align 8
  %17 = load i32, ptr %2, align 4, !tbaa !29
  %18 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %16, i32 noundef %17) #19
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %19, ptr noundef nonnull %3) #19
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !56
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %15, %29
  %23 = load ptr, ptr %0, align 8, !tbaa !22
  %24 = load i32, ptr %3, align 4, !tbaa !29
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %23, i32 noundef %24) #20
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @expression_for_id(i32 noundef %24) #19
  call fastcc void @VEC_pre_expr_heap_safe_push(ptr noundef nonnull %6, ptr noundef %28) #19
  br label %29

29:                                               ; preds = %22, %27
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %3) #19
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %3) #19, !range !56
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %22, !llvm.loop !203

32:                                               ; preds = %29, %15
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #19
  %33 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #19, !range !56
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %15, !llvm.loop !204

35:                                               ; preds = %32
  %36 = load ptr, ptr %6, align 8, !tbaa !21
  br label %37

37:                                               ; preds = %35, %1
  %38 = phi ptr [ %36, %35 ], [ %11, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  ret ptr %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_pre_expr_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !40
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_pre_expr_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !21
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_translate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %0, align 8, !tbaa !6
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %0) #19
  %12 = tail call zeroext i8 @value_id_constant_p(i32 noundef %11) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32, ptr %0, align 8, !tbaa !6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @phi_trans_lookup(ptr noundef nonnull %0, ptr noundef %3) #19
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17, %14
  %21 = tail call fastcc ptr @phi_translate_1(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr %0, align 8, !tbaa !6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call fastcc void @phi_trans_add(ptr noundef nonnull %0, ptr noundef nonnull %21, ptr noundef %3) #19
  br label %27

27:                                               ; preds = %20, %23, %26, %17, %10, %7, %5
  %28 = phi ptr [ null, %5 ], [ %0, %7 ], [ %0, %10 ], [ %18, %17 ], [ %21, %26 ], [ %21, %23 ], [ null, %20 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_value_replace_in_set(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %3) #19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @bitmap_set_replace_value(ptr noundef %0, i32 noundef %3, ptr noundef %1) #19
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @bitmap_insert_into_set(ptr noundef %0, ptr noundef %1) #19
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_pre_expr_heap_free(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_pre_expr_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_trans_lookup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.expr_pred_trans_d, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  store ptr %0, ptr %3, align 8, !tbaa !162
  %4 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !161
  %5 = tail call i32 @pre_expr_hash(ptr noundef %0) #19
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !77
  %8 = tail call i32 @iterative_hash_hashval_t(i32 noundef %5, i32 noundef %7) #20
  %9 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %3, i64 0, i32 3
  store i32 %8, ptr %9, align 8, !tbaa !159
  %10 = load ptr, ptr @phi_translate_table, align 8, !tbaa !21
  %11 = call ptr @htab_find_slot_with_hash(ptr noundef %10, ptr noundef nonnull %3, i32 noundef %8, i32 noundef 0) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %11, align 8, !tbaa !21
  %15 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !205
  br label %17

17:                                               ; preds = %2, %13
  %18 = phi ptr [ %16, %13 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_translate_1(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.vn_nary_op_s, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.vn_reference_op_struct, align 8
  %14 = load i32, ptr %0, align 8, !tbaa !6
  switch i32 %14, label %376 [
    i32 1, label %15
    i32 2, label %111
    i32 0, label %337
  ]

15:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %16 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  store ptr %17, ptr %6, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #21
  %18 = getelementptr inbounds %struct.vn_nary_op_s, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = sub nsw i32 4, %20
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = sub nsw i64 64, %23
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %7, ptr align 8 %17, i64 %24, i1 false)
  %25 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 16
  %28 = icmp ult i32 %26, 65536
  br i1 %28, label %109, label %29

29:                                               ; preds = %15
  %30 = zext nneg i32 %27 to i64
  br label %31

31:                                               ; preds = %29, %60
  %32 = phi i64 [ 0, %29 ], [ %62, %60 ]
  %33 = phi i8 [ 0, %29 ], [ %61, %60 ]
  %34 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 %32
  %35 = load ptr, ptr %34, align 8, !tbaa !21
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %60

39:                                               ; preds = %31
  %40 = tail call ptr @VN_INFO(ptr noundef nonnull %35) #20
  %41 = getelementptr inbounds %struct.vn_ssa_aux, ptr %40, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !12
  %43 = tail call fastcc ptr @find_leader_in_sets(i32 noundef %42, ptr noundef %1, ptr noundef %2) #19
  %44 = tail call fastcc ptr @phi_translate(ptr noundef %43, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %45 = icmp eq ptr %44, null
  %46 = icmp eq ptr %44, %43
  %47 = or i1 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = tail call fastcc ptr @get_representative_for(ptr noundef nonnull %44) #19
  %50 = icmp eq ptr %49, null
  br i1 %50, label %109, label %51

51:                                               ; preds = %48
  store ptr %49, ptr %34, align 8, !tbaa !21
  br label %53

52:                                               ; preds = %39
  br i1 %45, label %109, label %53

53:                                               ; preds = %52, %51
  %54 = phi ptr [ %35, %52 ], [ %49, %51 ]
  %55 = getelementptr inbounds %struct.vn_nary_op_s, ptr %17, i64 0, i32 5, i64 %32
  %56 = load ptr, ptr %55, align 8, !tbaa !21
  %57 = icmp ne ptr %54, %56
  %58 = zext i1 %57 to i8
  %59 = or i8 %33, %58
  br label %60

60:                                               ; preds = %53, %31
  %61 = phi i8 [ %33, %31 ], [ %59, %53 ]
  %62 = add nuw nsw i64 %32, 1
  %63 = icmp eq i64 %62, %30
  br i1 %63, label %64, label %31, !llvm.loop !206

64:                                               ; preds = %60
  %65 = icmp eq i8 %61, 0
  br i1 %65, label %109, label %66

66:                                               ; preds = %64
  %67 = and i32 %26, 65535
  %68 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !207
  %70 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !21
  %72 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !21
  %74 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !21
  %76 = getelementptr inbounds %struct.vn_nary_op_s, ptr %7, i64 0, i32 5, i64 3
  %77 = load ptr, ptr %76, align 8, !tbaa !21
  %78 = call ptr @vn_nary_op_lookup_pieces(i32 noundef %27, i32 noundef %67, ptr noundef %69, ptr noundef %71, ptr noundef %73, ptr noundef %75, ptr noundef %77, ptr noundef nonnull %6) #20
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %66
  %81 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %78) #20
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %78) #19
  br label %109

85:                                               ; preds = %80, %66
  %86 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !21
  %87 = call ptr @pool_alloc(ptr noundef %86) #20
  store i32 1, ptr %87, align 8, !tbaa !6
  %88 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 1
  store i32 0, ptr %88, align 4, !tbaa !28
  %89 = load ptr, ptr %6, align 8, !tbaa !21
  %90 = icmp eq ptr %89, null
  br i1 %90, label %98, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 2
  store ptr %89, ptr %92, align 8, !tbaa !11
  %93 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %87) #19
  %94 = icmp eq ptr %93, %87
  br i1 %94, label %95, label %109

95:                                               ; preds = %91
  %96 = load ptr, ptr %6, align 8, !tbaa !21
  %97 = load i32, ptr %96, align 8, !tbaa !15
  br label %106

98:                                               ; preds = %85
  %99 = call i32 @get_next_value_id() #20
  %100 = call i32 @get_max_value_id() #20
  %101 = add i32 %100, 1
  call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %101) #19
  %102 = call ptr @vn_nary_op_insert_pieces(i32 noundef %27, i32 noundef %67, ptr noundef %69, ptr noundef %71, ptr noundef %73, ptr noundef %75, ptr noundef %77, ptr noundef %78, i32 noundef %99) #20
  store ptr %102, ptr %6, align 8, !tbaa !21
  %103 = getelementptr inbounds %struct.pre_expr_d, ptr %87, i64 0, i32 2
  store ptr %102, ptr %103, align 8, !tbaa !11
  %104 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %87) #19
  %105 = icmp eq ptr %104, %87
  br i1 %105, label %106, label %109

106:                                              ; preds = %98, %95
  %107 = phi i32 [ %97, %95 ], [ %99, %98 ]
  %108 = call fastcc i32 @get_or_alloc_expression_id(ptr noundef nonnull %87) #19
  call void @add_to_value(i32 noundef %107, ptr noundef nonnull %87) #19
  br label %109

109:                                              ; preds = %48, %52, %15, %98, %91, %83, %106, %64
  %110 = phi ptr [ %0, %64 ], [ %87, %106 ], [ %104, %98 ], [ %93, %91 ], [ %84, %83 ], [ %0, %15 ], [ null, %52 ], [ null, %48 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %377

111:                                              ; preds = %5
  %112 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !11
  %114 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  %116 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  store ptr null, ptr %8, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #21
  store i8 1, ptr %9, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  store i32 0, ptr %10, align 4, !tbaa !29
  %118 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %115, i32 noundef 0, ptr noundef nonnull %11) #19, !range !26
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %252, label %120

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 1
  %122 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 2
  %123 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 3
  %124 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %13, i64 0, i32 4
  br label %125

125:                                              ; preds = %120, %246
  %126 = phi i8 [ 0, %120 ], [ %211, %246 ]
  %127 = phi i32 [ 0, %120 ], [ %248, %246 ]
  %128 = load ptr, ptr %11, align 8, !tbaa !21
  %129 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !49
  %131 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !50
  %133 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 4
  %134 = load ptr, ptr %133, align 8, !tbaa !51
  %135 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %128, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(40) %128, i64 40, i1 false), !tbaa.struct !209
  %137 = icmp eq ptr %130, null
  br i1 %137, label %155, label %138

138:                                              ; preds = %125
  %139 = load i64, ptr %130, align 8
  %140 = and i64 %139, 65535
  %141 = icmp eq i64 %140, 141
  br i1 %141, label %142, label %155

142:                                              ; preds = %138
  %143 = call ptr @VN_INFO(ptr noundef nonnull %130) #20
  %144 = getelementptr inbounds %struct.vn_ssa_aux, ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !12
  %146 = call fastcc ptr @find_leader_in_sets(i32 noundef %145, ptr noundef %1, ptr noundef %2) #19
  %147 = call fastcc ptr @phi_translate(ptr noundef %146, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %148 = icmp eq ptr %147, null
  %149 = icmp eq ptr %147, %146
  %150 = or i1 %148, %149
  br i1 %150, label %154, label %151

151:                                              ; preds = %142
  %152 = call fastcc ptr @get_representative_for(ptr noundef nonnull %147) #19
  %153 = icmp eq ptr %152, null
  br i1 %153, label %244, label %155

154:                                              ; preds = %142
  br i1 %148, label %244, label %155

155:                                              ; preds = %154, %151, %138, %125
  %156 = phi ptr [ %130, %138 ], [ null, %125 ], [ %152, %151 ], [ %130, %154 ]
  %157 = icmp ne ptr %156, %130
  %158 = zext i1 %157 to i8
  %159 = or i8 %126, %158
  %160 = icmp eq ptr %132, null
  br i1 %160, label %181, label %161

161:                                              ; preds = %155
  %162 = load i64, ptr %132, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 141
  br i1 %164, label %165, label %178

165:                                              ; preds = %161
  %166 = call ptr @VN_INFO(ptr noundef nonnull %132) #20
  %167 = getelementptr inbounds %struct.vn_ssa_aux, ptr %166, i64 0, i32 2
  %168 = load i32, ptr %167, align 8, !tbaa !12
  %169 = call fastcc ptr @find_leader_in_sets(i32 noundef %168, ptr noundef %1, ptr noundef %2) #19
  %170 = call fastcc ptr @phi_translate(ptr noundef %169, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %171 = icmp eq ptr %170, null
  %172 = icmp eq ptr %170, %169
  %173 = or i1 %171, %172
  br i1 %173, label %177, label %174

174:                                              ; preds = %165
  %175 = call fastcc ptr @get_representative_for(ptr noundef nonnull %170) #19
  %176 = icmp eq ptr %175, null
  br i1 %176, label %244, label %181

177:                                              ; preds = %165
  br i1 %171, label %244, label %181

178:                                              ; preds = %161
  %179 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %132) #20
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %244, label %181

181:                                              ; preds = %177, %174, %155, %178
  %182 = phi ptr [ %132, %178 ], [ null, %155 ], [ %175, %174 ], [ %132, %177 ]
  %183 = icmp ne ptr %182, %132
  %184 = zext i1 %183 to i8
  %185 = or i8 %159, %184
  %186 = icmp eq ptr %134, null
  br i1 %186, label %207, label %187

187:                                              ; preds = %181
  %188 = load i64, ptr %134, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 141
  br i1 %190, label %191, label %204

191:                                              ; preds = %187
  %192 = call ptr @VN_INFO(ptr noundef nonnull %134) #20
  %193 = getelementptr inbounds %struct.vn_ssa_aux, ptr %192, i64 0, i32 2
  %194 = load i32, ptr %193, align 8, !tbaa !12
  %195 = call fastcc ptr @find_leader_in_sets(i32 noundef %194, ptr noundef %1, ptr noundef %2) #19
  %196 = call fastcc ptr @phi_translate(ptr noundef %195, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %197 = icmp eq ptr %196, null
  %198 = icmp eq ptr %196, %195
  %199 = or i1 %197, %198
  br i1 %199, label %203, label %200

200:                                              ; preds = %191
  %201 = call fastcc ptr @get_representative_for(ptr noundef nonnull %196) #19
  %202 = icmp eq ptr %201, null
  br i1 %202, label %244, label %207

203:                                              ; preds = %191
  br i1 %197, label %244, label %207

204:                                              ; preds = %187
  %205 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %134) #20
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %244, label %207

207:                                              ; preds = %203, %200, %181, %204
  %208 = phi ptr [ %134, %204 ], [ null, %181 ], [ %201, %200 ], [ %134, %203 ]
  %209 = icmp ne ptr %208, %134
  %210 = zext i1 %209 to i8
  %211 = or i8 %185, %210
  %212 = load ptr, ptr %8, align 8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = call fastcc ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef %115) #19
  store ptr %215, ptr %8, align 8, !tbaa !21
  br label %216

216:                                              ; preds = %214, %207
  %217 = phi ptr [ %215, %214 ], [ %212, %207 ]
  %218 = load i32, ptr %13, align 8, !tbaa !47
  %219 = icmp eq i32 %218, 141
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load i64, ptr %156, align 8
  %222 = trunc i64 %221 to i32
  %223 = and i32 %222, 65535
  %224 = icmp eq i32 %223, 141
  br i1 %224, label %226, label %225

225:                                              ; preds = %220
  store i32 %223, ptr %13, align 8, !tbaa !47
  br label %226

226:                                              ; preds = %225, %220, %216
  store ptr %136, ptr %121, align 8, !tbaa !208
  store ptr %156, ptr %122, align 8, !tbaa !49
  store ptr %182, ptr %123, align 8, !tbaa !50
  store ptr %208, ptr %124, align 8, !tbaa !51
  %227 = load i32, ptr %10, align 4, !tbaa !29
  call fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef %217, i32 noundef %227, ptr noundef nonnull %13) #19
  %228 = load i32, ptr %10, align 4, !tbaa !29
  %229 = icmp ne i32 %228, 0
  %230 = icmp ne ptr %156, null
  %231 = and i1 %230, %229
  br i1 %231, label %232, label %246

232:                                              ; preds = %226
  %233 = load i64, ptr %156, align 8
  %234 = and i64 %233, 65535
  %235 = icmp eq i64 %234, 121
  br i1 %235, label %236, label %246

236:                                              ; preds = %232
  %237 = load ptr, ptr %8, align 8
  %238 = add i32 %228, -1
  %239 = call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %237, i32 noundef %238) #19
  %240 = load i32, ptr %239, align 8, !tbaa !47
  %241 = icmp eq i32 %240, 47
  br i1 %241, label %242, label %246

242:                                              ; preds = %236
  call void @vn_reference_fold_indirect(ptr noundef nonnull %8, ptr noundef nonnull %10) #20
  %243 = load i32, ptr %10, align 4, !tbaa !29
  br label %246

244:                                              ; preds = %200, %174, %151, %178, %204, %154, %177, %203
  %245 = phi i8 [ %185, %204 ], [ %159, %178 ], [ %126, %154 ], [ %159, %177 ], [ %185, %203 ], [ %126, %151 ], [ %159, %174 ], [ %185, %200 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #21
  br label %252

246:                                              ; preds = %242, %236, %232, %226
  %247 = phi i32 [ %243, %242 ], [ %228, %236 ], [ %228, %232 ], [ %228, %226 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #21
  %248 = add i32 %127, 1
  %249 = add i32 %247, 1
  store i32 %249, ptr %10, align 4, !tbaa !29
  %250 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %115, i32 noundef %248, ptr noundef nonnull %11) #19, !range !26
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %125, !llvm.loop !210

252:                                              ; preds = %246, %111, %244
  %253 = phi i32 [ %127, %244 ], [ 0, %111 ], [ %248, %246 ]
  %254 = phi i8 [ %245, %244 ], [ 0, %111 ], [ %211, %246 ]
  %255 = call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %115) #19
  %256 = icmp eq i32 %253, %255
  br i1 %256, label %261, label %257

257:                                              ; preds = %252
  %258 = load ptr, ptr %8, align 8, !tbaa !21
  %259 = icmp eq ptr %258, null
  br i1 %259, label %335, label %260

260:                                              ; preds = %257
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %8) #19
  br label %335

261:                                              ; preds = %252
  %262 = icmp eq ptr %117, null
  br i1 %262, label %272, label %263

263:                                              ; preds = %261
  %264 = load ptr, ptr %8, align 8, !tbaa !21
  %265 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 3
  %266 = load i32, ptr %265, align 8, !tbaa !211
  %267 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 4
  %268 = load ptr, ptr %267, align 8, !tbaa !212
  %269 = call fastcc ptr @translate_vuse_through_block(ptr noundef %264, i32 noundef %266, ptr noundef %268, ptr noundef nonnull %117, ptr noundef %4, ptr noundef %3, ptr noundef nonnull %9) #19
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %263
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %8) #19
  br label %335

272:                                              ; preds = %263, %261
  %273 = phi ptr [ %269, %263 ], [ null, %261 ]
  %274 = icmp eq i8 %254, 0
  %275 = icmp eq ptr %273, %117
  %276 = select i1 %274, i1 %275, i1 false
  br i1 %276, label %333, label %277

277:                                              ; preds = %272
  %278 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 3
  %279 = load i32, ptr %278, align 8, !tbaa !211
  %280 = getelementptr inbounds %struct.vn_reference_s, ptr %113, i64 0, i32 4
  %281 = load ptr, ptr %280, align 8, !tbaa !212
  %282 = load ptr, ptr %8, align 8, !tbaa !21
  %283 = call ptr @vn_reference_lookup_pieces(ptr noundef %273, i32 noundef %279, ptr noundef %281, ptr noundef %282, ptr noundef nonnull %12, i8 noundef zeroext 1) #20
  %284 = load ptr, ptr %12, align 8, !tbaa !21
  %285 = icmp eq ptr %284, null
  br i1 %285, label %287, label %286

286:                                              ; preds = %277
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %8) #19
  br label %287

287:                                              ; preds = %286, %277
  %288 = icmp eq ptr %283, null
  br i1 %288, label %298, label %289

289:                                              ; preds = %287
  %290 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %283) #20
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %298, label %292

292:                                              ; preds = %289
  %293 = load ptr, ptr %8, align 8, !tbaa !21
  %294 = icmp eq ptr %293, null
  br i1 %294, label %296, label %295

295:                                              ; preds = %292
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1722, ptr noundef nonnull @.str.1) #20
  br label %296

296:                                              ; preds = %292, %295
  %297 = call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %283) #19
  br label %335

298:                                              ; preds = %289, %287
  %299 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !21
  %300 = call ptr @pool_alloc(ptr noundef %299) #20
  store i32 2, ptr %300, align 8, !tbaa !6
  %301 = getelementptr inbounds %struct.pre_expr_d, ptr %300, i64 0, i32 1
  store i32 0, ptr %301, align 4, !tbaa !28
  %302 = load ptr, ptr %12, align 8, !tbaa !21
  %303 = icmp eq ptr %302, null
  br i1 %303, label %311, label %304

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.pre_expr_d, ptr %300, i64 0, i32 2
  store ptr %302, ptr %305, align 8, !tbaa !11
  %306 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %300) #19
  %307 = icmp eq ptr %306, %300
  br i1 %307, label %308, label %335

308:                                              ; preds = %304
  %309 = load ptr, ptr %12, align 8, !tbaa !21
  %310 = load i32, ptr %309, align 8, !tbaa !17
  br label %330

311:                                              ; preds = %298
  %312 = load i8, ptr %9, align 1
  %313 = icmp ne i8 %312, 0
  %314 = select i1 %274, i1 %313, i1 false
  br i1 %314, label %319, label %315

315:                                              ; preds = %311
  %316 = call i32 @get_next_value_id() #20
  %317 = call i32 @get_max_value_id() #20
  %318 = add i32 %317, 1
  call fastcc void @VEC_bitmap_set_t_heap_safe_grow_cleared(i32 noundef %318) #19
  br label %321

319:                                              ; preds = %311
  %320 = load i32, ptr %113, align 8, !tbaa !17
  br label %321

321:                                              ; preds = %319, %315
  %322 = phi i32 [ %320, %319 ], [ %316, %315 ]
  %323 = load i32, ptr %278, align 8, !tbaa !211
  %324 = load ptr, ptr %280, align 8, !tbaa !212
  %325 = load ptr, ptr %8, align 8, !tbaa !21
  %326 = call ptr @vn_reference_insert_pieces(ptr noundef %273, i32 noundef %323, ptr noundef %324, ptr noundef %325, ptr noundef %283, i32 noundef %322) #20
  store ptr %326, ptr %12, align 8, !tbaa !21
  store ptr null, ptr %8, align 8, !tbaa !21
  %327 = getelementptr inbounds %struct.pre_expr_d, ptr %300, i64 0, i32 2
  store ptr %326, ptr %327, align 8, !tbaa !11
  %328 = call fastcc ptr @fully_constant_expression(ptr noundef nonnull %300) #19
  %329 = icmp eq ptr %328, %300
  br i1 %329, label %330, label %335

330:                                              ; preds = %321, %308
  %331 = phi i32 [ %310, %308 ], [ %322, %321 ]
  %332 = call fastcc i32 @get_or_alloc_expression_id(ptr noundef nonnull %300) #19
  call void @add_to_value(i32 noundef %331, ptr noundef nonnull %300) #19
  br label %333

333:                                              ; preds = %330, %272
  %334 = phi ptr [ %300, %330 ], [ %0, %272 ]
  call fastcc void @VEC_vn_reference_op_s_heap_free(ptr noundef nonnull %8) #19
  br label %335

335:                                              ; preds = %321, %304, %296, %257, %260, %333, %271
  %336 = phi ptr [ null, %271 ], [ %334, %333 ], [ null, %260 ], [ null, %257 ], [ %328, %321 ], [ %306, %304 ], [ %297, %296 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %377

337:                                              ; preds = %5
  %338 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %339 = load ptr, ptr %338, align 8, !tbaa !11
  %340 = getelementptr inbounds %struct.tree_ssa_name, ptr %339, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !11
  %342 = tail call fastcc i32 @gimple_code(ptr noundef %341) #19, !range !91
  %343 = icmp eq i32 %342, 16
  br i1 %343, label %344, label %377

344:                                              ; preds = %337
  %345 = tail call fastcc ptr @gimple_bb(ptr noundef %341) #19
  %346 = icmp eq ptr %345, %4
  br i1 %346, label %347, label %377

347:                                              ; preds = %344
  %348 = tail call ptr @find_edge(ptr noundef %3, ptr noundef %4) #20
  %349 = icmp eq ptr %348, null
  br i1 %349, label %377, label %350

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.edge_def, ptr %348, i64 0, i32 6
  %352 = load i32, ptr %351, align 4, !tbaa !213
  %353 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %341, i32 noundef %352) #19
  %354 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %353) #19
  %355 = load i64, ptr %354, align 8
  %356 = and i64 %355, 65535
  %357 = icmp eq i64 %356, 141
  br i1 %357, label %358, label %361

358:                                              ; preds = %350
  %359 = tail call ptr @VN_INFO(ptr noundef nonnull %354) #20
  %360 = load ptr, ptr %359, align 8, !tbaa !135
  br label %361

361:                                              ; preds = %358, %350
  %362 = phi ptr [ %360, %358 ], [ %354, %350 ]
  %363 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %362) #20
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %361
  %366 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef %362) #19
  br label %377

367:                                              ; preds = %361
  %368 = load i64, ptr %362, align 8
  %369 = and i64 %368, 65535
  %370 = icmp eq i64 %369, 141
  br i1 %370, label %371, label %374

371:                                              ; preds = %367
  %372 = tail call zeroext i8 @ssa_undefined_value_p(ptr noundef nonnull %362) #20
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %371, %367
  %375 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %362) #19
  br label %377

376:                                              ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1806, ptr noundef nonnull @.str.1) #20
  br label %377

377:                                              ; preds = %365, %374, %371, %337, %344, %347, %376, %335, %109
  %378 = phi ptr [ null, %376 ], [ %336, %335 ], [ %110, %109 ], [ %0, %347 ], [ null, %371 ], [ %375, %374 ], [ %366, %365 ], [ %0, %337 ], [ %0, %344 ]
  ret ptr %378
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @phi_trans_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @xmalloc(i64 noundef 32) #20
  store ptr %0, ptr %4, align 8, !tbaa !162
  %5 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %4, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !161
  %6 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %4, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !205
  %7 = tail call i32 @pre_expr_hash(ptr noundef %0) #19
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 9
  %9 = load i32, ptr %8, align 8, !tbaa !77
  %10 = tail call i32 @iterative_hash_hashval_t(i32 noundef %7, i32 noundef %9) #20
  %11 = getelementptr inbounds %struct.expr_pred_trans_d, ptr %4, i64 0, i32 3
  store i32 %10, ptr %11, align 8, !tbaa !159
  %12 = load ptr, ptr @phi_translate_table, align 8, !tbaa !21
  %13 = tail call ptr @htab_find_slot_with_hash(ptr noundef %12, ptr noundef nonnull %4, i32 noundef %10, i32 noundef 1) #20
  %14 = load ptr, ptr %13, align 8, !tbaa !21
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %14) #19
  br label %17

17:                                               ; preds = %16, %3
  store ptr %4, ptr %13, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare i32 @iterative_hash_hashval_t(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_leader_in_sets(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %1, i32 noundef %0, ptr noundef null) #19
  %5 = icmp eq ptr %4, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @bitmap_find_leader(ptr noundef nonnull %2, i32 noundef %0, ptr noundef null) #19
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %4, %3 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_representative_for(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = tail call fastcc i32 @get_expr_value_id(ptr noundef %0) #19
  %5 = load i32, ptr %0, align 8, !tbaa !6
  switch i32 %5, label %30 [
    i32 0, label %6
    i32 3, label %9
    i32 1, label %12
    i32 2, label %12
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  br label %74

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  br label %74

12:                                               ; preds = %1, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %13 = load ptr, ptr @value_expressions, align 8
  %14 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %13, i32 noundef %4) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %2) #19
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !56
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %24, %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %30

19:                                               ; preds = %12, %24
  %20 = load i32, ptr %2, align 4, !tbaa !29
  %21 = tail call fastcc ptr @expression_for_id(i32 noundef %20) #19
  %22 = load i32, ptr %21, align 8, !tbaa !6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !56
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %18, label %19, !llvm.loop !214

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.pre_expr_d, ptr %21, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %74

30:                                               ; preds = %18, %1
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 54, i64 1, ptr nonnull %31)
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !21
  tail call fastcc void @print_pre_expr(ptr noundef %35, ptr noundef nonnull %0) #19
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %37 = tail call i32 @fputc(i32 10, ptr %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = tail call fastcc ptr @get_expr_type(ptr noundef nonnull %0) #19
  %40 = load ptr, ptr @pretemp, align 8, !tbaa !21
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %42, %38
  %47 = tail call ptr @create_tmp_var(ptr noundef %39, ptr noundef nonnull @.str.41) #20
  store ptr %47, ptr @pretemp, align 8, !tbaa !21
  tail call fastcc void @get_var_ann(ptr noundef %47) #19
  %48 = load ptr, ptr @pretemp, align 8, !tbaa !21
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi ptr [ %48, %46 ], [ %40, %42 ]
  %51 = tail call ptr @gimple_build_nop() #20
  %52 = tail call fastcc ptr @make_ssa_name(ptr noundef %50, ptr noundef %51) #19
  %53 = tail call ptr @VN_INFO_GET(ptr noundef %52) #20
  %54 = getelementptr inbounds %struct.vn_ssa_aux, ptr %53, i64 0, i32 2
  store i32 %4, ptr %54, align 8, !tbaa !12
  %55 = load i32, ptr %0, align 8, !tbaa !6
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  br label %60

60:                                               ; preds = %49, %57
  %61 = phi ptr [ %59, %57 ], [ %52, %49 ]
  %62 = tail call ptr @VN_INFO(ptr noundef %52) #20
  store ptr %61, ptr %62, align 8, !tbaa !135
  %63 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %52) #19
  tail call void @add_to_value(i32 noundef %4, ptr noundef %63) #19
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %65 = icmp eq ptr %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 32, i64 1, ptr nonnull %64)
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !21
  tail call void @print_generic_expr(ptr noundef %68, ptr noundef %52, i32 noundef 0) #20
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %70 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 16, i64 1, ptr %69)
  %71 = load ptr, ptr @dump_file, align 8, !tbaa !21
  tail call fastcc void @print_pre_expr(ptr noundef %71, ptr noundef nonnull %0) #19
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %73 = tail call i32 @fputc(i32 10, ptr %72)
  br label %74

74:                                               ; preds = %27, %60, %66, %9, %6
  %75 = phi ptr [ %29, %27 ], [ %11, %9 ], [ %8, %6 ], [ %52, %66 ], [ %52, %60 ]
  ret ptr %75
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.pre_expr_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #21
  store i32 3, ptr %2, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  store ptr %0, ptr %3, align 8, !tbaa !11
  %4 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %2) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call fastcc ptr @expression_for_id(i32 noundef %4) #19
  br label %14

8:                                                ; preds = %1
  %9 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !21
  %10 = call ptr @pool_alloc(ptr noundef %9) #20
  store i32 3, ptr %10, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.pre_expr_d, ptr %10, i64 0, i32 2
  store ptr %0, ptr %11, align 8, !tbaa !11
  %12 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %10) #19
  %13 = call i32 @get_or_alloc_constant_value_id(ptr noundef %0) #20
  call void @add_to_value(i32 noundef %13, ptr noundef nonnull %10) #19
  br label %14

14:                                               ; preds = %8, %6
  %15 = phi ptr [ %7, %6 ], [ %10, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #21
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fully_constant_expression(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !6
  switch i32 %2, label %178 [
    i32 2, label %82
    i32 1, label %3
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 65535
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !29
  switch i32 %11, label %178 [
    i32 10, label %12
    i32 7, label %14
    i32 5, label %14
    i32 4, label %54
    i32 6, label %56
  ]

12:                                               ; preds = %3
  %13 = trunc i32 %7 to i16
  switch i16 %13, label %178 [
    i16 96, label %56
    i16 93, label %14
    i16 94, label %14
    i16 95, label %14
  ]

14:                                               ; preds = %12, %12, %12, %3, %3
  %15 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !21
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 5, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !21
  %19 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %16) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %16) #19
  %23 = tail call fastcc i32 @get_expr_value_id(ptr noundef %22) #19
  %24 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %23) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %28, ptr noundef nonnull %24) #20
  br label %30

30:                                               ; preds = %21, %26, %14
  %31 = phi ptr [ %16, %14 ], [ %29, %26 ], [ %16, %21 ]
  %32 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %18) #20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %18) #19
  %36 = tail call fastcc i32 @get_expr_value_id(ptr noundef %35) #19
  %37 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %36) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !11
  %42 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %41, ptr noundef nonnull %37) #20
  br label %43

43:                                               ; preds = %34, %39, %30
  %44 = phi ptr [ %18, %30 ], [ %42, %39 ], [ %18, %34 ]
  %45 = load i32, ptr %6, align 4
  %46 = and i32 %45, 65535
  %47 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !207
  %49 = tail call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %46, ptr noundef %48, ptr noundef %31, ptr noundef %44) #20
  %50 = icmp eq ptr %49, null
  br i1 %50, label %178, label %51

51:                                               ; preds = %43
  %52 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %49) #20
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %178, label %175

54:                                               ; preds = %3
  %55 = trunc i32 %7 to i16
  switch i16 %55, label %178 [
    i16 43, label %56
    i16 44, label %56
    i16 118, label %56
  ]

56:                                               ; preds = %54, %54, %54, %12, %3
  %57 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !21
  %59 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %58) #20
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %58) #19
  %63 = tail call fastcc i32 @get_expr_value_id(ptr noundef %62) #19
  %64 = tail call fastcc ptr @get_constant_for_value_id(i32 noundef %63) #19
  br label %65

65:                                               ; preds = %56, %61
  %66 = phi ptr [ %64, %61 ], [ %58, %56 ]
  %67 = icmp eq ptr %66, null
  br i1 %67, label %178, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %57, align 8, !tbaa !21
  %70 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !11
  %72 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %71, ptr noundef nonnull %66) #20
  %73 = load i32, ptr %6, align 4
  %74 = and i32 %73, 65535
  %75 = getelementptr inbounds %struct.vn_nary_op_s, ptr %5, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !207
  %77 = tail call ptr @fold_unary_loc(i32 noundef 0, i32 noundef %74, ptr noundef %76, ptr noundef %72) #20
  %78 = icmp eq ptr %77, null
  br i1 %78, label %178, label %79

79:                                               ; preds = %68
  %80 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %77) #20
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %178, label %175

82:                                               ; preds = %1
  %83 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !11
  %85 = getelementptr inbounds %struct.vn_reference_s, ptr %84, i64 0, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %86, i32 noundef 0) #19
  %88 = load i32, ptr %87, align 8, !tbaa !47
  %89 = icmp eq i32 %88, 59
  br i1 %89, label %90, label %178

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %87, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !49
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 121
  br i1 %95, label %96, label %178

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.tree_exp, ptr %92, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !11
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 29
  br i1 %101, label %102, label %178

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.tree_function_decl, ptr %98, i64 0, i32 5
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 6144
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %178, label %107

107:                                              ; preds = %102
  %108 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %86) #19
  %109 = and i32 %108, -2
  %110 = icmp eq i32 %109, 2
  br i1 %110, label %111, label %178

111:                                              ; preds = %107
  %112 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %86, i32 noundef 1) #19
  %113 = icmp ugt i32 %108, 2
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %86, i32 noundef 2) #19
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi ptr [ %115, %114 ], [ null, %111 ]
  %118 = load i32, ptr %112, align 8, !tbaa !47
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !29
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %132, label %123

123:                                              ; preds = %116
  %124 = icmp eq i32 %118, 121
  br i1 %124, label %125, label %130

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %112, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !49
  %128 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %127) #20
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125, %123
  %131 = icmp eq ptr %117, null
  br i1 %131, label %178, label %134

132:                                              ; preds = %116, %125
  %133 = icmp eq ptr %117, null
  br i1 %133, label %153, label %134

134:                                              ; preds = %132, %130
  %135 = phi i1 [ false, %132 ], [ true, %130 ]
  %136 = load i32, ptr %117, align 8, !tbaa !47
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !29
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %150, label %141

141:                                              ; preds = %134
  %142 = icmp eq i32 %136, 121
  br i1 %142, label %143, label %149

143:                                              ; preds = %141
  %144 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %117, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !49
  %146 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %145) #20
  %147 = icmp eq i8 %146, 0
  %148 = and i1 %147, %135
  br i1 %148, label %178, label %150

149:                                              ; preds = %141
  br i1 %135, label %178, label %150

150:                                              ; preds = %143, %149, %134
  %151 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %117, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !49
  br label %153

153:                                              ; preds = %132, %150
  %154 = phi i32 [ 2, %150 ], [ 1, %132 ]
  %155 = phi ptr [ %152, %150 ], [ null, %132 ]
  %156 = load ptr, ptr %91, align 8, !tbaa !49
  %157 = getelementptr inbounds %struct.tree_exp, ptr %156, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !11
  %159 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %112, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !49
  %161 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %158, i32 noundef %154, ptr noundef %160, ptr noundef %155) #20
  %162 = icmp eq ptr %161, null
  br i1 %162, label %178, label %163

163:                                              ; preds = %153
  %164 = load i64, ptr %161, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 116
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.tree_exp, ptr %161, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !11
  %170 = icmp eq ptr %169, null
  br i1 %170, label %178, label %171

171:                                              ; preds = %163, %167
  %172 = phi ptr [ %169, %167 ], [ %161, %163 ]
  %173 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %172) #20
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %171, %79, %51
  %176 = phi ptr [ %49, %51 ], [ %77, %79 ], [ %172, %171 ]
  %177 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %176) #19
  br label %178

178:                                              ; preds = %175, %143, %153, %130, %167, %171, %149, %65, %82, %90, %96, %102, %107, %1, %12, %43, %51, %54, %68, %79, %3
  %179 = phi ptr [ %0, %12 ], [ %0, %51 ], [ %0, %43 ], [ %0, %54 ], [ %0, %79 ], [ %0, %68 ], [ %0, %3 ], [ %0, %1 ], [ %0, %107 ], [ %0, %102 ], [ %0, %96 ], [ %0, %90 ], [ %0, %82 ], [ %0, %65 ], [ %0, %149 ], [ %0, %171 ], [ %0, %167 ], [ %0, %130 ], [ %0, %153 ], [ %0, %143 ], [ %177, %175 ]
  ret ptr %179
}

; Function Attrs: optsize
declare i32 @get_next_value_id() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vn_nary_op_insert_pieces(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_vn_reference_op_s_heap_copy(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 40) #20
  store i32 %4, ptr %8, align 8, !tbaa !215
  %9 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2
  %11 = mul nuw nsw i64 %7, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vn_reference_op_s_base_replace(ptr noundef writeonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #4 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !209
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_vn_reference_op_s_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vn_reference_op_s_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @vn_reference_fold_indirect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @translate_vuse_through_block(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 {
  %8 = alloca %struct.ao_ref_s, align 8
  %9 = alloca ptr, align 8
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #21
  store i8 1, ptr %6, align 1, !tbaa !11
  %12 = tail call fastcc ptr @gimple_bb(ptr noundef %11) #19
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %55

14:                                               ; preds = %7
  %15 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %8, i32 noundef %1, ptr noundef %2, ptr noundef %0) #20
  %16 = call fastcc i32 @gimple_code(ptr noundef %11) #19, !range !91
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = icmp eq i8 %15, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %18, %30
  %21 = phi ptr [ %27, %30 ], [ %11, %18 ]
  %22 = call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %21, ptr noundef nonnull %8) #20
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = call fastcc ptr @gimple_vuse(ptr noundef %21) #19
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = call fastcc ptr @gimple_bb(ptr noundef %27) #19
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = call fastcc i32 @gimple_code(ptr noundef %27) #19, !range !91
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %20, !llvm.loop !217

33:                                               ; preds = %30, %14
  %34 = phi ptr [ %11, %14 ], [ %27, %30 ]
  %35 = call ptr @find_edge(ptr noundef %5, ptr noundef %4) #20
  %36 = icmp eq ptr %35, null
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = icmp eq i8 %15, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  store ptr null, ptr %9, align 8, !tbaa !21
  %40 = call ptr @get_continuation_for_phi(ptr noundef %34, ptr noundef nonnull %8, ptr noundef nonnull %9) #20
  %41 = load ptr, ptr %9, align 8, !tbaa !21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  call void @bitmap_obstack_free(ptr noundef nonnull %41) #20
  br label %44

44:                                               ; preds = %43, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  %45 = icmp eq ptr %40, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %37, %44
  store i8 0, ptr %6, align 1, !tbaa !11
  %47 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !213
  %49 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %48) #19
  br label %50

50:                                               ; preds = %46, %44
  %51 = getelementptr inbounds %struct.edge_def, ptr %35, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !213
  %53 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %34, i32 noundef %52) #19
  %54 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %53) #19
  br label %55

55:                                               ; preds = %20, %24, %33, %18, %7, %50
  %56 = phi ptr [ %54, %50 ], [ %3, %7 ], [ null, %18 ], [ null, %33 ], [ null, %20 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #21
  ret ptr %56
}

; Function Attrs: optsize
declare ptr @vn_reference_insert_pieces(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bitmap_find_leader(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_iterator, align 8
  %8 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %11 = load ptr, ptr @value_expressions, align 8
  %12 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %11, i32 noundef %1) #19
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %13, ptr noundef nonnull %4) #19
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !56
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %22, %10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %26

17:                                               ; preds = %10, %22
  %18 = load i32, ptr %4, align 4, !tbaa !29
  %19 = tail call fastcc ptr @expression_for_id(i32 noundef %18) #19
  %20 = load i32, ptr %19, align 8, !tbaa !6
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !56
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %16, label %17, !llvm.loop !218

25:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %61

26:                                               ; preds = %16, %3
  %27 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %1) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %61, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #21
  %30 = load ptr, ptr @value_expressions, align 8
  %31 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %30, i32 noundef %1) #19
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = load ptr, ptr %0, align 8, !tbaa !22
  call fastcc void @bmp_iter_and_init(ptr noundef nonnull %7, ptr noundef %32, ptr noundef %33, ptr noundef nonnull %6) #19
  %34 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %7, ptr noundef nonnull %6) #19, !range !56
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %29
  %37 = icmp eq ptr %2, null
  br label %39

38:                                               ; preds = %57, %29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %61

39:                                               ; preds = %36, %57
  %40 = load i32, ptr %6, align 4, !tbaa !29
  %41 = tail call fastcc ptr @expression_for_id(i32 noundef %40) #19
  br i1 %37, label %60, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.pre_expr_d, ptr %41, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !11
  %47 = tail call fastcc i32 @gimple_code(ptr noundef %46) #19, !range !91
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %60, label %49

49:                                               ; preds = %42
  %50 = tail call fastcc ptr @gimple_bb(ptr noundef %46) #19
  %51 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %2) #19
  %52 = icmp eq ptr %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = tail call fastcc i32 @gimple_uid(ptr noundef %46) #19
  %55 = tail call fastcc i32 @gimple_uid(ptr noundef nonnull %2) #19
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %6) #19
  %58 = call fastcc zeroext i8 @bmp_iter_and(ptr noundef nonnull %7, ptr noundef nonnull %6) #19, !range !56
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %38, label %39, !llvm.loop !219

60:                                               ; preds = %53, %49, %42, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %61

61:                                               ; preds = %26, %38, %60, %25
  %62 = phi ptr [ %19, %25 ], [ %41, %60 ], [ null, %38 ], [ null, %26 ]
  ret ptr %62
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = icmp eq ptr %0, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !22
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = tail call i32 @bitmap_bit_p(ptr noundef %13, i32 noundef %1) #20
  %15 = trunc i32 %14 to i8
  br label %16

16:                                               ; preds = %5, %7, %2, %11
  %17 = phi i8 [ %15, %11 ], [ 1, %2 ], [ 0, %7 ], [ 0, %5 ]
  ret i8 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_and_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #9 {
  %5 = load ptr, ptr %1, align 8, !tbaa !58
  store ptr %5, ptr %0, align 8, !tbaa !60
  %6 = load ptr, ptr %2, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %8 = icmp eq ptr %5, null
  %9 = select i1 %8, ptr null, ptr %6
  store ptr %9, ptr %7, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  br label %15

13:                                               ; preds = %21, %4
  store ptr @bitmap_zero_bits, ptr %7, align 8, !tbaa !63
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !60
  %14 = load i32, ptr getelementptr inbounds (%struct.bitmap_element_def, ptr @bitmap_zero_bits, i64 0, i32 2), align 8, !tbaa !64
  br label %26

15:                                               ; preds = %11, %21
  %16 = phi ptr [ %6, %11 ], [ %22, %21 ]
  %17 = getelementptr inbounds %struct.bitmap_element_def, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = load i32, ptr %12, align 8, !tbaa !64
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load ptr, ptr %16, align 8, !tbaa !71
  store ptr %22, ptr %7, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %13, label %15

24:                                               ; preds = %15
  %25 = icmp eq i32 %19, %18
  br i1 %25, label %26, label %36

26:                                               ; preds = %13, %24
  %27 = phi ptr [ @bitmap_zero_bits, %13 ], [ %5, %24 ]
  %28 = phi ptr [ @bitmap_zero_bits, %13 ], [ %16, %24 ]
  %29 = phi i32 [ %14, %13 ], [ %18, %24 ]
  %30 = shl i32 %29, 7
  %31 = getelementptr inbounds %struct.bitmap_element_def, ptr %27, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !67
  %33 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !67
  %35 = and i64 %34, %32
  br label %36

36:                                               ; preds = %24, %26
  %37 = phi i32 [ 0, %26 ], [ 1, %24 ]
  %38 = phi i64 [ %35, %26 ], [ 0, %24 ]
  %39 = phi i32 [ %30, %26 ], [ 0, %24 ]
  %40 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %37, ptr %40, align 8
  %41 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %38, ptr %41, align 8
  %42 = icmp eq i64 %38, 0
  %43 = zext i1 %42 to i32
  %44 = or disjoint i32 %39, %43
  store i32 %44, ptr %3, align 4, !tbaa !29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_and(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !68
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %34, %2
  %7 = phi i64 [ %4, %2 ], [ %41, %34 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %77

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !29
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %75, !llvm.loop !220

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !29
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !29
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !66
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %0, align 8, !tbaa !60
  br label %28

28:                                               ; preds = %19, %73
  %29 = phi ptr [ %27, %19 ], [ %52, %73 ]
  %30 = phi i32 [ %25, %19 ], [ 0, %73 ]
  store i32 %30, ptr %23, align 8, !tbaa !66
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %26, align 8, !tbaa !63
  br label %34

34:                                               ; preds = %32, %43
  %35 = phi i32 [ %30, %32 ], [ %47, %43 ]
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bitmap_element_def, ptr %29, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !67
  %39 = getelementptr inbounds %struct.bitmap_element_def, ptr %33, i64 0, i32 3, i64 %36
  %40 = load i64, ptr %39, align 8, !tbaa !67
  %41 = and i64 %40, %38
  store i64 %41, ptr %3, align 8, !tbaa !68
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %6

43:                                               ; preds = %34
  %44 = load i32, ptr %1, align 4, !tbaa !29
  %45 = add i32 %44, 64
  store i32 %45, ptr %1, align 4, !tbaa !29
  %46 = load i32, ptr %23, align 8, !tbaa !66
  %47 = add i32 %46, 1
  store i32 %47, ptr %23, align 8, !tbaa !66
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %34, !llvm.loop !221

49:                                               ; preds = %43, %28
  br label %50

50:                                               ; preds = %61, %49
  %51 = phi ptr [ %29, %49 ], [ %52, %61 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !71
  %53 = icmp eq ptr %52, null
  br i1 %53, label %76, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !64
  %57 = load ptr, ptr %26, align 8, !tbaa !63
  %58 = getelementptr inbounds %struct.bitmap_element_def, ptr %57, i64 0, i32 2
  %59 = load i32, ptr %58, align 8, !tbaa !64
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %71
  br label %50, !llvm.loop !222

62:                                               ; preds = %54
  store ptr %52, ptr %0, align 8, !tbaa !60
  br label %63

63:                                               ; preds = %62, %68
  %64 = phi ptr [ %57, %62 ], [ %69, %68 ]
  %65 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !64
  %67 = icmp ult i32 %66, %56
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load ptr, ptr %64, align 8, !tbaa !71
  store ptr %69, ptr %26, align 8, !tbaa !63
  %70 = icmp eq ptr %69, null
  br i1 %70, label %77, label %63, !llvm.loop !223

71:                                               ; preds = %63
  %72 = icmp eq i32 %56, %66
  br i1 %72, label %73, label %61

73:                                               ; preds = %71
  %74 = shl i32 %56, 7
  store i32 %74, ptr %1, align 4, !tbaa !29
  br label %28

75:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !68
  store i32 %16, ptr %1, align 4, !tbaa !29
  br label %77

76:                                               ; preds = %50
  store ptr null, ptr %0, align 8, !tbaa !60
  br label %77

77:                                               ; preds = %68, %6, %75, %76
  %78 = phi i8 [ 0, %76 ], [ 1, %75 ], [ 1, %6 ], [ 0, %68 ]
  ret i8 %78
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !11
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_expr_type(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !6
  switch i32 %2, label %23 [
    i32 0, label %3
    i32 3, label %8
    i32 2, label %13
    i32 1, label %18
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  br label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  br label %24

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.vn_reference_s, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !212
  br label %24

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.vn_nary_op_s, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !207
  br label %24

23:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1397, ptr noundef nonnull @.str.1) #20
  br label %24

24:                                               ; preds = %23, %18, %13, %8, %3
  %25 = phi ptr [ null, %23 ], [ %22, %18 ], [ %17, %13 ], [ %12, %8 ], [ %7, %3 ]
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_var_ann(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %13

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.29, i32 noundef 144, ptr noundef nonnull @.str.1) #20
  unreachable

13:                                               ; preds = %8, %6, %4
  %14 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @create_var_ann(ptr noundef nonnull %0) #20
  br label %19

19:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !21
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #20
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @VN_INFO_GET(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_or_alloc_expr_for(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 141
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %0) #19
  br label %31

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @get_or_alloc_expr_for_constant(ptr noundef nonnull %0) #19
  br label %31

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %14 = call ptr @vn_nary_op_lookup(ptr noundef nonnull %0, ptr noundef nonnull %2) #20
  %15 = load ptr, ptr %2, align 8, !tbaa !21
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !21
  %19 = call ptr @pool_alloc(ptr noundef %18) #20
  store i32 1, ptr %19, align 8, !tbaa !6
  %20 = load ptr, ptr %2, align 8, !tbaa !21
  %21 = getelementptr inbounds %struct.pre_expr_d, ptr %19, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !11
  %22 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %19) #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr @pre_expr_pool, align 8, !tbaa !21
  call void @pool_free(ptr noundef %25, ptr noundef nonnull %19) #20
  %26 = call fastcc ptr @expression_for_id(i32 noundef %22) #19
  br label %29

27:                                               ; preds = %17
  %28 = call fastcc i32 @alloc_expression_id(ptr noundef nonnull %19) #19
  br label %29

29:                                               ; preds = %13, %24, %27
  %30 = phi ptr [ %26, %24 ], [ %19, %27 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  br label %31

31:                                               ; preds = %29, %11, %6
  %32 = phi ptr [ %7, %6 ], [ %12, %11 ], [ %30, %29 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_constant_for_value_id(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = tail call zeroext i8 @value_id_constant_p(i32 noundef %0) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %7 = load ptr, ptr @value_expressions, align 8
  %8 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %7, i32 noundef %0) #19
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %2) #19
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !56
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %18, %6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %24

13:                                               ; preds = %6, %18
  %14 = load i32, ptr %2, align 4, !tbaa !29
  %15 = tail call fastcc ptr @expression_for_id(i32 noundef %14) #19
  %16 = load i32, ptr %15, align 8, !tbaa !6
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %19 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !56
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %12, label %13, !llvm.loop !224

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %15, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %24

24:                                               ; preds = %1, %12, %21
  %25 = phi ptr [ %23, %21 ], [ null, %12 ], [ null, %1 ]
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_unary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vn_nary_op_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_continuation_for_phi(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_set_replace_value(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %6 = tail call zeroext i8 @value_id_constant_p(i32 noundef %1) #20
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %1) #19
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @value_expressions, align 8
  %13 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %12, i32 noundef %1) #19
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %14, ptr noundef nonnull %4) #19
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !56
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %11, %28
  %18 = load ptr, ptr %0, align 8, !tbaa !22
  %19 = load i32, ptr %4, align 4, !tbaa !29
  %20 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %19) #20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 8, !tbaa !22
  %24 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %23, i32 noundef %19) #20
  %25 = load ptr, ptr %0, align 8, !tbaa !22
  %26 = tail call fastcc i32 @get_expression_id(ptr noundef %2) #19
  %27 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %25, i32 noundef %26) #20
  br label %31

28:                                               ; preds = %17
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !56
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %17, !llvm.loop !225

31:                                               ; preds = %28, %11, %8, %3, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @get_expression_id(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !28
  ret i32 %3
}

; Function Attrs: optsize
declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @valid_in_sets(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.pre_expr_d, align 8
  %6 = alloca ptr, align 8
  %7 = load i32, ptr %2, align 8, !tbaa !6
  switch i32 %7, label %102 [
    i32 0, label %8
    i32 1, label %14
    i32 2, label %64
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  %13 = tail call fastcc zeroext i8 @bitmap_set_contains_expr(ptr noundef %12, ptr noundef nonnull %2) #19
  br label %103

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.vn_nary_op_s, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %18, 65536
  br i1 %19, label %53, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 1
  %22 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 2
  %23 = icmp eq ptr %1, null
  br label %24

24:                                               ; preds = %20, %47
  %25 = phi i32 [ %18, %20 ], [ %48, %47 ]
  %26 = phi i64 [ 0, %20 ], [ %49, %47 ]
  %27 = getelementptr inbounds %struct.vn_nary_op_s, ptr %16, i64 0, i32 5, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !21
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 141
  br i1 %31, label %32, label %47

32:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  store i32 0, ptr %5, align 8, !tbaa !6
  store i32 0, ptr %21, align 4, !tbaa !28
  store ptr %28, ptr %22, align 8, !tbaa !11
  %33 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %5) #19
  store i32 %33, ptr %21, align 4, !tbaa !28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %32
  %36 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %5) #19
  %37 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %36) #19
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  br i1 %23, label %46, label %40

40:                                               ; preds = %39
  %41 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %5) #19
  %42 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef nonnull %1, i32 noundef %41) #19
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  %45 = load i32, ptr %17, align 4
  br label %47

46:                                               ; preds = %39, %40, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  br label %103

47:                                               ; preds = %44, %24
  %48 = phi i32 [ %45, %44 ], [ %25, %24 ]
  %49 = add nuw nsw i64 %26, 1
  %50 = lshr i32 %48, 16
  %51 = zext nneg i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %24, label %53, !llvm.loop !226

53:                                               ; preds = %47, %14
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !73
  %56 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %55, i64 0, i32 8
  %57 = load i8, ptr %56, align 8
  %58 = and i8 %57, 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = call zeroext i8 @vn_nary_may_trap(ptr noundef nonnull %16) #20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %60, %53
  br label %103

64:                                               ; preds = %4
  %65 = getelementptr inbounds %struct.pre_expr_d, ptr %2, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %67 = getelementptr inbounds %struct.vn_reference_s, ptr %66, i64 0, i32 5
  %68 = load ptr, ptr %67, align 8, !tbaa !46
  %69 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %68, i32 noundef 0, ptr noundef nonnull %6) #19, !range !26
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %81, label %76

71:                                               ; preds = %76
  %72 = add i32 %77, 1
  %73 = load ptr, ptr %67, align 8, !tbaa !46
  %74 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %73, i32 noundef %72, ptr noundef nonnull %6) #19, !range !26
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76, !llvm.loop !227

76:                                               ; preds = %64, %71
  %77 = phi i32 [ %72, %71 ], [ 0, %64 ]
  %78 = load ptr, ptr %6, align 8, !tbaa !21
  %79 = tail call fastcc zeroext i8 @vro_valid_in_sets(ptr noundef %0, ptr noundef %1, ptr noundef %78) #19, !range !56
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %100, label %71

81:                                               ; preds = %71, %64
  %82 = getelementptr inbounds %struct.vn_reference_s, ptr %66, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !53
  %84 = icmp eq ptr %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.tree_ssa_name, ptr %83, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !11
  %88 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %87) #19, !range !56
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = tail call fastcc ptr @gimple_bb(ptr noundef %87) #19
  %92 = icmp eq ptr %91, %3
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %3, ptr noundef %91) #20
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %85, %90, %93, %81
  %97 = tail call fastcc zeroext i8 @value_dies_in_block_x(ptr noundef nonnull %2, ptr noundef %3) #19
  %98 = icmp eq i8 %97, 0
  %99 = zext i1 %98 to i8
  br label %100

100:                                              ; preds = %76, %93, %96
  %101 = phi i8 [ %99, %96 ], [ 0, %93 ], [ 0, %76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %103

102:                                              ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2148, ptr noundef nonnull @.str.1) #20
  br label %103

103:                                              ; preds = %63, %46, %60, %102, %100, %8
  %104 = phi i8 [ 0, %102 ], [ %101, %100 ], [ %13, %8 ], [ 0, %46 ], [ 1, %63 ], [ 0, %60 ]
  ret i8 %104
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_remove_from_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %4 = tail call zeroext i8 @value_id_constant_p(i32 noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.bitmap_set, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %8, i32 noundef %3) #20
  %10 = load ptr, ptr %0, align 8, !tbaa !22
  %11 = tail call fastcc i32 @get_expression_id(ptr noundef %1) #19
  %12 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %10, i32 noundef %11) #20
  br label %13

13:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bitmap_set_contains_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !22
  %4 = tail call fastcc i32 @get_expression_id(ptr noundef %1) #19
  %5 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %4) #20
  %6 = trunc i32 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @vn_nary_may_trap(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @vro_valid_in_sets(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca %struct.pre_expr_d, align 8
  %5 = alloca %struct.pre_expr_d, align 8
  %6 = alloca %struct.pre_expr_d, align 8
  %7 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 141
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  store i32 0, ptr %4, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %4, i64 0, i32 1
  store i32 0, ptr %15, align 4, !tbaa !28
  %16 = getelementptr inbounds %struct.pre_expr_d, ptr %4, i64 0, i32 2
  store ptr %8, ptr %16, align 8, !tbaa !11
  %17 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %4) #19
  store i32 %17, ptr %15, align 4, !tbaa !28
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %14
  %20 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %4) #19
  %21 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %20) #19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = icmp eq ptr %1, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %4) #19
  %27 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef nonnull %1, i32 noundef %26) #19
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14, %25, %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  br label %81

30:                                               ; preds = %19, %25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  br label %31

31:                                               ; preds = %30, %10, %3
  %32 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %2, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = icmp eq ptr %33, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %31
  %36 = load i64, ptr %33, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 141
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  store i32 0, ptr %5, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 1
  store i32 0, ptr %40, align 4, !tbaa !28
  %41 = getelementptr inbounds %struct.pre_expr_d, ptr %5, i64 0, i32 2
  store ptr %33, ptr %41, align 8, !tbaa !11
  %42 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %5) #19
  store i32 %42, ptr %40, align 4, !tbaa !28
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %39
  %45 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %5) #19
  %46 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %45) #19
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = icmp eq ptr %1, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %5) #19
  %52 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef nonnull %1, i32 noundef %51) #19
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %39, %50, %48
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  br label %81

55:                                               ; preds = %44, %50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  br label %56

56:                                               ; preds = %55, %35, %31
  %57 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %2, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  %59 = icmp eq ptr %58, null
  br i1 %59, label %81, label %60

60:                                               ; preds = %56
  %61 = load i64, ptr %58, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 141
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  store i32 0, ptr %6, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.pre_expr_d, ptr %6, i64 0, i32 1
  store i32 0, ptr %65, align 4, !tbaa !28
  %66 = getelementptr inbounds %struct.pre_expr_d, ptr %6, i64 0, i32 2
  store ptr %58, ptr %66, align 8, !tbaa !11
  %67 = call fastcc i32 @lookup_expression_id(ptr noundef nonnull %6) #19
  store i32 %67, ptr %65, align 4, !tbaa !28
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %6) #19
  %71 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %0, i32 noundef %70) #19
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = icmp eq ptr %1, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %73
  %76 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %6) #19
  %77 = call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef nonnull %1, i32 noundef %76) #19
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64, %75, %73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  br label %81

80:                                               ; preds = %69, %75
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  br label %81

81:                                               ; preds = %56, %60, %80, %79, %54, %29
  %82 = phi i8 [ 0, %29 ], [ 0, %54 ], [ 0, %79 ], [ 1, %80 ], [ 1, %60 ], [ 1, %56 ]
  ret i8 %82
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @value_dies_in_block_x(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.ao_ref_s, align 8
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  %9 = tail call fastcc i32 @get_expression_id(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #21
  %10 = icmp eq ptr %8, null
  br i1 %10, label %81, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !228
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %11
  %18 = shl i32 %9, 1
  %19 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %15, i32 noundef %18) #20
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %12, align 8, !tbaa !73
  %23 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !228
  %25 = or disjoint i32 %18, 1
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %24, i32 noundef %25) #20
  %27 = trunc i32 %26 to i8
  br label %81

28:                                               ; preds = %17, %11
  %29 = getelementptr inbounds %struct.ao_ref_s, ptr %4, i64 0, i32 1
  store ptr null, ptr %29, align 8, !tbaa !229
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %1) #19
  %30 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 3
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !56
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 4
  %35 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 5
  br label %36

36:                                               ; preds = %33, %57
  %37 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %38 = call fastcc ptr @gimple_vuse(ptr noundef %37) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %36
  %41 = call fastcc ptr @gimple_vdef(ptr noundef %37) #19
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = icmp eq ptr %38, %8
  br i1 %44, label %60, label %57

45:                                               ; preds = %40
  %46 = load ptr, ptr %29, align 8, !tbaa !229
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, ptr %30, align 8, !tbaa !211
  %50 = load ptr, ptr %34, align 8, !tbaa !212
  %51 = load ptr, ptr %35, align 8, !tbaa !46
  %52 = call zeroext i8 @ao_ref_init_from_vn_reference(ptr noundef nonnull %4, i32 noundef %49, ptr noundef %50, ptr noundef %51) #20
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %48, %45
  %55 = call zeroext i8 @stmt_may_clobber_ref_p_1(ptr noundef %37, ptr noundef nonnull %4) #20
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54, %43, %36
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %58 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !56
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %36, label %60, !llvm.loop !231

60:                                               ; preds = %43, %54, %57, %48, %28
  %61 = phi i1 [ true, %28 ], [ true, %43 ], [ false, %54 ], [ false, %48 ], [ true, %57 ]
  %62 = phi i8 [ 0, %28 ], [ 0, %43 ], [ 1, %54 ], [ 1, %48 ], [ 0, %57 ]
  %63 = load ptr, ptr %12, align 8, !tbaa !73
  %64 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %63, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !228
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %69 = load ptr, ptr %12, align 8, !tbaa !73
  %70 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %69, i64 0, i32 7
  store ptr %68, ptr %70, align 8, !tbaa !228
  br label %71

71:                                               ; preds = %67, %60
  %72 = phi ptr [ %68, %67 ], [ %65, %60 ]
  %73 = shl i32 %9, 1
  %74 = call zeroext i8 @bitmap_set_bit(ptr noundef %72, i32 noundef %73) #20
  br i1 %61, label %81, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %12, align 8, !tbaa !73
  %77 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %76, i64 0, i32 7
  %78 = load ptr, ptr %77, align 8, !tbaa !228
  %79 = or disjoint i32 %73, 1
  %80 = call zeroext i8 @bitmap_set_bit(ptr noundef %78, i32 noundef %79) #20
  br label %81

81:                                               ; preds = %71, %75, %2, %21
  %82 = phi i8 [ %27, %21 ], [ 0, %2 ], [ %62, %75 ], [ 0, %71 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret i8 %82
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !196
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bitmap_set_subtract_values(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @grand_bitmap_obstack) #20
  %6 = load ptr, ptr %0, align 8, !tbaa !22
  tail call void @bitmap_copy(ptr noundef %5, ptr noundef %6) #20
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %3) #19
  %7 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !56
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2, %16
  %10 = load i32, ptr %3, align 4, !tbaa !29
  %11 = tail call fastcc ptr @expression_for_id(i32 noundef %10) #19
  %12 = tail call fastcc i32 @get_expr_value_id(ptr noundef %11) #19
  %13 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %1, i32 noundef %12) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call fastcc void @bitmap_remove_from_set(ptr noundef nonnull %0, ptr noundef %11) #19
  br label %16

16:                                               ; preds = %15, %9
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !56
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %9, !llvm.loop !232

19:                                               ; preds = %16, %2
  tail call void @bitmap_obstack_free(ptr noundef %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dependent_clean(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %6 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %0) #19
  store ptr %6, ptr %4, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %7 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %5) #19, !range !26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %3, %15
  %10 = phi i32 [ %16, %15 ], [ 0, %3 ]
  %11 = load ptr, ptr %5, align 8, !tbaa !21
  %12 = tail call fastcc zeroext i8 @valid_in_sets(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef %2) #19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  tail call fastcc void @bitmap_remove_from_set(ptr noundef %0, ptr noundef %11) #19
  br label %15

15:                                               ; preds = %9, %14
  %16 = add nuw nsw i32 %10, 1
  %17 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %6, i32 noundef %16, ptr noundef nonnull %5) #19, !range !26
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %9, !llvm.loop !233

19:                                               ; preds = %15, %3
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @insert_aux(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef nonnull %0) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #21
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !131
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %2) #19
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !56
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  br label %20

20:                                               ; preds = %18, %20
  %21 = load i32, ptr %2, align 4, !tbaa !29
  %22 = tail call fastcc ptr @expression_for_id(i32 noundef %21) #19
  %23 = load ptr, ptr %19, align 8, !tbaa !73
  %24 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %25, ptr noundef %22) #19
  %26 = load ptr, ptr %19, align 8, !tbaa !73
  %27 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !80
  tail call fastcc void @bitmap_value_replace_in_set(ptr noundef %28, ptr noundef %22) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !56
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %20, !llvm.loop !234

31:                                               ; preds = %20, %14, %8
  %32 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %0) #19, !range !56
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = tail call fastcc zeroext i8 @do_regular_insertion(ptr noundef nonnull %0, ptr noundef nonnull %6) #19, !range !56
  %36 = load i8, ptr @do_partial_partial, align 1, !tbaa !11
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i8 @do_partial_partial_insertion(ptr noundef nonnull %0, ptr noundef nonnull %6) #19, !range !56
  %40 = or i8 %39, %35
  br label %41

41:                                               ; preds = %34, %38, %31
  %42 = phi i8 [ 0, %31 ], [ %40, %38 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %43

43:                                               ; preds = %5, %41, %1
  %44 = phi i8 [ 0, %1 ], [ %42, %41 ], [ 0, %5 ]
  %45 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %43, %47
  %48 = phi ptr [ %52, %47 ], [ %45, %43 ]
  %49 = phi i8 [ %51, %47 ], [ %44, %43 ]
  %50 = tail call fastcc zeroext i8 @insert_aux(ptr noundef nonnull %48) #19, !range !56
  %51 = or i8 %50, %49
  %52 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %48) #20
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %47, !llvm.loop !235

54:                                               ; preds = %47, %43
  %55 = phi i8 [ %44, %43 ], [ %51, %47 ]
  ret i8 %55
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !157
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @do_regular_insertion(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %12) #19
  store ptr %13, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %14 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %4) #19, !range !26
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %174, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %18 = getelementptr inbounds i8, ptr %6, i64 8
  br label %19

19:                                               ; preds = %16, %169
  %20 = phi i8 [ 0, %16 ], [ %170, %169 ]
  %21 = phi i32 [ 0, %16 ], [ %171, %169 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !21
  %23 = load i32, ptr %22, align 8, !tbaa !6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %169, label %25

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %26 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %22) #19
  %27 = load ptr, ptr %9, align 8, !tbaa !73
  %28 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %29, i32 noundef %26) #19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %167

32:                                               ; preds = %25
  %33 = load ptr, ptr %17, align 8, !tbaa !73
  %34 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !80
  %36 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %35, i32 noundef %26) #19
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %32
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %167, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %167, label %45

45:                                               ; preds = %41
  %46 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 28, i64 1, ptr nonnull %39)
  br label %167

47:                                               ; preds = %32
  %48 = load ptr, ptr @cfun, align 8, !tbaa !21
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !72
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !113
  %53 = sext i32 %52 to i64
  %54 = tail call ptr @xcalloc(i64 noundef %53, i64 noundef 8) #20
  %55 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !116
  store ptr %55, ptr %18, align 8, !tbaa.struct !117
  %56 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %55, ptr noundef nonnull %5) #19, !range !56
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %165, label %58

58:                                               ; preds = %47, %99
  %59 = phi i8 [ %103, %99 ], [ 0, %47 ]
  %60 = phi i8 [ %102, %99 ], [ 1, %47 ]
  %61 = phi ptr [ %101, %99 ], [ null, %47 ]
  %62 = phi i8 [ %100, %99 ], [ 0, %47 ]
  %63 = load ptr, ptr %5, align 8, !tbaa !21
  %64 = getelementptr inbounds %struct.edge_def, ptr %63, i64 0, i32 7
  %65 = load i32, ptr %64, align 8, !tbaa !118
  %66 = and i32 %65, 16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3520, ptr noundef nonnull @.str.1) #20
  br label %69

69:                                               ; preds = %58, %68
  %70 = load ptr, ptr %63, align 8, !tbaa !155
  %71 = load ptr, ptr %9, align 8, !tbaa !73
  %72 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %71, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !121
  %74 = tail call fastcc ptr @phi_translate(ptr noundef nonnull %22, ptr noundef %73, ptr noundef null, ptr noundef %70, ptr noundef nonnull %0) #19
  %75 = icmp eq ptr %74, null
  br i1 %75, label %165, label %76

76:                                               ; preds = %69
  %77 = tail call fastcc ptr @fully_constant_expression(ptr noundef nonnull %74) #19
  %78 = tail call fastcc i32 @get_expr_value_id(ptr noundef %77) #19
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !73
  %81 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !80
  %83 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %82, i32 noundef %78, ptr noundef null) #19
  %84 = icmp eq ptr %83, null
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 9
  %86 = load i32, ptr %85, align 8, !tbaa !77
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %54, i64 %87
  br i1 %84, label %89, label %90

89:                                               ; preds = %76
  store ptr %77, ptr %88, align 8, !tbaa !21
  br label %99

90:                                               ; preds = %76
  store ptr %83, ptr %88, align 8, !tbaa !21
  %91 = tail call zeroext i8 @optimize_edge_for_speed_p(ptr noundef nonnull %63) #20
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, i8 %62, i8 1
  %94 = icmp eq ptr %61, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = tail call i32 @pre_expr_eq(ptr noundef nonnull %61, ptr noundef nonnull %83) #19
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i8 0, i8 %60
  br label %99

99:                                               ; preds = %90, %95, %89
  %100 = phi i8 [ %93, %95 ], [ %93, %90 ], [ %62, %89 ]
  %101 = phi ptr [ %61, %95 ], [ %83, %90 ], [ %61, %89 ]
  %102 = phi i8 [ %98, %95 ], [ %60, %90 ], [ 0, %89 ]
  %103 = phi i8 [ 1, %95 ], [ 1, %90 ], [ %59, %89 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %104 = load i32, ptr %6, align 8
  %105 = load ptr, ptr %18, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %5) #19, !range !56
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %58, !llvm.loop !236

108:                                              ; preds = %99
  %109 = icmp eq i8 %102, 0
  %110 = icmp ne i8 %103, 0
  %111 = select i1 %109, i1 %110, i1 false
  %112 = icmp ne i8 %100, 0
  %113 = select i1 %111, i1 %112, i1 false
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = tail call zeroext i8 @dbg_cnt(i32 noundef 25) #20
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %165, label %117

117:                                              ; preds = %114
  %118 = tail call fastcc i32 @get_expression_id(ptr noundef nonnull %22) #19
  %119 = tail call fastcc zeroext i8 @insert_into_preds_of_block(ptr noundef nonnull %0, i32 noundef %118, ptr noundef nonnull %54) #19, !range !56
  %120 = icmp eq i8 %119, 0
  %121 = select i1 %120, i8 %20, i8 1
  br label %165

122:                                              ; preds = %108
  %123 = icmp ne i8 %102, 0
  %124 = icmp ne ptr %77, null
  %125 = and i1 %123, %124
  br i1 %125, label %126, label %165

126:                                              ; preds = %122
  %127 = load i32, ptr %83, align 8, !tbaa !6
  switch i32 %127, label %165 [
    i32 3, label %128
    i32 0, label %128
  ]

128:                                              ; preds = %126, %126
  %129 = tail call zeroext i8 @value_id_constant_p(i32 noundef %26) #20
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %165

131:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #21
  %132 = load ptr, ptr @value_expressions, align 8
  %133 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %132, i32 noundef %26) #19
  %134 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %83) #19
  %135 = load ptr, ptr %133, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %135, ptr noundef nonnull %7) #19
  %136 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !56
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %164, label %138

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.pre_expr_d, ptr %83, i64 0, i32 2
  br label %140

140:                                              ; preds = %138, %161
  %141 = load i32, ptr %7, align 4, !tbaa !29
  %142 = tail call fastcc ptr @expression_for_id(i32 noundef %141) #19
  %143 = load i32, ptr %142, align 8, !tbaa !6
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %161

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.pre_expr_d, ptr %142, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !11
  %148 = tail call ptr @VN_INFO(ptr noundef %147) #20
  %149 = load i32, ptr %83, align 8, !tbaa !6
  %150 = icmp eq i32 %149, 3
  %151 = load ptr, ptr %139, align 8, !tbaa !11
  br i1 %150, label %152, label %155

152:                                              ; preds = %145
  %153 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !89
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 4), align 4, !tbaa !89
  br label %158

155:                                              ; preds = %145
  %156 = tail call ptr @VN_INFO(ptr noundef %151) #20
  %157 = load ptr, ptr %156, align 8, !tbaa !135
  br label %158

158:                                              ; preds = %155, %152
  %159 = phi ptr [ %151, %152 ], [ %157, %155 ]
  store ptr %159, ptr %148, align 8
  %160 = getelementptr inbounds %struct.vn_ssa_aux, ptr %148, i64 0, i32 2
  store i32 %134, ptr %160, align 8, !tbaa !12
  br label %161

161:                                              ; preds = %158, %140
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %7) #19
  %162 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %7) #19, !range !56
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %140, !llvm.loop !237

164:                                              ; preds = %161, %131
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  br label %165

165:                                              ; preds = %69, %47, %114, %117, %126, %122, %128, %164
  %166 = phi i8 [ %20, %128 ], [ %20, %164 ], [ %20, %122 ], [ %121, %117 ], [ %20, %126 ], [ %20, %114 ], [ %20, %47 ], [ %20, %69 ]
  tail call void @free(ptr noundef %54) #19
  br label %167

167:                                              ; preds = %38, %41, %45, %25, %165
  %168 = phi i8 [ %166, %165 ], [ %20, %25 ], [ %20, %45 ], [ %20, %41 ], [ %20, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %169

169:                                              ; preds = %167, %19
  %170 = phi i8 [ %168, %167 ], [ %20, %19 ]
  %171 = add nuw nsw i32 %21, 1
  %172 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %13, i32 noundef %171, ptr noundef nonnull %4) #19, !range !26
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %19, !llvm.loop !238

174:                                              ; preds = %169, %2
  %175 = phi i8 [ 0, %2 ], [ %170, %169 ]
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %175
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @do_partial_partial_insertion(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !122
  %11 = tail call fastcc ptr @sorted_array_from_bitmap_set(ptr noundef %10) #19
  store ptr %11, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %12 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %4) #19, !range !26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %100, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 2
  %16 = getelementptr inbounds i8, ptr %6, i64 8
  br label %17

17:                                               ; preds = %14, %95
  %18 = phi i8 [ 0, %14 ], [ %96, %95 ]
  %19 = phi i32 [ 0, %14 ], [ %97, %95 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !21
  %21 = load i32, ptr %20, align 8, !tbaa !6
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %95, label %23

23:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #21
  %24 = tail call fastcc i32 @get_expr_value_id(ptr noundef nonnull %20) #19
  %25 = load ptr, ptr %7, align 8, !tbaa !73
  %26 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  %28 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %27, i32 noundef %24) #19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %93

30:                                               ; preds = %23
  %31 = load ptr, ptr %15, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !80
  %34 = tail call fastcc zeroext i8 @bitmap_set_contains_value(ptr noundef %33, i32 noundef %24) #19
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %93

36:                                               ; preds = %30
  %37 = load ptr, ptr @cfun, align 8, !tbaa !21
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !113
  %42 = sext i32 %41 to i64
  %43 = tail call ptr @xcalloc(i64 noundef %42, i64 noundef 8) #20
  %44 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !116
  store ptr %44, ptr %16, align 8, !tbaa.struct !117
  %45 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %44, ptr noundef nonnull %5) #19, !range !56
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %81, label %47

47:                                               ; preds = %36, %72
  %48 = load ptr, ptr %5, align 8, !tbaa !21
  %49 = getelementptr inbounds %struct.edge_def, ptr %48, i64 0, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !118
  %51 = and i32 %50, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3659, ptr noundef nonnull @.str.1) #20
  br label %54

54:                                               ; preds = %47, %53
  %55 = load ptr, ptr %48, align 8, !tbaa !155
  %56 = load ptr, ptr %7, align 8, !tbaa !73
  %57 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %56, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !121
  %59 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %56, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !122
  %61 = tail call fastcc ptr @phi_translate(ptr noundef nonnull %20, ptr noundef %58, ptr noundef %60, ptr noundef %55, ptr noundef nonnull %0) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %91, label %63

63:                                               ; preds = %54
  %64 = tail call fastcc ptr @fully_constant_expression(ptr noundef nonnull %61) #19
  %65 = tail call fastcc i32 @get_expr_value_id(ptr noundef %64) #19
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !73
  %68 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !80
  %70 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %69, i32 noundef %65, ptr noundef null) #19
  %71 = icmp eq ptr %70, null
  br i1 %71, label %91, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !77
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds ptr, ptr %43, i64 %75
  store ptr %70, ptr %76, align 8, !tbaa !21
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %77 = load i32, ptr %6, align 8
  %78 = load ptr, ptr %16, align 8
  %79 = call fastcc zeroext i8 @ei_cond(i32 %77, ptr %78, ptr noundef nonnull %5) #19, !range !56
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %47, !llvm.loop !239

81:                                               ; preds = %72, %36
  %82 = tail call zeroext i8 @dbg_cnt(i32 noundef 25) #20
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !86
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 2), align 4, !tbaa !86
  %87 = tail call fastcc i32 @get_expression_id(ptr noundef nonnull %20) #19
  %88 = tail call fastcc zeroext i8 @insert_into_preds_of_block(ptr noundef nonnull %0, i32 noundef %87, ptr noundef %43) #19, !range !56
  %89 = icmp eq i8 %88, 0
  %90 = select i1 %89, i8 %18, i8 1
  br label %91

91:                                               ; preds = %63, %54, %84, %81
  %92 = phi i8 [ %18, %81 ], [ %90, %84 ], [ %18, %54 ], [ %18, %63 ]
  tail call void @free(ptr noundef %43) #19
  br label %93

93:                                               ; preds = %30, %23, %91
  %94 = phi i8 [ %92, %91 ], [ %18, %23 ], [ %18, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %95

95:                                               ; preds = %93, %17
  %96 = phi i8 [ %94, %93 ], [ %18, %17 ]
  %97 = add nuw nsw i32 %19, 1
  %98 = call fastcc i32 @VEC_pre_expr_base_iterate(ptr noundef %11, i32 noundef %97, ptr noundef nonnull %4) #19, !range !26
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %17, !llvm.loop !240

100:                                              ; preds = %95, %2
  %101 = phi i8 [ 0, %2 ], [ %96, %95 ]
  call fastcc void @VEC_pre_expr_heap_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %101
}

; Function Attrs: optsize
declare zeroext i8 @optimize_edge_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @insert_into_preds_of_block(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = tail call fastcc ptr @expression_for_id(i32 noundef %1) #19
  %10 = tail call fastcc i32 @get_expr_value_id(ptr noundef %9) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #21
  %11 = tail call fastcc ptr @get_expr_type(ptr noundef %9) #19
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 40, i64 1, ptr nonnull %12)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !21
  tail call fastcc void @print_pre_expr(ptr noundef %20, ptr noundef %9) #19
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.49, i32 noundef %10) #19
  br label %23

23:                                               ; preds = %18, %14, %3
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !241
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8, !tbaa !157
  %29 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %28) #19
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !242
  %34 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %28, i32 noundef 0) #19
  %35 = load ptr, ptr %34, align 8, !tbaa !155
  %36 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %33, ptr noundef %35) #20
  %37 = load ptr, ptr %32, align 8, !tbaa !242
  %38 = load ptr, ptr %0, align 8, !tbaa !157
  %39 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %38, i32 noundef 1) #19
  %40 = load ptr, ptr %39, align 8, !tbaa !155
  %41 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %37, ptr noundef %40) #20
  %42 = icmp eq i8 %36, %41
  br i1 %42, label %58, label %43

43:                                               ; preds = %31
  %44 = load i32, ptr %9, align 8, !tbaa !6
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = tail call fastcc zeroext i8 @inhibit_phi_insertion(ptr noundef nonnull %0, ptr noundef nonnull %9) #19
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %46, %43
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 83, i64 1, ptr nonnull %50)
  br label %58

58:                                               ; preds = %31, %46, %56, %52, %49, %27, %23
  %59 = phi i1 [ false, %27 ], [ false, %23 ], [ false, %46 ], [ false, %31 ], [ true, %56 ], [ true, %52 ], [ true, %49 ]
  %60 = phi i1 [ true, %27 ], [ true, %23 ], [ true, %46 ], [ true, %31 ], [ false, %56 ], [ false, %52 ], [ false, %49 ]
  %61 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #19
  store i32 0, ptr %5, align 8, !tbaa.struct !116
  %62 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %61, ptr %62, align 8, !tbaa.struct !117
  %63 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %61, ptr noundef nonnull %4) #19, !range !56
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %167, label %65

65:                                               ; preds = %58, %158
  %66 = phi i8 [ %159, %158 ], [ 0, %58 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !21
  %67 = load ptr, ptr %4, align 8, !tbaa !21
  %68 = load ptr, ptr %67, align 8, !tbaa !155
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %70 = load i32, ptr %69, align 8, !tbaa !77
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %2, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !21
  %74 = load i32, ptr %73, align 8, !tbaa !6
  switch i32 %74, label %75 [
    i32 3, label %84
    i32 0, label %119
  ]

75:                                               ; preds = %65
  %76 = call fastcc ptr @create_expression_by_pieces(ptr noundef nonnull %68, ptr noundef nonnull %73, ptr noundef nonnull %6, ptr noundef null, ptr noundef %11) #19
  %77 = getelementptr inbounds %struct.edge_def, ptr %67, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !118
  %79 = and i32 %78, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3302, ptr noundef nonnull @.str.1) #20
  br label %82

82:                                               ; preds = %75, %81
  %83 = load ptr, ptr %6, align 8, !tbaa !21
  call void @gsi_insert_seq_on_edge(ptr noundef nonnull %67, ptr noundef %83) #20
  br label %151

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.pre_expr_d, ptr %73, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !11
  %87 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !11
  %89 = call zeroext i8 @useless_type_conversion_p(ptr noundef %11, ptr noundef %88) #20
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %158

91:                                               ; preds = %84
  %92 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef nonnull %86) #20
  %93 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %92) #20
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %158

95:                                               ; preds = %91
  %96 = call ptr @force_gimple_operand(ptr noundef %92, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef null) #20
  %97 = call zeroext i8 @is_gimple_min_invariant(ptr noundef %96) #20
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %158

99:                                               ; preds = %95
  %100 = icmp eq ptr %96, %92
  br i1 %100, label %107, label %101

101:                                              ; preds = %99
  %102 = load ptr, ptr %85, align 8, !tbaa !11
  %103 = call ptr @VN_INFO_GET(ptr noundef %96) #20
  store ptr %102, ptr %103, align 8, !tbaa !135
  %104 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %73) #19
  %105 = call ptr @VN_INFO(ptr noundef %96) #20
  %106 = getelementptr inbounds %struct.vn_ssa_aux, ptr %105, i64 0, i32 2
  store i32 %104, ptr %106, align 8, !tbaa !12
  br label %107

107:                                              ; preds = %101, %99
  %108 = load ptr, ptr %6, align 8, !tbaa !21
  %109 = icmp eq ptr %108, null
  br i1 %109, label %151, label %110

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %108) #19
  %111 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !56
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110, %113
  %114 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %114) #19
  call fastcc void @gimple_set_plf(ptr noundef %114, i8 noundef zeroext 0) #19
  call fastcc void @gsi_next(ptr noundef nonnull %7) #19
  %115 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !56
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %113, label %117, !llvm.loop !243

117:                                              ; preds = %113, %110
  %118 = load ptr, ptr %6, align 8, !tbaa !21
  call void @gsi_insert_seq_on_edge(ptr noundef nonnull %67, ptr noundef %118) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  br label %151

119:                                              ; preds = %65
  %120 = getelementptr inbounds %struct.pre_expr_d, ptr %73, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !11
  %122 = getelementptr inbounds %struct.tree_common, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !11
  %124 = call zeroext i8 @useless_type_conversion_p(ptr noundef %11, ptr noundef %123) #20
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %158

126:                                              ; preds = %119
  %127 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %11, ptr noundef nonnull %121) #20
  %128 = call ptr @force_gimple_operand(ptr noundef %127, ptr noundef nonnull %6, i8 noundef zeroext 1, ptr noundef null) #20
  %129 = icmp eq ptr %128, %121
  br i1 %129, label %139, label %130

130:                                              ; preds = %126
  %131 = call ptr @VN_INFO(ptr noundef nonnull %121) #20
  %132 = load ptr, ptr %131, align 8, !tbaa !135
  %133 = call ptr @VN_INFO_GET(ptr noundef %128) #20
  store ptr %132, ptr %133, align 8, !tbaa !135
  %134 = call ptr @VN_INFO(ptr noundef nonnull %121) #20
  %135 = getelementptr inbounds %struct.vn_ssa_aux, ptr %134, i64 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !12
  %137 = call ptr @VN_INFO(ptr noundef %128) #20
  %138 = getelementptr inbounds %struct.vn_ssa_aux, ptr %137, i64 0, i32 2
  store i32 %136, ptr %138, align 8, !tbaa !12
  br label %139

139:                                              ; preds = %130, %126
  %140 = load ptr, ptr %6, align 8, !tbaa !21
  %141 = icmp eq ptr %140, null
  br i1 %141, label %151, label %142

142:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #21
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef nonnull %140) #19
  %143 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #19, !range !56
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142, %145
  %146 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #19
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %146) #19
  call fastcc void @gimple_set_plf(ptr noundef %146, i8 noundef zeroext 0) #19
  call fastcc void @gsi_next(ptr noundef nonnull %8) #19
  %147 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #19, !range !56
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %145, label %149, !llvm.loop !244

149:                                              ; preds = %145, %142
  %150 = load ptr, ptr %6, align 8, !tbaa !21
  call void @gsi_insert_seq_on_edge(ptr noundef nonnull %67, ptr noundef %150) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #21
  br label %151

151:                                              ; preds = %139, %149, %107, %117, %82
  %152 = phi ptr [ %76, %82 ], [ %96, %117 ], [ %96, %107 ], [ %128, %149 ], [ %128, %139 ]
  %153 = phi i8 [ 1, %82 ], [ %66, %117 ], [ %66, %107 ], [ %66, %149 ], [ %66, %139 ]
  %154 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %152) #19
  %155 = load i32, ptr %69, align 8, !tbaa !77
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds ptr, ptr %2, i64 %156
  store ptr %154, ptr %157, align 8, !tbaa !21
  br label %158

158:                                              ; preds = %151, %119, %84, %95, %91
  %159 = phi i8 [ %66, %91 ], [ %66, %95 ], [ %66, %84 ], [ %66, %119 ], [ %153, %151 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %160 = load i32, ptr %5, align 8
  %161 = load ptr, ptr %62, align 8
  %162 = call fastcc zeroext i8 @ei_cond(i32 %160, ptr %161, ptr noundef nonnull %4) #19, !range !56
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %65, !llvm.loop !245

164:                                              ; preds = %158
  %165 = icmp ne i8 %159, 0
  %166 = select i1 %59, i1 %165, i1 false
  br i1 %166, label %268, label %167

167:                                              ; preds = %58, %164
  %168 = phi i1 [ %165, %164 ], [ false, %58 ]
  %169 = select i1 %60, i1 true, i1 %168
  br i1 %169, label %170, label %268

170:                                              ; preds = %167
  %171 = load ptr, ptr @prephitemp, align 8, !tbaa !21
  %172 = icmp eq ptr %171, null
  br i1 %172, label %177, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds %struct.tree_common, ptr %171, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !11
  %176 = icmp eq ptr %175, %11
  br i1 %176, label %180, label %177

177:                                              ; preds = %173, %170
  %178 = call ptr @create_tmp_var(ptr noundef %11, ptr noundef nonnull @.str.51) #20
  store ptr %178, ptr @prephitemp, align 8, !tbaa !21
  call fastcc void @get_var_ann(ptr noundef %178) #19
  %179 = load ptr, ptr @prephitemp, align 8, !tbaa !21
  br label %180

180:                                              ; preds = %177, %173
  %181 = phi ptr [ %179, %177 ], [ %171, %173 ]
  %182 = call zeroext i8 @add_referenced_var(ptr noundef %181) #20
  %183 = load i64, ptr %11, align 8
  %184 = trunc i64 %183 to i32
  %185 = and i32 %184, 65535
  %186 = add nsw i32 %185, -13
  %187 = icmp ult i32 %186, 2
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = getelementptr inbounds %struct.tree_decl_common, ptr %181, i64 0, i32 2
  %190 = load i64, ptr %189, align 8
  %191 = or i64 %190, 134217728
  store i64 %191, ptr %189, align 8
  br label %192

192:                                              ; preds = %180, %188
  %193 = call ptr @create_phi_node(ptr noundef %181, ptr noundef %0) #20
  call fastcc void @gimple_set_plf(ptr noundef %193, i8 noundef zeroext 0) #19
  %194 = call fastcc ptr @gimple_phi_result(ptr noundef %193) #19
  %195 = call ptr @VN_INFO_GET(ptr noundef %194) #20
  store ptr %194, ptr %195, align 8, !tbaa !135
  %196 = call fastcc ptr @gimple_phi_result(ptr noundef %193) #19
  %197 = call ptr @VN_INFO(ptr noundef %196) #20
  %198 = getelementptr inbounds %struct.vn_ssa_aux, ptr %197, i64 0, i32 2
  store i32 %10, ptr %198, align 8, !tbaa !12
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %193) #19
  %199 = load ptr, ptr @inserted_phi_names, align 8, !tbaa !21
  %200 = call fastcc ptr @gimple_phi_result(ptr noundef %193) #19
  %201 = getelementptr inbounds %struct.tree_ssa_name, ptr %200, i64 0, i32 3
  %202 = load i32, ptr %201, align 8, !tbaa !11
  %203 = call zeroext i8 @bitmap_set_bit(ptr noundef %199, i32 noundef %202) #20
  store i32 0, ptr %5, align 8, !tbaa.struct !116
  store ptr %61, ptr %62, align 8, !tbaa.struct !117
  %204 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %61, ptr noundef nonnull %4) #19, !range !56
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %239, label %206

206:                                              ; preds = %192, %231
  %207 = load ptr, ptr %4, align 8, !tbaa !21
  %208 = load ptr, ptr %207, align 8, !tbaa !155
  %209 = getelementptr inbounds %struct.basic_block_def, ptr %208, i64 0, i32 9
  %210 = load i32, ptr %209, align 8, !tbaa !77
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds ptr, ptr %2, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !21
  %214 = call fastcc ptr @get_expr_type(ptr noundef %213) #19
  %215 = icmp eq ptr %214, %11
  br i1 %215, label %221, label %216

216:                                              ; preds = %206
  %217 = call fastcc ptr @get_expr_type(ptr noundef %213) #19
  %218 = call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %11, ptr noundef %217) #20
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3417, ptr noundef nonnull @.str.1) #20
  br label %221

221:                                              ; preds = %206, %216, %220
  %222 = load i32, ptr %213, align 8, !tbaa !6
  %223 = icmp eq i32 %222, 3
  br i1 %223, label %231, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %207, align 8, !tbaa !155
  %226 = getelementptr inbounds %struct.basic_block_def, ptr %225, i64 0, i32 9
  %227 = load i32, ptr %226, align 8, !tbaa !77
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds ptr, ptr %2, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !21
  br label %231

231:                                              ; preds = %221, %224
  %232 = phi ptr [ %230, %224 ], [ %213, %221 ]
  %233 = getelementptr inbounds %struct.pre_expr_d, ptr %232, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !11
  call void @add_phi_arg(ptr noundef %193, ptr noundef %234, ptr noundef nonnull %207, i32 noundef 0) #20
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %235 = load i32, ptr %5, align 8
  %236 = load ptr, ptr %62, align 8
  %237 = call fastcc zeroext i8 @ei_cond(i32 %235, ptr %236, ptr noundef nonnull %4) #19, !range !56
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %239, label %206, !llvm.loop !246

239:                                              ; preds = %231, %192
  %240 = call fastcc ptr @gimple_phi_result(ptr noundef %193) #19
  %241 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %240) #19
  call void @add_to_value(i32 noundef %10, ptr noundef %241) #19
  %242 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !73
  %244 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %243, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !78
  call fastcc void @bitmap_insert_into_set(ptr noundef %245, ptr noundef %241) #19
  %246 = load ptr, ptr %242, align 8, !tbaa !73
  %247 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %246, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !80
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %248, ptr noundef %241) #19
  %249 = load ptr, ptr %242, align 8, !tbaa !73
  %250 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %249, i64 0, i32 6
  %251 = load ptr, ptr %250, align 8, !tbaa !131
  call fastcc void @bitmap_insert_into_set(ptr noundef %251, ptr noundef %241) #19
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %253 = icmp eq ptr %252, null
  br i1 %253, label %265, label %254

254:                                              ; preds = %239
  %255 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %256 = and i32 %255, 8
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %265, label %258

258:                                              ; preds = %254
  %259 = call i64 @fwrite(ptr nonnull @.str.52, i64 12, i64 1, ptr nonnull %252)
  %260 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_gimple_stmt(ptr noundef %260, ptr noundef %193, i32 noundef 0, i32 noundef 0) #20
  %261 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %262 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %263 = load i32, ptr %262, align 8, !tbaa !77
  %264 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %261, ptr noundef nonnull @.str.53, i32 noundef %263) #19
  br label %265

265:                                              ; preds = %258, %254, %239
  %266 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !87
  %267 = add nsw i32 %266, 1
  store i32 %267, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 3), align 4, !tbaa !87
  br label %268

268:                                              ; preds = %167, %164, %265
  %269 = phi i8 [ 1, %265 ], [ 1, %164 ], [ 0, %167 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret i8 %269
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @inhibit_phi_insertion(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.affine_iv, align 8
  %5 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.vn_reference_s, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %9 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !29
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %2
  %12 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %3) #19, !range !26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %50, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  br label %16

16:                                               ; preds = %14, %46
  %17 = phi i32 [ 0, %14 ], [ %47, %46 ]
  %18 = load ptr, ptr %3, align 8, !tbaa !21
  %19 = load i32, ptr %18, align 8, !tbaa !47
  switch i32 %19, label %46 [
    i32 45, label %23
    i32 46, label %23
    i32 141, label %20
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  br label %29

23:                                               ; preds = %16, %16
  %24 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 141
  br i1 %28, label %29, label %46

29:                                               ; preds = %20, %23
  %30 = phi ptr [ %22, %20 ], [ %25, %23 ]
  %31 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %18, i64 0, i32 2
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = call fastcc ptr @gimple_bb(ptr noundef %33) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %15, align 8, !tbaa !242
  %38 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %37, ptr noundef nonnull %34) #20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %15, align 8, !tbaa !242
  %42 = load ptr, ptr %31, align 8, !tbaa !49
  %43 = call zeroext i8 @simple_iv(ptr noundef %41, ptr noundef %41, ptr noundef %42, ptr noundef nonnull %4, i8 noundef zeroext 1) #20
  %44 = icmp eq i8 %43, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  br i1 %44, label %46, label %50

45:                                               ; preds = %36, %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  br label %46

46:                                               ; preds = %45, %40, %23, %16
  %47 = add i32 %17, 1
  %48 = call fastcc i32 @VEC_vn_reference_op_s_base_iterate(ptr noundef %8, i32 noundef %47, ptr noundef nonnull %3) #19, !range !26
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %16, !llvm.loop !247

50:                                               ; preds = %40, %46, %11, %2
  %51 = phi i8 [ 0, %2 ], [ 0, %11 ], [ 1, %40 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_expression_by_pieces(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #21
  %8 = icmp eq ptr %4, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @get_expr_type(ptr noundef %1) #19
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ %4, %5 ]
  %13 = load i32, ptr %1, align 8, !tbaa !6
  switch i32 %13, label %190 [
    i32 0, label %14
    i32 3, label %17
    i32 2, label %20
    i32 1, label %24
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  br label %84

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  br label %84

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = tail call fastcc ptr @create_component_ref_by_pieces(ptr noundef %0, ptr noundef %22, ptr noundef %2, ptr noundef %3) #19
  br label %84

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.pre_expr_d, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = trunc i32 %29 to i16
  switch i16 %30, label %190 [
    i16 2, label %31
    i16 1, label %68
  ]

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !21
  %34 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %33) #19
  %35 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !21
  %37 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %36) #19
  %38 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %34, ptr noundef %2, ptr noundef %3) #19
  %39 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %37, ptr noundef %2, ptr noundef %3) #19
  %40 = icmp ne ptr %38, null
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %190

43:                                               ; preds = %31
  %44 = load i32, ptr %27, align 4
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 66
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !207
  %50 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %49, ptr noundef nonnull %38) #20
  br label %58

51:                                               ; preds = %43
  %52 = load ptr, ptr %32, align 8, !tbaa !21
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef nonnull %38) #20
  %56 = load ptr, ptr %35, align 8, !tbaa !21
  %57 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  br label %58

58:                                               ; preds = %47, %51
  %59 = phi ptr [ @sizetype_tab, %47 ], [ %57, %51 ]
  %60 = phi ptr [ %50, %47 ], [ %55, %51 ]
  %61 = load ptr, ptr %59, align 8, !tbaa !11
  %62 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %61, ptr noundef nonnull %39) #20
  %63 = load i32, ptr %27, align 4
  %64 = and i32 %63, 65535
  %65 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !207
  %67 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %64, ptr noundef %66, ptr noundef %60, ptr noundef %62) #20
  br label %84

68:                                               ; preds = %24
  %69 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !21
  %71 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %70) #19
  %72 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %71, ptr noundef %2, ptr noundef %3) #19
  %73 = icmp eq ptr %72, null
  br i1 %73, label %190, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr %69, align 8, !tbaa !21
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !11
  %78 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %77, ptr noundef nonnull %72) #20
  %79 = load i32, ptr %27, align 4
  %80 = and i32 %79, 65535
  %81 = getelementptr inbounds %struct.vn_nary_op_s, ptr %26, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !207
  %83 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %80, ptr noundef %82, ptr noundef %78) #20
  br label %84

84:                                               ; preds = %74, %58, %20, %17, %14
  %85 = phi ptr [ %23, %20 ], [ %19, %17 ], [ %16, %14 ], [ %83, %74 ], [ %67, %58 ]
  %86 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !11
  %88 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %12, ptr noundef %87) #20
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %12, ptr noundef nonnull %85) #20
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi ptr [ %85, %84 ], [ %91, %90 ]
  %94 = tail call ptr @unshare_expr(ptr noundef %93) #20
  %95 = call ptr @force_gimple_operand(ptr noundef %94, ptr noundef nonnull %6, i8 noundef zeroext 0, ptr noundef null) #20
  %96 = load ptr, ptr %6, align 8, !tbaa !21
  %97 = icmp eq ptr %96, null
  br i1 %97, label %133, label %98

98:                                               ; preds = %92
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef nonnull %96) #19
  %99 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !56
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  br label %103

103:                                              ; preds = %101, %128
  %104 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19
  %105 = call ptr @gimple_get_lhs(ptr noundef %104) #20
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %104) #19
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 141
  br i1 %108, label %109, label %128

109:                                              ; preds = %103
  %110 = call ptr @VN_INFO_GET(ptr noundef nonnull %105) #20
  store ptr %105, ptr %110, align 8, !tbaa !135
  %111 = call i32 @get_next_value_id() #20
  %112 = call ptr @VN_INFO(ptr noundef nonnull %105) #20
  %113 = getelementptr inbounds %struct.vn_ssa_aux, ptr %112, i64 0, i32 2
  store i32 %111, ptr %113, align 8, !tbaa !12
  %114 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef nonnull %105) #19
  %115 = call ptr @VN_INFO(ptr noundef nonnull %105) #20
  %116 = getelementptr inbounds %struct.vn_ssa_aux, ptr %115, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !12
  call void @add_to_value(i32 noundef %117, ptr noundef %114) #19
  %118 = load i8, ptr @in_fre, align 1, !tbaa !11
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %109
  %121 = load ptr, ptr %102, align 8, !tbaa !73
  %122 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %121, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !131
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %123, ptr noundef %114) #19
  br label %124

124:                                              ; preds = %120, %109
  %125 = load ptr, ptr %102, align 8, !tbaa !73
  %126 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %125, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !80
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %127, ptr noundef %114) #19
  br label %128

128:                                              ; preds = %124, %103
  call void @mark_symbols_for_renaming(ptr noundef %104) #20
  call fastcc void @gsi_next(ptr noundef nonnull %7) #19
  %129 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !56
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %103, label %131, !llvm.loop !248

131:                                              ; preds = %128, %98
  %132 = load ptr, ptr %6, align 8, !tbaa !21
  call void @gimple_seq_add_seq(ptr noundef %2, ptr noundef %132) #20
  br label %133

133:                                              ; preds = %131, %92
  %134 = load ptr, ptr @pretemp, align 8, !tbaa !21
  %135 = icmp eq ptr %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !11
  %139 = icmp eq ptr %12, %138
  br i1 %139, label %143, label %140

140:                                              ; preds = %136, %133
  %141 = call ptr @create_tmp_var(ptr noundef %12, ptr noundef nonnull @.str.41) #20
  store ptr %141, ptr @pretemp, align 8, !tbaa !21
  call fastcc void @get_var_ann(ptr noundef %141) #19
  %142 = load ptr, ptr @pretemp, align 8, !tbaa !21
  br label %143

143:                                              ; preds = %140, %136
  %144 = phi ptr [ %142, %140 ], [ %134, %136 ]
  %145 = call zeroext i8 @add_referenced_var(ptr noundef %144) #20
  %146 = load i64, ptr %12, align 8
  %147 = trunc i64 %146 to i32
  %148 = and i32 %147, 65535
  %149 = add nsw i32 %148, -13
  %150 = icmp ult i32 %149, 2
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.tree_decl_common, ptr %144, i64 0, i32 2
  %153 = load i64, ptr %152, align 8
  %154 = or i64 %153, 134217728
  store i64 %154, ptr %152, align 8
  br label %155

155:                                              ; preds = %143, %151
  %156 = call ptr @gimple_build_assign_stat(ptr noundef %144, ptr noundef %95) #20
  %157 = call fastcc ptr @make_ssa_name(ptr noundef %144, ptr noundef %156) #19
  call fastcc void @gimple_assign_set_lhs(ptr noundef %156, ptr noundef %157) #19
  call fastcc void @gimple_set_plf(ptr noundef %156, i8 noundef zeroext 0) #19
  call void @gimple_seq_add_stmt(ptr noundef %2, ptr noundef %156) #20
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull @inserted_exprs, ptr noundef %156) #19
  call void @mark_symbols_for_renaming(ptr noundef %156) #20
  %158 = call ptr @VN_INFO_GET(ptr noundef %157) #20
  store ptr %157, ptr %158, align 8, !tbaa !135
  %159 = call fastcc i32 @get_expr_value_id(ptr noundef nonnull %1) #19
  %160 = call ptr @VN_INFO(ptr noundef %157) #20
  %161 = getelementptr inbounds %struct.vn_ssa_aux, ptr %160, i64 0, i32 2
  store i32 %159, ptr %161, align 8, !tbaa !12
  %162 = call fastcc ptr @get_or_alloc_expr_for_name(ptr noundef %157) #19
  call void @add_to_value(i32 noundef %159, ptr noundef %162) #19
  %163 = load i8, ptr @in_fre, align 1, !tbaa !11
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !73
  %168 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %167, i64 0, i32 6
  %169 = load ptr, ptr %168, align 8, !tbaa !131
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %169, ptr noundef %162) #19
  br label %170

170:                                              ; preds = %165, %155
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !73
  %173 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %172, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !80
  call fastcc void @bitmap_value_replace_in_set(ptr noundef %174, ptr noundef %162) #19
  %175 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !84
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr getelementptr inbounds (%struct.anon, ptr @pre_stats, i64 0, i32 1), align 4, !tbaa !84
  %177 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %178 = icmp eq ptr %177, null
  br i1 %178, label %190, label %179

179:                                              ; preds = %170
  %180 = load i32, ptr @dump_flags, align 4, !tbaa !29
  %181 = and i32 %180, 8
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %179
  %184 = call i64 @fwrite(ptr nonnull @.str.54, i64 9, i64 1, ptr nonnull %177)
  %185 = load ptr, ptr @dump_file, align 8, !tbaa !21
  call void @print_gimple_stmt(ptr noundef %185, ptr noundef %156, i32 noundef 0, i32 noundef 0) #20
  %186 = load ptr, ptr @dump_file, align 8, !tbaa !21
  %187 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %188 = load i32, ptr %187, align 8, !tbaa !77
  %189 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef nonnull @.str.55, i32 noundef %188) #19
  br label %190

190:                                              ; preds = %68, %31, %24, %170, %179, %183, %11
  %191 = phi ptr [ null, %11 ], [ %157, %183 ], [ %157, %179 ], [ %157, %170 ], [ null, %24 ], [ null, %31 ], [ null, %68 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  ret ptr %191
}

; Function Attrs: optsize
declare void @gsi_insert_seq_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #19
  store ptr %3, ptr %0, align 8, !tbaa !170
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !176
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !173
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #19
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !177
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_component_ref_by_pieces(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store i32 0, ptr %5, align 4, !tbaa !29
  %6 = call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_or_generate_expression(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.bb_bitmap_sets, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  %12 = tail call fastcc ptr @bitmap_find_leader(ptr noundef %10, i32 noundef %11, ptr noundef %3) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load i32, ptr %12, align 8, !tbaa !6
  switch i32 %15, label %19 [
    i32 0, label %16
    i32 3, label %16
  ]

16:                                               ; preds = %14, %14
  %17 = getelementptr inbounds %struct.pre_expr_d, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %16, %14, %4
  %20 = phi ptr [ null, %4 ], [ null, %14 ], [ %18, %16 ]
  %21 = icmp ne ptr %20, null
  %22 = load i8, ptr @in_fre, align 1
  %23 = icmp ne i8 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %49, label %25

25:                                               ; preds = %19
  %26 = tail call fastcc i32 @get_expr_value_id(ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  %27 = load ptr, ptr @value_expressions, align 8
  %28 = tail call fastcc ptr @VEC_bitmap_set_t_base_index(ptr noundef %27, i32 noundef %26) #19
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %29, ptr noundef nonnull %6) #19
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !range !56
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %25, %37
  %33 = load i32, ptr %6, align 4, !tbaa !29
  %34 = tail call fastcc ptr @expression_for_id(i32 noundef %33) #19
  %35 = load i32, ptr %34, align 8, !tbaa !6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %6) #19
  %38 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %6) #19, !range !56
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %32, !llvm.loop !249

40:                                               ; preds = %37, %25
  %41 = icmp eq ptr %3, null
  br i1 %41, label %45, label %48

42:                                               ; preds = %32
  %43 = tail call fastcc ptr @get_expr_type(ptr noundef %1) #19
  %44 = tail call fastcc ptr @create_expression_by_pieces(ptr noundef %0, ptr noundef nonnull %34, ptr noundef %2, ptr noundef %3, ptr noundef %43) #19
  br label %46

45:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2986, ptr noundef nonnull @.str.1) #20
  br label %46

46:                                               ; preds = %42, %45
  %47 = phi ptr [ null, %45 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %49

48:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  br label %49

49:                                               ; preds = %46, %19, %48
  %50 = phi ptr [ null, %48 ], [ %20, %19 ], [ %47, %46 ]
  ret ptr %50
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_component_ref_by_pieces_1(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.vn_reference_s, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = load i32, ptr %2, align 4, !tbaa !29
  %9 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %7, i32 noundef %8) #19
  %10 = add i32 %8, 1
  store i32 %10, ptr %2, align 4, !tbaa !29
  %11 = load i32, ptr %9, align 8, !tbaa !47
  switch i32 %11, label %209 [
    i32 59, label %12
    i32 152, label %55
    i32 121, label %87
    i32 43, label %97
    i32 44, label %97
    i32 118, label %97
    i32 48, label %105
    i32 49, label %105
    i32 47, label %105
    i32 42, label %122
    i32 46, label %141
    i32 45, label %141
    i32 41, label %183
    i32 141, label %201
    i32 28, label %206
    i32 23, label %206
    i32 26, label %206
    i32 27, label %206
    i32 24, label %206
    i32 51, label %206
    i32 32, label %206
    i32 34, label %206
    i32 33, label %206
    i32 36, label %206
    i32 29, label %206
  ]

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %7) #19
  %16 = add i32 %15, -1
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = tail call ptr @xmalloc(i64 noundef %18) #20
  %20 = load i32, ptr %2, align 4, !tbaa !29
  %21 = load ptr, ptr %6, align 8, !tbaa !46
  %22 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %21) #19
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %12, %24
  %25 = phi i32 [ %29, %24 ], [ 0, %12 ]
  %26 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds ptr, ptr %19, i64 %27
  store ptr %26, ptr %28, align 8, !tbaa !21
  %29 = add i32 %25, 1
  %30 = load i32, ptr %2, align 4, !tbaa !29
  %31 = load ptr, ptr %6, align 8, !tbaa !46
  %32 = tail call fastcc i32 @VEC_vn_reference_op_s_base_length(ptr noundef %31) #19
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %24, label %34, !llvm.loop !250

34:                                               ; preds = %24, %12
  %35 = phi i32 [ 0, %12 ], [ %29, %24 ]
  %36 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !208
  %38 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 29
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %39) #20
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %44, %43 ], [ %39, %34 ]
  %47 = tail call ptr @build_call_array_loc(i32 noundef 0, ptr noundef %37, ptr noundef %46, i32 noundef %35, ptr noundef %19) #20
  tail call void @free(ptr noundef %19) #19
  %48 = icmp eq ptr %14, null
  br i1 %48, label %210, label %49

49:                                               ; preds = %45
  %50 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %14) #19
  %51 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %50, ptr noundef %3, ptr noundef %4) #19
  %52 = icmp eq ptr %51, null
  br i1 %52, label %210, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1, i32 0, i32 1
  store ptr %51, ptr %54, align 8, !tbaa !11
  br label %210

55:                                               ; preds = %5
  %56 = tail call fastcc ptr @VEC_vn_reference_op_s_base_index(ptr noundef %7, i32 noundef %10) #19
  %57 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %58 = icmp eq ptr %57, null
  br i1 %58, label %210, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !49
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %61) #19
  %65 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %64, ptr noundef %3, ptr noundef %4) #19
  %66 = icmp eq ptr %65, null
  br i1 %66, label %210, label %67

67:                                               ; preds = %63, %59
  %68 = phi ptr [ %65, %63 ], [ null, %59 ]
  %69 = load i64, ptr %57, align 8
  %70 = and i64 %69, 65535
  %71 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !29
  %73 = icmp eq i32 %72, 3
  %74 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !208
  %76 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !50
  %78 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !51
  %80 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %56, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !50
  %82 = tail call ptr @unshare_expr(ptr noundef %81) #20
  br i1 %73, label %83, label %85

83:                                               ; preds = %67
  %84 = tail call ptr @build6_stat(i32 noundef 152, ptr noundef %75, ptr noundef nonnull %57, ptr noundef null, ptr noundef %68, ptr noundef %77, ptr noundef %79, ptr noundef %82) #20
  br label %210

85:                                               ; preds = %67
  %86 = tail call ptr @build6_stat(i32 noundef 152, ptr noundef %75, ptr noundef null, ptr noundef nonnull %57, ptr noundef %68, ptr noundef %77, ptr noundef %79, ptr noundef %82) #20
  br label %210

87:                                               ; preds = %5
  %88 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !49
  %90 = icmp eq ptr %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %89) #20
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2751, ptr noundef nonnull @.str.1) #20
  br label %95

95:                                               ; preds = %91, %94
  %96 = load ptr, ptr %88, align 8, !tbaa !49
  br label %210

97:                                               ; preds = %87, %5, %5, %5
  %98 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %99 = icmp eq ptr %98, null
  br i1 %99, label %210, label %100

100:                                              ; preds = %97
  %101 = load i32, ptr %9, align 8, !tbaa !47
  %102 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !208
  %104 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %101, ptr noundef %103, ptr noundef nonnull %98) #20
  br label %210

105:                                              ; preds = %5, %5, %5
  %106 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %107 = icmp eq ptr %106, null
  br i1 %107, label %210, label %108

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !208
  %111 = tail call ptr @build_pointer_type(ptr noundef %110) #20
  %112 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %111, ptr noundef nonnull %106) #20
  %113 = load i32, ptr %9, align 8, !tbaa !47
  %114 = icmp eq i32 %113, 49
  %115 = load ptr, ptr %109, align 8, !tbaa !208
  br i1 %114, label %116, label %120

116:                                              ; preds = %108
  %117 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !50
  %119 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 49, ptr noundef %115, ptr noundef %112, ptr noundef %118) #20
  br label %210

120:                                              ; preds = %108
  %121 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %113, ptr noundef %115, ptr noundef %112) #20
  br label %210

122:                                              ; preds = %5
  %123 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %124 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !49
  %126 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %125) #19
  %127 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !50
  %129 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %128) #19
  %130 = icmp eq ptr %123, null
  br i1 %130, label %210, label %131

131:                                              ; preds = %122
  %132 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %126, ptr noundef %3, ptr noundef %4) #19
  %133 = icmp eq ptr %132, null
  br i1 %133, label %210, label %134

134:                                              ; preds = %131
  %135 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %129, ptr noundef %3, ptr noundef %4) #19
  %136 = icmp eq ptr %135, null
  br i1 %136, label %210, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !208
  %140 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 42, ptr noundef %139, ptr noundef nonnull %123, ptr noundef nonnull %132, ptr noundef nonnull %135) #20
  br label %210

141:                                              ; preds = %5, %5
  %142 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !49
  %144 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !50
  %146 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 4
  %147 = load ptr, ptr %146, align 8, !tbaa !51
  %148 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %149 = icmp eq ptr %148, null
  br i1 %149, label %210, label %150

150:                                              ; preds = %141
  %151 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %143) #19
  %152 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %151, ptr noundef %3, ptr noundef %4) #19
  %153 = icmp eq ptr %152, null
  br i1 %153, label %210, label %154

154:                                              ; preds = %150
  %155 = icmp eq ptr %145, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %154
  %157 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %145) #19
  %158 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %157, ptr noundef %3, ptr noundef %4) #19
  %159 = icmp eq ptr %158, null
  br i1 %159, label %210, label %160

160:                                              ; preds = %156, %154
  %161 = phi ptr [ %158, %156 ], [ null, %154 ]
  %162 = icmp eq ptr %147, null
  br i1 %162, label %177, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !11
  %166 = getelementptr inbounds %struct.tree_common, ptr %165, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !11
  %168 = getelementptr inbounds %struct.tree_type, ptr %167, i64 0, i32 7
  %169 = load i32, ptr %168, align 8, !tbaa !11
  %170 = lshr i32 %169, 3
  %171 = zext nneg i32 %170 to i64
  %172 = tail call ptr @size_int_kind(i64 noundef %171, i32 noundef 0) #20
  %173 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 76, ptr noundef nonnull %147, ptr noundef %172) #20
  %174 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %173) #19
  %175 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %174, ptr noundef %3, ptr noundef %4) #19
  %176 = icmp eq ptr %175, null
  br i1 %176, label %210, label %177

177:                                              ; preds = %163, %160
  %178 = phi ptr [ %175, %163 ], [ null, %160 ]
  %179 = load i32, ptr %9, align 8, !tbaa !47
  %180 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !208
  %182 = tail call ptr @build4_stat(i32 noundef %179, ptr noundef %181, ptr noundef nonnull %148, ptr noundef nonnull %152, ptr noundef %161, ptr noundef %178) #20
  br label %210

183:                                              ; preds = %5
  %184 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !50
  %186 = tail call fastcc ptr @create_component_ref_by_pieces_1(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #19
  %187 = icmp eq ptr %186, null
  br i1 %187, label %210, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !49
  %191 = icmp eq ptr %185, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef nonnull %185) #19
  %194 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %193, ptr noundef %3, ptr noundef %4) #19
  %195 = icmp eq ptr %194, null
  br i1 %195, label %210, label %196

196:                                              ; preds = %192, %188
  %197 = phi ptr [ %194, %192 ], [ null, %188 ]
  %198 = getelementptr inbounds %struct.tree_common, ptr %190, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !11
  %200 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 41, ptr noundef %199, ptr noundef nonnull %186, ptr noundef %190, ptr noundef %197) #20
  br label %210

201:                                              ; preds = %5
  %202 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !49
  %204 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %203) #19
  %205 = tail call fastcc ptr @find_or_generate_expression(ptr noundef %0, ptr noundef %204, ptr noundef %3, ptr noundef %4) #19
  br label %210

206:                                              ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %207 = getelementptr inbounds %struct.vn_reference_op_struct, ptr %9, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !49
  br label %210

209:                                              ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2904, ptr noundef nonnull @.str.1) #20
  br label %210

210:                                              ; preds = %45, %53, %196, %183, %192, %177, %163, %141, %150, %156, %137, %122, %131, %134, %105, %120, %116, %100, %97, %83, %85, %55, %63, %49, %209, %206, %201, %95
  %211 = phi ptr [ null, %209 ], [ %208, %206 ], [ %205, %201 ], [ %96, %95 ], [ null, %49 ], [ %84, %83 ], [ %86, %85 ], [ null, %55 ], [ null, %63 ], [ %104, %100 ], [ null, %97 ], [ null, %105 ], [ %119, %116 ], [ %121, %120 ], [ %140, %137 ], [ null, %122 ], [ null, %131 ], [ null, %134 ], [ %182, %177 ], [ null, %163 ], [ null, %141 ], [ null, %150 ], [ null, %156 ], [ %200, %196 ], [ null, %183 ], [ null, %192 ], [ %47, %53 ], [ %47, %45 ]
  ret ptr %211
}

; Function Attrs: optsize
declare ptr @build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build6_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !56
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1665, ptr noundef nonnull @.str.1) #20
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #19, !range !56
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #19, !range !56
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #19
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %7, %1
  %12 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_ssa_name_copy_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_gimple_expr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @propagate_tree_value_into_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !56
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #20
  tail call void @update_stmt_operands(ptr noundef %0) #20
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @can_PRE_operation(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !29
  %6 = add i32 %5, -5
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = trunc i64 %2 to i16
  switch i16 %9, label %10 [
    i16 47, label %13
    i16 41, label %13
    i16 118, label %13
    i16 59, label %13
  ]

10:                                               ; preds = %8
  %11 = icmp eq i64 %3, 45
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %1, %8, %8, %8, %8, %10
  %14 = phi i8 [ 1, %8 ], [ %12, %10 ], [ 1, %1 ], [ 1, %8 ], [ 1, %8 ], [ 1, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare ptr @vn_get_expr_for(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @do_SCCVN_insertion(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !21
  %6 = tail call ptr @vn_get_expr_for(ptr noundef %1) #20
  %7 = tail call fastcc ptr @get_or_alloc_expr_for(ptr noundef %6) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = call fastcc ptr @create_expression_by_pieces(ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef %0, ptr noundef null) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #20
  %13 = load ptr, ptr %4, align 8, !tbaa !21
  call void @gsi_insert_seq_before(ptr noundef nonnull %3, ptr noundef %13, i32 noundef 1) #20
  br label %14

14:                                               ; preds = %9, %2, %12
  %15 = phi ptr [ %10, %12 ], [ null, %2 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret ptr %15
}

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_false(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !21
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #19
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !21
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #19
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_true(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !21
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #19
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !21
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #19
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_fn(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #19
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19, !range !56
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !91
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #19
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19, !range !56
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !251

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @single_imm_use(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %22, %13, %3
  store ptr null, ptr %1, align 8, !tbaa !21
  store ptr null, ptr %2, align 8, !tbaa !21
  br label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  %12 = icmp eq ptr %4, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %15) #19, !range !56
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %13
  store ptr %6, ptr %1, align 8, !tbaa !21
  %19 = load ptr, ptr %5, align 8, !tbaa !169
  %20 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  store ptr %21, ptr %2, align 8, !tbaa !21
  br label %27

22:                                               ; preds = %9
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !29
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %8, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @single_imm_use_1(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #20
  br label %27

27:                                               ; preds = %25, %18, %8
  %28 = phi i8 [ 0, %8 ], [ 1, %18 ], [ %26, %25 ]
  ret i8 %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #17 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !142
  store ptr %1, ptr %4, align 8, !tbaa !21
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare void @unlink_stmt_vdef(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !91
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !91
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @single_imm_use_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !252
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !169
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !169
  store ptr %2, ptr %6, align 8, !tbaa !252
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
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
  store ptr null, ptr %0, align 8, !tbaa !252
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #19
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #17 {
  store ptr %1, ptr %0, align 8, !tbaa !252
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !169
  store ptr %0, ptr %4, align 8, !tbaa !252
  store ptr %0, ptr %3, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_bitmap_set_t_heap_free() unnamed_addr #12 {
  %1 = load ptr, ptr @value_expressions, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @value_expressions, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_unsigned_heap_free() unnamed_addr #12 {
  %1 = load ptr, ptr @name_to_id, align 8, !tbaa !21
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @name_to_id, align 8, !tbaa !21
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_purge_all_dead_eh_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_fre() #11 {
  %1 = load i32, ptr @flag_tree_fre, align 4, !tbaa !29
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_fre() #0 {
  %1 = tail call fastcc i32 @execute_pre(i8 noundef zeroext 1) #19
  ret i32 %1
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"pre_expr_d", !8, i64 0, !8, i64 4, !9, i64 8}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !8, i64 16}
!13 = !{!"vn_ssa_aux", !14, i64 0, !14, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 28, !8, i64 28, !8, i64 28, !8, i64 28}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!16, !8, i64 0}
!16 = !{!"vn_nary_op_s", !8, i64 0, !8, i64 4, !8, i64 6, !8, i64 8, !14, i64 16, !14, i64 24, !9, i64 32}
!17 = !{!18, !8, i64 0}
!18 = !{!"vn_reference_s", !8, i64 0, !8, i64 4, !14, i64 8, !8, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!19 = !{!20, !8, i64 0}
!20 = !{!"VEC_bitmap_set_t_base", !8, i64 0, !8, i64 4, !9, i64 8}
!21 = !{!14, !14, i64 0}
!22 = !{!23, !14, i64 0}
!23 = !{!"bitmap_set", !14, i64 0, !14, i64 8}
!24 = !{!23, !14, i64 8}
!25 = !{}
!26 = !{i32 0, i32 2}
!27 = !{!20, !8, i64 4}
!28 = !{!7, !8, i64 4}
!29 = !{!8, !8, i64 0}
!30 = !{!31, !14, i64 24}
!31 = !{!"function", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !14, i64 128, !8, i64 136, !8, i64 137, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 138, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139, !8, i64 139}
!32 = !{!33, !14, i64 16}
!33 = !{!"gimple_df", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !34, i64 32, !34, i64 48, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !8, i64 96, !35, i64 104}
!34 = !{!"pt_solution", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !14, i64 8}
!35 = !{!"ssa_operands", !14, i64 0, !8, i64 8, !8, i64 12, !9, i64 16, !14, i64 24, !14, i64 32}
!36 = !{!37, !8, i64 0}
!37 = !{!"VEC_unsigned_base", !8, i64 0, !8, i64 4, !9, i64 8}
!38 = !{!39, !8, i64 0}
!39 = !{!"VEC_tree_base", !8, i64 0, !8, i64 4, !9, i64 8}
!40 = !{!41, !8, i64 0}
!41 = !{!"VEC_pre_expr_base", !8, i64 0, !8, i64 4, !9, i64 8}
!42 = !{!41, !8, i64 4}
!43 = !{!37, !8, i64 4}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!18, !14, i64 32}
!47 = !{!48, !8, i64 0}
!48 = !{!"vn_reference_op_struct", !8, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!49 = !{!48, !14, i64 16}
!50 = !{!48, !14, i64 24}
!51 = !{!48, !14, i64 32}
!52 = distinct !{!52, !45}
!53 = !{!18, !14, i64 8}
!54 = !{!55, !8, i64 0}
!55 = !{!"VEC_vn_reference_op_s_base", !8, i64 0, !8, i64 4, !9, i64 8}
!56 = !{i8 0, i8 2}
!57 = distinct !{!57, !45}
!58 = !{!59, !14, i64 0}
!59 = !{!"bitmap_head_def", !14, i64 0, !14, i64 8, !8, i64 16, !14, i64 24}
!60 = !{!61, !14, i64 0}
!61 = !{!"", !14, i64 0, !14, i64 8, !8, i64 16, !62, i64 24}
!62 = !{!"long", !9, i64 0}
!63 = !{!61, !14, i64 8}
!64 = !{!65, !8, i64 16}
!65 = !{!"bitmap_element_def", !14, i64 0, !14, i64 8, !8, i64 16, !9, i64 24}
!66 = !{!61, !8, i64 16}
!67 = !{!62, !62, i64 0}
!68 = !{!61, !62, i64 24}
!69 = distinct !{!69, !45}
!70 = distinct !{!70, !45}
!71 = !{!65, !14, i64 0}
!72 = !{!31, !14, i64 8}
!73 = !{!74, !14, i64 16}
!74 = !{!"basic_block_def", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !9, i64 32, !14, i64 48, !14, i64 56, !9, i64 64, !62, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96}
!75 = !{!76, !14, i64 0}
!76 = !{!"bb_bitmap_sets", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !8, i64 64, !8, i64 64, !8, i64 64}
!77 = !{!74, !8, i64 80}
!78 = !{!76, !14, i64 8}
!79 = !{!76, !14, i64 16}
!80 = !{!76, !14, i64 24}
!81 = distinct !{!81, !45}
!82 = !{!83, !8, i64 24}
!83 = !{!"control_flow_graph", !14, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !14, i64 40, !8, i64 48, !9, i64 52, !9, i64 60, !8, i64 68, !8, i64 72}
!84 = !{!85, !8, i64 4}
!85 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16}
!86 = !{!85, !8, i64 8}
!87 = !{!85, !8, i64 12}
!88 = !{!85, !8, i64 0}
!89 = !{!85, !8, i64 16}
!90 = distinct !{!90, !45}
!91 = !{i32 0, i32 256}
!92 = distinct !{!92, !45}
!93 = distinct !{!93, !45}
!94 = distinct !{!94, !45}
!95 = !{i64 0, i64 8, !21, i64 8, i64 8, !21, i64 16, i64 8, !21}
!96 = distinct !{!96, !45}
!97 = distinct !{!97, !45}
!98 = distinct !{!98, !45}
!99 = !{!83, !14, i64 0}
!100 = distinct !{!100, !45}
!101 = distinct !{!101, !45}
!102 = distinct !{!102, !45}
!103 = distinct !{!103, !45}
!104 = distinct !{!104, !45}
!105 = distinct !{!105, !45}
!106 = !{i32 0, i32 65536}
!107 = distinct !{!107, !45}
!108 = distinct !{!108, !45}
!109 = distinct !{!109, !45}
!110 = distinct !{!110, !45}
!111 = distinct !{!111, !45}
!112 = distinct !{!112, !45}
!113 = !{!83, !8, i64 32}
!114 = !{!74, !14, i64 56}
!115 = !{!83, !14, i64 8}
!116 = !{i64 0, i64 4, !29, i64 8, i64 8, !21}
!117 = !{i64 0, i64 8, !21}
!118 = !{!119, !8, i64 48}
!119 = !{!"edge_def", !14, i64 0, !14, i64 8, !9, i64 16, !14, i64 24, !14, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !62, i64 56}
!120 = distinct !{!120, !45}
!121 = !{!76, !14, i64 32}
!122 = !{!76, !14, i64 40}
!123 = distinct !{!123, !45}
!124 = distinct !{!124, !45}
!125 = !{!83, !14, i64 16}
!126 = distinct !{!126, !45}
!127 = distinct !{!127, !45}
!128 = distinct !{!128, !45}
!129 = !{!130, !14, i64 0}
!130 = !{!"simple_bitmap_def", !14, i64 0, !8, i64 8, !8, i64 12, !9, i64 16}
!131 = !{!76, !14, i64 48}
!132 = distinct !{!132, !45}
!133 = distinct !{!133, !45}
!134 = distinct !{!134, !45}
!135 = !{!13, !14, i64 0}
!136 = distinct !{!136, !45}
!137 = distinct !{!137, !45}
!138 = distinct !{!138, !45}
!139 = distinct !{!139, !45}
!140 = !{!141, !8, i64 0}
!141 = !{!"VEC_gimple_base", !8, i64 0, !8, i64 4, !9, i64 8}
!142 = !{!143, !14, i64 24}
!143 = !{!"ssa_use_operand_d", !14, i64 0, !14, i64 8, !9, i64 16, !14, i64 24}
!144 = !{!145, !8, i64 4}
!145 = !{!"ssa_operand_iterator_d", !9, i64 0, !8, i64 4, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 28, !14, i64 32}
!146 = !{!145, !9, i64 0}
!147 = !{!145, !14, i64 16}
!148 = !{!149, !14, i64 0}
!149 = !{!"use_optype_d", !14, i64 0, !143, i64 8}
!150 = !{!145, !14, i64 8}
!151 = !{!152, !14, i64 8}
!152 = !{!"def_optype_d", !14, i64 0, !14, i64 8}
!153 = !{!152, !14, i64 0}
!154 = !{!141, !8, i64 4}
!155 = !{!119, !14, i64 0}
!156 = !{!119, !14, i64 8}
!157 = !{!74, !14, i64 0}
!158 = distinct !{!158, !45}
!159 = !{!160, !8, i64 24}
!160 = !{!"expr_pred_trans_d", !14, i64 0, !14, i64 8, !14, i64 16, !8, i64 24}
!161 = !{!160, !14, i64 8}
!162 = !{!160, !14, i64 0}
!163 = !{!16, !8, i64 8}
!164 = !{!18, !8, i64 4}
!165 = !{!166, !8, i64 0}
!166 = !{!"VEC_edge_base", !8, i64 0, !8, i64 4, !9, i64 8}
!167 = !{!168, !8, i64 0}
!168 = !{!"", !8, i64 0, !14, i64 8}
!169 = !{!143, !14, i64 8}
!170 = !{!171, !14, i64 0}
!171 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!172 = distinct !{!172, !45}
!173 = !{!174, !14, i64 0}
!174 = !{!"gimple_seq_node_d", !14, i64 0, !14, i64 8, !14, i64 16}
!175 = !{!174, !14, i64 16}
!176 = !{!171, !14, i64 8}
!177 = !{!171, !14, i64 16}
!178 = !{!74, !8, i64 96}
!179 = !{!180, !14, i64 0}
!180 = !{!"gimple_bb_info", !14, i64 0, !14, i64 8}
!181 = !{!182, !14, i64 0}
!182 = !{!"gimple_seq_d", !14, i64 0, !14, i64 8, !14, i64 16}
!183 = !{!74, !14, i64 8}
!184 = distinct !{!184, !45}
!185 = distinct !{!185, !45}
!186 = distinct !{!186, !45}
!187 = distinct !{!187, !45}
!188 = !{!189, !8, i64 8}
!189 = !{!"param_info", !14, i64 0, !8, i64 8, !9, i64 12, !8, i64 16, !8, i64 20, !14, i64 24}
!190 = distinct !{!190, !45}
!191 = distinct !{!191, !45}
!192 = distinct !{!192, !45}
!193 = distinct !{!193, !45}
!194 = distinct !{!194, !45}
!195 = distinct !{!195, !45}
!196 = !{!197, !8, i64 0}
!197 = !{!"VEC_basic_block_base", !8, i64 0, !8, i64 4, !9, i64 8}
!198 = !{!180, !14, i64 8}
!199 = distinct !{!199, !45}
!200 = distinct !{!200, !45}
!201 = distinct !{!201, !45}
!202 = distinct !{!202, !45}
!203 = distinct !{!203, !45}
!204 = distinct !{!204, !45}
!205 = !{!160, !14, i64 16}
!206 = distinct !{!206, !45}
!207 = !{!16, !14, i64 24}
!208 = !{!48, !14, i64 8}
!209 = !{i64 0, i64 4, !29, i64 8, i64 8, !21, i64 16, i64 8, !21, i64 24, i64 8, !21, i64 32, i64 8, !21}
!210 = distinct !{!210, !45}
!211 = !{!18, !8, i64 16}
!212 = !{!18, !14, i64 24}
!213 = !{!119, !8, i64 44}
!214 = distinct !{!214, !45}
!215 = !{!216, !8, i64 0}
!216 = !{!"VEC_vn_reference_op_s_heap", !55, i64 0}
!217 = distinct !{!217, !45}
!218 = distinct !{!218, !45}
!219 = distinct !{!219, !45}
!220 = distinct !{!220, !45}
!221 = distinct !{!221, !45}
!222 = distinct !{!222, !45}
!223 = distinct !{!223, !45}
!224 = distinct !{!224, !45}
!225 = distinct !{!225, !45}
!226 = distinct !{!226, !45}
!227 = distinct !{!227, !45}
!228 = !{!76, !14, i64 56}
!229 = !{!230, !14, i64 8}
!230 = !{!"ao_ref_s", !14, i64 0, !14, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !8, i64 40, !8, i64 44}
!231 = distinct !{!231, !45}
!232 = distinct !{!232, !45}
!233 = distinct !{!233, !45}
!234 = distinct !{!234, !45}
!235 = distinct !{!235, !45}
!236 = distinct !{!236, !45}
!237 = distinct !{!237, !45}
!238 = distinct !{!238, !45}
!239 = distinct !{!239, !45}
!240 = distinct !{!240, !45}
!241 = !{!74, !8, i64 84}
!242 = !{!74, !14, i64 24}
!243 = distinct !{!243, !45}
!244 = distinct !{!244, !45}
!245 = distinct !{!245, !45}
!246 = distinct !{!246, !45}
!247 = distinct !{!247, !45}
!248 = distinct !{!248, !45}
!249 = distinct !{!249, !45}
!250 = distinct !{!250, !45}
!251 = distinct !{!251, !45}
!252 = !{!143, !14, i64 0}
